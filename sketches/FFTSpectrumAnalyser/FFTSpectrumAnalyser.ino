
#include <arduinoFFT.h>
#include <FastLED.h>

#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define MATRIX_HEIGHT 64  //64
#define MATRIX_WIDTH 128  //128

/* THESE FOLLOWING NUMBERS ARE IMPORTANT AND IF CHANGED MEANS THE "if statments" NEED CHANGING TOO */
#define SAMPLES 512
#define SAMPLING_FREQ 40000  // Hz, must be 40000 or less due to ADC conversion time.
#define NUM_BANDS 32

#define AUDIO_IN_PIN A2
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

#define MAX_VAL_DELAY 100  //in ms
int timer_one;

#define DECAY_PERIOD 60  //in ms
int timer_two;

#define AUDIO_SAMPLE_PERIOD 54  //in ms (54 min, rp r2040)
int timer_three;

#define LED_ARRAY_PIN 7
//#define NUM_ARRAY_LEDS (MATRIX_HEIGHT * MATRIX_WIDTH)
#define NUM_ARRAY_LEDS 16 * 32
#define MAX_SPECTRUM_BRIGHTNESS 170
#define LED_TYPE WS2812B
#define COLOUR_ORDER GRB
CRGB led_array[NUM_ARRAY_LEDS];

#define FRAMES_PER_SECOND 60
double hue = 0;

#define OLED_RESET -1
#define SCREEN_ADDRESS 0x3C
Adafruit_SSD1306 display(MATRIX_WIDTH, MATRIX_HEIGHT, &Wire, OLED_RESET);

#define ACT_LED_PIN 9
bool state = 1;


void setup() {  // setup for core 0, (FastaLED core)
  Serial.begin(19200);
  Serial.println(__FILE__);
  Serial.println(__DATE__);
  Serial.println(__TIME__);

  pinMode(LED_BUILTIN, OUTPUT);

  if (!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println("SSD1306 allocation failed");
    for (;;)
      ;  // Don't proceed, loop forever
  }

  randomSeed(analogRead(A0));

  FastLED.addLeds<LED_TYPE, LED_ARRAY_PIN, COLOUR_ORDER>(led_array, NUM_ARRAY_LEDS).setCorrection(TypicalLEDStrip);
  FastLED.setBrightness(MAX_SPECTRUM_BRIGHTNESS);

  digitalWriteFast(LED_BUILTIN, HIGH);
  fill_solid(led_array, NUM_ARRAY_LEDS, CRGB::Red);
  FastLED.show();
  delay(333);
  fill_solid(led_array, NUM_ARRAY_LEDS, CRGB::Green);
  FastLED.show();
  delay(333);
  fill_solid(led_array, NUM_ARRAY_LEDS, CRGB::Blue);
  FastLED.show();
  delay(333);
  FastLED.clear();
  digitalWriteFast(LED_BUILTIN, LOW);
}


void loop() {  // loop for core 0, (FastaLED core)
/*
  for (int i = 0; i < NUM_BANDS; i++) {
    Serial.print(VUHeight[i]);
    Serial.print('\t');
  }
  Serial.println();
  */

  fill_solid(led_array, NUM_ARRAY_LEDS, CHSV(hue, 255, 255));
  hue++;

  /* The following code is where the animations should go */

  for (int band = 0; band < NUM_BANDS; band++) {
    display.fillRect((display.width() / NUM_BANDS) * band, display.height() - VUHeight[band] - 1, (display.width() / NUM_BANDS), VUHeight[band], SSD1306_WHITE);
    display.fillRect((display.width() / NUM_BANDS) * band, display.height() - VUpeak[band] - 1, (display.width() / NUM_BANDS), 1, SSD1306_WHITE);
  }



  display.display();
  display.clearDisplay();
  FastLED.show();
  delay(1000 / FRAMES_PER_SECOND);
}

void setup1() {  // setup for core 1, (FFT core)
  sampling_period_us = round(1000000 * (1.0 / SAMPLING_FREQ));
  pinMode(ACT_LED_PIN, OUTPUT);
}

void loop1() {  // loop for core 1, (FFT core)
  if (timer_one + MAX_VAL_DELAY < millis()) {
    recentMaxVal *= 0.666;
    if (recentMaxVal < FILTER * 2) recentMaxVal = FILTER * 2;
    timer_one = millis();
  }

  if (timer_two + DECAY_PERIOD < millis()) {
    for (int band = 0; band < NUM_BANDS; band++) {
      if (VUpeak[band] > 0) VUpeak[band] -= 1;
    }
    timer_two = millis();
  }

  if (timer_three + (AUDIO_SAMPLE_PERIOD / 2) < millis()) {
    // digitalWrite(ACT_LED_PIN, HIGH);
    take_samples();
    // digitalWrite(ACT_LED_PIN, LOW);
    do_FFT_maths();
    timer_three = millis();
  }
}


void take_samples() {
  for (int i = 0; i < SAMPLES; i++) {
    newTime = micros();
    vReal[i] = analogRead(AUDIO_IN_PIN);
    vImag[i] = 0;
    while ((micros() - newTime) < sampling_period_us) {
      /* do nothing */
    }
  }
}

void do_FFT_maths() {
  // Compute FFT
  FFT.DCRemoval();
  FFT.Windowing(FFT_WIN_TYP_HAMMING, FFT_FORWARD);
  FFT.Compute(FFT_FORWARD);  //this takes ages
  FFT.ComplexToMagnitude();

  for (int i = 1; i < (SAMPLES / 2); i++) {
    if ((int)vReal[i] < FILTER) vReal[i] = 0;  // basic filter generate the following if statments using excel from here... https://github.com/s-marley/ESP32_FFT_VU

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

  for (int band = 0; band < NUM_BANDS; band++) {
    prevVUheight[band] = VUHeight[band];

    if (recentMaxVal < bandValues[band]) {
      recentMaxVal = bandValues[band];
      VUHeight[band] = map(bandValues[band], 0, recentMaxVal, 0, MATRIX_HEIGHT - 1);  // maps bandValues to the matrix height, dynamically
      recentMaxVal *= 2;
    } else {
      VUHeight[band] = map(bandValues[band], 0, recentMaxVal, 0, MATRIX_HEIGHT - 1);  // maps bandValues to the matrix height, dynamically
    }
    bandValues[band] = 0;

    if (VUHeight[band] < prevVUheight[band]) VUHeight[band] = (VUHeight[band] + prevVUheight[band]) / 2;  // smooths sudden decreases in VU between frames

    if (VUpeak[band] < VUHeight[band]) VUpeak[band] = VUHeight[band];  //update peakVU value
  }
}
