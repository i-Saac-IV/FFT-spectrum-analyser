/*

Creator: Isaac Pawley
Date: 16-09-2023
Repo: https://github.com/i-Saac-IV/FFTSpectrumAnalyser

Hiya! This is just some code to control one of those addressable LED matrices.
Be sure to set size of the matrix, the pin its attached to and the audio in pin.

Pressing the button will change the VU meter animation, long press of the button changes the audio input (green: line in, red: mic, default: line in).

Original hardware:
Raspberry Pi Pico
16x16 (and also 16x32) matrix
I2C 0.96in oled display

*/

/* to do */

#include <arduinoFFT.h>
#include <FastLED.h>


#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>


#include <EasyButton.h>

/* Change the following as needed */

#define BUTTON_PIN 2
#define LED_MAXTRIX_PIN 7
#define MATRIX_HEIGHT 16
#define MATRIX_WIDTH 32  //also dictates the number of VU bands supports values of (2, 4, 8, 10, 16, 20 and 32) without modifying code
#define MAX_MAXTRIX_BRIGHTNESS 255
#define LED_TYPE WS2812B
#define COLOUR_ORDER GRB
#define MIC_IN_PIN A1
#define AUDIO_IN_PIN A2
#define FRAMES_PER_SECOND 120
#define CONWAY_FPS 3
#define TIME_OUT 3          //in seconds
#define POWER_OFF_MATIRX 5  //in minutes

/* For more advanced options */

#define AUDIO_SAMPLE_PERIOD 54  //duration of time (in millis) between each audio sample, this should be as low as possable for "real time" but also depends on the speed of mC (54 min, rp r2040)
#define DECAY_PERIOD 7          //number of millis between each peak value being "decayed" (on the lcd)
#define SCREEN_ADDRESS 0x3C
#define DISPLAY_HEIGHT 64
#define DISPLAY_WIDTH 128
#define ACT_LED_PIN 9
#define LONG_PRESS_LENGTH 1000  //in millis

/* THESE FOLLOWING NUMBERS ARE IMPORTANT AND IF CHANGED MEANS THE "if statments" NEED CHANGING TOO */
#define SAMPLES 512
#define SAMPLING_FREQ 40000  // Hz, must be 40000 or less due to ADC conversion time.
#define NUM_BANDS MATRIX_WIDTH

/* Gets significantly harder to customize past this point */

#define FILTER 500
unsigned int sampling_period_us;
int bandValues[NUM_BANDS];
int recentMaxVal;
volatile int VUHeight[NUM_BANDS];
volatile int prevVUheight[NUM_BANDS];
volatile int VUpeak[NUM_BANDS];
double vReal[SAMPLES];
double vImag[SAMPLES];
unsigned long newTime;
arduinoFFT FFT = arduinoFFT(vReal, vImag, SAMPLES, SAMPLING_FREQ);

#define MAX_VAL_DELAY 50  //in ms
unsigned long timer_one;

unsigned long timer_two;

unsigned long timer_three;

unsigned long lastSound;

unsigned long lastFrame;

#define NUM_MATRIX_LEDS (MATRIX_HEIGHT * MATRIX_WIDTH)
CRGB led_matrix[NUM_MATRIX_LEDS];

double hue = 0;
volatile uint8_t mode = 0;

/* Anitmation maths stuff */
bool resetGameOfLife = true;
int neighbourMap[][2] = { { -1, -1 }, { -1, 0 }, { -1, 1 }, { 0, -1 }, { 0, 1 }, { 1, -1 }, { 1, 0 }, { 1, 1 } };
bool currentCellState[NUM_MATRIX_LEDS] = {};
bool previousCellState[NUM_MATRIX_LEDS] = {};

#define OLED_RESET -1
Adafruit_SSD1306 display(DISPLAY_WIDTH, DISPLAY_HEIGHT, &Wire, OLED_RESET);


bool oled_en = 1;
volatile bool mic_en = 0;

EasyButton button(BUTTON_PIN);

