static void PutInt32String(char *string,uint8_t offset, int32_t value) {
    if (value < 0) {
        value = -value;
        string[offset + 0] = '-';
    } else {
        string[offset + 0] = ' ';
    }
    string[offset + 7] = 0;
    string[offset + 6] = '0' + (value % 10) / 1;
    string[offset + 5] = '0' + (value % 100) / 10;
    string[offset + 4] = '0' + (value % 1000) / 100;
    string[offset + 3] = '0' + (value % 10000) / 1000;
    string[offset + 2] = '0' + (value % 100000) / 10000;
    string[offset + 1] = '0' + (value % 1000000) / 100000;
}

static void PutUint32String(char *string,uint8_t offset, uint32_t value) {
    if (value < 0) {
        value = -value;
        string[offset + 0] = '-';
    } else {
        string[offset + 0] = ' ';
    }
    //string[offset + 7] = 0;
    string[offset + 6] = '0' + (value % 10) / 1;
    string[offset + 5] = '0' + (value % 100) / 10;
    string[offset + 4] = '0' + (value % 1000) / 100;
    string[offset + 3] = '0' + (value % 10000) / 1000;
    string[offset + 2] = '0' + (value % 100000) / 10000;
    string[offset + 1] = '0' + (value % 1000000) / 100000;
}
