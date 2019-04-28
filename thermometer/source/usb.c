
#include "usb.h"
#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"

#include "em_usb.h"
#include "cdc.h"
#include "descriptors.h"

static void StateChange(USBD_State_TypeDef oldState,
                        USBD_State_TypeDef newState);

static const USBD_Callbacks_TypeDef callbacks =
{
  .usbReset        = NULL,
  .usbStateChange  = StateChange,
  .setupCmd        = CDC_SetupCmd,
  .isSelfPowered   = NULL,
  .sofInt          = NULL
};

static const USBD_Init_TypeDef usbInitStruct =
{
  .deviceDescriptor    = &USBDESC_deviceDesc,
  .configDescriptor    = USBDESC_configDesc,
  .stringDescriptors   = USBDESC_strings,
  .numberOfStrings     = sizeof(USBDESC_strings) / sizeof(void*),
  .callbacks           = &callbacks,
  .bufferingMultiplier = USBDESC_bufferingMultiplier,
  .reserved            = 0
};
static void StateChange(USBD_State_TypeDef oldState,
                        USBD_State_TypeDef newState)
{
    /* Call CDC driver state change event handler. */
    CDC_StateChangeEvent(oldState, newState);

    if ( newState == USBD_STATE_CONFIGURED ) {
        GPIO_PinModeSet(BSP_GPIO_LED0_PORT,BSP_GPIO_LED0_PIN,gpioModePushPull,1);
    } else if ( (oldState == USBD_STATE_CONFIGURED)
                && (newState == USBD_STATE_SUSPENDED)    ) {
        GPIO_PinModeSet(BSP_GPIO_LED0_PORT,BSP_GPIO_LED0_PIN,gpioModePushPull,0);
    } else {
        GPIO_PinModeSet(BSP_GPIO_LED0_PORT,BSP_GPIO_LED0_PIN,gpioModePushPull,0);
    }
}


void InitUSB() {
    CDC_Init();
    USBD_Init(&usbInitStruct);
    return;
};