void setup() {  // setup for core 0, (FastaLED core)
  delay(3000);
  Serial.begin(115200);
  Serial.println(__FILE__);
  Serial.println(__DATE__);
  Serial.println(__TIME__);

  randomSeed(analogRead(A0));

  display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS);

  //FastLED.setMaxPowerInVoltsAndMilliamps(5, 1000); // used to limit led power usage.
  FastLED.addLeds<LED_TYPE, LED_MAXTRIX_PIN, COLOUR_ORDER>(led_matrix, NUM_MATRIX_LEDS).setCorrection(TypicalLEDStrip);
  FastLED.setBrightness(MAX_MAXTRIX_BRIGHTNESS);

  //led matrix sanitiy check
  fill_solid(led_matrix, NUM_MATRIX_LEDS, CRGB::Red);
  FastLED.show();
  delay(333);
  fill_solid(led_matrix, NUM_MATRIX_LEDS, CRGB::Green);
  FastLED.show();
  delay(333);
  fill_solid(led_matrix, NUM_MATRIX_LEDS, CRGB::Blue);
  FastLED.show();
  delay(333);
  FastLED.clear();
}

int calc_target_led(int x, int y) {  // matrix mapping magic
  if (x < 0 || y < 0 || x > MATRIX_WIDTH - 1 || y > MATRIX_HEIGHT - 1) {
    char buffer[40];
    sprintf(buffer, "MAPPING ERROR\tx: %d\ty: %d\t", x, y);
    //Serial.println(buffer);
    return -1;
  }
  x = (MATRIX_WIDTH - x) - 1;
  int t;
  if (x % 2 == 0) {
    t = (x * MATRIX_HEIGHT) + (y);
  } else {
    t = ((x + 1) * MATRIX_HEIGHT) - (y)-1;
  }
  return t;
}

void loop() {  // loop for core 0, (FastLED and display core)

  if (lastSound + (POWER_OFF_MATIRX * 60 * 1000) < millis()) {
    fadeToBlackBy(led_matrix, NUM_MATRIX_LEDS, 15);
  } else {
    if (lastSound + (TIME_OUT * 1000) < millis()) {
      if (mic_en) {
        if (resetGameOfLife) {
          resetGameOfLife = false;
          random_fill();
        }

        for (int i = 0; i < NUM_MATRIX_LEDS; i++) {
          if (currentCellState[i] == true) {
            led_matrix[i] = CRGB::White;
          } else if (previousCellState[i] == true) {
            previousCellState[i] = false;
            led_matrix[i] = CRGB::Red;
          } else {
            fadeToBlackBy(&led_matrix[i], 1, 15);
          }
        }

        if (lastFrame + (1000 / CONWAY_FPS) < millis()) {
          lastFrame = millis();
          next_conway_frame();
        }

      } else {
        confetti(hue);
        hue++;
      }
    } else {
      resetGameOfLife = true;
      switch (mode) {
        case 0:
          intensity(0, 0);
          break;
        case 1:
          scroll(85, 0);
          break;
        case 2:
          scroll(85 + (int)hue, 0 + (int)hue);
          break;
        case 3:
          intensity(hue, 255);
          break;
        case 4:
          solid_colour(hue);
          break;
        case 5:
          rainbow_bands(0);
          break;
        case 6:
          rainbow_bands(hue);
          break;
        case 7:
          rainbow_vals(0);
          break;
        case 8:
          rainbow_vals(hue);
          break;
        default:
          mode = 0;
          break;
      }
    }
  }
  // update_OLED();

  hue -= 0.1;
  if (hue < 0 || hue > 255) hue = 255.0;
  FastLED.show();
  delay(1000 / FRAMES_PER_SECOND);
}

void next_conway_frame() {
  for (int i = 0; i < NUM_MATRIX_LEDS; i++) {
    previousCellState[i] = currentCellState[i];
  }
  for (int y = 0; y < MATRIX_HEIGHT; y++) {
    for (int x = 0; x < MATRIX_WIDTH; x++) {
      int target = calc_target_led(x, y);
      int neighbour;
      int xNeighbour;
      int yNeighbour;
      int aliveCount = 0;

      for (int i = 0; i < 8; i++) {
        xNeighbour = x + neighbourMap[i][0];
        yNeighbour = y + neighbourMap[i][1];

        neighbour = calc_target_led(xNeighbour, yNeighbour);
        if (neighbour != -1) {
          if (previousCellState[neighbour] == true) {
            aliveCount++;
          }
        }
      }

      if (previousCellState[target] == false && aliveCount == 3) {
        currentCellState[target] = true;
      } else if (previousCellState[target] == true && (aliveCount == 2 || aliveCount == 3)) {
        currentCellState[target] = true;
      } else {
        currentCellState[target] = false;
      }
    }
  }
}

void random_fill() {
  for (int i = 0; i < NUM_MATRIX_LEDS; i++) {
    if (random(0, 2) == 0) {
      currentCellState[i] = true;
    } else {
      currentCellState[i] = false;
    }
  }
}

