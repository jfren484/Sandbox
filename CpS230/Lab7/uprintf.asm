; CpS 230 Lab 7: Alice B. College-Student (acoll555)
;---------------------------------------------------
; micro-printf ("uprintf") function implementation.
;---------------------------------------------------
bits 64
default rel

; This is the only libc function we use
extern putchar

; Our helpers are written in C (also using only putchar)
extern uprintf_puts
extern uprintf_putx
extern uprintf_putu
extern uprintf_putd
extern uprintf_putb

section .text

global uprintf
; void uprintf(const char *fmt, ...)
; Supported format specifiers:
;	%s := 64-bit pointer to NUL-terminated ASCII string to print
;	%c := 64-bit DWORD containing ASCII char code to print [can just use putchar!]
;	%x := 64-bit DWORD to print in [unsigned] hexadecimal]
;	%u := 64-bit DWORD to print in [unsigned] decimal
;	%d := 64-bit DWORD to print in [signed] decimal
;	%b := 64-bit DWORD to print in [unsigned] binary
uprintf:
    mov     [rsp + 32], r9
    mov     [rsp + 24], r8
    mov     [rsp + 16], rdx
    mov     [rsp + 8], rcx
	push	rbp					; Standard prologue
	mov		rbp, rsp
	push	rsi					; No locals needed, but we need to save RSI
    push    rdi
	
    lea     rdi, [rbp + 24]
	mov		rsi, rcx			; %rsi = fmt
	
	; For each char in <fmt>
.fmtLoop:
	movzx	rax, byte [rsi]		; rax = fmt[rsi]
	inc		rsi					; ++rsi
	
	cmp		rax, 0				; if char was NUL...
	je		.breakOut			; ...break out of the loop
	
	cmp		rax, '%'			; if char is not %...
	jne		.printChar			; ...jump to the print

	movzx	rax, byte [rsi]		; rax = fmt[rsi]
	inc		rsi					; ++rsi
	
	cmp		rax, '%'			; if char is %...
	je		.printChar			; ...jump to the print

	cmp		rax, 's'
	je		.printStringParam

	cmp		rax, 'c'
	je		.printCharParam

	cmp		rax, 'x'
	je		.printHexParam

	cmp		rax, 'u'
	je		.printUnsignedParam

	cmp		rax, 'd'
	je		.printSignedParam

	cmp		rax, 'b'
	je		.printBinaryParam

	jmp		.fmtLoop			; back to top of loop without doing anything with the char

.printCharParam:
	mov		rax, [rdi]
	add		rdi, 8
	
.printChar:
	mov		rcx, rax
	call	putchar
	
	jmp		.fmtLoop			; back to top of loop
	
.printStringParam:
    mov     rcx, [rdi]
    call    uprintf_puts
    add     rdi, 8
	
	jmp		.fmtLoop			; back to top of loop

.printHexParam:
    mov     rcx, [rdi]
    call    uprintf_putx
    add     rdi, 8
	
	jmp		.fmtLoop			; back to top of loop

.printUnsignedParam:
    mov	    rcx, [rdi]
    call    uprintf_putu
    add     rdi, 8
		
	jmp		.fmtLoop			; back to top of loop

.printSignedParam:
    mov     rcx, [rdi]
    call    uprintf_putd
    add     rdi, 8
	
	jmp		.fmtLoop			; back to top of loop

.printBinaryParam:
    mov     rcx, [rdi]
    call    uprintf_putb
    add     rdi, 8
	
	jmp		.fmtLoop			; back to top of loop

.breakOut:
	pop		rdi					; restore original RDI value
	pop		rsi					; restore original RSI value
	pop		rbp					; standard epilogue
	ret
