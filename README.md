# FFT Spectrum Analyser
I was unhappy with some of VU meters out there, so decided to make my own.

## Features
- Supports both mic and line in audio inputs
- Fully addressable RGB led pannel
- Easy to add your own custom animations (with som ebasic coding knowledge

## To do
- [ ] Add in a "sleep" mode that just plays animations.
- [ ] Add in a display off funtion

# Usage
## Hardware and setup
Here is a very vague list of things you'll need to recreate this:
- [Raspberry Pi Pico]((https://www.raspberrypi.com/products/raspberry-pi-pico/)https://www.raspberrypi.com/products/raspberry-pi-pico/)
- FastLED compatable matrix (something like [this]((https://www.adafruit.com/product/2547)https://www.adafruit.com/product/2547))
- Some common components to deal with the audio signal **and/or** a microphone (ideally [this one]((https://www.adafruit.com/product/1713)https://www.adafruit.com/product/1713) but [this one]((https://www.adafruit.com/product/1063)https://www.adafruit.com/product/1063) also works)
- Access to a 3d printer for the frame
- Access to a laser cutter for the interlocking grid (or a lot of spare time and a craft knife)

## Schematic
![schematic for pcb](/assets/pcb/FFT-spectrum-analyser_schematic.png)

## Computer setup for line input (optional)
I would recommend sending the audio signal directly to the spectrum analyser (no splitters etc.) this will require the audio source to have at least two audio outputs (ie. speakers and a second 3.5mm audio jack) and using either a Stero Mix output or using a tool like [VoiceMeeter](https://vb-audio.com/Voicemeeter/).

Doing this can minimise the possablitiy of clipping and is just _in my opinion_ better.

## Code
Once you're ready to upload the code, firstly ensure you have installed the folling libraries: (either via the built-in library manager or the following links)
- [FastLED](https://github.com/FastLED/FastLED)
- [Adafruit_SSD1306](https://github.com/adafruit/Adafruit_SSD1306)
- [Easy Button](https://github.com/evert-arias/EasyButton)

Then ensure that the following code describes the hardware in the best possable way:
```
#define BUTTON_PIN 2
#define LED_MAXTRIX_PIN 7
#define MATRIX_HEIGHT 16
#define MATRIX_WIDTH 16  //also dictates the number of VU bands supports values of (2, 4, 8, 10, 16, 20 and 32) without modifying code
#define MAX_MAXTRIX_BRIGHTNESS 200
#define LED_TYPE WS2812B
#define COLOUR_ORDER GRB
#define MIC_IN_PIN A2
#define AUDIO_IN_PIN A2
#define FRAMES_PER_SECOND 120
```
Hit upload and you should be good to go!

## Bugs fixes and updates
Once I'm happy with the state of this project, it will likely not be updated much. So updates past this point will be very sporadic.

## Copyright and licencing

See [license](license.txt) in depth info.

This project uses the following third-party libraries:
- **FastLED** (MIT License): https://github.com/FastLED/FastLED
- **Adafruit_SSD1306** (BSD License): https://github.com/adafruit/Adafruit_SSD1306
- **EasyButton** (MIT License): https://github.com/evert-arias/EasyButton