void lerpHSV(CHSV hsv1, CHSV hsv2, float t, CRGB &lerpRGB) {
  CRGB rgb1;
  CRGB rgb2;

  hsv2rgb_rainbow(hsv1, rgb1);
  hsv2rgb_rainbow(hsv2, rgb2);

  lerpRGB.red = int(rgb1.red + (t * (rgb2.red - rgb1.red)));
  lerpRGB.green = int(rgb1.green + (t * (rgb2.green - rgb1.green)));
  lerpRGB.blue = int(rgb1.blue + (t * (rgb2.blue - rgb1.blue)));
}

void update_OLED() {
  for (int band = 0; band < NUM_BANDS; band++) {
    display.fillRect((display.width() / NUM_BANDS) * band, display.height() - VUHeight[band] - 1, (display.width() / NUM_BANDS), VUHeight[band], SSD1306_WHITE);
    display.fillRect((display.width() / NUM_BANDS) * band, display.height() - VUpeak[band] - 1, (display.width() / NUM_BANDS), 1, SSD1306_WHITE);
  }
  display.display();
  display.clearDisplay();
}

void confetti(int h) {
  fadeToBlackBy(led_matrix, NUM_MATRIX_LEDS, 10);
  int pos = random16(NUM_MATRIX_LEDS);
  led_matrix[pos] += CHSV(h + random(64), 200, 255);
  delay(1000 / FRAMES_PER_SECOND);
}

