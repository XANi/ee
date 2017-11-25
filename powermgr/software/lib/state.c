#include "state.h"
#include <stdlib.h>
#include <stdio.h>

uint8_t smState = 0;

void stateReset(void) {
    smState = STATE_INIT;
}
