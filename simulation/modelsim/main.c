#define uint32_t unsigned int
#define uint16_t unsigned short
#define uint8_t unsigned char
// typedef _SIZE_TYPE_ size_t;

//Variables
// uint8_t *a = "hel";
// uint8_t *b = "hello";
// uint32_t tab32[]={0x12345551,0x12345661,0x12345671,0x12345678};
//uint16_t tab16[]={0x1231,0x1252,0x1323,0x1234};
// uint8_t tab8[]={0x12,0x34,0x56,0x78};
//uint32_t el32_s;
//uint16_t el16_s;
//uint8_t el8_s;
uint8_t tab[] = {0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88};
//uint32_t el32_l;
//uint16_t el16_l;
//uint8_t el8_l;

//Main
int main(int argc, char *argv[]) {
    // volatile uint8_t c = a[2];
    // volatile uint8_t d = b[2];
    // volatile uint32_t e32 = tab32[2];
    // volatile uint16_t e16 = (uint16_t) tab32[1];
    // volatile uint8_t e8 = (uint8_t) tab32[0];
    // volatile uint16_t e16_0 = (uint16_t) tab32[0];
    // volatile uint16_t e16_1 = (uint16_t) tab32[1];
    // volatile uint16_t e16_2 = (uint16_t) tab32[2];
    // volatile uint16_t e16_3 = (uint16_t) tab32[3];
    tab[0] = 0xAA;
    tab[2] = 0xBB;
    tab[4] = 0xCC;
    tab[6] = 0xDD;
    volatile uint8_t a = (uint8_t) tab[0];
    volatile uint8_t b = (uint8_t) tab[1];
    volatile uint8_t c = (uint8_t) tab[2];
    volatile uint8_t d = (uint8_t) tab[3];
    volatile uint32_t e = (uint32_t) tab[0];
    
    // volatile uint16_t e16_0 = (uint16_t) tab8[0];
    // volatile uint16_t b = (uint16_t) tab[1];
    // volatile uint16_t c = (uint16_t) tab[2];
    // volatile uint32_t d = (uint32_t) tab[3];

    // volatile uint8_t e8_2 = (uint8_t) tab32[2];
    // volatile uint8_t e8_3 = (uint8_t) tab32[3];
    // el32_s = tab[0];
    // el16_s = tab[1];
    // el8_s = tab[2];
    while(1);
    return 0;
}