float mapFloat(float x, float in_min, float in_max, float out_min, float out_max) {
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

void scroll(uint8_t quietHue, uint8_t loudHue) {
  for (int band = 0; band < NUM_BANDS; band++) {
    for (int i = MATRIX_HEIGHT; i > 1; i--) {
      led_matrix[calc_target_led(band, i - 1)] = led_matrix[calc_target_led(band, i - 2)];
    }
  }
  for (int band = 0; band < NUM_BANDS; band++) {
    uint8_t v = map(VUpeak[band], 0, DISPLAY_HEIGHT, 75, 255);
    CRGB lerpRGB;
    lerpHSV(CHSV(quietHue, 255, v), CHSV(loudHue, 255, v), mapFloat(VUpeak[band], 0.0, DISPLAY_HEIGHT, 0.0, 1.0), lerpRGB);
    led_matrix[calc_target_led(band, 0)] = CRGB(lerpRGB.r, lerpRGB.g, lerpRGB.b);
  }
  delay(1000 / FRAMES_PER_SECOND);
}

void rainbow_vals(int h) {
  for (int band = 0; band < NUM_BANDS; band++) {
    led_matrix[calc_target_led(band, (int)map(VUpeak[band], 0, DISPLAY_HEIGHT, 0, MATRIX_HEIGHT))] = CRGB::White;
    for (int val = 0; val < (int)map(VUHeight[band], 0, DISPLAY_HEIGHT, 0, MATRIX_HEIGHT); val++) {
      int hue2 = ((255 / MATRIX_HEIGHT) * val) + h;
      led_matrix[calc_target_led(band, val)] = CHSV(hue2, 255, 255);
    }
  }
  fadeToBlackBy(led_matrix, NUM_MATRIX_LEDS, 25);
}

void rainbow_bands(int h) {
  for (int band = 0; band < NUM_BANDS; band++) {
    int hue2 = (255 / NUM_BANDS) * band + h;
    led_matrix[calc_target_led(band, (int)map(VUpeak[band], 0, DISPLAY_HEIGHT, 0, MATRIX_HEIGHT))] = CRGB::White;
    for (int val = 0; val < (int)map(VUHeight[band], 0, DISPLAY_HEIGHT, 0, MATRIX_HEIGHT); val++) {
      led_matrix[calc_target_led(band, val)] = CHSV(hue2, 255, 255);
    }
  }
  fadeToBlackBy(led_matrix, NUM_MATRIX_LEDS, 25);
}

void intensity(int h, int s) {
  int hue2;
  int hue3;
  for (int band = 0; band < NUM_BANDS; band++) {
    hue3 = ((255 / NUM_BANDS) * band) + h;
    led_matrix[calc_target_led(band, (int)map(VUpeak[band], 0, DISPLAY_HEIGHT, 0, MATRIX_HEIGHT))] = CHSV(hue3, s, 255);
    for (int val = 0; val < (int)map(VUHeight[band], 0, DISPLAY_HEIGHT, 0, MATRIX_HEIGHT); val++) {
      if (val < (MATRIX_HEIGHT / 2) - 1) {
        hue2 = 85;  //green
      } else if (val < (MATRIX_HEIGHT / 4 * 3) - 1) {
        hue2 = 60;  //yellow
      } else if (val < (MATRIX_HEIGHT / 8 * 7) - 1) {
        hue2 = 30;  //orange
      } else {
        hue2 = 0;  //red
      }
      led_matrix[calc_target_led(band, val)] = CHSV(hue2, 255, 255);
    }
  }
  fadeToBlackBy(led_matrix, NUM_MATRIX_LEDS, 25);
}

void solid_colour(int h) {
  for (int band = 0; band < NUM_BANDS; band++) {
    led_matrix[calc_target_led(band, (int)map(VUpeak[band], 0, DISPLAY_HEIGHT, 0, MATRIX_HEIGHT))] = CHSV(h, 255, 255);
    for (int val = 0; val < (int)map(VUHeight[band], 0, DISPLAY_HEIGHT, 0, MATRIX_HEIGHT); val++) {
      led_matrix[calc_target_led(band, val)] = CHSV(h + 128, 255, 255);
    }
  }
  fadeToBlackBy(led_matrix, NUM_MATRIX_LEDS, 25);
}

/* The folling code is all run on the 2nd core (core 1) */

void setup1() {  // setup for core 1, (FFT core)
  sampling_period_us = round(1000000 * (1.0 / SAMPLING_FREQ));
  pinMode(ACT_LED_PIN, OUTPUT);
  Serial.begin(115200);
  Serial.println("FFT Core");
  button.begin();
  button.onPressed(buttonPressed);
  button.onPressedFor(LONG_PRESS_LENGTH, longPress);
}

void loop1() {  // loop for core 1, (FFT core)
  button.read();

  if (timer_one + MAX_VAL_DELAY < millis()) {
    recentMaxVal *= 0.90;
    if (recentMaxVal < FILTER * 2) {
      recentMaxVal = FILTER * 2;
    } else {
      lastSound = millis();
    }
    timer_one = millis();
    /*
    char buffer[80];
    sprintf(buffer, "current millis:%d\tlastSound:%ld\trecentMaxVal:%d", millis(), lastSound, recentMaxVal);
    Serial.println(buffer);
    */
  }

  if (timer_two + DECAY_PERIOD < millis()) {
    for (int band = 0; band < NUM_BANDS; band++) {
      if (VUpeak[band] > 0) VUpeak[band] -= 1;
    }
    timer_two = millis();
  }

  if (timer_three + (AUDIO_SAMPLE_PERIOD / 2) < millis()) {
    digitalWrite(ACT_LED_PIN, HIGH);
    take_samples();
    digitalWrite(ACT_LED_PIN, LOW);
    do_FFT_maths();
    timer_three = millis();
  }
}


void take_samples() {
  digitalWrite(ACT_LED_PIN, HIGH);
  int read_pin;
  if (mic_en == 1) {
    read_pin = MIC_IN_PIN;
  } else {
    read_pin = AUDIO_IN_PIN;
  }
  for (int i = 0; i < SAMPLES; i++) {
    newTime = micros();
    vReal[i] = analogRead(read_pin);
    vImag[i] = 0;
    while ((micros() - newTime) < sampling_period_us) {
      /* do nothing */
    }
  }
  digitalWrite(ACT_LED_PIN, LOW);
}

void do_FFT_maths() {
  // Compute FFT
  FFT.DCRemoval();
  FFT.Windowing(FFT_WIN_TYP_HAMMING, FFT_FORWARD);
  FFT.Compute(FFT_FORWARD);  //this takes ages
  FFT.ComplexToMagnitude();

  for (int i = 1; i < (SAMPLES / 2); i++) {
    if ((int)vReal[i] < FILTER) vReal[i] = 0;  // filtering FFT output into band values

    if (MATRIX_WIDTH == 2) {
      //2 bands, 11kHz top band
      if (i <= 71) bandValues[0] += (int)vReal[i];
      if (i > 71) bandValues[1] += (int)vReal[i];

    } else if (MATRIX_WIDTH == 4) {
      //4 bands, 11kHz top band
      if (i <= 3) bandValues[0] += (int)vReal[i];
      if (i > 3 && i <= 16) bandValues[1] += (int)vReal[i];
      if (i > 16 && i <= 84) bandValues[2] += (int)vReal[i];
      if (i > 84) bandValues[3] += (int)vReal[i];

    } else if (MATRIX_WIDTH == 8) {
      //8 bands, 11kHz top band
      if (i <= 2) bandValues[0] += (int)vReal[i];
      if (i > 2 && i <= 3) bandValues[1] += (int)vReal[i];
      if (i > 3 && i <= 6) bandValues[2] += (int)vReal[i];
      if (i > 6 && i <= 13) bandValues[3] += (int)vReal[i];
      if (i > 13 && i <= 26) bandValues[4] += (int)vReal[i];
      if (i > 26 && i <= 52) bandValues[5] += (int)vReal[i];
      if (i > 52 && i <= 105) bandValues[6] += (int)vReal[i];
      if (i > 105) bandValues[7] += (int)vReal[i];

    } else if (MATRIX_WIDTH == 10) {
      //10 bands, 11kHz top band
      if (i <= 1) bandValues[0] += (int)vReal[i];
      if (i > 1 && i <= 2) bandValues[1] += (int)vReal[i];
      if (i > 2 && i <= 4) bandValues[2] += (int)vReal[i];
      if (i > 4 && i <= 7) bandValues[3] += (int)vReal[i];
      if (i > 7 && i <= 12) bandValues[4] += (int)vReal[i];
      if (i > 12 && i <= 22) bandValues[5] += (int)vReal[i];
      if (i > 22 && i <= 37) bandValues[6] += (int)vReal[i];
      if (i > 37 && i <= 64) bandValues[7] += (int)vReal[i];
      if (i > 64 && i <= 111) bandValues[8] += (int)vReal[i];
      if (i > 111) bandValues[9] += (int)vReal[i];

    } else if (MATRIX_WIDTH == 16) {
      //16 bands, 11kHz top band
      if (i <= 1) bandValues[0] += (int)vReal[i];
      if (i > 1 && i <= 2) bandValues[1] += (int)vReal[i];
      if (i > 3 && i <= 4) bandValues[2] += (int)vReal[i];
      if (i > 4 && i <= 5) bandValues[3] += (int)vReal[i];
      if (i > 5 && i <= 6) bandValues[4] += (int)vReal[i];
      if (i > 6 && i <= 7) bandValues[5] += (int)vReal[i];
      if (i > 8 && i <= 9) bandValues[6] += (int)vReal[i];
      if (i > 9 && i <= 12) bandValues[7] += (int)vReal[i];
      if (i > 12 && i <= 17) bandValues[8] += (int)vReal[i];
      if (i > 17 && i <= 23) bandValues[9] += (int)vReal[i];
      if (i > 23 && i <= 33) bandValues[10] += (int)vReal[i];
      if (i > 33 && i <= 45) bandValues[11] += (int)vReal[i];
      if (i > 45 && i <= 63) bandValues[12] += (int)vReal[i];
      if (i > 63 && i <= 87) bandValues[13] += (int)vReal[i];
      if (i > 87 && i <= 121) bandValues[14] += (int)vReal[i];
      if (i > 121) bandValues[15] += (int)vReal[i];

    } else if (MATRIX_WIDTH == 20) {
      //20 bands, 11kHz top band
      if (i <= 1) bandValues[0] += (int)vReal[i];
      if (i > 1 && i <= 2) bandValues[1] += (int)vReal[i];
      if (i > 2 && i <= 3) bandValues[2] += (int)vReal[i];
      if (i > 3 && i <= 4) bandValues[3] += (int)vReal[i];
      if (i > 4 && i <= 5) bandValues[4] += (int)vReal[i];
      if (i > 5 && i <= 6) bandValues[5] += (int)vReal[i];
      if (i > 6 && i <= 7) bandValues[6] += (int)vReal[i];
      if (i > 7 && i <= 8) bandValues[7] += (int)vReal[i];
      if (i > 8 && i <= 9) bandValues[8] += (int)vReal[i];
      if (i > 9 && i <= 12) bandValues[9] += (int)vReal[i];
      if (i > 12 && i <= 16) bandValues[10] += (int)vReal[i];
      if (i > 16 && i <= 20) bandValues[11] += (int)vReal[i];
      if (i > 20 && i <= 26) bandValues[12] += (int)vReal[i];
      if (i > 26 && i <= 34) bandValues[13] += (int)vReal[i];
      if (i > 34 && i <= 44) bandValues[14] += (int)vReal[i];
      if (i > 44 && i <= 57) bandValues[15] += (int)vReal[i];
      if (i > 57 && i <= 74) bandValues[16] += (int)vReal[i];
      if (i > 74 && i <= 96) bandValues[17] += (int)vReal[i];
      if (i > 96 && i <= 125) bandValues[18] += (int)vReal[i];
      if (i > 125) bandValues[19] += (int)vReal[i];

    } else if (MATRIX_WIDTH == 32) {
      //32 bands, 11kHz top band
      if (i <= 1) bandValues[0] += (int)vReal[i];
      if (i > 1 && i <= 2) bandValues[1] += (int)vReal[i];
      if (i > 2 && i <= 3) bandValues[2] += (int)vReal[i];
      if (i > 3 && i <= 4) bandValues[3] += (int)vReal[i];
      if (i > 4 && i <= 5) bandValues[4] += (int)vReal[i];
      if (i > 5 && i <= 6) bandValues[5] += (int)vReal[i];
      if (i > 6 && i <= 7) bandValues[6] += (int)vReal[i];
      if (i > 7 && i <= 8) bandValues[7] += (int)vReal[i];
      if (i > 8 && i <= 9) bandValues[8] += (int)vReal[i];
      if (i > 9 && i <= 10) bandValues[9] += (int)vReal[i];
      if (i > 10 && i <= 11) bandValues[10] += (int)vReal[i];
      if (i > 11 && i <= 12) bandValues[11] += (int)vReal[i];
      if (i > 12 && i <= 13) bandValues[12] += (int)vReal[i];
      if (i > 13 && i <= 14) bandValues[13] += (int)vReal[i];
      if (i > 14 && i <= 15) bandValues[14] += (int)vReal[i];
      if (i > 15 && i <= 16) bandValues[15] += (int)vReal[i];
      if (i > 16 && i <= 17) bandValues[16] += (int)vReal[i];
      if (i > 17 && i <= 18) bandValues[17] += (int)vReal[i];
      if (i > 18 && i <= 19) bandValues[18] += (int)vReal[i];
      if (i > 19 && i <= 23) bandValues[19] += (int)vReal[i];
      if (i > 23 && i <= 27) bandValues[20] += (int)vReal[i];
      if (i > 27 && i <= 31) bandValues[21] += (int)vReal[i];
      if (i > 31 && i <= 37) bandValues[22] += (int)vReal[i];
      if (i > 37 && i <= 43) bandValues[23] += (int)vReal[i];
      if (i > 43 && i <= 50) bandValues[24] += (int)vReal[i];
      if (i > 50 && i <= 59) bandValues[25] += (int)vReal[i];
      if (i > 59 && i <= 69) bandValues[26] += (int)vReal[i];
      if (i > 69 && i <= 81) bandValues[27] += (int)vReal[i];
      if (i > 81 && i <= 95) bandValues[28] += (int)vReal[i];
      if (i > 95 && i <= 111) bandValues[29] += (int)vReal[i];
      if (i > 111 && i <= 130) bandValues[30] += (int)vReal[i];
      if (i > 130) bandValues[31] += (int)vReal[i];
    }
  }

  for (int band = 0; band < NUM_BANDS; band++) {
    prevVUheight[band] = VUHeight[band];

    if (recentMaxVal < bandValues[band]) {
      recentMaxVal = bandValues[band];
      VUHeight[band] = map(bandValues[band], 0, recentMaxVal, 0, DISPLAY_HEIGHT - 1);  // maps bandValues to the matrix height, dynamically
      recentMaxVal *= 2;
    } else {
      VUHeight[band] = map(bandValues[band], 0, recentMaxVal, 0, DISPLAY_HEIGHT - 1);  // maps bandValues to the matrix height, dynamically
    }
    bandValues[band] = 0;

    if (VUHeight[band] < prevVUheight[band]) VUHeight[band] = (VUHeight[band] + prevVUheight[band]) / 2;  // smooths sudden decreases in VU between frames

    if (VUpeak[band] < VUHeight[band]) VUpeak[band] = VUHeight[band];  //update peakVU value
  }
}

void buttonPressed() {
  mode++;
  Serial.print("mode:\t");
  Serial.println(mode);
}

void longPress() {
  mic_en = !mic_en;
  if (mic_en) {
    fill_solid(led_matrix, NUM_MATRIX_LEDS, CRGB::Green);
    FastLED.show();
  } else {
    fill_solid(led_matrix, NUM_MATRIX_LEDS, CRGB::Red);
    FastLED.show();
  }
  Serial.print("mic_en:\t");
  Serial.println(mic_en);
}
