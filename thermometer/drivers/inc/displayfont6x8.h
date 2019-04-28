/***************************************************************************//**
 * @file displayfont6x8.h
 * @brief 6x8 font with all characters
 *
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

/** @cond DO_NOT_INCLUDE_WITH_DOXYGEN */

#define CHARS_FONT_6x8_WIDTH  (6)
#define CHARS_FONT_6x8_HEIGHT (8)

typedef uint8_t FontBits_t;

static const FontBits_t chars_6x8_bits[] =
{
  0x00, 0x04, 0x0a, 0x0a, 0x04, 0x03, 0x06, 0x06, 0x08, 0x02, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x0e, 0x04, 0x0e, 0x1f, 0x08, 0x1f, 0x0c, 0x1f,
  0x0e, 0x0e, 0x00, 0x00, 0x10, 0x00, 0x01, 0x0e, 0x0e, 0x0e, 0x0f, 0x0e,
  0x07, 0x1f, 0x1f, 0x0e, 0x11, 0x0e, 0x1c, 0x11, 0x01, 0x11, 0x11, 0x0e,
  0x0f, 0x0e, 0x0f, 0x1e, 0x1f, 0x11, 0x11, 0x11, 0x11, 0x11, 0x1f, 0x0e,
  0x00, 0x0e, 0x04, 0x00, 0x02, 0x00, 0x01, 0x00, 0x10, 0x00, 0x0c, 0x00,
  0x01, 0x04, 0x08, 0x01, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0c, 0x04, 0x06, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x0a, 0x0a, 0x1e, 0x13, 0x09, 0x04,
  0x04, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00, 0x11, 0x06, 0x11, 0x08,
  0x0c, 0x01, 0x02, 0x10, 0x11, 0x11, 0x06, 0x06, 0x08, 0x00, 0x02, 0x11,
  0x10, 0x11, 0x11, 0x11, 0x09, 0x01, 0x01, 0x11, 0x11, 0x04, 0x08, 0x09,
  0x01, 0x1b, 0x11, 0x11, 0x11, 0x11, 0x11, 0x01, 0x04, 0x11, 0x11, 0x11,
  0x11, 0x11, 0x10, 0x02, 0x00, 0x08, 0x0a, 0x00, 0x04, 0x00, 0x01, 0x00,
  0x10, 0x00, 0x12, 0x1e, 0x01, 0x00, 0x00, 0x01, 0x04, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
  0x04, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x0a, 0x1f,
  0x01, 0x08, 0x05, 0x02, 0x02, 0x08, 0x15, 0x04, 0x00, 0x00, 0x00, 0x10,
  0x19, 0x04, 0x10, 0x04, 0x0a, 0x0f, 0x01, 0x08, 0x11, 0x11, 0x06, 0x06,
  0x04, 0x1f, 0x04, 0x10, 0x10, 0x11, 0x11, 0x01, 0x11, 0x01, 0x01, 0x01,
  0x11, 0x04, 0x08, 0x05, 0x01, 0x15, 0x13, 0x11, 0x11, 0x11, 0x11, 0x01,
  0x04, 0x11, 0x11, 0x11, 0x0a, 0x11, 0x08, 0x02, 0x01, 0x08, 0x11, 0x00,
  0x08, 0x0e, 0x0d, 0x0e, 0x16, 0x0e, 0x02, 0x11, 0x0d, 0x06, 0x0c, 0x09,
  0x04, 0x0b, 0x0d, 0x0e, 0x0f, 0x16, 0x0d, 0x0e, 0x07, 0x11, 0x11, 0x11,
  0x11, 0x11, 0x1f, 0x02, 0x04, 0x08, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x04, 0x00, 0x0a, 0x0e, 0x04, 0x02, 0x00, 0x02, 0x08, 0x0e, 0x1f,
  0x00, 0x1f, 0x00, 0x08, 0x15, 0x04, 0x08, 0x08, 0x09, 0x10, 0x0f, 0x04,
  0x0e, 0x1e, 0x00, 0x00, 0x02, 0x00, 0x08, 0x08, 0x16, 0x11, 0x0f, 0x01,
  0x11, 0x0f, 0x0f, 0x1d, 0x1f, 0x04, 0x08, 0x03, 0x01, 0x15, 0x15, 0x11,
  0x0f, 0x11, 0x0f, 0x0e, 0x04, 0x11, 0x11, 0x15, 0x04, 0x0a, 0x04, 0x02,
  0x02, 0x08, 0x00, 0x00, 0x00, 0x10, 0x13, 0x01, 0x19, 0x11, 0x07, 0x11,
  0x13, 0x04, 0x08, 0x05, 0x04, 0x15, 0x13, 0x11, 0x11, 0x19, 0x13, 0x01,
  0x02, 0x11, 0x11, 0x11, 0x0a, 0x11, 0x08, 0x01, 0x04, 0x10, 0x08, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1f, 0x10, 0x02, 0x15, 0x00,
  0x02, 0x08, 0x15, 0x04, 0x06, 0x00, 0x00, 0x04, 0x13, 0x04, 0x04, 0x10,
  0x1f, 0x10, 0x11, 0x02, 0x11, 0x10, 0x06, 0x06, 0x04, 0x1f, 0x04, 0x04,
  0x15, 0x1f, 0x11, 0x01, 0x11, 0x01, 0x01, 0x11, 0x11, 0x04, 0x08, 0x05,
  0x01, 0x11, 0x19, 0x11, 0x01, 0x15, 0x05, 0x10, 0x04, 0x11, 0x11, 0x15,
  0x0a, 0x04, 0x02, 0x02, 0x04, 0x08, 0x00, 0x00, 0x00, 0x1e, 0x11, 0x01,
  0x11, 0x1f, 0x02, 0x1e, 0x11, 0x04, 0x08, 0x03, 0x04, 0x15, 0x11, 0x11,
  0x0f, 0x1e, 0x01, 0x0e, 0x02, 0x11, 0x11, 0x15, 0x04, 0x1e, 0x04, 0x02,
  0x04, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a,
  0x0f, 0x19, 0x09, 0x00, 0x04, 0x04, 0x04, 0x04, 0x04, 0x00, 0x06, 0x02,
  0x11, 0x04, 0x02, 0x11, 0x08, 0x11, 0x11, 0x02, 0x11, 0x08, 0x06, 0x04,
  0x08, 0x00, 0x02, 0x00, 0x15, 0x11, 0x11, 0x11, 0x09, 0x01, 0x01, 0x11,
  0x11, 0x04, 0x09, 0x09, 0x01, 0x11, 0x11, 0x11, 0x01, 0x09, 0x09, 0x10,
  0x04, 0x11, 0x0a, 0x15, 0x11, 0x04, 0x01, 0x02, 0x08, 0x08, 0x00, 0x00,
  0x00, 0x11, 0x11, 0x11, 0x11, 0x01, 0x02, 0x10, 0x11, 0x04, 0x09, 0x05,
  0x04, 0x11, 0x11, 0x11, 0x01, 0x10, 0x01, 0x10, 0x12, 0x19, 0x0a, 0x15,
  0x0a, 0x10, 0x02, 0x02, 0x04, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x04, 0x00, 0x0a, 0x04, 0x18, 0x16, 0x00, 0x08, 0x02, 0x00, 0x00,
  0x02, 0x00, 0x06, 0x01, 0x0e, 0x0e, 0x1f, 0x0e, 0x08, 0x0e, 0x0e, 0x02,
  0x0e, 0x06, 0x00, 0x02, 0x10, 0x00, 0x01, 0x04, 0x0e, 0x11, 0x0f, 0x0e,
  0x07, 0x1f, 0x01, 0x0e, 0x11, 0x0e, 0x06, 0x11, 0x1f, 0x11, 0x11, 0x0e,
  0x01, 0x16, 0x11, 0x0f, 0x04, 0x0e, 0x04, 0x0a, 0x11, 0x04, 0x1f, 0x0e,
  0x10, 0x0e, 0x00, 0x1f, 0x00, 0x1e, 0x0f, 0x0e, 0x1e, 0x0e, 0x02, 0x0e,
  0x11, 0x0e, 0x06, 0x09, 0x0e, 0x11, 0x11, 0x0e, 0x01, 0x10, 0x01, 0x0f,
  0x0c, 0x16, 0x04, 0x0a, 0x11, 0x0e, 0x1f, 0x0c, 0x04, 0x06, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

/** @endcond */
