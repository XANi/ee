// Toggle bit
#define tbi(port, bit)   port^=_BV(bit)
// Set bit
#define sbi(port, bit)   (port) |= (1 << (bit))
// Clear bit
#define cbi(port, bit)   (port) &= ~(1 << (bit))
// Get bit
#define gbi(port, bit)   (port) & (1 << (bit))
