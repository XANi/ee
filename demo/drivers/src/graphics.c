/***************************************************************************//**
 * @brief Draws the graphics on the display
 * @version 5.2.2
 *******************************************************************************
 * # License
 * <b>Copyright 2015 Silicon Labs, Inc. http://www.silabs.com</b>
 *******************************************************************************
 *
 * This file is licensed under the Silabs License Agreement. See the file
 * "Silabs_License_Agreement.txt" for details. Before using this software for
 * any purpose, you must agree to the terms of that agreement.
 *
 ******************************************************************************/

#include "graphics.h"
#include "em_types.h"
#include "em_cmu.h"
#include "glib.h"
#include "dmd.h"
#include "display.h"
#include "textdisplay.h"
#include "retargettextdisplay.h"
#include "bspconfig.h"
#include "rtcdriver.h"

#include "em_rtc.h"

#include <string.h>
#include <stdio.h>

static GLIB_Context_t glibContext;          /* Global glib context */

static void GRAPHICS_DrawThermometer(int32_t xoffset, int32_t yoffset, uint32_t max, int32_t level, char scale);
static void GRAPHICS_DrawTemperatureC(int32_t xoffset, int32_t yoffset, int32_t tempData);
static void GRAPHICS_DrawTemperatureF(int32_t xoffset, int32_t yoffset, int32_t tempData);
static void GRAPHICS_DrawHumidity(int32_t xoffset, int32_t yoffset, uint32_t rhData);
static void GRAPHICS_CreateString(char *string, int32_t value);
static void GRAPHICS_CreateString2(char *string, int32_t value);

/***************************************************************************//**
 * @brief Initializes the graphics stack.
 * @note This function will /hang/ if errors occur (usually
 *       caused by faulty displays.
 ******************************************************************************/
void GRAPHICS_Init(void)
{
  EMSTATUS status;

  /* Initialize the display module. */
  status = DISPLAY_Init();
  if (DISPLAY_EMSTATUS_OK != status) {
    while (1)
      ;
  }

  /* Initialize the DMD module for the DISPLAY device driver. */
  status = DMD_init(0);
  if (DMD_OK != status) {
    while (1)
      ;
  }

  status = GLIB_contextInit(&glibContext);
  if (GLIB_OK != status) {
    while (1)
      ;
  }

  glibContext.backgroundColor = Black;
  glibContext.foregroundColor = White;

  /* Use Narrow font */
  GLIB_setFont(&glibContext, (GLIB_Font_t *)&GLIB_FontNarrow6x8);
}

/***************************************************************************//**
 * @brief This function draws the background image
 * @param xoffset
 *        The background image is wider than the display. This parameter
 *        selects which part to show. The offset is given in multiples of 8.
 *        If you increase xoffset by 1, the bacground will be shifted by 8
 *        pixels
 ******************************************************************************/
void GRAPHICS_ShowStatus(bool si7013_status, bool lowBat)
{
  GLIB_clear(&glibContext);

  if (lowBat) {
    GLIB_drawString(&glibContext, "Low battery!", 16, 5, 115, 0);
  } else if (!si7013_status) {
    GLIB_drawString(&glibContext, "Failed to detect\nsi7021 sensor.", 32, 5, 5, 0);
  } else {
    GLIB_drawString(&glibContext, "Thermometer ready\n", 32, 5, 5, 0);
  }
  DMD_updateDisplay();
}

/***************************************************************************//**
 * @brief This function draws the UI
 * @param tempData
 *        Temperature data (given in Celsius) multiplied by 1000
 * @param rhData
 *        Relative humidity (in percent), multiplied by 1000.
 * @param degF
 *        Set to 0 to display temperature in Celsius, otherwise Fahrenheit.
 ******************************************************************************/
void GRAPHICS_Draw(int32_t tempData, uint32_t rhData, bool lowBat,uint32_t vBatt)
{
  GLIB_clear(&glibContext);
  if (lowBat) {
    GLIB_drawString(&glibContext, "LOW BATTERY!", 12, 5, 120, 0);
  } else {
	  CMU_HFRCOBandSet(cmuHFRCOBand_21MHz);
    /* Draw temperature and RH */
    GRAPHICS_DrawTemperatureC(6, 3, tempData);
    char string[10];
    GRAPHICS_CreateString2(string, vBatt);
    string[7]='v';
    string[8]= 0;
    GLIB_drawString(&glibContext, string, strlen(string), 35, 20, 0);
    GRAPHICS_DrawHumidity(127 - 40, 3, rhData);
    CMU_HFRCOBandSet(cmuHFRCOBand_1MHz);
  }
  DMD_updateDisplay();
}

