// CpS 230 Lab 7: Official test program (do not modify in any way)
// (c) 2016, Bob Jones University
//------------------------------------------------

// Declaration/prototype for externally defined uprintf function
void uprintf(const char *fmt, ...);

int main() {
    uprintf("hello, world!\n");
    
    uprintf("message with escaped %% chars!\n");
    
    uprintf("printing ascii 0x41...: %c\n", 0x41);
    
    uprintf("printing my name with %%s: %s\n", "Mr. J");
    
    uprintf("printing [not] my age in hex: %x\n", 969);
    
    uprintf("printing [not] my age in binary: %b\n", 969);
    
    uprintf("printing [not] my age in unsigned decimal: %u\n", 969);
    
    uprintf("printing -1 in unsigned decimal: %u\n", -1);
    
    uprintf("printing [not] my age in signed decimal: %d\n", 969);
    
    uprintf("printing -1 in signed decimal: %d\n", -1);
    
    uprintf("%s: it's as easy as %b, %x, %d!\n", "printf", 1, 2, 3);
    
    return 0;
}
