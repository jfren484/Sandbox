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
	push	rbp					; Standard prologue
	mov		rbp, rsp
	push	rsi					; No locals needed, but we need to save ESI
	
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
	; TODO: move char param into rax so .printChar prints the param and not the 'c'
	
.printChar:
	mov		rcx, rax
	call	putchar
	
	jmp		.fmtLoop			; back to top of loop
	
.printStringParam:
	; TODO: implement
	
	jmp		.fmtLoop			; back to top of loop

.printHexParam:
	; TODO: implement
	
	jmp		.fmtLoop			; back to top of loop

.printUnsignedParam:
	; TODO: implement
	
	jmp		.fmtLoop			; back to top of loop

.printSignedParam:
	; TODO: implement
	
	jmp		.fmtLoop			; back to top of loop

.printBinaryParam:
	; TODO: implement
	
	jmp		.fmtLoop			; back to top of loop

.breakOut:
	pop		rsi					; restore original RSI value
	pop		rbp					; standard epilogue
	ret