void GRAPHICS_DrawFast(int32_t tempData, uint32_t rhData, bool lowBat,uint32_t vBatt, uint8_t offset) {
	 //GLIB_clear(&glibContext);
     char string[10];
     GLIB_Rectangle_t blank;
     GLIB_Rectangle_t mark;
     blank.xMin = 0;
     blank.xMax = 127;
     blank.yMin = (offset*8);
     blank.yMax = (offset*8)+7;
     mark.xMin = 2;
     mark.xMax = 4;
     GLIB_drawRectFilled(&glibContext, &blank);
     if (offset > 0 ) {
    	 mark.yMin = 2+(offset*8)-8;
    	 mark.yMax = 4+(offset*8)-8;
     } else {
    	 mark.yMin = 2+(15*8);
    	 mark.yMax = 4+(15*8);
     }
     GLIB_drawRectFilled(&glibContext, &mark);
     glibContext.foregroundColor = Black;
	 mark.yMin = 2+(offset*8);
	 mark.yMax = 4+(offset*8);
     GLIB_drawRectFilled(&glibContext, &mark);
	 GRAPHICS_CreateString(string, tempData);
	 string[5] = 'C';
	 string[6] = 0;
	 GLIB_drawString(&glibContext, string, strlen(string), 6, (offset*8), 0);

     GRAPHICS_CreateString(string, rhData);
	 string[5] = '%';
	 string[6] = 0;
	 GLIB_drawString(&glibContext, string, strlen(string), 127 - 40, (offset * 8), 0);
 	// if (offset < 1) {
		    blank.yMin += 8;
		    blank.yMax += 8;
	 //       GLIB_drawRectFilled(&glibContext, &blank);
		   	GRAPHICS_CreateString2(string, vBatt*954/1000); // tune for shitty adc
		    string[7]='v';
		    string[8]= 0;
		    GLIB_drawString(&glibContext, string, strlen(string), 8*5, (offset * 8), 0);
//	 }
     glibContext.foregroundColor = White;

	 DMD_updateDisplay();
}


/***************************************************************************//**
 * @brief Helper function for drawing the temperature in Fahrenheit
 * @param xoffset
 *        This parameter selects which part of the UI to show.
 * @param yoffset
 *        This parameter selects which part of the UI to show.
 * @param tempData
 *        Temperature data (given in Celsius) multiplied by 1000
 ******************************************************************************/
static void GRAPHICS_DrawTemperatureF(int32_t xoffset, int32_t yoffset, int32_t tempData)
{
  char string[10];

  tempData = ((tempData * 9) / 5) + 32000;

  GRAPHICS_CreateString(string, tempData);
  GLIB_drawString(&glibContext, string, strlen(string), xoffset, yoffset, 0);

  GRAPHICS_DrawThermometer(xoffset + 15, yoffset + 17, 95, tempData / 1000, 'F');
}

/***************************************************************************//**
 * @brief Helper function for drawing the temperature in Celsius.
 * @param xoffset
 *        This parameter selects which part of the UI to show.
 * @param yoffset
 *        This parameter selects which part of the UI to show.
 * @param tempData
 *        Temperature data (given in Celsius) multiplied by 1000
 ******************************************************************************/
static void GRAPHICS_DrawTemperatureC(int32_t xoffset, int32_t yoffset, int32_t tempData)
{
  char string[10];

  GRAPHICS_CreateString(string, tempData);
  string[5] = 'C';
  string[6] = 0;
  GLIB_drawString(&glibContext, string, strlen(string), xoffset, yoffset, 0);

}

/***************************************************************************//**
 * @brief Helper function for drawing a thermometer.
 * @param xoffset
 *        Top left pixel X offset
 * @param yoffset
 *        Top left pixel Y offset
 ******************************************************************************/
