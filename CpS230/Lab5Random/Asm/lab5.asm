.386
.MODEL FLAT
.STACK 4096

.data
hello db 'Hello World!', 0ah, 0

.code
INCLUDELIB LIBCMT
EXTRN _printf:NEAR

PUBLIC _main
_main PROC

   mov   eax, offset hello
   push  eax
   call  _printf
   pop   ecx

   mov   eax, 0
   ret

_main ENDP
END