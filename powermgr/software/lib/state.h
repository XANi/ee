#ifndef STATE_H
#define STATE_H
#include <stdlib.h>
#include <stdio.h>


#define STATE_INIT 0
#define STATE_WAIT_FOR_CMD 1
#define STATE_CMD_ON 2
#define STATE_CMD_OFF 3

extern uint8_t smState;
void stateReset(void);

#endif