static void GRAPHICS_DrawThermometer(int32_t xoffset,
                                     int32_t yoffset,
                                     uint32_t max,
                                     int32_t level,
                                     char scale)
{
  GLIB_Rectangle_t thermoScale;
  GLIB_Rectangle_t mercuryLevel;
  const uint32_t minLevelY = yoffset + 76;
  const uint32_t maxLevelY = yoffset + 3;
  uint32_t curLevelY;
  bool levelNeg;
  char string[10];

  /* Draw outer frame */
  thermoScale.xMin = xoffset - 4;
  thermoScale.xMax = xoffset + 4;
  thermoScale.yMin = yoffset;
  thermoScale.yMax = yoffset + 90;
  GLIB_drawCircleFilled(&glibContext, xoffset, yoffset + 90, 12);
  GLIB_drawRectFilled(&glibContext, &thermoScale);

  glibContext.backgroundColor = White;
  glibContext.foregroundColor = Black;

  /* Draw the "mercury" */
  levelNeg = (level < 0);
  /* Abs value and saturate at max */
  level = levelNeg ? level * -1 : level;
  level = level > (int32_t)max ? (int32_t)max : level;
  curLevelY = yoffset + (((minLevelY - maxLevelY) * (max - level)) / max);

  /* Moving part */
  mercuryLevel.xMin = xoffset - 2;
  mercuryLevel.xMax = xoffset + 2;
  mercuryLevel.yMin = curLevelY;
  mercuryLevel.yMax = minLevelY;
  GLIB_drawRectFilled(&glibContext, &mercuryLevel);

  /* Non-moving part */
  mercuryLevel.xMin = xoffset - 2;
  mercuryLevel.xMax = xoffset + 2;
  mercuryLevel.yMin = minLevelY - 1;
  mercuryLevel.yMax = minLevelY + 5;
  GLIB_drawRectFilled(&glibContext, &mercuryLevel);

  /* Glass bulp */
  GLIB_drawCircleFilled(&glibContext, xoffset, yoffset + 90, 9);

  glibContext.backgroundColor = Black;
  glibContext.foregroundColor = White;

  /* Draw min/max lines and numbers */
  GLIB_drawLineH(&glibContext, xoffset - 6, minLevelY, xoffset + 6);
  GLIB_drawLineH(&glibContext, xoffset - 6, maxLevelY, xoffset + 6);

  GLIB_drawString(&glibContext, "0", 1, xoffset + 8, minLevelY - 4, 0);
  snprintf(string, 4, "%ld", max);
  GLIB_drawString(&glibContext, string, 4, xoffset + 8, maxLevelY - 4, 0);

  if (levelNeg) {
    GLIB_drawString(&glibContext, "-", 1, xoffset - 2, yoffset + 87, 0);
  } else {
    GLIB_drawString(&glibContext, (char *)&scale, 1, xoffset - 2, yoffset + 87, 0);
  }
}

/***************************************************************************//**
 * @brief Helper function for drawing the humidity part of the UI.
 * @param xoffset
 *        This parameter selects which part of the UI to show.
 * @param rhData
 *        Relative humidity (in percent), multiplied by 1000.
 ******************************************************************************/
static void GRAPHICS_DrawHumidity(int32_t xoffset, int32_t yoffset, uint32_t rhData)
{
  char string[10];

  GRAPHICS_CreateString(string, rhData);
  string[5] = '%';
  string[6] = 0;

  GLIB_drawString(&glibContext, string, strlen(string), xoffset, yoffset, 0);

  GRAPHICS_DrawThermometer(xoffset + 15, yoffset + 17, 100, rhData / 1000, '%');
}

/***************************************************************************//**
 * @brief Helper function for printing numbers. Consumes less space than
 *        snprintf. Limited to two digits and one decimal.
 * @param string
 *        The string to print32_t to
 * @param value
 *        The value to print
 ******************************************************************************/
