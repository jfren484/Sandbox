; CpS 230 Lab 8: Alice B. College-Student (acoll555)
;---------------------------------------------------
; Intro to DOS programming using direct BIOS calls.
;---------------------------------------------------
bits 16

; NECESSARY when creating "COM" files (simple DOS executables).
; (tells NASM take into account the fact that DOS loads
;  COM files at offset 0x100 in memory)
org	0x100

section	.text
; Execution starts at the beginning of the .text section
; (to indicate this, I'm putting a "start:" label here)
start:
	; Prompt the user to enter a string
	mov	dx, prompt
	call	puts
	
	; read an ASCII char from the keyboard using BIOS keyboard services (int 0x16)
    	mov     ah, 0
        int     0x16

	; check to see if the character is an ASCII letter (A-Z, a-z); if not, re-prompt
        cmp     al, 'A'
        jl      start
        cmp     al, 'Z'
        jg      start

	; fill the screen with the user's favorite letter (hint: screen is 80x25 characters)
        mov     cx, 0
        mov     ah, 0x0e
.loop:
        int     0x10
        inc     cx
        cmp     cx, 2000
        je      .end
        jmp     .loop
.end:	
	; Tell DOS to unload us and go back to the command prompt
	mov	    ah, 0x4c	; DOS function number (0x4c == exit program)
	mov	    al, 0		; Exit status code (0 == success)
	int	    0x21		; Make "system call" to DOS via interrupt 0x21

; print NUL-terminated string from DS:DX to screen using BIOS (INT 10h)
; takes NUL-terminated string pointed to by DS:DX
; clobbers nothing
; returns nothing
puts:
	push	ax		    ; save ax/cx/si
	push	cx
	push	si
	
	mov	    ah, 0x0e	; BIOS video services (int 0x10) function 0x0e: put char to screen
	
	mov	    si, dx		; SI = pointer to string (offset only; segment assumed to be DS)
.loop:	    mov	al, [si]; AL = current character
	inc	    si		    ; advance SI to point at next character
	cmp	    al, 0		; if (AL == 0), stop
	jz	    .end
	int	    0x10		; call BIOS via interrupt 0x10 (the ASCII char to print is in AL)
	jmp	    .loop		; repeat
.end:
	pop	    si		    ; restore si/cx/ax (de-clobber)
	pop	    cx
	pop	    ax
	ret			        ; return to caller


section	.data
prompt	db	"What is your favorite letter? ", 13, 10, 0
