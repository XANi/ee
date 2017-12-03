#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdint.h>
#include "state.h"
#include "common.h"
#include "lib/uart.h"
uint8_t smState = 0;

static const long hextable[] = { 
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0,1,2,3,4,5,6,7,8,9, 0, 0, 0, 0, 0, 0, 0,10,11,12,13,14,15, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0,10,11,12,13,14,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};



int strstart(const char *str, const char *pre)
{
    return strncmp(pre, str, strlen(pre)) == 0;
}

void runCli(char *cmd) {
	if (cmd[0] == 'h') {
		cliDisplayHelp();
		return;
	}
	if(strstart(cmd,"c:p:")) {
		if (cmd[4] < 48 || cmd[4] > 48+7 ) {
			cliError();
			return;
		}
		uint8_t portNo = cmd[4] - 48;
		sbi(out,portNo);
		cliOK();
		return;
	}
	if(strstart(cmd,"c:s:")) {
		if (cmd[4] < 48 || cmd[4] > 48+7 ) {
			cliError();
			return;
		}
		uint8_t portNo = cmd[4] - 48;
		cbi(out,portNo);
		cliOK();
		return;
	}
	if(strstart(cmd,"c:l:")) {
		if (cmd[4] < 48 || cmd[4] > 48+7 ) {
			cliError();
			return;
		}
		uint8_t portNo = cmd[4] - 48;
		ledR[portNo] = (hextable[ cmd[6] ] * 15) + hextable[ cmd[7] ];
		ledG[portNo] = (hextable[ cmd[9] ] * 15) + hextable[ cmd[10] ]; 
		ledB[portNo] =(hextable[ cmd[12] ] * 15) + hextable[ cmd[13] ];
		cliOK();
		return;
	}
	if(strstart(cmd,"c:f:")) {
		uint16_t fanSpeed = (hextable[ cmd[4] ] * 15) + hextable[ cmd[5] ];
		FAN_REGISTER = fanSpeed * 2;
		cliOK();
		return;
	}
	cliError();
	writeString(cmd);
	cliDisplayHelp();
}

void cliOK() {
	writeString("\nOK:\n");
}
void cliError() {
	writeString("Bad command\n");
}

void cliDisplayHelp() {
	writeString("\nHelp:\n");
	writeString("  H - display help:\n");
	writeString("  C - command:\n");
	writeString("    -- socket number goes 0-7 --\n");
	writeString("    C:P:0: - power-on socket 0\n");
	writeString("    C:S:0: - shut down socket 0\n");
	writeString("    C:L:0:AA:BB:CC: - set led 0 color to aa:bb:cc\n");
	writeString("    C:F:5A: - set fan PWM %\n");
	writeString("");
}