static void GRAPHICS_CreateString(char *string, int32_t value)
{
  if (value < 0) {
    value = -value;
    string[0] = '-';
  } else {
    string[0] = ' ';
  }
  string[5] = 0;
  string[4] = '0' + (value % 1000) / 100;
  string[3] = '.';
  string[2] = '0' + (value % 10000) / 1000;
  string[1] = '0' + (value % 100000) / 10000;

  if (string[1] == '0') {
    string[1] = ' ';
  }
}
static void GRAPHICS_CreateString2(char *string, int32_t value)
{
  if (value < 0) {
    value = -value;
    string[0] = '-';
  } else {
    string[0] = ' ';
  }
  string[7] = 0;
  string[6] = '0' + (value % 10) / 1;
  string[5] = '0' + (value % 100) / 10;
  string[4] = '0' + (value % 1000) / 100;
  string[3] = '.';
  string[2] = '0' + (value % 10000) / 1000;
  string[1] = '0' + (value % 100000) / 10000;

  if (string[1] == '0') {
    string[1] = ' ';
  }
}
static void GRAPHICS_CreateString8(char *string, uint8_t value)
{
  string[3] = 0;
  string[2] = '0' + (value % 10) / 1;
  string[1] = '0' + (value % 100) / 10;
  string[0] = '0' + (value % 1000) / 100;
}
static void GRAPHICS_CreateString32(char *string, uint32_t value)
{
  string[7] = 0;
  string[6] = '0' + (value % 10) / 1;
  string[5] = '0' + (value % 100) / 10;
  string[4] = '0' + (value % 1000) / 100;
  string[3] = '0' + (value % 10000) / 1000;
  string[2] = '0' + (value % 100000) / 10000;
  string[1] = '0' + (value % 1000000) / 100000;
  string[0] = '0' + (value % 10000000) / 1000000;
}



typedef struct { uint64_t state;  uint64_t inc; } pcg32_random_t;

uint32_t pcg32_random_r(pcg32_random_t* rng)
{
    uint64_t oldstate = rng->state;
    // Advance internal state
    rng->state = oldstate * 6364136223846793005ULL + (rng->inc|1);
    // Calculate output function (XSH RR), uses old state for max ILP
    uint32_t xorshifted = ((oldstate >> 18u) ^ oldstate) >> 27u;
    uint32_t rot = oldstate >> 59u;
    return (xorshifted >> rot) | (xorshifted << ((-rot) & 31));
}

void GRAPHICS_Demo (uint64_t state) {
      GLIB_Rectangle_t square;
      GLIB_Rectangle_t clean;
      int32_t x = 10;
      int32_t y=9;
      pcg32_random_t rng;
      rng.state = state;
      uint8_t fps = 0;
      uint8_t fpscount = 0;
      char fpsstring[10];
      uint32_t prev = RTC_CounterGet();
      uint32_t next = RTC_CounterGet();
      while (1) {
          next = RTC_CounterGet();
          if ((next - prev) > 4300) {
              fps = fpscount;
              fpscount = 0;
              prev = next;
          }
          //GPIO_PinModeSet(BSP_GPIO_LED0_PORT,BSP_GPIO_LED0_PIN,gpioModePushPull,1);
          //GRAPHICS_CreateString8(&fpsstring, fps);
          //GRAPHICS_CreateString32(&fpsstring, next - prev);
          uint32_t r = pcg32_random_r(&rng);
          x = r & 0b00000000000000000000000001111111;
          y = (r>>8) & 0b00000000000000000000000001111111;
          GLIB_drawPixel(&glibContext,x,y);
//          r = pcg32_random_r(&rng);
//          x = r & 0b00000000000000000000000001111111;
//          y = (r>>8) & 0b00000000000000000000000001111111;
//          GLIB_drawPixel(&glibContext,x,y);
          glibContext.foregroundColor = Black;
          r = pcg32_random_r(&rng);
          x = r & 0b00000000000000000000000001111111;
          y = (r>>8) & 0b00000000000000000000000001111111;
          GLIB_drawPixel(&glibContext,x,y);
          glibContext.foregroundColor = White;
          //GPIO_PinModeSet(BSP_GPIO_LED0_PORT,BSP_GPIO_LED0_PIN,gpioModePushPull,0);
          if ((x % 5) == 1||true) {
              ++fpscount;
              //GPIO_PinModeSet(BSP_GPIO_LED1_PORT,BSP_GPIO_LED1_PIN,gpioModePushPull,1);
              GRAPHICS_CreateString8(&fpsstring, fps);
              GLIB_drawString(&glibContext, &fpsstring, strlen(&fpsstring), 0,0, 1);
              //GLIB_drawString(&glibContext, "asd", 4, 0,0, 1);
              //GPIO_PinModeSet(BSP_GPIO_LED1_PORT,BSP_GPIO_LED1_PIN,gpioModePushPull,0);
              DMD_updateDisplay();

          }


          //RTC_COUNTERGET();
      }
}

