_find_t		struc ;	(sizeof=0x2C, standard type)
reserved	db 21 dup(?)
attrib		db ?
wr_time		dw ?
wr_date		dw ?
mysize		dd ?
myname		db 13 dup(?)
_padding	db ?
_find_t		ends


; SID MEIER'S COLONIZATION (DOS) PICTURE VIEWER
; Entry	Point :	1388:1E



unicode		macro page,string,zero
		irpc c,<string>
		db '&c', page
		endm
		ifnb <zero>
		dw zero
		endif
endm

		.286
		.model medium
		INCLUDE coldat00.asm; I separated these two files
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg000		segment public 'CODE'
		assume cs:seg000
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


nullsub_1	proc far		; CODE XREF: sub_34F4+F6P
					; sub_34F4+1A0P
		retf
nullsub_1	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


nullsub_2	proc far		; CODE XREF: sub_595E+AF4P
					; sub_9C42:loc_9F8EP
		retf
nullsub_2	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


nullsub_3	proc far		; CODE XREF: sub_595E:loc_5B24P
					; sub_7B0C:loc_7BE7P
		retf
nullsub_3	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


nullsub_4	proc far		; CODE XREF: sub_9C42:loc_9E18P
					; sub_9C42:loc_9F0CP
		retf
nullsub_4	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


nullsub_5	proc far		; CODE XREF: sub_53FC+130P
		retf
nullsub_5	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


nullsub_6	proc far		; CODE XREF: sub_34F4+106P
					; sub_34F4+1B1P
		retf
nullsub_6	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


nullsub_11	proc far		; CODE XREF: sub_2CDC+27P
		retf
nullsub_11	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


nullsub_12	proc far		; CODE XREF: sub_2CDC+31P
		retf
nullsub_12	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


nullsub_7	proc far		; CODE XREF: sub_3420+49P
		retf
nullsub_7	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


nullsub_8	proc far		; CODE XREF: sub_3420+40P
		retf
nullsub_8	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


nullsub_9	proc far		; CODE XREF: seg005:0424P
					; sub_647A+18CP
		retf
nullsub_9	endp

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


nullsub_10	proc far		; CODE XREF: sub_34F4+AFP
					; sub_34F4+1C4P
		retf
nullsub_10	endp

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __cdecl main(int argc,const char **argv,const char *envp)
_main		proc far		; CODE XREF: start+B8P


		enter	6, 0		
		push	di
		push	si		; int
		mov	word_19ADA, 1	; xms_disabled
		call	sub_F16E	; pack_enable_pfab
		sub	ax, ax		
		mov	word_15EB2, ax
		mov	word_15EB4, ax	; file_set
		mov	di, 1
loc_2958:				; CODE XREF: _main+24j
;MY INTRUDING CODE
push offset InitialMessage
call _printf
add sp, 2
push offset StupidString4; INITIAL CHOICE BETWEEN SS and PIK
call FAR PTR _cgets
add sp, 2
cmp byte ptr [StupidString4+2], 31h ; 1 in ASCII
je loc_SSChosen
cmp byte ptr [StupidString4+2], 32h ; 2 in ASCII
je loc_PIKChosen
jmp loc_2977; QUIT IF NOTHING WAS CHOSEN
loc_SSChosen: 		push offset StupidString1
			call _printf
			add sp, 2
			push offset StupidString2
			call FAR PTR _cgets
			add sp, 2
			lea bx, StupidString2
			add bx, 2
			push 8
			push offset aWinfwrk
			push bx
			call _strnicmp
			add sp, 6
			cmp ax, 0
			je loc_DoWinfwrkSSChosen; STATING THAT win-fwrk.ss IS BROKEN
			lea bx, StupidString2
			add bx, 2
			push bx
			call FAR PTR StupidSelfPaletteMethod
			add sp, 2
			jmp loc_295C
loc_DoWinfwrkSSChosen:	call FAR PTR StupidWinfwrkMethod
			jmp loc_295C
loc_PIKChosen:		push offset StupidString3
			call _printf
			add sp, 2
			push offset StupidString2
			call FAR PTR _cgets
			add sp, 2
			lea bx, StupidString2
			add bx, 2
			push 7
			push offset aOpening_3
			push bx
			call _strnicmp
			add sp, 6
			cmp ax, 0
			je loc_DoOpeningPIKChosen; Showing opening.pik
			lea bx, StupidString2
			add bx, 2
			push 6
			push offset aColony
			push bx
			call _strnicmp
			add sp, 6
			cmp ax, 0
			je loc_DoColonyPIKChosen; showing colony.pik
			lea bx, StupidString2
			add bx, 2
			push bx
			call FAR PTR StupidPIKViewer
			add sp, 2
			jmp loc_295C
loc_DoOpeningPIKChosen:	lea bx, StupidString2
			add bx, 2
			push bx
			call FAR PTR StupidOpeningPIKViewer
			add sp, 2
			jmp loc_295C
loc_DoColonyPIKChosen:	lea bx, StupidString2
			add bx, 2
			push bx
			call FAR PTR StupidColonyPIKViewer
			add sp, 2
			jmp loc_295C
loc_295C:				; CODE XREF: _main+7Ej
		cmp	word_15ED2, 0	; exit_value
		jz	short loc_2977
		push	word_15ED2
		push	487h		; char *

loc_296F:				
		call	_printf
loc_2974:
		add	sp, 4
loc_2977:				; CODE XREF: _main+8Ej
		pop	si
		pop	di
		leave
		retf
_main		endp
seg000		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg001		segment public 'CODE'
		assume cs:seg001
		;org 0Bh
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __stdcall	far sub_297C(char *)
sub_297C	proc far		; CODE XREF: sub_1025C:loc_1029FP
					; sub_1033A+23P

var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6

		enter	6, 0
		push	dx
		push	ax
		push	di
		push	si
		mov	di, 1
		sub	si, si
		cmp	dx, si
		jle	short loc_29B0

loc_298D:				; CODE XREF: sub_297C+32j
		or	si, si
		jle	short loc_2998
		mov	ax, 0Ah
		imul	di
		mov	di, ax

loc_2998:				; CODE XREF: sub_297C+13j
		push	ds
		push	offset a0	; "0"
		push	word ptr [bp+8]	; char *
		push	[bp+arg_0]	; char *
		call	_strcat_0
		add	sp, 8
		inc	si
		cmp	si, [bp+var_8]
		jl	short loc_298D

loc_29B0:				; CODE XREF: sub_297C+Fj
		mov	[bp+var_6], di
		push	word ptr [bp+8]
		push	[bp+arg_0]	; char *
		call	_strlen_0
		add	sp, 4
		mov	si, ax

loc_29C3:
		sub	si, [bp+var_8]
		push	word ptr [bp+8]
		push	[bp+arg_0]	; char *
		call	_strlen_0
		add	sp, 4
		cmp	ax, si
		jbe	short loc_2A1D
		mov	[bp+var_4], si
		mov	si, [bp+var_6]
		mov	di, [bp+var_A]

loc_29E1:				; CODE XREF: sub_297C+9Fj
		cmp	si, di
		jg	short loc_29FD
		mov	ax, di
		cwd
		idiv	si
		mov	[bp+var_2], ax
		imul	si
		sub	di, ax
		mov	al, byte ptr [bp+var_2]
		les	bx, dword ptr [bp+arg_0]
		add	bx, [bp+var_4]
		add	es:[bx], al

loc_29FD:				; CODE XREF: sub_297C+67j
		mov	cx, 0Ah
		mov	ax, si
		cwd
		idiv	cx
		mov	si, ax
		push	word ptr [bp+8]
		push	[bp+arg_0]	; char *
		call	_strlen_0
		add	sp, 4
		inc	[bp+var_4]
		cmp	ax, [bp+var_4]
		ja	short loc_29E1

loc_2A1D:				; CODE XREF: sub_297C+5Aj
		mov	ax, [bp+arg_0]
		mov	dx, [bp+8]
		pop	si
		pop	di
		leave
		retf	4
sub_297C	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __cdecl far sub_2A2A(char	*,int,int)
sub_2A2A	proc far		; CODE XREF: sub_2A74+14p sub_BFCC+26P

arg_0		= word ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp		; ä-ï env_get_path
		mov	bp, sp
		push	di
		push	si
		mov	si, [bp+arg_4]
		mov	es, [bp+arg_6]
		cmp	byte ptr es:[si], 2Ah ;	'*'
		jnz	short loc_2A3E
		inc	si
		mov	ax, es

loc_2A3E:				; CODE XREF: sub_2A2A+Fj
		cmp	word_1630C, 0	; env_special_path
		jnz	short loc_2A58
		mov	di, [bp+arg_0]
		push	es
		push	si		; char *
		push	word ptr [bp+8]	; char *
		push	di		; char *
		call	_strcpy_0	; ­¥â, íâ(r) char	_far* _fstrcpy(char _far*,char _far*);
		add	sp, 8
		jmp	short loc_2A6A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_2A58:				; CODE XREF: sub_2A2A+19j
		mov	di, [bp+arg_0]

loc_2A5B:
		push	word ptr [bp+8]
		push	di		; char *
		push	ds
		push	offset byte_1AD1A ; char* env_path
		push	es		; char *
		push	si		; char *
		call	sub_C114	; @fileio_join_path

loc_2A6A:				; CODE XREF: sub_2A2A+2Cj
		mov	ax, di
		mov	dx, [bp+8]
		pop	si
		pop	di
		leave
		retf
sub_2A2A	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_2A74(int,int,int,int)
sub_2A74	proc far		; CODE XREF: sub_843A+62P sub_A100+22P ...

var_50		= byte ptr -50h
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	50h, 0		; ä-ï @env_open
		push	bx
		push	si		; char *
		mov	si, bx
		push	[bp+arg_2]	; int
		push	[bp+arg_0]	; int
		lea	ax, [bp+var_50]
		push	ss		; int
		push	ax		; char *
		push	cs
		call	near ptr sub_2A2A ; env_get_path
		add	sp, 8
		push	si		; ¯à¥¦­¨(c) bx,â.¥.¯ à ¬¥âà â¨¯  "rb"
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_fopen
		add	sp, 4
		pop	si
		leave
		retf	4
sub_2A74	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	si
		mov	si, bx
		mov	al, [si+7]
		cbw
		push	ax
		call	_filelength
		add	sp, 2

loc_2AB0:
		pop	si
		retf
seg001		ends

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg002		segment public 'CODE'
		assume cs:seg002
		;org 2
		assume es:nothing, ss:nothing, ds:dseg
		push	bp

loc_2AB3:
		mov	bp, sp
		push	bx
		call	sub_BFCC
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2ABE	proc far		; CODE XREF: sub_1404+DP sub_1D28+43P	...

var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	2, 0
		mov	[bp+var_2], 1
		cmp	[bp+arg_0], 1
		jl	short loc_2AE5
		cmp	[bp+arg_2], 1
		jl	short loc_2AE5
		mov	ax, off_1A982
		dec	ax
		cmp	ax, [bp+arg_0]
		jle	short loc_2AE5
		mov	ax, word_1A984
		dec	ax
		cmp	ax, [bp+arg_2]
		jg	short loc_2AEA

loc_2AE5:				; CODE XREF: sub_2ABE+Dj sub_2ABE+13j	...
		mov	[bp+var_2], 0

loc_2AEA:				; CODE XREF: sub_2ABE+25j
		mov	ax, [bp+var_2]
		leave
		retf
sub_2ABE	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2AF0	proc far		; CODE XREF: sub_AB4A+40P
					; sub_B1D6+1E0P

var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		enter	2, 0
		cmp	[bp+arg_0], 0
		jg	short loc_2B03
		mov	ax, [bp+arg_0]
		not	ax
		inc	ax
		mov	[bp+arg_0], ax

loc_2B03:				; CODE XREF: sub_2AF0+8j
		cmp	[bp+arg_2], 0
		jg	short loc_2B12
		mov	ax, [bp+arg_2]
		not	ax
		inc	ax
		mov	[bp+arg_2], ax

loc_2B12:				; CODE XREF: sub_2AF0+17j
		mov	ax, [bp+arg_2]
		add	ax, [bp+arg_0]
		cmp	ax, 1
		jg	short loc_2B22
		mov	ax, 1
		jmp	short loc_2B24
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_2B22:				; CODE XREF: sub_2AF0+2Bj
		sub	ax, ax

loc_2B24:				; CODE XREF: sub_2AF0+30j
		mov	[bp+var_2], ax
		cmp	[bp+arg_4], 1
		jz	short loc_2B6F
		cmp	[bp+arg_0], 2
		jge	short loc_2B3D
		cmp	[bp+arg_2], 2
		jge	short loc_2B3D
		or	byte ptr [bp+var_2], 1

loc_2B3D:				; CODE XREF: sub_2AF0+41j sub_2AF0+47j
		cmp	[bp+arg_4], 2
		jz	short loc_2B6F
		mov	ax, [bp+arg_2]
		add	ax, [bp+arg_0]
		cmp	ax, 2
		jg	short loc_2B54
		mov	ax, 1
		jmp	short loc_2B56
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_2B54:				; CODE XREF: sub_2AF0+5Cj
		sub	ax, ax

loc_2B56:				; CODE XREF: sub_2AF0+61j
		or	[bp+var_2], ax
		cmp	[bp+arg_4], 3
		jz	short loc_2B6F
		cmp	[bp+arg_0], 2
		jl	short loc_2B6B
		cmp	[bp+arg_2], 2
		jge	short loc_2B6F

loc_2B6B:				; CODE XREF: sub_2AF0+73j
		or	byte ptr [bp+var_2], 1

loc_2B6F:				; CODE XREF: sub_2AF0+3Bj sub_2AF0+51j ...
		mov	ax, [bp+var_2]
		leave
		retf
sub_2AF0	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	2, 0
		mov	word ptr [bp-2], 1
		mov	ax, [bp+6]
		cmp	word_1A862, ax
		jg	short loc_2B8C
		cmp	word_1BE96, ax
		jge	short loc_2B91

loc_2B8C:				; CODE XREF: seg002:00D4j
		mov	word ptr [bp-2], 0

loc_2B91:				; CODE XREF: seg002:00DAj
		mov	ax, [bp+8]
		cmp	word_1A864, ax
		jg	short loc_2BA0
		cmp	ax, word_1BEAE
		jle	short loc_2BA5

loc_2BA0:				; CODE XREF: seg002:00E8j
		mov	word ptr [bp-2], 0

loc_2BA5:				; CODE XREF: seg002:00EEj
		mov	ax, [bp-2]
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2BAA	proc far		; CODE XREF: sub_1BE0+58P
					; sub_B1D6+10CP ...

arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	4, 0
		mov	ax, [bp+arg_2]
		imul	off_1A982
		add	ax, word_16318
		mov	dx, word_1631A
		add	ax, [bp+arg_0]
		leave
		retf
sub_2BAA	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2BC2	proc far		; CODE XREF: sub_94E+AEP sub_1670+E9P	...

arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	4, 0
		mov	ax, off_1A982
		imul	[bp+arg_2]
		mov	bx, ax
		add	bx, word_16318
		mov	es, word_1631A
		add	bx, [bp+arg_0]
		mov	al, es:[bx]
		leave
		retf
sub_2BC2	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2BDE	proc far		; CODE XREF: seg002:016Dp
					; sub_B1D6+11EP ...

arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	4, 0
		mov	ax, off_1A982
		imul	[bp+arg_2]
		add	ax, word_1631C
		mov	dx, word_1631E
		add	ax, [bp+arg_0]
		leave
		retf
sub_2BDE	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2BF6	proc far		; CODE XREF: sub_2DC8+10p seg002:0356p ...

arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	4, 0
		mov	ax, off_1A982
		imul	[bp+arg_2]
		mov	bx, ax
		add	bx, word_1631C
		mov	es, word_1631E
		add	bx, [bp+arg_0]
		mov	al, es:[bx]
		leave
		retf
sub_2BF6	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	4, 0
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_2BDE
		add	sp, 4
		mov	[bp-4],	ax
		mov	[bp-2],	dx
		cmp	word ptr [bp+0Ch], 0
		jz	short loc_2C3A
		mov	al, [bp+0Ah]
		les	bx, [bp-4]
		or	es:[bx], al
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_2C3A:				; CODE XREF: seg002:017Dj
		mov	al, [bp+0Ah]
		not	al
		les	bx, [bp-4]
		and	es:[bx], al
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2C48	proc far		; CODE XREF: seg002:01EBp sub_2CDC+5Ap ...

arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	4, 0
		mov	ax, off_1A982
		imul	[bp+arg_2]
		add	ax, word_16320
		mov	dx, word_16322
		add	ax, [bp+arg_0]
		leave
		retf
sub_2C48	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2C60	proc far		; CODE XREF: sub_2C7E+Ap sub_2CB4+Bp

arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	4, 0
		mov	ax, [bp+arg_2]
		imul	off_1A982
		mov	bx, ax
		add	bx, word_16320
		mov	es, word_16322
		add	bx, [bp+arg_0]
		mov	al, es:[bx]
		leave
		retf
sub_2C60	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2C7E	proc far		; CODE XREF: seg002:02D7p

arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp
		mov	bp, sp
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_2C60
		and	al, 0Fh
		leave
		retf
sub_2C7E	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	4, 0
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_2C48
		mov	[bp-4],	ax
		mov	[bp-2],	dx
		les	bx, [bp-4]
		mov	al, es:[bx]
		xor	al, [bp+0Ah]
		and	al, 0Fh
		xor	es:[bx], al
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2CB4	proc far		; CODE XREF: sub_2DC8+21p seg002:0367p ...

var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	2, 0
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_2C60
		add	sp, 4
		shr	al, 4
		sub	ah, ah
		mov	[bp+var_2], ax
		cmp	ax, 0Fh
		jnz	short loc_2CD7
		mov	[bp+var_2], 0FFFFh

loc_2CD7:				; CODE XREF: sub_2CB4+1Cj
		mov	al, byte ptr [bp+var_2]
		leave
		retf
sub_2CB4	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2CDC	proc far		; CODE XREF: seg016:10D6P

var_4		= dword	ptr -4
arg_0		= dword	ptr  6

		enter	4, 0
		cmp	word ptr [bp+0Ah], 4
		jge	short loc_2D2F
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_2E30
		add	sp, 4
		or	ax, ax
		jl	short loc_2D2F
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	word ptr [bp+0Ah]
		push	518h
		call	nullsub_11
		add	sp, 8
		push	5
		call	nullsub_12
		add	sp, 2
		mov	ax, word ptr [bp+arg_0]
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, word ptr [bp+arg_0+2]
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, 0FFACh
		mov	dx, 1		; int
		mov	bx, 2Dh	; '-'
		call	sub_F0D6

loc_2D2F:				; CODE XREF: sub_2CDC+8j sub_2CDC+19j
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_2C48
		mov	word ptr [bp+var_4], ax
		mov	word ptr [bp+var_4+2], dx
		les	bx, [bp+var_4]
		mov	al, es:[bx]
		and	al, 0Fh
		mov	cl, [bp+0Ah]
		shl	cl, 4
		or	al, cl
		mov	es:[bx], al
		leave
		retf
sub_2CDC	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	2, 0
		mov	word ptr [bp-2], 0FFFFh
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_2ABE
		add	sp, 4
		or	ax, ax
		jz	short loc_2D8F
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		call	sub_9BDC
		add	sp, 4
		or	ax, ax
		jnz	short loc_2D8F
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_2C7E
		sub	ah, ah
		mov	[bp-2],	ax

loc_2D8F:				; CODE XREF: seg002:02BCj seg002:02CEj
		mov	ax, [bp-2]
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2D94	proc far		; CODE XREF: sub_B1D6+130P
					; sub_B67C+41P

arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	4, 0
		mov	ax, off_1A982
		imul	[bp+arg_2]
		add	ax, word_16324
		mov	dx, word_16326
		add	ax, [bp+arg_0]
		leave
		retf
sub_2D94	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	4, 0
		mov	ax, off_1A982
		imul	word ptr [bp+8]
		mov	bx, ax
		add	bx, word_16324
		mov	es, word_16326
		add	bx, [bp+6]
		mov	al, es:[bx]
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2DC8	proc far		; CODE XREF: seg002:0404p

var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	2, 0
		mov	[bp+var_2], 0FFFFh
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_2BF6
		add	sp, 4
		test	al, 1
		jz	short loc_2DF0
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_2CB4
		cbw
		mov	[bp+var_2], ax

loc_2DF0:				; CODE XREF: sub_2DC8+18j
		mov	ax, [bp+var_2]
		leave
		retf
sub_2DC8	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	2, 0
		mov	word ptr [bp-2], 0FFFFh
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_2BF6
		add	sp, 4
		test	al, 2
		jz	short loc_2E2B
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_2CB4
		add	sp, 4
		cbw
		mov	[bp-2],	ax
		cmp	ax, 4
		jl	short loc_2E2B
		mov	word ptr [bp-2], 0FFFFh

loc_2E2B:				; CODE XREF: seg002:035Ej seg002:0374j
		mov	ax, [bp-2]
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2E30	proc far		; CODE XREF: sub_2CDC+11p sub_2F08+1Ap

var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	2, 0
		mov	[bp+var_2], 0FFFFh
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_2BF6
		add	sp, 4
		test	al, 2
		jz	short loc_2E65
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_2CB4
		add	sp, 4
		cbw
		mov	[bp+var_2], ax
		cmp	ax, 4
		jge	short loc_2E65
		mov	[bp+var_2], 0FFFFh

loc_2E65:				; CODE XREF: sub_2E30+18j sub_2E30+2Ej
		mov	ax, [bp+var_2]
		leave
		retf
sub_2E30	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2E6A	proc far		; CODE XREF: seg002:03F3p

var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	2, 0
		mov	[bp+var_2], 0FFFFh
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_2BF6
		add	sp, 4
		test	al, 2
		jz	short loc_2E92
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_2CB4
		cbw
		mov	[bp+var_2], ax

loc_2E92:				; CODE XREF: sub_2E6A+18j
		mov	ax, [bp+var_2]
		leave
		retf
sub_2E6A	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	2, 0
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_2E6A
		add	sp, 4
		or	ax, ax
		jge	short locret_2EB7
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_2DC8

locret_2EB7:				; CODE XREF: seg002:03FBj
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	4, 0
		push	si
		mov	word ptr [bp-4], 0FFFFh
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_2BF6
		add	sp, 4
		test	al, 48h
		jz	short loc_2F02
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_2CB4
		add	sp, 4
		cbw
		or	ax, ax
		jl	short loc_2F02
		cmp	ax, 4
		jge	short loc_2F02
		cmp	ax, [bp+0Ah]
		jz	short loc_2F02
		mov	si, ax
		imul	bx, [bp+0Ah], 13Ch
		test	byte ptr [bx+si+4EB4h],	40h
		jz	short loc_2F02
		mov	[bp-4],	ax

loc_2F02:				; CODE XREF: seg002:0423j seg002:0435j ...
		mov	ax, [bp-4]
		pop	si
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2F08	proc far		; CODE XREF: sub_ADA2+F2P
					; sub_ADA2+237P ...

var_8		= word ptr -8
var_6		= word ptr -6
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	0Ah, 0
		mov	[bp+var_6], 0FFFFh
		cmp	word_1634C, 0
		jnz	short loc_2F1B
		jmp	loc_2FEB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_2F1B:				; CODE XREF: sub_2F08+Ej
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_2E30
		add	sp, 4
		or	ax, ax
		jl	short loc_2F2F
		jmp	loc_2FEB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_2F2F:				; CODE XREF: sub_2F08+22j
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_2BC2
		add	sp, 4
		sub	ah, ah
		mov	[bp+var_8], ax
		and	byte ptr [bp+var_8], 3Fh
		cmp	[bp+var_8], 8
		jl	short loc_2F51
		cmp	[bp+var_8], 10h
		jl	short loc_2F5D

loc_2F51:				; CODE XREF: sub_2F08+41j
		cmp	[bp+var_8], 10h
		jl	short loc_2F64
		cmp	[bp+var_8], 18h
		jge	short loc_2F64

loc_2F5D:				; CODE XREF: sub_2F08+47j
		mov	[bp+var_2], 1
		jmp	short loc_2F69
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_2F64:				; CODE XREF: sub_2F08+4Dj sub_2F08+53j
		mov	[bp+var_2], 0

loc_2F69:				; CODE XREF: sub_2F08+5Aj
		mov	al, byte ptr [bp+arg_0]
		and	ax, 3
		shl	ax, 2
		mov	cl, byte ptr [bp+arg_2]
		and	cx, 3
		add	ax, cx
		mov	cx, [bp+arg_2]
		sar	cx, 2
		mov	dx, cx
		shl	cx, 1
		add	cx, dx
		mov	dx, [bp+arg_0]
		sar	dx, 2
		add	cl, dl
		sub	cl, byte ptr [bp+var_2]
		add	cl, byte ptr word_1634C
		and	cx, 0Fh
		cmp	cx, ax
		jz	short loc_2FA3
		xor	cl, 0Ah
		cmp	cx, ax
		jnz	short loc_2FEB

loc_2FA3:				; CODE XREF: sub_2F08+92j
		push	[bp+arg_2]
		push	[bp+arg_0]
		call	sub_9BA2
		add	sp, 4
		mov	bx, ax
		shl	bx, 1
		mov	ax, [bx+4DEh]
		mov	[bp+var_6], ax
		or	ax, ax
		jnz	short loc_2FC5
		mov	[bp+var_6], 6

loc_2FC5:				; CODE XREF: sub_2F08+B6j
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_2BF6
		add	sp, 4
		test	al, 4
		jz	short loc_2FEB
		cmp	[bp+var_6], 0Ch
		jnz	short loc_2FE6
		mov	[bp+var_6], 0
		mov	ax, [bp+var_6]
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_2FE6:				; CODE XREF: sub_2F08+D2j
		mov	[bp+var_6], 0FFFFh

loc_2FEB:				; CODE XREF: sub_2F08+10j sub_2F08+24j ...
		mov	ax, [bp+var_6]
		leave
		retf
sub_2F08	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_2FF0	proc far		; CODE XREF: sub_ADA2+25DP

var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	8, 0
		mov	[bp+var_2], 0
		cmp	word_1634C, 0
		jz	short loc_3067
		push	[bp+arg_2]
		push	[bp+arg_0]
		call	sub_9BA2
		add	sp, 4
		cmp	ax, 19h
		jz	short loc_3067
		cmp	ax, 1Ah
		jz	short loc_3067
		cmp	ax, 18h
		jz	short loc_3067
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_2CB4
		add	sp, 4
		cbw
		or	ax, ax
		jge	short loc_3067
		mov	ax, [bp+arg_2]
		and	ax, 3
		mov	cx, [bp+arg_2]
		sar	cx, 2
		imul	cx, 13h
		mov	dx, [bp+arg_0]
		sar	dx, 2
		imul	dx, 11h
		add	cx, dx
		add	cx, word_1634C
		add	cx, 8
		and	cx, 1Fh
		mov	dl, byte ptr [bp+arg_0]
		and	dx, 3
		shl	dx, 2
loc_305C:
		sub	cx, dx
		cmp	cx, ax
		jnz	short loc_3067
		mov	[bp+var_2], 1

loc_3067:				; CODE XREF: sub_2FF0+Ej sub_2FF0+21j	...
		mov	ax, [bp+var_2]
		leave
		retf
sub_2FF0	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_306C	proc far		; CODE XREF: sub_A61E+7AP sub_A61E+F2P ...

arg_0		= byte ptr  6

		push	bp
		mov	bp, sp
		mov	al, [bp+arg_0]
		and	al, 1Fh
		sub	ah, ah
		mov	word ptr [bp+arg_0], ax
		mov	ax, word_1634A
		jmp	short loc_30AA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_307E:				; CODE XREF: sub_306C+40j
		cmp	word ptr [bp+arg_0], 18h
		jge	short loc_30B1
		cmp	word ptr [bp+arg_0], 8
		jl	short loc_30B1
		mov	al, [bp+arg_0]
		and	ax, 7
		or	al, 8
		mov	word ptr [bp+arg_0], ax
		mov	al, [bp+arg_0]
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_309A:				; CODE XREF: sub_306C:loc_30AFj
		cmp	word ptr [bp+arg_0], 18h
		jge	short loc_30B1
		and	word ptr [bp+arg_0], 7
		mov	al, [bp+arg_0]
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_30AA:				; CODE XREF: sub_306C+10j
		dec	ax
		dec	ax
		jz	short loc_307E
		dec	ax

loc_30AF:
		jz	short loc_309A

loc_30B1:				; CODE XREF: sub_306C+16j sub_306C+1Cj ...
		mov	al, [bp+arg_0]

locret_30B4:
		leave
		retf
sub_306C	endp

seg002		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg003		segment public 'CODE'
		assume cs:seg003
		;org 6
		assume es:nothing, ss:nothing, ds:dseg


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_30CE	proc far		; CODE XREF: sub_30F8:loc_3102p
					; sub_315C+Ap ...

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		cmp	[bp+arg_0], 11h
		jz	short loc_30DD
		cmp	[bp+arg_0], 9
		jnz	short loc_30E8

loc_30DD:				; CODE XREF: sub_30CE+7j
		mov	[bp+arg_0], 8
		mov	ax, [bp+arg_0]
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_30E8:				; CODE XREF: sub_30CE+Dj
		cmp	[bp+arg_0], 8
		jl	short loc_30F2
		sub	[bp+arg_0], 0Fh

loc_30F2:				; CODE XREF: sub_30CE+1Ej
		mov	ax, [bp+arg_0]
		leave
		retf
sub_30CE	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_30F8	proc far		; CODE XREF: sub_94E+1C7P sub_D9E+17P	...

var_C		= dword	ptr -0Ch
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= dword	ptr -4
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h

		enter	0Ch, 0
		push	di
		push	si
		push	[bp+arg_4]
		push	cs

loc_3102:				; çâ(r)-â(r) ¯à(r)áâ(r)¥,­¥â á¨¬¢.¨¬¥­¨
		call	near ptr sub_30CE
		add	sp, 2
		mov	[bp+arg_4], ax
		mov	bx, [bp+arg_6]
		mov	ax, [bp+arg_8]
		mov	dx, [bp+arg_A]
		call	sub_C910	; @buffer_pointer
		mov	word ptr [bp+var_4], ax
		mov	word ptr [bp+var_4+2], dx
		mov	bx, [bp+arg_6]
		mov	ax, [bx+2]
		mov	[bp+var_8], ax
		sub	ax, 10h
		mov	[bp+var_6], ax
		mov	ah, byte ptr [bp+arg_4]
		sub	al, al
		add	ax, [bp+arg_0]
		mov	dx, [bp+arg_2]
		mov	word ptr [bp+var_C], ax
		mov	word ptr [bp+var_C+2], dx
		push	ds

loc_3140:
		les	di, [bp+var_4]
		lds	si, [bp+var_C]
		mov	bx, 10h
		mov	dx, [bp+var_6]

loc_314C:				; CODE XREF: sub_30F8+5Cj
		mov	cx, 10h
		rep movsb
		add	di, dx
		dec	bx
		jnz	short loc_314C
		pop	ds
		pop	si
		pop	di
		leave
		retf
sub_30F8	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_315C	proc far		; CODE XREF: sub_AAE6+3BP

var_C		= dword	ptr -0Ch
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= dword	ptr -4
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h

		enter	0Ch, 0
		push	di
		push	si
		push	[bp+arg_4]
		push	cs
		call	near ptr sub_30CE
		add	sp, 2
		mov	[bp+arg_4], ax
		mov	bx, [bp+arg_6]
		mov	ax, [bp+arg_8]
		mov	dx, [bp+arg_A]
		call	sub_C910
		mov	word ptr [bp+var_4], ax
		mov	word ptr [bp+var_4+2], dx
		mov	bx, [bp+arg_6]
		mov	ax, [bx+2]
		mov	[bp+var_8], ax
		sub	ax, 10h
		mov	[bp+var_6], ax
		mov	ah, byte ptr [bp+arg_4]
		sub	al, al
		add	ax, [bp+arg_0]
		mov	dx, [bp+arg_2]
		mov	word ptr [bp+var_C], ax
		mov	word ptr [bp+var_C+2], dx
		push	ds
		les	di, [bp+var_4]
		lds	si, [bp+var_C]
		mov	bx, 10h
		mov	dx, [bp+var_6]

loc_31B0:				; CODE XREF: sub_315C+6Bj
		mov	cx, 10h

loc_31B3:				; CODE XREF: sub_315C+5Fj sub_315C+66j
		mov	al, es:[di]
		or	al, al
		jnz	short loc_31C0
		movsb
		loop	loc_31B3
		jmp	short loc_31C4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_31C0:				; CODE XREF: sub_315C+5Cj
		inc	di
		inc	si
		loop	loc_31B3

loc_31C4:				; CODE XREF: sub_315C+61j
		add	di, dx
		dec	bx
		jnz	short loc_31B0
		pop	ds
		pop	si
		pop	di
		leave
		retf
sub_315C	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_31CE	proc far		; CODE XREF: sub_AA22+5CP

var_1A		= dword	ptr -1Ah
var_16		= word ptr -16h
var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= dword	ptr -6
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h
arg_C		= byte ptr  12h

		enter	1Ah, 0
		push	di
		push	si
		push	[bp+arg_4]
		push	cs
		call	near ptr sub_30CE
		add	sp, 2
		mov	[bp+arg_4], ax
		mov	cl, [bp+arg_C]
		mov	ax, 10h
		sar	ax, cl
		mov	[bp+var_12], ax
		mov	[bp+var_14], ax
		mov	dx, 1
		shl	dx, cl
		mov	[bp+var_A], dx
		mov	bx, ax
		dec	ax
		neg	ax
		add	[bp+arg_A], ax
		mov	ax, dx
		mov	dx, bx
		sar	bx, 1
		sub	[bp+arg_8], bx
		mov	si, ax
		mov	bx, [bp+arg_6]
		mov	ax, [bp+arg_8]
		mov	di, dx
		mov	dx, [bp+arg_A]
		call	sub_C910
		mov	word ptr [bp+var_6], ax
		mov	word ptr [bp+var_6+2], dx
		mov	bx, [bp+arg_6]
		mov	ax, [bx+2]
		mov	[bp+var_E], ax
		sub	ax, di
		mov	[bp+var_C], ax
		mov	cl, [bp+arg_C]
		mov	ax, 10h
		shl	ax, cl
		mov	[bp+var_2], ax
		sar	si, 1
		mov	[bp+var_8], si
		shl	si, 4
		mov	[bp+var_16], si
		mov	ah, byte ptr [bp+arg_4]
		sub	al, al
		add	ax, [bp+arg_0]
		mov	dx, [bp+arg_2]
		mov	word ptr [bp+var_1A], ax
		mov	word ptr [bp+var_1A+2],	dx
		push	ds
		les	di, [bp+var_6]
		lds	si, [bp+var_1A]
		add	si, [bp+var_8]
		add	si, [bp+var_16]
		mov	bx, [bp+var_14]

loc_3265:				; CODE XREF: sub_31CE+AFj
		mov	[bp+var_10], si
		mov	cx, [bp+var_12]

loc_326B:				; CODE XREF: sub_31CE+A3j
		mov	al, [si]
		stosb
		add	si, [bp+var_A]
		loop	loc_326B
		mov	si, [bp+var_10]
		add	si, [bp+var_2]
		add	di, [bp+var_C]
		dec	bx
		jnz	short loc_3265
		pop	ds

loc_3280:
		pop	si
		pop	di
		leave
		retf
sub_31CE	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_3284	proc far		; CODE XREF: sub_AAE6+5CP

var_1A		= dword	ptr -1Ah
var_16		= word ptr -16h
var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= dword	ptr -6
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h
arg_C		= byte ptr  12h

		enter	1Ah, 0
		push	di
		push	si
		push	[bp+arg_4]
		push	cs
		call	near ptr sub_30CE
		add	sp, 2
		mov	[bp+arg_4], ax
		mov	cl, [bp+arg_C]
		mov	ax, 10h
		sar	ax, cl
		mov	[bp+var_12], ax
		mov	[bp+var_14], ax
		mov	dx, 1
		shl	dx, cl
		mov	[bp+var_A], dx
		mov	bx, ax
		dec	ax
		neg	ax
		add	[bp+arg_A], ax
		mov	ax, dx
		mov	dx, bx
		sar	bx, 1
		sub	[bp+arg_8], bx
		mov	si, ax
		mov	bx, [bp+arg_6]
		mov	ax, [bp+arg_8]
		mov	di, dx
		mov	dx, [bp+arg_A]
		call	sub_C910
		mov	word ptr [bp+var_6], ax
		mov	word ptr [bp+var_6+2], dx
		mov	bx, [bp+arg_6]
		mov	ax, [bx+2]
		mov	[bp+var_E], ax
		sub	ax, di
		mov	[bp+var_C], ax
		mov	cl, [bp+arg_C]
		mov	ax, 10h
		shl	ax, cl

loc_32EC:
		mov	[bp+var_2], ax
		sar	si, 1
		mov	[bp+var_8], si
		shl	si, 4
		mov	[bp+var_16], si
		mov	ah, byte ptr [bp+arg_4]
		sub	al, al
		add	ax, [bp+arg_0]
		mov	dx, [bp+arg_2]
		mov	word ptr [bp+var_1A], ax
		mov	word ptr [bp+var_1A+2],	dx
		push	ds
		les	di, [bp+var_6]
		lds	si, [bp+var_1A]
		add	si, [bp+var_8]
		add	si, [bp+var_16]
		mov	bx, [bp+var_14]

loc_331B:				; CODE XREF: sub_3284+BEj
		mov	[bp+var_10], si
		mov	cx, [bp+var_12]

loc_3321:				; CODE XREF: sub_3284+AAj sub_3284+B2j
		mov	al, es:[di]
		or	al, al
		jnz	short loc_3332
		mov	al, [si]
		stosb
		add	si, [bp+var_A]
		loop	loc_3321
		jmp	short loc_3338
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_3332:				; CODE XREF: sub_3284+A2j
		inc	si
		add	si, [bp+var_A]
		loop	loc_3321

loc_3338:				; CODE XREF: sub_3284+ACj
		mov	si, [bp+var_10]
		add	si, [bp+var_2]

loc_333E:
		add	di, [bp+var_C]
		dec	bx
		jnz	short loc_331B

loc_3344:
		pop	ds
		pop	si
		pop	di
		leave
		retf
sub_3284	endp

seg003		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg004		segment public 'CODE'
		assume cs:seg004
		;org 9
		assume es:nothing, ss:nothing, ds:dseg
		align 2



; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __cdecl far sub_3376(char	*)
sub_3376	proc far		; CODE XREF: seg007:01BEP sub_85E8+8P

arg_0		= word ptr  6

		push	bp		; ä-ï strings_store
		mov	bp, sp
		push	si

loc_337A:
		mov	si, [bp+arg_0]

loc_337D:
		mov	ax, [bp+8]
		push	ax
		push	si		; char *
		push	ds
		push	offset unk_1A872 ; void* strings_heap
		push	ax
		push	si		; char *
		call	_strlen_0
		add	sp, 4
		inc	ax
		cwd			; int

loc_3392:				; ä-ï @heap_get
		call	sub_F55A
		push	dx		; char *
		push	ax		; char *
		call	_strcpy_0
		add	sp, 8
		mov	ax, word_1BEB0	; num_strings
		inc	word_1BEB0
		pop	si
		leave
		retf
sub_3376	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_33AC	proc far		; CODE XREF: sub_842+1EP sub_842+51P ...

var_4		= dword	ptr -4
arg_0		= word ptr  6

		enter	4, 0
		push	di
		push	si
		mov	ax, word_1A874
		mov	dx, word_1A876
		mov	word ptr [bp+var_4], ax
		mov	word ptr [bp+var_4+2], dx
		les	di, [bp+var_4]
		mov	dx, [bp+arg_0]
		or	dx, dx
		jz	short loc_33D5
		xor	al, al

loc_33CB:				; CODE XREF: sub_33AC:loc_33D3j
		mov	cx, 0FFFFh
		repne scasb

loc_33D0:
		jnz	short loc_33D5
		dec	dx

loc_33D3:
		jnz	short loc_33CB

loc_33D5:				; CODE XREF: sub_33AC+1Bj
					; sub_33AC:loc_33D0j
		mov	dx, es
		mov	ax, di
		pop	si
		pop	di
		leave
		retf
sub_33AC	endp

seg004		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg005		segment public 'CODE'
		assume cs:seg005
		;org 0Dh
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall sub_33DE(int,int,__int32)
sub_33DE	proc near		; CODE XREF: sub_3420+78p sub_34A0+22p ...

arg_0		= dword	ptr  4

		push	bp
		mov	bp, sp
		push	si
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 84h	; '"'
		push	dx
		push	ax		; __int32
		push	bx		; char *
		mov	si, bx
		call	_strlen
		add	sp, 2
		inc	ax
		sub	dx, dx		; int
		call	sub_F55A	; @heap_get
		les	bx, [bp+arg_0]
		mov	es:[bx+6Ch], ax
		mov	es:[bx+6Eh], dx
		push	ds
		push	si		; char *
		push	dx		; char *
		push	word ptr es:[bx+6Ch] ; char *
		call	_strcpy_0
		add	sp, 8
		pop	si
		leave
		retn	4
sub_33DE	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_3420	proc near		; CODE XREF: sub_595E+B2p

var_16		= word ptr -16h
var_14		= byte ptr -14h
var_11		= byte ptr -11h
var_F		= byte ptr -0Fh
arg_0		= dword	ptr  4

		enter	16h, 0		; char *
		cmp	word_163CC, 7	; popup_indian
		jle	short loc_3458
		push	572h		; aKing
		lea	ax, [bp+var_14]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		mov	ax, 1
		mov	word_163DE, ax	; king_active
		mov	word_1ACEE, ax	; king_frame
		call	sub_D186	; @timer_read
		add	ax, 0F0h ; 'ğ'
		adc	dx, 0		; int
		mov	word_1ACF6, ax	; king_clock
		mov	word_1ACF8, dx	; king_clock+2
		jmp	short loc_348F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_3458:				; CODE XREF: sub_3420+9j
		push	word_1BCB4	; ¬ áá¨¢?
		push	word_163CC	; popup_indian
		call	nullsub_8	; pissed
		add	sp, 4
		push	ax
		call	nullsub_7	; piss_factor
		add	sp, 2
		mov	[bp+var_16], ax
		push	577h		; aInd0a0
		lea	ax, [bp+var_14]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		mov	al, byte ptr word_163CC	; popup_indian
		add	[bp+var_11], al
		mov	al, byte ptr [bp+var_16]
		add	[bp+var_F], al

loc_348F:				; CODE XREF: sub_3420+35j
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0] ; __int32
		lea	bx, [bp+var_14]
		call	sub_33DE
		leave
		retn	4
sub_3420	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_34A0	proc near		; CODE XREF: sub_595E+C2p

var_14		= byte ptr -14h
var_11		= byte ptr -11h
arg_0		= dword	ptr  4

		enter	14h, 0		; char *
		push	57Eh		; char *
		lea	ax, [bp+var_14]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		mov	al, byte ptr word_163CE
		add	[bp+var_11], al
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0] ; __int32
		lea	bx, [bp+var_14]
		call	sub_33DE
		leave
		retn	4
sub_34A0	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_34CA	proc near		; CODE XREF: sub_595E+D2p

var_14		= byte ptr -14h
var_11		= byte ptr -11h
arg_0		= dword	ptr  4

		enter	14h, 0		; char *
		push	583h		; char *
		lea	ax, [bp+var_14]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		mov	al, byte ptr word_163D0
		add	[bp+var_11], al
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0] ; __int32
		lea	bx, [bp+var_14]
		call	sub_33DE
		leave
		retn	4
sub_34CA	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall sub_34F4(int,int,__int32)
sub_34F4	proc near		; CODE XREF: sub_595E+DBp

var_8C		= word ptr -8Ch
var_8A		= dword	ptr -8Ah
var_86		= word ptr -86h
var_84		= dword	ptr -84h
var_80		= byte ptr -80h
var_30		= word ptr -30h
arg_0		= dword	ptr  4

		enter	8Ch, 0
		push	di
		push	si		; char *
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+6Eh]
		or	ax, es:[bx+6Ch]
		jnz	short loc_350A
		jmp	loc_3714
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_350A:				; CODE XREF: sub_34F4+11j
		cmp	word_163CC, 7	; popup_indian
		jle	short loc_3516
		mov	ax, 1
		jmp	short loc_3518
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_3516:				; CODE XREF: sub_34F4+1Bj
		sub	ax, ax

loc_3518:				; CODE XREF: sub_34F4+20j
		mov	[bp+var_86], ax
		mov	ax, bx
		mov	dx, es
		add	ax, 84h	; '"'
		push	dx
		push	ax		; __int32
		mov	si, ax
		mov	di, es
		mov	ax, 14h
		cwd			; int
		call	sub_F55A	; @heap_get
		les	bx, [bp+arg_0]
		mov	es:[bx+68h], ax
		mov	es:[bx+6Ah], dx
		mov	ax, es:[bx+68h]
		mov	word ptr [bp+var_84], ax
		mov	word ptr [bp+var_84+2],	dx
		mov	es, dx
		mov	bx, ax
		sub	ax, ax
		mov	es:[bx+12h], ax
		mov	es:[bx+10h], ax
		cmp	[bp+var_86], ax
		jz	short loc_357C
		push	di
		push	si		; __int32
		mov	ax, 14h
		cwd			; int
		call	sub_F55A	; @heap_get
		mov	word ptr [bp+var_8A], ax
		mov	word ptr [bp+var_8A+2],	dx
		les	bx, [bp+var_84]
		mov	es:[bx+10h], ax
		mov	es:[bx+12h], dx

loc_357C:				; CODE XREF: sub_34F4+67j
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+6Eh]
		push	word ptr es:[bx+6Ch] ; char *
		lea	ax, [bp+var_80]
		push	ss		; char *
		push	ax		; char *
		call	_strcpy_0
		add	sp, 8
		mov	ax, word_19AD4	; cycling_active
		mov	[bp+var_8C], ax
		mov	word_19AD4, 0
		push	1
		call	nullsub_10	; cycle_save
		add	sp, 2
		push	30h ; '0'       ; size_t
		push	0A000h		; (r)¡" áâì ¯ "¨âà(r)¢.âà(r)¥ª?
		push	0FC00h		; size_t
		lea	ax, [bp+var_30]
		push	ss		; void *
		push	ax		; void *
		call	_memcpy
		add	sp, 0Ah
		mov	word_19950, 0FC00h ; put_palette
		mov	word_19952, 0A000h
		lea	bx, [bp+var_80]
		sub	ax, ax
		call	sub_DDB8	; @sprite_series_load
		les	bx, [bp+var_84]
		mov	es:[bx+0Ch], ax
		mov	es:[bx+0Eh], dx
		mov	ax, dx
		or	ax, es:[bx+0Ch]
		jnz	short loc_360B
		call	nullsub_1	; reset_sprite_memory
		mov	word_163E0, 1	; sprite_tight
		lea	bx, [bp+var_80]
		sub	ax, ax
		call	nullsub_6	; @sprite_load
		les	bx, [bp+var_84]
		mov	es:[bx+0Ch], ax
		mov	es:[bx+0Eh], dx

loc_360B:				; CODE XREF: sub_34F4+F4j
		push	30h ; '0'       ; size_t
		lea	ax, [bp+var_30]
		push	ss
		push	ax		; size_t
		push	0A000h		; void *
		push	0FC00h		; void *
		call	_memcpy
		add	sp, 0Ah
		sub	ax, ax
		mov	word_19952, ax
		mov	word_19950, ax	; put_palette
		les	bx, [bp+var_84]
		mov	ax, es:[bx+0Eh]
		or	ax, es:[bx+0Ch]
		jnz	short loc_3646
		les	bx, [bp+arg_0]
		sub	ax, ax
		mov	es:[bx+6Ah], ax
		mov	es:[bx+68h], ax
		jmp	loc_3705
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_3646:				; CODE XREF: sub_34F4+140j
		cmp	[bp+var_86], 0
		jz	short loc_36B6
		push	588h		; "2" -a2
		lea	ax, [bp+var_80]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		cmp	word_163E0, 0	; sprite_tight
		jnz	short loc_3679
		lea	bx, [bp+var_80]
		sub	ax, ax
		call	sub_DDB8	; @sprite_series_load
		les	bx, [bp+var_8A]
		mov	es:[bx+0Ch], ax
		mov	es:[bx+0Eh], dx

loc_3679:				; CODE XREF: sub_34F4+16Dj
		les	bx, [bp+var_8A]
		mov	ax, es:[bx+0Eh]
		or	ax, es:[bx+0Ch]
		jnz	short loc_3699
		cmp	word_163E0, 0	; sprite_tight
		jnz	short loc_3699
		mov	word_163E0, 2
		call	nullsub_1	; reset_sprite_memory

loc_3699:				; CODE XREF: sub_34F4+191j
					; sub_34F4+198j
		cmp	word_163E0, 0	; sprite_tight
		jz	short loc_36B6
		lea	bx, [bp+var_80]
		sub	ax, ax
		call	nullsub_6	; @sptite_load
		les	bx, [bp+var_8A]
		mov	es:[bx+0Ch], ax
		mov	es:[bx+0Eh], dx

loc_36B6:				; CODE XREF: sub_34F4+157j
					; sub_34F4+1AAj
		push	0
		call	nullsub_10	; cycle_save
		add	sp, 2
		cmp	[bp+var_86], 0
		jz	short loc_36FA
		les	bx, [bp+var_8A]
		mov	ax, es:[bx+0Eh]
		or	ax, es:[bx+0Ch]
		jnz	short loc_36FA
		cmp	word_163E0, 1
		jz	short loc_36ED
		les	bx, [bp+var_84]
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch]
		call	sub_CFA0	; @mem_free

loc_36ED:				; CODE XREF: sub_34F4+1E6j
		les	bx, [bp+arg_0]
		sub	ax, ax
		mov	es:[bx+6Ah], ax
		mov	es:[bx+68h], ax

loc_36FA:				; CODE XREF: sub_34F4+1D1j
					; sub_34F4+1DFj
		push	0A000h
		push	0FC00h
		call	sub_D70A	; @mcga_setpal

loc_3705:				; CODE XREF: sub_34F4+14Fj
		sub	ax, ax
		mov	word_19952, ax
		mov	word_19950, ax	; put_palette
		mov	ax, [bp+var_8C]
		mov	word_19AD4, ax	; cycling_active

loc_3714:				; CODE XREF: sub_34F4+13j
		pop	si
		pop	di
		leave
		retn	4
sub_34F4	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_371A	proc near		; CODE XREF: sub_4F5A+97p
					; sub_4F5A+124p ...

var_2		= word ptr -2
arg_6		= byte ptr  0Ah
arg_A		= word ptr  0Eh
arg_C		= word ptr  10h
arg_E		= word ptr  12h
arg_10		= word ptr  14h
arg_12		= word ptr  16h
arg_14		= word ptr  18h
arg_16		= word ptr  1Ah

		push	bp
		mov	bp, sp
		push	ax
		cmp	word_163DC, 0
		jz	short loc_378E
		cmp	[bp+arg_6], 7
		jnz	short loc_378E
		cmp	word_163FA, 0
		jz	short loc_375A
		push	word_19972
		push	word_19970
		push	word_1996E
		push	word_1996C
		push	[bp+arg_16]
		push	[bp+arg_14]
		push	[bp+arg_12]
		push	[bp+arg_10]
		push	[bp+arg_E]
		call	sub_C4C0
		leave
		retn	18h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_375A:				; CODE XREF: sub_371A+16j
		push	[bp+arg_A]
		push	[bp+arg_C]
		push	[bp+arg_E]
		push	bx
		push	dx
		push	ax
		mov	bx, word_163DC
		push	word ptr [bx+6]
		push	word ptr [bx+4]
		push	word ptr [bx+2]
		push	word ptr [bx]
		push	[bp+arg_16]
		push	[bp+arg_14]
		push	[bp+arg_12]
		push	[bp+arg_10]
		call	sub_CB90
		add	sp, 1Ch
		leave
		retn	18h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_378E:				; CODE XREF: sub_371A+9j sub_371A+Fj
		push	[bp+arg_16]
		push	[bp+arg_14]
		push	[bp+arg_12]
		push	[bp+arg_10]
		push	[bp+arg_E]
		mov	al, [bp+arg_6]
		push	ax
		mov	ax, [bp+var_2]
		call	sub_C5B4
		leave
		retn	18h
sub_371A	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __cdecl far sub_37AE(int,char *)
sub_37AE	proc far		; CODE XREF: seg005:040Dp seg005:0435p

arg_0		= word ptr  6
arg_2		= dword	ptr  8

		push	bp
		mov	bp, sp
		push	word ptr [bp+arg_2+2]
		push	word ptr [bp+arg_2] ; char *
		mov	ax, [bp+arg_0]
		shl	ax, 6
		add	ax, 634Eh
		push	ds		; char *
		push	ax		; char *
		call	_strcpy_0
		leave
		retf
sub_37AE	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		push	word ptr [bp+8]
		call	sub_33AC
		mov	sp, bp
		push	dx
		push	ax
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_37AE
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	50h, 0
		mov	byte ptr [bp-50h], 0
		lea	ax, [bp-50h]
		push	ax
		push	word ptr [bp+8]
		push	word ptr [bp+0Ah]
		call	nullsub_9
		add	sp, 6
		lea	ax, [bp-50h]
		push	ss
		push	ax
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_37AE
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		mov	ax, [bp+8]
		mov	dx, [bp+0Ah]
		mov	bx, [bp+6]
		shl	bx, 2
		mov	[bx+698Ah], ax
		mov	[bx+698Ch], dx
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_3824	proc far		; CODE XREF: sub_3AAE+17Ep

arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h
arg_C		= word ptr  12h
arg_E		= word ptr  14h
arg_10		= word ptr  16h
arg_12		= word ptr  18h

		push	bp		; ­¥â á¨¬¢.¨¬¥­¨
		mov	bp, sp		; § ¯(r)"­ï¥â ¯à¥ ""(r)ª¨à(r)¢ ­­. 16	¡ (c)â(r)¢
		mov	ax, [bp+arg_8]
		les	bx, [bp+arg_0]
		mov	es:[bx], ax
		mov	ax, [bp+arg_A]
		mov	es:[bx+2], ax
		mov	ax, [bp+arg_C]
		mov	es:[bx+4], ax
		mov	ax, [bp+arg_E]
		mov	es:[bx+6], ax
		mov	ax, [bp+arg_10]
		mov	es:[bx+8], ax
		mov	ax, [bp+arg_12]
		mov	es:[bx+0Ah], ax
		mov	ax, [bp+arg_4]
		mov	dx, [bp+arg_6]
		mov	es:[bx+0Ch], ax
		mov	es:[bx+0Eh], dx
		leave
		retf
sub_3824	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __stdcall	sub_3864(char *,__int32)
sub_3864	proc near		; CODE XREF: sub_3DDE+18Fp
					; sub_4122+10Bp ...

var_54		= word ptr -54h
var_52		= word ptr -52h
arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		enter	54h, 0		; char *
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0] ; char *
		lea	ax, [bp-50h]
		push	ss		; char *
		push	ax		; char *
		call	_strcpy_0
		add	sp, 8
		lea	ax, [bp-50h]

loc_387E:
		mov	[bp+var_52], ax
		jmp	short loc_38AD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_3884:				; CODE XREF: sub_3864+4Fj
		mov	al, [bx]
		sub	ah, ah
		push	ax		; int
		push	58Ch		; char *
		call	_strchr
		add	sp, 4
		or	ax, ax
		jz	short loc_38AA
		mov	ax, [bp+var_52]
		inc	ax
		push	ax		; char *
		push	[bp+var_52]	; char *
		call	_strcpy
		add	sp, 4
		jmp	short loc_38AD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_38AA:				; CODE XREF: sub_3864+32j
		inc	[bp+var_52]

loc_38AD:				; CODE XREF: sub_3864+1Dj sub_3864+44j
		mov	bx, [bp+var_52]
		cmp	byte ptr [bx], 0
		jnz	short loc_3884
		les	bx, [bp+arg_4]
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch]
		lea	ax, [bp-50h]
		push	ss
		push	ax
		mov	ax, es:[bx]
		call	sub_D6C2
		mov	[bp+var_54], ax
		leave
		retn	8
sub_3864	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_38D4	proc near		; CODE XREF: sub_3916+1Dp sub_3916+98p ...

arg_0		= dword	ptr  4

		push	bp
		mov	bp, sp
		or	ax, ax
		jz	short loc_38E8
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+0Ah]
		mov	dx, es:[bx+4]
		jmp	short loc_3905
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_38E8:				; CODE XREF: sub_38D4+5j
		or	dx, dx
		jz	short loc_38FA
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+0Ah]
		mov	dx, es:[bx+6]
		jmp	short loc_3905
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_38FA:				; CODE XREF: sub_38D4+16j
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+0Ah]
		mov	dx, es:[bx+2]

loc_3905:				; CODE XREF: sub_38D4+12j sub_38D4+23j
		mov	bx, es:[bx+8]
		mov	ax, 0FFFFh
		call	sub_D6A6	; @font_set_colors,¯à¨­¨¬ ¥â ¢á¥ 4 à¥£¨áâà  ª ª	 à£-âë ¨ (r)¤¨­  à£-â-¡ (c)â
		leave
		retn	4
sub_38D4	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_3916	proc near		; CODE XREF: sub_454A+24p
					; sub_4F5A+1D1p ...

var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_8		= dword	ptr -8
var_4		= word ptr -4
var_2		= byte ptr -2
arg_0		= word ptr  4
arg_2		= word ptr  6
arg_4		= dword	ptr  8

		enter	8, 0
		push	bx
		push	dx
		push	ax		; íâ(r) ­¥  à£-âë	sub_38D4
		mov	byte ptr [bp-1], 0
		push	word ptr [bp+arg_4+2]
		push	word ptr [bp+arg_4]
		mov	ax, bx
		and	ax, 1
		mov	[bp+var_4], ax
		mov	dx, word_163D2	; popup_hiliting
		call	sub_38D4	; ­¥â á¨¬¢.¨¬¥­¨,¢ë§ë¢ ¥âáï 3¦¤ë â(r)"ìª(r)	¨§ íâ(r)(c)	ä-¨¨
		mov	ax, [bp+arg_0]
		mov	dx, [bp+arg_2]
		mov	word ptr [bp+var_8], ax
		mov	word ptr [bp+var_8+2], dx

loc_3942:				; CODE XREF: sub_3916+E1j
		les	bx, [bp+var_8]
		cmp	byte ptr es:[bx], 0
		jnz	short loc_394E
		jmp	loc_3A18
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_394E:				; CODE XREF: sub_3916+33j
		mov	al, es:[bx]
		cbw
		sub	ax, 7Bh	; '{'
		jnz	short loc_395A
		jmp	loc_39FA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_395A:				; CODE XREF: sub_3916+3Fj
		dec	ax
		jnz	short loc_3960
		jmp	loc_3A18
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_3960:				; CODE XREF: sub_3916+45j
		dec	ax
		jnz	short loc_3966
		jmp	loc_3A06
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_3966:				; CODE XREF: sub_3916+4Bj
		dec	ax
		jz	short loc_399C
		mov	al, es:[bx]
		mov	[bp+var_2], al
		les	bx, [bp+arg_4]
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch] ; __int32
		lea	ax, [bp+var_2]
		push	ss		; __int32
		push	ax		; char *
		push	word ptr es:[bx] ; int
		lea	bx, word_19964	; scr_work
		mov	ax, [bp+var_E]
		mov	dx, [bp+var_C]
		call	sub_D538	; @font_write
		les	bx, [bp+arg_4]
		add	ax, es:[bx]
		mov	[bp+var_E], ax
		jmp	short loc_39F4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_399C:				; CODE XREF: sub_3916+51j
		push	word ptr [bp+arg_4+2]
		push	word ptr [bp+arg_4]
		cmp	word_163D2, 1	; popup_hiliting
		sbb	dx, dx
		neg	dx
		mov	ax, [bp+var_4]
		call	sub_38D4
		inc	word ptr [bp+var_8]
		les	bx, [bp+var_8]
		mov	al, es:[bx]
		mov	[bp+var_2], al
		les	bx, [bp+arg_4]
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch] ; __int32
		lea	ax, [bp+var_2]
		push	ss		; __int32
		push	ax		; char *
		push	word ptr es:[bx] ; int
		lea	bx, word_19964	; scr_work
		mov	ax, [bp+var_E]
		mov	dx, [bp+var_C]
		call	sub_D538	; @font_write
		les	bx, [bp+arg_4]
		add	ax, es:[bx]
		mov	[bp+var_E], ax
		push	es
		push	bx
		mov	ax, [bp+var_4]
		mov	dx, word_163D2	; popup_hiliting

loc_39F1:				; CODE XREF: sub_3916+FFj
		call	sub_38D4

loc_39F4:				; CODE XREF: sub_3916+84j
		inc	word ptr [bp+var_8]
		jmp	loc_3942
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_39FA:				; CODE XREF: sub_3916+41j
		push	word ptr [bp+arg_4+2]
		push	word ptr [bp+arg_4]
		mov	dx, 1
		jmp	short loc_3A0E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_3A06:				; CODE XREF: sub_3916+4Dj
		push	word ptr [bp+arg_4+2]
		push	word ptr [bp+arg_4]
		sub	dx, dx

loc_3A0E:				; CODE XREF: sub_3916+EDj
		mov	word_163D2, dx	; popup_hiliting
		mov	ax, [bp+var_4]
		jmp	short loc_39F1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_3A18:				; CODE XREF: sub_3916+35j sub_3916+47j
		mov	ax, [bp+var_E]
		leave
		retn	8
sub_3916	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __stdcall	sub_3A20(char *)
sub_3A20	proc near		; CODE XREF: sub_3DDE+172p

var_6		= dword	ptr -6
var_2		= word ptr -2
arg_0		= word ptr  4

		enter	0Ch, 0
		mov	[bp+var_2], 0
		push	7Eh ; '~'       ; int
		push	word ptr [bp+6]	; int
		push	[bp+arg_0]	; char *
		call	_strrchr
		add	sp, 6
		mov	word ptr [bp+var_6], ax
		mov	word ptr [bp+var_6+2], dx
		push	7Eh ; '~'       ; int
		push	word ptr [bp+6]	; int
		push	[bp+arg_0]	; char *
		call	_strchr_0
		add	sp, 6
		cmp	ax, word ptr [bp+var_6]
		jnz	short loc_3A59
		cmp	dx, word ptr [bp+var_6+2]
		jz	short loc_3A7A

loc_3A59:				; CODE XREF: sub_3A20+32j
		mov	es, dx
		mov	bx, ax
		cmp	byte ptr es:[bx+1], 46h	; 'F'
		jnz	short loc_3A7A
		les	bx, [bp+var_6]
		mov	bl, es:[bx+1]
		sub	bh, bh
		test	byte ptr [bx+45A9h], 4
		jz	short loc_3A7A
		lea	ax, [bx+10Ah]
		jmp	short loc_3AA3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_3A7A:				; CODE XREF: sub_3A20+37j sub_3A20+42j ...
		mov	ax, word ptr [bp+var_6+2]
		or	ax, word ptr [bp+var_6]
		jz	short loc_3AA6
		les	bx, [bp+var_6]
		mov	bl, es:[bx+1]
		sub	bh, bh
		test	byte ptr [bx+45A9h], 2
		jz	short loc_3A9A
		mov	ax, bx
		sub	ax, 20h	; ' '
		jmp	short loc_3AA3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_3A9A:				; CODE XREF: sub_3A20+70j
		mov	bx, word ptr [bp+var_6]
		mov	al, es:[bx+1]
		sub	ah, ah

loc_3AA3:				; CODE XREF: sub_3A20+58j sub_3A20+77j
		mov	[bp+var_2], ax

loc_3AA6:				; CODE XREF: sub_3A20+60j
		mov	ax, [bp+var_2]
		leave
		retn	4
sub_3A20	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_3AAE	proc far		; CODE XREF: sub_6682+4Ep

var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_8		= dword	ptr -8
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		enter	14h, 0		; ­¥â á¨¬¢.¨¬¥­¨
		sub	ax, ax
		mov	[bp+var_12], ax
		mov	[bp+var_14], ax
		mov	word_163DE, ax	; king_active
		mov	word_163E0, ax	; sprite_tight
		mov	ax, [bp+arg_0]
		add	ax, 96h	; '-'
		sub	dx, dx
		call	sub_CF72	; @mem_get
		mov	[bp+var_10], ax
		mov	[bp+var_E], dx
		or	dx, ax
		jnz	short loc_3ADA	; ¯ ¬ïâì ¡ë"  ¢ë¤¥"¥­ 
		jmp	loc_3C4D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_3ADA:				; CODE XREF: sub_3AAE+27j
		mov	dx, [bp+var_E]
		mov	word ptr [bp+var_8], ax
		mov	word ptr [bp+var_8+2], dx
		add	ax, 96h	; '-'
		mov	cx, word ptr [bp+var_8]
		mov	bx, dx
		add	cx, 84h	; '"'
		push	bx		; var_E
		push	cx		; var_8+84h â.¥. dx:[ax+84h],¢(r)§¢à éñ­­ë(c) @mem_get  ¤à¥á
		push	dx
		push	ax		; â.¥. dx:[ax+96h],¢(r)§¢à éñ­­ë(c)	@mem_get
		mov	ax, [bp+arg_0]
		cwd
		push	dx		; â.¥. dx:ax-à §¬¥à ªãç¨, DWORD
		push	ax
		mov	ax, 29h	; ')'
		call	sub_F4E0	; @heap_declare	-(r)¤¨­  áá¥¬¡"¥à
		les	bx, [bp+var_8]	;  ¤à¥á	¢(r)§¢à éñ­­(r)£(r) @mem_get'(r)¬
		sub	ax, ax
		mov	es:[bx+4Eh], ax
		mov	es:[bx+4Ch], ax

loc_3B0E:
		mov	es:[bx+52h], ax
		mov	es:[bx+50h], ax
		mov	ax, word_163C6	; popup_flags
		mov	es:[bx+0Ah], ax
		mov	ax, word_163C8	; popup_x
		mov	es:[bx+0Ch], ax
		mov	ax, word_163CA	; popup_y
		mov	es:[bx+0Eh], ax
		mov	ax, 0FFFFh
		mov	word_163C8, ax	; popup_x
		mov	word_163CA, ax	; popup_y
		mov	word ptr es:[bx+28h], 50h ; 'P'
		mov	ax, 4
		mov	es:[bx+22h], ax
		mov	es:[bx+32h], ax
		mov	ax, word_163AC	; popup_background_color_0
		mov	es:[bx+3Ch], ax
		mov	ax, word_163AE	; popup_background_color_1
		mov	es:[bx+3Eh], ax
		mov	ax, word_163B0	; popup_select_color_0
		mov	es:[bx+40h], ax
		mov	ax, word_163B2	; popup_select_color_1
		mov	es:[bx+42h], ax
		mov	ax, word_163B4	; popup_border_color
		mov	es:[bx+44h], ax
		mov	al, es:[bx+0Ah]
		and	ax, 10h		; ax=16dec. "¨¡(r) ­ã"î
		cmp	ax, 1
		sbb	cx, cx		; ¨§ ¬" ¤è¥£(r) ¡¨â  ¢ëç¨â ¥âáï ¡¨â ¯¥à¥­(r)á 
		and	cx, 3
		mov	es:[bx+46h], cx
		cmp	ax, 1
		sbb	ax, ax
		and	ax, 2
		mov	es:[bx+48h], ax
		sub	ax, ax
		mov	es:[bx+56h], ax
		mov	es:[bx+54h], ax
		mov	es:[bx+5Ah], ax
		mov	es:[bx+58h], ax
		mov	es:[bx+5Eh], ax

loc_3B9D:
		mov	es:[bx+5Ch], ax
		mov	es:[bx+62h], ax
		mov	es:[bx+60h], ax
		mov	es:[bx+72h], ax
		mov	es:[bx+70h], ax
		mov	es:[bx+66h], ax
		mov	es:[bx+64h], ax
		mov	es:[bx+6Ah], ax
		mov	es:[bx+68h], ax
		mov	es:[bx+6Eh], ax
		mov	es:[bx+6Ch], ax
		push	word_163C2	; popup_shadow_color
		push	word_163C0	; popup_enhance_color
		push	word_163BE	; popup_font_hilite_color
		push	word_163BC	; popup_font_grey_color
		push	word_163BA	; popup_font_main_color
		mov	es:[bx], ax
		mov	es:[bx+2], ax
		mov	es:[bx+4], ax
		mov	es:[bx+6], ax
		mov	es:[bx+8], ax
		mov	word_163C6, ax	; popup_flags
		mov	es:[bx+20h], ax
		mov	es:[bx+24h], ax
		mov	es:[bx+26h], ax
		mov	es:[bx+2Ah], ax
		mov	es:[bx+2Ch], ax
		mov	es:[bx+2Eh], ax
		mov	es:[bx+30h], ax
		mov	es:[bx+34h], ax
		mov	es:[bx+36h], ax
		mov	es:[bx+38h], ax
		mov	es:[bx+4Ah], ax
		push	ax
		push	[bp+arg_4]
		push	[bp+arg_2]
		lea	ax, [bx+74h]
		push	es
		push	ax
		push	cs
		call	near ptr sub_3824 ; ­¥â	á¨¬¢.¨¬¥­¨ -(r)¤¨­  áá¥¬¡"¥à
		add	sp, 14h
		cmp	word_1A830, 0	; mouse_driver
		jnz	short loc_3C41
		les	bx, [bp+var_8]
		or	byte ptr es:[bx+0Ah], 80h

loc_3C41:				; CODE XREF: sub_3AAE+189j
		mov	ax, word ptr [bp+var_8]
		mov	dx, word ptr [bp+var_8+2]
		mov	[bp+var_14], ax
		mov	[bp+var_12], dx

loc_3C4D:				; CODE XREF: sub_3AAE+29j
		mov	ax, [bp+var_E]
		or	ax, [bp+var_10]
		jz	short loc_3C70
		mov	ax, [bp+var_14]
		mov	dx, [bp+var_12]
		cmp	[bp+var_10], ax
		jnz	short loc_3C65
		cmp	[bp+var_E], dx
		jz	short loc_3C70

loc_3C65:				; CODE XREF: sub_3AAE+1B0j
		push	[bp+var_E]
		push	[bp+var_10]
		call	sub_CFA0	; @mem_free

loc_3C70:				; CODE XREF: sub_3AAE+1A5j
					; sub_3AAE+1B5j
		mov	ax, [bp+var_14]
		mov	dx, [bp+var_12]
		leave
		retf
sub_3AAE	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_3C78	proc far		; CODE XREF: seg005:0916p seg005:0946p ...

var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= dword	ptr -6
var_2		= word ptr -2
arg_0		= dword	ptr  6

		enter	0Ah, 0
		push	ax
		mov	[bp+var_2], 0
		sub	ax, ax
		mov	[bp+var_8], ax
		mov	[bp+var_A], ax
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+54h]
		mov	dx, es:[bx+56h]
		jmp	short loc_3CC2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_3C98:				; CODE XREF: sub_3C78+54j
		mov	ax, word ptr [bp+var_6+2]
		or	ax, word ptr [bp+var_6]
		jz	short loc_3CCE
		mov	ax, [bp+var_C]
		les	bx, [bp+var_6]
		cmp	es:[bx+4], ax
		jnz	short loc_3CBA
		mov	[bp+var_2], 1
		mov	[bp+var_A], bx
		mov	[bp+var_8], es
		jmp	short loc_3CC8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_3CBA:				; CODE XREF: sub_3C78+32j
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]

loc_3CC2:				; CODE XREF: sub_3C78+1Dj
		mov	word ptr [bp+var_6], ax
		mov	word ptr [bp+var_6+2], dx

loc_3CC8:				; CODE XREF: sub_3C78+3Fj
		cmp	[bp+var_2], 0
		jz	short loc_3C98

loc_3CCE:				; CODE XREF: sub_3C78+26j
		mov	ax, [bp+var_A]
		mov	dx, [bp+var_8]
		leave
		retf	4
sub_3C78	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	4, 0
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		mov	ax, [bp+0Ah]
		push	cs
		call	near ptr sub_3C78
		mov	[bp-4],	ax
		mov	[bp-2],	dx
		cmp	word ptr [bp+0Ch], 0
		jz	short loc_3CFE
		les	bx, [bp-4]
		or	byte ptr es:[bx], 1
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_3CFE:				; CODE XREF: seg005:0923j
		les	bx, [bp-4]
		and	byte ptr es:[bx], 0FEh
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	4, 0
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		mov	ax, [bp+0Ah]
		push	cs
		call	near ptr sub_3C78
		mov	[bp-4],	ax
		mov	[bp-2],	dx
		cmp	word ptr [bp+0Ch], 0
		jz	short loc_3D2E
		les	bx, [bp-4]
		or	byte ptr es:[bx], 2
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_3D2E:				; CODE XREF: seg005:0953j
		les	bx, [bp-4]
		and	byte ptr es:[bx], 0FDh
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	4, 0
		les	bx, [bp+6]
		mov	ax, es:[bx+54h]
		mov	dx, es:[bx+56h]

loc_3D47:				; CODE XREF: seg005:0993j
		mov	[bp-4],	ax
		mov	[bp-2],	dx
		mov	ax, dx
		or	ax, [bp-4]
		jz	short locret_3D66
		les	bx, [bp-4]
		and	byte ptr es:[bx], 0FEh
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]
		jmp	short loc_3D47
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

locret_3D66:				; CODE XREF: seg005:0982j
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_3D68	proc far		; CODE XREF: sub_595E+AC3p

var_6		= dword	ptr -6
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		enter	6, 0
		mov	[bp+var_2], 0
		push	[bp+arg_2]
		push	[bp+arg_0]
		mov	ax, [bp+arg_4]
		push	cs
		call	near ptr sub_3C78
		mov	word ptr [bp+var_6], ax
		mov	word ptr [bp+var_6+2], dx
		or	dx, ax
		jz	short loc_3D92
		les	bx, [bp+var_6]
		mov	ax, es:[bx+6]
		mov	[bp+var_2], ax

loc_3D92:				; CODE XREF: sub_3D68+1Ej
		mov	ax, [bp+var_2]
		leave
		retf
sub_3D68	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_3D98	proc far		; CODE XREF: sub_595E+75p

var_4		= dword	ptr -4
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		enter	4, 0
		push	[bp+arg_2]
		push	[bp+arg_0]
		mov	ax, [bp+arg_4]
		push	cs
		call	near ptr sub_3C78
		mov	word ptr [bp+var_4], ax
		mov	word ptr [bp+var_4+2], dx
		or	dx, ax
		jz	short locret_3DBD
		mov	ax, [bp+arg_6]
		les	bx, [bp+var_4]
		mov	es:[bx+6], ax

locret_3DBD:				; CODE XREF: sub_3D98+19j
		leave
		retf
sub_3D98	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		mov	ax, [bp+0Ah]
		push	cs
		call	near ptr sub_3C78
		les	bx, [bp+6]
		mov	es:[bx+4Ch], ax
		mov	es:[bx+4Eh], dx
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_3DDE(int,int,__int32,char *,int)
sub_3DDE	proc far		; CODE XREF: sub_56A+114P sub_56A+13FP ...

var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
var_18		= word ptr -18h
var_16		= byte ptr -16h
var_2		= word ptr -2
arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_8		= word ptr  0Eh

		enter	20h, 0
		push	si		; char *
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+54h]
		mov	dx, es:[bx+56h]
		mov	word ptr [bp+var_20], ax
		mov	word ptr [bp+var_20+2],	dx
		sub	ax, ax
		mov	word ptr [bp+var_1C+2],	ax
		mov	word ptr [bp+var_1C], ax

loc_3DFC:				; CODE XREF: sub_3DDE+40j
		mov	ax, dx
		or	ax, word ptr [bp+var_20]
		jz	short loc_3E20
		mov	ax, word ptr [bp+var_20]
		mov	word ptr [bp+var_1C], ax
		mov	word ptr [bp+var_1C+2],	dx
		mov	es, dx
		mov	bx, ax
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]
		mov	word ptr [bp+var_20], ax
		mov	word ptr [bp+var_20+2],	dx
		jmp	short loc_3DFC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_3E20:				; CODE XREF: sub_3DDE+23j
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 84h	; '"'
		push	dx
		push	ax		; __int32
		mov	ax, 18h
		cwd			; int
		call	sub_F55A
		mov	word ptr [bp+var_20], ax
		mov	word ptr [bp+var_20+2],	dx
		mov	ax, word ptr [bp+var_1C+2]
		or	ax, word ptr [bp+var_1C]
		jz	short loc_3E64
		les	bx, [bp+var_20]
		mov	ax, es
		les	si, [bp+var_1C]
		mov	es:[si+10h], bx
		mov	es:[si+12h], ax
		mov	es, ax
		mov	ax, word ptr [bp+var_1C]
		mov	dx, word ptr [bp+var_1C+2]
		mov	es:[bx+14h], ax
		mov	es:[bx+16h], dx
		jmp	short loc_3E88
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_3E64:				; CODE XREF: sub_3DDE+62j
		mov	ax, word ptr [bp+var_20]
		les	bx, [bp+arg_0]
		mov	es:[bx+54h], ax
		mov	es:[bx+56h], dx
		mov	es:[bx+4Ch], ax
		mov	es:[bx+4Eh], dx
		mov	es, dx
		mov	bx, ax
		sub	ax, ax
		mov	es:[bx+16h], ax
		mov	es:[bx+14h], ax

loc_3E88:				; CODE XREF: sub_3DDE+84j
		mov	ax, word ptr [bp+var_20]
		mov	dx, word ptr [bp+var_20+2]
		les	bx, [bp+arg_0]
		mov	es:[bx+70h], ax
		mov	es:[bx+72h], dx
		test	byte ptr es:[bx+0Ah], 4
		jz	short loc_3EB6
		mov	[bp+var_18], 3
		push	591h		; char *
		lea	ax, [bp+var_16]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		jmp	short loc_3EBF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_3EB6:				; CODE XREF: sub_3DDE+C0j
		mov	[bp+var_18], 0
		mov	[bp+var_16], 0

loc_3EBF:				; CODE XREF: sub_3DDE+D6j
		les	bx, [bp+var_20]
		sub	ax, ax
		mov	es:[bx+12h], ax
		mov	es:[bx+10h], ax
		mov	es:[bx], ax
		mov	es:[bx+6], ax
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 84h	; '"'
		push	dx
		push	ax		; __int32
		push	word ptr [bp+0Ch]
		push	[bp+arg_4]	; char *
		call	_strlen_0
		add	sp, 4
		add	ax, [bp+var_18]
		inc	ax
		sub	dx, dx		; int
		call	sub_F55A
		les	bx, [bp+var_20]
		mov	es:[bx+8], ax
		mov	es:[bx+0Ah], dx
		lea	ax, [bp+var_16]
		push	ss
		push	ax		; char *
		push	word ptr es:[bx+0Ah] ; char *
		push	word ptr es:[bx+8] ; char *
		call	_strcpy_0
		add	sp, 8
		push	word ptr [bp+0Ch]
		push	[bp+arg_4]	; char *
		les	bx, [bp+var_20]
		push	word ptr es:[bx+0Ah] ; char *
		push	word ptr es:[bx+8] ; char *
		call	_strcat_0
		add	sp, 8
		les	bx, dword ptr [bp+arg_4]
		cmp	byte ptr es:[bx], 0
		jnz	short loc_3F40
		les	bx, [bp+var_20]
		or	byte ptr es:[bx], 1

loc_3F40:				; CODE XREF: sub_3DDE+159j
		mov	ax, [bp+arg_8]
		les	bx, [bp+var_20]
		mov	es:[bx+4], ax
		push	word ptr [bp+0Ch]
		push	[bp+arg_4]	; char *
		call	sub_3A20
		les	bx, [bp+var_20]
		mov	es:[bx+2], ax
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 74h	; 't'
		push	dx
		push	ax		; __int32
		push	word ptr es:[bx+0Ah] ; __int32
		push	word ptr es:[bx+8] ; char *
		call	sub_3864
		mov	[bp+var_2], ax
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+48h]
		shl	ax, 1
		add	ax, es:[bx+22h]
		add	[bp+var_2], ax
		push	7Ch ; '|'       ; int
		les	si, [bp+var_20]
		push	word ptr es:[si+0Ah] ; int
		push	word ptr es:[si+8] ; char *
		call	_strchr_0
		add	sp, 6
		or	dx, ax
		jz	short loc_3FA6
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+22h]
		add	[bp+var_2], ax

loc_3FA6:				; CODE XREF: sub_3DDE+1BCj
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+20h]
		cmp	ax, [bp+var_2]
		jge	short loc_3FB5
		mov	ax, [bp+var_2]

loc_3FB5:				; CODE XREF: sub_3DDE+1D2j
		mov	es:[bx+20h], ax
		inc	word ptr es:[bx+2]
		mov	ax, word ptr [bp+var_20]
		mov	dx, word ptr [bp+var_20+2]
		pop	si
		leave
		retf
sub_3DDE	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	4, 0
		les	bx, [bp+6]
		or	byte ptr es:[bx+0Ah], 5
		push	word ptr [bp+0Eh]
		push	word ptr [bp+0Ch]
		push	word ptr [bp+0Ah]
		push	es
		push	bx
		push	cs
		call	near ptr sub_3DDE
		add	sp, 0Ah
		mov	[bp-4],	ax
		mov	[bp-2],	dx
		or	dx, ax
		jz	short loc_3FF8
		mov	ax, [bp+10h]
		les	bx, [bp-4]
		mov	es:[bx+6], ax

loc_3FF8:				; CODE XREF: seg005:0C1Cj
		mov	ax, [bp-4]
		mov	dx, [bp-2]
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_4000	proc far		; CODE XREF: sub_6682+202p

arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah

		push	bp
		mov	bp, sp
		mov	ax, [bp+arg_4]
		les	bx, [bp+arg_0]
		mov	es:[bx+28h], ax
		leave
		retf
sub_4000	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __cdecl far sub_4010(__int32,char	*)
sub_4010	proc far		; CODE XREF: sub_6682+338p

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah

		enter	8, 0
		push	si
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+58h]
		mov	dx, es:[bx+5Ah]
		mov	word ptr [bp+var_8], ax
		mov	word ptr [bp+var_8+2], dx
		sub	ax, ax
		mov	word ptr [bp+var_4+2], ax
		mov	word ptr [bp+var_4], ax

loc_402E:				; CODE XREF: sub_4010+40j
		mov	ax, dx
		or	ax, word ptr [bp+var_8]
		jz	short loc_4052
		mov	ax, word ptr [bp+var_8]
		mov	word ptr [bp+var_4], ax
		mov	word ptr [bp+var_4+2], dx
		mov	es, dx
		mov	bx, ax
		mov	ax, es:[bx+6]
		mov	dx, es:[bx+8]
		mov	word ptr [bp+var_8], ax
		mov	word ptr [bp+var_8+2], dx
		jmp	short loc_402E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4052:				; CODE XREF: sub_4010+23j
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 84h	; '"'
		push	dx
		push	ax		; __int32
		mov	ax, 0Ah
		cwd			; int
		call	sub_F55A
		mov	word ptr [bp+var_8], ax
		mov	word ptr [bp+var_8+2], dx
		mov	ax, word ptr [bp+var_4+2]
		or	ax, word ptr [bp+var_4]
		jz	short loc_4084
		mov	ax, word ptr [bp+var_8]
		les	bx, [bp+var_4]
		mov	es:[bx+6], ax
		mov	es:[bx+8], dx
		jmp	short loc_4092
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4084:				; CODE XREF: sub_4010+62j
		mov	ax, word ptr [bp+var_8]
		les	bx, [bp+arg_0]
		mov	es:[bx+58h], ax
		mov	es:[bx+5Ah], dx

loc_4092:				; CODE XREF: sub_4010+72j
		les	bx, [bp+var_8]
		sub	ax, ax
		mov	es:[bx+8], ax
		mov	es:[bx+6], ax
		mov	es:[bx], ax
		les	si, dword ptr [bp+arg_4]
		cmp	byte ptr es:[si], 5Eh ;	'^'
		jnz	short loc_40D3
		inc	[bp+arg_4]
		mov	bx, [bp+arg_4]
		cmp	byte ptr es:[bx], 5Eh ;	'^'
		jnz	short loc_40CC
		les	si, [bp+var_8]
		mov	word ptr es:[si], 1
		mov	ax, [bp+arg_4]
		mov	dx, [bp+0Ch]
		inc	ax
		mov	[bp+arg_4], ax
		jmp	short loc_40D3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_40CC:				; CODE XREF: sub_4010+A5j
		les	bx, [bp+var_8]
		or	byte ptr es:[bx], 2

loc_40D3:				; CODE XREF: sub_4010+99j sub_4010+B9j
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 84h	; '"'
		push	dx
		push	ax		; __int32
		push	word ptr [bp+0Ch]
		push	[bp+arg_4]	; char *
		call	_strlen_0
		add	sp, 4
		inc	ax
		sub	dx, dx		; int
		call	sub_F55A
		les	bx, [bp+var_8]
		mov	es:[bx+2], ax
		mov	es:[bx+4], dx
		push	word ptr [bp+0Ch]
		push	[bp+arg_4]	; char *
		push	dx		; char *
		push	word ptr es:[bx+2] ; char *
		call	_strcpy_0
		add	sp, 8
		les	bx, [bp+arg_0]
		inc	word ptr es:[bx+4]
		mov	ax, word ptr [bp+var_8]
		mov	dx, word ptr [bp+var_8+2]
		pop	si
		leave
		retf
sub_4010	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __cdecl far sub_4122(__int32,char	*,char *,size_t)
sub_4122	proc far		; CODE XREF: sub_6682+37Cp

var_E		= dword	ptr -0Eh
var_A		= dword	ptr -0Ah
var_6		= dword	ptr -6
arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_8		= word ptr  0Eh
arg_C		= word ptr  12h

		enter	0Eh, 0
		push	di
		push	si
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+60h]
		mov	dx, es:[bx+62h]
		mov	word ptr [bp+var_6], ax
		mov	word ptr [bp+var_6+2], dx
		sub	ax, ax
		mov	word ptr [bp+var_A+2], ax
		mov	word ptr [bp+var_A], ax

loc_4141:				; CODE XREF: sub_4122+41j
		mov	ax, dx
		or	ax, word ptr [bp+var_6]
		jz	short loc_4166
		mov	ax, word ptr [bp+var_6]
		mov	word ptr [bp+var_A], ax
		mov	word ptr [bp+var_A+2], dx
		mov	es, dx
		mov	bx, ax
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]
		mov	word ptr [bp+var_6], ax
		mov	word ptr [bp+var_6+2], dx
		jmp	short loc_4141
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_4166:				; CODE XREF: sub_4122+24j
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 84h	; '"'
		push	dx
		push	ax		; __int32
		mov	ax, 14h
		cwd			; int
		call	sub_F55A
		mov	word ptr [bp+var_6], ax
		mov	word ptr [bp+var_6+2], dx
		mov	ax, word ptr [bp+var_A+2]
		or	ax, word ptr [bp+var_A]
		jz	short loc_4198
		mov	ax, word ptr [bp+var_6]
		les	bx, [bp+var_A]
		mov	es:[bx+10h], ax
		mov	es:[bx+12h], dx
		jmp	short loc_41A6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4198:				; CODE XREF: sub_4122+64j
		mov	ax, word ptr [bp+var_6]
		les	bx, [bp+arg_0]
		mov	es:[bx+60h], ax
		mov	es:[bx+62h], dx

loc_41A6:				; CODE XREF: sub_4122+74j
		les	bx, [bp+var_6]
		sub	ax, ax
		mov	es:[bx+12h], ax
		mov	es:[bx+10h], ax
		mov	es:[bx], ax
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 84h	; '"'
		push	dx
		push	ax		; __int32
		push	word ptr [bp+0Ch]
		push	[bp+arg_4]	; char *
		mov	si, ax
		mov	di, dx
		call	_strlen_0
		add	sp, 4
		inc	ax
		inc	ax
		sub	dx, dx		; int
		call	sub_F55A
		les	bx, [bp+var_6]
		mov	es:[bx+8], ax
		mov	es:[bx+0Ah], dx
		push	word ptr [bp+0Ch]
		push	[bp+arg_4]	; char *
		push	dx		; char *
		push	word ptr es:[bx+8] ; char *
		call	_strcpy_0
		add	sp, 8
		push	ds
		push	offset asc_16405 ; " "
		les	bx, [bp+var_6]
		push	word ptr es:[bx+0Ah] ; char *
		push	word ptr es:[bx+8] ; char *
		call	_strcat_0
		add	sp, 8
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 74h	; 't'
		push	dx
		push	ax		; __int32
		les	bx, [bp+var_6]
		push	word ptr es:[bx+0Ah] ; __int32
		push	word ptr es:[bx+8] ; char *
		mov	word ptr [bp+var_E], ax
		mov	word ptr [bp+var_E+2], dx
		call	sub_3864
		les	bx, [bp+var_6]
		mov	es:[bx+2], ax
		mov	ax, [bp+arg_C]
		mov	es:[bx+6], ax
		push	di
		push	si		; __int32
		inc	ax
		cwd			; int
		call	sub_F55A
		les	bx, [bp+var_6]
		mov	es:[bx+0Ch], ax
		mov	es:[bx+0Eh], dx
		push	word ptr [bp+var_E+2]
		push	word ptr [bp+var_E] ; __int32
		push	ds		; __int32
		push	offset aW	; "W"
		call	sub_3864
		imul	[bp+arg_C]
		les	bx, [bp+var_6]
		mov	es:[bx+4], ax
		mov	ax, es:[bx+2]
		add	ax, es:[bx+4]
		add	ax, 0Ah
		les	si, [bp+arg_0]
		cmp	ax, es:[si+34h]
		jge	short loc_4281
		mov	ax, es:[si+34h]

loc_4281:				; CODE XREF: sub_4122+159j
		mov	es:[si+34h], ax
		mov	ax, [bp+10h]
		or	ax, [bp+arg_8]
		jnz	short loc_429A
		les	bx, [bp+var_6]
		les	bx, es:[bx+0Ch]
		mov	byte ptr es:[bx], 0
		jmp	short loc_42E2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_429A:				; CODE XREF: sub_4122+169j
		push	[bp+arg_C]	; size_t
		push	word ptr [bp+10h]
		push	[bp+arg_8]	; size_t
		les	bx, [bp+var_6]
		push	word ptr es:[bx+0Eh] ; char *
		push	word ptr es:[bx+0Ch] ; char *
		call	_strncpy_0
		add	sp, 0Ah
		les	bx, [bp+var_6]
		les	bx, es:[bx+0Ch]
		mov	si, [bp+arg_C]
		mov	byte ptr es:[bx+si], 0
		les	bx, [bp+var_6]
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch] ; char *
		call	_strlen_0
		add	sp, 4
		or	ax, ax
		jz	short loc_42E2
		les	bx, [bp+var_6]
		or	byte ptr es:[bx], 80h

loc_42E2:				; CODE XREF: sub_4122+176j
					; sub_4122+1B7j
		les	bx, [bp+arg_0]
		inc	word ptr es:[bx+8]
		mov	ax, word ptr [bp+var_6]
		mov	dx, word ptr [bp+var_6+2]
		pop	si
		pop	di
		leave
		retf
sub_4122	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_42F4	proc near		; CODE XREF: seg005:10A3p sub_4576+96p ...

var_2		= word ptr -2
arg_0		= dword	ptr  4

		enter	2, 0
		les	bx, [bp+arg_0]
		mov	al, es:[bx]
		sub	ah, ah
		mov	[bp+var_2], ax
		cmp	ax, 6
		jnz	short loc_4314
		cmp	word_163FA, 0	; orig_flag
		jnz	short loc_4314
		mov	[bp+var_2], 5

loc_4314:				; CODE XREF: sub_42F4+12j sub_42F4+19j
		mov	ax, [bp+var_2]
		leave
		retn
sub_42F4	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	12h, 0
		push	si
		les	bx, [bp+6]
		mov	ax, es:[bx+5Ch]
		mov	dx, es:[bx+5Eh]
		mov	[bp-0Ah], ax
		mov	[bp-8],	dx
		sub	ax, ax
		mov	[bp-4],	ax
		mov	[bp-6],	ax

loc_4338:				; CODE XREF: seg005:0F8Aj
		mov	ax, dx
		or	ax, [bp-0Ah]
		jz	short loc_435C
		mov	ax, [bp-0Ah]
		mov	[bp-6],	ax
		mov	[bp-4],	dx
		mov	es, dx
		mov	bx, ax
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]
		mov	[bp-0Ah], ax
		mov	[bp-8],	dx
		jmp	short loc_4338
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_435C:				; CODE XREF: seg005:0F6Dj
		mov	ax, [bp+6]
		mov	dx, [bp+8]
		add	ax, 84h	; '"'
		push	dx
		push	ax
		mov	ax, 14h
		cwd
		call	sub_F55A
		mov	[bp-0Ah], ax
		mov	[bp-8],	dx
		mov	ax, [bp-4]
		or	ax, [bp-6]
		jz	short loc_439C
		les	bx, [bp-6]
		mov	ax, es:[bx+2]
		les	si, [bp-0Ah]
		mov	cx, es
		mov	es, word ptr [bp-4]
		mov	es:[bx+10h], si
		mov	es:[bx+12h], cx
		mov	es, cx
		mov	es:[si], ax
		jmp	short loc_43C1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_439C:				; CODE XREF: seg005:0FACj
		mov	ax, [bp-0Ah]
		les	bx, [bp+6]
		mov	es:[bx+5Ch], ax
		mov	es:[bx+5Eh], dx
		mov	es:[bx+50h], ax
		mov	es:[bx+52h], dx
		mov	cx, es:[bx+46h]
		add	cx, es:[bx+4Ah]
		mov	es, dx
		mov	bx, ax
		mov	es:[bx], cx

loc_43C1:				; CODE XREF: seg005:0FCAj
		les	bx, [bp-0Ah]
		sub	ax, ax
		mov	es:[bx+12h], ax
		mov	es:[bx+10h], ax
		mov	ax, [bp+0Ah]
		mov	dx, [bp+0Ch]
		mov	es:[bx+0Ch], ax
		mov	es:[bx+0Eh], dx
		mov	ax, [bp+0Eh]
		mov	es:[bx+4], ax
		mov	ax, [bp+14h]
		mov	es:[bx+6], ax
		mov	ax, [bp+12h]
		or	ax, [bp+10h]
		jnz	short loc_43F5
		jmp	loc_447C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_43F5:				; CODE XREF: seg005:1020j
		les	bx, [bp+6]
		mov	ax, es:[bx+56h]
		or	ax, es:[bx+54h]
		jnz	short loc_4408
		mov	word ptr es:[bx+28h], 0

loc_4408:				; CODE XREF: seg005:1030j
		mov	ax, [bp+6]
		mov	dx, [bp+8]
		add	ax, 84h	; '"'
		push	dx
		push	ax
		push	word ptr [bp+12h]
		push	word ptr [bp+10h]
		call	_strlen_0
		add	sp, 4
		inc	ax
		sub	dx, dx
		call	sub_F55A
		les	bx, [bp-0Ah]
		mov	es:[bx+8], ax
		mov	es:[bx+0Ah], dx
		push	word ptr [bp+12h]
		push	word ptr [bp+10h]
		push	dx
		push	word ptr es:[bx+8]
		call	_strcpy_0
		add	sp, 8
		mov	ax, [bp+6]
		mov	dx, [bp+8]
		add	ax, 74h	; 't'
		push	dx
		push	ax
		push	word ptr [bp+12h]
		push	word ptr [bp+10h]
		call	sub_3864
		les	bx, [bp+6]
		add	ax, es:[bx+46h]
		add	ax, es:[bx+32h]
		mov	[bp-12h], ax
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		jmp	short loc_448C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_447C:				; CODE XREF: seg005:1022j
		les	bx, [bp-0Ah]
		sub	ax, ax
		mov	es:[bx+0Ah], ax
		mov	es:[bx+8], ax
		mov	[bp-12h], ax

loc_448C:				; CODE XREF: seg005:10A9j
		mov	[bp-0Ch], ax
		les	bx, [bp+6]
		test	byte ptr es:[bx+0Ah], 2
		jz	short loc_44A2
		mov	ax, 10h
		mov	[bp-2],	ax
		jmp	short loc_44BF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_44A2:				; CODE XREF: seg005:10C7j
		mov	bx, [bp+0Eh]
		mov	ax, bx
		shl	bx, 1
		add	bx, ax
		shl	bx, 2
		add	bx, [bp+0Ah]
		mov	es, word ptr [bp+0Ch]
		mov	ax, es:[bx+3Eh]
		mov	[bp-2],	ax
		mov	ax, es:[bx+40h]

loc_44BF:				; CODE XREF: seg005:10CFj
		cmp	ax, [bp-0Ch]
		jge	short loc_44C7
		mov	ax, [bp-0Ch]

loc_44C7:				; CODE XREF: seg005:10F2j
		les	bx, [bp+6]
		add	ax, es:[bx+46h]
		les	si, [bp-0Ah]
		add	ax, es:[si]
		mov	es:[si+2], ax
		les	bx, [bp+6]
		mov	ax, es:[bx+2Eh]
		cmp	ax, [bp-2]
		jge	short loc_44E7
		mov	ax, [bp-2]

loc_44E7:				; CODE XREF: seg005:1112j
		mov	es:[bx+2Eh], ax
		mov	ax, es:[bx+30h]
		cmp	ax, [bp-12h]
		jge	short loc_44F7
		mov	ax, [bp-12h]

loc_44F7:				; CODE XREF: seg005:1122j
		mov	es:[bx+30h], ax
		inc	word ptr es:[bx+6]
		mov	ax, [bp-0Ah]
		mov	dx, [bp-8]
		pop	si
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		mov	ax, [bp+6]
		mov	dx, [bp+8]
		add	ax, 84h	; '"'
		push	dx
		push	ax
		mov	ax, 14h
		cwd
		call	sub_F55A
		les	bx, [bp+6]
		mov	es:[bx+64h], ax
		mov	es:[bx+66h], dx
		mov	ax, [bp+0Ah]
		mov	dx, [bp+0Ch]
		les	bx, es:[bx+64h]
		mov	es:[bx+0Ch], ax
		mov	es:[bx+0Eh], dx
		mov	ax, [bp+0Eh]
		mov	es:[bx+4], ax
		mov	ax, bx
		mov	dx, es
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_454A	proc near		; CODE XREF: sub_4576+86p
					; sub_4576+112p ...

arg_0		= word ptr  4
arg_2		= word ptr  6
arg_4		= dword	ptr  8

		enter	2, 0
		mov	cx, word ptr [bp+arg_4]
		mov	bx, word ptr [bp+arg_4+2]
		add	cx, 74h	; 't'
		push	bx
		push	cx
		push	[bp+arg_2]
		push	[bp+arg_0]
		les	bx, [bp+arg_4]	; DATA XREF: __aFchkstk-18Fr
		mov	cx, es:[bx+48h]
		add	cx, es:[bx+2Ah]
		add	ax, cx
		sub	bx, bx
		call	sub_3916	; ­¥â á¨¬¢.¨¬¥­¨
		leave
		retn	8
sub_454A	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall sub_4576(int,int,__int32)
sub_4576	proc near		; CODE XREF: sub_48A4+121p
					; sub_586C+82p

var_16C		= word ptr -16Ch
var_16A		= word ptr -16Ah
var_168		= word ptr -168h
var_166		= word ptr -166h
var_164		= word ptr -164h
var_162		= dword	ptr -162h
var_15E		= byte ptr -15Eh
var_10E		= word ptr -10Eh
var_10C		= dword	ptr -10Ch
var_108		= word ptr -108h
var_106		= byte ptr -106h
var_6		= word ptr -6
var_4		= word ptr -4
arg_0		= dword	ptr  4

		enter	16Ah, 0		;  à£-â	­¥ _int32,   void _far*
		push	ax
		push	di
		push	si		; char *
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+58h]
		mov	dx, es:[bx+5Ah]
		mov	word ptr [bp+var_10C], ax ; DATA XREF: __cinit+5w

loc_458C:				; DATA XREF: __cinit+9w
		mov	word ptr [bp+var_10C+2], dx
		mov	ax, es:[bx+48h]
		shl	ax, 1
		sub	ax, es:[bx+28h]
		neg	ax
		mov	[bp+var_108], ax
		mov	ax, es:[bx+2Ch]
		mov	[bp+var_10E], ax
		mov	[bp+var_106], 0
		sub	ax, ax
		mov	[bp+var_166], ax
		mov	[bp+var_6], ax

loc_45B6:				; CODE XREF: sub_4576+2C9j
		mov	ax, dx
		or	ax, word ptr [bp+var_10C]
		jnz	short loc_45C1
		jmp	loc_4842
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_45C1:				; CODE XREF: sub_4576+46j
		les	bx, [bp+var_10C]
		mov	ax, es:[bx+2]
		mov	dx, es:[bx+4]
		mov	[bp+var_4], ax
		mov	[bp-2],	dx
		test	byte ptr es:[bx], 3
		jnz	short loc_45DC
		jmp	loc_4816
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_45DC:				; CODE XREF: sub_4576+61j
		cmp	[bp+var_106], 0
		jz	short loc_4639
		cmp	[bp+var_16C], 0
		jz	short loc_45FF
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		lea	ax, [bp+var_106]
		push	ss
		push	ax
		sub	ax, ax
		mov	dx, [bp+var_10E]
		call	sub_454A

loc_45FF:				; CODE XREF: sub_4576+72j
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		inc	ax
		add	[bp+var_166], ax
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		inc	ax
		add	[bp+var_10E], ax
		mov	[bp+var_106], 0
		mov	[bp+var_6], 0

loc_4639:				; CODE XREF: sub_4576+6Bj
		cmp	[bp+var_16C], 0
		jz	short loc_4691
		les	bx, [bp+var_10C]
		test	byte ptr es:[bx], 1
		jz	short loc_466E
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 74h	; 't'
		push	dx
		push	ax		; __int32
		push	word ptr [bp-2]	; __int32
		push	[bp+var_4]	; char *
		call	sub_3864
		sar	ax, 1
		mov	cx, [bp+var_108]
		sar	cx, 1
		sub	cx, ax
		mov	[bp+var_168], cx
		jmp	short loc_4674
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_466E:				; CODE XREF: sub_4576+D2j
		mov	[bp+var_168], 0

loc_4674:				; CODE XREF: sub_4576+F6j
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	word ptr [bp-2]
		push	[bp+var_4]
		mov	ax, [bp+var_168]
		mov	dx, [bp+var_10E]
		call	sub_454A
		jmp	short loc_4691
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_468E:				; CODE XREF: sub_4576+122j
		inc	[bp+var_4]

loc_4691:				; CODE XREF: sub_4576+C8j
					; sub_4576+115j
		les	bx, dword ptr [bp+var_4]
		cmp	byte ptr es:[bx], 0
		jnz	short loc_468E
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		inc	ax
		add	[bp+var_166], ax
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		inc	ax
		add	[bp+var_10E], ax
		jmp	loc_4816
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_46CE:				; CODE XREF: sub_4576+162j
		inc	[bp+var_4]

loc_46D1:				; CODE XREF: sub_4576+2B2j
		les	bx, dword ptr [bp+var_4]
		cmp	byte ptr es:[bx], 20h ;	' '
		jz	short loc_46CE
		push	20h ; ' '       ; int
		push	es		; int
		push	bx		; char *
		call	_strchr_0
		add	sp, 6
		mov	word ptr [bp+var_162], ax
		mov	word ptr [bp+var_162+2], dx
		or	dx, ax
		jz	short loc_46FA
		les	bx, [bp+var_162]
		mov	byte ptr es:[bx], 0

loc_46FA:				; CODE XREF: sub_4576+17Aj
		push	word ptr [bp-2]
		push	[bp+var_4]	; char *
		call	_strlen_0
		add	sp, 4
		mov	[bp+var_16A], ax
		mov	[bp+var_15E], 0
		cmp	[bp+var_106], 0
		jz	short loc_4728
		push	599h		; char *
		lea	ax, [bp+var_15E]
		push	ax		; char *
		call	_strcat
		add	sp, 4

loc_4728:				; CODE XREF: sub_4576+1A0j
		push	word ptr [bp-2]
		push	[bp+var_4]	; char *
		lea	ax, [bp+var_15E]
		push	ss		; char *
		push	ax		; char *
		call	_strcat_0
		add	sp, 8
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 74h	; 't'
		push	dx
		push	ax		; __int32
		lea	cx, [bp+var_15E]
		push	ss		; __int32
		push	cx		; char *
		mov	si, ax
		mov	di, dx
		call	sub_3864
		mov	[bp+var_164], ax
		mov	es, di
		mov	ax, es:[si]
		add	ax, [bp+var_164]
		add	ax, [bp+var_6]
		cmp	ax, [bp+var_108]
		jle	short loc_47DB
		cmp	[bp+var_16C], 0
		jz	short loc_4786
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		lea	ax, [bp+var_106]
		push	ss
		push	ax
		sub	ax, ax
		mov	dx, [bp+var_10E]
		call	sub_454A

loc_4786:				; CODE XREF: sub_4576+1F9j
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		inc	ax
		add	[bp+var_166], ax
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		inc	ax
		add	[bp+var_10E], ax
		jmp	short loc_47CA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_47B8:				; CODE XREF: sub_4576+259j
		lea	ax, [bp-15Dh]
		push	ax		; char *
		lea	ax, [bp+var_15E]
		push	ax		; char *
		call	_strcpy
		add	sp, 4

loc_47CA:				; CODE XREF: sub_4576+240j
		cmp	[bp+var_15E], 20h ; ' '
		jz	short loc_47B8
		mov	[bp+var_106], 0
		mov	[bp+var_6], 0

loc_47DB:				; CODE XREF: sub_4576+1F2j
		lea	ax, [bp+var_15E]
		push	ss
		push	ax		; char *
		lea	ax, [bp+var_106]
		push	ss		; char *
		push	ax		; char *
		call	_strcat_0
		add	sp, 8
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+74h]
		add	ax, [bp+var_164]
		add	[bp+var_6], ax
		mov	ax, word ptr [bp+var_162+2]
		or	ax, word ptr [bp+var_162]
		jz	short loc_480F
		les	bx, [bp+var_162]
		mov	byte ptr es:[bx], 20h ;	' '

loc_480F:				; CODE XREF: sub_4576+28Fj
		mov	ax, [bp+var_16A]
		add	[bp+var_4], ax

loc_4816:				; CODE XREF: sub_4576+63j
					; sub_4576+154j
		push	word ptr [bp-2]
		push	[bp+var_4]	; char *
		call	_strlen_0
		add	sp, 4
		or	ax, ax
		jz	short loc_482B
		jmp	loc_46D1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_482B:				; CODE XREF: sub_4576+2B0j
		les	bx, [bp+var_10C]
		mov	ax, es:[bx+6]
		mov	dx, es:[bx+8]
		mov	word ptr [bp+var_10C], ax
		mov	word ptr [bp+var_10C+2], dx
		jmp	loc_45B6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4842:				; CODE XREF: sub_4576+48j
		cmp	[bp+var_106], 0
		jz	short loc_489A
		cmp	[bp+var_16C], 0
		jz	short loc_4865
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		lea	ax, [bp+var_106]
		push	ss
		push	ax
		sub	ax, ax
		mov	dx, [bp+var_10E]
		call	sub_454A

loc_4865:				; CODE XREF: sub_4576+2D8j
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		inc	ax
		add	[bp+var_166], ax
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		inc	ax
		add	[bp+var_10E], ax
		mov	[bp+var_106], 0

loc_489A:				; CODE XREF: sub_4576+2D1j
		mov	ax, [bp+var_166]
		pop	si
		pop	di
		leave
		retn	4
sub_4576	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_48A4	proc near		; CODE XREF: sub_586C+Fp sub_595E+111p

var_2C		= word ptr -2Ch
var_2A		= word ptr -2Ah
var_28		= word ptr -28h
var_26		= word ptr -26h
var_24		= word ptr -24h
var_22		= word ptr -22h
var_20		= word ptr -20h
var_1E		= word ptr -1Eh
var_1C		= word ptr -1Ch
var_18		= word ptr -18h
var_14		= word ptr -14h
var_12		= dword	ptr -12h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
arg_0		= dword	ptr  4

		enter	2Ch, 0
		push	si
		mov	[bp+var_8], 1
		sub	ax, ax
		mov	[bp+var_2C], ax
		mov	[bp+var_14], ax
		mov	[bp+var_1E], ax
		les	bx, [bp+arg_0]
		cmp	es:[bx+8], ax
		jz	short loc_48D4
		cmp	es:[bx+2], ax
		jz	short loc_48D4
		mov	es:[bx+8], ax
		mov	es:[bx+62h], ax
		mov	es:[bx+60h], ax

loc_48D4:				; CODE XREF: sub_48A4+1Cj sub_48A4+22j
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+0Ch]
		mov	es:[bx+10h], ax
		mov	ax, es:[bx+0Eh]
		mov	es:[bx+12h], ax
		mov	word ptr es:[bx+14h], 0
		mov	ax, es:[bx+4Ah]
		shl	ax, 1		; *2
		add	ax, es:[bx+46h]
		mov	es:[bx+16h], ax
		mov	al, es:[bx+0Ah]
		and	ax, 10h
		cmp	ax, 1
		sbb	ax, ax
		and	ax, 3
		mov	es:[bx+2Ah], ax
		mov	cx, ax		; int
		add	ax, es:[bx+46h]
		mov	es:[bx+2Ch], ax
		mov	es:[bx+24h], cx
		mov	es:[bx+26h], ax
		mov	ax, es:[bx+28h]
		cmp	ax, es:[bx+20h]
		jge	short loc_492E
		mov	ax, es:[bx+20h]

loc_492E:				; CODE XREF: sub_48A4+84j
		cmp	ax, es:[bx+34h]
		jge	short loc_4938
		mov	ax, es:[bx+34h]

loc_4938:				; CODE XREF: sub_48A4+8Ej
		mov	es:[bx+28h], ax
		mov	es:[bx+34h], ax
		mov	es:[bx+20h], ax
		mov	ax, es:[bx+2]
		add	ax, es:[bx+4]
		add	ax, es:[bx+6]
		add	ax, es:[bx+8]
		jnz	short loc_4959
		jmp	loc_4E12
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4959:				; CODE XREF: sub_48A4+B0j
		mov	[bp+var_6], 0
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+5Eh]
		or	ax, es:[bx+5Ch]
		jz	short loc_49B4
		mov	ax, es:[bx+48h]
		add	ax, es:[bx+2Eh]
		add	ax, es:[bx+30h]
		add	ax, es:[bx+32h]
		add	es:[bx+14h], ax
		add	es:[bx+2Ah], ax
		add	es:[bx+24h], ax
		add	es:[bx+36h], ax
		mov	ax, es:[bx+5Ch]
		mov	dx, es:[bx+5Eh]

loc_4993:				; CODE XREF: sub_48A4+10Ej
		mov	word ptr [bp+var_12], ax
		mov	word ptr [bp+var_12+2],	dx
		mov	ax, dx
		or	ax, word ptr [bp+var_12]
		jz	short loc_49B4
		les	bx, [bp+var_12]
		mov	ax, es:[bx+2]
		mov	[bp+var_6], ax
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]	; int
		jmp	short loc_4993
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_49B4:				; CODE XREF: sub_48A4+C5j sub_48A4+FAj
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+5Ah]
		or	ax, es:[bx+58h]
		jz	short loc_49E2
		push	es
		push	bx		; __int32
		sub	ax, ax
		call	sub_4576
		mov	[bp+var_2C], ax
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+46h]
		mov	cx, ax
		add	ax, [bp+var_2C]
		add	es:[bx+26h], ax
		add	cx, [bp+var_2C]
		add	es:[bx+38h], cx

loc_49E2:				; CODE XREF: sub_48A4+11Bj
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+56h]
		or	ax, es:[bx+54h]
		jz	short loc_4A0D
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		les	bx, [bp+arg_0]
		add	ax, es:[bx+46h]
		imul	word ptr es:[bx+2]
		mov	[bp+var_14], ax

loc_4A0D:				; CODE XREF: sub_48A4+149j
		mov	ax, es:[bx+62h]
		or	ax, es:[bx+60h]
		jz	short loc_4A38
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		les	bx, [bp+arg_0]
		add	ax, es:[bx+46h]
		add	ax, 5
		imul	word ptr es:[bx+8]
		mov	[bp+var_1E], ax

loc_4A38:				; CODE XREF: sub_48A4+171j
		mov	ax, [bp+var_1E]
		add	ax, [bp+var_14]
		add	ax, [bp+var_2C]
		mov	[bp+var_E], ax
		or	ax, ax
		jz	short loc_4A4F
		add	ax, es:[bx+46h]
		mov	[bp+var_E], ax

loc_4A4F:				; CODE XREF: sub_48A4+1A2j
		mov	al, es:[bx+0Ah]
		and	ax, 10h
		cmp	ax, 1
		sbb	ax, ax
		and	ax, 3
		shl	ax, 1
		mov	cx, [bp+var_6]
		cmp	cx, [bp+var_E]
		jge	short loc_4A6B
		mov	cx, [bp+var_E]	; int

loc_4A6B:				; CODE XREF: sub_48A4+1C2j
		mov	dx, ax
		add	ax, cx
		add	es:[bx+16h], ax
		add	dx, es:[bx+20h]
		add	es:[bx+14h], dx
		cmp	word_163D6, 0	; popup_help
		jz	short loc_4AA6
		mov	ax, word ptr dword_15EF0 ; menu	font
		mov	dx, word ptr dword_15EF0+2
		cmp	es:[bx+80h], ax
		jnz	short loc_4A9E
		cmp	es:[bx+82h], dx
		jnz	short loc_4A9E
		add	word ptr es:[bx+16h], 6
		jmp	short loc_4AA6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4A9E:				; CODE XREF: sub_48A4+1EAj
					; sub_48A4+1F1j
		les	bx, [bp+arg_0]
		add	word ptr es:[bx+16h], 3

loc_4AA6:				; CODE XREF: sub_48A4+1DCj
					; sub_48A4+1F8j
		les	bx, [bp+arg_0]
		cmp	word ptr es:[bx+10h], 0FFFFh
		jnz	short loc_4ABF
		mov	ax, es:[bx+14h]
		sar	ax, 1
		sub	ax, 0A0h ; ' '
		neg	ax
		mov	es:[bx+10h], ax

loc_4ABF:				; CODE XREF: sub_48A4+20Aj
		les	bx, [bp+arg_0]
		cmp	word ptr es:[bx+12h], 0FFFFh
		jnz	short loc_4AD8
		mov	ax, es:[bx+16h]
		sar	ax, 1
		sub	ax, 64h	; 'd'
		neg	ax
		mov	es:[bx+12h], ax

loc_4AD8:				; CODE XREF: sub_48A4+223j
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+16h]
		add	ax, es:[bx+12h]
		mov	[bp+var_22], ax
		mov	ax, es:[bx+14h]
		add	ax, es:[bx+10h]
		mov	[bp+var_1C], ax
		cmp	ax, 140h
		jle	short loc_4AFF
		sub	ax, 140h
		neg	ax
		add	es:[bx+10h], ax

loc_4AFF:				; CODE XREF: sub_48A4+250j
		cmp	[bp+var_22], 0C8h ; 'È'
		jle	short loc_4B13
		mov	ax, 0C8h ; 'È'
		sub	ax, [bp+var_22]
		les	bx, [bp+arg_0]
		add	es:[bx+12h], ax

loc_4B13:				; CODE XREF: sub_48A4+260j
		les	bx, [bp+arg_0]
		cmp	word ptr es:[bx+10h], 0
		jl	short loc_4B24
		cmp	word ptr es:[bx+12h], 0
		jge	short loc_4B40

loc_4B24:				; CODE XREF: sub_48A4+277j
		mov	ax, es:[bx+10h]
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, es:[bx+12h]
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, 0FFAFh
		mov	dx, 2		; int
		mov	bx, 29h	; ')'
		call	sub_F0D6	; @error_report

loc_4B40:				; CODE XREF: sub_48A4+27Ej
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+10h]
		mov	es:[bx+18h], ax
		mov	ax, es:[bx+12h]
		mov	es:[bx+1Ah], ax
		mov	ax, es:[bx+14h]
		mov	es:[bx+1Ch], ax
		mov	cx, es:[bx+16h]
		mov	es:[bx+1Eh], cx
		mov	cx, es:[bx+6Ah]
		or	cx, es:[bx+68h]
		jnz	short loc_4B70
		jmp	loc_4DEA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4B70:				; CODE XREF: sub_48A4+2C7j
		mov	cx, es:[bx+68h]
		mov	dx, es:[bx+6Ah]
		mov	word ptr [bp+var_12], cx
		mov	word ptr [bp+var_12+2],	dx
		cmp	word_163CC, 0	; popup_indian
		jge	short loc_4B88
		jmp	loc_4C7B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4B88:				; CODE XREF: sub_48A4+2DFj
		mov	es, dx
		mov	bx, cx
		les	bx, es:[bx+0Ch]
		mov	cx, es:[bx+4Ch]
		add	cx, 3
		mov	[bp+var_26], cx
		mov	[bp+var_18], 0FFFDh
		mov	cx, es:[bx+4Ah]
		add	cx, 3
		mov	[bp+var_20], cx
		add	ax, cx
		add	ax, 3
		mov	[bp+var_28], ax
		cmp	ax, 140h
		jle	short loc_4BC1
		sub	ax, 143h
		mov	[bp+var_18], ax
		mov	[bp+var_28], 140h

loc_4BC1:				; CODE XREF: sub_48A4+310j
		cmp	word_163CC, 0	; popup_indian
		jz	short loc_4BE4
		cmp	word_163CC, 3
		jz	short loc_4BE4
		cmp	word_163CC, 5
		jz	short loc_4BE4
		cmp	word_163CC, 7
		jz	short loc_4BE4
		cmp	word_163CC, 8
		jnz	short loc_4BEC

loc_4BE4:				; CODE XREF: sub_48A4+322j
					; sub_48A4+329j ...
		mov	[bp+var_24], 1
		jmp	short loc_4BF1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_4BEC:				; CODE XREF: sub_48A4+33Ej
		mov	[bp+var_24], 0

loc_4BF1:				; CODE XREF: sub_48A4+345j
		mov	ax, [bp+var_28]
		les	bx, [bp+arg_0]
		mov	es:[bx+1Ch], ax
		cmp	[bp+var_24], 0
		jz	short loc_4C22
		sar	ax, 1
		sub	ax, 0A0h ; ' '
		neg	ax
		mov	es:[bx+18h], ax
		les	si, [bp+var_12]
		mov	es:[si+4], ax
		sub	ax, [bp+var_18]
		add	ax, [bp+var_20]
		les	bx, [bp+arg_0]
		mov	es:[bx+10h], ax
		jmp	short loc_4C45
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4C22:				; CODE XREF: sub_48A4+35Bj
		mov	ax, [bp+var_28]
		sar	ax, 1
		sub	ax, 0A0h ; ' '
		neg	ax
		les	bx, [bp+arg_0]
		mov	es:[bx+18h], ax
		mov	es:[bx+10h], ax
		add	ax, es:[bx+14h]
		sub	ax, [bp+var_18]
		les	bx, [bp+var_12]
		mov	es:[bx+4], ax

loc_4C45:				; CODE XREF: sub_48A4+37Cj
		mov	ax, [bp+var_26]
		sar	ax, 1
		sub	ax, 64h	; 'd'
		neg	ax
		les	bx, [bp+var_12]
		mov	es:[bx], ax
		les	bx, [bp+arg_0]
		mov	cx, ax
		cmp	ax, es:[bx+12h]
		jle	short loc_4C64
		mov	ax, es:[bx+12h]

loc_4C64:				; CODE XREF: sub_48A4+3BAj
		mov	es:[bx+1Ah], ax
		add	cx, [bp+var_26]
		dec	cx
		cmp	cx, [bp+var_22]
		jge	short loc_4C74
		mov	cx, [bp+var_22]

loc_4C74:				; CODE XREF: sub_48A4+3CBj
		sub	cx, ax
		inc	cx
		mov	es:[bx+1Eh], cx

loc_4C7B:				; CODE XREF: sub_48A4+2E1j
		cmp	word_163CE, 0	; popup_messenger
		jge	short loc_4C8C
		cmp	word_163D0, 0	; popup_foreign
		jge	short loc_4C8C
		jmp	loc_4DEA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4C8C:				; CODE XREF: sub_48A4+3DCj
					; sub_48A4+3E3j
		les	bx, [bp+var_12]
		les	bx, es:[bx+0Ch]
		mov	ax, es:[bx+4Ah]
		mov	[bp+var_20], ax
		mov	ax, es:[bx+4Ch]
		mov	[bp+var_26], ax
		mov	cx, es:[bx+10h]
		mov	[bp+var_A], cx
		mov	dx, es:[bx+12h]
		mov	[bp+var_C], dx
		mov	dx, es:[bx+14h]
		mov	[bp+var_4], dx
		cmp	cx, ax
		jle	short loc_4CBC
		mov	cx, ax

loc_4CBC:				; CODE XREF: sub_48A4+414j
		sub	ax, cx
		les	bx, [bp+arg_0]
		add	ax, es:[bx+16h]
		mov	[bp+var_2A], ax
		cmp	ax, 0C8h ; 'È'
		jl	short loc_4CD6
		or	byte ptr es:[bx+0Ah], 40h
		jmp	loc_4DEA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_4CD6:				; CODE XREF: sub_48A4+427j
		sar	ax, 1
		sub	ax, 64h	; 'd'
		neg	ax
		les	bx, [bp+var_12]
		mov	es:[bx], ax
		les	bx, [bp+arg_0]
		mov	es:[bx+1Ah], ax
		mov	cx, [bp+var_2A]
		cmp	cx, [bp+var_26]
		jge	short loc_4CF5
		mov	cx, [bp+var_26]

loc_4CF5:				; CODE XREF: sub_48A4+44Cj
		mov	es:[bx+1Eh], cx
		sub	ax, [bp+var_A]
		add	ax, [bp+var_26]
		mov	es:[bx+12h], ax
		mov	ax, [bp+var_C]
		jmp	loc_4DDA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_4D0A:				; CODE XREF: sub_48A4+53Aj
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+14h]
		sub	ax, [bp+var_4]
		add	ax, [bp+var_20]
		mov	[bp+var_28], ax
		cmp	ax, 140h
		jle	short loc_4D2A
		sub	ax, 140h
		add	[bp+var_4], ax
		mov	[bp+var_28], 140h

loc_4D2A:				; CODE XREF: sub_48A4+479j
		mov	ax, [bp+var_28]
		sar	ax, 1
		sub	ax, 0A0h ; ' '
		neg	ax
		les	bx, [bp+var_12]
		mov	es:[bx+4], ax
		les	bx, [bp+arg_0]
		mov	es:[bx+18h], ax
		mov	cx, [bp+var_28]
		mov	es:[bx+1Ch], cx
		sub	ax, [bp+var_4]
		add	ax, [bp+var_20]
		mov	es:[bx+10h], ax
		jmp	loc_4DEA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4D56:				; CODE XREF: sub_48A4+540j
		mov	ax, [bp+var_20]
		sar	ax, 1
		sub	ax, 0A0h ; ' '
		neg	ax
		les	bx, [bp+var_12]
		mov	es:[bx+4], ax
		les	bx, [bp+arg_0]
		mov	cx, es:[bx+10h]
		cmp	cx, ax
		jle	short loc_4D74
		mov	cx, ax

loc_4D74:				; CODE XREF: sub_48A4+4CCj
		mov	es:[bx+18h], cx
		add	ax, [bp+var_20]
		dec	ax
		cmp	ax, [bp+var_1C]
		jge	short loc_4D84
		mov	ax, [bp+var_1C]

loc_4D84:				; CODE XREF: sub_48A4+4DBj
		mov	[bp+var_1C], ax
		sub	ax, cx
		inc	ax
		mov	es:[bx+1Ch], ax
		jmp	short loc_4DEA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4D90:				; CODE XREF: sub_48A4+544j
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+14h]
		sub	ax, [bp+var_4]
		add	ax, [bp+var_20]
		mov	[bp+var_28], ax
		cmp	ax, 140h
		jle	short loc_4DB0
		sub	ax, 140h
		add	[bp+var_4], ax
		mov	[bp+var_28], 140h

loc_4DB0:				; CODE XREF: sub_48A4+4FFj
		mov	ax, [bp+var_28]
		sar	ax, 1
		sub	ax, 0A0h ; ' '
		neg	ax
		mov	es:[bx+10h], ax
		mov	es:[bx+18h], ax
		mov	cx, [bp+var_28]
		mov	es:[bx+1Ch], cx
		add	ax, es:[bx+14h]
		sub	ax, [bp+var_4]
		les	bx, [bp+var_12]
		mov	es:[bx+4], ax
		jmp	short loc_4DEA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_4DDA:				; CODE XREF: sub_48A4+462j
		or	ax, ax
		jnz	short loc_4DE1
		jmp	loc_4D0A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4DE1:				; CODE XREF: sub_48A4+538j
		dec	ax
		jnz	short loc_4DE7
		jmp	loc_4D56
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4DE7:				; CODE XREF: sub_48A4+53Ej
		dec	ax
		jz	short loc_4D90

loc_4DEA:				; CODE XREF: sub_48A4+2C9j
					; sub_48A4+3E5j ...
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+10h]
		add	es:[bx+24h], ax
		mov	cx, es:[bx+12h]
		add	es:[bx+26h], cx
		add	es:[bx+2Ah], ax
		add	es:[bx+2Ch], cx
		add	es:[bx+36h], ax
		add	es:[bx+38h], cx
		mov	[bp+var_8], 0

loc_4E12:				; CODE XREF: sub_48A4+B2j
		mov	ax, [bp+var_8]
		pop	si
		leave
		retn	4
sub_48A4	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_4E1A	proc near		; CODE XREF: sub_4F5A+28Fp
					; sub_51F2+201p ...

arg_0		= dword	ptr  4

		push	bp		; çâ(r) §   à£-â?
		mov	bp, sp
		push	si
		cmp	word_163DA, 0	; popup_no_draw
		jz	short loc_4E2F
		les	bx, [bp+arg_0]
		test	byte ptr es:[bx+0Ah], 20h
		jnz	short loc_4E50

loc_4E2F:				; CODE XREF: sub_4E1A+9j
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+1Ah]
		push	word ptr es:[bx+1Ch]
		push	word ptr es:[bx+1Eh]
		mov	ax, es:[bx+18h]
		mov	bx, ax
		mov	si, word ptr [bp+arg_0]
		mov	dx, es:[si+1Ah]
		call	sub_C384	; @mouse_video_update

loc_4E50:				; CODE XREF: sub_4E1A+13j
		pop	si
		leave
		retn	4
sub_4E1A	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_4E56	proc far		; CODE XREF: sub_4F5A+283p
					; sub_51F2+1F5p ...

var_54		= word ptr -54h
var_52		= byte ptr -52h
var_2		= word ptr -2
arg_0		= dword	ptr  6

		enter	54h, 0		; ã íâ(r)(c) ä-¨¨ ­¥â á¨¬¢.¨¬¥­¨
		cmp	word_163D6, 0	; popup_help
		jz	short locret_4EC4
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+14h]
		add	ax, es:[bx+10h]
		dec	ax
		dec	ax
		mov	[bp+var_2], ax
		mov	ax, es:[bx+16h]
		add	ax, es:[bx+12h]
		sub	ax, 7
		mov	[bp+var_54], ax
		mov	cx, word ptr dword_15EF0 ; menu_font
		mov	dx, word ptr dword_15EF0+2
		cmp	es:[bx+80h], cx
		jnz	short loc_4E9A
		cmp	es:[bx+82h], dx
		jnz	short loc_4E9A
		dec	ax
		dec	ax
		mov	[bp+var_54], ax

loc_4E9A:				; CODE XREF: sub_4E56+36j sub_4E56+3Dj
		mov	[bp+var_52], 0
		push	word_1B224
		lea	ax, [bp+var_52]
		push	ax		; char *
		call	sub_8BB2	; say_string
		add	sp, 4
		mov	al, byte_15F03	; hilite_color
		sub	ah, ah
		push	ax		; int
		push	[bp+var_54]	; int
		push	[bp+var_2]	; int
		lea	ax, [bp+var_52]
		push	ss		; int
		push	ax		; char *
		call	sub_8D92	; write_right

locret_4EC4:				; CODE XREF: sub_4E56+9j
		leave
		retf
sub_4E56	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_4EC6	proc far		; CODE XREF: sub_4F5A+276p
					; sub_586C+45p	...

var_6		= word ptr -6
var_4		= dword	ptr -4
arg_0		= dword	ptr  6

		enter	0Ch, 0		; ­¥â á¨¬¢.¨¬¥­¨ ã íâ(r)(c)	ä-¨¨
		push	si
		cmp	word_163CC, 7	; popup_indian
		jle	short loc_4ED8	; ¥á"¨ ¬¥­ìè¥ ¨"¨ à ¢­(r)
		mov	ax, 1
		jmp	short loc_4EDA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_4ED8:				; CODE XREF: sub_4EC6+Aj
		sub	ax, ax

loc_4EDA:				; CODE XREF: sub_4EC6+Fj
		mov	[bp+var_6], ax
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+6Ah]
		or	ax, es:[bx+68h]
		jz	short loc_4F57
		test	byte ptr es:[bx+0Ah], 40h
		jnz	short loc_4F57
		mov	ax, es:[bx+68h]
		mov	dx, es:[bx+6Ah]
		mov	word ptr [bp+var_4], ax
		mov	word ptr [bp+var_4+2], dx
		mov	es, dx
		mov	bx, ax
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch]
		push	word ptr es:[bx]
		mov	ax, 1
		mov	dx, es:[bx+4]
		lea	bx, word_19964
		call	sub_D8F0
		cmp	[bp+var_6], 0
		jz	short loc_4F57
		cmp	word_163DE, 0
		jz	short loc_4F57
		cmp	word_1ACEE, 0
		jle	short loc_4F57
		mov	ax, word_1ACEE
		les	bx, [bp+var_4]
		les	si, es:[bx+10h]
		push	word ptr es:[si+0Eh]
		push	word ptr es:[si+0Ch]
		mov	es, word ptr [bp+var_4+2]
		push	word ptr es:[bx]
		mov	dx, es:[bx+4]
		lea	bx, word_19964
		call	sub_D8F0

loc_4F57:				; CODE XREF: sub_4EC6+22j sub_4EC6+29j ...
		pop	si
		leave
		retf
sub_4EC6	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_4F5A	proc near		; CODE XREF: sub_586C+8Dp
					; sub_595E+895p

var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= dword	ptr -10h
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= dword	ptr -4
arg_0		= dword	ptr  4

		enter	12h, 0		; ­¥â á¨¬¢.¨¬¥­¨ ã íâ(r)(c)	ä-¨¨
		push	ax
		push	di
		push	si
		les	bx, [bp+arg_0]
		mov	cx, es:[bx+24h]
		add	cx, es:[bx+48h]
		add	cx, es:[bx+22h]
		mov	[bp+var_8], cx
		mov	dx, es:[bx+26h]
		mov	[bp+var_A], dx
		mov	si, es:[bx+54h]
		mov	di, es:[bx+56h]
		mov	word ptr [bp+var_10], si
		mov	word ptr [bp+var_10+2],	di
		or	ax, ax
		jz	short loc_4FF4
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		les	bx, [bp+arg_0]
		add	ax, es:[bx+46h]
		imul	word ptr es:[bx+2]
		push	ax
		push	word ptr es:[bx+10h]
		push	word ptr es:[bx+12h]
		push	word ptr es:[bx+14h]
		mov	al, es:[bx+3Ch]
		push	ax
		mov	al, es:[bx+3Eh]
		push	ax
		push	0
		push	0
		mov	ax, es:[bx+48h]
		mov	cx, es:[bx+20h]
		mov	bx, 1
		sub	bx, ax
		mov	si, word ptr [bp+arg_0]
		mov	ax, [bp+var_8]
		sub	ax, es:[si+22h]
		dec	ax
		shl	bx, 1
		add	bx, cx
		mov	dx, [bp+var_A]
		call	sub_371A

loc_4FF4:				; CODE XREF: sub_4F5A+30j
					; sub_4F5A+25Fj
		mov	ax, word ptr [bp+var_10+2]
		or	ax, word ptr [bp+var_10]
		jnz	short loc_4FFF
		jmp	loc_51BC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_4FFF:				; CODE XREF: sub_4F5A+A0j
		les	bx, [bp+var_10]
		mov	al, es:[bx]
		and	ax, 2
		mov	word_163D2, ax
		les	si, [bp+arg_0]
		mov	ax, bx
		mov	dx, word ptr [bp+var_10+2]
		cmp	es:[si+4Ch], ax
		jnz	short loc_5081
		cmp	es:[si+4Eh], dx
		jnz	short loc_5081
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		push	word ptr es:[si+82h]
		push	word ptr es:[si+80h]
		call	sub_42F4
		add	sp, 4
		inc	ax
		inc	ax
		push	ax
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+10h]
		push	word ptr es:[bx+12h]
		push	word ptr es:[bx+14h]
		mov	al, es:[bx+40h]
		push	ax
		mov	al, es:[bx+42h]
		push	ax
		push	0
		push	0
		mov	ax, es:[bx+48h]
		mov	cx, es:[bx+20h]
		mov	bx, 1
		sub	bx, ax
		mov	ax, [bp+var_8]
		mov	si, word ptr [bp+arg_0]
		sub	ax, es:[si+22h]
		dec	ax
		shl	bx, 1
		add	bx, cx
		mov	dx, [bp+var_A]
		call	sub_371A

loc_5081:				; CODE XREF: sub_4F5A+BDj sub_4F5A+C3j
		les	bx, [bp+var_10]
		les	bx, es:[bx+8]
		cmp	byte ptr es:[bx], 0
		jnz	short loc_50E2
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		sar	ax, 1
		add	ax, [bp+var_A]
		mov	[bp+var_C], ax
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		push	1
		les	bx, [bp+arg_0]
		mov	al, es:[bx+76h]
		push	ax
		mov	ax, [bp+var_8]
		sub	ax, es:[bx+22h]
		mov	cx, es:[bx+48h]
		mov	bx, es:[bx+20h]
		shl	cx, 1
		sub	bx, cx
		mov	dx, [bp+var_C]
		call	sub_C5B4
		jmp	loc_518B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_50E2:				; CODE XREF: sub_4F5A+132j
		les	bx, [bp+arg_0]
		test	byte ptr es:[bx+0Ah], 4
		jz	short loc_5102
		les	bx, [bp+var_10]
		cmp	word ptr es:[bx+6], 1
		sbb	al, al
		and	al, 0FEh
		add	al, 5Dh	; ']'
		les	bx, es:[bx+8]
		mov	es:[bx+1], al

loc_5102:				; CODE XREF: sub_4F5A+190j
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 74h	; 't'
		push	dx
		push	ax
		les	bx, [bp+var_10]
		push	word ptr es:[bx+0Ah]
		push	word ptr es:[bx+8]
		mov	cx, dx
		mov	dx, [bp+var_A]
		inc	dx
		mov	bx, es:[bx]
		mov	si, ax
		mov	ax, [bp+var_8]
		mov	di, cx
		mov	[bp+var_12], dx
		call	sub_3916	; ­¥â á¨¬¢. ¨¬¥­¨
		push	7Ch ; '|'       ; int
		les	bx, [bp+var_10]
		push	word ptr es:[bx+0Ah] ; int
		push	word ptr es:[bx+8] ; char *
		call	_strchr_0
		add	sp, 6
		mov	[bp+var_6], ax
		mov	word ptr [bp+var_4], dx
		or	dx, ax
		jz	short loc_518B
		push	di
		push	si		; __int32
		mov	dx, word ptr [bp+var_4]
		inc	ax
		mov	[bp+var_6], ax
		push	dx		; __int32
		push	ax		; char *
		call	sub_3864
		mov	word ptr [bp+var_4+2], ax
		push	di
		push	si
		push	word ptr [bp+var_4]
		push	[bp+var_6]
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+20h]
		mov	cx, es:[bx+48h]
		add	cx, es:[bx+22h]
		shl	cx, 1
		sub	ax, cx
		sub	ax, word ptr [bp+var_4+2]
		add	ax, [bp+var_8]
		les	bx, [bp+var_10]
		mov	bx, es:[bx]
		mov	dx, [bp+var_12]
		call	sub_3916	; ­¥â á¨¬¢.¨¬¥­¨

loc_518B:				; CODE XREF: sub_4F5A+184j
					; sub_4F5A+1F1j
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		les	bx, [bp+arg_0]
		add	ax, es:[bx+46h]
		add	[bp+var_A], ax
		les	bx, [bp+var_10]
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]
		mov	word ptr [bp+var_10], ax
		mov	word ptr [bp+var_10+2],	dx
		jmp	loc_4FF4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_51BC:				; CODE XREF: sub_4F5A+A2j
		cmp	[bp+var_14], 0
		jz	short loc_51EC
		cmp	word_163CC, 0
		jge	short loc_51D6
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_4EC6
		add	sp, 4

loc_51D6:				; CODE XREF: sub_4F5A+26Dj
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_4E56
		add	sp, 4
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		call	sub_4E1A

loc_51EC:				; CODE XREF: sub_4F5A+266j
		pop	si
		pop	di
		leave
		retn	4
sub_4F5A	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall sub_51F2(int,int,__int32)
sub_51F2	proc near		; CODE XREF: sub_586C+98p
					; sub_595E+47Dp

var_6C		= word ptr -6Ch
var_6A		= word ptr -6Ah
var_68		= word ptr -68h
var_66		= word ptr -66h
var_64		= word ptr -64h
var_62		= word ptr -62h
var_60		= word ptr -60h
var_5E		= word ptr -5Eh
var_5C		= byte ptr -5Ch
var_C		= dword	ptr -0Ch
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= dword	ptr  4

		enter	6Ah, 0		; ã íâ(r)(c) ä-¨¨ ­¥â á¨¬¢.¨¬¥­¨
		push	ax
		push	di
		push	si		; char *
		mov	word_163D2, 0	; popup_hiliting
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+24h]
		add	ax, es:[bx+48h]
		mov	[bp+var_66], ax
		mov	ax, es:[bx+26h]
		mov	[bp+var_68], ax
		mov	ax, es:[bx+60h]
		mov	dx, es:[bx+62h]

loc_521C:				; CODE XREF: sub_51F2+1E4j
		mov	word ptr [bp+var_C], ax
		mov	word ptr [bp+var_C+2], dx
		mov	ax, dx
		or	ax, word ptr [bp+var_C]
		jnz	short loc_522C	; ¯¥à¥å(r)¤ áî¤  ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		jmp	loc_53DA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_522C:				; CODE XREF: sub_51F2+35j
		les	bx, [bp+var_C]
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch] ; char *
		lea	ax, [bp+var_5C]
		push	ss		; char *
		push	ax		; char *
		call	_strcpy_0
		add	sp, 8
		lea	ax, [bp+var_5C]
		push	ax		; char *
		call	_strlen
		add	sp, 2
		les	bx, [bp+var_C]
		cmp	ax, es:[bx+6]
		jge	short loc_5268	; ­¥â ¯¥à¥å(r)¤  ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c);¡(r)"ìè¥ ¨"¨ à ¢­(r)
		push	59Bh		; "_" (a_1)
		lea	ax, [bp+var_5C]
		push	ax		; char *
		call	_strcat
		add	sp, 4

loc_5268:				; CODE XREF: sub_51F2+65j
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 74h	; 't'
		push	dx
		push	ax
		les	bx, [bp+var_C]
		push	word ptr es:[bx+0Ah]
		push	word ptr es:[bx+8]
		mov	cx, dx
		mov	dx, [bp+var_68]
		add	dx, 3
		mov	[bp+var_6A], dx
		mov	si, ax
		mov	ax, [bp+var_66]
		sub	bx, bx
		mov	di, cx
		call	sub_3916	; ­¥â á¨¬¢.¨¬¥­¨
		les	bx, [bp+var_C]
		mov	ax, es:[bx+2]
		add	ax, [bp+var_66]
		mov	[bp+var_4], ax
		mov	ax, [bp+var_68]
		mov	[bp+var_8], ax
		mov	cx, es:[bx+4]
		add	cx, 6
		mov	[bp+var_60], cx
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		add	ax, 5
		mov	[bp+var_64], ax
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		add	ax, [bp+var_68]
		dec	ax
		push	ax
		les	bx, [bp+arg_0]
		mov	al, es:[bx+76h]
		push	ax
		mov	ax, [bp+var_4]
		mov	bx, [bp+var_60]
		add	bx, ax
		lea	bx, [bx-1]
		mov	dx, [bp+var_68]
		call	sub_C86C
		mov	ax, [bp+var_4]
		inc	ax
		inc	ax
		mov	[bp+var_2], ax
		mov	cx, [bp+var_60]
		sub	cx, 4
		mov	[bp+var_5E], cx
		mov	dx, [bp+var_68]
		inc	dx
		inc	dx
		mov	[bp+var_6], dx
		mov	bx, [bp+var_64]
		sub	bx, 4
		mov	[bp+var_62], bx
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		push	bx
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+10h]
		push	word ptr es:[bx+12h]
		push	word ptr es:[bx+14h]
		mov	al, es:[bx+3Ch]
		push	ax
		mov	al, es:[bx+3Eh]
		push	ax
		push	0
		push	0
		mov	bx, cx
		mov	ax, [bp+var_2]
		call	sub_371A
		les	bx, [bp+var_C]
		test	byte ptr es:[bx], 80h
		jz	short loc_53AA	; ­¥â ¯¥à¥å(r)¤  ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		push	di
		push	si		; __int32
		push	word ptr es:[bx+0Eh] ; __int32
		push	word ptr es:[bx+0Ch] ; char *
		call	sub_3864
		inc	ax
		inc	ax
		mov	[bp+var_5E], ax
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964	; scr_work
		push	[bp+var_62]
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+10h]
		push	word ptr es:[bx+12h]
		push	word ptr es:[bx+14h]
		mov	al, es:[bx+40h]
		push	ax
		mov	al, es:[bx+42h]
		push	ax
		push	0
		push	0
		mov	ax, [bp+var_2]
		mov	dx, [bp+var_6]
		mov	bx, [bp+var_5E]
		call	sub_371A

loc_53AA:				; CODE XREF: sub_51F2+168j
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 74h	; 't'
		push	dx
		push	ax
		lea	ax, [bp+var_5C]
		push	ss
		push	ax
		mov	ax, [bp+var_4]
		add	ax, 3
		mov	dx, [bp+var_8]
		add	dx, 3
		sub	bx, bx
		call	sub_3916	; ­¥â á¨¬¢.¨¬¥­¨
		les	bx, [bp+var_C]
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]
		jmp	loc_521C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_53DA:				; CODE XREF: sub_51F2+37j
		cmp	[bp+var_6C], 0
		jz	short loc_53F6
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_4E56
		add	sp, 4
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		call	sub_4E1A

loc_53F6:				; CODE XREF: sub_51F2+1ECj
		pop	si
		pop	di
		leave
		retn	4
sub_51F2	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_53FC	proc near		; CODE XREF: sub_586C+70p sub_593C+1Dp

var_1C		= word ptr -1Ch
var_1A		= word ptr -1Ah
var_18		= word ptr -18h
var_16		= word ptr -16h
var_12		= word ptr -12h
var_E		= word ptr -0Eh
var_C		= dword	ptr -0Ch
var_6		= word ptr -6
var_4		= word ptr -4
arg_0		= dword	ptr  4

		enter	16h, 0
		push	bx
		push	dx
		push	ax
		push	si
		mov	word_163D2, 0
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+5Eh]
		or	ax, es:[bx+5Ch]
		jnz	short loc_541A
		jmp	loc_5650
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_541A:				; CODE XREF: sub_53FC+19j
		mov	ax, es:[bx+5Ch]
		mov	dx, es:[bx+5Eh]

loc_5422:				; CODE XREF: sub_53FC+41j
		mov	word ptr [bp+var_C], ax
		mov	word ptr [bp+var_C+2], dx
		les	bx, [bp+var_C]
		mov	ax, es:[bx+12h]
		or	ax, es:[bx+10h]
		jz	short loc_5440
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]
		jmp	short loc_5422
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_5440:				; CODE XREF: sub_53FC+37j
		mov	ax, es:[bx+2]
		mov	[bp+var_16], ax
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+5Ch]
		mov	dx, es:[bx+5Eh]
		mov	word ptr [bp+var_C], ax
		mov	word ptr [bp+var_C+2], dx
		mov	ax, es:[bx+0Ah]
		mov	cx, ax
		and	ax, 10h
		cmp	ax, 1
		sbb	ax, ax
		and	ax, 3
		mov	dx, ax
		add	ax, es:[bx+10h]
		add	dx, es:[bx+12h]
		mov	[bp+var_4], dx
		add	ax, es:[bx+48h]
		mov	[bp+var_6], ax
		add	dx, es:[bx+46h]
		test	cl, 2
		jz	short loc_548E
		mov	[bp+var_12], 10h
		jmp	short loc_54A9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_548E:				; CODE XREF: sub_53FC+88j
		les	bx, [bp+var_C]
		mov	si, es:[bx+4]
		mov	ax, si
		shl	si, 1
		add	si, ax
		shl	si, 2
		les	bx, es:[bx+0Ch]
		mov	ax, es:[bx+si+3Eh]
		mov	[bp+var_12], ax

loc_54A9:				; CODE XREF: sub_53FC+8Fj
		mov	ax, [bp+var_16]
		les	bx, [bp+var_C]
		sub	ax, es:[bx]
		inc	ax
		cmp	[bp+var_1A], 0
		jz	short loc_5500
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		inc	ax
		inc	ax
		push	ax
		mov	ax, es
		les	si, [bp+arg_0]
		push	word ptr es:[si+10h]
		push	word ptr es:[si+12h]
		push	word ptr es:[si+14h]
		mov	cl, es:[si+3Ch]
		push	cx
		mov	cl, es:[si+3Eh]
		push	cx
		push	0
		push	0
		mov	es, ax
		mov	dx, es:[bx]
		add	dx, [bp+var_4]
		dec	dx
		mov	ax, [bp+var_6]
		dec	ax
		mov	bx, [bp+var_12]
		inc	bx
		inc	bx
		call	sub_371A

loc_5500:				; CODE XREF: sub_53FC+BBj
					; sub_53FC+235j
		mov	ax, word ptr [bp+var_C+2]
		or	ax, word ptr [bp+var_C]
		jnz	short loc_550B
		jmp	loc_5634
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_550B:				; CODE XREF: sub_53FC+10Aj
		les	bx, [bp+arg_0]
		test	byte ptr es:[bx+0Ah], 2
		jz	short loc_5534
		les	bx, [bp+var_C]
		mov	ax, es:[bx]
		add	ax, [bp+var_4]
		push	ax
		push	10h
		push	64h ; 'd'
		mov	ax, es:[bx+4]
		sub	dx, dx
		mov	bx, [bp+var_6]
		call	nullsub_5
		jmp	short loc_5556
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_5534:				; CODE XREF: sub_53FC+117j
		les	bx, [bp+var_C]
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch]
		mov	ax, es:[bx]
		add	ax, [bp+var_4]
		push	ax
		mov	ax, es:[bx+4]
		lea	bx, word_19964
		mov	dx, [bp+var_6]
		call	sub_D8F0

loc_5556:				; CODE XREF: sub_53FC+135j
		mov	ax, word ptr [bp+var_C]
		mov	dx, word ptr [bp+var_C+2]
		les	bx, [bp+arg_0]
		cmp	es:[bx+50h], ax
		jnz	short loc_55B5
		cmp	es:[bx+52h], dx
		jnz	short loc_55B5
		cmp	[bp+var_18], 0
		jz	short loc_55B5
		test	byte ptr es:[bx+0Ah], 80h
		jz	short loc_55B5
		mov	cx, es:[bx+66h]
		or	cx, es:[bx+64h]
		jz	short loc_55B5
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		mov	es, dx
		mov	bx, ax
		mov	ax, es:[bx]
		add	ax, [bp+var_4]
		mov	cx, ax
		add	ax, 10h
		push	ax
		push	0Fh
		mov	ax, [bp+var_6]
		mov	bx, ax
		add	bx, 10h
		dec	ax
		mov	dx, cx
		dec	dx
		call	sub_C86C

loc_55B5:				; CODE XREF: sub_53FC+167j
					; sub_53FC+16Dj ...
		cmp	[bp+var_1C], 0
		jz	short loc_5620
		les	bx, [bp+var_C]
		mov	ax, es:[bx+0Ah]
		or	ax, es:[bx+8]
		jz	short loc_5620
		les	si, [bp+arg_0]
		mov	ax, es:[si+46h]
		add	ax, es:[si+2Eh]
		add	ax, es:[si+32h]
		add	ax, [bp+var_6]
		mov	[bp+var_E], ax
		push	word ptr es:[si+82h]
		push	word ptr es:[si+80h]
		call	sub_42F4
		add	sp, 4
		sar	ax, 1
		les	bx, [bp+var_C]
		mov	cx, es:[bx+2]
		sub	cx, es:[bx]
		sar	cx, 1
		sub	cx, ax
		add	cx, es:[bx]
		add	cx, [bp+var_4]
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		add	ax, 74h	; 't'
		push	dx
		push	ax
		push	word ptr es:[bx+0Ah]
		push	word ptr es:[bx+8]
		mov	ax, [bp+var_E]
		mov	dx, cx
		sub	bx, bx
		call	sub_3916	; ­¥â á¨¬¢.¨¬¥­¨

loc_5620:				; CODE XREF: sub_53FC+1BDj
					; sub_53FC+1CAj
		les	bx, [bp+var_C]
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]
		mov	word ptr [bp+var_C], ax
		mov	word ptr [bp+var_C+2], dx
		jmp	loc_5500
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5634:				; CODE XREF: sub_53FC+10Cj
		cmp	[bp+var_1A], 0
		jz	short loc_5650
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_4E56
		add	sp, 4
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		call	sub_4E1A

loc_5650:				; CODE XREF: sub_53FC+1Bj
					; sub_53FC+23Cj
		pop	si
		leave
		retn	4
sub_53FC	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_5656	proc far		; CODE XREF: sub_586C+5Ep

var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h

		enter	18h, 0
		push	di
		push	si
		mov	[bp+var_10], 0
		mov	ax, word ptr [bp+arg_0+2]
		or	ax, word ptr [bp+arg_0]
		jz	short loc_566E
		mov	[bp+var_10], 1

loc_566E:				; CODE XREF: sub_5656+11j
		cmp	[bp+var_10], 0
		jz	short loc_568C
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+10h]
		mov	[bp+var_A], ax
		mov	ax, es:[bx+12h]
		mov	[bp+var_E], ax
		mov	ax, es:[bx+14h]
		jmp	short loc_569B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_568C:				; CODE XREF: sub_5656+1Cj
		mov	ax, [bp+arg_4]
		mov	[bp+var_A], ax
		mov	ax, [bp+arg_6]
		mov	[bp+var_E], ax
		mov	ax, [bp+arg_8]

loc_569B:				; CODE XREF: sub_5656+33j
		mov	[bp+var_C], ax
		mov	ax, word ptr [bp+arg_0+2]
		or	ax, word ptr [bp+arg_0]
		jz	short loc_56B3
		les	bx, [bp+arg_0]
		test	byte ptr es:[bx+0Ah], 10h
		jz	short loc_56B3
		jmp	loc_57A2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_56B3:				; CODE XREF: sub_5656+4Ej sub_5656+58j
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		mov	ax, [bp+arg_A]
		add	ax, [bp+arg_6]
		mov	cx, ax
		dec	ax
		push	ax
		push	0
		mov	ax, [bp+arg_4]
		mov	bx, [bp+arg_8]
		add	bx, ax
		mov	dx, bx
		lea	bx, [bx-1]
		mov	si, dx
		mov	dx, [bp+arg_6]
		mov	di, cx
		call	sub_C86C
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		lea	ax, [di-2]
		push	ax
		mov	al, byte ptr word_163B4
		push	ax
		lea	bx, [si-2]
		mov	ax, [bp+arg_4]
		inc	ax
		mov	dx, [bp+arg_6]
		inc	dx
		call	sub_C86C
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		mov	al, byte ptr word_163B8
		push	ax
		mov	ax, [bp+arg_4]
		inc	ax
		inc	ax
		lea	bx, [di-3]
		mov	dx, [bp+arg_6]
		inc	dx
		inc	dx
		mov	di, ax
		mov	[bp+var_12], dx
		mov	[bp+var_14], bx
		call	sub_C800
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		mov	al, byte ptr word_163B6
		push	ax
		lea	ax, [si-3]
		mov	dx, [bp+var_12]
		mov	bx, [bp+var_14]
		mov	si, ax
		call	sub_C800
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		mov	al, byte ptr word_163B6
		push	ax
		mov	dx, si
		mov	ax, di
		mov	bx, [bp+var_12]
		call	sub_C796
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		mov	al, byte ptr word_163B8
		push	ax
		mov	ax, di
		mov	dx, si
		mov	bx, [bp+var_14]
		call	sub_C796

loc_57A2:				; CODE XREF: sub_5656+5Aj
		cmp	[bp+var_10], 0
		jz	short loc_57BC
		les	bx, [bp+arg_0]
		mov	al, es:[bx+0Ah]
		and	ax, 10h
		cmp	ax, 1
		sbb	ax, ax
		and	ax, 3
		jmp	short loc_57BF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_57BC:				; CODE XREF: sub_5656+150j
		mov	ax, 3

loc_57BF:				; CODE XREF: sub_5656+164j
		add	ax, [bp+arg_4]
		mov	[bp+var_2], ax
		cmp	[bp+var_10], 0
		jz	short loc_57E0
		les	bx, [bp+arg_0]
		mov	al, es:[bx+0Ah]
		and	ax, 10h
		cmp	ax, 1
		sbb	ax, ax
		and	ax, 3
		jmp	short loc_57E3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_57E0:				; CODE XREF: sub_5656+173j
		mov	ax, 3

loc_57E3:				; CODE XREF: sub_5656+187j
		add	ax, [bp+arg_6]
		mov	[bp+var_4], ax
		cmp	[bp+var_10], 0
		jz	short loc_5804
		les	bx, [bp+arg_0]
		mov	al, es:[bx+0Ah]
		and	ax, 10h
		cmp	ax, 1
		sbb	ax, ax
		and	ax, 3
		jmp	short loc_5807
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_5804:				; CODE XREF: sub_5656+197j
		mov	ax, 3

loc_5807:				; CODE XREF: sub_5656+1ABj
		shl	ax, 1
		sub	ax, [bp+arg_8]
		neg	ax
		mov	[bp+var_6], ax
		cmp	[bp+var_10], 0
		jz	short loc_582C
		les	bx, [bp+arg_0]
		mov	al, es:[bx+0Ah]
		and	ax, 10h
		cmp	ax, 1
		sbb	ax, ax
		and	ax, 3
		jmp	short loc_582F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_582C:				; CODE XREF: sub_5656+1BFj
		mov	ax, 3

loc_582F:				; CODE XREF: sub_5656+1D3j
		shl	ax, 1
		sub	ax, [bp+arg_A]
		neg	ax
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		push	ax
		push	[bp+var_A]
		push	[bp+var_E]
		push	[bp+var_C]
		mov	al, byte ptr word_163AC
		push	ax
		mov	al, byte ptr word_163AE
		push	ax
		push	0
		push	0
		mov	ax, [bp+var_2]
		mov	dx, [bp+var_4]
		mov	bx, [bp+var_6]
		call	sub_371A
		pop	si
		pop	di
		leave
		retf
sub_5656	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_586C	proc far		; CODE XREF: sub_595E+1BDp
					; sub_595E+6AFp

var_5E		= word ptr -5Eh
var_5C		= word ptr -5Ch
var_5A		= word ptr -5Ah
var_58		= word ptr -58h
var_56		= word ptr -56h
arg_0		= dword	ptr  6

		enter	5Eh, 0
		mov	[bp+var_56], 1
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		call	sub_48A4	; ­¥â á¨¬¢(r)"ì­.¨¬¥­¨
		or	ax, ax
		jz	short loc_5885
		jmp	loc_5936
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5885:				; CODE XREF: sub_586C+14j
		mov	word_163D2, ax	; popup_hiliting
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+10h]
		mov	[bp+var_58], ax
		mov	ax, es:[bx+12h]
		mov	[bp+var_5A], ax
		mov	ax, es:[bx+14h]
		mov	[bp+var_5C], ax
		mov	ax, es:[bx+16h]
		mov	[bp+var_5E], ax
		cmp	word_163CC, 0	; popup_indian
		jl	short loc_58B7	; ¥á"¨ ¬¥­ìè¥,â.¥.(r)âà¨æ â¥"ì­(r)¥
		push	es
		push	bx
		push	cs
		call	near ptr sub_4EC6
		add	sp, 4

loc_58B7:				; CODE XREF: sub_586C+40j
		push	[bp+var_5E]
		push	[bp+var_5C]
		push	[bp+var_5A]
		push	[bp+var_58]
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_5656 ; ­¥â	á¨¬¢.¨¬¥­¨,¢ë§ë¢ ¥âáï â(r)"ìª(r) §¤¥áì
		add	sp, 0Ch
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		mov	ax, 1
		cwd
		mov	bx, ax
		call	sub_53FC	; ­¥â á¨¬¢.¨¬¥­¨
		mov	word_163D2, 0	; popup_hiliting
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0] ; __int32
		mov	ax, 1
		call	sub_4576	; ­¥â á¨¬¢.¨¬¥­¨
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		sub	ax, ax
		call	sub_4F5A
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0] ; __int32
		sub	ax, ax
		call	sub_51F2	; ­¥â á¨¬¢.¨¬¥­¨
		cmp	word_163CC, 0	; popup_indian
		jge	short loc_591B	; ¥á"¨ ¡(r)"ìè¥ ¨"¨ à ¢­(r)
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_4EC6 ; ­¥â	á¨¬¢.¨¬¥­¨
		add	sp, 4

loc_591B:				; CODE XREF: sub_586C+A0j
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_4E56
		add	sp, 4
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0] ; void _far*
		call	sub_4E1A
		mov	[bp+var_56], 0

loc_5936:				; CODE XREF: sub_586C+16j
		mov	ax, [bp+var_56]
		leave
		retf
sub_586C	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_593C	proc far		; CODE XREF: sub_595E+22Dp
					; sub_595E+322p ...

arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp
		mov	bp, sp
		mov	ax, [bp+arg_4]
		mov	dx, [bp+arg_6]
		les	bx, [bp+arg_0]
		mov	es:[bx+50h], ax
		mov	es:[bx+52h], dx
		push	es
		push	bx
		sub	ax, ax
		mov	dx, 1
		mov	bx, dx
		call	sub_53FC
		leave
		retf
sub_593C	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_595E	proc far		; CODE XREF: sub_56A+17AP sub_6AA8+1Cp ...

var_38		= word ptr -38h
var_36		= word ptr -36h
var_34		= word ptr -34h
var_32		= word ptr -32h
var_30		= dword	ptr -30h
var_2C		= word ptr -2Ch
var_2A		= word ptr -2Ah
var_28		= word ptr -28h
var_26		= word ptr -26h
var_24		= word ptr -24h
var_22		= word ptr -22h
var_20		= word ptr -20h
var_1E		= dword	ptr -1Eh
var_1A		= byte ptr -1Ah
var_18		= word ptr -18h
var_16		= dword	ptr -16h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= dword	ptr -6
var_2		= word ptr -2
arg_0		= dword	ptr  6

		enter	38h, 0		; äã­ªæ¨ï @popup_exec
		push	si
		mov	[bp+var_C], 1
		cmp	word_163CC, 7	; @popup_indian	=-1 ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		jle	short loc_5974	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		mov	ax, 1
		jmp	short loc_5976
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5974:				; CODE XREF: sub_595E+Fj
		sub	ax, ax

loc_5976:				; CODE XREF: sub_595E+14j
		mov	[bp+var_20], ax
		sub	ax, ax
		mov	[bp+var_2], ax
		mov	word_163D8, ax	; popup_help_me
		les	bx, [bp+arg_0]
		test	byte ptr es:[bx+0Ah], 10h
		jz	short loc_5994	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		mov	word_163FA, 1	; orig_flag
		jmp	short loc_5997
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_5994:				; CODE XREF: sub_595E+2Bj
		mov	word_163FA, ax	; orig_flag

loc_5997:				; CODE XREF: sub_595E+33j
		mov	word_163D2, ax	; popup_hiliting
		call	sub_8420	; text_close
		jmp	short loc_59A7	; ¯¥à¥å(r)¤ áî¤  ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_59A2:				; CODE XREF: sub_595E+50j
		call	sub_BB08	; @keys_get

loc_59A7:				; CODE XREF: sub_595E+41j
		call	sub_BAF4	; @keys_any
		or	ax, ax
		jnz	short loc_59A2	; ­¥â ¯¥à¥å(r)¤  ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		les	bx, [bp+arg_0]
		test	byte ptr es:[bx+0Ah], 4
		jz	short loc_59E8	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		mov	[bp+var_22], ax
		jmp	short loc_59DC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_59C0:				; CODE XREF: sub_595E+88j
		mov	cx, ax
		sub	ch, ch		; int
		mov	dx, 1
		shl	dx, cl
		and	dx, word_163C4	; int popup_checkbox
		push	dx
		inc	ax
		push	ax
		push	es
		push	bx
		push	cs
		call	near ptr sub_3D98
		add	sp, 8
		inc	[bp+var_22]

loc_59DC:				; CODE XREF: sub_595E+5Fj
		mov	ax, [bp+var_22]
		les	bx, [bp+arg_0]
		cmp	es:[bx+2], ax
		jg	short loc_59C0

loc_59E8:				; CODE XREF: sub_595E+5Aj
		mov	word ptr es:[bx], 0
		push	word ptr es:[bx+82h]
		push	word ptr es:[bx+80h]
		call	sub_42F4
		add	sp, 4
		les	bx, [bp+arg_0]
		add	ax, es:[bx+46h]
		mov	[bp+var_8], ax
		cmp	word_163CC, 0
		jl	short loc_5A13	; ¯¥à¥å(r)¤ áî¤  ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		push	es
		push	bx
		call	sub_3420

loc_5A13:				; CODE XREF: sub_595E+AEj
		cmp	word_163CE, 0	; popup_messenger =-1 ¯¥à¥¤ 1(r)(c)	§ áâ ¢ª(r)(c)
		jl	short loc_5A23	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		call	sub_34A0

loc_5A23:				; CODE XREF: sub_595E+BAj
		cmp	word_163D0, 0	; popup_foreign	=-1 ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		jl	short loc_5A33	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		call	sub_34CA

loc_5A33:				; CODE XREF: sub_595E+CAj
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0] ; __int32
		call	sub_34F4	; á¢ï§ ­(r) á ¯ "¨âà(r)(c)
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+6Ah]
		or	ax, es:[bx+68h]
		jz	short loc_5A69	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		mov	ax, es:[bx+68h]
		mov	dx, es:[bx+6Ah]
		mov	word ptr [bp+var_16], ax
		mov	word ptr [bp+var_16+2],	dx
		mov	es, dx
		mov	bx, ax
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]
		mov	word ptr [bp+var_1E], ax
		mov	word ptr [bp+var_1E+2],	dx

loc_5A69:				; CODE XREF: sub_595E+E9j
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		call	sub_48A4	; ­¥â á¨¬¢(r)"ì­.¨¬¥­¨
		or	ax, ax
		jz	short loc_5A79	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		jmp	loc_63F6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5A79:				; CODE XREF: sub_595E+116j
		cmp	word_163DE, ax	; king_active =0 ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		jz	short loc_5AAB	; ¯¥à¥å(r)¤ áî¤  ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964	; scr_work
		push	word_19972
		push	word_19970
		push	word_1996E
		push	word_1996C	; scr_orig
		push	0C8h ; 'È'
		cwd
		mov	bx, 140h
		call	sub_C4C0	; @buffer_rect_copy

loc_5AAB:				; CODE XREF: sub_595E+11Fj
		les	bx, [bp+arg_0]
		test	byte ptr es:[bx+0Ah], 8
		jnz	short loc_5AD5	; ­¥â ¯¥à¥å(r)¤  ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		push	word ptr es:[bx+18h]
		push	word ptr es:[bx+1Ah]
		push	word ptr es:[bx+1Ch]
		push	word ptr es:[bx+1Eh]
		lea	bx, word_19964	; scr_work
		mov	ax, 0FFF8h	; -8 çâ(r) "¨
		cwd			; dx:ax=-8
		call	sub_C9DE	; @buffer_preserve
		mov	[bp+var_18], ax

loc_5AD5:				; CODE XREF: sub_595E+155j
		mov	[bp+var_A], 1
		call	sub_D186	; @timer_read
		mov	[bp+var_10], ax
		mov	[bp+var_E], dx
		call	sub_C23A	; @mouse_init_cycle
		cmp	word_163D4, 0	; popup_pal
		jz	short loc_5B0E	; ­¥â ¯¥à¥å(r)¤  ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		mov	ax, word_19AD4	; cycling_active
		mov	[bp+var_24], ax
		mov	word_19AD4, 0	; cycling_active
		push	0A000h
		push	0FC00h
		call	sub_D70A	; @mcga_setpal
		mov	ax, [bp+var_24]
		mov	word_19AD4, ax

loc_5B0E:				; CODE XREF: sub_595E+191j
		les	bx, [bp+arg_0]
		test	byte ptr es:[bx+0Ah], 20h
		jz	short loc_5B24	; áî¤  ¯¥à¥å(r)¤¨¬ ­¥¯(r)áà­(r) ¯¥à¥¤	1(r)(c) § áâ ¢ª(r)(c)
		push	es
		push	bx
		push	cs
		call	near ptr sub_586C ; ¢ â.ç.­¥¯(r)áà.à¥­¤¥à¥à
		add	sp, 4
		jmp	loc_63F6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5B24:				; CODE XREF: sub_595E+1B8j
					; sub_595E+9BAj
		call	nullsub_3	; check_music
		sub	ax, ax
		call	sub_C252	; @mouse_begin_cycle
		mov	[bp+var_2C], 0
		cmp	word_165A2, 0	; mouse_any_stroke
		jnz	short loc_5B3F
		jmp	loc_5CA8	; áî¤  ¯¥à¥å(r)¤¨¬ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5B3F:				; CODE XREF: sub_595E+1DCj
		cmp	word_1659C, 0	; mouse_changed
		jnz	short loc_5B49
		jmp	loc_5CA8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5B49:				; CODE XREF: sub_595E+1E6j
		mov	ax, word_16594	; mouse_x
		les	bx, [bp+arg_0]
		cmp	es:[bx+10h], ax
		jg	short loc_5B77
		mov	cx, word_16596	; mouse_y
		cmp	es:[bx+12h], cx
		jg	short loc_5B77
		mov	dx, es:[bx+14h]
		add	dx, es:[bx+10h]
		cmp	dx, ax
		jle	short loc_5B77
		mov	ax, es:[bx+16h]
		add	ax, es:[bx+12h]
		cmp	ax, cx
		jg	short loc_5B94

loc_5B77:				; CODE XREF: sub_595E+1F5j
					; sub_595E+1FFj ...
		mov	[bp+var_2], 1
		sub	ax, ax
		mov	es:[bx+4Eh], ax
		mov	es:[bx+4Ch], ax
		push	ax
		push	ax
		push	es
		push	bx
		push	cs
		call	near ptr sub_593C
		add	sp, 8
		jmp	loc_5CA8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5B94:				; CODE XREF: sub_595E+217j
		mov	ax, es:[bx+56h]
		or	ax, es:[bx+54h]
		jz	short loc_5C1A
		mov	ax, es:[bx+54h]
		mov	dx, es:[bx+56h]
		mov	word ptr [bp+var_30], ax
		mov	word ptr [bp+var_30+2],	dx
		mov	ax, es:[bx+26h]
		mov	[bp+var_12], ax
		mov	[bp+var_26], 0

loc_5BB8:				; CODE XREF: sub_595E+2B5j
		mov	ax, dx
		or	ax, word ptr [bp+var_30]
		jnz	short loc_5BC2
		jmp	loc_5C9D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5BC2:				; CODE XREF: sub_595E+25Fj
		mov	ax, [bp+var_12]
		dec	ax
		cmp	ax, word_16596
		jg	short loc_5BF8
		mov	ax, [bp+var_8]
		add	ax, [bp+var_12]
		dec	ax
		cmp	ax, word_16596
		jle	short loc_5BF8
		les	bx, [bp+var_30]
		test	byte ptr es:[bx], 1
		jnz	short loc_5BF8
		les	si, [bp+arg_0]
		mov	ax, bx
		mov	es:[si+4Ch], ax
		mov	es:[si+4Eh], dx
		mov	ax, 1
		mov	[bp+var_26], ax
		mov	[bp+var_2], ax

loc_5BF8:				; CODE XREF: sub_595E+26Cj
					; sub_595E+279j ...
		mov	ax, [bp+var_8]
		add	[bp+var_12], ax
		les	bx, [bp+var_30]
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]
		mov	word ptr [bp+var_30], ax
		mov	word ptr [bp+var_30+2],	dx
		cmp	[bp+var_26], 0
		jz	short loc_5BB8
		jmp	loc_5C9D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 2 dup(90h)
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5C1A:				; CODE XREF: sub_595E+23Ej
		mov	ax, es:[bx+5Eh]
		or	ax, es:[bx+5Ch]
		jnz	short loc_5C27
		jmp	loc_5CA8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5C27:				; CODE XREF: sub_595E+2C4j
		mov	ax, es:[bx+5Ch]
		mov	dx, es:[bx+5Eh]
		mov	word ptr [bp+var_16], ax
		mov	word ptr [bp+var_16+2],	dx
		mov	[bp+var_26], 0

loc_5C3A:				; CODE XREF: sub_595E+33Dj
		mov	ax, dx
		or	ax, word ptr [bp+var_16]
		jz	short loc_5C9D
		les	bx, [bp+arg_0]
		mov	al, es:[bx+0Ah]
		and	ax, 10h
		cmp	ax, 1
		sbb	ax, ax
		and	ax, 3
		mov	cx, ax
		add	ax, es:[bx+12h]
		les	si, [bp+var_16]
		add	ax, es:[si]
		cmp	ax, word_16596
		jg	short loc_5C86
		add	cx, es:[si+2]
		mov	es, word ptr [bp+arg_0+2]
		add	cx, es:[bx+12h]
		cmp	cx, word_16596
		jle	short loc_5C86
		mov	[bp+var_26], 1
		push	dx
		push	si
		push	es
		push	bx
		push	cs
		call	near ptr sub_593C
		add	sp, 8

loc_5C86:				; CODE XREF: sub_595E+305j
					; sub_595E+316j
		les	bx, [bp+var_16]
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]
		mov	word ptr [bp+var_16], ax
		mov	word ptr [bp+var_16+2],	dx
		cmp	[bp+var_26], 0
		jz	short loc_5C3A

loc_5C9D:				; CODE XREF: sub_595E+261j
					; sub_595E+2B7j ...
		cmp	[bp+var_26], 0
		jnz	short loc_5CA8
		mov	[bp+var_2C], 1

loc_5CA8:				; CODE XREF: sub_595E+1DEj
					; sub_595E+1E8j ...
		cmp	[bp+var_A], 0
		jnz	short loc_5CB1	; áî¤  ¯¥à¥å(r)¤ ­¥¯(r)áà­(r)	¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5CB1:				; CODE XREF: sub_595E+34Ej
		call	sub_BAF4	; @keys_any
		or	ax, ax
		jnz	short loc_5CBD
		jmp	loc_5F82	; áî¤  ¯¥à¥å(r)¤ ­¥¯(r)áà-­(r) ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5CBD:				; CODE XREF: sub_595E+35Aj
		call	sub_BB08	; @keys_get
		mov	[bp+var_36], ax
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+62h]
		or	ax, es:[bx+60h]
		jnz	short loc_5CD5
		jmp	loc_5DF8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5CD5:				; CODE XREF: sub_595E+372j
		mov	ax, es:[bx+60h]
		mov	dx, es:[bx+62h]	; int
		mov	word ptr [bp+var_6], ax
		mov	word ptr [bp+var_6+2], dx
		mov	ax, [bp+var_36]
		sub	ax, 8
		jnz	short loc_5CEE
		jmp	loc_5D90
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5CEE:				; CODE XREF: sub_595E+38Bj
		sub	ax, 5
		jnz	short loc_5CF6
		jmp	loc_5F7D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5CF6:				; CODE XREF: sub_595E+393j
		sub	ax, 0Eh
		jnz	short loc_5CFE
		jmp	loc_5F78
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5CFE:				; CODE XREF: sub_595E+39Bj
		sub	ax, 120h
		jz	short loc_5D78
		sub	ax, 18h
		jnz	short loc_5D0B
		jmp	loc_5DE2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5D0B:				; CODE XREF: sub_595E+3A8j
		cmp	[bp+var_36], 100h
		jl	short loc_5D15
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5D15:				; CODE XREF: sub_595E+3B2j
		mov	bx, [bp+var_36]
		test	byte ptr [bx+45A9h], 57h
		jnz	short loc_5D22
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5D22:				; CODE XREF: sub_595E+3BFj
		les	bx, [bp+var_6]
		test	byte ptr es:[bx], 80h
		jz	short loc_5D3A
		les	si, es:[bx+0Ch]
		mov	byte ptr es:[si], 0
		les	bx, [bp+var_6]
		and	byte ptr es:[bx], 7Fh

loc_5D3A:				; CODE XREF: sub_595E+3CBj
		mov	al, byte ptr [bp+var_36]
		mov	[bp+var_1A], al
		mov	byte ptr [bp-19h], 0
		les	bx, [bp+var_6]
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch] ; char *
		call	_strlen_0
		add	sp, 4
		les	bx, [bp+var_6]
		cmp	ax, es:[bx+6]
		jnb	short loc_5DD2
		lea	ax, [bp+var_1A]
		push	ss
		push	ax		; char *
		push	word ptr es:[bx+0Eh] ; char *
		push	word ptr es:[bx+0Ch] ; char *
		call	_strcat_0
		add	sp, 8
		jmp	short loc_5DD2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_5D78:				; CODE XREF: sub_595E+3A3j
		cmp	word_163D6, 0
		jnz	short loc_5D82
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5D82:				; CODE XREF: sub_595E+41Fj
		mov	[bp+var_A], 0

loc_5D87:				; CODE XREF: sub_595E:loc_614Aj
		mov	word_163D8, 1
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5D90:				; CODE XREF: sub_595E+38Dj
		les	bx, [bp+var_6]
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch] ; char *
		call	_strlen_0
		add	sp, 4
		or	ax, ax
		jz	short loc_5DCB
		les	bx, [bp+var_6]
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch] ; char *
		call	_strlen_0
		add	sp, 4
		mov	[bp+var_38], ax
		les	bx, [bp+var_6]
		les	bx, es:[bx+0Ch]
		mov	si, ax
		mov	byte ptr es:[bx+si-1], 0

loc_5DCB:				; CODE XREF: sub_595E+447j
					; sub_595E+498j
		les	bx, [bp+var_6]
		and	byte ptr es:[bx], 7Fh

loc_5DD2:				; CODE XREF: sub_595E+400j
					; sub_595E+417j
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0] ; __int32
		mov	ax, 1
		call	sub_51F2
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_5DE2:				; CODE XREF: sub_595E+3AAj
		les	bx, [bp+var_6]
		test	byte ptr es:[bx], 80h
		jnz	short loc_5DEE
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5DEE:				; CODE XREF: sub_595E+48Bj
		les	si, es:[bx+0Ch]
		mov	byte ptr es:[si], 0
		jmp	short loc_5DCB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5DF8:				; CODE XREF: sub_595E+374j
		cmp	[bp+var_36], 100h
		jge	short loc_5E0D
		mov	bx, [bp+var_36]
		test	byte ptr [bx+45A9h], 2
		jz	short loc_5E0D
		sub	[bp+var_36], 20h ; ' '

loc_5E0D:				; CODE XREF: sub_595E+49Fj
					; sub_595E+4A9j
		mov	bx, word ptr [bp+arg_0]
		mov	ax, es:[bx+56h]
		or	ax, es:[bx+54h]
		jz	short loc_5E1D
		jmp	loc_5F58
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5E1D:				; CODE XREF: sub_595E+4BAj
		mov	ax, [bp+var_36]
		sub	ax, 1Bh
		jnz	short loc_5E28
		jmp	loc_5F78
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5E28:				; CODE XREF: sub_595E+4C5j
		sub	ax, 12Dh
		jnz	short loc_5E30
		jmp	loc_5ECC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5E30:				; CODE XREF: sub_595E+4CDj
		sub	ax, 8
		jz	short loc_5E72
		or	byte ptr es:[bx+0Ah], 80h
		mov	ax, es:[bx+52h]
		or	ax, es:[bx+50h]
		jnz	short loc_5E47
		jmp	loc_5F7D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5E47:				; CODE XREF: sub_595E+4E4j
		test	byte ptr es:[bx+0Ah], 2
		jnz	short loc_5E51
		jmp	loc_5F7D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5E51:				; CODE XREF: sub_595E+4EEj
		les	si, es:[bx+50h]
		mov	ax, es:[si+4]
		mov	[bp+var_28], ax
		imul	bx, ax,	1Ch
		cmp	byte ptr [bx+5226h], 0
		jnz	short loc_5E69
		jmp	loc_5F7D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5E69:				; CODE XREF: sub_595E+506j
		mov	byte ptr [bx+5226h], 0
		push	es
		push	si
		jmp	short loc_5EBC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5E72:				; CODE XREF: sub_595E+4D5j
		or	byte ptr es:[bx+0Ah], 80h
		mov	ax, es:[bx+5Eh]
		or	ax, es:[bx+5Ch]
		jnz	short loc_5E84
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5E84:				; CODE XREF: sub_595E+521j
		mov	ax, es:[bx+52h]
		or	ax, es:[bx+50h]
		jz	short loc_5EAA
		les	bx, [bp+arg_0]
		les	si, es:[bx+50h]
		mov	ax, es:[si+10h]
		mov	dx, es:[si+12h]
		mov	word ptr [bp+var_16], ax
		mov	word ptr [bp+var_16+2],	dx
		or	dx, ax
		jnz	short loc_5EB8
		mov	es, word ptr [bp+arg_0+2]

loc_5EAA:				; CODE XREF: sub_595E+52Ej
		mov	ax, es:[bx+5Ch]
		mov	dx, es:[bx+5Eh]
		mov	word ptr [bp+var_16], ax
		mov	word ptr [bp+var_16+2],	dx

loc_5EB8:				; CODE XREF: sub_595E+547j
		push	word ptr [bp+var_16+2]
		push	ax

loc_5EBC:				; CODE XREF: sub_595E+512j
					; sub_595E+5F7j
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_593C
		add	sp, 8
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5ECC:				; CODE XREF: sub_595E+4CFj
		or	byte ptr es:[bx+0Ah], 80h
		mov	ax, es:[bx+5Eh]
		or	ax, es:[bx+5Ch]
		jnz	short loc_5EDE
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5EDE:				; CODE XREF: sub_595E+57Bj
		mov	ax, es:[bx+52h]
		or	ax, es:[bx+50h]
		jz	short loc_5EFC
		mov	ax, es:[bx+50h]
		mov	dx, es:[bx+52h]
		cmp	es:[bx+5Ch], ax
		jnz	short loc_5F24
		cmp	es:[bx+5Eh], dx
		jnz	short loc_5F24

loc_5EFC:				; CODE XREF: sub_595E+588j
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+5Ch]
		mov	dx, es:[bx+5Eh]

loc_5F07:				; CODE XREF: sub_595E+5C4j
		mov	word ptr [bp+var_16], ax
		mov	word ptr [bp+var_16+2],	dx
		les	bx, [bp+var_16]
		mov	ax, es:[bx+12h]
		or	ax, es:[bx+10h]
		jz	short loc_5F4F
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]
		jmp	short loc_5F07
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5F24:				; CODE XREF: sub_595E+596j
					; sub_595E+59Cj
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+5Ch]
		mov	dx, es:[bx+5Eh]

loc_5F2F:				; CODE XREF: sub_595E+5E9j
					; sub_595E+5EFj
		mov	word ptr [bp+var_16], ax
		mov	word ptr [bp+var_16+2],	dx
		les	bx, [bp+var_16]
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]
		les	bx, [bp+arg_0]
		cmp	es:[bx+50h], ax
		jnz	short loc_5F2F
		cmp	es:[bx+52h], dx
		jnz	short loc_5F2F

loc_5F4F:				; CODE XREF: sub_595E+5BAj
		push	word ptr [bp+var_16+2]
		push	word ptr [bp+var_16]
		jmp	loc_5EBC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5F58:				; CODE XREF: sub_595E+4BCj
		mov	ax, [bp+var_36]
		cmp	ax, 20h	; ' '
		jnz	short loc_5F63
		jmp	loc_60DA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5F63:				; CODE XREF: sub_595E+600j
		jle	short loc_5F68
		jmp	loc_61BC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5F68:				; CODE XREF: sub_595E:loc_5F63j
		sub	ax, 0Dh
		jnz	short loc_5F70
		jmp	loc_60DA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5F70:				; CODE XREF: sub_595E+60Dj
		sub	ax, 0Eh
		jz	short loc_5F78
		jmp	loc_61D4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_5F78:				; CODE XREF: sub_595E+39Dj
					; sub_595E+4C7j ...
		mov	word ptr es:[bx], 0FFFFh

loc_5F7D:				; CODE XREF: sub_595E+395j
					; sub_595E+4E6j ...
		mov	[bp+var_A], 0

loc_5F82:				; CODE XREF: sub_595E+350j
					; sub_595E+35Cj ...
		cmp	word_163DE, 0	; king_active
		jz	short loc_5FFD	; ¯¥à¥å(r)¤ áî¤  ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		mov	ax, word ptr [bp+var_1E+2]
		or	ax, word ptr [bp+var_1E]
		jz	short loc_5FFD
		call	sub_D186	; @timer_read
		cmp	dx, word_1ACF8	; king_clock+2
		jl	short loc_5FFD
		jg	short loc_5FA4
		cmp	ax, word_1ACF6	; king_clock
		jb	short loc_5FFD

loc_5FA4:				; CODE XREF: sub_595E+63Ej
		mov	ax, word_1ACEE	; king_frame
		les	bx, [bp+var_1E]
		les	bx, es:[bx+0Ch]
		cmp	es:[bx+4], ax
		jle	short loc_5FFD
		inc	word_1ACEE
		push	word_19972
		push	word_19970
		push	word_1996E
		push	word_1996C
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		push	0C8h ; 'È'
		sub	ax, ax
		cwd
		mov	bx, 140h
		call	sub_C4C0	; @buffer_rect_copy
		mov	[bp+var_C], 1
		call	sub_D186	; @timer_read
		add	ax, 0Ah
		adc	dx, 0
		mov	word_1ACF6, ax	; king_clock
		mov	word_1ACF8, dx

loc_5FFD:				; CODE XREF: sub_595E+629j
					; sub_595E+631j ...
		cmp	[bp+var_C], 0
		jnz	short loc_6006	; ¯¥à¥å(r)¤ áî¤  ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		jmp	loc_61E4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6006:				; CODE XREF: sub_595E+6A3j
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_586C ; ¨¬¥­­(r) §¤¥áì ­¥¯(r)áà-­(r) à¥­¤¥à¨âáï 1ï § áâ ¢ª 
		add	sp, 4
		jmp	loc_61F6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6016:				; CODE XREF: sub_595E+873j
		mov	[bp+var_2A], 0

loc_601B:				; CODE XREF: sub_595E+716j
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+4Eh]
		or	ax, es:[bx+4Ch]
		jz	short loc_6040
		mov	ax, es
		les	si, es:[bx+4Ch]
		mov	cx, es:[si+10h]
		mov	dx, es:[si+12h]
		mov	es, ax
		mov	es:[bx+4Ch], cx
		mov	es:[bx+4Eh], dx

loc_6040:				; CODE XREF: sub_595E+6C8j
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+4Eh]
		or	ax, es:[bx+4Ch]
		jnz	short loc_6060
		mov	ax, es:[bx+54h]
		mov	dx, es:[bx+56h]
		mov	es:[bx+4Ch], ax
		mov	es:[bx+4Eh], dx
		inc	[bp+var_2A]

loc_6060:				; CODE XREF: sub_595E+6EDj
		les	bx, [bp+arg_0]
		les	bx, es:[bx+4Ch]
		test	byte ptr es:[bx], 1
		jnz	short loc_6070
		jmp	loc_6113
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6070:				; CODE XREF: sub_595E+70Dj
		cmp	[bp+var_2A], 2
		jl	short loc_601B
		jmp	loc_6113
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_607A:				; CODE XREF: sub_595E+86Bj
		mov	[bp+var_2A], 0

loc_607F:				; CODE XREF: sub_595E+777j
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+4Eh]
		or	ax, es:[bx+4Ch]
		jz	short loc_60A4
		mov	ax, es
		les	si, es:[bx+4Ch]
		mov	cx, es:[si+14h]
		mov	dx, es:[si+16h]
		mov	es, ax
		mov	es:[bx+4Ch], cx
		mov	es:[bx+4Eh], dx

loc_60A4:				; CODE XREF: sub_595E+72Cj
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+4Eh]
		or	ax, es:[bx+4Ch]
		jnz	short loc_60C4
		mov	ax, es:[bx+70h]
		mov	dx, es:[bx+72h]
		mov	es:[bx+4Ch], ax
		mov	es:[bx+4Eh], dx
		inc	[bp+var_2A]

loc_60C4:				; CODE XREF: sub_595E+751j
		les	bx, [bp+arg_0]
		les	bx, es:[bx+4Ch]
		test	byte ptr es:[bx], 1
		jz	short loc_6113
		cmp	[bp+var_2A], 2
		jl	short loc_607F
		jmp	short loc_6113
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_60DA:				; CODE XREF: sub_595E+602j
					; sub_595E+60Fj ...
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+4Eh]
		or	ax, es:[bx+4Ch]
		jnz	short loc_60EA
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_60EA:				; CODE XREF: sub_595E+787j
		test	byte ptr es:[bx+0Ah], 4
		jz	short loc_611C
		cmp	[bp+var_36], 0Dh
		jz	short loc_6108
		les	bx, es:[bx+4Ch]
		cmp	word ptr es:[bx+6], 1
		sbb	ax, ax
		neg	ax
		mov	es:[bx+6], ax

loc_6108:				; CODE XREF: sub_595E+797j
		cmp	[bp+var_36], 0Dh
		jnz	short loc_6113
		mov	[bp+var_A], 0

loc_6113:				; CODE XREF: sub_595E+70Fj
					; sub_595E+718j ...
		mov	[bp+var_2], 1
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_611C:				; CODE XREF: sub_595E+791j
		cmp	[bp+var_36], 13Bh
		jnz	short loc_612D
		cmp	word_163D6, 0
		jnz	short loc_612D
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_612D:				; CODE XREF: sub_595E+7C3j
					; sub_595E+7CAj
		les	si, es:[bx+4Ch]
		mov	ax, es:[si+4]
		mov	es, word ptr [bp+arg_0+2]
		mov	es:[bx], ax
		mov	[bp+var_A], 0
		cmp	[bp+var_36], 13Bh
		jz	short loc_614A
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_614A:				; CODE XREF: sub_595E+7E7j
		jmp	loc_5D87
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_614E:				; CODE XREF: sub_595E+81Ej
		mov	ax, word ptr [bp+var_30+2]
		or	ax, word ptr [bp+var_30]
		jz	short loc_617E
		mov	ax, [bp+var_36]
		les	bx, [bp+var_30]
		cmp	es:[bx+2], ax
		jnz	short loc_616A
		mov	[bp+var_26], 1
		jmp	short loc_6178
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_616A:				; CODE XREF: sub_595E+802j
		mov	ax, es:[bx+10h]
		mov	dx, es:[bx+12h]

loc_6172:				; CODE XREF: sub_595E+883j
		mov	word ptr [bp+var_30], ax
		mov	word ptr [bp+var_30+2],	dx

loc_6178:				; CODE XREF: sub_595E+809j
		cmp	[bp+var_26], 0
		jz	short loc_614E

loc_617E:				; CODE XREF: sub_595E+7F6j
		cmp	[bp+var_26], 0
		jnz	short loc_6187
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6187:				; CODE XREF: sub_595E+824j
		mov	ax, word ptr [bp+var_30]
		mov	dx, word ptr [bp+var_30+2]
		les	bx, [bp+arg_0]
		mov	es:[bx+4Ch], ax
		mov	es:[bx+4Eh], dx
		mov	[bp+var_2], 1
		test	byte ptr es:[bx+0Ah], 4
		jnz	short loc_61A7
		jmp	loc_5F7D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_61A7:				; CODE XREF: sub_595E+844j
		mov	es, dx
		mov	bx, ax
		cmp	word ptr es:[bx+6], 1
		sbb	ax, ax
		neg	ax
		mov	es:[bx+6], ax
		jmp	loc_5F82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_61BC:				; CODE XREF: sub_595E+607j
		sub	ax, 13Bh
		jnz	short loc_61C4
		jmp	loc_60DA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_61C4:				; CODE XREF: sub_595E+861j
		sub	ax, 0Dh
		jnz	short loc_61CC
		jmp	loc_607A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_61CC:				; CODE XREF: sub_595E+869j
		sub	ax, 8
		jnz	short loc_61D4
		jmp	loc_6016
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_61D4:				; CODE XREF: sub_595E+617j
					; sub_595E+871j
		mov	[bp+var_26], 0
		mov	ax, es:[bx+54h]
		mov	dx, es:[bx+56h]
		jmp	short loc_6172
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_61E4:				; CODE XREF: sub_595E+6A5j
		cmp	[bp+var_2], 0
		jz	short loc_61F6
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		mov	ax, 1
		call	sub_4F5A

loc_61F6:				; CODE XREF: sub_595E+6B5j
					; sub_595E+88Aj
		sub	ax, ax
		mov	[bp+var_C], ax
		mov	[bp+var_2], ax
		cmp	word_165A0, ax
		jz	short loc_6236
		cmp	[bp+var_2C], ax
		jnz	short loc_6236
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+56h]
		or	ax, es:[bx+54h]
		jz	short loc_628C
		mov	ax, es:[bx+4Eh]
		or	ax, es:[bx+4Ch]
		jnz	short loc_6227
		test	byte ptr es:[bx+0Ah], 1
		jz	short loc_6236

loc_6227:				; CODE XREF: sub_595E+8C0j
		mov	ax, es:[bx+4Eh]
		or	ax, es:[bx+4Ch]
		jnz	short loc_626C

loc_6231:				; CODE XREF: sub_595E+913j
					; sub_595E+936j ...
		mov	[bp+var_A], 0

loc_6236:				; CODE XREF: sub_595E+8A4j
					; sub_595E+8A9j ...
		cmp	word_165A0, 0
		jz	short loc_6257
		cmp	[bp+var_A], 0
		jnz	short loc_6257
		cmp	word_163D6, 0
		jz	short loc_6257
		cmp	word_16590, 0
		jz	short loc_6257
		mov	word_163D8, 1

loc_6257:				; CODE XREF: sub_595E+8DDj
					; sub_595E+8E3j ...
		cmp	[bp+var_A], 0
		jz	short loc_62D6
		cmp	word_1659A, 0
		jz	short loc_62D6
		mov	[bp+var_38], 1
		jmp	short loc_62DB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_626C:				; CODE XREF: sub_595E+8D1j
		test	byte ptr es:[bx+0Ah], 4
		jz	short loc_6231
		les	bx, es:[bx+4Ch]
		cmp	word ptr es:[bx+6], 1
		sbb	ax, ax
		neg	ax
		mov	es:[bx+6], ax
		mov	[bp+var_2], 1
		jmp	short loc_6236
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_628C:				; CODE XREF: sub_595E+8B6j
		mov	ax, es:[bx+5Eh]
		or	ax, es:[bx+5Ch]
		jz	short loc_6231
		mov	ax, es:[bx+52h]
		or	ax, es:[bx+50h]
		jz	short loc_6231
		test	byte ptr es:[bx+0Ah], 2
		jz	short loc_6231
		les	si, es:[bx+50h]
		mov	ax, es:[si+4]
		mov	[bp+var_28], ax
		imul	bx, ax,	1Ch
		cmp	byte ptr [bx+5226h], 0
		jnz	short loc_62BF
		jmp	loc_6231
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_62BF:				; CODE XREF: sub_595E+95Cj
		mov	byte ptr [bx+5226h], 0
		push	es
		push	si
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_593C
		add	sp, 8
		jmp	loc_6236
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_62D6:				; CODE XREF: sub_595E+8FDj
					; sub_595E+904j
		mov	[bp+var_38], 0

loc_62DB:				; CODE XREF: sub_595E+90Bj
		sub	ax, ax
		mov	dx, [bp+var_38]
		call	sub_C320
		cmp	word_15EFA, 0
		jz	short loc_6312
		call	sub_D186
		mov	[bp+var_34], ax
		mov	[bp+var_32], dx
		mov	cx, [bp+var_10]
		mov	bx, [bp+var_E]
		add	cx, 78h	; 'x'
		adc	bx, 0
		cmp	dx, bx
		jl	short loc_6312
		jg	short loc_630D
		cmp	ax, cx
		jb	short loc_6312

loc_630D:				; CODE XREF: sub_595E+9A9j
		mov	[bp+var_A], 0

loc_6312:				; CODE XREF: sub_595E+98Cj
					; sub_595E+9A7j ...
		cmp	[bp+var_A], 0
		jz	short loc_631B
		jmp	loc_5B24
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_631B:				; CODE XREF: sub_595E+9B8j
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+62h]
		or	ax, es:[bx+60h]
		jz	short loc_6342
		les	bx, es:[bx+60h]
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch] ; char *
		push	ds		; char *
		push	offset byte_1A9D4 ; char *
		call	_strcpy_0
		add	sp, 8
		jmp	short loc_6374
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6342:				; CODE XREF: sub_595E+9C8j
		cmp	word ptr es:[bx], 0
		jnz	short loc_6374
		mov	ax, es:[bx+4Eh]
		or	ax, es:[bx+4Ch]
		jz	short loc_635C
		les	si, es:[bx+4Ch]
		mov	ax, es:[si+4]
		jmp	short loc_636E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_635C:				; CODE XREF: sub_595E+9F2j
		mov	ax, es:[bx+52h]
		or	ax, es:[bx+50h]
		jz	short loc_6374
		les	si, es:[bx+50h]
		mov	ax, es:[si+6]

loc_636E:				; CODE XREF: sub_595E+9FCj
		mov	es, word ptr [bp+arg_0+2]
		mov	es:[bx], ax

loc_6374:				; CODE XREF: sub_595E+9E2j
					; sub_595E+9E8j ...
		les	bx, [bp+arg_0]
		test	byte ptr es:[bx+0Ah], 8
		jnz	short loc_639D
		push	word ptr es:[bx+18h]
		push	word ptr es:[bx+1Ah]
		push	word ptr es:[bx+1Ch]
		push	word ptr es:[bx+1Eh]
		lea	bx, word_19964
		mov	ax, [bp+var_18]
		mov	dx, 0FFFFh
		call	sub_CABC

loc_639D:				; CODE XREF: sub_595E+A1Ej
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+6Ah]
		or	ax, es:[bx+68h]
		jz	short loc_63ED
		cmp	word_163E0, 1
		jz	short loc_63C2
		les	bx, es:[bx+68h]
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch]
		call	sub_CFA0

loc_63C2:				; CODE XREF: sub_595E+A51j
		cmp	[bp+var_20], 0
		jz	short loc_63ED
		cmp	word_163E0, 0
		jnz	short loc_63ED
		les	bx, [bp+arg_0]
		les	bx, es:[bx+68h]
		les	bx, es:[bx+10h]
		mov	word ptr [bp+var_16], bx
		mov	word ptr [bp+var_16+2],	es
		push	word ptr es:[bx+0Eh]
		push	word ptr es:[bx+0Ch]
		call	sub_CFA0

loc_63ED:				; CODE XREF: sub_595E+A4Aj
					; sub_595E+A68j ...
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		call	sub_4E1A

loc_63F6:				; CODE XREF: sub_595E+118j
					; sub_595E+1C3j
		mov	ax, 0FFFFh
		mov	word_163CC, ax
		mov	word_163CE, ax
		mov	word_163D0, ax
		sub	ax, ax
		mov	word_163FA, ax
		mov	word_163D6, ax
		les	bx, [bp+arg_0]
		test	byte ptr es:[bx+0Ah], 4
		jz	short loc_6446
		mov	word_163C4, ax
		mov	[bp+var_22], ax
		jmp	short loc_643A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_641C:				; CODE XREF: sub_595E+AE6j
		inc	ax
		push	ax
		push	es
		push	bx
		push	cs
		call	near ptr sub_3D68
		add	sp, 6
		or	ax, ax
		jz	short loc_6437
		mov	cl, byte ptr [bp+var_22]
		mov	ax, 1
		shl	ax, cl
		or	word_163C4, ax

loc_6437:				; CODE XREF: sub_595E+ACBj
		inc	[bp+var_22]

loc_643A:				; CODE XREF: sub_595E+ABCj
		mov	ax, [bp+var_22]
		les	bx, [bp+arg_0]
		cmp	es:[bx+2], ax
		jg	short loc_641C

loc_6446:				; CODE XREF: sub_595E+AB4j
		call	sub_C23A	; @mouse_init_cycle
		cmp	word_163E0, 0
		jz	short loc_6457
		call	nullsub_2	; load_main_sprites

loc_6457:				; CODE XREF: sub_595E+AF2j
		les	bx, [bp+arg_0]
		mov	ax, es:[bx]
		pop	si
		leave
		retf	4
sub_595E	endp




; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __cdecl far sub_647A(char	*)
sub_647A	proc far		; CODE XREF: sub_6682+325p
					; sub_6682+35Fp ...

var_2E		= word ptr -2Eh
var_2C		= word ptr -2Ch
var_28		= byte ptr -28h
arg_0		= word ptr  6

		enter	2Eh, 0		; int
		mov	bx, [bp+8]
		mov	byte ptr [bx], 0

loc_6484:				; CODE XREF: sub_647A+203j
		push	25h ; '%'       ; int
		push	[bp+arg_0]	; char *
		call	_strchr
		add	sp, 4
		mov	[bp+var_2C], ax
		or	ax, ax
		jz	short loc_649D
		mov	bx, ax
		mov	byte ptr [bx], 0

loc_649D:				; CODE XREF: sub_647A+1Cj
		mov	bx, [bp+arg_0]
		cmp	byte ptr [bx], 0
		jz	short loc_64B1
		push	bx		; char *
		push	word ptr [bp+8]	; char *
		call	_strcat
		add	sp, 4

loc_64B1:				; CODE XREF: sub_647A+29j
		cmp	[bp+var_2C], 0
		jnz	short loc_64BA
		jmp	loc_6677
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_64BA:				; CODE XREF: sub_647A+3Bj
		inc	[bp+var_2C]
		mov	ax, [bp+var_2C]
		mov	[bp+arg_0], ax
		push	6		; size_t
		push	5A4h		; char *
		push	ax		; char *
		call	_strnicmp
		add	sp, 6
		or	ax, ax
		jnz	short loc_6506
		mov	ax, [bp+arg_0]
		add	ax, 6
		push	ax
		call	sub_13FB8
		add	sp, 2
		mov	[bp+var_2E], ax
		shl	ax, 6
		add	ax, 634Eh
		push	ax		; char *
		push	word ptr [bp+8]	; char *
		call	_strcat
		add	sp, 4
		mov	ax, [bp+arg_0]
		add	ax, 7
		mov	[bp+arg_0], ax
		jmp	loc_6677
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_6506:				; CODE XREF: sub_647A+59j
		push	6		; size_t
		push	5ABh		; char *
		push	[bp+var_2C]	; char *
		call	_strncmp
		add	sp, 6
		or	ax, ax
		jnz	short loc_655E
		push	0Ah		; int
		lea	ax, [bp+var_28]
		push	ax		; char *
		mov	cx, [bp+var_2C]
		add	cx, 6
		push	cx
		call	sub_13FB8
		add	sp, 2
		mov	[bp+var_2E], ax
		mov	bx, ax
		shl	bx, 2
		push	word ptr [bx+698Ch]
		push	word ptr [bx+698Ah] ; __int32
		call	far ptr	_ltoa
		add	sp, 8
		lea	ax, [bp+var_28]
		push	ax		; char *
		push	word ptr [bp+8]	; char *
		call	_strcat
		add	sp, 4

loc_6556:				; CODE XREF: sub_647A+1A5j
		add	[bp+arg_0], 7
		jmp	loc_6677
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_655E:				; CODE XREF: sub_647A+9Ej
		push	3		; size_t
		push	5B2h		; char *
		push	[bp+var_2C]	; char *
		call	_strncmp
		add	sp, 6
		or	ax, ax
		jnz	short loc_65E4
		push	10h		; int
		lea	ax, [bp+var_28]
		push	ax		; char *
		mov	ax, [bp+var_2C]
		add	ax, 3
		push	ax
		call	sub_13FB8
		add	sp, 2
		mov	bx, ax
		mov	[bp+var_2E], bx
		shl	bx, 2
		push	word ptr [bx+698Ch]
		push	word ptr [bx+698Ah] ; __int32
		call	far ptr	_ltoa
		add	sp, 8
		mov	word ptr [bp-2Ah], 0
		jmp	short loc_65B7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_65A6:				; CODE XREF: sub_647A+151j
		push	5B6h		; char *
		push	word ptr [bp+8]	; char *
		call	_strcat
		add	sp, 4
		inc	word ptr [bp-2Ah]

loc_65B7:				; CODE XREF: sub_647A+12Aj
		lea	ax, [bp+var_28]
		push	ax		; char *
		call	_strlen
		add	sp, 2
		sub	ax, 4
		neg	ax
		cmp	ax, [bp-2Ah]
		ja	short loc_65A6
		lea	ax, [bp+var_28]
		push	ax		; char *
		push	word ptr [bp+8]	; char *
		call	_strcat
		add	sp, 4

loc_65DC:				; CODE XREF: sub_647A+1DFj
		add	[bp+arg_0], 4
		jmp	loc_6677
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_65E4:				; CODE XREF: sub_647A+F6j
		push	7		; size_t
		push	5B8h		; char *
		push	[bp+var_2C]	; char *
		call	_strncmp
		add	sp, 6
		or	ax, ax
		jnz	short loc_6622
		mov	[bp+var_28], 0
		lea	ax, [bp+var_28]
		push	ax
		push	0
		push	word_1BCB4
		call	nullsub_9
		add	sp, 6
		lea	ax, [bp+var_28]
		push	ss
		push	ax		; char *
		push	ds		; char *
		push	word ptr [bp+8]	; char *
		call	_strcat_0
		add	sp, 8
		jmp	loc_6556
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6622:				; CODE XREF: sub_647A+17Cj
		push	4		; size_t
		push	5C0h		; char *
		push	[bp+var_2C]	; char *
		call	_strncmp
		add	sp, 6
		or	ax, ax
		jnz	short loc_665C
		push	0Ah		; int
		lea	ax, [bp+var_28]
		push	ax		; char *
		push	word_1BCA6	; int
		call	_itoa
		add	sp, 6
		lea	ax, [bp+var_28]
		push	ss
		push	ax		; char *
		push	ds		; char *
		push	word ptr [bp+8]	; char *
		call	_strcat_0
		add	sp, 8
		jmp	short loc_65DC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_665C:				; CODE XREF: sub_647A+1BAj
		mov	bx, [bp+var_2C]
		cmp	byte ptr [bx], 25h ; '%'
		jnz	short loc_6677
		push	ds
		push	offset asc_16435 ; "%"
		push	ds		; char *
		push	word ptr [bp+8]	; char *
		call	_strcat_0
		add	sp, 8
		inc	[bp+arg_0]

loc_6677:				; CODE XREF: sub_647A+3Dj sub_647A+88j ...
		cmp	[bp+var_2C], 0
		jz	short locret_6680
		jmp	loc_6484
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

locret_6680:				; CODE XREF: sub_647A+201j
		leave
		retf
sub_647A	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_6682	proc far		; CODE XREF: sub_56A+F2P sub_6AA8+Ap ...

var_16A		= word ptr -16Ah
var_168		= word ptr -168h
var_162		= word ptr -162h
var_160		= word ptr -160h
var_110		= byte ptr -110h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2

		enter	168h, 0		; ä-ï @popup_start_box
		push	dx		; var_16A?
		push	ax		; size_t
		push	bx		; char *
		push	di		; size_t
		push	si		; char *
		mov	cx, 1
		mov	[bp+var_4], cx
		mov	[bp+var_162], cx
		mov	[bp+var_10], 0
		sub	cx, cx		; int
		mov	[bp-0Ah], cx	; -' '??
		mov	[bp-0Ch], cx
		push	ax		; char *
		push	3B32h		; char error_string [80]
		mov	si, ax		; ­ ¯à."NEWNAME"
		mov	di, bx		; ­ ¯à."MAPEDIT"
		call	_strcpy
		add	sp, 4
		push	si		; int
		push	di		; int
		call	sub_843A	; text_open -§¤¥áì (r)âªàë¢ ¥âáï MAPEDIT.TXT
		add	sp, 4
		or	ax, ax		; áâà(r)ª  ­ (c)¤¥­  ¢ MAPEDIT.TXT
		jz	short loc_66C3	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		jmp	loc_6A83
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_66C3:				; CODE XREF: sub_6682+3Cj
		push	word_16410	; popup_font+2
		push	word_1640E	; popup_font
		push	word_16412	; popup_heap -íâ(r) è(r)àâ,à §¬¥à ªãç¨
		push	cs
		call	near ptr sub_3AAE ; ­¥â	á¨¬¢.¨¬¥­¨
		add	sp, 6
		mov	[bp-0Ch], ax
		mov	[bp-0Ah], dx
		or	dx, ax
		jnz	short loc_66E3	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		jmp	loc_6A83
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_66E3:				; CODE XREF: sub_6682+5Cj
		cmp	word_16478, 0	; popup_start_ask
		jz	short loc_6702
		cmp	off_1BC9A, 0	; popup_start_string
		jz	short loc_6702
		push	off_1BC9A	; char *
		lea	ax, [bp+var_160]
		push	ax		; char *
		call	_strcpy
		add	sp, 4

loc_6702:				; CODE XREF: sub_6682+66j sub_6682+6Dj ...
		call	sub_8526	; text_get
		mov	[bp+var_E], ax
		push	ax		; char *
		call	_strlen
		add	sp, 2
		or	ax, ax
		jnz	short loc_671E	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		inc	[bp+var_4]
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_671E:				; CODE XREF: sub_6682+93j
		mov	bx, [bp+var_E]
		cmp	byte ptr [bx], 40h ; '@'
		jz	short loc_6729	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		jmp	loc_6998
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6729:				; CODE XREF: sub_6682+A2j
		push	bx		; char *
		call	_strupr
		add	sp, 2
		push	5C7h		; aOptions_0
		mov	ax, [bp+var_E]
		inc	ax
		mov	[bp+var_168], ax
		push	ax		; char *
		call	_strcmp
		add	sp, 4
		or	ax, ax
		jz	short loc_675D
		push	5CFh		; aPrompt
		push	[bp+var_168]	; char *
		call	_strcmp
		add	sp, 4
		or	ax, ax
		jnz	short loc_6766	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)

loc_675D:				; CODE XREF: sub_6682+C6j
		mov	[bp+var_4], 2
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_6766:				; CODE XREF: sub_6682+D9j
		push	5D6h		; aText
		push	[bp+var_168]	; char *
		call	_strcmp
		add	sp, 4
		or	ax, ax
		jnz	short loc_6782	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		mov	[bp+var_4], 1
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_6782:				; CODE XREF: sub_6682+F5j
		push	5DBh		; aSmallfont
		push	[bp+var_168]	; char *
		call	_strcmp
		add	sp, 4
		or	ax, ax
		jnz	short loc_67AC	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		mov	ax, word ptr dword_15EF0 ; menu_font
		mov	dx, word ptr dword_15EF0+2 ; int
		les	bx, [bp-0Ch]
		mov	es:[bx+80h], ax
		mov	es:[bx+82h], dx
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_67AC:				; CODE XREF: sub_6682+111j
		push	1		; size_t
		push	5E5h		; aY
		push	[bp+var_168]	; char *
		call	_strncmp
		add	sp, 6
		or	ax, ax
		jnz	short loc_67F4	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		jmp	short loc_67D4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_67C4:				; CODE XREF: sub_6682+159j
		mov	al, [bx]
		cbw
		mov	bx, ax
		test	byte ptr [bx+45A9h], 4
		jnz	short loc_67DD
		inc	[bp+var_168]

loc_67D4:				; CODE XREF: sub_6682+13Fj
		mov	bx, [bp+var_168]
		cmp	byte ptr [bx], 0
		jnz	short loc_67C4

loc_67DD:				; CODE XREF: sub_6682+14Cj
		push	[bp+var_168]
		call	sub_13FB8	; atoi - ¡¨¡"¨(r)â¥ç­ ï ä-ï?
		add	sp, 2
		les	bx, [bp-0Ch]
		mov	es:[bx+0Eh], ax
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_67F4:				; CODE XREF: sub_6682+13Dj
		push	1		; size_t
		push	5E7h		; "X"
		push	[bp+var_168]	; char *
		call	_strncmp
		add	sp, 6
		or	ax, ax
		jnz	short loc_683C	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
		jmp	short loc_681C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_680C:				; CODE XREF: sub_6682+1A1j
		mov	al, [bx]
		cbw
		mov	bx, ax
		test	byte ptr [bx+45A9h], 4
		jnz	short loc_6825
		inc	[bp+var_168]

loc_681C:				; CODE XREF: sub_6682+187j
		mov	bx, [bp+var_168]
		cmp	byte ptr [bx], 0
		jnz	short loc_680C

loc_6825:				; CODE XREF: sub_6682+194j
		push	[bp+var_168]
		call	sub_13FB8	; atoi
		add	sp, 2
		les	bx, [bp-0Ch]
		mov	es:[bx+0Ch], ax
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_683C:				; CODE XREF: sub_6682+185j
		push	5		; size_t
		push	5E9h		; aWidth
		push	[bp+var_168]	; char *
		call	_strncmp
		add	sp, 6
		or	ax, ax
		jnz	short loc_688E
		jmp	short loc_6864	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_6854:				; CODE XREF: sub_6682+1E9j
		mov	al, [bx]
		cbw
		mov	bx, ax
		test	byte ptr [bx+45A9h], 4
		jnz	short loc_686D
		inc	[bp+var_168]

loc_6864:				; CODE XREF: sub_6682+1CFj
		mov	bx, [bp+var_168]
		cmp	byte ptr [bx], 0
		jnz	short loc_6854	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c) ¨
					; ­¥ª-à(r)¥ ¢à¥¬ï	¢ë¯(r)"­ï¥âáï íâ(r)â æ¨ª"

loc_686D:				; CODE XREF: sub_6682+1DCj
		push	[bp+var_168]
		call	sub_13FB8	; atoi
		add	sp, 2
		mov	[bp+var_2], ax
		push	ax
		push	word ptr [bp-0Ah]
		push	word ptr [bp-0Ch]
		push	cs
		call	near ptr sub_4000
		add	sp, 6
		jmp	loc_6A7A	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c)
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_688E:				; CODE XREF: sub_6682+1CDj
		push	6		; size_t
		push	5EFh		; aLength
		push	[bp+var_168]	; char *
		call	_strnicmp
		add	sp, 6
		or	ax, ax
		jnz	short loc_68DC
		jmp	short loc_68B6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_68A6:				; CODE XREF: sub_6682+23Bj
		mov	al, [bx]
		cbw
		mov	bx, ax
		test	byte ptr [bx+45A9h], 4
		jnz	short loc_68BF
		inc	[bp+var_168]

loc_68B6:				; CODE XREF: sub_6682+221j
		mov	bx, [bp+var_168]
		cmp	byte ptr [bx], 0
		jnz	short loc_68A6

loc_68BF:				; CODE XREF: sub_6682+22Ej
		cmp	word_1B940, 0	; popup_start_max_len
		jz	short loc_68C9
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_68C9:				; CODE XREF: sub_6682+242j
		push	[bp+var_168]
		call	sub_13FB8	; atoi
		add	sp, 2
		mov	word_1B940, ax	; popup_start_max_len
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_68DC:				; CODE XREF: sub_6682+21Fj
		push	7		; size_t
		push	5F6h		; char *
		push	[bp+var_168]	; char *
		call	_strncmp
		add	sp, 6
		or	ax, ax
		jnz	short loc_6902
		mov	[bp+var_10], 1
		les	bx, [bp-0Ch]
		or	byte ptr es:[bx+0Ah], 5
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_6902:				; CODE XREF: sub_6682+26Dj
		push	7		; size_t
		push	5FFh		; char *
		push	[bp+var_168]	; char *
		call	_strncmp
		add	sp, 6
		or	ax, ax
		jnz	short loc_6990
		cmp	word_16478, ax	; popup_start_ask
		jz	short loc_696A
		jmp	short loc_6929
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_6920:				; CODE XREF: sub_6682+2AEj
		cmp	byte ptr [bx], 3Dh ; '='
		jz	short loc_6932
		inc	[bp+var_168]

loc_6929:				; CODE XREF: sub_6682+29Bj
		mov	bx, [bp+var_168]
		cmp	byte ptr [bx], 0
		jnz	short loc_6920

loc_6932:				; CODE XREF: sub_6682+2A1j
		cmp	off_1BC9A, 0	; popup_start_string
		jz	short loc_693C
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_693C:				; CODE XREF: sub_6682+2B5j
		cmp	byte ptr [bx], 0
		jz	short loc_6945
		inc	[bp+var_168]

loc_6945:				; CODE XREF: sub_6682+2BDj
		push	[bp+var_168]	; char *
		lea	ax, [bp+var_160]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_695A:				; CODE XREF: sub_6682+2EFj
		mov	al, [bx]
		cbw
		mov	bx, ax
		test	byte ptr [bx+45A9h], 4
		jnz	short loc_6973
		inc	[bp+var_168]

loc_696A:				; CODE XREF: sub_6682+299j
		mov	bx, [bp+var_168]
		cmp	byte ptr [bx], 0
		jnz	short loc_695A

loc_6973:				; CODE XREF: sub_6682+2E2j
		cmp	[bp+var_16A], 0
		jz	short loc_697D
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_697D:				; CODE XREF: sub_6682+2F6j
		push	[bp+var_168]
		call	sub_13FB8	; atoi
		add	sp, 2
		mov	[bp+var_16A], ax
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6990:				; CODE XREF: sub_6682+293j
		mov	[bp+var_4], 3
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6998:				; CODE XREF: sub_6682+A4j
		mov	ax, [bp+var_4]
		jmp	loc_6A6E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_699E:				; CODE XREF: sub_6682+3EFj
		lea	ax, [bp+var_110]
		push	ax
		push	[bp+var_E]	; char *
		push	cs
		call	near ptr sub_647A
		add	sp, 4
		lea	ax, [bp+var_110]
		push	ss
		push	ax		; char *
		push	word ptr [bp-0Ah]
		push	word ptr [bp-0Ch] ; __int32
		push	cs
		call	near ptr sub_4010
		add	sp, 8
		jmp	loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_69C4:				; CODE XREF: sub_6682+3F5j
		cmp	word_16478, 0	; popup_start_ask
		jz	short loc_6A0C
		cmp	word_1B940, 0	; popup_start_max_len
		jnz	short loc_69D8
		mov	word_1B940, 5

loc_69D8:				; CODE XREF: sub_6682+34Ej
		lea	ax, [bp+var_110]
		push	ax
		push	[bp+var_E]	; char *
		push	cs
		call	near ptr sub_647A
		add	sp, 4
		push	word_1B940	; size_t
		lea	ax, [bp+var_160]
		push	ss
		push	ax		; size_t
		lea	ax, [bp+var_110]
		push	ss		; char *
		push	ax		; char *
		push	word ptr [bp-0Ah]
		push	word ptr [bp-0Ch] ; __int32
		push	cs
		call	near ptr sub_4122
		add	sp, 0Eh
		mov	[bp+var_8], ax
		mov	[bp+var_6], dx
		jmp	short loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6A0C:				; CODE XREF: sub_6682+347j
		lea	ax, [bp+var_110]
		push	ax
		push	[bp+var_E]	; char *
		push	cs
		call	near ptr sub_647A
		add	sp, 4
		push	[bp+var_162]	; int
		lea	ax, [bp+var_110]
		push	ss		; int
		push	ax		; char *
		push	word ptr [bp-0Ah]
		push	word ptr [bp-0Ch] ; __int32
		push	cs
		call	near ptr sub_3DDE
		add	sp, 0Ah
		mov	[bp-166h], ax
		mov	[bp-164h], dx
		cmp	[bp+var_10], 0
		jz	short loc_6A4A
		les	bx, [bp-166h]
		mov	word ptr es:[bx+6], 0

loc_6A4A:				; CODE XREF: sub_6682+3BCj
		mov	ax, [bp+var_16A]
		cmp	[bp+var_162], ax
		jnz	short loc_6A67
		mov	ax, [bp-166h]
		mov	dx, [bp-164h]
		les	bx, [bp-0Ch]
		mov	es:[bx+4Ch], ax
		mov	es:[bx+4Eh], dx

loc_6A67:				; CODE XREF: sub_6682+3D0j
		inc	[bp+var_162]
		jmp	short loc_6A7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_6A6E:				; CODE XREF: sub_6682+319j
		dec	ax
		jnz	short loc_6A74
		jmp	loc_699E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6A74:				; CODE XREF: sub_6682+3EDj
		dec	ax
		jnz	short loc_6A7A
		jmp	loc_69C4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6A7A:				; CODE XREF: sub_6682+98j sub_6682+E0j ...
		cmp	[bp+var_4], 3
		jge	short loc_6A83
		jmp	loc_6702	; áî¤  ¯¥à¥å(r)¤ ¯¥à¥¤ 1(r)(c) § áâ ¢ª(r)(c) ¨
					; ­¥ª-à(r)¥ ¢à¥¬ï	¢ë¯(r)"­ï¥âáï íâ(r)â æ¨ª"
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6A83:				; CODE XREF: sub_6682+3Ej sub_6682+5Ej ...
		mov	ax, [bp-0Ah]
		or	ax, [bp-0Ch]
		jnz	short loc_6A9D
		mov	ax, 0FFFFh
		mov	word_163CE, ax	; popup_messenger
		mov	word_163CC, ax	; popup_indian
		mov	word_163D0, ax	; popup_foreign
		mov	word_163D6, 0	; popup_help

loc_6A9D:				; CODE XREF: sub_6682+407j
		mov	ax, [bp-0Ch]
		mov	dx, [bp-0Ah]
		pop	si
		pop	di
		leave
		retf
sub_6682	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_6AA8	proc far		; CODE XREF: sub_15CC+29P sub_1670+4EP ...

var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2

		enter	6, 0
		mov	[bp+var_2], 0
		push	cs
		call	near ptr sub_6682
		mov	[bp+var_6], ax
		mov	[bp+var_4], dx
		or	dx, ax
		jz	short loc_6AD5
		push	[bp+var_4]
		push	ax
		push	cs
		call	near ptr sub_595E
		mov	[bp+var_2], ax
		push	[bp+var_4]
		push	[bp+var_6]
		call	sub_CFA0

loc_6AD5:				; CODE XREF: sub_6AA8+15j
		mov	ax, [bp+var_2]
		leave
		retf
sub_6AA8	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mov	word_163C4, 0
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		push	ax
		dec	word ptr [bp-2]
		or	dx, dx
		jz	short loc_6AFC
		mov	cl, [bp-2]
		mov	ax, 1
		shl	ax, cl
		or	word_163C4, ax
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_6AFC:				; CODE XREF: seg005:371Bj
		mov	cl, [bp-2]
		mov	ax, 1
		shl	ax, cl
		not	ax
		and	word_163C4, ax
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		push	ax
		mov	ax, 1
		sub	[bp-2],	ax
		mov	cl, [bp-2]
		shl	ax, cl
		and	ax, word_163C4
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		mov	ax, bx
		lea	bx, aGame	; "GAME"
		sub	dx, dx
		push	cs
		call	near ptr sub_6AA8
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		mov	dx, ax
		mov	ax, bx
		lea	bx, aGame	; "GAME"
		push	cs
		call	near ptr sub_6AA8
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		mov	ax, [bp+8]
		mov	word_163CC, ax
		lea	bx, aGame	; "GAME"
		mov	ax, [bp+6]
		sub	dx, dx
		push	cs
		call	near ptr sub_6AA8
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mov	word_163CC, dx
		mov	dx, ax
		mov	ax, bx
		lea	bx, aGame	; "GAME"
		push	cs
		call	near ptr sub_6AA8
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		mov	word_163CC, 8
		lea	bx, aGame	; "GAME"
		mov	ax, [bp+6]
		sub	dx, dx
		push	cs
		call	near ptr sub_6AA8
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		mov	ax, [bp+8]
		mov	word_163CE, ax
		lea	bx, aGame	; "GAME"
		mov	ax, [bp+6]
		sub	dx, dx
		push	cs
		call	near ptr sub_6AA8
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mov	word_163CE, dx
		mov	dx, ax
		mov	ax, bx
		lea	bx, aGame	; "GAME"
		push	cs
		call	near ptr sub_6AA8
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		mov	ax, [bp+8]
		mov	word_163D0, ax
		lea	bx, aGame	; "GAME"
		mov	ax, [bp+6]
		sub	dx, dx
		push	cs
		call	near ptr sub_6AA8
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mov	word_163D0, dx
		mov	dx, ax
		mov	ax, bx
		lea	bx, aGame	; "GAME"
		push	cs
		call	near ptr sub_6AA8
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		or	byte ptr word_163C6, 18h
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_6BDA	proc far		; CODE XREF: sub_15FC+16P sub_17E0+F3P ...

var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6

		enter	6, 0		; ä-ï @popup_ask
		mov	word_16478, 1	; popup_start_ask
		mov	cx, [bp+arg_0]
		mov	word_1B940, cx	; popup_start_max_len
		mov	off_1BC9A, dx	; popup_start_string ="UNTITLED.MP"
		sub	dx, dx
		mov	[bp+var_2], dx
		push	cs
		call	near ptr sub_6682 ; @popup_start_box
		mov	[bp+var_6], ax
		mov	[bp+var_4], dx
		or	dx, ax
		jz	short loc_6C18
		push	[bp+var_4]
		push	ax
		push	cs
		call	near ptr sub_595E ; @popup_exec
		mov	[bp+var_2], ax
		push	[bp+var_4]
		push	[bp+var_6]
		call	sub_CFA0	; @mem_free

loc_6C18:				; CODE XREF: sub_6BDA+26j
		mov	word_16478, 0
		mov	ax, [bp+var_2]
		leave
		retf	2
sub_6BDA	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	16h, 0
		push	dx
		push	ax
		push	bx
		push	di
		push	si
		push	0Ah
		lea	cx, [bp-14h]
		push	cx
		push	dx
		mov	si, ax
		mov	di, bx
		call	_itoa
		add	sp, 6
		push	5
		mov	ax, si
		mov	bx, di
		lea	dx, [bp-14h]
		push	cs
		call	near ptr sub_6BDA
		mov	[bp-16h], ax
		push	4B64h
		call	sub_13FB8
		add	sp, 2
		mov	word_1B944, ax
		mov	ax, [bp-16h]
		pop	si
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	0Eh, 0
		mov	ax, 1
		mov	[bp-0Ch], ax
		mov	[bp-0Eh], ax
		lea	ax, [bp-6]
		mov	[bp-0Ah], ax
		mov	word ptr [bp-8], ss
		lea	bx, aTextcolr	; "TEXTCOLR"
		sub	ax, ax
		call	sub_DDB8
		mov	[bp-4],	ax
		mov	[bp-2],	dx
		or	dx, ax
		jnz	short loc_6C96
		jmp	locret_6D75
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6C96:				; CODE XREF: seg005:38C1j
		push	word ptr [bp-2]
		push	ax
		push	0
		mov	ax, 1
		lea	bx, [bp-0Eh]
		sub	dx, dx
		call	sub_D8F0
		mov	al, [bp-6]
		sub	ah, ah
		mov	word_163AC, ax
		push	word ptr [bp-2]
		push	word ptr [bp-4]
		push	0
		mov	ax, 2
		lea	bx, [bp-0Eh]
		sub	dx, dx
		call	sub_D8F0
		mov	al, [bp-6]
		sub	ah, ah
		mov	word_163AE, ax
		push	word ptr [bp-2]
		push	word ptr [bp-4]
		push	0
		mov	ax, 3
		lea	bx, [bp-0Eh]
		sub	dx, dx
		call	sub_D8F0
		mov	al, [bp-6]
		sub	ah, ah
		mov	word_163B0, ax
		push	word ptr [bp-2]
		push	word ptr [bp-4]
		push	0
		mov	ax, 4
		lea	bx, [bp-0Eh]
		sub	dx, dx
		call	sub_D8F0
		mov	al, [bp-6]
		sub	ah, ah
		mov	word_163B2, ax
		push	word ptr [bp-2]
		push	word ptr [bp-4]
		push	0
		mov	ax, 5
		lea	bx, [bp-0Eh]
		sub	dx, dx

loc_6D18:
		call	sub_D8F0

loc_6D1D:
		mov	al, [bp-6]
		sub	ah, ah
		mov	word_163BA, ax
		push	word ptr [bp-2]
		push	word ptr [bp-4]
		push	0
		mov	ax, 6
		lea	bx, [bp-0Eh]
		sub	dx, dx
		call	sub_D8F0
		mov	al, [bp-6]
		sub	ah, ah
		mov	word_163BE, ax
		push	word ptr [bp-2]
		push	word ptr [bp-4]
		push	0
		mov	ax, 7
		lea	bx, [bp-0Eh]
		sub	dx, dx
		call	sub_D8F0
		mov	al, [bp-6]
		sub	ah, ah
		mov	word_163BC, ax
		push	0A000h
		push	0FC00h
		call	sub_D70A
		push	word ptr [bp-2]
		push	word ptr [bp-4]

loc_6D70:
		call	sub_CFA0

locret_6D75:				; CODE XREF: seg005:38C3j
		leave
		retf
seg005		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg006		segment public 'CODE'
		assume cs:seg006
		;org 7
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_6D78	proc near		; CODE XREF: sub_76B4+10p sub_77DC+2Bp ...

arg_0		= dword	ptr  4

		push	bp
		mov	bp, sp
		les	bx, [bp+arg_0]
		mov	bl, es:[bx]
		sub	bh, bh
		cmp	bx, 6
		jnz	short loc_6D89
		dec	bx

loc_6D89:				; CODE XREF: sub_6D78+Ej
		mov	ax, bx
		leave
		retn
sub_6D78	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_6D8E	proc far		; CODE XREF: sub_706E+B4p
					; sub_706E+111p

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h
arg_C		= word ptr  12h
arg_E		= word ptr  14h

		push	bp
		mov	bp, sp
		mov	bx, [bp+arg_0]
		mov	ax, [bp+arg_8]
		mov	es, [bp+arg_2]
		mov	es:[bx], ax
		mov	ax, [bp+arg_A]
		mov	es:[bx+2], ax
		mov	ax, [bp+arg_C]
		mov	es:[bx+4], ax
		mov	ax, [bp+arg_E]
		mov	es:[bx+6], ax
		mov	ax, [bp+arg_4]
		mov	dx, [bp+arg_6]
		mov	es:[bx+8], ax
		mov	es:[bx+0Ah], dx
		leave
		retf
sub_6D8E	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_6DC2	proc near		; CODE XREF: sub_76B4+4Dp sub_76B4+C5p ...

var_2		= word ptr -2
arg_6		= byte ptr  0Ah
arg_A		= word ptr  0Eh
arg_C		= word ptr  10h
arg_E		= word ptr  12h
arg_10		= word ptr  14h
arg_12		= word ptr  16h
arg_14		= word ptr  18h
arg_16		= word ptr  1Ah

		push	bp

loc_6DC3:
		mov	bp, sp
		push	ax
		cmp	word_164A2, 0
		jz	short loc_6E06
		cmp	[bp+arg_6], 7
		jnz	short loc_6E06
		push	[bp+arg_A]
		push	[bp+arg_C]
		push	[bp+arg_E]
		push	bx
		push	dx
		push	ax
		mov	bx, word_164A2
		push	word ptr [bx+6]
		push	word ptr [bx+4]
		push	word ptr [bx+2]
		push	word ptr [bx]
		push	[bp+arg_16]
		push	[bp+arg_14]
		push	[bp+arg_12]
		push	[bp+arg_10]
		call	sub_CB90
		add	sp, 1Ch
		leave
		retn	18h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6E06:				; CODE XREF: sub_6DC2+9j sub_6DC2+Fj
		push	[bp+arg_16]
		push	[bp+arg_14]
		push	[bp+arg_12]
		push	[bp+arg_10]
		push	[bp+arg_E]
		mov	al, [bp+arg_6]
		push	ax
		mov	ax, [bp+var_2]
		call	sub_C5B4
		leave
		retn	18h
sub_6DC2	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_6E26(int,int,__int32,char *)
sub_6E26	proc far		; CODE XREF: sub_73B2+13Bp
					; sub_754E+133p

var_50		= byte ptr -50h
arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah

		enter	50h, 0
		push	si		; int
		push	word ptr [bp+arg_4+2]
		push	word ptr [bp+arg_4] ; char *
		lea	ax, [bp+var_50]
		push	ss		; char *
		push	ax		; char *
		call	_strcpy_0
		add	sp, 8
		push	7Eh ; '~'       ; int
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strchr
		add	sp, 4
		mov	si, ax
		or	si, si
		jz	short loc_6E61
		lea	ax, [si+1]
		push	ds
		push	ax		; char *
		push	ds		; char *
		push	si		; char *
		call	_strcpy_0
		add	sp, 8

loc_6E61:				; CODE XREF: sub_6E26+2Aj
		les	bx, [bp+arg_0]
		push	word ptr es:[bx+0Ah]
		push	word ptr es:[bx+8]
		lea	ax, [bp+var_50]
		push	ss
		push	ax
		mov	ax, es:[bx]
		call	sub_D6C2
		pop	si
		leave
		retf
sub_6E26	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __cdecl far sub_6E7C(int,int,char	*,int,int,int)
sub_6E7C	proc far		; CODE XREF: sub_76B4+EFp
					; sub_78F2+1C6p

var_E		= dword	ptr -0Eh
var_A		= dword	ptr -0Ah
var_6		= byte ptr -6
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h
arg_C		= word ptr  12h

		enter	0Eh, 0
		push	di
		push	si
		cmp	[bp+arg_C], 0
		jz	short loc_6ED2
		mov	di, [bp+arg_0]
		mov	es, [bp+arg_2]
		push	word ptr es:[di+4]
		mov	bx, es:[di+4]
		mov	dx, bx
		mov	ax, 0FFFFh
		mov	si, es
		call	sub_D6A6
		mov	es, si
		push	word ptr es:[di+0Ah]
		push	word ptr es:[di+8] ; __int32
		push	word ptr [bp+0Ch] ; __int32
		push	[bp+arg_4]	; char *
		push	word ptr es:[di] ; int
		lea	bx, word_19964
		mov	ax, [bp+arg_8]
		mov	dx, [bp+arg_A]
		mov	si, es
		call	sub_D538
		mov	es, si
		add	ax, es:[di]
		mov	[bp+arg_8], ax
		jmp	loc_6FAE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_6ED2:				; CODE XREF: sub_6E7C+Aj
		mov	si, [bp+arg_0]
		mov	byte ptr [bp-5], 0
		mov	es, [bp+arg_2]
		push	word ptr es:[si+2]
		mov	dx, es:[si+2]
		mov	bx, dx
		mov	ax, 0FFFFh
		call	sub_D6A6
		les	bx, dword ptr [bp+arg_4]
		mov	di, bx
		mov	[bp+var_2], es
		cmp	byte ptr es:[bx], 0
		jnz	short loc_6EFF
		jmp	loc_6FAE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6EFF:				; CODE XREF: sub_6E7C+7Ej
					; sub_6E7C+12Fj
		cmp	byte ptr es:[di], 7Eh ;	'~'
		jnz	short loc_6F6A
		mov	es, [bp+arg_2]
		push	word ptr es:[si+6]
		mov	bx, es:[si+6]
		mov	dx, bx
		mov	ax, 0FFFFh
		mov	word ptr [bp+var_A], si
		mov	word ptr [bp+var_A+2], es
		call	sub_D6A6
		mov	es, [bp+var_2]
		inc	di
		mov	al, es:[di]
		mov	[bp+var_6], al
		les	bx, [bp+var_A]
		push	word ptr es:[bx+0Ah]
		push	word ptr es:[bx+8] ; __int32
		lea	ax, [bp+var_6]
		push	ss		; __int32
		push	ax		; char *
		push	word ptr es:[bx] ; int
		lea	bx, word_19964
		mov	ax, [bp+arg_8]
		mov	dx, [bp+arg_A]
		call	sub_D538
		les	bx, [bp+var_A]
		add	ax, es:[bx]
		mov	[bp+arg_8], ax
		push	word ptr es:[bx+2]
		mov	bx, es:[bx+2]
		mov	dx, bx
		mov	ax, 0FFFFh
		call	sub_D6A6
		jmp	short loc_6FA1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_6F6A:				; CODE XREF: sub_6E7C+87j
		mov	al, es:[di]
		mov	[bp+var_6], al
		mov	es, [bp+arg_2]
		push	word ptr es:[si+0Ah]
		push	word ptr es:[si+8] ; __int32
		lea	ax, [bp+var_6]
		push	ss		; __int32
		push	ax		; char *
		push	word ptr es:[si] ; int
		lea	bx, word_19964
		mov	ax, [bp+arg_8]
		mov	dx, [bp+arg_A]
		mov	word ptr [bp+var_E], si
		mov	word ptr [bp+var_E+2], es
		call	sub_D538
		les	bx, [bp+var_E]
		add	ax, es:[bx]
		mov	[bp+arg_8], ax

loc_6FA1:				; CODE XREF: sub_6E7C+EBj
		mov	es, [bp+var_2]
		inc	di
		cmp	byte ptr es:[di], 0
		jz	short loc_6FAE
		jmp	loc_6EFF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_6FAE:				; CODE XREF: sub_6E7C+52j sub_6E7C+80j ...
		mov	ax, [bp+arg_8]
		pop	si
		pop	di
		leave
		retf
sub_6E7C	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_6FB6	proc far		; CODE XREF: sub_73B2+10Fp
					; sub_754E+115p

var_A		= word ptr -0Ah
var_2		= word ptr -2
arg_0		= word ptr  6
arg_45A3	= byte ptr  45A9h

		enter	0Ch, 0
		push	di
		push	si
		mov	[bp+var_A], 0
		push	7Eh ; '~'       ; int
		push	word ptr [bp+8]	; int
		push	[bp+arg_0]	; char *
		call	_strrchr
		add	sp, 6
		mov	si, ax
		mov	[bp+var_2], dx
		push	7Eh ; '~'       ; int
		push	word ptr [bp+8]	; int
		push	[bp+arg_0]	; char *
		call	_strchr_0
		add	sp, 6
		mov	di, ax
		mov	cx, [bp+var_2]
		cmp	ax, si
		jnz	short loc_6FF3
		cmp	dx, cx
		jz	short loc_703A

loc_6FF3:				; CODE XREF: sub_6FB6+37j
		mov	ds, dx
		cmp	byte ptr [di+1], 46h ; 'F'
		jnz	short loc_703A
		mov	es, [bp+var_2]
		mov	bl, es:[si+1]
		sub	bh, bh
		test	ss:[bx+arg_45A3], 4
		jz	short loc_703A
		mov	cx, 13Bh
		add	di, 3
		cmp	byte ptr [di], 30h ; '0'
		jnz	short loc_7023
		mov	cx, 154h
		cmp	byte ptr [di+2], 30h ; '0'
		jnz	short loc_7023
		mov	cx, 15Eh

loc_7023:				; CODE XREF: sub_6FB6+5Fj sub_6FB6+68j
		cmp	byte ptr es:[si-1], 31h	; '1'
		jnz	short loc_7030
		add	cx, 9
		jmp	short loc_7062
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_7030:				; CODE XREF: sub_6FB6+72j
		mov	ax, bx
		sub	ax, 31h	; '1'
		add	cx, ax
		jmp	short loc_7062
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_703A:				; CODE XREF: sub_6FB6+3Bj sub_6FB6+43j ...
		mov	ax, [bp+var_2]
		or	ax, si
		jz	short loc_705A
		mov	es, [bp+var_2]
		mov	bl, es:[si+1]
		sub	bh, bh
		test	ss:[bx+arg_45A3], 2
		jz	short loc_7060
		mov	cx, bx
		sub	cx, 20h	; ' '
		jmp	short loc_7062
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_705A:				; CODE XREF: sub_6FB6+89j
		mov	cx, [bp+var_A]
		jmp	short loc_7062
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_7060:				; CODE XREF: sub_6FB6+9Aj
		mov	cx, bx

loc_7062:				; CODE XREF: sub_6FB6+77j sub_6FB6+81j ...
		mov	ax, cx
		mov	cx, seg	dseg
		mov	ds, cx
		pop	si
		pop	di
		leave
		retf
sub_6FB6	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_706E	proc far		; CODE XREF: sub_196+14P seg012:0018P

var_20		= word ptr -20h
var_1E		= word ptr -1Eh
var_1C		= dword	ptr -1Ch
var_14		= dword	ptr -14h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		enter	20h, 0
		push	di
		push	si
		sub	ax, ax
		mov	[bp+var_A], ax
		mov	[bp+var_C], ax
		mov	ax, [bp+arg_0]
		add	ax, 4Eh	; 'N'
		cwd
		call	sub_CF72
		mov	di, ax
		mov	[bp+var_E], dx
		or	dx, ax
		jnz	short loc_7094
		jmp	loc_7191
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7094:				; CODE XREF: sub_706E+21j
		mov	ax, [bp+var_E]
		mov	cx, di
		mov	bx, ax
		mov	si, cx
		mov	[bp+var_2], ax
		mov	word ptr [bp+var_14], cx
		mov	word ptr [bp+var_14+2],	bx
		add	cx, 3Ch	; '<'
		push	bx
		push	cx
		mov	ax, word ptr [bp+var_14]
		mov	dx, bx
		add	ax, 4Eh	; 'N'
		push	dx
		push	ax
		mov	ax, [bp+arg_0]
		cwd
		push	dx
		push	ax
		mov	ax, 28h	; '('
		call	sub_F4E0
		les	bx, [bp+var_14]
		sub	ax, ax
		mov	es:[bx+3Ah], ax
		mov	es:[bx+38h], ax
		mov	es:[bx+2], ax
		mov	word ptr es:[bx+6], 0Ch
		mov	word ptr es:[bx+8], 3
		mov	word ptr es:[bx+0Ch], 4
		mov	ax, 1
		mov	es:[bx+4], ax
		mov	es:[bx+0Ah], ax
		mov	ax, word_16484
		mov	es, [bp+var_2]
		mov	es:[si+0Eh], ax
		mov	ax, word_16486
		mov	es:[si+10h], ax
		push	word_164A0
		push	word_1649E
		push	word_1649C
		push	0
		push	[bp+arg_4]
		push	[bp+arg_2]
		lea	ax, [si+20h]
		push	es
		push	ax
		mov	word ptr [bp+var_1C], si
		mov	word ptr [bp+var_1C+2],	es
		push	cs
		call	near ptr sub_6D8E
		add	sp, 10h
		mov	ax, word_16490
		les	bx, [bp+var_1C]
		mov	es:[bx+1Ah], ax
		mov	ax, word_16492
		mov	es:[bx+1Ch], ax
		mov	ax, word_16488
		mov	es, [bp+var_2]
		mov	es:[si+12h], ax
		mov	ax, word_1648A
		mov	es:[si+14h], ax
		mov	ax, word_1648C
		mov	es:[si+16h], ax
		mov	ax, word_1648E
		mov	es:[si+18h], ax
		mov	ax, word_16494
		mov	es:[si+1Eh], ax
		push	word_1649A
		push	word_16498
		push	word_16496
		push	0
		push	[bp+arg_4]
		push	[bp+arg_2]
		lea	ax, [si+2Ch]
		push	es
		push	ax
		mov	[bp+var_20], si
		mov	[bp+var_1E], es
		push	cs
		call	near ptr sub_6D8E
		add	sp, 10h
		mov	ax, [bp+var_20]
		mov	dx, [bp+var_1E]
		mov	[bp+var_C], ax
		mov	[bp+var_A], dx

loc_7191:				; CODE XREF: sub_706E+23j
		mov	ax, [bp+var_E]
		or	ax, di
		jz	short loc_71AC
		mov	ax, [bp+var_E]
		cmp	di, [bp+var_C]
		jnz	short loc_71A5
		cmp	ax, [bp+var_A]
		jz	short loc_71AC

loc_71A5:				; CODE XREF: sub_706E+130j
		push	ax
		push	di
		call	sub_CFA0

loc_71AC:				; CODE XREF: sub_706E+128j
					; sub_706E+135j
		mov	ax, [bp+var_C]
		mov	dx, [bp+var_A]
		pop	si
		pop	di
		leave
		retf
sub_706E	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_71B6	proc far		; CODE XREF: sub_7292+Fp sub_754E+18p

var_2		= word ptr -2
arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah

		enter	4, 0
		push	di
		push	si
		sub	cx, cx
		sub	ax, ax
		cwd
		mov	di, ax
		mov	[bp+var_2], dx
		les	si, [bp+arg_0]
		lds	bx, es:[si+38h]

loc_71CD:				; CODE XREF: sub_71B6+35j
		mov	ax, ds
		or	ax, bx
		jz	short loc_71ED
		mov	ax, [bp+arg_4]
		cmp	[bx+0Ah], ax
		jnz	short loc_71E6
		mov	cx, 1
		mov	di, bx
		mov	[bp+var_2], ds
		jmp	short loc_71E9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_71E6:				; CODE XREF: sub_71B6+23j
		lds	bx, [bx+16h]

loc_71E9:				; CODE XREF: sub_71B6+2Dj
		or	cx, cx
		jz	short loc_71CD

loc_71ED:				; CODE XREF: sub_71B6+1Bj
		mov	ax, seg	dseg
		mov	ds, ax
		mov	ax, di
		mov	dx, [bp+var_2]
		pop	si
		pop	di
		leave
		retf
sub_71B6	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_71FC	proc far		; CODE XREF: seg006:0569p seg006:05DDp

var_18		= word ptr -18h
var_16		= word ptr -16h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_6		= word ptr -6
arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah

		enter	18h, 0
		push	di
		push	si
		sub	cx, cx
		sub	ax, ax
		mov	[bp+var_16], ax
		mov	[bp+var_18], ax
		les	si, [bp+arg_0]
		mov	ax, es:[si+38h]
		mov	dx, es:[si+3Ah]
		mov	bx, ax
		mov	[bp+var_E], dx

loc_721C:				; CODE XREF: sub_71FC+89j
		mov	ax, dx
		or	ax, bx
		jz	short loc_7287
		mov	es, dx
		mov	ax, es:[bx+1Eh]
		mov	dx, es:[bx+20h]
		mov	di, ax
		mov	[bp+var_6], dx
		or	cx, cx
		jnz	short loc_7273
		mov	[bp+var_10], bx
		mov	si, ax
		mov	bx, [bp+var_18]

loc_723D:				; CODE XREF: sub_71FC+6Fj
		mov	ax, [bp+var_6]
		or	ax, si
		jz	short loc_726D
		mov	ax, [bp+arg_4]
		mov	es, [bp+var_6]
		cmp	es:[si+4], ax
		jnz	short loc_725C
		mov	cx, 1
		mov	ax, es
		mov	bx, si
		mov	[bp+var_16], ax
		jmp	short loc_7269
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_725C:				; CODE XREF: sub_71FC+52j
		mov	ax, es:[si+0Eh]
		mov	dx, es:[si+10h]
		mov	si, ax
		mov	[bp+var_6], dx

loc_7269:				; CODE XREF: sub_71FC+5Ej
		or	cx, cx
		jz	short loc_723D

loc_726D:				; CODE XREF: sub_71FC+46j
		mov	[bp+var_18], bx
		mov	bx, [bp+var_10]

loc_7273:				; CODE XREF: sub_71FC+37j
		mov	es, [bp+var_E]
		mov	ax, es:[bx+16h]
		mov	dx, es:[bx+18h]
		mov	bx, ax
		mov	[bp+var_E], dx
		or	cx, cx
		jz	short loc_721C

loc_7287:				; CODE XREF: sub_71FC+24j
		mov	ax, [bp+var_18]
		mov	dx, [bp+var_16]
		pop	si
		pop	di
		leave
		retf
sub_71FC	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_7292	proc far		; CODE XREF: seg012:0A11P

var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		enter	4, 0
		push	si
		push	[bp+arg_4]
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_71B6
		add	sp, 6
		mov	si, ax
		mov	[bp+var_2], dx
		or	dx, ax
		jz	short loc_72C7
		mov	es, [bp+var_2]
		cmp	[bp+arg_6], 0
		jz	short loc_72C2
		or	byte ptr es:[si+0Ch], 1
		pop	si
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_72C2:				; CODE XREF: sub_7292+25j
		and	byte ptr es:[si+0Ch], 0FEh

loc_72C7:				; CODE XREF: sub_7292+1Cj
		pop	si
		leave
		retf
sub_7292	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	4, 0
		push	si
		push	word ptr [bp+0Ah]
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_71FC
		add	sp, 6
		mov	si, ax
		cmp	word ptr [bp+0Ch], 0
		jz	short loc_72F0
		mov	es, dx
		or	byte ptr es:[si], 1
		pop	si
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_72F0:				; CODE XREF: seg006:0575j
		mov	es, dx
		and	byte ptr es:[si], 0FEh
		pop	si
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	8, 0
		push	di
		les	bx, [bp+6]
		mov	ax, es:[bx+38h]
		mov	dx, es:[bx+3Ah]
		mov	di, ax
		mov	[bp-6],	dx
		or	dx, ax
		jz	short loc_733B
		mov	es, word ptr [bp-6]

loc_7316:				; CODE XREF: seg006:05C9j
		lds	bx, es:[di+1Eh]
		mov	ax, ds
		or	ax, bx
		jz	short loc_732C

loc_7320:				; CODE XREF: seg006:05BAj
		and	byte ptr [bx], 0FEh
		lds	bx, [bx+0Eh]
		mov	ax, ds
		or	ax, bx
		jnz	short loc_7320

loc_732C:				; CODE XREF: seg006:05AEj
		mov	ax, seg	dseg
		mov	ds, ax
		les	di, es:[di+16h]
		mov	ax, es
		or	ax, di
		jnz	short loc_7316

loc_733B:				; CODE XREF: seg006:05A1j
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	4, 0
		push	si
		push	word ptr [bp+0Ah]
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_71FC
		add	sp, 6
		mov	si, ax
		cmp	word ptr [bp+0Ch], 0
		jz	short loc_7364
		mov	es, dx
		or	byte ptr es:[si], 2
		pop	si
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7364:				; CODE XREF: seg006:05E9j
		mov	es, dx
		and	byte ptr es:[si], 0FDh
		pop	si
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	8, 0
		push	di
		les	bx, [bp+6]
		mov	ax, es:[bx+38h]
		mov	dx, es:[bx+3Ah]
		mov	di, ax
		mov	[bp-6],	dx
		or	dx, ax
		jz	short loc_73AF
		mov	es, word ptr [bp-6]

loc_738A:				; CODE XREF: seg006:063Dj
		lds	bx, es:[di+1Eh]
		mov	ax, ds
		or	ax, bx
		jz	short loc_73A0

loc_7394:				; CODE XREF: seg006:062Ej
		and	byte ptr [bx], 0FDh
		lds	bx, [bx+0Eh]
		mov	ax, ds
		or	ax, bx
		jnz	short loc_7394

loc_73A0:				; CODE XREF: seg006:0622j
		mov	ax, seg	dseg
		mov	ds, ax
		les	di, es:[di+16h]
		mov	ax, es
		or	ax, di
		jnz	short loc_738A

loc_73AF:				; CODE XREF: seg006:0615j
		pop	di
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_73B2(int,int,__int32,char *,int,int)
sub_73B2	proc far		; CODE XREF: sub_196+55P sub_196+123P	...

var_16		= dword	ptr -16h
var_12		= word ptr -12h
var_E		= dword	ptr -0Eh
var_8		= word ptr -8
var_6		= word ptr -6
arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h

		enter	16h, 0		; int
		push	di		; int
		push	si		; int
		mov	[bp+var_6], 0
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+38h]
		mov	dx, es:[bx+3Ah]
		mov	di, ax
		mov	word ptr [bp+var_E+2], dx
		mov	cx, ax
		mov	si, dx
		mov	bx, ax
		mov	[bp+var_8], dx
		or	si, cx
		jz	short loc_7436
		mov	ds, dx

loc_73DC:				; CODE XREF: sub_73B2+3Dj
		mov	cx, [bx+2]
		add	cx, [bx+4]	; int
		mov	ax, ds
		mov	di, bx
		mov	es, ax
		assume es:dseg
		lds	bx, [bx+16h]
		mov	ax, ds
		or	ax, bx
		jnz	short loc_73DC
		mov	word ptr [bp+var_E+2], es
		mov	[bp+var_6], cx
		mov	word ptr [bp+var_E], di
		mov	ax, seg	dseg
		mov	ds, ax

loc_73FF:				; CODE XREF: sub_73B2+87j
		mov	di, word ptr [bp+arg_0]
		mov	es, word ptr [bp+arg_0+2]
		assume es:nothing
		mov	ax, es:[di+6]
		add	[bp+var_6], ax
		lea	ax, [di+3Ch]
		push	es
		push	ax		; __int32
		mov	ax, 22h	; '"'
		cwd			; int
		call	sub_F55A
		mov	si, ax
		mov	[bp+var_8], dx
		mov	ax, word ptr [bp+var_E+2]
		or	ax, word ptr [bp+var_E]
		jz	short loc_743C
		mov	ax, dx
		les	bx, [bp+var_E]
		mov	es:[bx+16h], si
		mov	es:[bx+18h], ax
		jmp	short loc_7449
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7436:				; CODE XREF: sub_73B2+26j
		mov	word ptr [bp+var_E], di
		jmp	short loc_73FF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_743C:				; CODE XREF: sub_73B2+73j
		mov	ax, dx
		mov	es, word ptr [bp+arg_0+2]
		mov	es:[di+38h], si
		mov	es:[di+3Ah], ax

loc_7449:				; CODE XREF: sub_73B2+82j
		mov	ax, word ptr [bp+var_E]
		mov	dx, word ptr [bp+var_E+2]
		mov	es, [bp+var_8]
		mov	es:[si+1Ah], ax
		mov	es:[si+1Ch], dx
		sub	ax, ax
		mov	es:[si+18h], ax
		mov	es:[si+16h], ax
		mov	es:[si+20h], ax
		mov	es:[si+1Eh], ax
		mov	es:[si], ax
		push	word ptr [bp+0Ch]
		push	[bp+arg_4]	; char *
		mov	ax, di
		mov	dx, word ptr [bp+arg_0+2]
		mov	cx, ax		; int
		mov	bx, dx
		add	ax, 3Ch	; '<'
		push	dx
		push	ax		; __int32
		push	word ptr [bp+0Ch]
		push	[bp+arg_4]	; char *
		mov	[bp+var_12], cx
		mov	[bp-10h], bx
		mov	word ptr [bp+var_16], si
		mov	word ptr [bp+var_16+2],	es
		call	_strlen_0
		add	sp, 4
		inc	ax
		sub	dx, dx		; int
		call	sub_F55A
		les	bx, [bp+var_16]
		mov	es:[bx+0Eh], ax
		mov	es:[bx+10h], dx
		push	dx		; char *
		push	ax		; char *
		call	_strcpy_0
		add	sp, 8
		push	word ptr [bp+0Ch] ; int
		push	[bp+arg_4]	; char *
		push	cs
		call	near ptr sub_6FB6
		add	sp, 4
		les	bx, [bp+var_16]
		mov	es:[bx+8], ax
		mov	word ptr es:[bx+6], 0Ah
		mov	ax, [bp+var_6]
		mov	es:[bx+2], ax
		push	word ptr [bp+0Ch]
		push	[bp+arg_4]	; char *
		mov	ax, [bp+var_12]
		mov	dx, [bp-10h]	; int
		add	ax, 20h	; ' '
		push	dx
		push	ax		; __int32
		push	cs
		call	near ptr sub_6E26
		add	sp, 8
		les	bx, dword ptr [bp+var_12]
		mov	cx, es:[bx+0Ah]
		shl	cx, 1
		add	ax, cx
		les	bx, [bp+var_16]
		mov	es:[bx+4], ax
		cmp	[bp+arg_A], 0
		jz	short loc_7524
		mov	ax, 140h
		mov	es, [bp+var_8]
		sub	ax, es:[si+4]
		mov	cx, es
		mov	es, word ptr [bp+arg_0+2]
		sub	ax, es:[di+6]
		mov	es, cx
		mov	es:[si+2], ax

loc_7524:				; CODE XREF: sub_73B2+157j
		mov	ax, word ptr [bp+arg_0+2]
		mov	es, [bp+var_8]
		mov	es:[si+12h], di
		mov	es:[si+14h], ax
		mov	cx, [bp+arg_8]
		mov	es:[si+0Ah], cx
		mov	word ptr es:[si+0Ch], 0

loc_753F:
		mov	dx, es
		mov	es, ax
		inc	word ptr es:[di+2]
		mov	ax, si
		pop	si
		pop	di
		leave
		retf
sub_73B2	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_754E(int,int,int,int,int,char *,int)
sub_754E	proc far		; CODE XREF: sub_196+70P sub_196+8BP ...

var_14		= dword	ptr -14h
var_E		= word ptr -0Eh
var_6		= word ptr -6
var_2		= word ptr -2
arg_0		= word ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_A		= word ptr  10h

		enter	14h, 0		; int
		push	di		; int
		push	si		; int
		sub	ax, ax
		cwd
		mov	si, ax
		mov	[bp+var_6], dx
		push	[bp+arg_4]
		push	word ptr [bp+8]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_71B6
		add	sp, 6
		mov	word ptr [bp+var_14], ax
		mov	word ptr [bp+var_14+2],	dx
		or	dx, ax
		jnz	short loc_7579
		jmp	loc_76AA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7579:				; CODE XREF: sub_754E+26j
		sub	ax, ax
		cwd
		mov	cx, ax		; int
		mov	[bp+var_E], dx
		les	si, [bp+var_14]
		mov	ax, es:[si+1Eh]
		mov	dx, es:[si+20h]
		mov	bx, ax
		mov	[bp+var_6], dx
		or	dx, ax
		jnz	short loc_75C6
		mov	di, cx

loc_7597:				; CODE XREF: sub_754E+91j
		mov	ax, [bp+arg_0]
		mov	dx, [bp+8]
		add	ax, 3Ch	; '<'
		push	dx
		push	ax		; __int32
		mov	ax, 16h
		cwd			; int
		call	sub_F55A
		mov	si, ax
		mov	[bp+var_6], dx
		mov	ax, [bp+var_E]
		or	ax, di
		jz	short loc_75E2
		mov	ax, dx
		mov	es, [bp+var_E]
		mov	es:[di+0Eh], si
		mov	es:[di+10h], ax
		jmp	short loc_75EF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_75C6:				; CODE XREF: sub_754E+45j
		mov	ds, [bp+var_6]

loc_75C9:				; CODE XREF: sub_754E+87j
		mov	di, bx
		push	ds
		pop	es
		assume es:dseg
		lds	bx, es:[bx+0Eh]
		mov	ax, ds
		or	ax, bx
		jnz	short loc_75C9
		mov	[bp+var_E], es
		mov	ax, seg	dseg
		mov	ds, ax
		jmp	short loc_7597
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_75E2:				; CODE XREF: sub_754E+67j
		mov	ax, dx
		les	bx, [bp+var_14]
		assume es:nothing
		mov	es:[bx+1Eh], si
		mov	es:[bx+20h], ax

loc_75EF:				; CODE XREF: sub_754E+76j
		mov	ax, [bp+var_E]
		mov	es, dx
		mov	es:[si+12h], di
		mov	es:[si+14h], ax
		sub	ax, ax
		mov	es:[si+10h], ax
		mov	es:[si+0Eh], ax
		mov	es:[si], ax
		push	word ptr [bp+0Eh]
		push	[bp+arg_6]	; char *
		mov	ax, [bp+arg_0]
		mov	dx, [bp+8]
		add	ax, 3Ch	; '<'
		push	dx
		push	ax		; __int32
		push	word ptr [bp+0Eh]
		push	[bp+arg_6]	; char *
		mov	di, es
		call	_strlen_0
		add	sp, 4
		inc	ax
		sub	dx, dx		; int
		call	sub_F55A
		mov	es, di
		mov	es:[si+6], ax
		mov	es:[si+8], dx
		push	dx		; char *
		push	ax		; char *
		call	_strcpy_0
		add	sp, 8
		les	bx, dword ptr [bp+arg_6]
		cmp	byte ptr es:[bx], 0
		jnz	short loc_7655
		mov	es, di
		or	byte ptr es:[si], 1

loc_7655:				; CODE XREF: sub_754E+FFj
		mov	ax, [bp+arg_A]
		mov	es, di
		mov	es:[si+4], ax
		push	word ptr [bp+0Eh] ; int
		push	bx		; char *
		push	cs
		call	near ptr sub_6FB6
		add	sp, 4
		mov	es, di
		mov	es:[si+2], ax
		push	word ptr [bp+0Eh]
		push	[bp+arg_6]	; char *
		mov	ax, [bp+arg_0]
		mov	dx, [bp+8]	; int
		add	ax, 2Ch	; ','
		push	dx
		push	ax		; __int32
		push	cs
		call	near ptr sub_6E26
		add	sp, 8
		mov	[bp+var_2], ax
		les	bx, dword ptr [bp+arg_0]
		mov	ax, es:[bx+0Ch]
		shl	ax, 1
		add	ax, [bp+var_2]
		les	bx, [bp+var_14]
		cmp	ax, es:[bx+6]
		jge	short loc_76A3
		mov	ax, es:[bx+6]

loc_76A3:				; CODE XREF: sub_754E+14Fj
		mov	es:[bx+6], ax
		inc	word ptr es:[bx]

loc_76AA:				; CODE XREF: sub_754E+28j
		mov	ax, si
		mov	dx, [bp+var_6]
		pop	si
		pop	di
		leave
		retf
sub_754E	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_76B4	proc far		; CODE XREF: sub_CE0+37P sub_22B0+12P	...

var_C		= dword	ptr -0Ch
var_8		= word ptr -8
var_2		= word ptr -2
arg_0		= word ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh

		enter	0Ch, 0
		push	si
		les	bx, dword ptr [bp+arg_0]
		push	word ptr es:[bx+2Ah]
		push	word ptr es:[bx+28h]
		call	sub_6D78
		add	sp, 4
		les	bx, dword ptr [bp+arg_0]
		add	ax, es:[bx+4]
		inc	ax
		mov	[bp+var_8], ax
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		push	ax
		push	0
		push	0
		push	140h
		mov	al, es:[bx+0Eh]
		push	ax
		mov	al, es:[bx+10h]
		push	ax
		push	0
		push	0
		sub	ax, ax
		cwd
		mov	bx, 140h
		call	sub_6DC2
		les	bx, dword ptr [bp+arg_0]
		mov	ax, es:[bx+38h]
		mov	dx, es:[bx+3Ah]
		mov	word ptr [bp+var_C], ax
		mov	word ptr [bp+var_C+2], dx
		or	dx, ax
		jnz	short loc_771C
		jmp	loc_77C1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_771C:				; CODE XREF: sub_76B4+63j
					; sub_76B4+10Aj
		les	bx, [bp+var_C]
		test	byte ptr es:[bx+0Ch], 1
		jz	short loc_7729
		jmp	loc_77A9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7729:				; CODE XREF: sub_76B4+70j
		mov	ax, es:[bx+2]
		mov	[bp+var_2], ax
		mov	ax, es
		cmp	bx, [bp+arg_4]
		jnz	short loc_777C
		cmp	ax, [bp+arg_6]
		jnz	short loc_777C
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		push	[bp+var_8]
		push	0
		push	0
		push	140h
		les	bx, dword ptr [bp+arg_0]
		mov	al, es:[bx+1Ah]
		push	ax
		mov	al, es:[bx+1Ch]
		push	ax
		push	0
		push	0
		mov	bx, es:[bx+0Ah]
		shl	bx, 1
		les	si, [bp+var_C]
		add	bx, es:[si+4]
		mov	ax, [bp+var_2]
		sub	dx, dx
		call	sub_6DC2

loc_777C:				; CODE XREF: sub_76B4+81j sub_76B4+86j
		push	0		; int
		les	bx, dword ptr [bp+arg_0]
		push	word ptr es:[bx+4] ; int
		mov	ax, es:[bx+0Ah]
		add	ax, [bp+var_2]
		push	ax		; int
		les	si, [bp+var_C]
		push	word ptr es:[si+10h] ; int
		push	word ptr es:[si+0Eh] ; char *
		mov	ax, bx
		mov	dx, [bp+8]
		add	ax, 20h	; ' '
		push	dx		; int
		push	ax		; int
		push	cs
		call	near ptr sub_6E7C
		add	sp, 0Eh

loc_77A9:				; CODE XREF: sub_76B4+72j
		les	bx, [bp+var_C]
		mov	ax, es:[bx+16h]
		mov	dx, es:[bx+18h]
		mov	word ptr [bp+var_C], ax
		mov	word ptr [bp+var_C+2], dx
		or	dx, ax
		jz	short loc_77C1
		jmp	loc_771C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_77C1:				; CODE XREF: sub_76B4+65j
					; sub_76B4+108j
		cmp	[bp+arg_8], 0
		jz	short loc_77D9
		push	0
		push	140h
		push	[bp+var_8]
		sub	ax, ax
		cwd
		sub	bx, bx
		call	sub_C384

loc_77D9:				; CODE XREF: sub_76B4+111j
		pop	si
		leave
		retf
sub_76B4	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_77DC	proc far		; CODE XREF: sub_78F2+32p sub_7B0C+83p

var_12		= dword	ptr -12h
var_8		= word ptr -8
var_6		= word ptr -6
var_2		= word ptr -2
arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h
arg_C		= word ptr  12h
arg_E		= word ptr  14h

		enter	12h, 0
		push	di
		push	si
		mov	si, word ptr [bp+arg_0]
		mov	es, word ptr [bp+arg_0+2]
		mov	ax, es:[si+2]
		mov	bx, [bp+arg_4]
		mov	[bx], ax
		mov	ax, es
		les	bx, es:[si+12h]
		mov	word ptr [bp+var_12], bx
		mov	word ptr [bp+var_12+2],	es
		push	word ptr es:[bx+2Ah]
		push	word ptr es:[bx+28h]
		mov	di, ax
		call	sub_6D78
		add	sp, 4
		les	bx, [bp+var_12]
		add	ax, es:[bx+4]
		add	ax, 3
		mov	bx, [bp+arg_6]
		mov	[bx], ax
		mov	[bp+var_6], 0
		mov	es, di
		mov	ax, es:[si+1Eh]
		mov	dx, es:[si+20h]
		mov	[bp+var_8], dx
		or	dx, ax
		jz	short loc_7851
		mov	bx, ax
		mov	cx, [bp+var_6]
		mov	ds, [bp+var_8]

loc_783A:				; CODE XREF: sub_77DC+6Bj
		test	byte ptr [bx], 2
		jnz	short loc_7840
		inc	cx		; int

loc_7840:				; CODE XREF: sub_77DC+61j
		lds	bx, [bx+0Eh]
		mov	ax, ds
		or	ax, bx
		jnz	short loc_783A
		mov	[bp+var_6], cx
		mov	ax, seg	dseg
		mov	ds, ax

loc_7851:				; CODE XREF: sub_77DC+54j
		mov	si, [bp+arg_4]
		mov	di, [bp+arg_6]
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+6]
		inc	ax
		inc	ax
		mov	bx, [bp+arg_8]
		mov	[bx], ax
		add	ax, [si]
		dec	ax
		mov	[bp+var_8], ax
		les	bx, [bp+var_12]
		push	word ptr es:[bx+36h]
		push	word ptr es:[bx+34h]
		call	sub_6D78
		add	sp, 4
		les	bx, [bp+var_12]
		add	ax, es:[bx+8]
		imul	[bp+var_6]
		add	ax, es:[bx+8]
		inc	ax
		inc	ax
		mov	bx, [bp+arg_A]
		mov	[bx], ax
		add	ax, [di]
		dec	ax
		mov	[bp+var_2], ax
		cmp	[bp+var_8], 13Eh
		jl	short loc_78A6
		mov	ax, 13Dh
		sub	ax, [bp+var_8]
		add	[si], ax

loc_78A6:				; CODE XREF: sub_77DC+C0j
		cmp	[bp+var_2], 0C6h ; 'Æ'
		jl	short loc_78B5
		mov	ax, 0C7h ; 'Ç'
		sub	ax, [bp+var_2]
		add	[di], ax

loc_78B5:				; CODE XREF: sub_77DC+CFj
		mov	ax, [si]
		inc	ax
		mov	bx, [bp+arg_C]
		mov	[bx], ax
		mov	bx, word ptr [bp+var_12]
		mov	ax, es:[bx+8]
		add	ax, [di]
		inc	ax
		mov	bx, [bp+arg_E]
		mov	[bx], ax
		cmp	word ptr [si], 0
		jl	short loc_78D6
		cmp	word ptr [di], 0
		jge	short loc_78EE

loc_78D6:				; CODE XREF: sub_77DC+F3j
		mov	ax, [si]
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, [di]
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, 0FFB0h
		mov	dx, 2		; int
		mov	bx, 28h	; '('
		call	sub_F0D6

loc_78EE:				; CODE XREF: sub_77DC+F8j
		pop	si
		pop	di
		leave
		retf
sub_77DC	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_78F2	proc far		; CODE XREF: sub_7B0C+538p

var_24		= word ptr -24h
var_22		= word ptr -22h
var_20		= word ptr -20h
var_1E		= word ptr -1Eh
var_1C		= word ptr -1Ch
var_1A		= word ptr -1Ah
var_18		= word ptr -18h
var_14		= dword	ptr -14h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		enter	24h, 0
		push	di
		push	si
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+12h]
		mov	dx, es:[bx+14h]
		mov	[bp+var_18], ax
		mov	[bp-16h], dx
		lea	ax, [bp+var_24]
		push	ax
		lea	cx, [bp+var_20]
		push	cx
		lea	dx, [bp+var_22]
		push	dx
		lea	si, [bp+var_1E]
		push	si
		lea	di, [bp+var_1A]
		push	di
		lea	ax, [bp+var_1C]
		push	ax
		push	es
		push	bx
		push	cs
		call	near ptr sub_77DC
		add	sp, 10h
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		mov	ax, [bp+var_22]
		add	ax, [bp+var_1A]
		dec	ax
		push	ax
		les	bx, dword ptr [bp+var_18]
		mov	al, es:[bx+1Eh]
		push	ax
		mov	ax, [bp+var_1C]
		mov	bx, [bp+var_1E]
		add	bx, ax
		lea	bx, [bx-1]
		mov	dx, [bp+var_1A]
		call	sub_C86C
		mov	ax, [bp+var_1C]
		inc	ax
		mov	[bp+var_20], ax
		mov	cx, [bp+var_1A]
		inc	cx
		mov	[bp+var_24], cx
		mov	dx, [bp+var_1E]
		dec	dx
		dec	dx
		mov	[bp+var_E], dx
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		mov	bx, [bp+var_22]
		dec	bx
		dec	bx
		push	bx
		push	[bp+var_1C]
		push	[bp+var_1A]
		push	[bp+var_1E]
		les	bx, dword ptr [bp+var_18]
		mov	bl, es:[bx+12h]
		push	bx
		mov	bx, [bp+var_18]
		mov	bl, es:[bx+14h]
		push	bx
		push	0
		push	0
		mov	bx, dx
		mov	dx, cx
		mov	si, ax
		mov	di, cx
		call	sub_6DC2
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+1Eh]
		mov	dx, es:[bx+20h]
		mov	word ptr [bp+var_14], ax
		mov	word ptr [bp+var_14+2],	dx
		les	bx, dword ptr [bp+var_18]
		add	si, es:[bx+0Ch]
		mov	[bp+var_10], si
		add	di, es:[bx+8]
		mov	[bp+var_C], di
		or	dx, ax
		jnz	short loc_79DA
		jmp	loc_7AF1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_79DA:				; CODE XREF: sub_78F2+E3j
					; sub_78F2+1FCj
		les	bx, [bp+var_14]
		test	byte ptr es:[bx], 2
		jz	short loc_79E6
		jmp	loc_7AD9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_79E6:				; CODE XREF: sub_78F2+EFj
		mov	dx, es
		cmp	[bp+arg_4], ax
		jnz	short loc_7A44
		cmp	[bp+arg_6], dx
		jnz	short loc_7A44
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		les	bx, dword ptr [bp+var_18]
		push	word ptr es:[bx+36h]
		push	word ptr es:[bx+34h]
		call	sub_6D78
		add	sp, 4
		inc	ax
		inc	ax
		push	ax
		push	[bp+var_1C]
		push	[bp+var_1A]
		push	[bp+var_1E]
		les	bx, dword ptr [bp+var_18]
		mov	al, es:[bx+16h]
		push	ax
		mov	al, es:[bx+18h]
		push	ax
		push	0
		push	0
		mov	ax, [bp+var_20]
		inc	ax
		les	bx, [bp+arg_0]
		mov	bx, es:[bx+6]
		dec	bx
		dec	bx
		mov	dx, [bp+var_C]
		dec	dx
		call	sub_6DC2

loc_7A44:				; CODE XREF: sub_78F2+F9j sub_78F2+FEj
		les	bx, [bp+var_14]
		les	bx, es:[bx+6]
		cmp	byte ptr es:[bx], 0
		jnz	short loc_7A94
		les	bx, dword ptr [bp+var_18]
		push	word ptr es:[bx+36h]
		push	word ptr es:[bx+34h]
		call	sub_6D78
		add	sp, 4
		sar	ax, 1
		add	ax, [bp+var_C]
		mov	[bp+var_A], ax
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		push	1
		les	bx, dword ptr [bp+var_18]
		mov	al, es:[bx+2Eh]
		push	ax
		mov	ax, [bp+var_20]
		mov	dx, [bp+var_A]
		mov	bx, [bp+var_E]
		call	sub_C5B4
		jmp	short loc_7ABE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7A94:				; CODE XREF: sub_78F2+15Dj
		les	bx, [bp+var_14]
		mov	al, es:[bx]
		and	ax, 1
		push	ax		; int
		push	[bp+var_C]	; int
		push	[bp+var_10]	; int
		push	word ptr es:[bx+8] ; int
		push	word ptr es:[bx+6] ; char *
		mov	ax, [bp+var_18]
		mov	dx, [bp-16h]
		add	ax, 2Ch	; ','
		push	dx		; int
		push	ax		; int
		push	cs
		call	near ptr sub_6E7C
		add	sp, 0Eh

loc_7ABE:				; CODE XREF: sub_78F2+1A0j
		les	bx, dword ptr [bp+var_18]
		push	word ptr es:[bx+36h]
		push	word ptr es:[bx+34h]
		call	sub_6D78
		add	sp, 4
		les	bx, dword ptr [bp+var_18]
		add	ax, es:[bx+8]
		add	[bp+var_C], ax

loc_7AD9:				; CODE XREF: sub_78F2+F1j
		les	bx, [bp+var_14]
		mov	ax, es:[bx+0Eh]
		mov	dx, es:[bx+10h]
		mov	word ptr [bp+var_14], ax
		mov	word ptr [bp+var_14+2],	dx
		or	dx, ax
		jz	short loc_7AF1
		jmp	loc_79DA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7AF1:				; CODE XREF: sub_78F2+E5j
					; sub_78F2+1FAj
		push	[bp+var_1A]
		push	[bp+var_1E]
		push	[bp+var_22]
		mov	ax, [bp+var_1C]
		mov	dx, [bp+var_1A]
		mov	bx, ax
		call	sub_C384
		pop	si
		pop	di
		leave
		retf
sub_78F2	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_7B0C	proc far		; CODE XREF: sub_8124+92p sub_81C2+80p

var_3C		= word ptr -3Ch
var_3A		= word ptr -3Ah
var_38		= word ptr -38h
var_36		= word ptr -36h
var_34		= dword	ptr -34h
var_30		= word ptr -30h
var_2E		= word ptr -2Eh
var_2C		= word ptr -2Ch
var_2A		= dword	ptr -2Ah
var_26		= word ptr -26h
var_24		= word ptr -24h
var_22		= word ptr -22h
var_20		= word ptr -20h
var_1E		= word ptr -1Eh
var_1C		= word ptr -1Ch
var_1A		= word ptr -1Ah
var_18		= word ptr -18h
var_16		= word ptr -16h
var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= dword	ptr -0Eh
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= dword	ptr -6
var_2		= word ptr -2
arg_0		= dword	ptr  6

		enter	3Ch, 0
		push	si
		mov	[bp+var_20], 0
		sub	ax, ax
		mov	word ptr [bp+var_2A+2],	ax
		mov	word ptr [bp+var_2A], ax
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+12h]
		mov	dx, es:[bx+14h]
		mov	word ptr [bp+var_E], ax
		mov	word ptr [bp+var_E+2], dx
		mov	[bp+var_A], 1
		mov	bx, 40h	; '@'
		mov	es, bx
		assume es:nothing
		mov	bx, 17h
		mov	al, es:[bx]
		and	ax, 8
		mov	[bp+var_1A], ax

loc_7B45:				; CODE XREF: sub_7B0C+5ACj
		mov	[bp+var_14], 0
		mov	[bp+var_30], 1
		les	bx, [bp+arg_0]
		assume es:nothing
		mov	ax, es:[bx+20h]
		or	ax, es:[bx+1Eh]
		jnz	short loc_7B5F
		jmp	loc_8106
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7B5F:				; CODE XREF: sub_7B0C+4Ej
		push	1
		push	es
		push	bx
		push	word ptr [bp+var_E+2]
		push	word ptr [bp+var_E]
		push	cs
		call	near ptr sub_76B4
		add	sp, 0Ah
		lea	ax, [bp+var_18]
		push	ax
		lea	ax, [bp+var_10]
		push	ax
		lea	ax, [bp+var_2C]
		push	ax
		lea	cx, [bp+var_26]
		push	cx
		lea	dx, [bp+var_1E]
		push	dx
		lea	bx, [bp+var_1C]
		push	bx
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_77DC
		add	sp, 10h
		les	bx, [bp+var_E]
		push	word ptr es:[bx+36h]
		push	word ptr es:[bx+34h]
		call	sub_6D78
		add	sp, 4
		les	bx, [bp+var_E]
		add	ax, es:[bx+8]
		mov	[bp+var_8], ax
		push	[bp+var_1C]
		push	[bp+var_1E]
		push	[bp+var_26]
		push	[bp+var_2C]
		lea	bx, word_19964
		mov	ax, 0FFF8h
		cwd
		call	sub_C9DE
		mov	[bp+var_16], ax
		mov	ax, word_1659A
		mov	[bp+var_24], ax
		or	ax, ax
		jnz	short loc_7BE7
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+1Eh]
		mov	dx, es:[bx+20h]
		mov	word ptr [bp+var_2A], ax
		mov	word ptr [bp+var_2A+2],	dx

loc_7BE7:				; CODE XREF: sub_7B0C+C8j
					; sub_7B0C+572j
		call	nullsub_3
		sub	ax, ax
		call	sub_C252
		cmp	word_165A2, 0
		jnz	short loc_7BFD
		jmp	loc_7D6A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7BFD:				; CODE XREF: sub_7B0C+ECj
		mov	[bp+var_2E], 0
		les	bx, [bp+var_E]
		push	word ptr es:[bx+2Ah]
		push	word ptr es:[bx+28h]
		call	sub_6D78
		add	sp, 4
		les	bx, [bp+var_E]
		add	ax, es:[bx+4]
		inc	ax
		cmp	ax, word_16596
		jl	short loc_7C82
		mov	ax, es:[bx+38h]
		mov	dx, es:[bx+3Ah]

loc_7C29:				; CODE XREF: sub_7B0C+174j
		mov	word ptr [bp+var_6], ax
		mov	word ptr [bp+var_6+2], dx

loc_7C2F:				; CODE XREF: sub_7B0C+160j
					; sub_7B0C+16Aj
		mov	ax, word ptr [bp+var_6+2]
		or	ax, word ptr [bp+var_6]
		jz	short loc_7C82
		cmp	[bp+var_2E], 0
		jnz	short loc_7C82
		les	bx, [bp+var_6]
		mov	ax, es:[bx+2]
		mov	[bp+var_2], ax
		add	ax, es:[bx+4]
		mov	[bp+var_22], ax
		cmp	ax, word_16594
		jl	short loc_7C78
		test	byte ptr es:[bx+0Ch], 1
		jnz	short loc_7C78
		mov	ax, es
		cmp	word ptr [bp+arg_0], bx
		jnz	short loc_7C67
		cmp	word ptr [bp+arg_0+2], ax
		jz	short loc_7C6E

loc_7C67:				; CODE XREF: sub_7B0C+154j
		mov	[bp+var_2E], 1
		jmp	short loc_7C2F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7C6E:				; CODE XREF: sub_7B0C+159j
		sub	ax, ax
		mov	word ptr [bp+var_6+2], ax
		mov	word ptr [bp+var_6], ax
		jmp	short loc_7C2F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7C78:				; CODE XREF: sub_7B0C+146j
					; sub_7B0C+14Dj
		mov	ax, es:[bx+16h]
		mov	dx, es:[bx+18h]
		jmp	short loc_7C29
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7C82:				; CODE XREF: sub_7B0C+113j
					; sub_7B0C+129j ...
		cmp	[bp+var_2E], 0
		jz	short loc_7CA2
		mov	ax, word ptr [bp+var_6]
		mov	dx, word ptr [bp+var_6+2]
		mov	word ptr [bp+arg_0], ax
		mov	word ptr [bp+arg_0+2], dx
		mov	[bp+var_14], 1
		mov	[bp+var_20], 0
		jmp	loc_7D6A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_7CA2:				; CODE XREF: sub_7B0C+17Aj
		mov	ax, [bp+var_1E]
		cmp	word_16596, ax
		jl	short loc_7CC8
		add	ax, [bp+var_2C]
		dec	ax
		cmp	ax, word_16596
		jl	short loc_7CC8
		mov	ax, [bp+var_1C]
		cmp	word_16594, ax
		jl	short loc_7CC8
		add	ax, [bp+var_26]
		dec	ax
		cmp	ax, word_16594
		jge	short loc_7CDC

loc_7CC8:				; CODE XREF: sub_7B0C+19Dj
					; sub_7B0C+1A7j ...
		mov	[bp+var_30], 1
		sub	ax, ax
		mov	word ptr [bp+var_2A+2],	ax
		mov	word ptr [bp+var_2A], ax
		mov	[bp+var_20], ax
		jmp	loc_7D6A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_7CDC:				; CODE XREF: sub_7B0C+1BAj
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+1Eh]
		mov	dx, es:[bx+20h]
		mov	word ptr [bp+var_34], ax
		mov	word ptr [bp+var_34+2],	dx
		mov	[bp+var_2E], 0
		mov	ax, [bp+var_18]
		mov	[bp+var_12], ax
		jmp	short loc_7D64
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7CFA:				; CODE XREF: sub_7B0C+25Cj
		mov	ax, word ptr [bp+var_34+2]
		or	ax, word ptr [bp+var_34]
		jz	short loc_7D6A
		les	bx, [bp+var_34]
		mov	ax, es:[bx]
		mov	cx, ax
		test	al, 2
		jnz	short loc_7D53
		mov	ax, [bp+var_12]
		dec	ax
		cmp	ax, word_16596
		jg	short loc_7D4D
		mov	ax, [bp+var_8]
		add	ax, [bp+var_12]
		dec	ax
		cmp	ax, word_16596
		jle	short loc_7D4D
		test	cl, 1
		jnz	short loc_7D4D
		les	si, es:[bx+6]
		cmp	byte ptr es:[si], 0
		jz	short loc_7D4D
		mov	ax, bx
		mov	dx, word ptr [bp+var_34+2]
		mov	word ptr [bp+var_2A], ax
		mov	word ptr [bp+var_2A+2],	dx
		mov	ax, 1
		mov	[bp+var_2E], ax
		mov	[bp+var_30], ax
		mov	[bp+var_20], 0

loc_7D4D:				; CODE XREF: sub_7B0C+20Aj
					; sub_7B0C+217j ...
		mov	ax, [bp+var_8]
		add	[bp+var_12], ax

loc_7D53:				; CODE XREF: sub_7B0C+200j
		mov	es, word ptr [bp+var_34+2]
		mov	ax, es:[bx+0Eh]
		mov	dx, es:[bx+10h]
		mov	word ptr [bp+var_34], ax
		mov	word ptr [bp+var_34+2],	dx

loc_7D64:				; CODE XREF: sub_7B0C+1ECj
		cmp	[bp+var_2E], 0
		jz	short loc_7CFA

loc_7D6A:				; CODE XREF: sub_7B0C+EEj
					; sub_7B0C+192j ...
		call	sub_BAF4
		or	ax, ax
		jnz	short loc_7D76
		jmp	loc_7E52
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7D76:				; CODE XREF: sub_7B0C+265j
		cmp	[bp+var_A], 0
		jnz	short loc_7D7F
		jmp	loc_7E52
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7D7F:				; CODE XREF: sub_7B0C+26Ej
		cmp	[bp+var_14], 0
		jz	short loc_7D88
		jmp	loc_7E52
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7D88:				; CODE XREF: sub_7B0C+277j
		call	sub_BB08
		mov	[bp+var_3C], ax
		cmp	ax, 100h
		jge	short loc_7DA4
		mov	bx, ax
		test	byte ptr [bx+45A9h], 2
		jz	short loc_7DA4
		sub	ax, 20h	; ' '
		mov	[bp+var_3C], ax

loc_7DA4:				; CODE XREF: sub_7B0C+287j
					; sub_7B0C+290j
		mov	[bp+var_20], 0
		cmp	ax, 38h	; '8'
		jz	short loc_7DD2
		jle	short loc_7DB3
		jmp	loc_7FF4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7DB3:				; CODE XREF: sub_7B0C+2A2j
		cmp	ax, 32h	; '2'
		jnz	short loc_7DBB
		jmp	loc_7E9C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7DBB:				; CODE XREF: sub_7B0C+2AAj
		jbe	short loc_7DC0
		jmp	loc_8013
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7DC0:				; CODE XREF: sub_7B0C:loc_7DBBj
		sub	al, 0Dh
		jnz	short loc_7DC7
		jmp	loc_7F88
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7DC7:				; CODE XREF: sub_7B0C+2B6j
		sub	al, 0Eh
		jnz	short loc_7DCE
		jmp	loc_7F90
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7DCE:				; CODE XREF: sub_7B0C+2BDj
		jmp	loc_8013
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_7DD2:				; CODE XREF: sub_7B0C+2A0j
					; sub_7B0C+4EDj
		sub	ax, ax
		mov	[bp+var_38], ax
		mov	[bp+var_3A], ax

loc_7DDA:				; CODE XREF: sub_7B0C+33Fj
		mov	ax, word ptr [bp+var_2A+2]
		or	ax, word ptr [bp+var_2A]
		jz	short loc_7DF3
		les	bx, [bp+var_2A]
		mov	ax, es:[bx+12h]
		mov	dx, es:[bx+14h]
		mov	word ptr [bp+var_2A], ax
		mov	word ptr [bp+var_2A+2],	dx

loc_7DF3:				; CODE XREF: sub_7B0C+2D4j
		mov	ax, word ptr [bp+var_2A+2]
		or	ax, word ptr [bp+var_2A]
		jnz	short loc_7E34
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+1Eh]
		mov	dx, es:[bx+20h]

loc_7E06:				; CODE XREF: sub_7B0C+315j
		mov	word ptr [bp+var_2A], ax
		mov	word ptr [bp+var_2A+2],	dx
		les	bx, [bp+var_2A]
		mov	ax, es:[bx+10h]
		or	ax, es:[bx+0Eh]
		jz	short loc_7E24
		mov	ax, es:[bx+0Eh]
		mov	dx, es:[bx+10h]
		jmp	short loc_7E06
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_7E24:				; CODE XREF: sub_7B0C+30Bj
		cmp	[bp+var_3A], 0
		jz	short loc_7E2F
		mov	[bp+var_38], 1

loc_7E2F:				; CODE XREF: sub_7B0C+31Cj
		mov	[bp+var_3A], 1

loc_7E34:				; CODE XREF: sub_7B0C+2EDj
		les	bx, [bp+var_2A]
		test	byte ptr es:[bx], 3
		jnz	short loc_7E47
		les	bx, es:[bx+6]
		cmp	byte ptr es:[bx], 0
		jnz	short loc_7E4D

loc_7E47:				; CODE XREF: sub_7B0C+32Fj
		cmp	[bp+var_38], 0
		jz	short loc_7DDA

loc_7E4D:				; CODE XREF: sub_7B0C+339j
					; sub_7B0C+3EDj ...
		mov	[bp+var_30], 1

loc_7E52:				; CODE XREF: sub_7B0C+267j
					; sub_7B0C+270j ...
		mov	bx, 40h	; '@'
		mov	es, bx
		assume es:nothing
		mov	bx, 17h
		mov	al, es:[bx]
		and	ax, 8
		mov	[bp+var_36], ax
		cmp	[bp+var_20], 0
		jz	short loc_7E7A
		or	ax, ax
		jnz	short loc_7E7A
		cmp	[bp+var_1A], ax
		jnz	short loc_7E75
		mov	[bp+var_A], ax

loc_7E75:				; CODE XREF: sub_7B0C+364j
		mov	[bp+var_1A], 0

loc_7E7A:				; CODE XREF: sub_7B0C+35Bj
					; sub_7B0C+35Fj
		or	ax, ax
		jnz	short loc_7E81
		jmp	loc_8026
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7E81:				; CODE XREF: sub_7B0C+370j
		cmp	[bp+var_30], 0
		jz	short loc_7E8A
		jmp	loc_8026
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7E8A:				; CODE XREF: sub_7B0C+379j
		cmp	[bp+var_14], 0
		jz	short loc_7E93
		jmp	loc_8026
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7E93:				; CODE XREF: sub_7B0C+382j
		mov	[bp+var_20], 1
		jmp	loc_802B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_7E9C:				; CODE XREF: sub_7B0C+2ACj
					; sub_7B0C+504j
		sub	ax, ax
		mov	[bp+var_38], ax
		mov	[bp+var_3A], ax

loc_7EA4:				; CODE XREF: sub_7B0C+3F4j
		mov	ax, word ptr [bp+var_2A+2]
		or	ax, word ptr [bp+var_2A]
		jz	short loc_7EBD
		les	bx, [bp+var_2A]
		assume es:nothing
		mov	ax, es:[bx+0Eh]
		mov	dx, es:[bx+10h]
		mov	word ptr [bp+var_2A], ax
		mov	word ptr [bp+var_2A+2],	dx

loc_7EBD:				; CODE XREF: sub_7B0C+39Ej
		mov	ax, word ptr [bp+var_2A+2]
		or	ax, word ptr [bp+var_2A]
		jnz	short loc_7EE6
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+1Eh]
		mov	dx, es:[bx+20h]
		mov	word ptr [bp+var_2A], ax
		mov	word ptr [bp+var_2A+2],	dx
		cmp	[bp+var_3A], 0
		jz	short loc_7EE1
		mov	[bp+var_38], 1

loc_7EE1:				; CODE XREF: sub_7B0C+3CEj
		mov	[bp+var_3A], 1

loc_7EE6:				; CODE XREF: sub_7B0C+3B7j
		les	bx, [bp+var_2A]
		test	byte ptr es:[bx], 3
		jnz	short loc_7EFC
		les	bx, es:[bx+6]
		cmp	byte ptr es:[bx], 0
		jz	short loc_7EFC
		jmp	loc_7E4D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7EFC:				; CODE XREF: sub_7B0C+3E1j
					; sub_7B0C+3EBj
		cmp	[bp+var_38], 0
		jz	short loc_7EA4
		jmp	loc_7E4D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_7F06:				; CODE XREF: sub_7B0C+440j
					; sub_7B0C+4F5j
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+1Ah]
		mov	dx, es:[bx+1Ch]
		mov	word ptr [bp+arg_0], ax
		mov	word ptr [bp+arg_0+2], dx
		or	dx, ax
		jnz	short loc_7F44
		les	bx, [bp+var_E]
		mov	ax, es:[bx+38h]
		mov	dx, es:[bx+3Ah]

loc_7F26:				; CODE XREF: sub_7B0C+435j
		mov	word ptr [bp+arg_0], ax
		mov	word ptr [bp+arg_0+2], dx
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+18h]
		or	ax, es:[bx+16h]
		jz	short loc_7F44
		mov	ax, es:[bx+16h]
		mov	dx, es:[bx+18h]
		jmp	short loc_7F26
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_7F44:				; CODE XREF: sub_7B0C+40Dj
					; sub_7B0C+42Bj
		les	bx, [bp+arg_0]
		test	byte ptr es:[bx+0Ch], 1
		jnz	short loc_7F06

loc_7F4E:				; CODE XREF: sub_7B0C+47Aj
		mov	[bp+var_14], 1
		jmp	loc_7E52
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7F56:				; CODE XREF: sub_7B0C+478j
					; sub_7B0C+4FCj
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+16h]
		mov	dx, es:[bx+18h]
		mov	word ptr [bp+arg_0], ax
		mov	word ptr [bp+arg_0+2], dx
		or	dx, ax
		jnz	short loc_7F7C
		les	bx, [bp+var_E]
		mov	ax, es:[bx+38h]
		mov	dx, es:[bx+3Ah]
		mov	word ptr [bp+arg_0], ax
		mov	word ptr [bp+arg_0+2], dx

loc_7F7C:				; CODE XREF: sub_7B0C+45Dj
		les	bx, [bp+arg_0]
		test	byte ptr es:[bx+0Ch], 1
		jnz	short loc_7F56
		jmp	short loc_7F4E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7F88:				; CODE XREF: sub_7B0C+2B8j
		mov	[bp+var_A], 0
		jmp	loc_7E52
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7F90:				; CODE XREF: sub_7B0C+2BFj
		mov	[bp+var_A], 0
		sub	ax, ax
		mov	word ptr [bp+var_2A+2],	ax
		mov	word ptr [bp+var_2A], ax
		jmp	loc_7E52
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7FA0:				; CODE XREF: sub_7B0C+4C8j
		mov	ax, word ptr [bp+var_34+2]
		or	ax, word ptr [bp+var_34]
		jz	short loc_7FD6
		mov	ax, [bp+var_3C]
		les	bx, [bp+var_34]
		cmp	es:[bx+2], ax
		jnz	short loc_7FC2
		test	byte ptr es:[bx], 3
		jnz	short loc_7FC2
		mov	[bp+var_2E], 1
		jmp	short loc_7FD0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_7FC2:				; CODE XREF: sub_7B0C+4A6j
					; sub_7B0C+4ACj
		mov	ax, es:[bx+0Eh]
		mov	dx, es:[bx+10h]

loc_7FCA:				; CODE XREF: sub_7B0C+517j
		mov	word ptr [bp+var_34], ax
		mov	word ptr [bp+var_34+2],	dx

loc_7FD0:				; CODE XREF: sub_7B0C+4B3j
		cmp	[bp+var_2E], 0
		jz	short loc_7FA0

loc_7FD6:				; CODE XREF: sub_7B0C+49Aj
		cmp	[bp+var_2E], 0
		jnz	short loc_7FDF
		jmp	loc_7E52
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7FDF:				; CODE XREF: sub_7B0C+4CEj
		mov	ax, word ptr [bp+var_34]
		mov	dx, word ptr [bp+var_34+2]
		mov	word ptr [bp+var_2A], ax
		mov	word ptr [bp+var_2A+2],	dx
		mov	[bp+var_A], 0
		jmp	loc_7E4D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_7FF4:				; CODE XREF: sub_7B0C+2A4j
		sub	ax, 148h
		jnz	short loc_7FFC
		jmp	loc_7DD2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_7FFC:				; CODE XREF: sub_7B0C+4EBj
		sub	ax, 3
		jnz	short loc_8004
		jmp	loc_7F06
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8004:				; CODE XREF: sub_7B0C+4F3j
		dec	ax
		dec	ax
		jnz	short loc_800B
		jmp	loc_7F56
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_800B:				; CODE XREF: sub_7B0C+4FAj
		sub	ax, 3
		jnz	short loc_8013
		jmp	loc_7E9C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8013:				; CODE XREF: sub_7B0C+2B1j
					; sub_7B0C:loc_7DCEj ...
		mov	[bp+var_2E], 0
		les	bx, [bp+arg_0]
		mov	ax, es:[bx+1Eh]
		mov	dx, es:[bx+20h]
		jmp	short loc_7FCA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_8026:				; CODE XREF: sub_7B0C+372j
					; sub_7B0C+37Bj ...
		mov	[bp+var_20], 0

loc_802B:				; CODE XREF: sub_7B0C+38Cj
		cmp	[bp+var_30], 0
		jz	short loc_804F
		cmp	[bp+var_14], 0
		jnz	short loc_804F
		push	word ptr [bp+var_2A+2]
		push	word ptr [bp+var_2A]
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0]
		push	cs
		call	near ptr sub_78F2
		add	sp, 8
		mov	[bp+var_30], 0

loc_804F:				; CODE XREF: sub_7B0C+523j
					; sub_7B0C+529j
		cmp	word_165A0, 0
		jz	short loc_8068
		mov	ax, word ptr [bp+var_2A+2]
		or	ax, word ptr [bp+var_2A]
		jz	short loc_80D2

loc_805E:				; CODE XREF: sub_7B0C+5CAj
					; sub_7B0C:loc_80FAj
		mov	[bp+var_A], 0

loc_8063:				; CODE XREF: sub_7B0C+5EBj
		mov	[bp+var_24], 0

loc_8068:				; CODE XREF: sub_7B0C+548j
		sub	ax, ax
		mov	dx, [bp+var_A]
		call	sub_C320
		cmp	[bp+var_A], 0
		jz	short loc_8081
		cmp	[bp+var_14], 0
		jnz	short loc_8081
		jmp	loc_7BE7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8081:				; CODE XREF: sub_7B0C+56Aj
					; sub_7B0C+570j
		push	[bp+var_1C]
		push	[bp+var_1E]
		push	[bp+var_26]
		push	[bp+var_2C]
		lea	bx, word_19964
		mov	ax, [bp+var_16]
		mov	dx, 0FFFFh
		call	sub_CABC
		push	[bp+var_1E]
		push	[bp+var_26]
		push	[bp+var_2C]
		mov	ax, [bp+var_1C]
		mov	dx, [bp+var_1E]
		mov	bx, ax
		call	sub_C384
		cmp	[bp+var_A], 0
		jz	short loc_80BB
		jmp	loc_7B45
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_80BB:				; CODE XREF: sub_7B0C+5AAj
		mov	ax, word ptr [bp+var_2A+2]
		or	ax, word ptr [bp+var_2A]
		jz	short loc_80FE
		les	bx, [bp+var_2A]
		mov	ax, es:[bx+4]
		les	bx, [bp+var_E]
		mov	es:[bx], ax
		jmp	short loc_8106
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_80D2:				; CODE XREF: sub_7B0C+550j
		cmp	[bp+var_24], 0
		jz	short loc_805E
		les	bx, [bp+var_E]
		push	word ptr es:[bx+2Ah]
		push	word ptr es:[bx+28h]
		call	sub_6D78
		add	sp, 4
		les	bx, [bp+var_E]
		add	ax, es:[bx+4]
		inc	ax
		cmp	ax, word_16596
		jl	short loc_80FA
		jmp	loc_8063
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_80FA:				; CODE XREF: sub_7B0C+5E9j
		jmp	loc_805E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_80FE:				; CODE XREF: sub_7B0C+5B5j
		les	bx, [bp+var_E]
		mov	word ptr es:[bx], 0

loc_8106:				; CODE XREF: sub_7B0C+50j
					; sub_7B0C+5C4j
		call	sub_C23A
		push	1
		push	0
		push	0
		push	word ptr [bp+var_E+2]
		push	word ptr [bp+var_E]
		push	cs
		call	near ptr sub_76B4
		add	sp, 0Ah
		pop	si
		leave
		retf	4
sub_7B0C	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_8124	proc far		; CODE XREF: sub_2124+4EP
					; sub_2124+135P

var_8		= word ptr -8
var_6		= word ptr -6
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	6, 0
		push	ax
		push	di
		push	si
		mov	di, [bp+arg_0]
		sub	ax, ax
		mov	[bp+var_6], ax
		mov	es, [bp+arg_2]
		mov	es:[di], ax
		cmp	word_16598, ax
		jz	short loc_81B9
		push	word ptr es:[di+2Ah]
		push	word ptr es:[di+28h]
		mov	si, es
		call	sub_6D78
		add	sp, 4
		mov	es, si
		mov	si, es:[di+4]
		add	si, ax
		inc	si
		cmp	si, word_16596
		jl	short loc_81B9
		sub	cx, cx
		lds	si, es:[di+38h]
		mov	ax, ds
		or	ax, si
		jz	short loc_8193
		mov	bx, ss:724h

loc_816F:				; CODE XREF: sub_8124+6Dj
		or	cx, cx
		jnz	short loc_8193
		mov	ax, [si+2]
		add	ax, [si+4]
		cmp	ax, bx
		jl	short loc_818A
		test	byte ptr [si+0Ch], 1
		jnz	short loc_818A
		mov	cx, 1
		jmp	short loc_818D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 2 dup(90h)
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_818A:				; CODE XREF: sub_8124+57j sub_8124+5Dj
		lds	si, [si+16h]

loc_818D:				; CODE XREF: sub_8124+62j
		mov	ax, ds
		or	ax, si
		jnz	short loc_816F

loc_8193:				; CODE XREF: sub_8124+44j sub_8124+4Dj
		or	cx, cx
		jnz	short loc_819E

loc_8197:				; CODE XREF: sub_8124+83j
		mov	ax, seg	dseg
		mov	ds, ax
		jmp	short loc_81B9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_819E:				; CODE XREF: sub_8124+71j
		mov	[bp+var_6], 1
		cmp	[bp+var_8], 0
		jz	short loc_8197
		mov	[bp+var_2], ds
		mov	ax, seg	dseg
		mov	ds, ax
		push	[bp+var_2]
		push	si
		push	cs
		call	near ptr sub_7B0C

loc_81B9:				; CODE XREF: sub_8124+19j sub_8124+38j ...
		mov	ax, [bp+var_6]
		pop	si
		pop	di
		leave
		retf	4
sub_8124	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_81C2	proc far		; CODE XREF: sub_2124+D9P

var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	0Ah, 0
		push	di
		push	si
		mov	di, ax
		mov	bx, [bp+arg_0]
		mov	es, [bp+arg_2]
		mov	ax, es:[bx+38h]
		mov	dx, es:[bx+3Ah]
		mov	si, ax
		mov	[bp+var_8], dx
		sub	ax, ax
		mov	[bp+var_6], ax
		mov	es:[bx], ax
		mov	[bp+var_4], ax
		mov	ax, di
		call	sub_BB2E
		mov	[bp+var_2], ax
		cmp	ax, di
		jz	short loc_821C
		mov	ax, [bp+var_8]
		or	ax, si
		jz	short loc_821C
		mov	cx, [bp+var_4]
		mov	bx, [bp+var_2]

loc_8203:				; CODE XREF: sub_81C2+72j
		or	cx, cx
		jnz	short loc_8236
		mov	es, [bp+var_8]
		cmp	es:[si+8], bx
		jnz	short loc_8222
		test	byte ptr es:[si+0Ch], 1
		jnz	short loc_8222
		mov	cx, 1
		jmp	short loc_822F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_821C:				; CODE XREF: sub_81C2+32j sub_81C2+39j
		mov	cx, [bp+var_4]
		jmp	short loc_8236
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_8222:				; CODE XREF: sub_81C2+4Cj sub_81C2+53j
		mov	ax, es:[si+16h]
		mov	dx, es:[si+18h]
		mov	si, ax
		mov	[bp+var_8], dx

loc_822F:				; CODE XREF: sub_81C2+58j
		mov	ax, [bp+var_8]
		or	ax, si
		jnz	short loc_8203

loc_8236:				; CODE XREF: sub_81C2+43j sub_81C2+5Dj
		mov	di, [bp+var_6]
		or	cx, cx
		jz	short loc_8248
		push	[bp+var_8]
		push	si
		push	cs
		call	near ptr sub_7B0C
		mov	di, 1

loc_8248:				; CODE XREF: sub_81C2+79j
		call	sub_C23A
		mov	ax, di
		pop	si
		pop	di
		leave
		retf	4
sub_81C2	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_8256	proc far		; CODE XREF: sub_2124+F0P

var_16		= word ptr -16h
var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_6		= word ptr -6
arg_0		= dword	ptr  6

		enter	14h, 0
		push	ax
		push	di
		push	si
		les	si, [bp+arg_0]
		sub	ax, ax
		cwd
		mov	cx, ax
		mov	[bp+var_C], dx
		mov	ax, es:[si+38h]
		mov	dx, es:[si+3Ah]
		mov	bx, ax
		mov	[bp+var_10], dx
		sub	di, di
		mov	[bp+var_14], di
		mov	es:[si], di
		mov	[bp+var_6], di
		mov	[bp+var_E], cx
		or	dx, ax
		jz	short loc_82FB
		mov	si, cx

loc_8289:				; CODE XREF: sub_8256+A0j
		mov	cx, [bp+var_6]
		or	cx, cx
		jnz	short loc_82F8
		mov	es, [bp+var_10]
		test	byte ptr es:[bx+0Ch], 1
		jnz	short loc_82E4
		mov	ax, es:[bx+1Eh]
		mov	dx, es:[bx+20h]
		mov	si, ax
		mov	[bp+var_C], dx
		or	dx, ax
		jz	short loc_82E4
		mov	[bp+var_12], bx
		mov	bx, [bp+var_16]

loc_82B1:				; CODE XREF: sub_8256+86j
		or	cx, cx
		jnz	short loc_82DE
		mov	es, [bp+var_C]
		cmp	es:[si+2], bx
		jnz	short loc_82CA
		test	byte ptr es:[si], 3
		jnz	short loc_82CA
		mov	cx, 1
		jmp	short loc_82D7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_82CA:				; CODE XREF: sub_8256+66j sub_8256+6Cj
		mov	ax, es:[si+0Eh]
		mov	dx, es:[si+10h]
		mov	si, ax
		mov	[bp+var_C], dx

loc_82D7:				; CODE XREF: sub_8256+71j
		mov	ax, [bp+var_C]
		or	ax, si
		jnz	short loc_82B1

loc_82DE:				; CODE XREF: sub_8256+5Dj
		mov	[bp+var_6], cx
		mov	bx, [bp+var_12]

loc_82E4:				; CODE XREF: sub_8256+42j sub_8256+53j
		mov	es, [bp+var_10]
		mov	ax, es:[bx+16h]
		mov	dx, es:[bx+18h]
		mov	bx, ax
		mov	[bp+var_10], dx
		or	dx, ax
		jnz	short loc_8289

loc_82F8:				; CODE XREF: sub_8256+38j
		mov	[bp+var_E], si

loc_82FB:				; CODE XREF: sub_8256+2Fj
		mov	bx, [bp+var_14]
		mov	di, [bp+var_E]
		cmp	[bp+var_6], 0
		jz	short loc_8314
		mov	es, [bp+var_C]
		mov	bx, es:[di+4]
		les	si, [bp+arg_0]
		mov	es:[si], bx

loc_8314:				; CODE XREF: sub_8256+AFj
		mov	ax, bx
		pop	si
		pop	di
		leave
		retf	4
sub_8256	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	0Eh, 0
		push	di
		push	si
		mov	ax, 1
		mov	[bp-0Ch], ax
		mov	[bp-0Eh], ax
		lea	ax, [bp-1]
		mov	[bp-0Ah], ax
		mov	word ptr [bp-8], ss
		lea	bx, aMenucolr_ss ; "MENUCOLR.SS"
		sub	ax, ax
		call	sub_DDB8
		mov	si, ax
		mov	[bp-4],	dx
		or	dx, ax
		jnz	short loc_834B
		jmp	loc_841B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_834B:				; CODE XREF: seg006:15D6j
		mov	ax, [bp-4]
		push	ax
		push	si
		push	0
		mov	di, ax
		mov	ax, 1
		lea	bx, [bp-0Eh]
		sub	dx, dx
		call	sub_D8F0
		mov	al, [bp-1]
		sub	ah, ah
		mov	word_16484, ax
		mov	word_16488, ax
		push	di
		push	si
		push	0
		mov	ax, 2
		lea	bx, [bp-0Eh]
		sub	dx, dx
		call	sub_D8F0
		mov	al, [bp-1]
		sub	ah, ah
		mov	word_16486, ax
		mov	word_1648A, ax
		push	di
		push	si
		push	0
		mov	ax, 3
		lea	bx, [bp-0Eh]
		sub	dx, dx
		call	sub_D8F0
		mov	al, [bp-1]
		sub	ah, ah
		mov	word_16490, ax
		mov	word_1648C, ax
		push	di
		push	si
		push	0
		mov	ax, 4
		lea	bx, [bp-0Eh]
		sub	dx, dx
		call	sub_D8F0
		mov	al, [bp-1]
		sub	ah, ah
		mov	word_16492, ax
		mov	word_1648E, ax
		push	di
		push	si
		push	0
		mov	ax, 5
		lea	bx, [bp-0Eh]
		sub	dx, dx
		call	sub_D8F0
		mov	al, [bp-1]
		sub	ah, ah
		mov	word_1649C, ax
		mov	word_16496, ax
		push	di
		push	si
		push	0
		mov	ax, 6
		lea	bx, [bp-0Eh]
		sub	dx, dx
		call	sub_D8F0
		mov	al, [bp-1]
		sub	ah, ah
		mov	word_164A0, ax
		mov	word_1649A, ax
		push	di
		push	si
		push	0
		mov	ax, 7
		lea	bx, [bp-0Eh]
		sub	dx, dx
		call	sub_D8F0
		mov	al, [bp-1]
		sub	ah, ah
		mov	word_1649C, ax
		mov	word_16498, ax
		push	di
		push	si
		call	sub_CFA0

loc_841B:				; CODE XREF: seg006:15D8j
		pop	si
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
seg006		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg007		segment public 'CODE'
		assume cs:seg007
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8420	proc far		; CODE XREF: sub_595E+3CP
					; sub_843A:loc_8472p ...
		cmp	word_164B0, 0
		jz	short locret_8439
		push	word_164B0	; FILE *
		call	_fclose
		add	sp, 2
		mov	word_164B0, 0

locret_8439:				; CODE XREF: sub_8420+5j
		retf
sub_8420	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_843A(int,int,int,int)
sub_843A	proc far		; CODE XREF: sub_196+34P sub_196+102P	...

var_A2		= word ptr -0A2h
var_52		= byte ptr -52h
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	0A2h, 0
		push	di
		push	si		; char *
		mov	si, [bp+arg_0]
		mov	[bp+var_2], 1
		sub	di, di
		mov	[bp+var_52], 40h ; '@'
		mov	byte ptr [bp-51h], 0
		push	[bp+arg_2]	; char *
		lea	ax, [bp+var_52]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		lea	ax, [bp+var_52]
		push	ax		; char *
		call	_strupr
		add	sp, 2
		or	si, si
		jz	short loc_84AE
		push	cs

loc_8472:
		call	near ptr sub_8420
		push	si		; char *
		lea	ax, [bp+var_A2]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		lea	ax, [bp+var_A2]
		push	ss
		push	ax		; char *
		push	ds		; char *
		push	offset aTxt	; "TXT"
		call	sub_C04E	; @fileio_add_ext
		lea	ax, [bp+var_A2]
		push	ss		; int
		push	ax		; int
		lea	bx, aRt		; "rt"
		call	sub_2A74	; @env_open
		mov	word_164B0, ax
		or	ax, ax
		jnz	short loc_84B1

loc_84A8:				; CODE XREF: sub_843A+96j
		mov	si, [bp+var_2]
		jmp	short loc_8518
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_84AE:				; CODE XREF: sub_843A+35j
		mov	di, 1

loc_84B1:				; CODE XREF: sub_843A+6Cj
		cmp	[bp+arg_2], 0
		jz	short loc_8516
		sub	si, si

loc_84B9:				; CODE XREF: sub_843A+C9j
		push	word_164B0	; FILE *
		push	50h ; 'P'       ; int
		push	5EC6h		; char * byte_1BD36 aka	text_buffer
		call	_fgets
		add	sp, 6
		or	ax, ax
		jnz	short loc_84D9	; ­¥ ¡ë"(r) (r)è¨¡ª¨ ¨"¨ EOF
		or	di, di
		jz	short loc_84A8
		sub	di, di
		mov	byte_1BD36, 0	; text_buffer

loc_84D9:				; CODE XREF: sub_843A+92j
		push	ds
		push	offset byte_1BD36 ; char *
		call	sub_BC40	; @fileio_fix_lf_input
		push	ds
		push	offset byte_1BD36 ; char *
		call	sub_C1A2	; @fileio_purge_all_spaces
		lea	ax, [bp+var_52]
		push	ax		; char *
		push	5EC6h		; char *
		call	_strcmp
		add	sp, 4
		or	ax, ax
		jnz	short loc_8501
		mov	si, 1

loc_8501:				; CODE XREF: sub_843A+C2j
		or	si, si
		jz	short loc_84B9
		push	5EC6h		; char * byte_1BD36
		call	_strlen
		add	sp, 2
		add	ax, 5EC6h
		mov	word_1B946, ax	; text_pointer

loc_8516:				; CODE XREF: sub_843A+7Bj
		sub	si, si

loc_8518:				; CODE XREF: sub_843A+71j
		or	si, si
		jz	short loc_8520
		push	cs
		call	near ptr sub_8420 ; text_close

loc_8520:				; CODE XREF: sub_843A+E0j
		mov	ax, si
		pop	si
		pop	di
		leave
		retf
sub_843A	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8526	proc far		; CODE XREF: sub_196+46P sub_196+5FP ...
		push	si		; ä-ï text_get
		sub	si, si
		push	word_164B0	; FILE*	text_handle
		push	50h ; 'P'       ; 80 dec.
		push	5EC6h		; char * text_buffer (byte_1BD36[])
		call	_fgets
		add	sp, 6
		or	ax, ax
		jz	short loc_8571
		push	ds
		push	offset byte_1BD36 ; char* text_buffer
		call	sub_BC40	; @fileio_fix_lf_input
		push	ds
		push	offset byte_1BD36 ; char* text_buffer
		call	sub_C1A2	; @fileio_purge_all_spaces

loc_8550:				; CODE XREF: sub_8526+42j
		push	5Fh ; '_'       ; int
		push	5EC6h		; char*	text_buffer
		call	_strchr
		add	sp, 4
		mov	si, ax
		or	si, si
		jz	short loc_8566
		mov	byte ptr [si], 20h ; ' '

loc_8566:				; CODE XREF: sub_8526+3Bj
		or	si, si
		jnz	short loc_8550
		mov	si, 5EC6h	; char*	text_buffer
		mov	word_1B946, si	; text_pointer

loc_8571:				; CODE XREF: sub_8526+16j
		or	si, si
		jnz	short loc_8579
		push	cs
		call	near ptr sub_8420 ; text_close

loc_8579:				; CODE XREF: sub_8526+4Dj
		mov	ax, si
		pop	si
		retf
sub_8526	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_857E	proc far		; CODE XREF: sub_85B8+1p sub_85E8+1p ...
		push	di		; ã íâ(r)(c) ä-¨¨ ­¥â á¨¬¢.¨¬¥­¨
		push	si
		mov	si, word_1B946	; text_pointer -ãª §-"ì	­  â¥ªãé. ­ "¨§¨àã¥¬.â¥ªáâ?
		mov	di, 51CCh	; text_item (char byte_1B03C[80])
		cmp	byte ptr [si], 0
		jz	short loc_859C

loc_858C:				; CODE XREF: sub_857E+1Cj
		cmp	byte ptr [si], 2Ch ; ','
		jz	short loc_859C
		mov	al, [si]
		mov	[di], al
		inc	di
		inc	si
		cmp	byte ptr [si], 0
		jnz	short loc_858C

loc_859C:				; CODE XREF: sub_857E+Cj sub_857E+11j
		cmp	byte ptr [si], 0
		jz	short loc_85A2
		inc	si

loc_85A2:				; CODE XREF: sub_857E+21j
		mov	word_1B946, si	; text_pointer
		mov	byte ptr [di], 0
		push	ds
		push	offset byte_1B03C ; char* text_item
		call	sub_C1A2	; @fileio_purge_all_spaces
		mov	ax, 51CCh	; text_item
		pop	si
		pop	di
		retf
sub_857E	endp

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	5EC6h
		call	_strlen
		add	sp, 2
		add	ax, 5EC6h
		mov	word_1B946, ax
		retf
; ;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	cs
		call	near ptr sub_8526
		push	ds
		push	offset byte_1BD36
		call	sub_3376
		add	sp, 4
		retf
; ;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ


loc_85FA:
		enter	2, 0
		push	si
		mov	byte ptr [bp-1], 0
		push	cs
		call	near ptr sub_857E ; ­¥â	á¨¬¢.¨¬¥­¨
		mov	si, 51CCh	; text_item

loc_860A:				; CODE XREF: seg007:0200j
		cmp	byte ptr [si], 30h ; '0'
		jz	short loc_8614
		cmp	byte ptr [si], 31h ; '1'
		jnz	short loc_8622

loc_8614:				; CODE XREF: seg007:01EDj
		shl	byte ptr [bp-1], 1
		cmp	byte ptr [si], 31h ; '1'
		jnz	short loc_861F
		inc	byte ptr [bp-1]

loc_861F:				; CODE XREF: seg007:01FAj
		inc	si
		jmp	short loc_860A
; ;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8622:				; CODE XREF: seg007:01F2j
		mov	al, [bp-1]
		pop	si
		leave
		retf
; ;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	2, 0
		push	si
		mov	si, 1
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	cs
		call	near ptr sub_843A
		add	sp, 4
		or	ax, ax
		jnz	short loc_8654
		mov	bx, [bp+0Ah]
		or	bx, bx
		jl	short loc_8652
		lea	si, [bx+1]

loc_864B:				; CODE XREF: seg007:loc_8650j
		push	cs
		call	near ptr sub_8526
		dec	si

loc_8650:
		jnz	short loc_864B

loc_8652:				; CODE XREF: seg007:0226j
		sub	si, si

loc_8654:				; CODE XREF: seg007:021Fj
		push	cs
		call	near ptr sub_8420
		mov	ax, si
		pop	si
		leave
		retf
seg007		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg008		segment public 'CODE'
		assume cs:seg008
		;org 0Dh
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_865E	proc far		; CODE XREF: sub_2082+27P sub_2082+3AP ...

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		push	bp
		mov	bp, sp
		mov	dx, [bp+arg_0]
		mov	ax, [bp+arg_2]
		cmp	ax, dx
		jge	short loc_866D
		mov	ax, dx

loc_866D:				; CODE XREF: sub_865E+Bj
		mov	dx, ax
		cmp	ax, [bp+arg_4]
		jle	short loc_8677
		mov	ax, [bp+arg_4]

loc_8677:				; CODE XREF: sub_865E+14j
		mov	dx, ax
		leave
		retf
sub_865E	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		push	di
		mov	di, [bp+6]
		mov	bx, [bp+8]
		mov	dx, [di]
		mov	ax, [bx]
		mov	[di], ax
		mov	[bx], dx
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_8692	proc far		; CODE XREF: seg008:00BCp

arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp
		mov	bp, sp
		push	di
		mov	dx, [bp+arg_0]
		or	dx, dx
		jg	short loc_86A4
		mov	ax, dx
		not	ax
		inc	ax

loc_86A2:
		mov	dx, ax

loc_86A4:				; CODE XREF: sub_8692+9j
		mov	bx, [bp+arg_2]
		or	bx, bx
		jg	short loc_86B2
		mov	ax, bx
		not	ax
		inc	ax
		mov	bx, ax

loc_86B2:				; CODE XREF: sub_8692+17j
		cmp	bx, dx
		jge	short loc_86C2
		mov	di, bx
		sar	di, 1
		add	di, dx
		mov	ax, di
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_86C2:				; CODE XREF: sub_8692+22j
		mov	di, dx
		sar	di, 1
		add	di, bx
		mov	ax, di
		pop	di
		leave
		retf
sub_8692	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	4, 0
		push	di
		push	si
		mov	bx, [bp+6]
		mov	dx, [bp+0Ah]
		mov	ax, bx
		sub	ax, dx
		mov	[bp-2],	ax
		or	ax, ax
		jle	short loc_86EA
		mov	di, ax
		jmp	short loc_86EF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_86EA:				; CODE XREF: seg008:0093j
		mov	di, ax
		not	di
		inc	di

loc_86EF:				; CODE XREF: seg008:0097j
		mov	dx, [bp+8]
		mov	cx, [bp+0Ch]
		mov	ax, dx
		sub	ax, cx
		mov	[bp-4],	ax
		or	ax, ax
		jle	short loc_8704
		mov	si, ax
		jmp	short loc_8709
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8704:				; CODE XREF: seg008:00AEj
		mov	si, ax
		not	si
		inc	si

loc_8709:				; CODE XREF: seg008:00B2j
		push	si
		push	di
		push	cs
		call	near ptr sub_8692
		add	sp, 4
		pop	si
		pop	di
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_8716	proc far		; CODE XREF: seg008:0134p

arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp
		mov	bp, sp
		mov	bx, [bp+arg_0]
		or	bx, bx
		jg	short loc_8727
		mov	ax, bx
		not	ax
		inc	ax
		mov	bx, ax

loc_8727:				; CODE XREF: sub_8716+8j
		mov	dx, [bp+arg_2]
		or	dx, dx
		jg	short loc_8735
		mov	ax, dx
		not	ax
		inc	ax
		mov	dx, ax

loc_8735:				; CODE XREF: sub_8716+16j
		cmp	dx, bx
		jge	short loc_8740
		mov	cx, bx
		mov	ax, cx
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_8740:				; CODE XREF: sub_8716+21j
		mov	cx, dx
		mov	ax, cx
		leave
		retf
sub_8716	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	4, 0
		push	di
		push	si
		mov	bx, [bp+6]
		mov	dx, [bp+0Ah]
		mov	ax, bx
		sub	ax, dx
		mov	[bp-2],	ax
		or	ax, ax

loc_875B:
		jle	short loc_8762

loc_875D:
		mov	di, ax
		jmp	short loc_8767
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_8762:				; CODE XREF: seg008:loc_875Bj
		mov	di, ax
		not	di
		inc	di

loc_8767:				; CODE XREF: seg008:010Fj
		mov	dx, [bp+8]
		mov	cx, [bp+0Ch]
		mov	ax, dx
		sub	ax, cx
		mov	[bp-4],	ax
		or	ax, ax
		jle	short loc_877C
		mov	si, ax
		jmp	short loc_8781
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_877C:				; CODE XREF: seg008:0126j
		mov	si, ax
		not	si
		inc	si

loc_8781:				; CODE XREF: seg008:012Aj
		push	si
		push	di
		push	cs
		call	near ptr sub_8716
		add	sp, 4
		pop	si
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		mov	cx, [bp+8]
		mov	bx, [bp+6]
		sub	dx, dx
		mov	al, cl
		inc	al
		and	ax, 7
		cmp	ax, bx
		jz	short loc_87AD
		dec	cl
		and	cx, 7
		cmp	cx, bx
		jnz	short loc_87B0

loc_87AD:				; CODE XREF: seg008:0152j
		mov	dx, 1

loc_87B0:				; CODE XREF: seg008:015Bj
		mov	ax, dx
		leave
		retf
seg008		ends

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg009		segment public 'CODE'
		assume cs:seg009
		;org 4
		assume es:nothing, ss:nothing, ds:dseg

loc_87B4:
		push	bp
		mov	bp, sp
		mov	bx, [bp+6]
		mov	ax, [bx]
		cmp	ax, word_1A862
		jge	short loc_87C5
		mov	ax, word_1A862

loc_87C5:				; CODE XREF: seg009:0010j
		mov	[bx], ax
		mov	bx, [bp+8]
		mov	ax, [bx]
		cmp	ax, word_1A864
		jge	short loc_87D5
		mov	ax, word_1A864

loc_87D5:				; CODE XREF: seg009:0020j
		mov	[bx], ax
		mov	bx, [bp+0Ah]
		mov	ax, [bx]
		cmp	ax, word_1BE96
		jle	short loc_87E5
		mov	ax, word_1BE96

loc_87E5:				; CODE XREF: seg009:0030j
		mov	[bx], ax
		mov	bx, [bp+0Ch]
		mov	ax, [bx]
		cmp	ax, word_1BEAE
		jle	short loc_87F5
		mov	ax, word_1BEAE

loc_87F5:				; CODE XREF: seg009:0040j
		mov	[bx], ax
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_87FA	proc far		; CODE XREF: sub_8A2A+13P

var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		enter	4, 0
		push	di
		push	si
		mov	bx, [bp+arg_4]

loc_8803:
		mov	ax, [bx]
		mov	si, [bp+arg_0]
		add	ax, [si]
		dec	ax
		mov	[bp+var_2], ax
		mov	di, [bp+arg_6]
		mov	ax, [di]
		mov	bx, [bp+arg_2]
		add	ax, [bx]
		dec	ax
		mov	[bp+var_4], ax
		mov	ax, word_1BE96
		cmp	ax, [bp+var_2]
		jle	short loc_8827
		mov	ax, [bp+var_2]

loc_8827:				; CODE XREF: sub_87FA+28j
		mov	cx, [si]
		cmp	cx, word_1A862
		jge	short loc_8833
		mov	cx, word_1A862

loc_8833:				; CODE XREF: sub_87FA+33j
		mov	[si], cx
		sub	ax, cx
		inc	ax
		mov	si, [bp+arg_4]
		mov	[si], ax
		mov	cx, word_1BEAE
		cmp	cx, [bp+var_4]
		jle	short loc_8849
		mov	cx, [bp+var_4]

loc_8849:				; CODE XREF: sub_87FA+4Aj
		mov	dx, [bx]
		cmp	dx, word_1A864
		jge	short loc_8855
		mov	dx, word_1A864

loc_8855:				; CODE XREF: sub_87FA+55j
		mov	[bx], dx
		sub	cx, dx
		inc	cx
		mov	[di], cx
		or	ax, ax
		jge	short loc_8862
		sub	ax, ax

loc_8862:				; CODE XREF: sub_87FA+64j
		mov	[si], ax
		or	cx, cx
		jge	short loc_886A
		sub	cx, cx

loc_886A:				; CODE XREF: sub_87FA+6Cj
		mov	[di], cx
		pop	si
		pop	di
		leave
		retf
sub_87FA	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_8870	proc far		; CODE XREF: sub_8A2A+39P

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		enter	8, 0
		mov	ax, word_1B964
		sub	ax, word_1A864
		add	ax, [bp+arg_2]
		imul	word_1ACFC
		mov	cx, ax
		mov	ax, [bp+arg_4]
		imul	word_1ACFA
		mov	dx, ax
		mov	ax, [bp+arg_6]
		mov	bx, dx
		imul	word_1ACFC
		push	word_19972
		push	word_19970
		push	word_1996E
		push	word_1996C
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		mov	dx, cx
		add	cx, 8
		push	cx
		push	bx
		push	ax
		mov	ax, word_1B948
		sub	ax, word_1A862
		add	ax, [bp+arg_0]
		mov	cx, dx
		imul	word_1ACFA
		mov	bx, ax
		mov	dx, cx
		call	sub_C670
		leave
		retf
sub_8870	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_88DA	proc far		; CODE XREF: sub_8A88+30P
		push	word_19972
		push	word_19970
		push	word_1996E
		push	word_1996C
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		push	8
		push	word_1C35C
		push	word_1C35E
		sub	ax, ax
		cwd
		sub	bx, bx
		call	sub_C670
		retf
sub_88DA	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	18h, 0
		mov	word ptr [bp-0Ch], 1
		mov	word ptr [bp-10h], 0
		sub	ax, ax
		mov	[bp-4],	ax
		mov	[bp-6],	ax
		mov	ax, word_1B148
		imul	word_1B144
		mov	[bp-0Ah], ax
		sub	ax, ax
		mov	word_1AF28, ax
		mov	word_1AF26, ax

loc_8938:				; CODE XREF: seg009:0216j
		mov	ax, [bp-0Ch]
		shr	ax, 1
		jnb	short loc_8942
		xor	ax, 0B400h

loc_8942:				; CODE XREF: seg009:018Dj
		mov	[bp-0Ch], ax
		mov	ax, [bp-0Ch]
		dec	ax
		mov	[bp-2],	ax
		cmp	ax, [bp-0Ah]
		jnb	short loc_89C1
		sub	dx, dx
		div	word_1B144
		mov	cx, ax
		mov	ax, [bp-2]
		sub	dx, dx
		div	word_1B144
		mov	ax, dx
		add	ax, word_1B948
		imul	word_1ACFA
		mov	dx, ax
		mov	ax, cx
		add	ax, word_1B964
		mov	cx, dx
		imul	word_1ACFC
		add	ax, 8
		push	ax
		push	word_1ACFA
		push	word_1ACFC
		mov	dx, ax
		mov	ax, cx
		mov	bx, ax
		call	sub_C384
		cmp	word ptr [bp-0Ah], 0B4h	; '´'
		ja	short loc_89C1
		mov	ax, [bp-4]
		or	ax, [bp-6]
		jz	short loc_89B6

loc_89A0:				; CODE XREF: seg009:01FDj seg009:0204j
		call	sub_D1A2
		sub	ax, [bp-6]
		sbb	dx, [bp-4]
		or	dx, dx
		jl	short loc_89A0
		jg	short loc_89B6
		cmp	ax, 1
		jb	short loc_89A0

loc_89B6:				; CODE XREF: seg009:01EEj seg009:01FFj
		call	sub_D1A2
		mov	[bp-6],	ax
		mov	[bp-4],	dx

loc_89C1:				; CODE XREF: seg009:019Fj seg009:01E6j
		inc	word ptr [bp-10h]
		jz	short locret_89C9
		jmp	loc_8938
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

locret_89C9:				; CODE XREF: seg009:0214j
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_89CC	proc far		; CODE XREF: sub_8A88+35P
		push	8
		push	word_1C35C
		push	word_1C35E
		sub	ax, ax
		mov	dx, 8
		sub	bx, bx
		call	sub_C384
		retf
sub_89CC	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_89E4	proc far		; CODE XREF: sub_8A2A+4CP

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		enter	8, 0
		mov	ax, word_1B964
		sub	ax, word_1A864
		add	ax, [bp+arg_2]
		imul	word_1ACFC
		add	ax, 8
		mov	cx, ax
		mov	ax, [bp+arg_4]
		imul	word_1ACFA
		mov	dx, ax
		mov	ax, [bp+arg_6]
		mov	bx, dx
		imul	word_1ACFC
		push	cx
		push	bx
		push	ax
		mov	ax, word_1B948
		sub	ax, word_1A862
		add	ax, [bp+arg_0]
		imul	word_1ACFA
		mov	bx, ax

loc_8A20:
		mov	dx, cx

loc_8A22:
		call	sub_C384
		leave
		retf
sub_89E4	endp

seg009		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg010		segment public 'CODE'
		assume cs:seg010
		;org 9
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_8A2A	proc far		; CODE XREF: sub_1D28+82P

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp
		mov	bp, sp
		lea	ax, [bp+arg_6]
		push	ax
		lea	cx, [bp+arg_4]
		push	cx
		lea	dx, [bp+arg_2]
		push	dx
		lea	bx, [bp+arg_0]
		push	bx
		call	sub_87FA
		mov	sp, bp
		push	[bp+arg_6]
		push	0FFFFh
		mov	ax, [bp+arg_0]
		mov	dx, [bp+arg_2]
		mov	bx, [bp+arg_4]
		call	sub_B1D6
		push	[bp+arg_6]
		push	[bp+arg_4]
		push	[bp+arg_2]
		push	[bp+arg_0]
		call	sub_8870
		mov	sp, bp
		push	[bp+arg_6]
		push	[bp+arg_4]
		push	[bp+arg_2]

loc_8A73:
		push	[bp+arg_0]
		call	sub_89E4
		mov	sp, bp
		push	0FFFFh
		push	1
		call	sub_B914
		leave
		retf
sub_8A2A	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8A88	proc far		; CODE XREF: sub_CE0+3FP
					; sub_1404:loc_1455P ...
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		mov	ax, word_1C35E
		add	ax, 8
		push	ax
		push	0
		mov	ax, 0FFFFh
		mov	dx, 7
		mov	bx, word_1C35C
		call	sub_C86C
		mov	ax, 0FFFFh
		call	sub_B492
		call	sub_88DA
		call	sub_89CC
		push	0FFFFh
		push	1
		call	sub_B914
		add	sp, 4
		retf
sub_8A88	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
seg010		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg011		segment public 'CODE'
		assume cs:seg011
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_8AD0(int,int,char *)
sub_8AD0	proc far		; CODE XREF: sub_842+45P seg011:0024p	...

arg_0		= word ptr  6

		push	bp		; char *
		mov	bp, sp

loc_8AD3:				; char *
		push	64Ah
		push	[bp+arg_0]	; char *
		call	_strcat
		leave
		retf
sub_8AD0	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	2, 0
		push	di
		push	si
		mov	dx, [bp+8]
		or	dx, dx
		jle	short loc_8AFD
		mov	si, dx
		mov	di, [bp+6]

loc_8AF2:				; CODE XREF: seg011:002Bj
		push	di
		push	cs
		call	near ptr sub_8AD0
		add	sp, 2
		dec	si
		jnz	short loc_8AF2

loc_8AFD:				; CODE XREF: seg011:001Bj
		pop	si
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		push	64Ch
		push	word ptr [bp+6]
		call	_strcat
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		push	64Fh
		push	word ptr [bp+6]
		call	_strcat
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp

loc_8B23:
		mov	bp, sp
		push	652h
		push	word ptr [bp+6]
		call	_strcat
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		push	656h
		push	word ptr [bp+6]
		call	_strcat
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		push	658h
		push	word ptr [bp+6]
		call	_strcat
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		push	65Ah
		push	word ptr [bp+6]
		call	_strcat
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_8B62(int,int,char *)
sub_8B62	proc far		; CODE XREF: seg011:0105p

arg_0		= word ptr  6

		push	bp		; char *
		mov	bp, sp
		push	65Ch		; char *
		push	[bp+arg_0]	; char *
		call	_strcat
		leave
		retf
sub_8B62	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_8B72(int,int,char *)
sub_8B72	proc far		; CODE XREF: seg011:0124p

arg_0		= word ptr  6

		push	bp		; char *
		mov	bp, sp
		push	65Eh		; char *
		push	[bp+arg_0]	; char *
		call	_strcat
		leave
		retf
sub_8B72	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		push	660h
		push	word ptr [bp+6]
		call	_strcat
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		push	662h
		push	word ptr [bp+6]
		call	_strcat
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		push	664h
		push	word ptr [bp+6]
		call	_strcat
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __cdecl far sub_8BB2(char	*)
sub_8BB2	proc far		; CODE XREF: sub_4E56+50P seg011:049Bp ...

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		push	word ptr [bp+8]
		call	sub_33AC
		mov	sp, bp
		push	dx
		push	ax		; char *
		push	ds		; char *
		push	[bp+arg_0]	; char *
		call	_strcat_0
		leave
		retf
sub_8BB2	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		push	si
		mov	si, [bp+6]
		push	si
		push	cs
		call	near ptr sub_8B62
		add	sp, 2
		push	word ptr [bp+8]
		call	sub_33AC
		add	sp, 2
		push	dx
		push	ax
		push	ds
		push	si
		call	_strcat_0

loc_8BEF:
		add	sp, 8
		push	si
		push	cs
		call	near ptr sub_8B72
		add	sp, 2
		pop	si
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	14h, 0
		push	0Ah
		lea	ax, [bp-14h]
		push	ax
		push	word ptr [bp+0Ah]
		call	_itoa
		add	sp, 6
		lea	ax, [bp-14h]
		push	ss
		push	ax
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		call	_strcat_0
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	18h, 0
		push	di
		push	si
		push	2
		lea	ax, [bp-18h]
		push	ax
		push	word ptr [bp+0Ah]
		call	_itoa
		add	sp, 6
		mov	word ptr [bp-4], 0
		lea	ax, [bp-18h]
		push	ax
		call	_strlen
		add	sp, 2
		mov	di, ax
		mov	ax, 8
		sub	ax, di
		or	ax, ax
		jle	short loc_8C77
		mov	si, 8
		sub	si, di
		mov	[bp-2],	di
		mov	di, [bp+6]

loc_8C64:				; CODE XREF: seg011:01A5j
		push	ds
		push	offset a0_1	; "0"
		push	word ptr [bp+8]
		push	di
		call	_strcat_0
		add	sp, 8
		dec	si
		jnz	short loc_8C64

loc_8C77:				; CODE XREF: seg011:0187j
		lea	ax, [bp-18h]
		push	ss
		push	ax
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		call	_strcat_0
		add	sp, 8
		pop	si
		pop	di
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __cdecl far sub_8C8E(char	*,__int32)
sub_8C8E	proc far		; CODE XREF: seg011:01FEp

var_14		= byte ptr -14h
arg_0		= word ptr  6
arg_4		= dword	ptr  0Ah

		enter	14h, 0		; int
		push	0Ah		; int
		lea	ax, [bp+var_14]
		push	ax		; char *
		push	word ptr [bp+arg_4+2]
		push	word ptr [bp+arg_4] ; __int32
		call	far ptr	_ltoa
		add	sp, 8
		lea	ax, [bp+var_14]
		push	ss
		push	ax		; char *
		push	word ptr [bp+8]	; char *
		push	[bp+arg_0]	; char *
		call	_strcat_0
		leave
		retf
sub_8C8E	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		push	di
		push	si
		mov	si, [bp+6]
		push	word ptr [bp+0Ch]
		push	word ptr [bp+0Ah]
		mov	ax, [bp+8]
		push	ax
		push	si
		mov	di, ax
		push	cs
		call	near ptr sub_8C8E
		add	sp, 8
		push	ds
		push	offset asc_164D8 ; "$"
		push	di
		push	si
		call	_strcat_0
		add	sp, 8
		pop	si
		pop	di
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_8CE6	proc far		; CODE XREF: seg011:032Ep

arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp
		mov	bp, sp
		push	word ptr dword_15EF0+2
		push	word ptr dword_15EF0
		push	[bp+arg_2]
		push	[bp+arg_0]
		sub	ax, ax
		call	sub_D6C2
		dec	ax
		leave
		retf
sub_8CE6	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_8D02	proc far		; CODE XREF: seg011:0449p

arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp
		mov	bp, sp
		push	word_19908
		push	word_19906
		push	[bp+arg_2]
		push	[bp+arg_0]
		sub	ax, ax
		call	sub_D6C2
		dec	ax
		leave
		retf
sub_8D02	endp




; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __cdecl far sub_8D58(char	*,int,int,int)
sub_8D58	proc far		; CODE XREF: seg011:0352p

arg_0		= word ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh

		push	bp
		mov	bp, sp
		push	di
		push	si
		mov	di, [bp+arg_4]
		mov	si, [bp+arg_8]
		push	si
		mov	dx, si
		mov	bx, si
		mov	ax, 0FFFFh
		call	sub_D6A6
		push	word ptr dword_15EF0+2
		push	word ptr dword_15EF0 ; __int32
		push	word ptr [bp+8]	; __int32
		push	[bp+arg_0]	; char *
		push	0		; int
		lea	bx, word_19964
		mov	ax, di
		mov	dx, [bp+arg_6]
		call	sub_D538
		pop	si
		pop	di
		leave
		retf
sub_8D58	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __cdecl far sub_8D92(char	*,int,int,int)
sub_8D92	proc far		; CODE XREF: sub_4E56+69P

arg_0		= word ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh

		push	bp
		mov	bp, sp
		push	di
		push	si
		mov	di, [bp+arg_8]
		mov	si, [bp+arg_4]
		push	di
		mov	dx, di
		mov	bx, di
		mov	ax, 0FFFFh
		call	sub_D6A6
		push	word ptr dword_15EF0+2
		push	word ptr dword_15EF0
		push	word ptr [bp+8]
		push	[bp+arg_0]
		sub	ax, ax
		call	sub_D6C2
		sub	si, ax
		push	word ptr dword_15EF0+2
		push	word ptr dword_15EF0 ; __int32
		push	word ptr [bp+8]	; __int32
		push	[bp+arg_0]	; char *
		push	0		; int
		mov	ax, si
		lea	bx, word_19964
		mov	dx, [bp+arg_6]
		mov	si, ax
		call	sub_D538
		mov	ax, si
		pop	si
		pop	di
		leave
		retf
sub_8D92	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		push	di
		push	si
		mov	di, [bp+6]
		push	word ptr [bp+10h]
		push	word ptr [bp+0Eh]
		mov	ax, [bp+8]
		push	ax
		push	di
		mov	si, ax
		push	cs
		call	near ptr sub_8CE6
		add	sp, 4
		sar	ax, 1
		mov	cx, [bp+0Ch]
		sar	cx, 1
		mov	dx, si
		mov	si, cx
		sub	si, ax
		add	si, [bp+0Ah]
		mov	ax, si
		or	ax, ax
		jge	short loc_8E1C
		sub	ax, ax

loc_8E1C:				; CODE XREF: seg011:0348j
		mov	si, ax
		push	si
		push	dx

loc_8E20:
		push	di
		push	cs
		call	near ptr sub_8D58
		add	sp, 0Ah
		pop	si
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		push	si
		mov	si, [bp+0Ah]
		push	0
		mov	dl, byte_15F02
		sub	dh, dh
		mov	bl, byte_15F05
		sub	bh, bh
		mov	ax, 0FFFFh
		call	sub_D6A6
		push	word_19908
		push	word_19906
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	0
		lea	bx, word_19964
		mov	ax, si
		mov	dx, [bp+0Ch]
		call	sub_D538
		pop	si
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __cdecl far sub_8E6A(char	*,int,int,int,int)
sub_8E6A	proc far		; CODE XREF: seg011:loc_8F3Dp

arg_0		= word ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h

		push	bp
		mov	bp, sp
		push	si
		mov	si, [bp+arg_4]
		push	0
		mov	ax, 0FFFFh
		mov	dx, [bp+arg_8]
		mov	bx, [bp+arg_A]
		call	sub_D6A6
		push	word_19908
		push	word_19906	; __int32
		push	word ptr [bp+8]	; __int32
		push	[bp+arg_0]	; char *
		push	0		; int
		lea	bx, word_19964
		mov	ax, si
		mov	dx, [bp+arg_6]
		call	sub_D538
		pop	si
		leave
		retf
sub_8E6A	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	4, 0
		push	di
		push	si
		mov	di, [bp+6]
		mov	si, [bp+0Ah]
		push	0
		mov	ax, 0FFFFh
		mov	dx, [bp+0Eh]
		mov	bx, [bp+10h]
		call	sub_D6A6
		push	word_19908
		push	word_19906
		mov	ax, [bp+8]
		push	ax
		push	di
		mov	[bp-4],	di
		mov	[bp-2],	ax
		sub	ax, ax
		call	sub_D6C2
		sub	si, ax
		push	word_19908
		push	word_19906
		push	word ptr [bp-2]
		push	word ptr [bp-4]
		push	0
		mov	ax, si
		lea	bx, word_19964
		mov	dx, [bp+0Ch]
		mov	si, ax
		call	sub_D538
		mov	ax, si
		pop	si
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		push	di
		push	si
		mov	di, [bp+6]
		push	word ptr [bp+12h]
		push	word ptr [bp+10h]
		push	word ptr [bp+0Eh]
		mov	ax, [bp+8]
		push	ax
		push	di
		mov	si, ax
		push	cs
		call	near ptr sub_8D02
		add	sp, 4
		sar	ax, 1
		mov	cx, [bp+0Ch]
		sar	cx, 1
		mov	dx, si
		mov	si, cx
		sub	si, ax
		add	si, [bp+0Ah]
		mov	ax, si
		or	ax, ax
		jge	short loc_8F37
		sub	ax, ax

loc_8F37:				; CODE XREF: seg011:0463j
		mov	si, ax
		push	si
		push	dx
		push	di

loc_8F3C:
		push	cs

loc_8F3D:
		call	near ptr sub_8E6A
		add	sp, 0Ch
		pop	si
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		push	di
		push	si
		mov	si, [bp+8]
		or	si, si
		jl	short loc_8F62
		mov	di, [bp+6]
		mov	bx, si
		shl	bx, 4
		push	word ptr [bx+4EE6h]
		jmp	short loc_8F69
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8F62:				; CODE XREF: seg011:0482j
		mov	di, [bp+6]
		push	word_1B0FA

loc_8F69:				; CODE XREF: seg011:0490j
		push	di
		push	cs
		call	near ptr sub_8BB2
		add	sp, 4
		cmp	si, 8
		jl	short loc_8F8F
		cmp	si, 18h
		jge	short loc_8F8F
		push	di
		push	cs
		call	near ptr sub_8AD0

loc_8F80:
		add	sp, 2
		push	word_1A9CA
		push	di
		push	cs
		call	near ptr sub_8BB2
		add	sp, 4

loc_8F8F:				; CODE XREF: seg011:04A4j seg011:04A9j
		pop	si

loc_8F90:
		pop	di
		leave
		retf
seg011		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg012		segment public 'CODE'
		assume cs:seg012
		;org 3
		assume es:nothing, ss:nothing, ds:dseg
		align 2

loc_8F94:
		enter	4, 0
		push	di
		push	si
		mov	si, 1
		push	word ptr dword_15EF0+2
		push	word ptr dword_15EF0
		push	0FA0h
		call	sub_706E
		add	sp, 6
		mov	word ptr dword_15EE8, ax
		mov	word ptr dword_15EE8+2,	dx
		mov	ax, dx
		or	ax, word ptr dword_15EE8
		jnz	short loc_8FC2
		jmp	loc_9A93
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8FC2:				; CODE XREF: seg012:002Dj
		push	66Ah		; "game"
		push	66Fh		; "menu"
		call	sub_843A
		add	sp, 4
		or	ax, ax
		jz	short loc_8FD7
		jmp	loc_9A93
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8FD7:				; CODE XREF: seg012:0042j
		push	ax
		push	si
		call	sub_8526
		push	ds
		push	ax

loc_8FE0:
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_73B2
		add	sp, 0Ch
		push	si
		call	sub_8526
		push	ds
		push	ax
		push	si
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	2
		call	sub_8526
		push	ds
		push	ax
		push	si
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_164E4
		push	si
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	3
		call	sub_8526
		push	ds
		push	ax
		push	si
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	4
		call	sub_8526
		push	ds
		push	ax
		push	si
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_164E5
		push	si
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	1Ah
		call	sub_8526
		push	ds
		push	ax
		push	si
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	1Bh
		call	sub_8526
		push	ds
		push	ax
		push	si
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_164E6
		push	si
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	1Ch
		call	sub_8526
		push	ds
		push	ax
		push	si
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_164E7
		push	si
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	1Eh
		call	sub_8526
		push	ds
		push	ax
		push	si
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	1Fh
		call	sub_8526
		push	ds
		push	ax
		push	si
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	678h
		push	0
		call	sub_843A
		add	sp, 4
		or	ax, ax
		jz	short loc_9149
		jmp	loc_9A93
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9149:				; CODE XREF: seg012:01B4j
		push	ax
		push	2
		call	sub_8526
		push	ds
		push	ax
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_73B2
		add	sp, 0Ch
		push	20h ; ' '
		call	sub_8526
		push	ds
		push	ax
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	21h ; '!'
		call	sub_8526
		push	ds
		push	ax
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	22h ; '"'
		call	sub_8526
		push	ds
		push	ax
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_164ED
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	23h ; '#'
		call	sub_8526
		push	ds
		push	ax
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_164EE
		push	2

loc_91EF:
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	24h ; '$'
		call	sub_8526
		push	ds
		push	ax
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	25h ; '%'
		call	sub_8526
		push	ds
		push	ax
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_164EF
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	26h ; '&'
		call	sub_8526
		push	ds
		push	ax
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	27h ; '''
		call	sub_8526
		push	ds
		push	ax
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	28h ; '('
		call	sub_8526
		push	ds
		push	ax
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	29h ; ')'

loc_92A0:
		call	sub_8526
		push	ds
		push	ax
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_164F0
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	2Ah ; '*'
		call	sub_8526
		push	ds
		push	ax
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	2Bh ; '+'
		call	sub_8526
		push	ds
		push	ax
		push	2
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	681h
		push	0
		call	sub_843A
		add	sp, 4
		or	ax, ax
		jz	short loc_931B
		jmp	loc_9A93
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_931B:				; CODE XREF: seg012:0386j
		push	ax
		push	3
		call	sub_8526
		push	ds
		push	ax
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_73B2
		add	sp, 0Ch
		push	300h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	301h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	302h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	303h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	304h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_164F8
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	310h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	311h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	312h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	313h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	314h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	315h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	316h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	317h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0FFh
		push	ds
		push	offset unk_164F9
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	320h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	321h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	322h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	323h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	100h
		push	ds
		push	offset unk_164FA
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	330h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_164FB
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	331h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	332h
		call	sub_8526
		push	ds
		push	ax
		push	3
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	68Ch
		push	0
		call	sub_843A
		add	sp, 4
		or	ax, ax
		jz	short loc_95DB
		jmp	loc_9A93
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_95DB:				; CODE XREF: seg012:0646j
		push	ax
		push	4
		call	sub_8526
		push	ds
		push	ax
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_73B2
		add	sp, 0Ch
		push	40h ; '@'
		call	sub_8526
		push	ds
		push	ax
		push	4
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_16504
		push	4
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	41h ; 'A'
		call	sub_8526
		push	ds
		push	ax
		push	4
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	42h ; 'B'
		call	sub_8526
		push	ds
		push	ax
		push	4
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	43h ; 'C'
		call	sub_8526
		push	ds
		push	ax
		push	4
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	44h ; 'D'
		call	sub_8526
		push	ds
		push	ax
		push	4
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_16505
		push	4
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	45h ; 'E'
		call	sub_8526
		push	ds
		push	ax
		push	4
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	46h ; 'F'
		call	sub_8526
		push	ds
		push	ax
		push	4
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	47h ; 'G'
		call	sub_8526
		push	ds
		push	ax
		push	4
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	48h ; 'H'
		call	sub_8526
		push	ds
		push	ax
		push	4
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_16506
		push	4
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	49h ; 'I'
		call	sub_8526
		push	ds
		push	ax
		push	4
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	697h		; "trade"
		push	0
		call	sub_843A
		add	sp, 4
		or	ax, ax
		jz	short loc_975F
		jmp	loc_9A93
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_975F:				; CODE XREF: seg012:07CAj
		push	ax

loc_9760:
		push	5
		call	sub_8526
		push	ds
		push	ax
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_73B2
		add	sp, 0Ch
		push	50h ; 'P'
		call	sub_8526
		push	ds
		push	ax
		push	5
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	51h ; 'Q'
		call	sub_8526
		push	ds
		push	ax
		push	5
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	52h ; 'R'
		call	sub_8526
		push	ds
		push	ax
		push	5
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	69Dh
		push	0
		call	sub_843A
		add	sp, 4
		or	ax, ax
		jz	short loc_97DE
		jmp	loc_9A93
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_97DE:				; CODE XREF: seg012:0849j
		push	ax
		push	6
		call	sub_8526
		push	ds
		push	ax
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_73B2
		add	sp, 0Ch
		push	62h ; 'b'
		call	sub_8526
		push	ds
		push	ax
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	63h ; 'c'
		call	sub_8526
		push	ds
		push	ax
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_16511
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	65h ; 'e'
		call	sub_8526
		push	ds
		push	ax
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	66h ; 'f'
		call	sub_8526
		push	ds
		push	ax
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_16512
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	67h ; 'g'
		call	sub_8526
		push	ds
		push	ax
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	68h ; 'h'
		call	sub_8526
		push	ds
		push	ax
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_16513
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	69h ; 'i'
		call	sub_8526
		push	ds
		push	ax
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		mov	di, ax
		mov	[bp-2],	dx
		push	6Ah ; 'j'
		call	sub_8526
		push	ds
		push	ax
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_16514
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	6Bh ; 'k'
		call	sub_8526
		push	ds
		push	ax
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	6Ch ; 'l'
		call	sub_8526
		push	ds
		push	ax
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	6Fh ; 'o'
		call	sub_8526
		push	ds
		push	ax
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		mov	es, word ptr [bp-2]
		mov	word ptr es:[di+2], 13h
		test	byte_1BC9F, 20h
		jnz	short loc_99A9
		push	si
		push	6
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_7292
		add	sp, 8

loc_99A9:				; CODE XREF: seg012:0A04j
		push	6A5h
		push	0
		call	sub_843A
		add	sp, 4
		or	ax, ax
		jz	short loc_99BD
		jmp	loc_9A93
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_99BD:				; CODE XREF: seg012:0A28j
		push	si
		push	7
		call	sub_8526
		push	ds
		push	ax
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_73B2
		add	sp, 0Ch
		push	70h ; 'p'
		call	sub_8526
		push	ds	
		push	ax
		push	7
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	71h ; 'q'
		call	sub_8526
		push	ds
		push	ax
		push	7
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	72h ; 'r'
		call	sub_8526
		push	ds
		push	ax
		push	7
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	0
		push	ds
		push	offset unk_1651B
		push	7
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	73h ; 's'
		call	sub_8526
		push	ds
		push	ax
		push	7
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	74h ; 't'
		call	sub_8526
		push	ds
		push	ax
		push	7
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		push	75h ; 'u'
		call	sub_8526
		push	ds
		push	ax
		push	7
		push	word ptr dword_15EE8+2
		push	word ptr dword_15EE8
		call	sub_754E
		add	sp, 0Ch
		sub	si, si

loc_9A93:				; CODE XREF: seg012:002Fj seg012:0044j ...
		call	sub_8420
		mov	ax, si
		pop	si
		pop	di
		leave
		retf



seg012		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg013		segment public 'CODE'
		assume cs:seg013
		;org 5
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_9B76	proc far		; CODE XREF: sub_94E+CBP sub_9BA2+2Bp

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		mov	bx, [bp+arg_0]
		test	bl, 20h
		jz	short loc_9B96
		mov	al, bl
		and	ax, 80h
		cmp	ax, 1
		sbb	dx, dx
		and	dx, 1
		add	dx, 1Bh
		mov	ax, dx
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_9B96:				; CODE XREF: sub_9B76+9j
		mov	dx, bx
		and	dl, 1Fh
		sub	dh, dh
		mov	ax, dx
		leave
		retf
sub_9B76	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_9BA2	proc far		; CODE XREF: sub_2F08+A1P sub_2FF0+16P

arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp
		mov	bp, sp
		push	di
		push	si
		mov	di, [bp+arg_2]
		mov	si, 19h
		push	di
		push	[bp+arg_0]
		call	sub_2ABE
		add	sp, 4
		or	ax, ax
		jz	short loc_9BD5
		push	di
		push	[bp+arg_0]

loc_9BC1:
		call	sub_2BC2
		add	sp, 4
		sub	ah, ah
		push	ax
		push	cs
		call	near ptr sub_9B76
		add	sp, 2
		mov	si, ax

loc_9BD5:				; CODE XREF: sub_9BA2+19j
		mov	ax, si
		pop	si
		pop	di
		leave
		retf
sub_9BA2	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_9BDC	proc far		; CODE XREF: seg002:02C4P
					; sub_9C42+1BCP

arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp
		mov	bp, sp
		push	si
		push	[bp+arg_2]
		push	[bp+arg_0]
		call	sub_2BC2

loc_9BEB:
		add	sp, 4
		sub	ah, ah
		and	al, 1Fh
		mov	si, ax
		cmp	si, 19h
		jz	short loc_9C04
		cmp	si, 1Ah
		jz	short loc_9C04
		sub	ax, ax
		pop	si
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_9C04:				; CODE XREF: sub_9BDC+1Bj sub_9BDC+20j
		mov	ax, 1
		pop	si
		leave
		retf
sub_9BDC	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		push	si
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		call	sub_2BC2
		add	sp, 4
		sub	ah, ah
		and	al, 1Fh
		mov	si, ax
		cmp	si, 8
		jl	short loc_9C2C
		cmp	si, 10h
		jl	short loc_9C36

loc_9C2C:				; CODE XREF: seg013:00B5j
		cmp	si, 10h
		jl	short loc_9C3C
		cmp	si, 18h
		jge	short loc_9C3C

loc_9C36:				; CODE XREF: seg013:00BAj
		mov	ax, 1
		pop	si
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9C3C:				; CODE XREF: seg013:00BFj seg013:00C4j
		sub	ax, ax
		pop	si
		leave

locret_9C40:
		retf
seg013		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg014		segment public 'CODE'
		assume cs:seg014
		;org 1
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_9C42	proc far		; CODE XREF: sub_1670:loc_1692P

var_2E		= word ptr -2Eh
var_2C		= word ptr -2Ch
var_28		= dword	ptr -28h
var_24		= word ptr -24h
var_20		= dword	ptr -20h
var_1C		= word ptr -1Ch
var_1A		= word ptr -1Ah
var_18		= word ptr -18h
var_16		= word ptr -16h
var_14		= word ptr -14h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2

		enter	2Eh, 0
		push	si
		sub	ax, ax
		mov	[bp+var_A], ax
		mov	ax, word_15EFC
		mov	dx, word_15EFE
		mov	[bp+var_24], ax
		mov	[bp-22h], dx
		add	ah, 80h	; '€'
		mov	[bp+var_2C], ax
		mov	[bp-2Ah], dx
		push	word_1BD30
		push	word_1BD2E
		push	word_1BD2C
		push	word_1BD2A
		sub	al, al
		call	sub_C49E
		mov	[bp+var_1C], 1
		jmp	loc_9F27
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_9C82:				; CODE XREF: sub_9C42+1C9j
		mov	[bp+var_E], 0FFFFh
		jmp	short loc_9CDE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_9C8A:				; CODE XREF: sub_9C42+73j sub_9C42+7Bj
		inc	[bp+var_2]

loc_9C8D:				; CODE XREF: sub_9C42+8Ej
		mov	ax, [bp+var_2]

loc_9C90:
		cmp	off_1A982, ax
		jl	short loc_9CC0
		mov	ax, off_1A982
		imul	[bp+var_8]
		mov	bx, ax
		add	bx, [bp+var_2]
		shl	bx, 1
		add	bx, [bp+var_2C]
		mov	es, word ptr [bp-2Ah]
		mov	word ptr [bp+var_20], bx
		mov	word ptr [bp+var_20+2],	es
		mov	ax, [bp+var_10]
		cmp	es:[bx], ax
		jnz	short loc_9C8A
		mov	ax, [bp+var_18]
		mov	es:[bx], ax
		jmp	short loc_9C8A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_9CC0:				; CODE XREF: sub_9C42+52j
		inc	[bp+var_8]

loc_9CC3:				; CODE XREF: sub_9C42+102j
		mov	ax, [bp+var_1A]
		cmp	[bp+var_8], ax
		jg	short loc_9CD2
		mov	[bp+var_2], 1
		jmp	short loc_9C8D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9CD2:				; CODE XREF: sub_9C42+87j sub_9C42+C8j ...
		mov	ax, [bp+var_18]
		mov	[bp+var_4], ax
		mov	[bp+var_C], ax

loc_9CDB:				; CODE XREF: sub_9C42+BFj
		inc	[bp+var_E]

loc_9CDE:				; CODE XREF: sub_9C42+45j
		cmp	[bp+var_E], 1
		jg	short loc_9D48
		mov	ax, [bp+var_1A]
		dec	ax
		imul	off_1A982
		mov	bx, ax
		add	bx, [bp+var_14]
		add	bx, [bp+var_E]
		shl	bx, 1
		les	si, dword ptr [bp+var_2C]
		mov	ax, es:[bx+si]
		mov	[bp+var_4], ax
		or	ax, ax
		jz	short loc_9CDB
		mov	[bp+var_18], ax
		cmp	[bp+var_C], 0
		jz	short loc_9CD2
		cmp	ax, [bp+var_C]
		jz	short loc_9CD2
		jge	short loc_9D16
		mov	ax, [bp+var_C]

loc_9D16:				; CODE XREF: sub_9C42+CFj
		mov	[bp+var_10], ax
		mov	bx, ax
		shl	bx, 1
		les	si, dword ptr [bp+var_24]
		mov	ax, es:[bx+si]
		mov	cx, bx
		mov	bx, [bp+var_4]
		cmp	bx, [bp+var_C]
		jle	short loc_9D30
		mov	bx, [bp+var_C]

loc_9D30:				; CODE XREF: sub_9C42+E9j
		mov	[bp+var_18], bx
		shl	bx, 1
		add	es:[bx+si], ax
		mov	bx, cx
		mov	word ptr es:[bx+si], 0
		mov	[bp+var_8], 1
		jmp	loc_9CC3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_9D48:				; CODE XREF: sub_9C42+A0j
		cmp	[bp+var_C], 0
		jnz	short loc_9DAF
		cmp	[bp+var_6], 0
		jnz	short loc_9DA9
		mov	[bp+var_2E], 0
		cmp	[bp+var_1A], 1
		jz	short loc_9D6A
		mov	ax, word_1A984
		sub	ax, [bp+var_1A]
		cmp	ax, 2
		jnz	short loc_9D75

loc_9D6A:				; CODE XREF: sub_9C42+11Bj
		cmp	[bp+var_1C], 0
		jnz	short loc_9D75
		mov	[bp+var_2E], 10h

loc_9D75:				; CODE XREF: sub_9C42+126j
					; sub_9C42+12Cj ...
		inc	[bp+var_2E]
		mov	bx, [bp+var_2E]
		shl	bx, 1
		les	si, dword ptr [bp+var_24]
		cmp	word ptr es:[bx+si], 0
		jz	short loc_9D8D
		cmp	[bp+var_2E], 4002h
		jl	short loc_9D75

loc_9D8D:				; CODE XREF: sub_9C42+142j
		cmp	[bp+var_2E], 4000h
		jl	short loc_9DA9
		mov	[bp+var_2E], 3FFFh
		push	700h		; char *
		call	_printf
		add	sp, 2
		call	sub_BB08

loc_9DA9:				; CODE XREF: sub_9C42+110j
					; sub_9C42+150j
		mov	ax, [bp+var_2E]
		mov	[bp+var_C], ax

loc_9DAF:				; CODE XREF: sub_9C42+10Aj
		mov	ax, off_1A982
		imul	[bp+var_1A]
		mov	bx, ax
		add	bx, [bp+var_14]
		shl	bx, 1
		add	bx, [bp+var_2C]
		mov	es, word ptr [bp-2Ah]
		mov	word ptr [bp+var_20], bx
		mov	word ptr [bp+var_20+2],	es
		mov	ax, [bp+var_C]
		mov	es:[bx], ax
		mov	bx, ax
		shl	bx, 1
		les	si, dword ptr [bp+var_24]
		inc	word ptr es:[bx+si]
		mov	[bp+var_6], 1

loc_9DDD:				; CODE XREF: sub_9C42+1D4j
		dec	[bp+var_14]

loc_9DE0:				; CODE XREF: sub_9C42+1EFj
		cmp	[bp+var_14], 1
		jl	short loc_9E18
		push	[bp+var_1A]
		push	[bp+var_14]
		call	sub_2ABE
		add	sp, 4
		or	ax, ax
		jz	short loc_9E0E
		push	[bp+var_1A]
		push	[bp+var_14]
		call	sub_9BDC
		add	sp, 4
		cmp	ax, [bp+var_1C]
		jnz	short loc_9E0E
		jmp	loc_9C82
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9E0E:				; CODE XREF: sub_9C42+1B4j
					; sub_9C42+1C7j
		sub	ax, ax
		mov	[bp+var_6], ax
		mov	[bp+var_C], ax
		jmp	short loc_9DDD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9E18:				; CODE XREF: sub_9C42+1A2j
		call	nullsub_4
		inc	[bp+var_1A]

loc_9E20:				; CODE XREF: sub_9C42+328j
		mov	ax, word_1A984
		dec	ax
		cmp	ax, [bp+var_1A]
		jle	short loc_9E34
		mov	ax, off_1A982
		dec	ax
		dec	ax
		mov	[bp+var_14], ax
		jmp	short loc_9DE0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_9E34:				; CODE XREF: sub_9C42+1E5j
		mov	ax, [bp+var_2C]
		mov	dx, [bp-2Ah]
		mov	word ptr [bp+var_20], ax
		mov	word ptr [bp+var_20+2],	dx
		mov	ax, word_16320
		mov	dx, word_16322
		mov	word ptr [bp+var_28], ax
		mov	word ptr [bp+var_28+2],	dx
		mov	[bp+var_1A], 0
		jmp	loc_9F14
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_9E56:				; CODE XREF: sub_9C42+2C1j
		les	bx, [bp+var_20]
		mov	bx, es:[bx]
		shl	bx, 1
		mov	es, word ptr [bp-22h]
		mov	ax, es:[bx+si]
		not	ax
		inc	ax

loc_9E67:				; CODE XREF: sub_9C42+26Cj
					; sub_9C42+2C7j
		les	bx, [bp+var_20]
		mov	es:[bx], ax
		jmp	short loc_9EC3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_9E70:				; CODE XREF: sub_9C42+2BCj
		mov	[bp+var_2E], 0

loc_9E75:				; CODE XREF: sub_9C42+23Fj
		inc	[bp+var_2E]
		mov	bx, [bp+var_2E]
		shl	bx, 1
		cmp	word ptr es:[bx+si], 0
		jnz	short loc_9E75
		cmp	[bp+var_2E], 0Fh
		jg	short loc_9EB0
		les	bx, [bp+var_20]
		mov	bx, es:[bx]
		shl	bx, 1
		mov	es, word ptr [bp-22h]
		mov	ax, es:[bx+si]
		mov	cx, bx
		mov	bx, [bp+var_2E]
		shl	bx, 1
		mov	es:[bx+si], ax
		mov	ax, [bp+var_2E]
		neg	ax
		mov	bx, cx
		mov	es:[bx+si], ax
		mov	ax, [bp+var_2E]
		jmp	short loc_9E67
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9EB0:				; CODE XREF: sub_9C42+245j
		mov	cl, byte ptr [bp+var_1C]
		mov	ax, 1
		shl	ax, cl
		or	[bp+var_A], ax
		les	bx, [bp+var_20]
		mov	word ptr es:[bx], 0Fh

loc_9EC3:				; CODE XREF: sub_9C42+22Bj
					; sub_9C42+2ACj
		les	bx, [bp+var_20]
		mov	al, es:[bx]
		les	bx, [bp+var_28]
		mov	es:[bx], al

loc_9ECF:				; CODE XREF: sub_9C42+2A6j
		add	word ptr [bp+var_20], 2
		inc	word ptr [bp+var_28]
		inc	[bp+var_14]

loc_9ED9:				; CODE XREF: sub_9C42+2E0j
		mov	ax, off_1A982
		cmp	[bp+var_14], ax
		jge	short loc_9F0C
		les	bx, [bp+var_20]
		cmp	word ptr es:[bx], 0
		jz	short loc_9ECF
		cmp	word ptr es:[bx], 0Fh
		jbe	short loc_9EC3
		mov	bx, es:[bx]
		shl	bx, 1
		les	si, dword ptr [bp+var_24]
		cmp	word ptr es:[bx+si], 0
		jle	short loc_9F01
		jmp	loc_9E70
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9F01:				; CODE XREF: sub_9C42+2BAj
		jg	short loc_9F06
		jmp	loc_9E56
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9F06:				; CODE XREF: sub_9C42:loc_9F01j
		mov	ax, es:[bx+si]
		jmp	loc_9E67
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9F0C:				; CODE XREF: sub_9C42+29Dj
		call	nullsub_4
		inc	[bp+var_1A]

loc_9F14:				; CODE XREF: sub_9C42+210j
		mov	ax, [bp+var_1A]
		cmp	word_1A984, ax
		jle	short loc_9F24
		mov	[bp+var_14], 0
		jmp	short loc_9ED9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9F24:				; CODE XREF: sub_9C42+2D9j
		dec	[bp+var_1C]

loc_9F27:				; CODE XREF: sub_9C42+3Cj
		cmp	[bp+var_1C], 0
		jl	short loc_9F6E
		push	8000h		; size_t
		push	0		; size_t
		push	word ptr [bp-22h] ; int
		push	[bp+var_24]	; void *

loc_9F38:
		call	_memset

loc_9F3D:
		add	sp, 8
		mov	ax, word_1A984
		imul	off_1A982
		shl	ax, 1
		push	ax		; size_t
		push	0		; size_t
		push	word ptr [bp-2Ah] ; int
		push	[bp+var_2C]	; void *
		call	_memset
		add	sp, 8
		sub	ax, ax
		mov	[bp+var_2E], ax
		mov	[bp+var_C], ax
		mov	[bp+var_6], ax
		mov	[bp+var_1A], 1
		jmp	loc_9E20
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_9F6E:				; CODE XREF: sub_9C42+2E9j
		mov	[bp+var_16], 0
		mov	es, word ptr [bp-22h]

loc_9F76:				; CODE XREF: sub_9C42+34Aj
		mov	bx, [bp+var_16]
		shl	bx, 1
		mov	si, [bp+var_24]
		mov	ax, es:[bx+si]
		mov	[bx+5270h], ax
		inc	[bp+var_16]
		cmp	[bp+var_16], 10h
		jl	short loc_9F76

loc_9F8E:
		call	nullsub_2

loc_9F93:
		mov	ax, [bp+var_A]
		pop	si
		leave
		retf
sub_9C42	endp

seg014		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg015		segment public 'CODE'
		assume cs:seg015
		;org 9
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_9F9A	proc near		; CODE XREF: sub_9FF2+B9p
					; sub_A100+12Ap
		mov	ax, off_1A982	; ­¥â á¨¬¢.¨¬¥­¨ ã íâ(r)(c)	ä-¨¨
		mov	word_1B914, ax
		mov	word_1BD2C, ax
		mov	word_1A8DE, ax
		mov	word_1AD04, ax
		mov	ax, word_1A984
		mov	word_1B912, ax
		mov	word_1BD2A, ax
		mov	word_1A8DC, ax
		mov	word_1AD02, ax
		mov	ax, word_16318
		mov	dx, word_1631A
		mov	word_1AD06, ax
		mov	word_1AD08, dx
		mov	ax, word_1631C
		mov	dx, word_1631E
		mov	word_1A8E0, ax
		mov	word_1A8E2, dx
		mov	ax, word_16320
		mov	dx, word_16322
		mov	word_1BD2E, ax
		mov	word_1BD30, dx

loc_9FE2:
		mov	ax, word_16324
		mov	dx, word_16326
		mov	word_1B916, ax
		mov	word_1B918, dx
		retn
sub_9F9A	endp




seg015		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg016		segment public 'CODE'
		assume cs:seg016
		;org 6
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_A476	proc far		; CODE XREF: sub_1582+1FP sub_B1D6+28p ...

var_4		= word ptr -4
var_2		= word ptr -2

		enter	4, 0
		mov	cl, byte ptr word_16340
		mov	ax, 0Fh
		shl	ax, cl
		mov	word_1B144, ax
		mov	ax, 0Ch
		shl	ax, cl
		mov	word_1B148, ax
		cmp	word_16346, 0
		jz	short loc_A4A4
		mov	ax, 5
		mov	word_1B144, ax
		mov	word_1B148, ax
		mov	word_16340, 0

loc_A4A4:				; CODE XREF: sub_A476+1Dj
		mov	cl, byte ptr word_16340
		mov	ax, 10h
		sar	ax, cl
		mov	word_1ACFA, ax
		mov	word_1ACFC, ax
		mov	ax, word_1B144
		sar	ax, 1
		sub	ax, word_16338
		neg	ax
		mov	word_1A862, ax

loc_A4C1:
		mov	cx, word_1B148
		sar	cx, 1
		sub	cx, word_1633A
		neg	cx
		mov	word_1A864, cx
		cmp	word_16346, 0
		jnz	short loc_A50C
		cmp	ax, 1
		jge	short loc_A4E0
		mov	ax, 1

loc_A4E0:				; CODE XREF: sub_A476+65j
		mov	dx, off_1A982
		sub	dx, word_1B144
		dec	dx
		cmp	ax, dx
		jle	short loc_A4EF
		mov	ax, dx

loc_A4EF:				; CODE XREF: sub_A476+75j
		mov	word_1A862, ax
		cmp	cx, 1
		jge	short loc_A4FA
		mov	cx, 1

loc_A4FA:				; CODE XREF: sub_A476+7Fj
		mov	ax, word_1A984
		sub	ax, word_1B148
		dec	ax
		cmp	cx, ax
		jle	short loc_A508
		mov	cx, ax

loc_A508:				; CODE XREF: sub_A476+8Ej
		mov	word_1A864, cx

loc_A50C:				; CODE XREF: sub_A476+60j
		sub	ax, ax
		mov	word_1B948, ax
		mov	word_1B964, ax
		mov	ax, off_1A982
		dec	ax
		dec	ax
		cmp	ax, word_1B144
		jge	short loc_A538
		mov	word_1A862, 1
		mov	cx, word_1B144
		sub	cx, off_1A982
		inc	cx
		inc	cx
		sar	cx, 1
		mov	word_1B948, cx
		mov	word_1B144, ax

loc_A538:				; CODE XREF: sub_A476+A7j
		mov	ax, word_1A984
		dec	ax
		dec	ax
		cmp	ax, word_1B148
		jge	short loc_A55C
		mov	word_1A864, 1
		mov	cx, word_1B148
		sub	cx, word_1A984
		inc	cx
		inc	cx
		sar	cx, 1
		mov	word_1B964, cx
		mov	word_1B148, ax

loc_A55C:				; CODE XREF: sub_A476+CBj
		mov	ax, word_1A862
		dec	ax
		mov	word_1B966, ax
		mov	ax, word_1A864
		dec	ax
		mov	word_1B968, ax
		cmp	word_16316, 0
		jz	short loc_A5E2
		cmp	word_16346, 0
		jnz	short loc_A590
		mov	cl, byte ptr word_16340
		mov	ax, 0Fh
		shl	ax, cl
		inc	ax
		inc	ax
		mov	word_1ACE0, ax
		mov	ax, 0Ch
		shl	ax, cl
		inc	ax
		inc	ax
		jmp	short loc_A5EB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_A590:				; CODE XREF: sub_A476+100j
		mov	ax, word_1B966
		add	ax, 6
		mov	[bp+var_2], ax
		mov	ax, word_1B968
		add	ax, 6
		mov	[bp+var_4], ax
		mov	ax, off_1A982
		dec	ax
		cmp	ax, [bp+var_2]
		jle	short loc_A5AE
		mov	ax, [bp+var_2]

loc_A5AE:				; CODE XREF: sub_A476+133j
		mov	cx, word_1B966
		or	cx, cx
		jge	short loc_A5B8
		sub	cx, cx

loc_A5B8:				; CODE XREF: sub_A476+13Ej
		mov	word_1B966, cx
		sub	ax, cx
		inc	ax
		mov	word_1ACE0, ax
		mov	ax, word_1A984
		dec	ax
		cmp	ax, [bp+var_4]
		jle	short loc_A5CE
		mov	ax, [bp+var_4]

loc_A5CE:				; CODE XREF: sub_A476+153j
		mov	cx, word_1B968
		or	cx, cx
		jge	short loc_A5D8
		sub	cx, cx

loc_A5D8:				; CODE XREF: sub_A476+15Ej
		mov	word_1B968, cx
		sub	ax, cx
		inc	ax
		jmp	short loc_A5EB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_A5E2:				; CODE XREF: sub_A476+F9j
		mov	ax, off_1A982
		mov	word_1ACE0, ax
		mov	ax, word_1A984

loc_A5EB:				; CODE XREF: sub_A476+117j
					; sub_A476+169j
		mov	word_1ACE6, ax
		mov	cl, byte ptr word_16340
		mov	ax, 64h	; 'd'
		sar	ax, cl
		mov	word_16342, ax
		mov	ax, 5
		shl	ax, cl
		add	ax, 5
		mov	word_16344, ax
		mov	ax, word_1B144
		add	ax, word_1A862
		dec	ax
		mov	word_1BE96, ax
		mov	ax, word_1B148
		add	ax, word_1A864
		dec	ax
		mov	word_1BEAE, ax
		leave
		retf
sub_A476	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_A61E	proc near		; CODE XREF: sub_ADA2+C2p

var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_A		= byte ptr -0Ah
var_4		= word ptr -4

		enter	10h, 0
		push	si
		sub	al, al
		mov	byte_1C7E4, al
		mov	byte_1B943, al
		mov	[bp+var_4], 0

loc_A630:				; CODE XREF: sub_A61E+21j
		mov	bx, [bp+var_4]
		mov	byte ptr [bx+499Ah], 0
		inc	[bp+var_4]
		cmp	[bp+var_4], 4
		jl	short loc_A630
		cmp	word_16340, 0
		jz	short loc_A64B
		jmp	loc_A70A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_A64B:				; CODE XREF: sub_A61E+28j
		mov	[bp+var_4], 0
		jmp	loc_A6F1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_A654:				; CODE XREF: sub_A61E+E3j
		mov	ax, word_1ACE0
		neg	ax

loc_A659:				; CODE XREF: sub_A61E+E8j
		mov	[bp+var_E], ax
		cmp	byte ptr [bx+6CAh], 0
		jle	short loc_A668
		mov	ax, word_1ACE0
		jmp	short loc_A66A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_A668:				; CODE XREF: sub_A61E+43j
		sub	ax, ax

loc_A66A:				; CODE XREF: sub_A61E+48j
		mov	[bp+var_10], ax
		mov	al, [bx+6C0h]
		cbw
		mov	bx, ax
		add	bx, word ptr dword_1B96A
		mov	es, word ptr dword_1B96A+2
		add	bx, [bp+var_E]
		mov	si, [bp+var_10]
		mov	al, es:[bx+si]
		and	al, 1Fh
		mov	[bp+var_A], al
		cmp	al, 18h
		jnb	short loc_A692
		and	[bp+var_A], 7

loc_A692:				; CODE XREF: sub_A61E+6Ej
		mov	al, [bp+var_A]
		sub	ah, ah
		push	ax
		call	sub_306C
		add	sp, 2
		cmp	al, 19h
		jz	short loc_A6EE
		cmp	al, 1Ah
		jz	short loc_A6EE
		mov	cl, byte ptr [bp+var_4]
		mov	al, 1
		shl	al, cl
		or	byte_1B943, al
		inc	byte_1C7E4
		test	byte ptr [bp+var_4], 1
		jz	short loc_A6CE
		mov	bl, cl
		inc	bl
		and	bx, 6
		sar	bx, 1
		or	byte ptr [bx+499Ah], 2
		jmp	short loc_A6EE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_A6CE:				; CODE XREF: sub_A61E+9Dj
		mov	al, [bp+var_A]
		mov	byte_1ACF4, al
		mov	ax, [bp+var_4]
		sar	ax, 1
		mov	cx, ax
		inc	al
		and	ax, 3
		mov	bx, cx
		or	byte ptr [bx+499Ah], 4
		mov	bx, ax
		or	byte ptr [bx+499Ah], 1

loc_A6EE:				; CODE XREF: sub_A61E+84j sub_A61E+88j ...
		inc	[bp+var_4]

loc_A6F1:				; CODE XREF: sub_A61E+32j
		cmp	[bp+var_4], 8
		jge	short loc_A70A
		mov	bx, [bp+var_4]
		cmp	byte ptr [bx+6CAh], 0
		jge	short loc_A704
		jmp	loc_A654
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_A704:				; CODE XREF: sub_A61E+E1j
		sub	ax, ax
		jmp	loc_A659
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_A70A:				; CODE XREF: sub_A61E+2Aj sub_A61E+D7j
		mov	al, byte_1ACF4
		sub	ah, ah
		push	ax
		call	sub_306C
		add	sp, 2
		mov	byte_1B93C, al
		mov	al, byte_1C7E4
		sub	ah, ah
		pop	si
		leave
		retn
sub_A61E	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_A724	proc near		; CODE XREF: seg016:02EBp seg016:02F4p ...
		push	si
		les	bx, dword_1B96A
		mov	si, ax
		mov	al, es:[bx+si]
		cmp	al, byte_1A834
		jb	short loc_A73E
		cmp	al, byte_1B0DE
		ja	short loc_A73E
		add	byte_1C7E4, dl

loc_A73E:				; CODE XREF: sub_A724+Ej sub_A724+14j
		pop	si
		retn
sub_A724	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mov	byte_1C7E4, 0
		cmp	word_16340, bx
		jg	short loc_A778
		mov	byte_1A834, al
		mov	al, dl
		mov	byte_1B0DE, al
		mov	ax, word_1ACE0
		neg	ax
		mov	dx, 8
		call	sub_A724

loc_A75E:
		mov	ax, word_1ACE0
		mov	dx, 4
		call	sub_A724
		mov	ax, 0FFFFh
		mov	dx, 2
		call	sub_A724
		mov	ax, 1
		mov	dx, ax
		call	sub_A724

loc_A778:				; CODE XREF: seg016:02D9j
		mov	al, byte_1C7E4
		sub	ah, ah
		retn

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_A77E	proc near		; CODE XREF: sub_ADA2+209p

var_4		= word ptr -4
var_2		= word ptr -2

		enter	2, 0
		push	ax
		push	si
		mov	[bp+var_2], 0
		cmp	dx, word_16340
		jl	short loc_A7D8
		les	bx, dword_1B96A
		sub	bx, word_1ACE0
		mov	al, es:[bx]
		sub	ah, ah
		test	[bp+var_4], ax
		jz	short loc_A7A5
		add	[bp+var_2], 8

loc_A7A5:				; CODE XREF: sub_A77E+21j
		mov	bx, word ptr dword_1B96A
		mov	si, word_1ACE0
		mov	al, es:[bx+si]
		sub	ah, ah
		test	[bp+var_4], ax
		jz	short loc_A7BB
		add	[bp+var_2], 4

loc_A7BB:				; CODE XREF: sub_A77E+37j
		mov	al, es:[bx-1]
		sub	ah, ah
		test	[bp+var_4], ax
		jz	short loc_A7CA
		add	[bp+var_2], 2

loc_A7CA:				; CODE XREF: sub_A77E+46j
		mov	al, es:[bx+1]
		sub	ah, ah
		test	[bp+var_4], ax
		jz	short loc_A7D8
		inc	[bp+var_2]

loc_A7D8:				; CODE XREF: sub_A77E+Fj sub_A77E+55j
		mov	ax, [bp+var_2]
		pop	si
		leave
		retn
sub_A77E	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_A7DE	proc near		; CODE XREF: sub_ADA2+1CAp

var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2

		enter	4, 0
		push	ax
		push	si
		mov	[bp+var_4], 0
		cmp	word_16340, dx
		jg	short loc_A847
		mov	[bp+var_2], 0A0h ; ' '
		les	bx, dword_1B96A
		sub	bx, word_1ACE0
		mov	al, es:[bx]
		and	ax, 0A0h
		cmp	ax, [bp+var_6]
		jnz	short loc_A80B
		add	[bp+var_4], 8

loc_A80B:				; CODE XREF: sub_A7DE+27j
		mov	bx, word ptr dword_1B96A
		mov	si, word_1ACE0
		mov	al, es:[bx+si]
		and	al, byte ptr [bp+var_2]
		sub	ah, ah
		cmp	ax, [bp+var_6]
		jnz	short loc_A824
		add	[bp+var_4], 4

loc_A824:				; CODE XREF: sub_A7DE+40j
		mov	al, es:[bx-1]
		and	al, byte ptr [bp+var_2]
		sub	ah, ah
		cmp	ax, [bp+var_6]
		jnz	short loc_A836
		add	[bp+var_4], 2

loc_A836:				; CODE XREF: sub_A7DE+52j
		mov	al, es:[bx+1]
		and	al, byte ptr [bp+var_2]
		sub	ah, ah
		cmp	ax, [bp+var_6]
		jnz	short loc_A847
		inc	[bp+var_4]

loc_A847:				; CODE XREF: sub_A7DE+Fj sub_A7DE+64j
		mov	ax, [bp+var_4]
		pop	si
		leave
		retn
sub_A7DE	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_A84E	proc near		; CODE XREF: sub_A888+19p sub_A888+2Ep ...

var_4		= word ptr -4
var_2		= word ptr -2
arg_2		= word ptr  6

		enter	4, 0
		push	si
		mov	[bp+var_4], 0
		les	bx, dword_1B96A
		mov	si, [bp+arg_2]
		mov	al, es:[bx+si]
		and	ax, 1Fh
		mov	[bp+var_2], ax
		cmp	ax, 18h
		jge	short loc_A881
		mov	al, byte ptr [bp+var_2]
		and	al, 7
		cmp	al, 1
		jz	short loc_A881
		cmp	[bp+var_2], 7
		jle	short loc_A881
		mov	[bp+var_4], 1

loc_A881:				; CODE XREF: sub_A84E+1Dj sub_A84E+26j ...
		mov	ax, [bp+var_4]
		pop	si
		leave
		retn
sub_A84E	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_A888	proc near		; CODE XREF: sub_ADA2+19Bp

var_4		= word ptr -4
var_2		= word ptr -2

		enter	2, 0
		push	ax
		mov	[bp+var_2], 0
		cmp	word_16340, dx
		jg	short loc_A8E9
		mov	ax, word_1ACE0
		neg	ax
		push	ax
		push	[bp+var_4]
		call	sub_A84E
		add	sp, 4
		or	ax, ax
		jz	short loc_A8AF
		add	[bp+var_2], 8

loc_A8AF:				; CODE XREF: sub_A888+21j
		push	word_1ACE0
		push	[bp+var_4]
		call	sub_A84E
		add	sp, 4
		or	ax, ax
		jz	short loc_A8C4
		add	[bp+var_2], 4

loc_A8C4:				; CODE XREF: sub_A888+36j
		push	0FFFFh
		push	[bp+var_4]
		call	sub_A84E
		add	sp, 4
		or	ax, ax
		jz	short loc_A8D7
		add	[bp+var_2], 2

loc_A8D7:				; CODE XREF: sub_A888+49j
		push	1
		push	[bp+var_4]
		call	sub_A84E
		add	sp, 4
		or	ax, ax
		jz	short loc_A8E9
		inc	[bp+var_2]

loc_A8E9:				; CODE XREF: sub_A888+Ej sub_A888+5Cj
		mov	ax, [bp+var_2]
		leave
		retn
sub_A888	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	2, 0
		push	ax
		push	si
		mov	word ptr [bp-2], 0
		cmp	word_16340, dx
		jg	short loc_A948
		les	bx, dword_1A8EE
		sub	bx, word_1ACE0
		mov	al, es:[bx]
		sub	ah, ah
		test	[bp-4],	ax
		jz	short loc_A915
		add	word ptr [bp-2], 8

loc_A915:				; CODE XREF: seg016:049Fj
		mov	bx, word ptr dword_1A8EE
		mov	si, word_1ACE0
		mov	al, es:[bx+si]
		sub	ah, ah
		test	[bp-4],	ax
		jz	short loc_A92B
		add	word ptr [bp-2], 4

loc_A92B:				; CODE XREF: seg016:04B5j
		mov	al, es:[bx-1]
		sub	ah, ah
		test	[bp-4],	ax
		jz	short loc_A93A
		add	word ptr [bp-2], 2

loc_A93A:				; CODE XREF: seg016:04C4j
		mov	al, es:[bx+1]
		sub	ah, ah
		test	[bp-4],	ax
		jz	short loc_A948
		inc	word ptr [bp-2]

loc_A948:				; CODE XREF: seg016:048Dj seg016:04D3j
		mov	ax, [bp-2]
		pop	si
		leave
		retn

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_A94E	proc near		; CODE XREF: sub_ADA2+289p

var_C		= word ptr -0Ch
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2

		enter	0Ah, 0
		push	ax
		push	si
		mov	[bp+var_4], 0
		cmp	dx, word_16340
		jl	short loc_A9BC
		mov	[bp+var_6], 1
		mov	[bp+var_2], 0
		jmp	short loc_A9A1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_A96C:				; CODE XREF: sub_A94E+66j
		mov	ax, word_1ACE0
		not	ax
		inc	ax
		jmp	short loc_A976
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_A974:				; CODE XREF: sub_A94E+62j
		sub	ax, ax

loc_A976:				; CODE XREF: sub_A94E+24j sub_A94E+6Bj
		mov	[bp+var_8], ax
		mov	al, [bx+6C0h]
		cbw
		mov	bx, ax
		add	bx, word ptr dword_1A8EE
		mov	es, word ptr dword_1A8EE+2
		mov	si, [bp+var_8]
		mov	al, es:[bx+si]
		sub	ah, ah
		test	[bp+var_C], ax
		jz	short loc_A99B
		mov	ax, [bp+var_6]
		or	[bp+var_4], ax

loc_A99B:				; CODE XREF: sub_A94E+45j
		shl	[bp+var_6], 1
		inc	[bp+var_2]

loc_A9A1:				; CODE XREF: sub_A94E+1Bj
		cmp	[bp+var_2], 8
		jge	short loc_A9BC
		mov	bx, [bp+var_2]
		mov	al, [bx+6CAh]
		or	al, al
		jz	short loc_A974
		or	al, al
		jl	short loc_A96C
		mov	ax, word_1ACE0
		jmp	short loc_A976
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_A9BC:				; CODE XREF: sub_A94E+Fj sub_A94E+57j
		mov	ax, [bp+var_4]
		pop	si
		leave
		retn
sub_A94E	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_A9C2	proc near		; CODE XREF: sub_AB4A+23Fp
					; sub_ADA2+6Dp	...

var_4		= word ptr -4
var_2		= word ptr -2

		enter	4, 0
		mov	cx, word_16330
		mov	dx, word_16332
		mov	[bp+var_4], cx
		mov	[bp+var_2], dx
		cmp	word_16342, 64h	; 'd'
		jl	short loc_AA04
		push	dx
		push	cx
		mov	cl, byte_16585
		sub	ch, ch
		add	cx, word_1A986
		sub	cx, 0Fh
		push	cx
		mov	dl, byte_16584
		sub	dh, dh
		add	dx, word_1A97E
		sub	dx, 8
		lea	bx, word_1996C
		call	sub_D8F0
		leave
		retn
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_AA04:				; CODE XREF: sub_A9C2+17j
		push	[bp+var_2]
		push	[bp+var_4]
		push	word_1A986
		push	word_16342
		lea	bx, word_1996C
		mov	dx, word_1A97E
		call	sub_DAEA
		leave
		retn
sub_A9C2	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_AA22	proc near		; CODE XREF: sub_ADA2+DDp
					; sub_ADA2:loc_AEFBp

var_4		= word ptr -4
var_2		= word ptr -2

		enter	4, 0
		mov	cx, word_16328
		mov	dx, word_1632A
		mov	[bp+var_4], cx
		mov	[bp+var_2], dx
		cmp	word_16340, 0
		jnz	short loc_AA68
		mov	bl, byte_16585
		sub	bh, bh
		add	bx, word_1A986
		sub	bx, 0Fh
		push	bx
		mov	bl, byte_16584
		sub	bh, bh
		add	bx, word_1A97E
		sub	bx, 8
		push	bx
		push	3AFCh
		push	ax
		push	dx
		push	cx
		call	sub_30F8
		add	sp, 0Ch
		leave
		retn
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_AA68:				; CODE XREF: sub_AA22+17j
		push	word_16340
		push	word_1A986
		push	word_1A97E
		push	3AFCh
		push	ax
		push	[bp+var_2]
		push	[bp+var_4]
		call	sub_31CE
		leave
		retn
sub_AA22	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	4, 0
		mov	cx, word_16330
		mov	dx, word_16332
		mov	[bp-4],	cx
		mov	[bp-2],	dx
		cmp	word_16342, 64h	; 'd'
		jl	short loc_AAC8
		push	dx
		push	cx
		mov	cl, byte_16585
		sub	ch, ch
		add	cx, word_1A986
		sub	cx, 0Fh
		push	cx
		mov	dl, byte_16584
		sub	dh, dh
		add	dx, word_1A97E
		sub	dx, 8
		lea	bx, word_1996C
		call	sub_E71C
		leave
		retn
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_AAC8:				; CODE XREF: seg016:062Dj
		push	word ptr [bp-2]
		push	word ptr [bp-4]
		push	word_1A986
		push	word_16342
		lea	bx, word_1996C
		mov	dx, word_1A97E
		call	sub_E92A
		leave
		retn
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_AAE6	proc near		; CODE XREF: sub_AB4A+247p
					; sub_ADA2+370p

var_4		= word ptr -4
var_2		= word ptr -2

		enter	4, 0
		mov	cx, word_16328
		mov	dx, word_1632A
		mov	[bp+var_4], cx
		mov	[bp+var_2], dx
		cmp	word_16340, 0
		jnz	short loc_AB2C
		mov	bl, byte_16585
		sub	bh, bh
		add	bx, word_1A986
		sub	bx, 0Fh
		push	bx
		mov	bl, byte_16584
		sub	bh, bh
		add	bx, word_1A97E
		sub	bx, 8
		push	bx
		push	3AFCh
		push	ax
		push	dx
		push	cx
		call	sub_315C
		add	sp, 0Ch
		leave
		retn
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_AB2C:				; CODE XREF: sub_AAE6+17j
		push	word_16340
		push	word_1A986
		push	word_1A97E
		push	3AFCh
		push	ax
		push	[bp+var_2]
		push	[bp+var_4]
		call	sub_3284
		leave
		retn
sub_AAE6	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_AB4A	proc near		; CODE XREF: sub_ADA2:loc_AE3Ep
					; sub_ADA2+16Dp

var_26		= word ptr -26h
var_24		= word ptr -24h
var_22		= word ptr -22h
var_20		= word ptr -20h
var_1E		= word ptr -1Eh
var_1C		= byte ptr -1Ch
var_18		= word ptr -18h
var_16		= word ptr -16h
var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= byte ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  4
arg_2		= word ptr  6
arg_4		= word ptr  8

		enter	2Ch, 0
		push	si
		mov	ax, word_1AD00
		mov	[bp+var_26], ax
		sub	ax, ax
		mov	word_1AD00, ax
		mov	[bp+var_4], ax
		jmp	loc_AC20
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AB60:				; CODE XREF: sub_AB4A+12Bj
		mov	ax, [bp+var_14]
		sub	ax, word_16338
		not	ax
		inc	ax

loc_AB6A:				; CODE XREF: sub_AB4A:loc_AC78j
		mov	[bp+var_24], ax
		push	word_16346
		mov	ax, [bp+var_18]
		sub	ax, word_1633A
		or	ax, ax
		jg	short loc_AB86
		mov	ax, [bp+var_18]
		sub	ax, word_1633A
		not	ax
		inc	ax
loc_AB86:				; CODE XREF: sub_AB4A+30j
		push	ax
		push	[bp+var_24]
		call	sub_2AF0
		add	sp, 6
		cmp	ax, 1
		sbb	ax, ax
		neg	ax
		or	[bp+var_8], ax

loc_AB9C:				; CODE XREF: sub_AB4A+11Dj
		mov	ax, [bp+var_2]
		mov	[bp+var_12], ax
		cmp	[bp+var_A], 0
		jge	short loc_ABAF
		sub	ax, word_1ACE0
		mov	[bp+var_12], ax

loc_ABAF:				; CODE XREF: sub_AB4A+5Cj
		cmp	[bp+var_A], 0
		jle	short loc_ABBB
		mov	ax, word_1ACE0
		add	[bp+var_12], ax

loc_ABBB:				; CODE XREF: sub_AB4A+69j
		les	bx, dword_1B96A
		mov	si, [bp+var_12]
		mov	al, es:[bx+si]
		and	al, 1Fh
		mov	[bp+var_C], al
		cmp	al, 18h
		jnb	short loc_ABD2
		and	[bp+var_C], 7

loc_ABD2:				; CODE XREF: sub_AB4A+82j
		mov	al, [bp+var_C]
		sub	ah, ah
		push	ax
		call	sub_306C
		add	sp, 2
		mov	[bp+var_1C], al
		les	bx, dword_1A8EE
		mov	si, [bp+var_12]
		les	bx, dword_1B14A
		mov	al, es:[bx+si]
		cmp	byte_1B91A, 0
		jz	short loc_ABFE
		test	byte_1B91A, al
		jz	short loc_AC04

loc_ABFE:				; CODE XREF: sub_AB4A+ACj
		cmp	[bp+var_8], 0
		jz	short loc_AC0C

loc_AC04:				; CODE XREF: sub_AB4A+B2j
		mov	[bp+var_E], 1
		jmp	short loc_AC11
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_AC0C:				; CODE XREF: sub_AB4A+B8j
		mov	[bp+var_E], 0

loc_AC11:				; CODE XREF: sub_AB4A+BFj
		cmp	[bp+arg_0], 0
		jz	short loc_AC7C
		cmp	[bp+var_E], 0
		jz	short loc_AC7C

loc_AC1D:				; CODE XREF: sub_AB4A+1D6j
					; sub_AB4A+1DFj ...
		inc	[bp+var_4]

loc_AC20:				; CODE XREF: sub_AB4A+13j
		cmp	[bp+var_4], 4
		jl	short loc_AC29
		jmp	loc_AD98
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AC29:				; CODE XREF: sub_AB4A+DAj
		mov	bx, [bp+var_4]
		mov	al, [bx+6BAh]
		cbw
		mov	[bp+var_A], ax
		mov	cx, ax
		mov	al, [bx+6B4h]
		cbw
		mov	[bp+var_2], ax

loc_AC3E:
		add	ax, word_1BD86
		mov	[bp+var_14], ax
		add	cx, word_1C1BC
		mov	[bp+var_18], cx
		push	cx
		push	ax
		call	sub_2ABE
		add	sp, 4
		cmp	ax, 1
		sbb	ax, ax
		neg	ax
		mov	[bp+var_8], ax
		cmp	word_16346, 0
		jnz	short loc_AC6A
		jmp	loc_AB9C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AC6A:				; CODE XREF: sub_AB4A+11Bj
		mov	ax, [bp+var_14]
		sub	ax, word_16338
		or	ax, ax
		jg	short loc_AC78
		jmp	loc_AB60
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AC78:				; CODE XREF: sub_AB4A+129j
		jmp	loc_AB6A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_AC7C:				; CODE XREF: sub_AB4A+CBj sub_AB4A+D1j
		cmp	[bp+var_1C], 19h
		jz	short loc_AC8B
		cmp	[bp+var_1C], 1Ah
		jz	short loc_AC8B
		jmp	loc_AD2C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AC8B:				; CODE XREF: sub_AB4A+136j
					; sub_AB4A+13Cj
		cmp	[bp+arg_2], 0
		jz	short loc_AC94
		jmp	loc_AD2C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AC94:				; CODE XREF: sub_AB4A+145j
		mov	[bp+var_10], 7
		jmp	short loc_ACAF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_AC9C:				; CODE XREF: sub_AB4A+19Dj
		mov	ax, off_1A982
		cmp	[bp+var_16], ax
		jge	short loc_ACAC
		mov	ax, word_1A984
		cmp	[bp+var_20], ax
		jl	short loc_ACEC

loc_ACAC:				; CODE XREF: sub_AB4A+158j
					; sub_AB4A+193j ...
		dec	[bp+var_10]

loc_ACAF:				; CODE XREF: sub_AB4A+14Fj
		cmp	[bp+var_1C], 19h
		jz	short loc_ACBB
		cmp	[bp+var_1C], 1Ah
		jnz	short loc_AD1A

loc_ACBB:				; CODE XREF: sub_AB4A+169j
		cmp	[bp+var_10], 0
		jl	short loc_AD1A
		mov	bx, [bp+var_10]
		mov	al, [bx+6C0h]
		cbw
		add	ax, [bp+var_14]
		mov	[bp+var_16], ax
		mov	al, [bx+6CAh]
		cbw
		add	ax, [bp+var_18]
		mov	[bp+var_20], ax
		test	bl, 1
		jnz	short loc_ACAC
		cmp	[bp+var_16], 0
		jl	short loc_ACAC
		or	ax, ax
		jge	short loc_AC9C
		jmp	short loc_ACAC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_ACEC:				; CODE XREF: sub_AB4A+160j
		push	[bp+var_20]
		push	[bp+var_16]
		call	sub_2BC2
		add	sp, 4
		and	al, 1Fh
		sub	ah, ah
		mov	[bp+var_22], ax
		cmp	ax, 18h
		jge	short loc_AD0A
		and	[bp+var_22], 7

loc_AD0A:				; CODE XREF: sub_AB4A+1BAj
		push	[bp+var_22]
		call	sub_306C
		add	sp, 2
		mov	[bp+var_1C], al
		jmp	short loc_ACAC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AD1A:				; CODE XREF: sub_AB4A+16Fj
					; sub_AB4A+175j
		cmp	[bp+var_1C], 19h
		jnz	short loc_AD23
		jmp	loc_AC1D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AD23:				; CODE XREF: sub_AB4A+1D4j
		cmp	[bp+var_1C], 1Ah
		jnz	short loc_AD2C
		jmp	loc_AC1D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AD2C:				; CODE XREF: sub_AB4A+13Ej
					; sub_AB4A+147j ...
		cmp	[bp+var_1C], 19h
		jz	short loc_AD38
		cmp	[bp+var_1C], 1Ah
		jnz	short loc_AD4D

loc_AD38:				; CODE XREF: sub_AB4A+1E6j
		cmp	[bp+arg_4], 0
		jnz	short loc_AD4D
		cmp	[bp+arg_0], 0
		jnz	short loc_AD4D
		cmp	[bp+var_E], 0
		jnz	short loc_AD4D
		jmp	loc_AC1D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AD4D:				; CODE XREF: sub_AB4A+1ECj
					; sub_AB4A+1F2j ...
		mov	al, byte_1B93C	; gen_map_tile
		and	ax, 1Fh
		mov	[bp+var_1E], ax
		cmp	ax, 18h
		jge	short loc_AD5F
		and	[bp+var_1E], 7

loc_AD5F:				; CODE XREF: sub_AB4A+20Fj
		push	[bp+var_1E]
		call	sub_306C
		add	sp, 2
		sub	ah, ah
		mov	[bp+var_1E], ax
		cmp	al, [bp+var_1C]
		jnz	short loc_AD83
		cmp	[bp+arg_0], 0
		jnz	short loc_AD83
		cmp	[bp+var_E], 0
		jnz	short loc_AD83
		jmp	loc_AC1D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AD83:				; CODE XREF: sub_AB4A+228j
					; sub_AB4A+22Ej ...
		mov	ax, [bp+var_4]
		add	ax, 69h	; 'i'
		call	sub_A9C2
		mov	al, [bp+var_1C]
		sub	ah, ah
		call	sub_AAE6
		jmp	loc_AC1D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_AD98:				; CODE XREF: sub_AB4A+DCj
		mov	ax, [bp+var_26]
		mov	word_1AD00, ax
		pop	si
		leave
		retn
sub_AB4A	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_ADA2	proc near		; CODE XREF: sub_B1D6+1F5p

var_26		= word ptr -26h
var_24		= word ptr -24h
var_22		= word ptr -22h
var_20		= word ptr -20h
var_1E		= word ptr -1Eh
var_1C		= word ptr -1Ch
var_1A		= word ptr -1Ah
var_18		= word ptr -18h
var_16		= word ptr -16h
var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_C		= word ptr -0Ch
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= byte ptr -4
var_2		= byte ptr -2

		enter	24h, 0
		push	ax
		push	si
		mov	[bp+var_1C], 0
		les	bx, dword_1A8EE
		mov	al, es:[bx]
		mov	byte_1AADA, al
		les	bx, dword_1B96A
		mov	al, es:[bx]
		mov	byte_1ACF4, al
		les	bx, dword_1B14A
		mov	cl, es:[bx]
		mov	byte_1C7F8, cl
		sub	ah, ah
		push	ax
		call	sub_306C
		add	sp, 2
		mov	byte_1B93C, al
		cmp	byte_1B91A, 0
		jz	short loc_ADEA
		mov	al, byte_1B91A
		test	byte_1C7F8, al
		jz	short loc_ADF0

loc_ADEA:				; CODE XREF: sub_ADA2+3Dj
		cmp	[bp+var_26], 0
		jz	short loc_ADF8

loc_ADF0:				; CODE XREF: sub_ADA2+46j
		mov	[bp+var_8], 1
		jmp	short loc_ADFD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_ADF8:				; CODE XREF: sub_ADA2+4Cj
		mov	[bp+var_8], 0

loc_ADFD:				; CODE XREF: sub_ADA2+53j
		mov	al, byte_1ACF4
		and	ax, 0C0h
		mov	[bp+var_12], ax
		cmp	[bp+var_8], 0
		jz	short loc_AE48
		mov	ax, 95h	; '•'
		call	sub_A9C2
		cmp	word_16340, 0
		jz	short loc_AE1C
		jmp	loc_B1D3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AE1C:				; CODE XREF: sub_ADA2+75j
		cmp	byte_1B93C, 19h
		jz	short loc_AE2A
		cmp	byte_1B93C, 1Ah
		jnz	short loc_AE32

loc_AE2A:				; CODE XREF: sub_ADA2+7Fj
		mov	[bp+var_22], 1
		jmp	short loc_AE37
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_AE32:				; CODE XREF: sub_ADA2+86j
		mov	[bp+var_22], 0

loc_AE37:				; CODE XREF: sub_ADA2+8Dj
		push	0
		push	[bp+var_22]
		push	1

loc_AE3E:				; CODE XREF: sub_ADA2+116j
		call	sub_AB4A
		add	sp, 6
		pop	si
		leave
		retn
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_AE48:				; CODE XREF: sub_ADA2+68j
		mov	[bp+var_4], 0
		mov	[bp+var_2], 19h
		cmp	byte_1B93C, 19h
		jz	short loc_AE5E
		cmp	byte_1B93C, 1Ah
		jnz	short loc_AE6E

loc_AE5E:				; CODE XREF: sub_ADA2+B3j
		mov	al, byte_1B93C
		mov	[bp+var_2], al
		call	sub_A61E
		mov	[bp+var_1C], ax
		mov	[bp+var_4], 1

loc_AE6E:				; CODE XREF: sub_ADA2+BAj
		cmp	[bp+var_4], 0
		jz	short loc_AEBA
		cmp	[bp+var_1C], 0
		jnz	short loc_AEBA
		mov	al, [bp+var_2]
		sub	ah, ah
		call	sub_AA22
		cmp	word_16340, 0
		jz	short loc_AE8C
		jmp	loc_B1D3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AE8C:				; CODE XREF: sub_ADA2+E5j
		push	word_1C1BC
		push	word_1BD86
		call	sub_2F08
		add	sp, 4
		mov	[bp+var_1E], ax
		inc	ax
		jz	short loc_AEB2
		cmp	word_16346, 0
		jnz	short loc_AEB2
		mov	ax, [bp+var_1E]
		add	ax, 5Ah	; 'Z'
		call	sub_A9C2

loc_AEB2:				; CODE XREF: sub_ADA2+FEj
					; sub_ADA2+105j
		push	1
		push	1
		push	0
		jmp	short loc_AE3E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AEBA:				; CODE XREF: sub_ADA2+D0j sub_ADA2+D6j
		cmp	byte_1B93C, 18h
		jnb	short loc_AECA
		mov	al, byte_1B93C
		and	ax, 7
		jmp	short loc_AECF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_AECA:				; CODE XREF: sub_ADA2+11Dj
		mov	al, byte_1B93C
		sub	ah, ah

loc_AECF:				; CODE XREF: sub_ADA2+125j
		mov	[bp+var_20], ax
		cmp	ax, 1
		jnz	short loc_AEF3
		cmp	byte_1B93C, 8
		jb	short loc_AEE5
		cmp	byte_1B93C, 10h
		jb	short loc_AEF8

loc_AEE5:				; CODE XREF: sub_ADA2+13Aj
		cmp	byte_1B93C, 10h
		jb	short loc_AEF3
		cmp	byte_1B93C, 18h
		jb	short loc_AEF8

loc_AEF3:				; CODE XREF: sub_ADA2+133j
					; sub_ADA2+148j
		mov	ax, [bp+var_20]
		jmp	short loc_AEFB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AEF8:				; CODE XREF: sub_ADA2+141j
					; sub_ADA2+14Fj
		mov	ax, 11h

loc_AEFB:				; CODE XREF: sub_ADA2+154j
		call	sub_AA22
		cmp	word_16340, 0
		jnz	short loc_AF15
		push	0
		mov	al, [bp+var_4]
		sub	ah, ah
		push	ax
		push	0
		call	sub_AB4A
		add	sp, 6

loc_AF15:				; CODE XREF: sub_ADA2+161j
		cmp	[bp+var_20], 1
		jz	short loc_AF49
		cmp	byte_1B93C, 8
		jb	short loc_AF29
		cmp	byte_1B93C, 10h
		jb	short loc_AF37

loc_AF29:				; CODE XREF: sub_ADA2+17Ej
		cmp	byte_1B93C, 10h
		jb	short loc_AF49
		cmp	byte_1B93C, 18h
		jnb	short loc_AF49

loc_AF37:				; CODE XREF: sub_ADA2+185j
		mov	ax, [bp+var_20]
		mov	dx, 3
		call	sub_A888
		mov	[bp+var_14], ax
		add	ax, 41h	; 'A'
		call	sub_A9C2

loc_AF49:				; CODE XREF: sub_ADA2+177j
					; sub_ADA2+18Cj ...
		test	byte_1AADA, 40h
		jz	short loc_AF56
		mov	ax, 96h	; '-'
		call	sub_A9C2

loc_AF56:				; CODE XREF: sub_ADA2+1ACj
		test	byte_1ACF4, 20h
		jz	short loc_AF84
		cmp	[bp+var_4], 0
		jnz	short loc_AF84
		mov	al, byte_1ACF4
		and	ax, 0A0h
		mov	dx, 2
		call	sub_A7DE
		mov	[bp+var_14], ax
		test	byte_1ACF4, 80h
		jz	short loc_AF7E
		add	ax, 21h	; '!'		jmp	short loc_AF81
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_AF7E:				; CODE XREF: sub_ADA2+1D5j
		add	ax, 31h	; '1'

loc_AF81:				; CODE XREF: sub_ADA2+1DAj
		call	sub_A9C2

loc_AF84:				; CODE XREF: sub_ADA2+1B9j
					; sub_ADA2+1BFj
		test	byte_1ACF4, 40h
		jz	short loc_AFC3
		cmp	[bp+var_4], 0
		jnz	short loc_AFC3
		test	byte_1ACF4, 80h
		jz	short loc_AFA0
		mov	[bp+var_18], 1
		jmp	short loc_AFA5
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_AFA0:				; CODE XREF: sub_ADA2+1F4j
		mov	[bp+var_18], 11h

loc_AFA5:				; CODE XREF: sub_ADA2+1FBj
		mov	ax, 40h	; '@'
		mov	dx, 3
		call	sub_A77E
		mov	[bp+var_14], ax
		or	ax, ax
		jnz	short loc_AFBA
		mov	[bp+var_14], 0Fh

loc_AFBA:				; CODE XREF: sub_ADA2+211j
		mov	ax, [bp+var_18]
		add	ax, [bp+var_14]
		call	sub_A9C2

loc_AFC3:				; CODE XREF: sub_ADA2+1E7j
					; sub_ADA2+1EDj
		cmp	word_16340, 0
		jnz	short loc_B011
		cmp	word_1634A, 0
		jnz	short loc_B011
		push	word_1C1BC
		push	word_1BD86
		call	sub_2F08
		add	sp, 4
		mov	[bp+var_1E], ax
		inc	ax
		jz	short loc_AFF7
		cmp	word_16346, 0
		jnz	short loc_AFF7
		mov	ax, [bp+var_1E]
		add	ax, 5Ah	; 'Z'
		call	sub_A9C2

loc_AFF7:				; CODE XREF: sub_ADA2+243j
					; sub_ADA2+24Aj
		push	word_1C1BC
		push	word_1BD86
		call	sub_2FF0
		add	sp, 4
		or	ax, ax
		jz	short loc_B011
		mov	ax, 68h	; 'h'
		call	sub_A9C2

loc_B011:				; CODE XREF: sub_ADA2+226j
					; sub_ADA2+22Dj ...
		test	byte_1AADA, 0Ah
		jz	short loc_B065
		cmp	[bp+var_4], 0
		jnz	short loc_B065
		cmp	word_1634A, 0
		jnz	short loc_B065
		mov	ax, 0Ah
		mov	dx, 1
		call	sub_A94E
		mov	[bp+var_14], ax
		or	ax, ax
		jnz	short loc_B03E
		mov	ax, 51h	; 'Q'
		call	sub_A9C2
		jmp	short loc_B065
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_B03E:				; CODE XREF: sub_ADA2+291j
		mov	[bp+var_1A], 1
		mov	[bp+var_16], 0

loc_B048:				; CODE XREF: sub_ADA2+2C1j
		mov	ax, [bp+var_14]
		test	[bp+var_1A], ax
		jz	short loc_B059
		mov	ax, [bp+var_16]
		add	ax, 52h	; 'R'
		call	sub_A9C2

loc_B059:				; CODE XREF: sub_ADA2+2ACj
		shl	[bp+var_1A], 1
		inc	[bp+var_16]
		cmp	[bp+var_16], 8
		jl	short loc_B048

loc_B065:				; CODE XREF: sub_ADA2+274j
					; sub_ADA2+27Aj ...
		cmp	[bp+var_4], 0
		jnz	short loc_B06E
		jmp	loc_B1D3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B06E:				; CODE XREF: sub_ADA2+2C7j
		mov	[bp+var_6], 0FFFFh
		mov	al, byte_1B943
		and	al, 0DDh
		cmp	al, 0C1h ; 'Á'
		jnz	short loc_B081
		mov	[bp+var_6], 0

loc_B081:				; CODE XREF: sub_ADA2+2D8j
		mov	al, byte_1B943
		and	al, 77h
		cmp	al, 7
		jnz	short loc_B08F
		mov	[bp+var_6], 1

loc_B08F:				; CODE XREF: sub_ADA2+2E6j
		mov	al, byte_1B943
		and	al, 77h
		cmp	al, 70h	; 'p'
		jnz	short loc_B09D
		mov	[bp+var_6], 2

loc_B09D:				; CODE XREF: sub_ADA2+2F4j
		mov	al, byte_1B943
		and	al, 0DDh
		cmp	al, 1Ch
		jnz	short loc_B0AB
		mov	[bp+var_6], 3

loc_B0AB:				; CODE XREF: sub_ADA2+302j
		cmp	[bp+var_6], 0
		jge	short loc_B0FC
		mov	[bp+var_C], 0

loc_B0B6:				; CODE XREF: sub_ADA2+34Dj
		mov	al, byte ptr [bp+var_C]
		inc	al
		and	ax, 3
		mov	[bp+var_10], ax
		and	al, 3Eh
		shl	al, 2
		mov	byte_16584, al
		mov	al, byte ptr [bp+var_C]
		and	al, 0FEh
		shl	al, 2
		mov	byte_16585, al
		mov	bx, [bp+var_C]
		mov	al, [bx+499Ah]
		sub	ah, ah
		shl	ax, 2
		add	ax, bx
		add	ax, 6Dh	; 'm'
		call	sub_A9C2
		inc	[bp+var_C]
		cmp	[bp+var_C], 4
		jl	short loc_B0B6
		sub	al, al
		mov	byte_16585, al
		mov	byte_16584, al
		jmp	short loc_B10D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_B0FC:				; CODE XREF: sub_ADA2+30Dj
		sub	al, al
		mov	byte_16585, al
		mov	byte_16584, al
		mov	ax, [bp+var_6]
		add	ax, 97h	; '-'
		call	sub_A9C2

loc_B10D:				; CODE XREF: sub_ADA2+357j
		mov	al, [bp+var_2]
		sub	ah, ah
		call	sub_AAE6
		cmp	[bp+var_12], 0
		jnz	short loc_B11E
		jmp	loc_B1A6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B11E:				; CODE XREF: sub_ADA2+377j
		mov	al, byte ptr [bp+var_12]
		and	ax, 80h
		cmp	ax, 1
		sbb	ax, ax
		and	ax, 4
		add	ax, 8Dh	; ''
		mov	[bp+var_10], ax
		mov	[bp+var_C], 0
		jmp	short loc_B192
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_B13A:				; CODE XREF: sub_ADA2+3FEj
		mov	ax, word_1ACE0
		neg	ax

loc_B13F:				; CODE XREF: sub_ADA2+402j
		mov	[bp+var_22], ax
		cmp	byte ptr [bx+6BAh], 0
		jle	short loc_B14E
		mov	ax, word_1ACE0
		jmp	short loc_B150
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B14E:				; CODE XREF: sub_ADA2+3A5j
		sub	ax, ax

loc_B150:				; CODE XREF: sub_ADA2+3AAj
		mov	[bp+var_24], ax
		mov	al, [bx+6B4h]
		cbw
		mov	bx, ax
		add	bx, word ptr dword_1B96A
		mov	es, word ptr dword_1B96A+2
		add	bx, [bp+var_22]
		mov	si, [bp+var_24]
		mov	al, es:[bx+si]
		sub	ah, ah
		test	al, 40h
		jz	short loc_B18F
		push	ax
		call	sub_306C
		add	sp, 2
		sub	ah, ah
		cmp	ax, 19h
		jz	short loc_B18F
		cmp	ax, 1Ah
		jz	short loc_B18F
		mov	ax, [bp+var_10]
		add	ax, [bp+var_C]
		call	sub_A9C2

loc_B18F:				; CODE XREF: sub_ADA2+3CDj
					; sub_ADA2+3DDj ...
		inc	[bp+var_C]

loc_B192:				; CODE XREF: sub_ADA2+395j
		cmp	[bp+var_C], 4
		jge	short loc_B1A6
		mov	bx, [bp+var_C]
		cmp	byte ptr [bx+6BAh], 0
		jl	short loc_B13A
		sub	ax, ax
		jmp	short loc_B13F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B1A6:				; CODE XREF: sub_ADA2+379j
					; sub_ADA2+3F4j
		cmp	word_16340, 0
		jnz	short loc_B1D3
		cmp	word_16346, 0
		jnz	short loc_B1D3
		push	word_1C1BC
		push	word_1BD86
		call	sub_2F08
		add	sp, 4
		mov	[bp+var_1E], ax
		inc	ax
		jz	short loc_B1D3
		mov	ax, [bp+var_1E]
		add	ax, 5Ah	; 'Z'
		call	sub_A9C2

loc_B1D3:				; CODE XREF: sub_ADA2+77j sub_ADA2+E7j ...
		pop	si
		leave
		retn
sub_ADA2	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_B1D6	proc far		; CODE XREF: sub_8A2A+28P sub_B492+80p

var_2E		= word ptr -2Eh
var_2C		= word ptr -2Ch
var_2A		= word ptr -2Ah
var_26		= word ptr -26h
var_24		= word ptr -24h
var_22		= word ptr -22h
var_20		= word ptr -20h
var_1E		= word ptr -1Eh
var_1C		= word ptr -1Ch
var_1A		= word ptr -1Ah
var_16		= word ptr -16h
var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	28h, 0
		push	bx
		push	dx
		push	ax
		push	si
		mov	[bp+var_1E], 0
		cmp	[bp+arg_0], 0
		jl	short loc_B1F8
		mov	cl, byte ptr [bp+arg_0]
		add	cl, 4
		mov	al, 1
		shl	al, cl
		mov	byte_1B91A, al
		jmp	short loc_B1FD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B1F8:				; CODE XREF: sub_B1D6+11j
		mov	byte_1B91A, 0

loc_B1FD:				; CODE XREF: sub_B1D6+20j
		push	cs
		call	near ptr sub_A476
		mov	ax, [bp+var_2E]
		cmp	word_1BE96, ax
		jge	short loc_B20D
		jmp	loc_B48C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B20D:				; CODE XREF: sub_B1D6+32j
		mov	ax, [bp+var_2C]
		cmp	word_1BEAE, ax
		jge	short loc_B219
		jmp	loc_B48C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B219:				; CODE XREF: sub_B1D6+3Ej
		mov	ax, [bp+var_2A]
		add	ax, [bp+var_2E]
		dec	ax
		mov	[bp+var_1C], ax
		mov	ax, [bp+arg_2]
		add	ax, [bp+var_2C]
		dec	ax
		mov	[bp+var_22], ax
		mov	ax, [bp+var_1C]
		cmp	ax, word_1BE96
		jle	short loc_B239
		mov	ax, word_1BE96

loc_B239:				; CODE XREF: sub_B1D6+5Ej
		mov	[bp+var_1C], ax
		mov	cx, [bp+var_2E]
		cmp	cx, word_1A862
		jge	short loc_B249
		mov	cx, word_1A862

loc_B249:				; CODE XREF: sub_B1D6+6Dj
		mov	[bp+var_2E], cx
		mov	ax, word_1BEAE
		cmp	ax, [bp+var_22]
		jle	short loc_B257
		mov	ax, [bp+var_22]

loc_B257:				; CODE XREF: sub_B1D6+7Cj
		mov	[bp+var_22], ax
		mov	dx, [bp+var_2C]
		cmp	dx, word_1A864
		jge	short loc_B267
		mov	dx, word_1A864

loc_B267:				; CODE XREF: sub_B1D6+8Bj
		mov	[bp+var_2C], dx
		sub	ax, dx
		inc	ax
		mov	[bp+arg_2], ax
		sub	cx, word_1A862
		mov	[bp+var_1A], cx
		sub	dx, word_1A864
		mov	[bp+var_20], dx
		cmp	word_16316, 0
		jz	short loc_B2C2
		mov	ax, dx
		inc	ax
		imul	word_1ACE0
		add	cx, ax
		inc	cx
		mov	ax, cx
		add	cx, word_16318
		mov	dx, word_1631A
		mov	[bp+var_C], cx
		mov	[bp+var_A], dx
		mov	cx, ax
		add	ax, word_1631C
		mov	dx, word_1631E
		mov	[bp+var_6], ax
		mov	[bp+var_4], dx
		add	cx, word_16324
		mov	ax, word_16326
		mov	[bp+var_26], cx
		mov	[bp+var_24], ax
		mov	ax, word_1ACE0
		jmp	short loc_B317
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_B2C2:				; CODE XREF: sub_B1D6+ADj
		mov	ax, [bp+var_2C]
		cmp	ax, 1
		jge	short loc_B2CD
		mov	ax, 1

loc_B2CD:				; CODE XREF: sub_B1D6+F2j
		mov	[bp+var_14], ax
		push	ax
		mov	cx, [bp+var_2E]
		cmp	cx, 1
		jge	short loc_B2DC
		mov	cx, 1

loc_B2DC:				; CODE XREF: sub_B1D6+101j
		mov	[bp+var_12], cx
		push	cx
		mov	si, ax
		call	sub_2BAA
		add	sp, 4
		mov	[bp+var_C], ax
		mov	[bp+var_A], dx
		push	si
		push	[bp+var_12]
		call	sub_2BDE
		add	sp, 4
		mov	[bp+var_6], ax
		mov	[bp+var_4], dx
		push	si
		push	[bp+var_12]
		call	sub_2D94
		add	sp, 4
		mov	[bp+var_26], ax
		mov	[bp+var_24], dx
		mov	ax, off_1A982

loc_B317:				; CODE XREF: sub_B1D6+E9j
		mov	[bp+var_16], ax
		mov	ax, word_1B964
		add	ax, [bp+var_20]
		inc	ax
		imul	word_1ACFC
		dec	ax
		mov	word_1A986, ax
		mov	ax, [bp+var_2C]
		mov	[bp+var_14], ax
		jmp	loc_B438
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B332:				; CODE XREF: sub_B1D6+29Ej
					; sub_B1D6+2AAj
		mov	[bp+var_10], 0

loc_B337:				; CODE XREF: sub_B1D6+2B2j
		cmp	word_16346, 0
		jz	short loc_B353
		sub	ax, word_1633A
		or	ax, ax
		jg	short loc_B350
		mov	ax, [bp+var_14]
		sub	ax, word_1633A
		not	ax
		inc	ax

loc_B350:				; CODE XREF: sub_B1D6+16Ej
		mov	[bp+var_1E], ax

loc_B353:				; CODE XREF: sub_B1D6+166j
		mov	word_1AD00, 0
		mov	ax, word_1B948
		add	ax, [bp+var_1A]
		imul	word_1ACFA
		mov	cx, word_1ACFA
		sar	cx, 1
		add	cx, ax
		mov	word_1A97E, cx
		mov	ax, [bp+var_2E]
		mov	[bp+var_12], ax
		jmp	short loc_B3F5
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_B378:				; CODE XREF: sub_B1D6+22Ej
					; sub_B1D6+23Aj
		mov	[bp+var_8], 0

loc_B37D:				; CODE XREF: sub_B1D6+242j
		cmp	[bp+var_8], 0
		jz	short loc_B389
		cmp	[bp+var_10], 0
		jnz	short loc_B390

loc_B389:				; CODE XREF: sub_B1D6+1ABj
		mov	[bp+var_E], 1
		jmp	short loc_B395
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B390:				; CODE XREF: sub_B1D6+1B1j
		mov	[bp+var_E], 0

loc_B395:				; CODE XREF: sub_B1D6+1B8j
		cmp	word_16346, 0
		jz	short loc_B3C8
		push	word_16346
		push	[bp+var_1E]
		sub	ax, word_16338
		or	ax, ax
		jg	short loc_B3B5
		mov	ax, [bp+var_12]
		sub	ax, word_16338
		not	ax
		inc	ax

loc_B3B5:				; CODE XREF: sub_B1D6+1D3j
		push	ax
		call	sub_2AF0
		add	sp, 6
		cmp	ax, 1
		sbb	ax, ax
		neg	ax
		or	[bp+var_E], ax

loc_B3C8:				; CODE XREF: sub_B1D6+1C4j
		mov	ax, [bp+var_E]
		call	sub_ADA2
		mov	ax, word_1ACFA
		add	word_1A97E, ax
		cmp	[bp+var_8], 0
		jz	short loc_B3ED
		cmp	[bp+var_10], 0
		jz	short loc_B3ED
		inc	word ptr dword_1B96A
		inc	word ptr dword_1A8EE
		inc	word ptr dword_1B14A

loc_B3ED:				; CODE XREF: sub_B1D6+203j
					; sub_B1D6+209j
		xor	byte ptr word_1AD00, 1
		inc	[bp+var_12]

loc_B3F5:				; CODE XREF: sub_B1D6+19Fj
		mov	ax, [bp+var_12]
		cmp	[bp+var_1C], ax
		jl	short loc_B41C
		mov	word_1BD86, ax
		or	ax, ax
		jg	short loc_B407
		jmp	loc_B378
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B407:				; CODE XREF: sub_B1D6+22Cj
		mov	cx, off_1A982
		dec	cx
		cmp	cx, ax
		jg	short loc_B413
		jmp	loc_B378
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B413:				; CODE XREF: sub_B1D6+238j
		mov	[bp+var_8], 1
		jmp	loc_B37D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_B41C:				; CODE XREF: sub_B1D6+225j
		mov	ax, word_1ACFC
		add	word_1A986, ax
		cmp	[bp+var_10], 0
		jz	short loc_B435
		mov	ax, [bp+var_16]
		add	[bp+var_C], ax
		add	[bp+var_6], ax
		add	[bp+var_26], ax

loc_B435:				; CODE XREF: sub_B1D6+251j
		inc	[bp+var_14]

loc_B438:				; CODE XREF: sub_B1D6+159j
		mov	ax, [bp+var_22]
		cmp	[bp+var_14], ax
		jg	short loc_B48C
		mov	ax, [bp+var_14]
		mov	word_1C1BC, ax
		mov	cx, [bp+var_C]
		mov	dx, [bp+var_A]
		mov	word ptr dword_1B96A, cx
		mov	word ptr dword_1B96A+2,	dx
		mov	cx, [bp+var_6]
		mov	dx, [bp+var_4]
		mov	word ptr dword_1A8EE, cx
		mov	word ptr dword_1A8EE+2,	dx
		mov	cx, [bp+var_26]
		mov	dx, [bp+var_24]
		mov	word ptr dword_1B14A, cx
		mov	word ptr dword_1B14A+2,	dx
		or	ax, ax
		jg	short loc_B477
		jmp	loc_B332
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B477:				; CODE XREF: sub_B1D6+29Cj
		mov	cx, word_1A984
		dec	cx
		cmp	cx, ax
		jg	short loc_B483
		jmp	loc_B332
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B483:				; CODE XREF: sub_B1D6+2A8j
		mov	[bp+var_10], 1
		jmp	loc_B337
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_B48C:				; CODE XREF: sub_B1D6+34j sub_B1D6+40j ...
		pop	si
		leave
		retf	4
sub_B1D6	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_B492	proc far		; CODE XREF: sub_8A88+2BP seg016:10ADp

var_2		= word ptr -2

		push	bp
		mov	bp, sp
		push	ax
		push	cs
		call	near ptr sub_A476
		cmp	word_1B948, 0
		jnz	short loc_B4A8
		cmp	word_1B964, 0
		jz	short loc_B4FF

loc_B4A8:				; CODE XREF: sub_B492+Dj
		cmp	word_15F00, 0
		jz	short loc_B4E8
		push	0FFF8h
		push	0
		push	word_1996C
		push	word_1996E
		push	0
		push	0
		mov	bx, word_15F00
		push	word ptr [bx+6]
		push	word ptr [bx+4]
		push	word ptr [bx+2]
		push	word ptr [bx]
		push	word_19972
		push	word_19970
		push	word_1996E
		push	word_1996C
		call	sub_CB90
		add	sp, 1Ch
		jmp	short loc_B4FF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B4E8:				; CODE XREF: sub_B492+1Bj
		push	word_19972
		push	word_19970
		push	word_1996E
		push	word_1996C
		sub	al, al
		call	sub_C49E

loc_B4FF:				; CODE XREF: sub_B492+14j sub_B492+54j
		push	word_1B148
		push	[bp+var_2]
		mov	ax, word_1A862

loc_B509:
		mov	dx, word_1A864

loc_B50D:
		mov	bx, word_1B144
		push	cs
		call	near ptr sub_B1D6
		leave
		retf
sub_B492	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		mov	word_16346, dx
		push	cs
		call	near ptr sub_B492
		mov	word_16346, 0
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	8, 0
		mov	word ptr [bp-4], 0
		jmp	short loc_B553
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_B534:				; CODE XREF: seg016:10DEj
		inc	word ptr [bp-2]

loc_B537:				; CODE XREF: seg016:loc_B560j
		mov	ax, [bp-2]
		cmp	off_1A982, ax
		jle	short loc_B550
		push	0FFFFh
		push	word ptr [bp-4]
		push	ax
		call	sub_2CDC
		add	sp, 6
		jmp	short loc_B534
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B550:				; CODE XREF: seg016:10CEj
		inc	word ptr [bp-4]

loc_B553:				; CODE XREF: seg016:10C1j
		mov	ax, word_1A984
		cmp	[bp-4],	ax
		jge	short locret_B562
		mov	word ptr [bp-2], 0

loc_B560:
		jmp	short loc_B537
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

locret_B562:				; CODE XREF: seg016:10E9j
		leave
		retf
seg016		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg017		segment public 'CODE'
		assume cs:seg017
		;org 4
		assume es:nothing, ss:nothing, ds:dseg


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_B63C	proc far		; CODE XREF: sub_22B0+1AP seg017:029Bp ...
		mov	ax, word_1633A
		sub	ax, 13h
		mov	word_1A832, ax
		mov	ax, off_1A982
		sub	ax, 39h	; '9'
		push	ax
		push	1
		mov	ax, word_16338
		sub	ax, 1Ch
		mov	word_1C7F2, ax
		push	ax
		call	sub_865E
		add	sp, 6
		mov	word_1C7F2, ax
		mov	ax, word_1A984
		sub	ax, 28h	; '('
		push	ax
		push	1
		push	word_1A832
		call	sub_865E
		add	sp, 6
		mov	word_1A832, ax
		retf
sub_B63C	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_B67C	proc far		; CODE XREF: sub_B7D4+15p seg017:0314p

var_30		= word ptr -30h
var_2E		= word ptr -2Eh
var_2C		= word ptr -2Ch
var_2A		= word ptr -2Ah
var_28		= word ptr -28h
var_26		= word ptr -26h
var_24		= word ptr -24h
var_22		= word ptr -22h
var_20		= word ptr -20h
var_1C		= word ptr -1Ch
var_19		= byte ptr -19h
var_4		= word ptr -4
var_1		= byte ptr -1
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h
arg_4AE6	= byte ptr  4AECh

		enter	3Ah, 0
		push	di
		push	si
		mov	dx, [bp+arg_8]
		or	dx, dx
		jl	short loc_B696
		mov	cx, dx
		mov	ax, 10h
		shl	ax, cl
		mov	[bp+var_1C], ax
		jmp	short loc_B69B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_B696:				; CODE XREF: sub_B67C+Bj
		mov	[bp+var_1C], 0

loc_B69B:				; CODE XREF: sub_B67C+17j
		mov	si, [bp+arg_0]
		mov	di, [bp+arg_2]
		push	di
		push	si
		call	sub_2BAA
		add	sp, 4
		mov	[bp+var_28], ax
		mov	[bp+var_26], dx
		push	di
		push	si
		call	sub_2BDE
		add	sp, 4
		push	di
		push	si
		call	sub_2D94
		add	sp, 4
		mov	[bp+var_2C], ax
		mov	[bp+var_2A], dx
		push	di
		push	si
		call	sub_2C48
		add	sp, 4
		mov	ax, si
		sub	ax, word_1C7F2
		add	ax, 0FCh ; 'ü'
		mov	dx, di
		sub	dx, word_1A832
		add	dx, 9
		lea	bx, word_19964
		call	sub_C910
		mov	[bp+var_30], ax
		mov	[bp+var_2E], dx
		mov	ax, off_1A982
		mov	[bp+var_20], ax
		mov	ax, word_19966
		mov	[bp+var_24], ax
		cmp	[bp+arg_6], 0
		jg	short loc_B70B
		jmp	loc_B7D0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B70B:				; CODE XREF: sub_B67C+8Aj
		mov	bx, [bp+arg_4]
		mov	ax, [bp+arg_6]
		mov	[bp+var_22], ax

loc_B714:				; CODE XREF: sub_B67C+151j
		or	bx, bx
		jg	short loc_B71E
		mov	si, [bp+var_28]
		jmp	loc_B7AE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B71E:				; CODE XREF: sub_B67C+9Aj
		mov	ax, bx
		mov	[bp+var_4], ax
		mov	si, [bp+var_28]
		mov	di, [bp+var_2C]
		mov	cx, [bp+var_30]
		mov	ds, [bp+var_26]

loc_B72F:				; CODE XREF: sub_B67C+122j
		mov	bx, si
		inc	si
		mov	al, [bx]
		mov	[bp+var_19], al
		mov	es, [bp+var_2A]
		mov	bx, di
		inc	di
		mov	al, es:[bx]
		mov	[bp+var_1], al
		cmp	[bp+arg_A], 0
		jz	short loc_B750
		mov	[bp+var_1], 0Fh
		jmp	short loc_B78F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_B750:				; CODE XREF: sub_B67C+CBj
		cmp	[bp+var_1C], 0
		jz	short loc_B766
		mov	al, [bp+var_1]
		sub	ah, ah
		test	[bp+var_1C], ax
		jnz	short loc_B766
		mov	[bp+var_1], ah
		jmp	short loc_B78F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_B766:				; CODE XREF: sub_B67C+D8j sub_B67C+E2j
		test	[bp+var_19], 20h
		jz	short loc_B77E
		mov	al, [bp+var_19]
		and	al, 80h
		cmp	al, 1
		sbb	al, al
		and	al, 1
		add	al, 1Bh
		mov	[bp+var_19], al
		jmp	short loc_B782
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B77E:				; CODE XREF: sub_B67C+EEj
		and	[bp+var_19], 1Fh

loc_B782:				; CODE XREF: sub_B67C+100j
		mov	bl, [bp+var_19]
		sub	bh, bh
		mov	al, ss:[bx+arg_4AE6]
		mov	[bp+var_1], al

loc_B78F:				; CODE XREF: sub_B67C+D1j sub_B67C+E7j
		mov	al, [bp+var_1]
		mov	es, [bp+var_2E]
		mov	bx, cx
		inc	cx
		mov	es:[bx], al
		dec	[bp+var_4]
		jnz	short loc_B72F
		mov	[bp+var_30], cx
		mov	[bp+var_2C], di
		mov	bx, [bp+arg_4]
		mov	ax, seg	dseg
		mov	ds, ax

loc_B7AE:				; CODE XREF: sub_B67C+9Fj
		mov	ax, [bp+var_20]
		sub	ax, bx
		add	si, ax
		mov	ax, [bp+var_20]
		sub	ax, bx
		add	[bp+var_2C], ax
		mov	ax, [bp+var_24]
		sub	ax, bx
		add	[bp+var_30], ax
		mov	[bp+var_28], si
		dec	[bp+var_22]
		jz	short loc_B7D0
		jmp	loc_B714
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B7D0:				; CODE XREF: sub_B67C+8Cj
					; sub_B67C+14Fj
		pop	si
		pop	di
		leave
		retf
sub_B67C	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_B7D4	proc far		; CODE XREF: sub_B914+8Bp

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		push	0
		push	[bp+arg_0]
		push	27h ; '''
		push	38h ; '8'
		push	word_1A832
		push	word_1C7F2
		push	cs
		call	near ptr sub_B67C
		leave
		retf
sub_B7D4	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	4, 0
		push	di
		push	si
		mov	di, [bp+6]
		mov	si, [bp+8]
		push	cs
		call	near ptr sub_B63C
		mov	ax, si
		cmp	si, word_1A832
		jge	short loc_B80A
		mov	si, word_1A832

loc_B80A:				; CODE XREF: seg017:02A4j
		mov	[bp-2],	si
		add	ax, [bp+0Ch]
		dec	ax
		mov	cx, word_1A832
		add	cx, 26h	; '&'
		cmp	ax, cx
		jle	short loc_B81E
		mov	ax, cx

loc_B81E:				; CODE XREF: seg017:02BAj
		sub	ax, si
		inc	ax
		jns	short loc_B825
		sub	ax, ax

loc_B825:				; CODE XREF: seg017:02C1j
		mov	[bp+0Ch], ax
		mov	ax, di
		add	di, [bp+0Ah]
		cmp	ax, word_1C7F2
		jge	short loc_B836
		mov	ax, word_1C7F2

loc_B836:				; CODE XREF: seg017:02D1j
		mov	[bp-4],	ax
		lea	cx, [di-1]
		mov	dx, word_1C7F2
		add	dx, 37h	; '7'
		cmp	cx, dx
		jle	short loc_B849
		mov	cx, dx

loc_B849:				; CODE XREF: seg017:02E5j
		sub	cx, ax
		inc	cx
		jns	short loc_B850
		sub	cx, cx

loc_B850:				; CODE XREF: seg017:02ECj
		mov	[bp+0Ah], cx
		or	cx, cx
		jnz	short loc_B85A
		jmp	loc_B90F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B85A:				; CODE XREF: seg017:02F5j
		cmp	word ptr [bp+0Ch], 0
		jnz	short loc_B863
		jmp	loc_B90F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B863:				; CODE XREF: seg017:02FEj
		push	word ptr [bp+12h]
		push	word ptr [bp+10h]
		push	word ptr [bp+0Ch]
		push	cx
		push	word ptr [bp-2]
		push	word ptr [bp-4]
		push	cs
		call	near ptr sub_B67C
		add	sp, 0Ch
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		mov	ax, word_1A832
		add	ax, 26h	; '&'
		cmp	ax, word_1BEAE
		jle	short loc_B899
		mov	ax, word_1BEAE

loc_B899:				; CODE XREF: seg017:0334j
		sub	ax, word_1A832
		add	ax, 9
		push	ax
		push	0Fh
		mov	ax, word_1C7F2
		mov	bx, ax
		add	bx, 37h	; '7'
		cmp	bx, word_1BE96
		jle	short loc_B8B5
		mov	bx, word_1BE96

loc_B8B5:				; CODE XREF: seg017:034Fj
		sub	bx, ax
		cmp	ax, word_1A862
		jge	short loc_B8C0
		mov	ax, word_1A862

loc_B8C0:				; CODE XREF: seg017:035Bj
		sub	ax, word_1C7F2
		add	ax, 0FCh ; 'ü'
		lea	bx, [bx+0FCh]
		mov	dx, word_1A832
		cmp	dx, word_1A864
		jge	short loc_B8D9
		mov	dx, word_1A864

loc_B8D9:				; CODE XREF: seg017:0373j
		sub	dx, word_1A832
		add	dx, 9
		call	sub_C86C
		cmp	word ptr [bp+0Eh], 0
		jz	short loc_B90F
		mov	ax, [bp-2]
		sub	ax, word_1A832
		add	ax, 9
		push	ax
		push	word ptr [bp+0Ah]
		push	word ptr [bp+0Ch]
		mov	dx, ax
		mov	ax, [bp-4]
		sub	ax, word_1C7F2
		add	ax, 0FCh ; 'ü'
		mov	bx, ax
		call	sub_C384

loc_B90F:				; CODE XREF: seg017:02F7j seg017:0300j ...
		pop	si
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_B914	proc far		; CODE XREF: sub_8A2A+57P sub_8A88+3EP

arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp
		mov	bp, sp
		push	cs
		call	near ptr sub_B63C
		cmp	word_15F00, 0
		jnz	short loc_B946
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		push	29h ; ')'
		push	0
		mov	ax, 0F1h ; 'ñ'
		mov	dx, 8
		mov	bx, 4Fh	; 'O'
		call	sub_C5B4
		jmp	short loc_B979
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_B946:				; CODE XREF: sub_B914+Cj
		push	0
		push	0
		push	29h ; ')'
		push	4Fh ; 'O'
		push	8
		push	0F1h ; 'ñ'
		mov	bx, word_15F00
		push	word ptr [bx+6]
		push	word ptr [bx+4]
		push	word ptr [bx+2]
		push	word ptr [bx]
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		call	sub_CB90
		mov	sp, bp

loc_B979:				; CODE XREF: sub_B914+30j
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		push	30h ; '0'
		push	6
		mov	ax, 0FBh ; 'û'
		mov	dx, 8
		mov	bx, 134h
		call	sub_C86C
		push	[bp+arg_2]
		push	cs
		call	near ptr sub_B7D4
		mov	sp, bp
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		mov	ax, word_1A832
		add	ax, 26h	; '&'
		cmp	ax, word_1BEAE
		jle	short loc_B9C3
		mov	ax, word_1BEAE

loc_B9C3:				; CODE XREF: sub_B914+AAj
		sub	ax, word_1A832
		add	ax, 9
		push	ax
		push	0Fh
		mov	ax, word_1C7F2
		mov	bx, ax
		add	bx, 37h	; '7'
		cmp	bx, word_1BE96
		jle	short loc_B9DF
		mov	bx, word_1BE96

loc_B9DF:				; CODE XREF: sub_B914+C5j
		sub	bx, ax
		cmp	ax, word_1A862
		jge	short loc_B9EA
		mov	ax, word_1A862

loc_B9EA:				; CODE XREF: sub_B914+D1j
		sub	ax, word_1C7F2
		add	ax, 0FCh ; 'ü'
		lea	bx, [bx+0FCh]
		mov	dx, word_1A832
		cmp	dx, word_1A864
		jge	short loc_BA03
		mov	dx, word_1A864

loc_BA03:				; CODE XREF: sub_B914+E9j
		sub	dx, word_1A832
		add	dx, 9
		call	sub_C86C
		cmp	[bp+arg_0], 0
		jz	short locret_BA28
		push	8
		push	4Fh ; 'O'
		push	29h ; ')'
		mov	ax, 0F1h ; 'ñ'
		mov	dx, 8
		mov	bx, ax
		call	sub_C384

locret_BA28:				; CODE XREF: sub_B914+FFj
		leave
		retf
sub_B914	endp



seg017		ends





; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg020		segment public 'CODE'
		assume cs:seg020
		;org 4
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_BAF4	proc far		; CODE XREF: sub_60+1FP sub_1226+19P ...
		push	bp
		mov	bp, sp
		mov	ah, 1
		int	16h		; KEYBOARD - CHECK BUFFER, DO NOT CLEAR
					; Return: ZF clear if character	in buffer
					; AH = scan code, AL = character
					; ZF set if no character in buffer
		jnz	short loc_BB02
		xor	ax, ax
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BB02:				; CODE XREF: sub_BAF4+7j
		mov	ax, 1
		leave
		retf
sub_BAF4	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_BB08	proc far		; CODE XREF: sub_60+28P sub_1226+2AP ...
		push	bp
		mov	bp, sp
		mov	ah, 0
		int	16h		; KEYBOARD - READ CHAR FROM BUFFER, WAIT IF EMPTY
					; Return: AH = scan code, AL = character
		or	al, al
		jz	short loc_BB18
		xor	ah, ah
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BB18:				; CODE XREF: sub_BB08+9j
		mov	al, ah
		mov	ah, 1
		leave
		retf
sub_BB08	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jmp	short loc_BB24
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BB20:				; CODE XREF: seg020:003Aj
		push	cs
		call	near ptr sub_BB08

loc_BB24:				; CODE XREF: seg020:002Ej
		push	cs
		call	near ptr sub_BAF4
		or	ax, ax
		jnz	short loc_BB20
		retf
seg020		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg021		segment public 'CODE'
		assume cs:seg021
		;org 0Dh
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_BB2E	proc far		; CODE XREF: sub_81C2+28P
		push	bp
		mov	bp, sp
		push	ax
		mov	dx, ax
		sub	ax, 110h
		cmp	ax, 22h	; '"'
		ja	short loc_BB8A
		shl	ax, 1
		xchg	ax, bx

loc_BB3F:
		jmp	cs:off_BB44[bx]
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
off_BB44	dw offset loc_BBA2	; DATA XREF: sub_BB2E:loc_BB3Fr
		dw offset loc_BBA8
		dw offset loc_BBAE
		dw offset loc_BBB4
		dw offset loc_BBBC
		dw offset loc_BBC2
		dw offset loc_BBC8
		dw offset loc_BBCE
		dw offset loc_BBD4
		dw offset loc_BBDA
		dw offset loc_BB8A
		dw offset loc_BB8A
		dw offset loc_BB8A
		dw offset loc_BB8A
		dw offset loc_BBE0
		dw offset loc_BBE6
		dw offset loc_BBEC
		dw offset loc_BBF2
		dw offset loc_BBF8
		dw offset loc_BBFE
		dw offset loc_BC04
		dw offset loc_BC0A
		dw offset loc_BC10
off_BB72	dw offset loc_BB8A
		dw offset loc_BB8A
		dw offset loc_BB8A
		dw offset loc_BB8A
		dw offset loc_BB8A
		dw offset loc_BC16
		dw offset loc_BC1C
		dw offset loc_BC22
		dw offset loc_BC28
		dw offset loc_BC2E
		dw offset loc_BC34
		dw offset loc_BC3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BB8A:				; CODE XREF: sub_BB2E+Cj
					; sub_BB2E:loc_BB3Fj
					; DATA XREF: ...
		cmp	dx, 61h	; 'a'
		jl	short loc_BB9C
		cmp	dx, 7Ah	; 'z'
		jg	short loc_BB9C
		mov	ax, dx
		sub	ax, 20h	; ' '
		jmp	locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BB9C:				; CODE XREF: sub_BB2E+5Fj sub_BB2E+64j
		mov	ax, dx
		jmp	locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BBA2:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E:off_BB44o
		mov	ax, 51h	; 'Q'
		jmp	locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BBA8:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+18o
		mov	ax, 57h	; 'W'
		jmp	locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BBAE:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+1Ao
		mov	ax, 45h	; 'E'
		jmp	locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BBB4:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+1Co
		mov	ax, 52h	; 'R'
		jmp	locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 4

loc_BBBC:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+1Eo
		mov	ax, 54h	; 'T'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BBC2:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+20o
		mov	ax, 59h	; 'Y'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BBC8:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+22o
		mov	ax, 55h	; 'U'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BBCE:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+24o
		mov	ax, 49h	; 'I'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BBD4:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+26o
		mov	ax, 4Fh	; 'O'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BBDA:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+28o
		mov	ax, 50h	; 'P'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BBE0:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+32o
		mov	ax, 41h	; 'A'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BBE6:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+34o
		mov	ax, 53h	; 'S'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BBEC:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+36o
		mov	ax, 44h	; 'D'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BBF2:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+38o
		mov	ax, 46h	; 'F'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BBF8:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+3Ao
		mov	ax, 47h	; 'G'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BBFE:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+3Co
		mov	ax, 48h	; 'H'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BC04:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+3Eo
		mov	ax, 4Ah	; 'J'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BC0A:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+40o
		mov	ax, 4Bh	; 'K'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BC10:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+42o
		mov	ax, 4Ch	; 'L'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BC16:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+4Eo
		mov	ax, 5Ah	; 'Z'
		jmp	short locret_BC3D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BC1C:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+50o
		mov	ax, 58h	; 'X'
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BC22:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+52o
		mov	ax, 43h	; 'C'
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BC28:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+54o
		mov	ax, 56h	; 'V'
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BC2E:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+56o
		mov	ax, 42h	; 'B'
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BC34:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+58o
		mov	ax, 4Eh	; 'N'
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BC3A:				; CODE XREF: sub_BB2E:loc_BB3Fj
					; DATA XREF: sub_BB2E+5Ao
		mov	ax, 4Dh	; 'M'

locret_BC3D:				; CODE XREF: sub_BB2E+6Bj sub_BB2E+70j ...
		leave
		retf
sub_BB2E	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
seg021		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg022		segment public 'CODE'
		assume cs:seg022
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __stdcall	far sub_BC40(char *)
sub_BC40	proc far		; CODE XREF: sub_843A+A3P sub_8526+1CP

var_2		= word ptr -2
arg_0		= word ptr  6

		enter	4, 0

loc_BC44:
		push	si
		push	0Ah		; int
		push	word ptr [bp+8]	; int
		push	[bp+arg_0]	; char *
		call	_strrchr
		add	sp, 6
		mov	si, ax
		mov	[bp+var_2], dx
		or	dx, ax
		jz	short loc_BC65
		mov	es, [bp+var_2]
		mov	byte ptr es:[si], 0

loc_BC65:				; CODE XREF: sub_BC40+1Cj
		mov	dx, [bp+var_2]
		pop	si
		leave
		retf	4
sub_BC40	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	8, 0
		push	di
		mov	di, [bp+6]
		mov	ax, [bp+8]
		push	ax
		push	di
		mov	[bp-8],	di
		mov	[bp-6],	ax
		call	_strlen_0
		add	sp, 4
		mov	bx, ax
		add	bx, [bp-8]
		mov	es, word ptr [bp-6]

loc_BC91:
		mov	byte ptr es:[bx], 0Ah
		inc	bx
		mov	byte ptr es:[bx], 0
		pop	di
		leave
		retf	4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
seg022		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg023		segment public 'CODE'
		assume cs:seg023
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; äã­ªæ¨ï @fileio_fread_f
; Attributes: bp-based frame

; int __fastcall far sub_BCA0(int,int,int,int,void *)
sub_BCA0	proc far		; CODE XREF: sub_A100+C0P sub_A100+E8P ...

var_114		= word ptr -114h
var_112		= word ptr -112h
var_110		= word ptr -110h
var_10E		= word ptr -10Eh
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		enter	10Eh, 0

loc_BCA4:				; ¢(r)â ç¥¬ ï¢"ï¥âáï ­  á ¬(r)¬ ¤¥"¥ var_110
		push	bx
		push	dx		; var_112
		push	ax		; var_114
		push	di
		push	si		; FILE *
		mov	di, bx
		sub	ax, ax
		mov	[bp+var_A], ax
		mov	[bp+var_C], ax
		mov	[bp+var_6], ax
		mov	[bp+var_8], ax
		mov	ax, dx
		or	ax, [bp+var_114] ; ¥á"¨	­ ¤(r) ¯à(r)ç¨â âì å(r)âï ¡ë 1 ¡ (c)â
		jnz	short loc_BCC4
		jmp	loc_BEA1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BCC4:				; CODE XREF: sub_BCA0+1Fj
		cmp	[bp+arg_0], 1
		jnz	short loc_BCD6	; á ¬ë(c)	¯à ¢ë(c)  à£-â
		cmp	[bp+arg_2], 0
		jnz	short loc_BCD6	; á ¬ë(c)	¯à ¢ë(c)  à£-â
		mov	ax, [bp+var_114]
		jmp	short loc_BCE6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BCD6:				; CODE XREF: sub_BCA0+28j sub_BCA0+2Ej
		push	dx		; á ¬ë(c)	¯à ¢ë(c)  à£-â
		push	[bp+var_114]
		push	[bp+arg_2]
		push	[bp+arg_0]
		call	__aFlmul	; çâ(r) íâ(r)?? å(r)âì ­¥¡(r)"ìè ï...

loc_BCE6:				; CODE XREF: sub_BCA0+34j
		mov	[bp+var_4], ax
		mov	[bp+var_2], dx
		cmp	word_16588, 0
		jz	short loc_BCF6

loc_BCF3:
		jmp	loc_BDF4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BCF6:				; CODE XREF: sub_BCA0+51j
		cmp	word ptr [di+2], 0 ; _iobuf._cnt - number of chars left
		jle	short loc_BD49
		mov	ax, [di+2]
		cwd
		cmp	dx, [bp+var_2]
		jl	short loc_BD0F	; ¥á"¨ ¬¥­ìè¥
		jg	short loc_BD0C
		cmp	ax, [bp+var_4]
		jbe	short loc_BD0F	; ¥á"¨ ˆ†... ¨"¨	à ¢­(r)

loc_BD0C:				; CODE XREF: sub_BCA0+65j
		mov	ax, [bp+var_4]

loc_BD0F:				; CODE XREF: sub_BCA0+63j sub_BCA0+6Aj
		mov	si, ax
		push	si		; size_t
		push	ds
		push	word ptr [di]	; size_t
		push	word ptr [bp+0Ch] ; void *
		push	[bp+arg_4]	; void *
		call	_memcpy		; _fmemcpy á(r)£" á­(r) CodeView ¨ ª(r)"-¢ã  à£-â(r)¢
		add	sp, 0Ah
		add	[di], si
		sub	[di+2],	si
		sub	cx, cx
		mov	[bp+var_C], si
		mov	[bp+var_A], cx

loc_BD30:
		mov	[bp+var_8], si
		mov	[bp+var_6], cx
		mov	ax, cx
		sub	dx, dx
		mov	cx, si
		add	[bp+arg_4], cx
		adc	dx, ax
		mov	cx, 0Ch
		shl	dx, cl
		add	[bp+0Ch], dx

loc_BD49:				; CODE XREF: sub_BCA0+5Aj
		cmp	word ptr [di+2], 0
		jnz	short loc_BD60
		test	byte ptr [di+6], 4
		jnz	short loc_BD60
		push	0		; char *
		push	di		; FILE *
		call	_setbuf
		add	sp, 4

loc_BD60:				; CODE XREF: sub_BCA0+ADj sub_BCA0+B3j
		mov	ax, [bp+var_4]
		mov	dx, [bp+var_2]
		cmp	[bp+var_6], dx
		jle	short loc_BD6E	; ¥á"¨ ¬¥­ìè¥ ¨"¨ à ¢­(r)
		jmp	loc_BE75
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BD6E:				; CODE XREF: sub_BCA0+C9j
		jl	short loc_BD78
		cmp	[bp+var_8], ax
		jb	short loc_BD78	; ¥á"¨ ­¨¦¥
		jmp	loc_BE75
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BD78:				; CODE XREF: sub_BCA0:loc_BD6Ej
					; sub_BCA0+D3j
		mov	[bp+var_110], di

loc_BD7C:				; CODE XREF: sub_BCA0+144j
					; sub_BCA0+14Ej
		lea	ax, [bp+var_E]
		push	ax		; unsigned int *
		mov	ax, [bp+var_4]
		mov	dx, [bp+var_2]
		sub	ax, [bp+var_C]
		sbb	dx, [bp+var_A]
		or	dx, dx		; ¥á"¨ dx<0
		jl	short loc_BD9A
		jg	short loc_BD97
		cmp	ax, 0F000h	; 61 âëáïç  440	¨"¨ -4096
		jbe	short loc_BD9A	; ¥á"¨ ­¨¦¥ ¨"¨	à ¢­(r)

loc_BD97:				; CODE XREF: sub_BCA0+F0j
		mov	ax, 0F000h

loc_BD9A:				; CODE XREF: sub_BCA0+EEj sub_BCA0+F5j
		mov	si, ax
		push	si		; unsigned int
		push	word ptr [bp+0Ch]
		push	[bp+arg_4]	; void far *
		mov	al, [di+7]
		cbw			; à áè¨à¥­¨¥ ¡ (c)â  AL ¢	á"(r)¢(r) á	ª(r)¯¨à(r)¢ ­¨¥¬ §­ ª(r)¢(r)£(r) ¡¨â 
		push	ax		; int
		call	__dos_read
		add	sp, 0Ah
		or	ax, ax
		jz	short loc_BDB7
		jmp	loc_BE75
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BDB7:				; CODE XREF: sub_BCA0+112j
		mov	ax, [bp+var_E]
		sub	dx, dx
		add	[bp+var_C], ax
		adc	[bp+var_A], dx
		sub	bx, bx
		mov	cx, ax
		add	[bp+arg_4], cx
		adc	bx, dx		; á"(r)¦-¥ 2å ­(r)"¥(c) á ãç¥â(r)¬ ä" £  ¯¥à¥­(r)á :¯(r)"ãç¨âáï "¨¡(r) ­(r)"ì "¨¡(r) ¥¤¨­¨æ 
		mov	cx, 0Ch
		shl	bx, cl		; bx ã¬­(r)¦ ¥âáï	­  4096
		add	[bp+0Ch], bx
		mov	ax, [bp+var_4]
		mov	dx, [bp+var_2]
		sub	cx, cx
		add	[bp+var_8], si
		adc	[bp+var_6], cx
		cmp	[bp+var_6], dx
		jl	short loc_BD7C
		jle	short loc_BDEB
		jmp	loc_BE75
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BDEB:				; CODE XREF: sub_BCA0+146j
		cmp	[bp+var_8], ax
		jb	short loc_BD7C
		jmp	loc_BE75
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_BDF4:				; CODE XREF: sub_BCA0:loc_BCF3j
		or	dx, dx
		jl	short loc_BE75
		jg	short loc_BDFE
		or	ax, ax
		jz	short loc_BE75

loc_BDFE:				; CODE XREF: sub_BCA0+158j
		mov	[bp+var_110], di

loc_BE02:				; CODE XREF: sub_BCA0+1CCj
					; sub_BCA0+1D3j
		push	di		; FILE *
		push	1		; size_t
		sub	ax, [bp+var_C]
		sbb	dx, [bp+var_A]
		or	dx, dx
		jl	short loc_BE19
		jg	short loc_BE16
		cmp	ax, 100h
		jbe	short loc_BE19

loc_BE16:				; CODE XREF: sub_BCA0+16Fj
		mov	ax, 100h

loc_BE19:				; CODE XREF: sub_BCA0+16Dj
					; sub_BCA0+174j
		mov	si, ax
		push	si		; size_t
		lea	ax, [bp+var_10E]
		push	ax		; void *
		call	_fread
		add	sp, 8
		or	ax, ax
		jz	short loc_BE75
		push	si		; size_t
		lea	ax, [bp+var_10E]
		push	ss
		push	ax		; size_t
		push	word ptr [bp+0Ch] ; void *
		push	[bp+arg_4]	; void *
		call	_memcpy
		add	sp, 0Ah
		sub	cx, cx
		add	[bp+var_C], si
		adc	[bp+var_A], cx
		mov	ax, cx

loc_BE4C:
		sub	dx, dx
		mov	cx, si
		add	[bp+arg_4], cx
		adc	dx, ax
		mov	cx, 0Ch
		shl	dx, cl
		add	[bp+0Ch], dx
		add	[bp+var_8], si
		adc	[bp+var_6], ax
		mov	ax, [bp+var_4]
		mov	dx, [bp+var_2]
		cmp	[bp+var_6], dx
		jl	short loc_BE02
		jg	short loc_BE75
		cmp	[bp+var_8], ax
		jb	short loc_BE02

loc_BE75:				; CODE XREF: sub_BCA0+CBj sub_BCA0+D5j ...
		mov	ax, [bp+var_114]
		mov	dx, [bp+var_112]
		cmp	[bp+var_C], ax
		jnz	short loc_BE94
		cmp	[bp+var_A], dx
		jnz	short loc_BE94
		mov	ax, 1
		cwd
		pop	si
		pop	di
		leave
		retf	8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 4

loc_BE94:				; CODE XREF: sub_BCA0+1E0j
					; sub_BCA0+1E5j
		push	dx
		push	ax
		push	[bp+var_A]
		push	[bp+var_C]

loc_BE9C:
		call	__aFldiv

loc_BEA1:				; CODE XREF: sub_BCA0+21j
		pop	si
		pop	di
		leave

locret_BEA4:
		retf	8
sub_BCA0	endp

seg023		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg024		segment public 'CODE'
		assume cs:seg024
		;org 7
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_BEA8(int,int,int,int,void far *)
sub_BEA8	proc far		; CODE XREF: sub_A240+97P sub_A240+BEP ...

var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= dword	ptr  0Ah

		enter	0Eh, 0
		push	bx
		push	dx
		push	ax
		push	di
		push	si		; char *
		mov	di, bx
		sub	ax, ax
		mov	[bp+var_A], ax
		mov	[bp+var_C], ax
		mov	[bp+var_6], ax
		mov	[bp+var_8], ax
		mov	ax, dx
		or	ax, [bp+var_14]
		jnz	short loc_BECB
		jmp	loc_BFA9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BECB:				; CODE XREF: sub_BEA8+1Ej
		test	byte ptr [di+6], 4
		jnz	short loc_BEDC
		push	0		; char *
		push	di		; FILE *
		call	_setbuf
		add	sp, 4

loc_BEDC:				; CODE XREF: sub_BEA8+27j
		cmp	[bp+arg_0], 1
		jnz	short loc_BEF0
		cmp	[bp+arg_2], 0
		jnz	short loc_BEF0
		mov	ax, [bp+var_14]
		mov	dx, [bp+var_12]
		jmp	short loc_BF01
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BEF0:				; CODE XREF: sub_BEA8+38j sub_BEA8+3Ej
		push	[bp+arg_2]

loc_BEF3:
		push	[bp+arg_0]
		push	[bp+var_12]
		push	[bp+var_14]
		call	__aFlmul

loc_BF01:				; CODE XREF: sub_BEA8+46j
		mov	[bp+var_4], ax
		mov	[bp+var_2], dx
		or	dx, dx
		jl	short loc_BF82
		jg	short loc_BF11
		or	ax, ax
		jz	short loc_BF82

loc_BF11:				; CODE XREF: sub_BEA8+63j
		mov	[bp+var_10], di

loc_BF14:				; CODE XREF: sub_BEA8+D1j sub_BEA8+D8j
		lea	ax, [bp+var_E]
		push	ax		; unsigned int *
		mov	ax, [bp+var_4]
		mov	dx, [bp+var_2]
		sub	ax, [bp+var_C]
		sbb	dx, [bp+var_A]
		or	dx, dx
		jl	short loc_BF32
		jg	short loc_BF2F
		cmp	ax, 0F000h
		jbe	short loc_BF32

loc_BF2F:				; CODE XREF: sub_BEA8+80j
		mov	ax, 0F000h

loc_BF32:				; CODE XREF: sub_BEA8+7Ej sub_BEA8+85j
		mov	si, ax
		push	si		; unsigned int
		push	word ptr [bp+arg_4+2]
		push	word ptr [bp+arg_4] ; void far *
		mov	al, [di+7]
		cbw
		push	ax		; int
		call	__dos_write
		add	sp, 0Ah
		or	ax, ax
		jnz	short loc_BF82
		mov	ax, [bp+var_E]
		sub	dx, dx
		add	[bp+var_C], ax
		adc	[bp+var_A], dx
		sub	bx, bx
		mov	cx, ax
		add	word ptr [bp+arg_4], cx
		adc	bx, dx
		mov	cx, 0Ch
		shl	bx, cl
		add	word ptr [bp+arg_4+2], bx
		mov	ax, [bp+var_4]
		mov	dx, [bp+var_2]
		sub	cx, cx
		add	[bp+var_8], si
		adc	[bp+var_6], cx
		cmp	[bp+var_6], dx
		jl	short loc_BF14
		jg	short loc_BF82
		cmp	[bp+var_8], ax
		jb	short loc_BF14

loc_BF82:				; CODE XREF: sub_BEA8+61j sub_BEA8+67j ...
		mov	ax, [bp+var_14]
		mov	dx, [bp+var_12]
		cmp	[bp+var_C], ax
		jnz	short loc_BF9C
		cmp	[bp+var_A], dx
		jnz	short loc_BF9C
		mov	ax, 1
		cwd
		pop	si
		pop	di
		leave
		retf	8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_BF9C:				; CODE XREF: sub_BEA8+E3j sub_BEA8+E8j
		push	dx
		push	ax
		push	[bp+var_A]
		push	[bp+var_C]
		call	__aFldiv

loc_BFA9:				; CODE XREF: sub_BEA8+20j
		pop	si
		pop	di
		leave
		retf	8
sub_BEA8	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
seg024		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg025		segment public 'CODE'
		assume cs:seg025
		assume es:nothing, ss:nothing, ds:dseg
dword_BFB0	dd 0			; DATA XREF: sub_BFCC:loc_C001w
					; sub_BFCC+6Br	...
		db    0
		db 0
		db  87h	; ‡
		db 0DFh	; ß
		db  80h	; €
		db 0FBh
		db 2
		db  87h	; ‡
		db 0DFh	; ß
		db  75h	; u
		db 8
		db 0F6h	; ö
		db 0C4h
		db    8
		db 74h
		db    3
		db 0B0h
		db    3
		db 0CFh
		db 2Eh
		db 0FFh
		db  2Eh	; .
		db    0
		db    0

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_BFCC(int,int,int)
sub_BFCC	proc far		; CODE XREF: seg002:0006P

var_A4		= byte ptr -0A4h
var_53		= word ptr -53h
var_2		= word ptr -2
arg_0		= word ptr  6

		enter	0A4h, 0
		mov	ax, ds
		mov	es, ax
		assume es:dseg
		push	si
		push	di
		mov	si, [bp+arg_0]
		lea	di, [bp+var_53]
		mov	cx, 4Fh	; 'O'

loc_BFDF:				; CODE XREF: sub_BFCC+17j
		lodsb
		stosb
		or	al, al
		loopne	loc_BFDF
		pop	di
		pop	si
		lea	bx, [bp+var_53]

loc_BFEA:
		lea	cx, [bp+var_A4]
		push	ds		; int
		push	bx		; int
		push	ds		; int
		push	cx		; char *
		call	sub_2A2A	; env_get_path
		add	sp, 8
		mov	ax, 3524h
		int	21h		; DOS -	2+ - GET INTERRUPT VECTOR
					; AL = interrupt number
					; Return: ES:BX	= value	of interrupt vector
		mov	ax, es

loc_C001:
		mov	word ptr cs:dword_BFB0,	bx
		mov	word ptr cs:dword_BFB0+2, ax
		push	ds
		push	cs
		pop	ds
		assume ds:seg025
		mov	dx, 6
		mov	ax, 2524h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		pop	ds
		assume ds:dseg
		lea	bx, [bp+var_A4]
		mov	dx, bx
		mov	ax, 3D00h
		int	21h		; DOS -	2+ - OPEN DISK FILE WITH HANDLE
					; DS:DX	-> ASCIZ filename
					; AL = access mode
					; 0 - read
		jb	short loc_C031
		mov	bx, ax
		mov	ah, 3Eh
		int	21h		; DOS -	2+ - CLOSE A FILE WITH HANDLE
					; BX = file handle
		mov	[bp+var_2], 0FFFFh
		jmp	short loc_C036
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C031:				; CODE XREF: sub_BFCC+55j
		mov	[bp+var_2], 0

loc_C036:				; CODE XREF: sub_BFCC+62j
		push	ds
		mov	dx, word ptr cs:dword_BFB0
		mov	ax, word ptr cs:dword_BFB0+2

loc_C040:
		mov	ds, ax

loc_C042:
		mov	ax, 2524h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		pop	ds
		mov	ax, [bp+var_2]
		leave
		retf
sub_BFCC	endp

seg025		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg026		segment public 'CODE'
		assume cs:seg026
		;org 0Dh
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __stdcall	far sub_C04E(char *,char *)
sub_C04E	proc far		; CODE XREF: sub_843A+53P

arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah

		push	bp
		mov	bp, sp
		push	si
		mov	si, [bp+arg_4]
		push	2Eh ; '.'       ; int
		push	word ptr [bp+0Ch] ; int
		push	si		; char *
		call	_strrchr
		add	sp, 6
		or	dx, ax
		jnz	short loc_C089
		push	ds
		push	offset a_	; "."
		push	word ptr [bp+0Ch] ; char *
		push	si		; char *
		call	_strcat_0
		add	sp, 8
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0] ; char *
		push	word ptr [bp+0Ch] ; char *
		push	si		; char *
		call	_strcat_0
		add	sp, 8

loc_C089:				; CODE XREF: sub_C04E+17j
		mov	ax, [bp+0Ch]
		push	ax
		push	si		; char *
		call	_strupr_0

loc_C093:
		add	sp, 4
		pop	si
		leave
		retf	8
sub_C04E	endp



seg026		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg027		segment public 'CODE'
		assume cs:seg027
		;org 3
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_C114(int,int,char *,char *,char *)
sub_C114	proc far		; CODE XREF: sub_2A2A+3BP

var_54		= byte ptr -54h
var_2		= word ptr -2
arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah
arg_8		= word ptr  0Eh

		enter	54h, 0		; ä-ï @fileio_join_path
		push	si		; char *
		push	word ptr [bp+arg_4+2]
		push	word ptr [bp+arg_4] ; char *
		lea	ax, [bp+var_54]
		push	ss		; char *
		push	ax		; char *
		call	_strcpy_0
		add	sp, 8
		lea	ax, [bp+var_54]
		mov	si, ax
		mov	[bp+var_2], ss
		mov	bx, ax
		cmp	byte ptr ss:[bx], 0
		jz	short loc_C146
		mov	es, [bp+var_2]

loc_C13F:				; CODE XREF: sub_C114+30j
		inc	si
		cmp	byte ptr es:[si], 0
		jnz	short loc_C13F

loc_C146:				; CODE XREF: sub_C114+26j
		mov	es, [bp+var_2]
		lea	bx, [si-1]

loc_C14C:				; á¨¬¢(r)" "\"
		cmp	byte ptr es:[bx], 5Ch ;	'\'
		jz	short loc_C161
		push	71Eh		; ãª § â¥"ì ­  áâà(r)ªã "\"
		lea	ax, [bp+var_54]
		push	ax		; char *
		call	_strcat
		add	sp, 4

loc_C161:				; CODE XREF: sub_C114+3Cj
		lea	ax, [bp+var_54]
		push	ss
		push	ax		; char *
		push	word ptr [bp+10h] ; char *
		push	[bp+arg_8]	; char *
		call	_strcpy_0
		add	sp, 8
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0] ; char *
		push	word ptr [bp+10h] ; char *
		push	[bp+arg_8]	; char *
		call	_strcat_0	; íâ(r) _fstrcat á(r)£" á­(r)	CodeView
		add	sp, 8
		push	word ptr [bp+10h]
		push	[bp+arg_8]	; char *
		call	_strupr_0
		add	sp, 4
		mov	ax, [bp+arg_8]
		mov	dx, [bp+10h]
		pop	si
		leave

locret_C19E:
		retf	0Ch
sub_C114	endp

seg027		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg028		segment public 'CODE'
		assume cs:seg028
		;org 1
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __stdcall	far sub_C1A2(char *)
sub_C1A2	proc far		; CODE XREF: sub_843A+ACP sub_8526+25P ...

var_104		= byte ptr -104h
var_2		= word ptr -2
arg_0		= word ptr  6

		enter	104h, 0
		push	di
		push	si
		mov	di, [bp+arg_0]
		push	word ptr [bp+8]
		push	di		; char *
		call	sub_101FC	; @fileio_purge_trailing_spaces
		mov	ax, [bp+8]
		mov	cx, di
		mov	si, cx
		mov	[bp+var_2], ax
		mov	es, ax
		mov	bx, di
		cmp	byte ptr es:[bx], 0
		jz	short loc_C1E4
		mov	ds, ax

loc_C1CA:				; CODE XREF: sub_C1A2+3Ej
		cmp	byte ptr [si], 20h ; ' '
		jz	short loc_C1DC
		cmp	byte ptr [si], 9
		jz	short loc_C1DC

loc_C1D4:				; CODE XREF: sub_C1A2+40j
		mov	ax, seg	dseg
		mov	ds, ax
		jmp	short loc_C1E4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_C1DC:				; CODE XREF: sub_C1A2+2Bj sub_C1A2+30j
		inc	si
		cmp	byte ptr [si], 0
		jnz	short loc_C1CA
		jmp	short loc_C1D4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C1E4:				; CODE XREF: sub_C1A2+24j sub_C1A2+37j
		push	[bp+var_2]
		push	si		; char *
		lea	ax, [bp+var_104]
		push	ss		; char *
		push	ax		; char *
		call	_strcpy_0

loc_C1F3:
		add	sp, 8
		lea	ax, [bp+var_104]
		push	ss
		push	ax		; char *
		mov	ax, [bp+8]
		push	ax		; char *

loc_C200:				; char *
		push	di
		call	_strcpy_0
		add	sp, 8
		pop	si
		pop	di
		leave
		retf	4
sub_C1A2	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
seg028		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg029		segment public 'CODE'
		assume cs:seg029
		assume es:nothing, ss:nothing, ds:dseg
		push	bp
		mov	bp, sp

loc_C213:
		mov	cx, word_16594
		cmp	ax, cx
		jg	short loc_C234
		cmp	bx, cx	
		jl	short loc_C234
		mov	bx, word_16596
		cmp	dx, bx
		jg	short loc_C234
		cmp	[bp+6],	bx
		jl	short loc_C234
		mov	ax, 1
		leave
		retf	2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_C234:				; CODE XREF: seg029:0009j seg029:000Dj ...
		sub	ax, ax
		leave
		retf	2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_C23A	proc far		; CODE XREF: sub_60+13P sub_1226+DP ...
		mov	ax, 0FFFFh
		mov	word_165A4, ax
		mov	word_165A6, ax
		mov	ax, word_16592
		mov	word_1659A, ax
		sub	ax, ax
		mov	word_1659E, ax
		mov	word_16598, ax
		retf
sub_C23A	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C252	proc far		; CODE XREF: sub_60+1AP sub_1226+14P ...
		push	bp
		mov	bp, sp
		or	ax, ax
		jz	short loc_C25E
		call	sub_F9DA

loc_C25E:				; CODE XREF: sub_C252+5j
		mov	ax, word_16594

loc_C261:
		mov	word_165A4, ax
		mov	ax, word_16596
		mov	word_165A6, ax
		push	726h
		push	724h

loc_C270:
		call	sub_FBCC
		mov	sp, bp
		mov	word_16592, ax
		call	sub_D186
		mov	word_165A8, ax
		mov	word_165AA, dx
		mov	bx, word_16592
		cmp	word_1659E, 0
		jz	short loc_C29E
		or	bx, bx
		jnz	short loc_C29E
		mov	word_165A0, 1
		jmp	short loc_C2A4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_C29E:				; CODE XREF: sub_C252+3Dj sub_C252+41j
		mov	word_165A0, 0

loc_C2A4:				; CODE XREF: sub_C252+49j
		or	bx, bx
		jz	short loc_C2B4
		cmp	word_1659A, 0
		jnz	short loc_C2B4
		mov	dx, 1
		jmp	short loc_C2B6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C2B4:				; CODE XREF: sub_C252+54j sub_C252+5Bj
		sub	dx, dx

loc_C2B6:				; CODE XREF: sub_C252+60j
		mov	word_1659A, bx
		or	bx, bx
		jnz	short loc_C2C2

loc_C2BE:
		mov	word_1659E, bx

loc_C2C2:				; CODE XREF: sub_C252+6Aj
		mov	ax, word_16594
		cmp	word_165A4, ax
		jnz	short loc_C2E4
		mov	ax, word_16596
		cmp	word_165A6, ax
		jnz	short loc_C2E4
		or	dx, dx
		jnz	short loc_C2E4
		cmp	word_165A0, dx
		jnz	short loc_C2E4
		mov	word_1659C, dx
		jmp	short loc_C2EA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C2E4:				; CODE XREF: sub_C252+77j sub_C252+80j ...
		mov	word_1659C, 1

loc_C2EA:				; CODE XREF: sub_C252+90j
		mov	word_16598, dx
		or	dx, dx

loc_C2F0:
		jz	short loc_C307
		mov	word_1659E, 0FFFFh
		mov	al, bl
		and	ax, 1
		cmp	ax, 1
		sbb	ax, ax
		neg	ax
		mov	word_16590, ax

loc_C307:				; CODE XREF: sub_C252:loc_C2F0j
		or	bx, bx
		jnz	short loc_C318
		cmp	word_165A0, bx
		jnz	short loc_C318
		mov	word_165A2, bx
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_C318:				; CODE XREF: sub_C252+B7j sub_C252+BDj
		mov	word_165A2, 1
		leave
		retf
sub_C252	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C320	proc far		; CODE XREF: sub_60+46P sub_1226+D6P ...
		push	bp
		mov	bp, sp
		push	si
		mov	si, dx
		or	ax, ax
		jz	short loc_C334
		push	0FFFFh
		call	sub_F913
		add	sp, 2

loc_C334:				; CODE XREF: sub_C320+8j
		or	si, si
		jz	short loc_C349

loc_C338:				; CODE XREF: sub_C320+27j
		call	sub_D186

loc_C33D:
		cmp	ax, word_165A8
		jnz	short loc_C349

loc_C343:
		cmp	dx, word_165AA
		jz	short loc_C338

loc_C349:				; CODE XREF: sub_C320+16j sub_C320+21j
		pop	si
		leave
		retf
sub_C320	endp

seg029		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg030		segment public 'CODE'
		assume cs:seg030
		;org 0Ch
		assume es:nothing, ss:nothing, ds:dseg



; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C384	proc far		; CODE XREF: sub_82C+FP sub_CE0+24P ...

var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		push	bp
		mov	bp, sp		; ä-ï @mouse_video_update -­¥¯(r)áà-­(r)
		push	bx		; var_2
		push	ax		; var_4
		push	di
		push	si
		mov	di, dx
		call	sub_FB0F	; mouse_freeze -¯à ¢¤ ,¯(r)á"¥ íâ(r)(c) ä-¨¨ ¬ëèì ­¥ (r)â(r)¡à ¦ ¥âáï

loc_C392:				; @mouse_refresh_view_port
		call	sub_FE1D
		mov	si, ax		; ¯(r) DBD,íâ  ä-ï ¨§¬¥­ï¥â dx,¨á¯(r)"ì§ã¥¬ë(c) ¢ sub_EC74
		push	[bp+arg_0]	; ­(r) ­¥	¨§¬¥­ï¥â ¯(r)áë" ¥¬ë(c) âã¤  di
		push	[bp+arg_2]
		push	[bp+arg_4]
		push	[bp+var_2]	; á(r)åà ­¥­­ë(c) bx
		push	di
		push	[bp+var_4]	; á(r)åà ­¥­­ë(c) ax
		push	ds
		push	offset word_19964 ; scr_work
		call	sub_EC74	; video_update
		add	sp, 10h
		or	si, si
		jz	short loc_C3BE
		call	far ptr	sub_FF53 ; mouse_refresh_done

loc_C3BE:				; CODE XREF: sub_C384+33j
		call	sub_FB21	; mouse_thaw
		pop	si

loc_C3C4:
		pop	di
		leave
		retf	6
sub_C384	endp

seg030		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg031		segment public 'CODE'
		assume cs:seg031
		;org 9
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_C3CA	proc far		; CODE XREF: sub_2516+1BP sub_EE56+3DP
		mov	cx, ax		; ä-ï @screen_dominant_mode
		mov	bx, 40h	; '@'
		mov	es, bx
		assume es:nothing
		mov	bx, 10h		; es:bx=0x00400010 -á¬.	áâà.510	".ì¥à(r)!
					; â.¦. ¨­äã ¯à(r)	int 11h
		and	byte ptr es:[bx], 0CFh ; (r)¡­ã"ï¥â 4,5 ¡¨âë-¨­äã	(r) ­ ç "ì­.¢¨¤¥(r)à¥¦¨¬¥
		cmp	cx, 7
		jnz	short loc_C3E4	; ¥á"¨ ­¥ à ¢­(r)
		mov	al, 30h	; '0'

loc_C3DF:				; 4(c) ¡¨â=1, 5(c) ¡¨â =1.
		or	es:[bx], al
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_C3E4:				; CODE XREF: sub_C3CA+11j
		mov	al, 20h	; ' '
		or	es:[bx], al	; 5(c) ¡¨â =1, 4(c)	=0.
		retf
sub_C3CA	endp

seg031		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg032		segment public 'CODE'
		assume cs:seg032
		;org 0Ah
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C3EA	proc far		; CODE XREF: sub_1670+87P sub_2516+68P ...

var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2

		push	bp		; ä-ï @buffer_init
		mov	bp, sp
		push	dx		; var_2	=200 ­ ¯à.
		push	ax		; var_4	=320 ­ ¯à.
		push	bx		; var_6	=&scr_work ­ ¯à.
		push	si
		mov	cx, ax
		mov	ax, dx
		mul	cx
		mov	si, bx
		call	sub_CF72	; @mem_get
		mov	[si+4],	ax
		mov	[si+6],	dx
		mov	ax, dx
		or	ax, [si+4]
		jnz	short loc_C410

loc_C40B:
		sub	ax, ax
		pop	si
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C410:				; CODE XREF: sub_C3EA+1Fj
		mov	ax, [bp+var_4]

loc_C413:
		mov	bx, [bp+var_6]
		mov	[bx+2],	ax	; scr_work[1]=320 ­ ¯à.
		mov	ax, [bp+var_2]
		mov	[bx], ax	; scr_work[0]=200 ­ ¯à¨¬¥à
		mov	ax, 0FFFFh
		pop	si
		leave
		retf
sub_C3EA	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C424	proc far		; CODE XREF: sub_C9DE+3DP

var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		push	dx
		push	ax
		push	bx
		push	si
		push	ds
		push	[bp+arg_0]
		mov	cx, ax
		mov	ax, dx

loc_C433:
		mul	cx
		mov	si, bx
		call	sub_CDC6	; @mem_get_name
		mov	[si+4],	ax
		mov	[si+6],	dx
		mov	ax, dx
		or	ax, [si+4]
		jnz	short loc_C450
		sub	ax, ax
		pop	si
		leave
		retf	2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C450:				; CODE XREF: sub_C424+23j
		mov	ax, [bp+var_4]
		mov	bx, [bp+var_6]
		mov	[bx+2],	ax
		mov	ax, [bp+var_2]
		mov	[bx], ax

loc_C45E:
		mov	ax, 0FFFFh
		pop	si
		leave

locret_C463:
		retf	2
sub_C424	endp

seg032		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg033		segment public 'CODE'
		assume cs:seg033
		;org 6
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C466	proc far		; CODE XREF: sub_1670+161P
					; sub_CABC+C9P

var_4		= word ptr -4
var_2		= word ptr -2

		enter	2, 0
		push	bx
		mov	[bp+var_2], 0

loc_C470:
		mov	ax, [bx+6]
		or	ax, [bx+4]
		jz	short loc_C488
		push	word ptr [bx+6]
		push	word ptr [bx+4]
		call	sub_CFA0
		mov	[bp+var_2], 0FFFFh

loc_C488:				; CODE XREF: sub_C466+10j
		mov	bx, [bp+var_4]
		sub	ax, ax
		mov	[bx+6],	ax

loc_C490:
		mov	[bx+4],	ax

loc_C493:
		mov	[bx+2],	ax
		mov	[bx], ax
		mov	ax, [bp+var_2]
		leave
		retf
sub_C466	endp

seg033		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg034		segment public 'CODE'
		assume cs:seg034
		;org 0Dh
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C49E	proc far		; CODE XREF: sub_CE0+12P sub_E14+16P ...

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp		; ä-ï @buffer_fill
		mov	bp, sp
		push	[bp+arg_6]
		push	[bp+arg_4]
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	[bp+arg_0]
		push	ax
		sub	ax, ax

loc_C4B3:
		cwd
		mov	bx, [bp+arg_2]	; ª(r)"-¢(r) áâà(r)ª ¢ ¡ãää¥à¥
		call	sub_C5B4	; @buffer_rect_fill
		leave
		retf	8
sub_C49E	endp

seg034		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg035		segment public 'CODE'
		assume cs:seg035
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C4C0	proc far		; CODE XREF: sub_1670+AFP
					; sub_1670+143P ...

var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h
arg_C		= word ptr  12h
arg_E		= word ptr  14h
arg_10		= word ptr  16h

		enter	0Eh, 0

loc_C4C4:				; ¬.¡.ª(r)¯¨à(r)¢-¥	ªãáª  äà¥(c)¬¡ãää¥à  ¢ ¤àã£(r)¥ ¬¥áâ(r) ¢ ­¥¬	¦¥
		push	bx
		push	dx
		push	ax
		push	di
		push	si
		mov	ax, bx
		sub	bx, [bp+arg_C]
		neg	bx
		mov	[bp+var_A], bx
		sub	ax, [bp+arg_4]
		neg	ax
		mov	[bp+var_E], ax
		mov	ax, [bp+arg_10]
		or	ax, [bp+arg_E]
		jz	short loc_C4F2

loc_C4E3:
		mov	ax, [bp+arg_8]
		or	ax, [bp+arg_6]
		jz	short loc_C4F2
		mov	[bp+var_C], 1
		jmp	short loc_C4F7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C4F2:				; CODE XREF: sub_C4C0+21j sub_C4C0+29j
		mov	[bp+var_C], 0

loc_C4F7:				; CODE XREF: sub_C4C0+30j
		cmp	[bp+var_C], 0
		jnz	short loc_C500
		jmp	loc_C5AB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C500:				; CODE XREF: sub_C4C0+3Bj
		lea	bx, [bp+arg_A]
		mov	ax, [bp+var_14]
		mov	dx, [bp+var_12]
		call	sub_C910	; @buffer_pointer
		push	dx
		push	ax

loc_C510:				; @mem_normalize
		call	sub_104F2
		mov	word ptr [bp+var_4], ax
		mov	word ptr [bp+var_4+2], dx
		lea	bx, [bp+arg_2]
		mov	ax, [bp+var_14]
		mov	dx, [bp+var_12]
		call	sub_C910	; @buffer_pointer
		push	dx
		push	ax
		call	sub_104F2	; @mem_normalize
		mov	word ptr [bp+var_8], ax
		mov	word ptr [bp+var_8+2], dx
		push	ds
		les	di, [bp+var_8]
		lds	si, [bp+var_4]
		mov	ax, [bp+arg_0]
		or	ax, ax
		jnz	short loc_C546
		jmp	short loc_C5AA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C546:				; CODE XREF: sub_C4C0+82j
		mov	dx, [bp+var_10]
		mov	bx, [bp+var_A]
		shr	dx, 1
		jnb	short loc_C580

loc_C550:				; CODE XREF: sub_C4C0+BBj
		or	dx, dx
		jz	short loc_C558
		mov	cx, dx
		rep movsw

loc_C558:				; CODE XREF: sub_C4C0+92j
		movsb
		add	si, bx

loc_C55B:
		jns	short loc_C569

loc_C55D:
		sub	si, 8000h
		mov	cx, ds
		add	cx, 800h
		mov	ds, cx
		assume ds:nothing

loc_C569:				; CODE XREF: sub_C4C0:loc_C55Bj
		add	di, [bp+var_E]
		jns	short loc_C57A
		sub	di, 8000h
		mov	cx, es
		add	cx, 800h
		mov	es, cx
		assume es:nothing

loc_C57A:				; CODE XREF: sub_C4C0+ACj
		dec	ax
		jnz	short loc_C550
		jmp	short loc_C5AA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_C580:				; CODE XREF: sub_C4C0+8Ej
		jz	short loc_C5AA

loc_C582:				; CODE XREF: sub_C4C0+E8j
		mov	cx, dx
		rep movsw
		add	si, bx
		jns	short loc_C596
		sub	si, 8000h
		mov	cx, ds
		add	cx, 800h
		mov	ds, cx
		assume ds:nothing

loc_C596:				; CODE XREF: sub_C4C0+C8j
		add	di, [bp+var_E]
		jns	short loc_C5A7
		sub	di, 8000h
		mov	cx, es
		add	cx, 800h
		mov	es, cx
		assume es:nothing

loc_C5A7:				; CODE XREF: sub_C4C0+D9j
		dec	ax
		jnz	short loc_C582

loc_C5AA:				; CODE XREF: sub_C4C0+84j sub_C4C0+BDj ...
		pop	ds
		assume ds:dseg

loc_C5AB:				; CODE XREF: sub_C4C0+3Dj
		mov	ax, [bp+var_C]
		pop	si
		pop	di

locret_C5B0:
		leave
		retf	12h
sub_C4C0	endp

seg035		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg036		segment public 'CODE'
		assume cs:seg036
		;org 4
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C5B4	proc far		; CODE XREF: sub_7A6+25P sub_371A+8AP	...

var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= dword	ptr -6
var_2		= word ptr -2
arg_0		= byte ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h

		enter	8, 0
		push	bx		; var_A
		push	dx		; var_C
		push	ax		; var_E
		push	di
		push	si
		lea	ax, [bp+var_A]
		push	ax
		lea	ax, [bp+arg_2]
		push	ax
		lea	bx, [bp+arg_4]
		lea	ax, [bp+var_E]
		lea	dx, [bp+var_C]
		call	sub_C954	; @buffer_conform
		or	ax, ax		; ¥á"¨ ¡ãää¥à ­¥­ã"¥¢(r)(c)?
		jz	short loc_C5DA
		jmp	loc_C667	; ­  ¢ëå(r)¤
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C5DA:				; CODE XREF: sub_C5B4+21j
		mov	ax, [bp+arg_6]
		sub	ax, [bp+var_A]
		mov	[bp+var_2], ax
		mov	ax, [bp+arg_A]
		or	ax, [bp+arg_8]
		jz	short loc_C5F0
		mov	ax, 1
		jmp	short loc_C5F2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C5F0:				; CODE XREF: sub_C5B4+35j
		sub	ax, ax

loc_C5F2:				; CODE XREF: sub_C5B4+3Aj
		mov	[bp+var_8], ax
		or	ax, ax
		jz	short loc_C667
		lea	bx, [bp+arg_4]
		mov	ax, [bp+var_E]
		mov	dx, [bp+var_C]

loc_C602:				; @buffer_pointer
		call	sub_C910
		push	dx
		push	ax
		call	sub_104F2	; @mem_normalize
		mov	word ptr [bp+var_6], ax
		mov	word ptr [bp+var_6+2], dx
		les	di, [bp+var_6]
		mov	al, [bp+arg_0]
		mov	si, [bp+arg_2]
		or	si, si
		jnz	short loc_C624
		jmp	short loc_C667
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_C624:				; CODE XREF: sub_C5B4+6Bj
		mov	dx, [bp+var_A]
		mov	bx, [bp+var_2]
		mov	ah, al
		shr	dx, 1
		jnb	short loc_C64E

loc_C630:				; CODE XREF: sub_C5B4+96j
		or	dx, dx
		jz	short loc_C638
		mov	cx, dx
		rep stosw

loc_C638:				; CODE XREF: sub_C5B4+7Ej
		stosb
		add	di, bx
		jns	short loc_C649
		sub	di, 8000h
		mov	cx, es
		add	cx, 800h
		mov	es, cx
		assume es:nothing

loc_C649:				; CODE XREF: sub_C5B4+87j
		dec	si
		jnz	short loc_C630
		jmp	short loc_C667
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C64E:				; CODE XREF: sub_C5B4+7Aj
		jz	short loc_C667

loc_C650:				; CODE XREF: sub_C5B4+B1j
		mov	cx, dx
		rep stosw
		add	di, bx
		jns	short loc_C664
		sub	di, 8000h
		mov	cx, es
		add	cx, 800h
		mov	es, cx
		assume es:nothing

loc_C664:				; CODE XREF: sub_C5B4+A2j
		dec	si
		jnz	short loc_C650

loc_C667:				; CODE XREF: sub_C5B4+23j sub_C5B4+43j ...
		mov	ax, [bp+var_8]
		pop	si
		pop	di
		leave
		retf	0Ch
sub_C5B4	endp

seg036		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg037		segment public 'CODE'
		assume cs:seg037
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C670	proc far		; CODE XREF: sub_1310+AAP sub_8870+62P ...

var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h
arg_C		= word ptr  12h
arg_E		= word ptr  14h
arg_10		= word ptr  16h
arg_12		= word ptr  18h
arg_14		= word ptr  1Ah

		enter	0Eh, 0

loc_C674:
		push	bx
		push	dx
		push	ax
		push	di
		push	si
		mov	ax, [bp+arg_10]
		sub	ax, [bp+arg_2]
		mov	[bp+var_A], ax
		mov	ax, [bp+arg_8]
		sub	ax, [bp+arg_2]
		mov	[bp+var_E], ax
		mov	ax, [bp+arg_14]
		or	ax, [bp+arg_12]
		jz	short loc_C6A2
		mov	ax, [bp+arg_C]
		or	ax, [bp+arg_A]
		jz	short loc_C6A2
		mov	[bp+var_C], 1
		jmp	short loc_C6A7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C6A2:				; CODE XREF: sub_C670+21j sub_C670+29j
		mov	[bp+var_C], 0

loc_C6A7:				; CODE XREF: sub_C670+30j
		cmp	[bp+var_C], 0
		jnz	short loc_C6B0
		jmp	loc_C75B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C6B0:				; CODE XREF: sub_C670+3Bj
		lea	bx, [bp+arg_E]
		mov	ax, [bp+var_14]
		mov	dx, [bp+var_12]
		call	sub_C910
		push	dx
		push	ax

loc_C6C0:
		call	sub_104F2
		mov	word ptr [bp+var_4], ax
		mov	word ptr [bp+var_4+2], dx
		lea	bx, [bp+arg_6]
		mov	ax, [bp+var_10]
		mov	dx, [bp+arg_4]
		call	sub_C910
		push	dx
		push	ax
		call	sub_104F2
		mov	word ptr [bp+var_8], ax
		mov	word ptr [bp+var_8+2], dx
		push	ds
		les	di, [bp+var_8]
		lds	si, [bp+var_4]
		mov	ax, [bp+arg_0]
		or	ax, ax
		jnz	short loc_C6F6
		jmp	short loc_C75A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C6F6:				; CODE XREF: sub_C670+82j
		mov	dx, [bp+arg_2]
		mov	bx, [bp+var_A]
		shr	dx, 1
		jnb	short loc_C730

loc_C700:				; CODE XREF: sub_C670+BBj
		or	dx, dx
		jz	short loc_C708
		mov	cx, dx
		rep movsw

loc_C708:				; CODE XREF: sub_C670+92j
		movsb
		add	si, bx

loc_C70B:
		jns	short loc_C719
		sub	si, 8000h
		mov	cx, ds
		add	cx, 800h
		mov	ds, cx
		assume ds:nothing

loc_C719:				; CODE XREF: sub_C670:loc_C70Bj
		add	di, [bp+var_E]
		jns	short loc_C72A
		sub	di, 8000h
		mov	cx, es
		add	cx, 800h
		mov	es, cx
		assume es:nothing

loc_C72A:				; CODE XREF: sub_C670+ACj
		dec	ax
		jnz	short loc_C700
		jmp	short loc_C75A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_C730:				; CODE XREF: sub_C670+8Ej
		jz	short loc_C75A

loc_C732:				; CODE XREF: sub_C670+E8j
		mov	cx, dx
		rep movsw
		add	si, bx
		jns	short loc_C746
		sub	si, 8000h
		mov	cx, ds
		add	cx, 800h
		mov	ds, cx
		assume ds:nothing

loc_C746:				; CODE XREF: sub_C670+C8j
		add	di, [bp+var_E]
		jns	short loc_C757
		sub	di, 8000h
		mov	cx, es
		add	cx, 800h
		mov	es, cx
		assume es:nothing

loc_C757:				; CODE XREF: sub_C670+D9j
		dec	ax
		jnz	short loc_C732

loc_C75A:				; CODE XREF: sub_C670+84j sub_C670+BDj ...
		pop	ds
		assume ds:dseg

loc_C75B:				; CODE XREF: sub_C670+3Dj
		mov	ax, [bp+var_C]
		pop	si
		pop	di

locret_C760:
		leave
		retf	16h
sub_C670	endp

seg037		ends





; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg040		segment public 'CODE'
		assume cs:seg040
		;org 6
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C796	proc far		; CODE XREF: sub_5656+127P
					; sub_5656+147P ...

var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= byte ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh

		enter	6, 0
		push	bx
		push	dx
		push	ax
		push	di
		or	bx, bx
		jl	short loc_C7FB
		mov	ax, [bp+arg_2]
		cmp	bx, ax
		jge	short loc_C7FB
		mov	ax, [bp+var_C]
		or	ax, ax
		jge	short loc_C7B2
		sub	ax, ax

loc_C7B2:				; CODE XREF: sub_C796+18j
		mov	[bp+var_C], ax
		mov	ax, [bp+arg_4]
		dec	ax
		cmp	ax, dx
		jle	short loc_C7BF
		mov	ax, dx

loc_C7BF:				; CODE XREF: sub_C796+25j
		mov	[bp+var_A], ax
		mov	ax, [bp+arg_8]
		mov	[bp+var_6], ax
		mov	ax, [bp+arg_6]
		mov	[bp+var_4], ax
		mov	ax, [bp+arg_4]

loc_C7D1:
		mov	[bp+var_2], ax
		push	es
		mov	ax, [bp+var_6]
		mov	es, ax
		mov	ax, [bp+var_2]
		mov	bx, [bp+var_8]
		mul	bx

loc_C7E2:
		add	ax, [bp+var_C]
		mov	di, ax
		add	di, [bp+var_4]
		mov	cx, [bp+var_A]
		sub	cx, [bp+var_C]
		inc	cx
		mov	al, [bp+arg_0]

loc_C7F4:				; CODE XREF: sub_C796+62j
		mov	es:[di], al
		inc	di
		loopne	loc_C7F4
		pop	es

loc_C7FB:				; CODE XREF: sub_C796+Aj sub_C796+11j
		pop	di
		leave
		retf	0Ah
sub_C796	endp

seg040		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg041		segment public 'CODE'
		assume cs:seg041
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C800	proc far		; CODE XREF: sub_5656+E3P
					; sub_5656+107P ...

var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= byte ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh

		enter	6, 0

loc_C804:
		push	bx
		push	dx
		push	ax
		push	di
		or	ax, ax
		jl	short loc_C866

loc_C80C:
		mov	ax, [bp+arg_4]

loc_C80F:
		cmp	[bp+var_C], ax
		jge	short loc_C866
		mov	ax, dx
		or	ax, ax
		jge	short loc_C81C
		sub	ax, ax

loc_C81C:				; CODE XREF: sub_C800+18j
		mov	[bp+var_A], ax
		mov	ax, [bp+arg_2]
		dec	ax
		cmp	ax, bx
		jle	short loc_C829
		mov	ax, bx

loc_C829:				; CODE XREF: sub_C800+25j
		mov	[bp+var_8], ax
		mov	ax, [bp+arg_8]
		mov	[bp+var_6], ax
		mov	ax, [bp+arg_6]
		mov	[bp+var_4], ax
		mov	ax, [bp+arg_4]
		mov	[bp+var_2], ax
		push	es
		mov	ax, [bp+var_6]
		mov	es, ax
		mov	ax, [bp+var_2]
		mov	bx, [bp+var_A]
		mul	bx
		add	ax, [bp+var_C]
		mov	di, ax

loc_C851:
		mov	cx, [bp+var_8]
		sub	cx, [bp+var_A]
		inc	cx
		mov	bx, [bp+var_2]
		mov	al, [bp+arg_0]

loc_C85E:				; CODE XREF: sub_C800:loc_C863j
		mov	es:[di], al
		add	di, bx

loc_C863:
		loopne	loc_C85E
		pop	es

loc_C866:				; CODE XREF: sub_C800+Aj sub_C800+12j
		pop	di
		leave
		retf	0Ah
sub_C800	endp

seg041		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg042		segment public 'CODE'
		assume cs:seg042
		;org 0Bh
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C86C	proc far		; CODE XREF: sub_7A6+7FP sub_D2A+6DP ...

var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= byte ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h

		push	bp
		mov	bp, sp
		push	bx
		push	dx
		push	ax
		cmp	bx, ax
		jge	short loc_C880
		mov	dx, ax
		mov	ax, bx
		mov	[bp+var_6], ax
		mov	[bp+var_2], dx

loc_C880:				; CODE XREF: sub_C86C+8j
		mov	ax, [bp+var_4]
		cmp	[bp+arg_2], ax
		jge	short loc_C893
		mov	dx, ax
		mov	ax, [bp+arg_2]
		mov	[bp+var_4], ax
		mov	[bp+arg_2], dx

loc_C893:				; CODE XREF: sub_C86C+1Aj
		push	[bp+arg_A]
		push	[bp+arg_8]
		push	[bp+arg_6]
		push	[bp+arg_4]
		mov	al, [bp+arg_0]
		push	ax
		mov	ax, [bp+var_6]
		mov	dx, [bp+var_2]
		mov	bx, [bp+var_4]
		call	sub_C796

loc_C8B1:
		push	[bp+arg_A]
		push	[bp+arg_8]
		push	[bp+arg_6]
		push	[bp+arg_4]
		mov	al, [bp+arg_0]
		push	ax
		mov	ax, [bp+var_6]
		mov	dx, [bp+var_2]
		mov	bx, [bp+arg_2]
		call	sub_C796
		push	[bp+arg_A]
		push	[bp+arg_8]
		push	[bp+arg_6]
		push	[bp+arg_4]
		mov	al, [bp+arg_0]
		push	ax

loc_C8DF:
		mov	ax, [bp+var_6]
		mov	dx, [bp+var_4]
		mov	bx, [bp+arg_2]
		call	sub_C800
		push	[bp+arg_A]
		push	[bp+arg_8]
		push	[bp+arg_6]
		push	[bp+arg_4]
		mov	al, [bp+arg_0]
		push	ax
		mov	ax, [bp+var_2]
		mov	dx, [bp+var_4]
		mov	bx, [bp+arg_2]
		call	sub_C800
		leave
		retf	0Ch
sub_C86C	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
seg042		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg043		segment public 'CODE'
		assume cs:seg043
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C910	proc far		; CODE XREF: sub_30F8+1CP sub_315C+1CP ...

var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= dword	ptr -4

		enter	6, 0

loc_C914:
		push	dx
		push	ax
		push	bx
		mov	ax, [bx+4]
		mov	dx, [bx+6]
		mov	word ptr [bp+var_4], ax
		mov	word ptr [bp+var_4+2], dx
		mov	ax, [bx+2]
		mov	[bp+var_6], ax
		les	cx, [bp+var_4]
		mov	bx, es
		mov	ax, [bp+var_6]
		mul	[bp+var_8]
		add	ax, [bp+var_A]
		adc	dx, 0		; ¢ ¬" ¤è¨(c) ¡¨â	¤(r)¡ ¢"ï¥âáï ä" £ ¯¥à¥­(r)á 
		shl	dx, 0Ch
		add	dx, bx
		add	ax, cx
		jnb	short loc_C947	; ­¥â,íâ(r) JNC:¥á"¨ ­¥â ¯¥à¥­(r)á 
		add	dx, 1000h

loc_C947:				; CODE XREF: sub_C910+31j
		mov	bx, ax
		shr	bx, 4
		add	dx, bx
		and	ax, 0Fh
		leave
		retf
sub_C910	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C954	proc far		; CODE XREF: sub_C5B4+1AP sub_C9DE+1FP ...

var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	4, 0		; ä-ï @buffer_conform
		push	dx		; var_6
		push	ax		; var_8
		push	bx		; var_A
		push	di
		push	si
		mov	bx, ax
		cmp	word ptr [bx], 0

loc_C962:				; ¡(r)"ìè¥ ¨"¨ à ¢­(r)
		jge	short loc_C96F
		mov	cx, [bx]
		mov	si, [bp+arg_2]
		add	[si], cx
		mov	word ptr [bx], 0

loc_C96F:				; CODE XREF: sub_C954:loc_C962j
		mov	bx, [bp+var_6]
		cmp	word ptr [bx], 0
		jge	short loc_C982
		mov	ax, [bx]
		mov	si, [bp+arg_0]

loc_C97C:
		add	[si], ax
		mov	word ptr [bx], 0

loc_C982:				; CODE XREF: sub_C954+21j
		mov	bx, [bp+arg_2]
		mov	ax, [bx]
		mov	si, [bp+var_8]
		add	ax, [si]
		dec	ax
		mov	di, [bp+var_A]
		mov	cx, [di+2]
		dec	cx
		cmp	ax, cx
		jle	short loc_C99A	; ¥á"¨ ¬¥­ìè¥ ¨"¨ à ¢­(r)
		mov	ax, cx

loc_C99A:				; CODE XREF: sub_C954+42j
		mov	bx, [bp+arg_0]
		mov	cx, [bx]
		mov	bx, [bp+var_6]
		add	cx, [bx]
		dec	cx
		mov	dx, [di]
		dec	dx
		cmp	cx, dx
		jle	short loc_C9AE	; ¬¥­ìè¥ ¨"¨ à ¢­(r)
		mov	cx, dx

loc_C9AE:				; CODE XREF: sub_C954+56j
		mov	[bp+var_4], cx
		sub	ax, [si]
		inc	ax
		mov	si, [bp+arg_2]
		mov	[si], ax
		mov	ax, [bp+var_4]
		sub	ax, [bx]
		inc	ax
		mov	bx, [bp+arg_0]
		mov	[bx], ax
		cmp	word ptr [si], 0
		jle	short loc_C9CD
		or	ax, ax
		jg	short loc_C9D6	; if(ax>0)

loc_C9CD:				; CODE XREF: sub_C954+73j
		mov	ax, 1

loc_C9D0:
		pop	si
		pop	di
		leave

locret_C9D3:
		retf	4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_C9D6:				; CODE XREF: sub_C954+77j
		sub	ax, ax
		pop	si
		pop	di
		leave
		retf	4
sub_C954	endp

seg043		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg044		segment public 'CODE'
		assume cs:seg044
		;org 0Eh
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_C9DE	proc far		; CODE XREF: sub_595E+16FP
					; sub_7B0C+B8P

var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		enter	2, 0		; äã­ªæ¨ï @buffer_preserve, â ª(r)(c) ­¥â ¢	opening.exe
		push	dx		; var_4
		push	bx		; var_6
		push	si
		mov	si, ax
		mov	[bp+var_2], 0FFFDh ; -3
		lea	ax, [bp+arg_2]
		push	ax
		lea	ax, [bp+arg_0]
		push	ax		; push arg_0+2:arg_0
		mov	bx, [bp+var_6]
		lea	ax, [bp+arg_6]
		lea	dx, [bp+arg_4]
		call	sub_C954	; @buffer_conform
		or	ax, ax
		jz	short loc_CA09
		jmp	loc_CAB3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CA09:				; CODE XREF: sub_C9DE+26j
		cmp	si, 0FFF8h
		jnz	short loc_CA64
		push	73Ch		; aPreserv
		lea	bx, word_1A80E
		mov	ax, [bp+arg_2]
		mov	dx, [bp+arg_0]
		call	sub_C424	; @buffer_init_name
		mov	ax, word_1A814

loc_CA23:
		or	ax, word_1A812
		jz	short loc_CA64
		mov	bx, [bp+var_6]
		push	word ptr [bx+6]
		push	word ptr [bx+4]
		push	word ptr [bx+2]
		push	word ptr [bx]
		push	word_1A814
		push	word_1A812
		push	word_1A810
		push	word_1A80E
		push	0
		push	[bp+arg_2]
		push	[bp+arg_0]
		mov	ax, [bp+arg_6]
		mov	dx, [bp+arg_4]
		sub	bx, bx
		call	sub_C670	; @buffer_rect_copy_2
		mov	[bp+var_2], 0FFFFh
		jmp	short loc_CAB3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_CA64:				; CODE XREF: sub_C9DE+2Ej sub_C9DE+49j
		push	[bp+arg_6]
		push	[bp+arg_4]
		push	[bp+arg_2]
		push	[bp+arg_0]
		mov	bx, [bp+var_6]
		mov	ax, si
		mov	dx, [bp+var_4]
		;call	sub_103DA	; @buffer_to_ems
		mov	[bp+var_2], ax
		or	ax, ax
		jge	short loc_CAB3
		cmp	si, 0FFFEh
		jz	short loc_CAAE
		push	[bp+arg_2]	; int
		push	[bp+arg_0]	; int
		mov	bx, [bp+var_6]
		mov	ax, [bp+arg_6]
		mov	dx, [bp+arg_4]	; int
		call	sub_1025C	; @buffer_to_disk
		mov	si, ax
		or	si, si
		jl	short loc_CAAE
		sub	si, 0FFF6h
		neg	si
		mov	[bp+var_2], si
		jmp	short loc_CAB3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_CAAE:				; CODE XREF: sub_C9DE+A9j sub_C9DE+C3j
		mov	[bp+var_2], 0FFFDh

loc_CAB3:				; CODE XREF: sub_C9DE+28j sub_C9DE+83j ...
		mov	ax, [bp+var_2]
		pop	si
		leave
		retf	8
sub_C9DE	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_CABC	proc far		; CODE XREF: sub_595E+A3AP
					; sub_7B0C+58BP

var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp
		mov	bp, sp
		push	bx
		push	di
		push	si
		mov	di, dx
		mov	si, ax
		lea	ax, [bp+arg_2]
		push	ax
		lea	ax, [bp+arg_0]
		push	ax
		mov	bx, [bp+var_2]
		lea	ax, [bp+arg_6]
		lea	dx, [bp+arg_4]
		call	sub_C954
		or	ax, ax
		jz	short loc_CAE3
		jmp	loc_CB8A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CAE3:				; CODE XREF: sub_CABC+22j
		mov	ax, si
		sub	ax, 0FFEDh
		jl	short loc_CAFB
		sub	ax, 9
		jle	short loc_CB24
		sub	ax, 7
		jnz	short loc_CAF7
		jmp	loc_CB8A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CAF7:				; CODE XREF: sub_CABC+36j
		dec	ax
		dec	ax
		jz	short loc_CB48

loc_CAFB:				; CODE XREF: sub_CABC+2Cj
		cmp	word_165B6, 0
		jz	short loc_CB06
		and	si, 0BFFFh

loc_CB06:				; CODE XREF: sub_CABC+44j
		push	[bp+arg_6]
		push	[bp+arg_4]
		push	[bp+arg_2]

loc_CB0F:
		push	[bp+arg_0]
		mov	dx, di
		mov	bx, [bp+var_2]
		mov	ax, si
		;call	sub_1046E	; @buffer_from_ems
		pop	si
		pop	di
		leave
		retf	8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CB24:				; CODE XREF: sub_CABC+31j
		push	[bp+arg_6]	; int
		push	[bp+arg_4]	; int
		push	[bp+arg_2]	; int
		push	[bp+arg_0]	; int
		lea	ax, [si+0Ah]
		not	ax
		inc	ax
		mov	bx, [bp+var_2]
		mov	dx, word_165B6	; int
		call	sub_1033A
		pop	si
		pop	di
		leave
		retf	8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CB48:				; CODE XREF: sub_CABC+3Dj
		push	word_1A814
		push	word_1A812
		push	word_1A810
		push	word_1A80E
		mov	bx, [bp+var_2]
		push	word ptr [bx+6]
		push	word ptr [bx+4]
		push	word ptr [bx+2]
		push	word ptr [bx]
		push	[bp+arg_4]
		push	[bp+arg_2]
		push	[bp+arg_0]
		sub	ax, ax
		cwd
		mov	bx, [bp+arg_6]
		call	sub_C670
		cmp	word_165B6, 0
		jnz	short loc_CB8A
		lea	bx, word_1A80E
		call	sub_C466

loc_CB8A:				; CODE XREF: sub_CABC+24j sub_CABC+38j ...
		pop	si
		pop	di
		leave
		retf	8
sub_CABC	endp

seg044		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg045		segment public 'CODE'
		assume cs:seg045
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_CB90	proc far		; CODE XREF: sub_7A6+59P sub_371A+67P	...

var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h
arg_C		= word ptr  12h
arg_E		= word ptr  14h
arg_10		= word ptr  16h
arg_12		= word ptr  18h
arg_14		= word ptr  1Ah
arg_16		= word ptr  1Ch
arg_18		= word ptr  1Eh
arg_1A		= word ptr  20h

		enter	16h, 0

loc_CB94:
		push	si
		mov	ax, [bp+arg_8]
		mov	[bp+var_E], ax
		mov	ax, [bp+arg_A]
		mov	[bp+var_10], ax
		or	ax, ax
		jnz	short loc_CBA8
		jmp	loc_CC90
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CBA8:				; CODE XREF: sub_CB90+13j
		cmp	[bp+var_E], 0
		jnz	short loc_CBB1

loc_CBAE:
		jmp	loc_CC90
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CBB1:				; CODE XREF: sub_CB90+1Cj		mov	dx, [bp+arg_18]
		mov	ax, [bp+arg_10]
		sub	ax, dx
		or	ax, ax
		jg	short loc_CBC0
		not	ax
		inc	ax

loc_CBC0:				; CODE XREF: sub_CB90+2Bj
		mov	[bp+var_2], ax
		cwd
		idiv	[bp+var_10]
		mov	[bp+var_12], dx
		mov	bx, [bp+arg_12]
		mov	si, [bp+arg_1A]
		mov	ax, bx
		sub	ax, si
		or	ax, ax
		jg	short loc_CBDB
		not	ax
		inc	ax

loc_CBDB:				; CODE XREF: sub_CB90+46j
		mov	[bp+var_2], ax
		cwd
		idiv	[bp+var_E]

loc_CBE2:
		mov	[bp+var_8], dx
		mov	si, [bp+arg_10]
		add	si, [bp+arg_14]
		mov	ax, bx
		add	bx, [bp+arg_16]
		mov	[bp+var_C], bx
		mov	[bp+var_6], ax
		cmp	bx, ax
		jg	short loc_CBFD
		jmp	loc_CC90
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CBFD:				; CODE XREF: sub_CB90+68j
		mov	[bp+var_A], si

loc_CC00:				; CODE XREF: sub_CB90+FDj
		mov	ax, [bp+var_12]
		mov	[bp+var_4], ax
		mov	ax, [bp+arg_10]
		mov	[bp+var_2], ax
		cmp	ax, [bp+var_A]
		jge	short loc_CC77

loc_CC11:				; CODE XREF: sub_CB90+E5j
		push	[bp+arg_E]
		push	[bp+arg_C]
		push	[bp+arg_A]
		push	[bp+arg_8]
		push	[bp+arg_6]
		push	[bp+arg_4]
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	[bp+var_6]
		mov	ax, [bp+var_2]

loc_CC2F:
		sub	ax, [bp+var_4]
		add	ax, [bp+var_10]
		mov	cx, ax
		cmp	ax, [bp+var_A]
		jle	short loc_CC3F

loc_CC3C:
		mov	ax, [bp+var_A]

loc_CC3F:				; CODE XREF: sub_CB90+AAj
		sub	ax, [bp+var_2]
		push	ax
		mov	ax, [bp+var_6]
		sub	ax, [bp+var_8]
		add	ax, [bp+var_E]
		cmp	ax, [bp+var_C]
		jle	short loc_CC54
		mov	ax, [bp+var_C]

loc_CC54:				; CODE XREF: sub_CB90+BFj
		sub	ax, [bp+var_6]
		push	ax
		mov	ax, [bp+var_4]
		mov	dx, [bp+var_8]

loc_CC5E:
		mov	bx, [bp+var_2]
		mov	si, cx
		call	sub_C670
		mov	[bp+var_2], si
		mov	[bp+var_4], 0
		mov	ax, [bp+var_A]
		cmp	si, ax
		jl	short loc_CC11

loc_CC77:				; CODE XREF: sub_CB90+7Fj
		mov	ax, [bp+var_E]
		sub	ax, [bp+var_8]
		add	[bp+var_6], ax
		mov	[bp+var_8], 0
		mov	ax, [bp+var_C]
		cmp	[bp+var_6], ax
		jge	short loc_CC90
		jmp	loc_CC00
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CC90:				; CODE XREF: sub_CB90+15j
					; sub_CB90:loc_CBAEj ...
		pop	si
		leave
		retf
sub_CB90	endp

seg045		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg046		segment public 'CODE'
		assume cs:seg046
		;org 3
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_CC94	proc far		; CODE XREF: sub_CDC6+137P

var_2		= word ptr -2
arg_0		= word ptr  6

		enter	2, 0		; ­¥â á¨¬¢.¨¬¥­¨ ã ä-¨¨
		push	di
		push	si
		mov	ah, 62h
		int	21h		; DOS -	3+ - GET PSP ADDRESS
		mov	[bp+var_2], bx
		mov	ah, 52h
		int	21h		; DOS -	2+ internal - GET LIST OF LISTS
					; Return: ES:BX	-> DOS list of lists
		mov	bx, es:[bx-2]
		xor	di, di
		mov	dx, [bp+arg_0]

loc_CCAE:				; CODE XREF: sub_CC94+8Fj
		mov	es, bx
		cmp	word ptr es:[di+1], 0
		jnz	short loc_CD16
		or	si, si
		jz	short loc_CCD2
		mov	al, es:[di]
		mov	cx, es:[di+3]
		mov	es, si
		mov	bx, si
		mov	es:[di], al
		add	es:[di+3], cx
		add	word ptr es:[di+3], 1

loc_CCD2:				; CODE XREF: sub_CC94+25j
		mov	cx, es:[di+3]
		cmp	cx, dx
		jb	short loc_CD12
		jz	short loc_CD04
		push	ds
		mov	ax, es
		add	ax, dx

loc_CCE1:
		add	ax, 1
		mov	ds, ax
		sub	cx, dx
		sub	cx, 1
		db	3Eh
		mov	[di+3],	cx	; íâ¨å ¢(r)â db 3Eh ­¥â ¢	"¨áâ¨­£¥ CV -> ¨áª"îç ¥¬
		db	3Eh
		mov	word ptr [di+1], 0
		mov	al, es:[di]
		db	3Eh
		mov	[di], al
		mov	byte ptr es:[di], 4Dh ;	'M'
		mov	es:[di+3], dx
		pop	ds

loc_CD04:				; CODE XREF: sub_CC94+46j
		mov	ax, [bp+var_2]
		mov	es:[di+1], ax
		mov	ax, es
		inc	ax
		pop	si
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CD12:				; CODE XREF: sub_CC94+44j
		mov	si, es
		jmp	short loc_CD18
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CD16:				; CODE XREF: sub_CC94+21j
		xor	si, si

loc_CD18:				; CODE XREF: sub_CC94+80j
		cmp	byte ptr es:[di], 5Ah ;	'Z'
		jz	short loc_CD26
		add	bx, es:[di+3]
		inc	bx
		jmp	short loc_CCAE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_CD26:				; CODE XREF: sub_CC94+88j
		xor	ax, ax
		pop	si
		pop	di
		leave
		retf
sub_CC94	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_CD2C	proc far		; CODE XREF: sub_CDC6:loc_CF14P

var_2		= dword	ptr -2

		enter	2, 0		; ­¥â á¨¬¢.¨¬¥­¨
		mov	word ptr [bp+var_2], 0
		mov	byte_165BB, 0	; mem_last_alloc_failed
		mov	ah, 52h
		int	21h		; DOS -	2+ internal - GET LIST OF LISTS
					; Return: ES:BX	-> DOS list of lists
		mov	ax, es:[bx-2]
		mov	es, ax
		xor	bx, bx

loc_CD46:				; CODE XREF: sub_CD2C+30j
		mov	al, es:[bx]
		cmp	al, 5Ah	; 'Z'
		jz	short loc_CD61
		cmp	al, 4Dh	; 'M'
		jnz	short loc_CD5E
		mov	cx, es:[bx+3]	; int
		mov	dx, es
		add	dx, cx
		inc	dx
		mov	es, dx
		jmp	short loc_CD46
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CD5E:				; CODE XREF: sub_CD2C+23j
		mov	word ptr [bp+var_2], es

loc_CD61:				; CODE XREF: sub_CD2C+1Fj
		cmp	word ptr [bp+var_2], 0
		jz	short locret_CD7E
		push	0
		push	word ptr [bp+var_2] ; __int32
		push	0
		push	0		; __int32
		mov	ax, 0FFBEh
		mov	dx, 3		; int
		mov	bx, 0Bh
		call	sub_F0D6	; @error_report

locret_CD7E:				; CODE XREF: sub_CD2C+39j
		leave
		retf
sub_CD2C	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_CD80	proc far		; CODE XREF: sub_CDC6+19Fp
					; sub_CFA0+46p

arg_0		= dword	ptr  6

		push	bp		; ­¥â á¨¬¢.¨¬¥­¨
		mov	bp, sp
		mov	ax, word ptr [bp+arg_0]
		or	ax, word ptr [bp+arg_0+2]
		jz	short locret_CD9A
		mov	word_165DE, 0FFFFh
		call	dword ptr [bp+6] ; call	arg_0
		mov	word_165DE, 0	;
					;

locret_CD9A:				; CODE XREF: sub_CD80+9j
		leave
		retf
sub_CD80	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_CD9C	proc far		; CODE XREF: sub_CDC6+190p

arg_2		= word ptr  8
arg_4		= dword	ptr  0Ah

		push	bp
		mov	bp, sp
		push	di
		push	si
		push	ds
		lds	si, [bp+arg_4]
		mov	ax, [bp+arg_2]
		dec	ax
		mov	es, ax
		mov	di, 8
		xor	ax, ax
		mov	cx, 4
		rep stosw
		mov	di, 8
		mov	cx, 8

loc_CDBB:				; CODE XREF: sub_CD9C+23j
		lodsb
		or	al, al
		stosb
		loopne	loc_CDBB
		pop	ds
		pop	si
		pop	di
		leave
		retf
sub_CD9C	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; äã­ªæ¨ï @mem_get_name
; Attributes: bp-based frame

sub_CDC6	proc far		; CODE XREF: sub_C424+13P sub_CF72+5p	...

var_18		= word ptr -18h
var_16		= word ptr -16h
var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	14h, 0		; ä-ï @mem_get_name
		push	dx		; var_16
		push	ax		; var_18
		sub	cx, cx
		mov	[bp+var_6], cx
		mov	[bp+var_8], cx
		or	dx, dx		; íâ(r) áà ¢­¥­¨¥	dx ¨ 0!'¬."¨áâ¨­£ noninit_MSC6.txt
		jg	short loc_CDE4	; if (dx>0)
		jge	short loc_CDDD	; if(dx>=0)
		jmp	loc_CF33
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CDDD:				; CODE XREF: sub_CDC6+12j
		or	ax, ax
		jnz	short loc_CDE4
		jmp	loc_CF33
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CDE4:				; CODE XREF: sub_CDC6+10j sub_CDC6+19j
		call	sub_D0E8	; @mem_conv_get_avail
		mov	[bp+var_14], ax
		mov	[bp+var_12], dx
		mov	ax,0h
		mov	dx,0h
		mov	[bp+var_4], ax
		mov	[bp+var_2], dx
		mov	ax, [bp+var_18]
		mov	dx, [bp+var_16]
		mov	word_165BE, ax	; mem_last_alloc_size
		mov	word_165C0, dx
		mov	ax, [bp+var_14]
		mov	dx, [bp+var_12]
		mov	word_165C2, ax	; mem_last_alloc_avail
		mov	word_165C4, dx
		mov	cx, [bp+var_4]
		mov	bx, [bp+var_2]
		mov	word_165C6, cx	; mem_last_alloc_umb
		mov	word_165C8, bx
		cmp	byte_165B9, 0	; mem_max_free_set
		jnz	short loc_CE3C
		mov	word_165CA, ax	; mem_max_free
		mov	word_165CC, dx
		mov	word_165CE, ax	; mem_min_free
		mov	word_165D0, dx
		mov	byte_165B9, 0FFh ; mem_max_free_set

loc_CE3C:				; CODE XREF: sub_CDC6+61j
		cmp	byte_165BA, 0	; umb_max_free_set
		jnz	short loc_CE5A
		mov	ax, cx
		mov	dx, bx
		mov	word_165D2, ax	; umb_max_free
		mov	word_165D4, dx
		mov	word_165D6, ax	; umb_min_free
		mov	word_165D8, dx
		mov	byte_165BA, 0FFh ; umb_max_free_set

loc_CE5A:				; CODE XREF: sub_CDC6+7Bj
		mov	ax, cx
		mov	dx, bx
		cmp	[bp+var_16], dx
		jg	short loc_CE70
		jl	short loc_CE6A
		cmp	[bp+var_18], ax
		ja	short loc_CE70

loc_CE6A:				; CODE XREF: sub_CDC6+9Dj
		mov	ax, 1
		jmp	short loc_CE72
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_CE70:				; CODE XREF: sub_CDC6+9Bj sub_CDC6+A2j
		sub	ax, ax

loc_CE72:				; CODE XREF: sub_CDC6+A7j
		mov	[bp+var_A], ax
		mov	ax, cx
		cmp	[bp+var_16], dx
		jg	short loc_CE83
		jl	short loc_CE89
		cmp	[bp+var_18], ax
		jbe	short loc_CE89

loc_CE83:				; CODE XREF: sub_CDC6+B4j
		mov	ax, [bp+var_14]
		mov	dx, [bp+var_12]

loc_CE89:				; CODE XREF: sub_CDC6+B6j sub_CDC6+BBj
		mov	[bp+var_10], ax
		mov	[bp+var_E], dx
		mov	ax, [bp+var_18]
		mov	dx, [bp+var_16]
		sar	dx, 1
		rcr	ax, 1
		sar	dx, 1
		rcr	ax, 1
		sar	dx, 1
		rcr	ax, 1
		sar	dx, 1
		rcr	ax, 1
		inc	ax
		mov	[bp+var_C], ax
		mov	ax, cx
		mov	dx, bx
		cmp	[bp+var_16], dx
		jg	short loc_CEFA
		jl	short loc_CEB9
		cmp	[bp+var_18], ax
		ja	short loc_CEFA

loc_CEB9:				; CODE XREF: sub_CDC6+ECj
		;push	[bp+var_16]
		;push	[bp+var_18]
		;call	sub_12818	; xms_umb_get
		;add	sp, 4
		mov	[bp+var_8], ax
		mov	[bp+var_6], dx
		or	dx, ax
		jz	short loc_CEFA
		mov	ax,0h
		mov	dx,0h
		mov	[bp+var_4], ax
		mov	[bp+var_2], dx
		mov	[bp+var_10], ax
		mov	[bp+var_E], dx
		cmp	dx, word_165D8
		jg	short loc_CF33
		jl	short loc_CEF0
		cmp	ax, word_165D6
		jnb	short loc_CF33

loc_CEF0:				; CODE XREF: sub_CDC6+122j
		mov	word_165D6, ax
		mov	word_165D8, dx
		jmp	short loc_CF33
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_CEFA:				; CODE XREF: sub_CDC6+EAj sub_CDC6+F1j ...
		push	[bp+var_C]
		call	sub_CC94	; ­¥â á¨¬¢.¨¬¥­¨
		add	sp, 2
		or	ax, ax
		jz	short loc_CF14
		mov	[bp+var_8], 0
		mov	[bp+var_6], ax
		jmp	short loc_CF19
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_CF14:				; CODE XREF: sub_CDC6+141j
		call	sub_CD2C	; ­¥â á¨¬¢.¨¬¥­¨

loc_CF19:				; CODE XREF: sub_CDC6+14Bj
		call	sub_D0E8	; @mem_conv_get_avail
		cmp	dx, word_165D0
		jg	short loc_CF33
		jl	short loc_CF2C
		cmp	ax, word_165CE
		jnb	short loc_CF33

loc_CF2C:				; CODE XREF: sub_CDC6+15Ej
		mov	word_165CE, ax

loc_CF2F:
		mov	word_165D0, dx

loc_CF33:				; CODE XREF: sub_CDC6+14j sub_CDC6+1Bj ...
		mov	ax, [bp+var_6]
		or	ax, [bp+var_8]
		jnz	short loc_CF40
		mov	al, 1
		jmp	short loc_CF42
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_CF40:				; CODE XREF: sub_CDC6+173j
		sub	al, al

loc_CF42:				; CODE XREF: sub_CDC6+177j
		mov	byte_165BB, al	; mem_last_alloc_failed
		or	al, al
		jnz	short loc_CF5C
		push	[bp+arg_2]
		push	[bp+arg_0]

loc_CF4F:
		push	[bp+var_6]
		push	[bp+var_8]
		push	cs
		call	near ptr sub_CD9C ; ­¥â	á¨¬¢.¨¬¥­¨
		add	sp, 8

loc_CF5C:				; CODE XREF: sub_CDC6+181j
		push	word_165DC

loc_CF60:				; mem_manager_update
		push	word_165DA
		push	cs
		call	near ptr sub_CD80 ; ­¥â	á¨¬¢.¨¬¥­¨
		mov	ax, [bp+var_8]
		mov	dx, [bp+var_6]
		leave
		retf	4
sub_CDC6	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_CF72	proc far		; CODE XREF: sub_1670+BP sub_2516+25CP ...
		push	ds
		push	offset aSys	; "$sys$"
		push	cs
		call	near ptr sub_CDC6 ; äã­ªæ¨ï @mem_get_name
		retf
sub_CF72	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		push	di
		push	si
		push	ds
		les	di, [bp+6]
		mov	ax, [bp+0Ch]
		dec	ax
		mov	ds, ax
		xor	si, si
		mov	cx, 8

loc_CF90:				; CODE XREF: seg046:0304j
		lodsb
		or	al, al
		stosb
		loopne	loc_CF90
		xor	al, al
		stosb
		pop	ds
		pop	si
		pop	di
		leave
		retf	8

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_CFA0	proc far		; CODE XREF: sub_56A+1B7P sub_56A+1DBP ...

var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= dword	ptr  6

		enter	6, 0		; ä-ï @mem_free
		mov	ax, word ptr [bp+arg_0+2]
		mov	[bp+var_4], ax
		cmp	[bp+var_4], 0A000h
		jb	short loc_CFB6
		mov	ax, 1
		jmp	short loc_CFB8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CFB6:				; CODE XREF: sub_CFA0+Fj
		sub	ax, ax

loc_CFB8:				; CODE XREF: sub_CFA0+14j
		mov	[bp+var_2], ax
		dec	ax
		jnz	short loc_CFCE
		;push	word ptr [bp+arg_0+2]
		;push	word ptr [bp+arg_0]
		;call	sub_1285A	; xms_umb_free
		;add	sp, 4
		jmp	short loc_CFDA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_CFCE:				; CODE XREF: sub_CFA0+1Cj
		les	ax, [bp+arg_0]
		mov	ah, 49h
		int	21h		; DOS -	2+ - FREE MEMORY
					; ES = segment address of area to be freed
		rcr	al, 1
		cbw
		mov	al, ah

loc_CFDA:				; CODE XREF: sub_CFA0+2Cj
		mov	[bp+var_6], ax
		push	word_165DC
		push	word_165DA	; mem_manager_update
		push	cs
		call	near ptr sub_CD80 ; ­¥â	á¨¬¢.¨¬¥­¨
		mov	ax, [bp+var_6]
		leave
		retf	4
sub_CFA0	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	2, 0
		push	dx
		push	ax
		sar	dx, 1
		rcr	ax, 1
		sar	dx, 1
		rcr	ax, 1
		sar	dx, 1
		rcr	ax, 1
		sar	dx, 1
		rcr	ax, 1
		inc	ax
		mov	[bp-2],	ax
		les	bx, [bp+6]
		mov	bx, [bp-2]
		mov	ah, 4Ah
		int	21h		; DOS -	2+ - ADJUST MEMORY BLOCK SIZE (SETBLOCK)
					; ES = segment address of block	to change
					; BX = new size	in paragraphs
		rcr	al, 1
		cbw
		mov	al, ah
		leave
		retf	4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		mov	ax, word_165CE
		mov	dx, word_165D0
		mov	word_1A958, ax
		mov	word_1A95A, dx
		mov	ax, word_165D6
		mov	dx, word_165D8
		mov	word_1B038, ax
		mov	word_1B03A, dx
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		call	sub_D0E8
		cmp	dx, word_1A95A
		jg	short loc_D056
		jl	short loc_D04F
		cmp	ax, word_1A958
		ja	short loc_D056

loc_D04F:				; CODE XREF: seg046:03B7j
		call	sub_D0E8
		jmp	short loc_D05D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D056:				; CODE XREF: seg046:03B5j seg046:03BDj
		mov	ax, word_1A958
		mov	dx, word_1A95A

loc_D05D:				; CODE XREF: seg046:03C4j
		mov	word_165CE, ax
		mov	word_165D0, dx
		mov	ax, 0h
		mov	dx, 0h
		cmp	dx, word_1B03A
		jg	short loc_D07E
		jl	short loc_D077
		cmp	ax, word_1B038
		ja	short loc_D07E

loc_D077:				; CODE XREF: seg046:03DFj
		mov	ax, 0h
		mov	dx, 0h
		jmp	short loc_D085
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D07E:				; CODE XREF: seg046:03DDj seg046:03E5j
		mov	ax, word_1B038

loc_D081:
		mov	dx, word_1B03A

loc_D085:				; CODE XREF: seg046:03ECj
		mov	word_165D6, ax
		mov	word_165D8, dx
		retf
seg046		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg047		segment public 'CODE'
		assume cs:seg047
		;org 0Dh
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_D08E	proc near		; CODE XREF: sub_D0E8+3p
		push	bp
		mov	bp, sp
		push	di
		push	si
		mov	ah, 52h
		int	21h		; DOS -	2+ internal - GET LIST OF LISTS
					; Return: ES:BX	-> DOS list of lists
		mov	bx, es:[bx-2]
		xor	di, di
		xor	si, si
		xor	ax, ax

loc_D0A1:				; CODE XREF: sub_D08E+53j
		mov	es, bx
		cmp	word ptr es:[di+1], 0
		jnz	short loc_D0D4
		or	si, si
		jz	short loc_D0C5
		mov	dl, es:[di]
		mov	cx, es:[di+3]
		mov	es, si
		assume es:seg000
		mov	bx, si
		mov	es:[di], dl
		add	es:[di+3], cx
		add	word ptr es:[di+3], 1

loc_D0C5:				; CODE XREF: sub_D08E+1Ej
		mov	cx, es:[di+3]
		cmp	cx, ax

loc_D0CB:				; ­¨¦¥ ¨"¨ à ¢­(r)
		jbe	short loc_D0CF

loc_D0CD:
		mov	ax, cx

loc_D0CF:				; CODE XREF: sub_D08E:loc_D0CBj
		mov	si, es
		jmp	short loc_D0D6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
algn_D0D3:
		align 2

loc_D0D4:				; CODE XREF: sub_D08E+1Aj
		xor	si, si

loc_D0D6:				; CODE XREF: sub_D08E+43j
		cmp	byte ptr es:[di], 5Ah ;	'Z'
		jz	short loc_D0E4
		add	bx, es:[di+3]

loc_D0E0:
		inc	bx
		jmp	short loc_D0A1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_D0E4:				; CODE XREF: sub_D08E+4Cj
		pop	si
		pop	di
		leave
		retn
sub_D08E	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_D0E8	proc far		; CODE XREF: sub_CDC6:loc_CDE4P
					; sub_CDC6:loc_CF19P ...
		push	bp		; ä-ï @mem_conv_get_avail
		mov	bp, sp
		call	sub_D08E	; ¯(r)"ãç ¥â á¯¨á(r)ª á¯¨áª(r)¢ DOS,¢(r)§¢à é ¥â ax
		mov	bx, ax
		xor	dh, dh
		mov	dl, bh
		shl	dx, 4
		mov	dl, dh
		xor	dh, dh
		mov	ax, bx
		shl	ax, 4
		leave
		retf
sub_D0E8	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_D102	proc far		; CODE XREF: sub_15CCP	sub_F0D6+7EP ...

var_4		= word ptr -4
var_2		= word ptr -2

		enter	8, 0		; ä-ï @mem_get_avail
		push	cs
		call	near ptr sub_D0E8 ; @mem_conv_get_avail
		mov	[bp+var_4], ax
		mov	[bp+var_2], dx
 	     
loc_D121:				; CODE XREF: sub_D102+18j
		mov	dx, [bp+var_2]

loc_D124:
		mov	ax, [bp+var_4]

locret_D127:				; CODE XREF: sub_D102+16j
					; sub_D102:loc_D11Fj
		leave
		retf
sub_D102	endp

seg047		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg048		segment public 'CODE'
		assume cs:seg048
		;org 9
		assume es:nothing, ss:nothing, ds:dseg

seg048		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg049		segment public 'CODE'
		assume cs:seg049
		;org 6
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D186	proc far		; CODE XREF: sub_60+EP	sub_2124+5P ...
		les	bx, dword_165E6	; timer_address
		mov	ax, es:[bx]
		mov	dx, es:[bx+2]
		retf
sub_D186	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mov	bx, 40h	; '@'
		mov	es, bx
		assume es:nothing
		mov	bx, 6Ch	; 'l'
		mov	ax, es:[bx]

loc_D19D:
		mov	dx, es:[bx+2]
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D1A2	proc far		; CODE XREF: seg009:loc_89A0P
					; seg009:loc_89B6P
		mov	ax, word_1AF26
		mov	dx, word_1AF28
		retf
sub_D1A2	endp


seg049		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg050		segment public 'CODE'
		assume cs:seg050
		;org 7
		assume es:nothing, ss:nothing, ds:dseg
		align 2
dword_D1C8	dd 0			; DATA XREF: seg050:016Cr sub_D33D+3Fw ...
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
loc_NewTimerHandler:
		push	ax
		push	ds
		mov	ax, seg	dseg
		mov	ds, ax

loc_D1D3:
		add	word_1AF26, 1
		adc	word_1AF28, 0
		test	word_1AF26, 1
		jz	short loc_D1FD
		jmp	short loc_D1F6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_D1E8:				; CODE XREF: seg050:0078j seg050:012Dj
		mov	ax, seg	dseg
		mov	ds, ax
		cli
		mov	ss, word_165F5
		mov	sp, word_165F3

loc_D1F6:				; CODE XREF: seg050:0025j
		mov	al, 20h	; ' '
		out	20h, al		; Interrupt controller,	8259A.
		pop	ds
		pop	ax
		iret
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D1FD:				; CODE XREF: seg050:0023j
		mov	word_165F5, ss
		mov	word_165F3, sp
		mov	ax, seg	dseg
		mov	ss, ax
		assume ss:dseg
		mov	sp, 398Ch
		add	sp, 0FEh

loc_D211:				; TIMER_NOISE_ON
		cmp	byte ptr word_1A8EC, 0
		jz	short loc_D22D
		push	bx
		push	cx
		push	dx
		push	si
		push	di
		push	bp
		push	ds
		push	es
;		call	far ptr	sub_2516; SOUND_MAKE_NOISE,this was changed by me
		pop	es
		pop	ds
		pop	bp
		pop	di
		pop	si
		pop	dx
		pop	cx
		pop	bx

loc_D22D:				; CODE XREF: seg050:0056j
		dec	byte_165EE
		jz	short loc_D243
		cmp	word_1A8F2, 0
		jz	short loc_D1E8
		mov	word_1A8F2, 0
		jmp	loc_D2F0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D243:				; CODE XREF: seg050:0071j
		mov	byte_165EE, 5
		cmp	byte ptr word_1A8FC, 0
		jz	short loc_D279
		push	bx
		push	cx
		push	dx
		push	si
		push	di
		push	es
		push	ds
		push	bp
		call	far ptr	sub_112CD
		pop	bp
		pop	ds
		pop	es
		pop	di
		pop	si
		pop	dx
		pop	cx
		pop	bx
		or	ax, ax
		jz	short loc_D279
		js	short loc_D273
		mov	word_1A8EC, 0FFFFh
		jmp	short loc_D279
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D273:				; CODE XREF: seg050:00A8j
		mov	word_1A8EC, 0

loc_D279:				; CODE XREF: seg050:008Dj seg050:00A6j ...
		add	word_1ACE2, 1
		adc	word_1ACE4, 0
		cmp	word_1AD18, 0
		jz	short loc_D2E7
		cmp	word_1A8DA, 0
		jz	short loc_D298
		inc	word_1AADC
		jmp	short loc_D2E7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_D298:				; CODE XREF: seg050:00CFj
		dec	byte_165EF
		jnz	short loc_D2A4
		mov	word_1A8F2, 0FFFFh

loc_D2A4:				; CODE XREF: seg050:00DCj
		cli
		mov	word_1A8DA, 1
		mov	al, 20h	; ' '
		out	20h, al		; Interrupt controller,	8259A.
		mov	ax, word_165F5
		mov	word_165F9, ax
		mov	ax, word_165F3
		mov	word_165F7, ax
		mov	ax, seg	dseg
		mov	ss, ax
		mov	sp, 78Ch
		add	sp, 31FEh
		sti
		push	bx
		push	cx
		push	dx
		push	es
		cld
		call	dword_1BC96
		pop	es
		pop	dx
		pop	cx
		pop	bx
		cli
		mov	ss, word_165F9
		assume ss:nothing
		mov	sp, word_165F7
		mov	word_1A8DA, 0
		pop	ds
		pop	ax
		iret
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D2E7:				; CODE XREF: seg050:00C8j seg050:00D5j
		dec	byte_165EF
		jz	short loc_D2F0
		jmp	loc_D1E8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D2F0:				; CODE XREF: seg050:0080j seg050:012Bj
		mov	byte_165EF, 3
		dec	byte_165F0
		jnz	short loc_D31C
		push	bx
		mov	bx, 77Fh
		mov	al, [bx+0Ch]
		mov	bx, 3A74h
		mov	[bx+18h], al
		push	es
		xor	bx, bx
		mov	ds, bx
		assume ds:seg000
		les	bx, [bx+0Ch]
		cmp	byte ptr es:[bx], 0CFh ; 'Ï'
		jz	short loc_D31A
		mov	byte ptr es:[bx], 0CFh ; 'Ï'

loc_D31A:				; CODE XREF: seg050:0154j
		pop	es
		pop	bx

loc_D31C:				; CODE XREF: seg050:0139j
		mov	ax, seg	dseg
		mov	ds, ax
		assume ds:dseg
		cli
		mov	ss, word_165F5
		mov	sp, word_165F3
		pop	ds
		pop	ax
		jmp	cs:dword_D1C8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	0, 0
		mov	ax, [bp+6]
		mov	byte_165FB, al
		leave
		retf




; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_D3B3	proc far		; CODE XREF: sub_2516+2BFP
					; seg049:loc_D1C1P ...
		cmp	word_165F1, 0
		jz	short loc_D3E4
		push	ds
		mov	dx, word ptr cs:dword_D1C8+2
		mov	ds, dx
		mov	dx, word ptr cs:dword_D1C8
		mov	al, 8
		mov	ah, 25h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		pop	ds
		push	0
		call	sub_105B6	; TIMER_SET_RATE
		add	sp, 2
		mov	ax, 40h	; '@'

loc_D3DB:
		mov	word ptr dword_165E6+2,	ax
		mov	ax, 6Ch	; 'l'
		mov	word ptr dword_165E6, ax ; timer_address =
					; 40:6Ch, á¬. áâà. 511 ".ì¥à(r)!!

loc_D3E4:				; CODE XREF: sub_D3B3+5j
		mov	word_165F1, 0
		retf
sub_D3B3	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	0, 0
		mov	ax, [bp+6]
		mov	word_1A8FC, ax
		mov	word_1A8EC, 0
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	0, 0
		push	es
		push	di
		les	di, [bp+6]
		mov	ax, es
		pushf
		cli
		mov	word ptr dword_1BC96, di
		mov	word ptr dword_1BC96+2,	ax
		or	ax, di
		mov	word_1A8DA, 0
		mov	word_1AADC, 0
		mov	word_1A8F2, 0
		mov	word_1AD18, ax
		popf
		pop	di
		pop	es
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mov	dx, seg	dseg

loc_D430:
		mov	ax, 78Ch
		retf
seg050		ends

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg051		segment public 'CODE'
		assume cs:seg051
		;org 4
		assume es:nothing, ss:nothing, ds:dseg

loc_D434:
		mov	al, byte_198FC
		xor	ah, ah
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_D43A	proc far		; CODE XREF: sub_2516+D2P sub_2516+F4P

var_13E		= dword	ptr -13Eh
var_112		= word ptr -112h
var_110		= word ptr -110h
var_74		= byte ptr -74h
var_24		= byte ptr -24h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6

		enter	13Eh, 0
		push	bx
		push	di		; size_t
		push	si		; char *
		sub	ax, ax
		cwd			; int
		mov	si, ax
		mov	[bp+var_A], dx
		mov	[bp+var_E], ax
		mov	[bp+var_10], ax
		mov	word_165BC, 0Fh
		mov	word ptr [bp+var_13E], ax
		push	bx		; char *
		lea	ax, [bp+var_74]
		push	ax		; char *

loc_D45E:
		call	_strcpy
		add	sp, 4
		push	2Eh ; '.'       ; int
		lea	ax, [bp+var_74]
		push	ax		; char *
		call	_strchr
		add	sp, 4
		or	ax, ax
		jnz	short loc_D487
		push	3A8Eh		; ".FF"
		lea	ax, [bp+var_74]
		push	ax		; char *

loc_D47F:
		call	_strcat
		add	sp, 4

loc_D487:				; CODE XREF: sub_D43A+3Cj
		lea	di, [bp+var_74]
		cmp	byte ptr [di], 2Ah ; '*'
		jnz	short loc_D492
		lea	di, [bp-73h]

loc_D492:				; CODE XREF: sub_D43A+53j
		push	8		; size_t
		push	di		; char *
		lea	ax, [bp+var_24]
		push	ax		; char *
		call	_strncpy
		add	sp, 6
		lea	ax, [bp+var_13E]
		push	ss
		push	ax		; __int32
		lea	ax, [bp+var_74]
		push	ss		; __int32
		push	ax		; char *
		lea	bx, unk_19902
		mov	ax, 0FFFFh
		call	sub_121A0	; @loader_open
		or	ax, ax
		jnz	short loc_D503
		lea	ax, [bp+var_24]
		push	ss
		push	ax
		mov	ax, [bp+var_112]
		mov	dx, [bp+var_110]
		mov	[bp+var_8], ax
		mov	[bp+var_6], dx
		call	sub_CDC6	; äã­ªæ¨ï @mem_get_name
		mov	si, ax
		mov	[bp+var_A], dx
		or	dx, ax

loc_D4DB:
		jz	short loc_D503

loc_D4DD:
		push	[bp+var_A]
		push	si		; void *
		push	0		; int
		push	1		; int
		lea	ax, [bp+var_13E]
		push	ss
		push	ax		; __int32
		mov	ax, [bp+var_8]
		mov	dx, [bp+var_6]
		call	sub_12582	; @loader_read
		or	dx, ax
		jz	short loc_D503
		mov	ax, [bp+var_A]
		mov	[bp+var_10], si
		mov	[bp+var_E], ax

loc_D503:				; CODE XREF: sub_D43A+80j
					; sub_D43A:loc_D4DBj ...
		mov	ax, [bp+var_A]
		or	ax, si
		jz	short loc_D51C
		mov	ax, [bp+var_E]
		or	ax, [bp+var_10]
		jnz	short loc_D51C
		mov	ax, [bp+var_A]
		push	ax
		push	si
		call	sub_CFA0	; @mem_free

loc_D51C:				; CODE XREF: sub_D43A+CEj sub_D43A+D6j
		cmp	word ptr [bp+var_13E], 0
		jz	short loc_D52E
		lea	ax, [bp+var_13E]
		push	ss
		push	ax
		call	sub_124EE	; @loader_close

loc_D52E:				; CODE XREF: sub_D43A+E7j
		mov	ax, [bp+var_10]
		mov	dx, [bp+var_E]

loc_D534:
		pop	si
		pop	di
		leave
		retf
sub_D43A	endp

seg051		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg052		segment public 'CODE'
		assume cs:seg052
		;org 8
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __stdcall	far sub_D538(int,char *,__int32)
sub_D538	proc far		; CODE XREF: sub_3916+76P sub_3916+C4P ...

var_6C		= word ptr -6Ch
var_6A		= word ptr -6Ah
var_68		= word ptr -68h
var_66		= word ptr -66h
var_64		= word ptr -64h
var_62		= dword	ptr -62h
var_5E		= word ptr -5Eh
var_5C		= word ptr -5Ch
var_5A		= byte ptr -5Ah
var_58		= word ptr -58h
var_56		= byte ptr -56h
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= dword	ptr  8
arg_6		= dword	ptr  0Ch

		enter	66h, 0
		push	dx
		push	ax
		push	bx
		push	di
		push	si
		sub	ax, ax
		mov	[bp+var_5C], ax
		mov	[bp+var_5E], ax
		mov	[bp+var_64], ax
		mov	cx, dx
		mov	ax, word_1991A	; char font_colors[4]??
		mov	dx, word_1991C
		mov	[bp+var_6], ax
		mov	[bp+var_4], dx
		push	word ptr [bp+arg_2+2]
		push	word ptr [bp+arg_2] ; char *
		lea	ax, [bp+var_56]
		push	ss		; char *
		push	ax		; char *
		mov	si, cx
		call	_strcpy_0
		add	sp, 8
		or	si, si
		jge	short loc_D57E
		neg	si
		mov	[bp+var_5C], si
		mov	[bp+var_68], 0

loc_D57E:				; CODE XREF: sub_D538+3Aj
		les	bx, [bp+arg_6]

loc_D581:
		mov	al, es:[bx]
		sub	ah, ah
		sub	ax, [bp+var_5C]
		jns	short loc_D58D
		sub	ax, ax

loc_D58D:				; CODE XREF: sub_D538+51j
		mov	[bp+var_5A], al
		cbw
		mov	cx, ax
		add	ax, [bp+var_68]
		dec	ax
		mov	[bp+var_58], ax
		mov	bx, [bp+var_6C]
		mov	dx, [bx]
		mov	bx, dx
		dec	dx
		cmp	ax, dx
		jle	short loc_D5BA
		sub	ax, bx
		inc	ax
		cmp	ax, cx
		jle	short loc_D5AF
		mov	ax, cx

loc_D5AF:				; CODE XREF: sub_D538+73j
		mov	[bp+var_5E], ax
		sub	al, [bp+var_5A]
		neg	al
		mov	[bp+var_5A], al

loc_D5BA:				; CODE XREF: sub_D538+6Cj
		cmp	[bp+var_5A], 0
		jg	short loc_D5C3
		jmp	loc_D69D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D5C3:				; CODE XREF: sub_D538+86j
		mov	bx, [bp+var_6C]
		mov	ax, [bp+var_6A]
		mov	dx, [bp+var_68]
		call	sub_C910	; @buffer_pointer
		mov	word ptr [bp+var_62], ax
		mov	word ptr [bp+var_62+2],	dx
		mov	bx, [bp+var_6C]
		mov	ax, [bx+2]
		mov	[bp+var_2], ax
		mov	ax, [bp+var_6A]
		mov	[bp+var_66], ax
		push	ds
		mov	bx, 0FFAAh
		add	bx, bp
		les	di, [bp+var_62]
		lds	si, [bp+arg_6]

loc_D5F2:				; CODE XREF: sub_D538+150j
		mov	dl, ss:[bx]
		inc	bx
		dec	dl
		jns	short loc_D5FE
		jmp	loc_D68F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_D5FE:				; CODE XREF: sub_D538+C0j
		push	bx
		push	si
		push	di
		mov	bl, dl
		xor	bh, bh
		mov	al, [bx+si+2]
		mov	cl, al
		or	cl, cl
		jnz	short loc_D610
		jmp	short loc_D674
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D610:				; CODE XREF: sub_D538+D4j
		xor	ch, ch
		add	[bp+var_66], cx
		mov	dx, [bp+var_2]
		cmp	[bp+var_66], dx
		jbe	short loc_D620
		jmp	short loc_D68C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_D620:				; CODE XREF: sub_D538+E3j
		shl	bx, 1
		mov	si, [bx+si+82h]
		mov	ax, [bp+var_5C]
		or	ax, ax
		jz	short loc_D63A
		xor	dh, dh
		mov	dl, cl
		dec	dx
		shr	dx, 2
		inc	dx
		mul	dx
		add	si, ax

loc_D63A:				; CODE XREF: sub_D538+F3j
		mov	dh, [bp+var_5A]

loc_D63D:				; CODE XREF: sub_D538+13Aj
		mov	dl, cl
		mov	ch, 4
		lodsb
		push	di

loc_D643:				; CODE XREF: sub_D538+12Aj
					; sub_D538+12Fj
		xor	ah, ah
		shl	ax, 2
		mov	bl, ah
		xor	bh, bh

loc_D64C:
		xchg	bx, si
		mov	ah, byte ptr [bp+si+var_6]
		xchg	si, bx
		cmp	ah, 0FFh
		jz	short loc_D65B
		mov	es:[di], ah

loc_D65B:				; CODE XREF: sub_D538+11Ej
		inc	di
		dec	dl
		jz	short loc_D66A
		dec	ch
		jnz	short loc_D643
		lodsb
		mov	ch, 4
		jmp	short loc_D643
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_D66A:				; CODE XREF: sub_D538+126j
		pop	di
		dec	dh
		jz	short loc_D674
		add	di, [bp+var_2]
		jmp	short loc_D63D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D674:				; CODE XREF: sub_D538+D6j
					; sub_D538+135j
		pop	di
		mov	al, cl
		cbw
		or	ax, ax
		jz	short loc_D686
		add	di, ax
		mov	dx, [bp+arg_0]
		add	di, dx
		add	[bp+var_66], dx

loc_D686:				; CODE XREF: sub_D538+142j
		pop	si
		pop	bx
		jmp	loc_D5F2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_D68C:				; CODE XREF: sub_D538+E5j
		pop	di
		pop	si
		pop	bx

loc_D68F:				; CODE XREF: sub_D538+C2j
		mov	si, word ptr [bp+var_62]
		sub	di, si
		mov	ax, [bp+var_6A]
		add	ax, di
		mov	[bp+var_64], ax
		pop	ds

loc_D69D:				; CODE XREF: sub_D538+88j
		mov	ax, [bp+var_64]

loc_D6A0:
		pop	si
		pop	di
		leave

locret_D6A3:
		retf	0Ah
sub_D538	endp

seg052		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg053		segment public 'CODE'
		assume cs:seg053
		;org 6
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_D6A6	proc far		; CODE XREF: sub_38D4+38P sub_6E7C+21P ...

arg_0		= byte ptr  6

		push	bp		; ä-ï @font_set_colors
		mov	bp, sp
		mov	cx, ax
		mov	byte ptr word_1991A, cl	; BYTE font_colors[4]={0xFF,0xF,7,8};
		mov	byte ptr word_1991A+1, dl
		mov	ax, bx
		mov	byte ptr word_1991C, al
		mov	al, [bp+arg_0]
		mov	byte ptr word_1991C+1, al
		leave
		retf	2
sub_D6A6	endp

seg053		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg054		segment public 'CODE'
		assume cs:seg054
		;org 2
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_D6C2	proc far		; CODE XREF: sub_3864+64P sub_6E26+4EP ...

var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		enter	2, 0
		push	ax
		push	di
		push	si
		lds	si, [bp+arg_0]
		mov	[bp+var_2], 0
		cmp	byte ptr [si], 0
		jz	short loc_D6FC
		mov	es, [bp+arg_6]

loc_D6D9:				; CODE XREF: sub_D6C2+38j
		mov	al, [si]
		cbw
		mov	di, ax
		dec	di
		inc	si
		add	di, [bp+arg_4]
		mov	cl, es:[di+2]
		sub	ch, ch
		or	cx, cx
		jle	short loc_D6F4
		cmp	[si], ch
		jz	short loc_D6F4

loc_D6F1:
		add	cx, [bp+var_4]

loc_D6F4:				; CODE XREF: sub_D6C2+29j sub_D6C2+2Dj
		add	[bp+var_2], cx
		cmp	byte ptr [si], 0
		jnz	short loc_D6D9

loc_D6FC:				; CODE XREF: sub_D6C2+12j
		mov	ax, seg	dseg

loc_D6FF:
		mov	ds, ax
		mov	ax, [bp+var_2]

loc_D704:
		pop	si
		pop	di
		leave
		retf	8
sub_D6C2	endp

seg054		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg055		segment public 'CODE'
		assume cs:seg055
		;org 0Ah
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_D70A	proc far		; CODE XREF: sub_2516+12BP
					; sub_2516+284P ...

arg_0		= dword	ptr  6

		push	bp		; ä-ï mcga_setpal
		mov	bp, sp
		push	di
		push	si

loc_D70F:
		mov	word_19926, 1
		mov	bx, word_19924
		mov	di, 300h
		push	ds
		lds	si, [bp+arg_0]	; § £àã¦ ¥â arg_0 ¢ ds:si?
		mov	dx, 3C8h
		xor	al, al
		out	dx, al
		inc	dx

loc_D727:				; CODE XREF: sub_D70A+44j
		push	dx
		mov	dx, 3DAh
		mov	ah, 8		; 1000b

loc_D72D:				; CODE XREF: sub_D70A+26j
		in	al, dx		; Video	status bits:
					; 0: retrace.  1=display is in vert or horiz retrace.
					; 1: 1=light pen is triggered; 0=armed
					; 2: 1=light pen switch	is open; 0=closed
					; 3: 1=vertical	sync pulse is occurring.
		and	al, ah
		jnz	short loc_D72D	; ¥á"¨ ¨¤¥â (r)¡à â­ë(c) å(r)¤ "ãç 

loc_D732:				; CODE XREF: sub_D70A+2Bj
		in	al, dx		; Video	status bits:
					; 0: retrace.  1=display is in vert or horiz retrace.
					; 1: 1=light pen is triggered; 0=armed
					; 2: 1=light pen switch	is open; 0=closed
					; 3: 1=vertical	sync pulse is occurring.
		and	al, ah
		jz	short loc_D732	; ¦¤ñ¬,¯(r)ª  ­¥ ­ ç­¥âáï	(r)¡à â­ë(c) å(r)¤ "ãç 
		cli			; § ¯à¥â ¬ áª¨àã¥¬ëå  ¯¯ à â­ëå	¯à¥àë¢ ­¨(c)
		pop	dx		; dx=0x3c9
		mov	cx, di
		cmp	cx, bx
		jbe	short loc_D741	; ¥á"¨ ­¨¦¥ ¨"¨	à ¢­(r)
		mov	cx, bx

loc_D741:				; CODE XREF: sub_D70A+33j
		push	cx

loc_D742:				; CODE XREF: sub_D70A+3Ej
		outsb
		jmp	short loc_D746
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_D746:				; CODE XREF: sub_D70A+39j
		jmp	short $+2
		loop	loc_D742
		sti
		pop	cx		; cx=word_19924
		sub	di, cx
		jnz	short loc_D727

loc_D750:
		pop	ds

loc_D751:				; mcga_palette_update
		mov	word_19926, 0
		pop	si
		pop	di
		leave
		retf	4
sub_D70A	endp

seg055		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg056		segment public 'CODE'
		assume cs:seg056
		;org 0Dh
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_D75E	proc far		; CODE XREF: sub_D7C4+9Bp

var_8		= word ptr -8
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= dword	ptr  6

		enter	4, 0
		push	dx
		push	ax
		push	si
		mov	cx, ax
		shl	ax, 1
		add	ax, cx
		mov	[bp+var_2], ax
		mov	ax, dx
		shl	dx, 1
		add	dx, ax
		mov	[bp+var_4], dx
		push	ds
		lds	si, [bp+arg_0]
		add	si, [bp+var_2]
		cli
		xor	al, al
		out	43h, al		; Timer	8253-5 (AT: 8254.2).
		jmp	short $+2
		in	al, 40h		; Timer	8253-5 (AT: 8254.2).
		mov	bl, al
		jmp	short $+2
		in	al, 40h		; Timer	8253-5 (AT: 8254.2).
		mov	bh, al
		mov	dx, 3C8h
		mov	ax, [bp+var_8]
		out	dx, al
		inc	dx
		mov	cx, [bp+var_4]
		cmp	word_19928, 0
		jz	short loc_D7A6
		rep outsb

loc_D7A3:
		jmp	short loc_D7A9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_D7A6:				; CODE XREF: sub_D75E+41j sub_D75E+49j
		outsb
		loop	loc_D7A6

loc_D7A9:				; CODE XREF: sub_D75E:loc_D7A3j
		xor	al, al
		out	43h, al		; Timer	8253-5 (AT: 8254.2).
		jmp	short $+2
		in	al, 40h		; Timer	8253-5 (AT: 8254.2).
		mov	dl, al
		jmp	short $+2
		in	al, 40h		; Timer	8253-5 (AT: 8254.2).
		mov	dh, al
		sti
		sub	dx, bx
		mov	ax, dx
		pop	ds
		pop	si
		leave
		retf	4
sub_D75E	endp




seg056		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg057		segment public 'CODE'
		assume cs:seg057
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_D8F0	proc far		; CODE XREF: sub_94E+1EDP sub_D2A+18P	...

var_2E		= word ptr -2Eh
var_2C		= word ptr -2Ch
var_2A		= word ptr -2Ah
var_28		= word ptr -28h
var_26		= word ptr -26h
var_24		= word ptr -24h
var_22		= word ptr -22h
var_20		= word ptr -20h
var_1E		= word ptr -1Eh
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		enter	28h, 0		; ä-ï @sprite_draw

loc_D8F4:
		push	dx
		push	bx		; bx ­ ¢¥à­(r)-¨áâ(r)ç­¨ª à¨á(r)¢ "ì­¨
		push	ax
		push	di
		push	si
		mov	ax, [bx+2]
		dec	ax
		mov	[bp+var_20], ax
		mov	ax, [bx]
		dec	ax
		mov	[bp+var_26], ax
		mov	dx, 1
		mov	ax, [bp+var_2E]
		or	ax, ax
		jns	short loc_D913
		mov	dx, 0FFFFh

loc_D913:				; CODE XREF: sub_D8F0+1Ej
		mov	[bp+var_10], dx
		and	ax, 7FFFh
		mov	[bp+var_2E], ax
		mov	bx, [bp+var_2E]
		mov	ax, bx
		shl	bx, 1
		add	bx, ax
		shl	bx, 2
		add	bx, [bp+arg_2]
		mov	es, [bp+arg_4]
		add	bx, 36h	; '6'
		mov	[bp+var_E], bx
		mov	[bp+var_C], es
		mov	ax, es:[bx]
		mov	dx, es:[bx+2]
		mov	word ptr [bp+var_1C], ax

loc_D941:
		mov	word ptr [bp+var_1C+2],	dx
		mov	si, [bp+var_2C]
		mov	ax, [si+4]
		mov	dx, [si+6]
		mov	word ptr [bp+var_18], ax

loc_D950:
		mov	word ptr [bp+var_18+2],	dx
		mov	ax, [si+2]
		mov	[bp+var_2], ax
		mov	ax, es:[bx+8]
		mov	[bp+var_12], ax
		mov	ax, es:[bx+0Ah]
		mov	[bp+var_14], ax
		push	ds
		mov	bx, [bp+var_12]
		xor	cx, cx
		mov	ax, [bp+var_2A]
		mov	dx, ax
		add	dx, bx
		dec	dx
		or	ax, ax
		jge	short loc_D97D
		add	bx, ax
		sub	cx, ax

loc_D97D:				; CODE XREF: sub_D8F0+87j
		sub	dx, [bp+var_20]
		jle	short loc_D984
		sub	bx, dx

loc_D984:				; CODE XREF: sub_D8F0+90j
		mov	[bp+var_22], cx
		mov	[bp+var_6], bx
		add	cx, bx
		mov	[bp+var_1E], cx

loc_D98F:
		or	bx, bx
		jg	short loc_D996
		jmp	loc_DAE2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D996:				; CODE XREF: sub_D8F0+A1j
		cmp	[bp+var_10], 1
		jz	short loc_D9B4
		mov	di, [bp+var_12]
		add	ax, di
		dec	ax
		mov	[bp+var_2A], ax
		sub	di, cx
		neg	di
		mov	[bp+var_22], di
		neg	di
		add	di, [bp+var_6]
		mov	[bp+var_1E], di

loc_D9B4:				; CODE XREF: sub_D8F0+AAj
		mov	bx, [bp+var_14]
		xor	cx, cx
		mov	ax, [bp+arg_0]
		mov	dx, ax
		add	dx, bx
		dec	dx
		or	ax, ax
		jge	short loc_D9C9
		add	bx, ax
		sub	cx, ax

loc_D9C9:				; CODE XREF: sub_D8F0+D3j
		sub	dx, [bp+var_26]
		jle	short loc_D9D0
		sub	bx, dx

loc_D9D0:				; CODE XREF: sub_D8F0+DCj
		mov	[bp+var_28], cx
		mov	[bp+var_A], bx
		push	cx
		add	cx, bx
		mov	[bp+var_24], cx
		pop	cx
		or	bx, bx
		jg	short loc_D9E4
		jmp	loc_DAE2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_D9E4:				; CODE XREF: sub_D8F0+EFj
		les	bx, [bp+var_18]
		mov	dx, es
		mov	di, [bp+var_2]
		add	cx, ax
		jz	short loc_D9FE

loc_D9F0:				; CODE XREF: sub_D8F0:loc_D9FCj
		add	bx, di
		jns	short loc_D9FC
		sub	bx, 7000h
		add	dx, 700h

loc_D9FC:				; CODE XREF: sub_D8F0+102j
		loop	loc_D9F0

loc_D9FE:				; CODE XREF: sub_D8F0+FEj
		add	bx, [bp+var_2A]
		add	bx, [bp+var_22]
		mov	es, dx
		assume es:nothing
		lds	si, [bp+var_1C]
		mov	ax, [bp+var_22]
		imul	[bp+var_10]
		mov	cx, ax
		mov	di, [bp+var_1E]
		mov	dx, 0FFFFh

loc_DA17:				; CODE XREF: sub_D8F0:loc_DADFj
		mov	[bp+var_4], 0
		inc	dx
		cmp	dx, [bp+var_24]
		jl	short loc_DA26
		jmp	loc_DAE2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DA26:				; CODE XREF: sub_D8F0+130j
		cmp	dx, [bp+var_28]
		jge	short loc_DA2E
		jmp	loc_DAD4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DA2E:				; CODE XREF: sub_D8F0+139j
		push	bx
		push	dx
		xor	dx, dx
		lodsb
		cmp	al, 0FFh
		jz	short loc_DA3E
		cmp	al, 0FDh ; 'ı'
		jz	short loc_DA46
		jmp	short loc_DA76
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DA3E:				; CODE XREF: sub_D8F0+145j
		mov	[bp+var_4], 0FFFFh
		jmp	short loc_DAC2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DA46:				; CODE XREF: sub_D8F0+149j
					; sub_D8F0:loc_DA74j
		cmp	dx, di
		jl	short loc_DA4C
		jmp	short loc_DAC2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DA4C:				; CODE XREF: sub_D8F0+158j
		lodsb
		cmp	al, 0FFh
		jnz	short loc_DA58

loc_DA51:				; CODE XREF: sub_D8F0:loc_DA88j
		mov	[bp+var_4], 0FFFFh
		jmp	short loc_DAC2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DA58:				; CODE XREF: sub_D8F0+15Fj
		mov	ah, al
		lodsb

loc_DA5B:				; CODE XREF: sub_D8F0+182j
		cmp	dx, cx
		jl	short loc_DA6D
		cmp	dx, di
		jge	short loc_DA6D
		cmp	al, 0FDh ; 'ı'
		jz	short loc_DA6A
		mov	es:[bx], al

loc_DA6A:				; CODE XREF: sub_D8F0+175j
		add	bx, [bp+var_10]

loc_DA6D:				; CODE XREF: sub_D8F0+16Dj
					; sub_D8F0+171j
		inc	dx
		dec	ah
		jz	short loc_DA74
		jmp	short loc_DA5B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DA74:				; CODE XREF: sub_D8F0+180j
		jmp	short loc_DA46
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DA76:				; CODE XREF: sub_D8F0+14Bj
					; sub_D8F0:loc_DAA8j ...
		cmp	dx, di
		jl	short loc_DA7C
		jmp	short loc_DAC2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DA7C:				; CODE XREF: sub_D8F0+188j
		lodsb
		cmp	al, 0FFh
		jz	short loc_DA88
		cmp	al, 0FEh ; 'ş'
		jz	short loc_DA8A
		jmp	short loc_DAAC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DA88:				; CODE XREF: sub_D8F0+18Fj
		jmp	short loc_DA51
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DA8A:				; CODE XREF: sub_D8F0+193j
		lodsb

loc_DA8B:
		mov	ah, al

loc_DA8D:
		lodsb

loc_DA8E:				; CODE XREF: sub_D8F0+1B5j
		cmp	dx, cx
		jl	short loc_DAA0
		cmp	dx, di
		jge	short loc_DAA0
		cmp	al, 0FDh ; 'ı'
		jz	short loc_DA9D
		mov	es:[bx], al

loc_DA9D:				; CODE XREF: sub_D8F0+1A8j
		add	bx, [bp+var_10]

loc_DAA0:				; CODE XREF: sub_D8F0+1A0j
					; sub_D8F0+1A4j
		inc	dx
		dec	ah
		jz	short loc_DAA8
		jmp	short loc_DA8E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DAA8:				; CODE XREF: sub_D8F0+1B3j
		jmp	short loc_DA76
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jmp	short loc_DABE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DAAC:				; CODE XREF: sub_D8F0+195j
		cmp	dx, cx
		jl	short loc_DABE
		cmp	dx, di
		jge	short loc_DABE
		cmp	al, 0FDh ; 'ı'
		jz	short loc_DABB
		mov	es:[bx], al

loc_DABB:				; CODE XREF: sub_D8F0+1C6j
		add	bx, [bp+var_10]

loc_DABE:				; CODE XREF: sub_D8F0+1BAj
					; sub_D8F0+1BEj ...
		inc	dx
		jmp	short loc_DA76
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DAC2:				; CODE XREF: sub_D8F0+153j
					; sub_D8F0+15Aj ...
		pop	dx
		pop	bx
		add	bx, [bp+var_2]
		jns	short loc_DAD4
		sub	bx, 7000h
		mov	ax, es
		add	ax, 700h
		mov	es, ax
		assume es:nothing

loc_DAD4:				; CODE XREF: sub_D8F0+13Bj
					; sub_D8F0+1D7j
		cmp	[bp+var_4], 0FFFFh
		jz	short loc_DADF

loc_DADA:				; CODE XREF: sub_D8F0+1EDj
		lodsb
		cmp	al, 0FFh
		jnz	short loc_DADA

loc_DADF:				; CODE XREF: sub_D8F0+1E8j
		jmp	loc_DA17
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DAE2:				; CODE XREF: sub_D8F0+A3j sub_D8F0+F1j ...
		pop	ds
		pop	si

loc_DAE4:
		pop	di
		leave
		retf	6
sub_D8F0	endp

seg057		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg058		segment public 'CODE'
		assume cs:seg058
		;org 9
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_DAEA	proc far		; CODE XREF: sub_A9C2+58P

var_174		= word ptr -174h
var_172		= word ptr -172h
var_170		= word ptr -170h
var_16E		= word ptr -16Eh
var_16C		= word ptr -16Ch
var_16A		= word ptr -16Ah
var_168		= word ptr -168h
var_166		= word ptr -166h
var_164		= word ptr -164h
var_162		= word ptr -162h
var_160		= word ptr -160h
var_15E		= word ptr -15Eh
var_15C		= dword	ptr -15Ch
var_158		= dword	ptr -158h
var_154		= word ptr -154h
var_152		= byte ptr -152h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		enter	16Eh, 0
		push	dx
		push	bx
		push	ax
		push	di
		push	si
		mov	ax, [bx+2]
		dec	ax
		mov	[bp+var_162], ax
		mov	ax, [bx]
		dec	ax
		mov	[bp+var_16C], ax
		mov	dx, 1
		mov	ax, [bp+var_174]
		or	ax, ax
		jns	short loc_DB10
		mov	dx, 0FFFFh

loc_DB10:				; CODE XREF: sub_DAEA+21j
		mov	[bp+var_10], dx
		and	ax, 7FFFh
		mov	[bp+var_174], ax
		mov	bx, [bp+var_174]
		mov	ax, bx
		shl	bx, 1
		add	bx, ax
		shl	bx, 2
		add	bx, [bp+arg_4]
		mov	es, [bp+arg_6]
		add	bx, 36h	; '6'
		mov	[bp+var_E], bx

loc_DB33:
		mov	[bp+var_C], es
		mov	ax, es:[bx]
		mov	dx, es:[bx+2]
		mov	word ptr [bp+var_15C], ax
		mov	word ptr [bp+var_15C+2], dx
		mov	si, [bp+var_172]
		mov	ax, [si+4]
		mov	dx, [si+6]
		mov	word ptr [bp+var_158], ax
		mov	word ptr [bp+var_158+2], dx
		mov	ax, [si+2]
		mov	[bp+var_2], ax
		mov	ax, es:[bx+8]
		mov	[bp+var_15E], ax
		mov	cx, es:[bx+0Ah]
		mov	[bp+var_164], cx
		cmp	ax, cx
		jge	short loc_DB73
		mov	ax, cx

loc_DB73:				; CODE XREF: sub_DAEA+85j
		mov	[bp+var_166], ax
		push	ds
		xor	di, di
		mov	si, [bp+arg_0]
		xor	ax, ax
		mov	[bp+var_12], ax
		mov	[bp+var_154], ax
		mov	ax, 32h	; '2'
		mov	bx, [bp+var_15E]
		mov	dx, [bp+var_164]

loc_DB91:				; CODE XREF: sub_DAEA+D2j
		add	ax, si
		cmp	ax, 64h	; 'd'
		jl	short loc_DBB2
		mov	[bp+di+var_152], 0FFh
		sub	ax, 64h	; 'd'
		cmp	di, bx
		jge	short loc_DBA7
		inc	[bp+var_12]

loc_DBA7:				; CODE XREF: sub_DAEA+B8j
		cmp	di, dx
		jge	short loc_DBB7
		inc	[bp+var_154]
		jmp	short loc_DBB7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DBB2:				; CODE XREF: sub_DAEA+ACj
		mov	[bp+di+var_152], 0

loc_DBB7:				; CODE XREF: sub_DAEA+BFj sub_DAEA+C5j
		inc	di
		cmp	di, [bp+var_166]
		jl	short loc_DB91
		mov	ax, [bp+var_12]
		shr	ax, 1
		sub	[bp+var_170], ax
		mov	ax, [bp+var_154]
		sub	[bp+arg_2], ax
		inc	[bp+arg_2]
		mov	bx, [bp+var_12]
		xor	cx, cx
		mov	ax, [bp+var_170]
		mov	dx, ax
		add	dx, bx
		dec	dx
		or	ax, ax
		jge	short loc_DBE7
		add	bx, ax
		sub	cx, ax

loc_DBE7:				; CODE XREF: sub_DAEA+F7j
		sub	dx, [bp+var_162]
		jle	short loc_DBEF
		sub	bx, dx

loc_DBEF:				; CODE XREF: sub_DAEA+101j
		mov	[bp+var_168], cx
		mov	[bp+var_6], bx
		add	cx, bx
		mov	[bp+var_160], cx
		or	bx, bx
		jg	short loc_DC04

loc_DC00:
		jmp	loc_DDB0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DC04:				; CODE XREF: sub_DAEA+114j
		cmp	[bp+var_10], 1
		jz	short loc_DC25
		mov	di, [bp+var_12]
		add	ax, di
		dec	ax
		mov	[bp+var_170], ax
		sub	di, cx
		neg	di
		mov	[bp+var_168], di
		neg	di
		add	di, [bp+var_6]
		mov	[bp+var_160], di

loc_DC25:				; CODE XREF: sub_DAEA+11Ej
		mov	bx, [bp+var_154]
		xor	cx, cx
		mov	ax, [bp+arg_2]
		mov	dx, ax
		add	dx, bx
		dec	dx
		or	ax, ax
		jge	short loc_DC3B
		add	bx, ax
		sub	cx, ax

loc_DC3B:				; CODE XREF: sub_DAEA+14Bj
		sub	dx, [bp+var_16C]
		jle	short loc_DC43
		sub	bx, dx

loc_DC43:				; CODE XREF: sub_DAEA+155j
		mov	[bp+var_16E], cx
		mov	[bp+var_A], bx
		push	cx
		add	cx, bx
		mov	[bp+var_16A], cx
		pop	cx
		or	bx, bx
		jg	short loc_DC5A
		jmp	loc_DDB0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DC5A:				; CODE XREF: sub_DAEA+16Aj
		les	bx, [bp+var_158]
		mov	dx, es
		mov	di, [bp+var_2]
		add	cx, ax
		jz	short loc_DC75

loc_DC67:				; CODE XREF: sub_DAEA:loc_DC73j
		add	bx, di
		jns	short loc_DC73
		sub	bx, 7000h
		add	dx, 700h

loc_DC73:				; CODE XREF: sub_DAEA+17Fj
		loop	loc_DC67

loc_DC75:				; CODE XREF: sub_DAEA+17Bj
		add	bx, [bp+var_170]
		add	bx, [bp+var_168]
		mov	es, dx
		assume es:nothing
		lds	si, [bp+var_15C]
		mov	ax, [bp+var_168]
		imul	[bp+var_10]
		mov	[bp+var_168], ax
		mov	di, 0FFFFh
		mov	dx, 0FFFFh

loc_DC94:				; CODE XREF: sub_DAEA:loc_DDACj
		mov	[bp+var_4], 0
		inc	di
		cmp	di, [bp+var_164]
		jl	short loc_DCA4
		jmp	loc_DDB0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DCA4:				; CODE XREF: sub_DAEA+1B4j
		mov	al, [bp+di+var_152]
		or	al, al
		jnz	short loc_DCB0
		jmp	loc_DDA1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DCB0:				; CODE XREF: sub_DAEA+1C0j
		inc	dx
		cmp	dx, [bp+var_16A]
		jl	short loc_DCBA
		jmp	loc_DDB0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DCBA:				; CODE XREF: sub_DAEA+1CBj
		cmp	dx, [bp+var_16E]
		jge	short loc_DCC4
		jmp	loc_DDA1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DCC4:				; CODE XREF: sub_DAEA+1D4j
		push	di
		xor	di, di
		push	bx
		push	dx
		xor	dx, dx
		lodsb
		cmp	al, 0FFh
		jz	short loc_DCD6
		cmp	al, 0FDh ; 'ı'
		jz	short loc_DCDE
		jmp	short loc_DD24
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DCD6:				; CODE XREF: sub_DAEA+1E4j
		mov	[bp+var_4], 0FFFFh
		jmp	loc_DD8E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DCDE:				; CODE XREF: sub_DAEA+1E8j
					; sub_DAEA:loc_DD22j
		cmp	dx, [bp+var_160]
		jl	short loc_DCE8
		jmp	loc_DD8E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DCE8:				; CODE XREF: sub_DAEA+1F8j
		lodsb
		cmp	al, 0FFh
		jnz	short loc_DCF6

loc_DCED:				; CODE XREF: sub_DAEA:loc_DD38j
		mov	[bp+var_4], 0FFFFh
		jmp	loc_DD8E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DCF6:				; CODE XREF: sub_DAEA+201j
		mov	ah, al
		lodsb

loc_DCF9:				; CODE XREF: sub_DAEA+236j
		mov	cl, [bp+di+var_152]
		or	cl, cl

loc_DCFF:
		jnz	short loc_DD04
		jmp	short loc_DD1B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DD04:				; CODE XREF: sub_DAEA:loc_DCFFj
		cmp	dx, [bp+var_168]
		jl	short loc_DD1A
		cmp	dx, [bp+var_160]
		jge	short loc_DD1A
		cmp	al, 0FDh ; 'ı'
		jz	short loc_DD17
		mov	es:[bx], al

loc_DD17:				; CODE XREF: sub_DAEA+228j
		add	bx, [bp+var_10]

loc_DD1A:				; CODE XREF: sub_DAEA+21Ej
					; sub_DAEA+224j
		inc	dx

loc_DD1B:				; CODE XREF: sub_DAEA+217j
		inc	di
		dec	ah
		jz	short loc_DD22
		jmp	short loc_DCF9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DD22:				; CODE XREF: sub_DAEA+234j
		jmp	short loc_DCDE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DD24:				; CODE XREF: sub_DAEA+1EAj
					; sub_DAEA:loc_DD66j ...
		cmp	dx, [bp+var_160]
		jl	short loc_DD2C
		jmp	short loc_DD8E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DD2C:				; CODE XREF: sub_DAEA+23Ej
		lodsb
		cmp	al, 0FFh
		jz	short loc_DD38
		cmp	al, 0FEh ; 'ş'
		jz	short loc_DD3A
		jmp	short loc_DD6A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DD38:				; CODE XREF: sub_DAEA+245j
		jmp	short loc_DCED
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DD3A:				; CODE XREF: sub_DAEA+249j
		lodsb
		mov	ah, al
		lodsb

loc_DD3E:				; CODE XREF: sub_DAEA+27Aj
		mov	cl, [bp+di+var_152]
		or	cl, cl
		jnz	short loc_DD48
		jmp	short loc_DD5F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DD48:				; CODE XREF: sub_DAEA+25Aj
		cmp	dx, [bp+var_168]
		jl	short loc_DD5E
		cmp	dx, [bp+var_160]
		jge	short loc_DD5E
		cmp	al, 0FDh ; 'ı'
		jz	short loc_DD5B
		mov	es:[bx], al

loc_DD5B:				; CODE XREF: sub_DAEA+26Cj
		add	bx, [bp+var_10]

loc_DD5E:				; CODE XREF: sub_DAEA+262j
					; sub_DAEA+268j
		inc	dx

loc_DD5F:				; CODE XREF: sub_DAEA+25Cj
		inc	di
		dec	ah
		jz	short loc_DD66
		jmp	short loc_DD3E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DD66:				; CODE XREF: sub_DAEA+278j
		jmp	short loc_DD24
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jmp	short loc_DD8A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DD6A:				; CODE XREF: sub_DAEA+24Bj
		mov	cl, [bp+di+var_152]
		or	cl, cl
		jnz	short loc_DD74
		jmp	short loc_DD8B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DD74:				; CODE XREF: sub_DAEA+286j
		cmp	dx, [bp+var_168]
		jl	short loc_DD8A
		cmp	dx, [bp+var_160]
		jge	short loc_DD8A
		cmp	al, 0FDh ; 'ı'
		jz	short loc_DD87
		mov	es:[bx], al

loc_DD87:				; CODE XREF: sub_DAEA+298j
		add	bx, [bp+var_10]

loc_DD8A:				; CODE XREF: sub_DAEA+27Ej
					; sub_DAEA+28Ej ...
		inc	dx

loc_DD8B:				; CODE XREF: sub_DAEA+288j
		inc	di
		jmp	short loc_DD24
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DD8E:				; CODE XREF: sub_DAEA+1F1j
					; sub_DAEA+1FAj ...
		pop	dx
		pop	bx
		pop	di
		add	bx, [bp+var_2]
		jns	short loc_DDA1
		sub	bx, 7000h
		mov	ax, es
		add	ax, 700h
		mov	es, ax
		assume es:nothing

loc_DDA1:				; CODE XREF: sub_DAEA+1C2j
					; sub_DAEA+1D6j ...
		cmp	[bp+var_4], 0FFFFh
		jz	short loc_DDAC

loc_DDA7:				; CODE XREF: sub_DAEA+2C0j
		lodsb
		cmp	al, 0FFh
		jnz	short loc_DDA7

loc_DDAC:				; CODE XREF: sub_DAEA+2BBj
		jmp	loc_DC94
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DDB0:				; CODE XREF: sub_DAEA:loc_DC00j
					; sub_DAEA+16Cj ...
		pop	ds
		pop	si
		pop	di
		leave

locret_DDB4:
		retf	8
sub_DAEA	endp

seg058		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg059		segment public 'CODE'
		assume cs:seg059
		;org 7
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_DDB8	proc far		; CODE XREF: sub_2516+143P
					; sub_2516+167P ...

var_22A		= byte ptr -22Ah
var_229		= byte ptr -229h
var_228		= dword	ptr -228h
var_224		= word ptr -224h
var_222		= word ptr -222h
var_220		= word ptr -220h
var_21E		= word ptr -21Eh
var_21C		= word ptr -21Ch
var_21A		= word ptr -21Ah
var_218		= word ptr -218h
var_216		= word ptr -216h
var_214		= word ptr -214h
var_212		= word ptr -212h
var_210		= word ptr -210h
var_20E		= word ptr -20Eh
var_20A		= byte ptr -20Ah
var_1F6		= word ptr -1F6h
var_1F4		= dword	ptr -1F4h
var_1F0		= byte ptr -1F0h
var_1EE		= word ptr -1EEh
var_1EA		= word ptr -1EAh
var_1E8		= word ptr -1E8h
var_1E6		= word ptr -1E6h
var_1E4		= word ptr -1E4h
var_1E2		= word ptr -1E2h
var_1DC		= word ptr -1DCh
var_1C8		= word ptr -1C8h
var_1C6		= word ptr -1C6h
var_1C4		= word ptr -1C4h
var_1C2		= word ptr -1C2h
var_12A		= dword	ptr -12Ah
var_126		= word ptr -126h
var_122		= word ptr -122h
var_120		= word ptr -120h
var_11E		= word ptr -11Eh
var_11C		= word ptr -11Ch
var_11A		= word ptr -11Ah
var_118		= word ptr -118h
var_114		= word ptr -114h
var_112		= word ptr -112h
var_F8		= word ptr -0F8h
var_F6		= word ptr -0F6h
var_8E		= word ptr -8Eh
var_8C		= word ptr -8Ch
var_8A		= word ptr -8Ah
var_88		= word ptr -88h
var_76		= word ptr -76h
var_74		= word ptr -74h
var_72		= word ptr -72h
var_70		= word ptr -70h
var_6E		= dword	ptr -6Eh
var_6A		= word ptr -6Ah
var_66		= word ptr -66h
var_62		= word ptr -62h
var_60		= word ptr -60h
var_5E		= dword	ptr -5Eh
var_5A		= dword	ptr -5Ah
var_56		= word ptr -56h
var_54		= byte ptr -54h
var_4		= word ptr -4
var_2		= word ptr -2

		enter	228h, 0
		push	ax		; var_22A,á(r)åà ­ï¥¬ §¤¥áì ¢ë¤¥"¥­­(r)¥ ª(r)"-¢(r) ¡ (c)â(r)¢(0å4000)
		push	bx
		push	di		; size_t
		push	si		; fpos_t *
		sub	ax, ax
		mov	[bp-68h], ax
		mov	[bp+var_6A], ax
		mov	[bp-64h], ax
		mov	[bp+var_66], ax
		mov	[bp+var_21A], ax
		mov	[bp+var_21C], ax
		mov	[bp-124h], ax
		mov	[bp+var_126], ax
		mov	word_165BC, 0Dh
		mov	word ptr [bp+var_1F4], ax
		push	bx		; ¬.¡. 2(c)  à£-â	strcpy
		lea	ax, [bp+var_54]
		push	ax		; char *
		call	_strcpy
		add	sp, 4		; ã¢¥"¨ç¨¢ ¥¬ ­  4 à¥£¨áâà-ãª §-"ì áâ¥ª 
		push	2Eh ; '.'       ; int
		lea	ax, [bp+var_54]
		push	ax		; char *
		call	_strchr		; ?¨é¥¬	â(r)çªã ¢	áâà(r)ª¥ ax?
		add	sp, 4

loc_DE03:				; çâ(r) íâ(r) §­ ç¨â?
		or	ax, ax
		jnz	short loc_DE16	; ¯¥à¥(c)â¨,¥á"¨ ax!=0 (¢à(r)¤¥)
		push	3ABAh		; ãª §-"ì ­  ".SS0"
		lea	ax, [bp+var_54]
		push	ax		; char *
		call	_strcat
		add	sp, 4

loc_DE16:				; CODE XREF: sub_DDB8+4Dj
		push	3ABEh		; char *
		lea	ax, [bp+var_20A]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		lea	ax, [bp+var_54]
		mov	[bp+var_1F6], ax
		push	ax		; char *
		call	_strupr
		add	sp, 2
		cmp	[bp+var_54], 2Ah ; '*'
		jnz	short loc_DE43
		lea	ax, [bp-53h]	; bp á ¬¨­ãá(r)¬ - ãª §-"ì ­  "(r)ª "ì­ãî ¯¥à¥¬¥­­ãî
		mov	[bp+var_1F6], ax

loc_DE43:				; CODE XREF: sub_DDB8+82j
		mov	bx, [bp+var_1F6]
		cmp	byte ptr [bx], 52h ; 'R'
		jnz	short loc_DE57
		cmp	byte ptr [bx+1], 4Dh ; 'M'
		jnz	short loc_DE57	; RM ç áâ(r) ¡ë"(r)	¢ ­ ç "¥ ­ §¢-¨(c) SS-ä (c)"(r)¢ ¢ Dragonsphere, Rex Nebular
		add	[bp+var_1F6], 2

loc_DE57:				; CODE XREF: sub_DDB8+92j sub_DDB8+98j
		push	6		; size_t
		push	[bp+var_1F6]	; ­¥â,¯¥à¥¤ íâ¨¬ ­ ¢¥à­(r) size_t
		lea	ax, [bp+var_20A]
		push	ax		; char *
		call	_strncat	; ¤(r)¡ ¢"ï¥â ¯¥à¢ë¥ size_t á¨¬¢(r)"(r)¢ ¢â(r)à(r)(c) áâà(r)ª¨ ª ¯¥à¢(r)(c)
		add	sp, 6
		lea	ax, [bp+var_1F4]
		push	ss
		push	ax		; __int32

loc_DE70:				; íâ(r) ä à ¯(r)(c)­â¥à,¯(r)â(r)¬ã ç¥à¥§ ¯ãè
		lea	ax, [bp+var_54]
		push	ss		; __int32
		push	ax		; char *
		lea	bx, unk_19931
		mov	ax, 1
		call	sub_121A0	; @loader_open
		or	ax, ax
		jz	short loc_DE8E
		mov	word_1994E, 0FFFFh ; sprite_error=-1
		jmp	loc_E6A9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DE8E:				; CODE XREF: sub_DDB8+CBj
		mov	word_1994E, 0FFFEh
		mov	[bp+var_224], 98h ; '˜'
		lea	ax, [bp+var_11E]
		push	ss
		push	ax		; void *
		push	0		; int
		push	1		; int
		lea	ax, [bp+var_1F4]
		push	ss
		push	ax		; __int32
		mov	ax, 98h	; '˜'
		cwd
		call	sub_12582	; @loader_read
		or	dx, ax
		jnz	short loc_DEBA
		jmp	loc_E6A9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_DEBA:				; CODE XREF: sub_DDB8+FDj
		cmp	[bp+var_114], 0
		jz	short loc_DEC6
		or	[bp+var_22A], 4

loc_DEC6:				; CODE XREF: sub_DDB8+107j
		mov	ax, [bp+var_F8]
		shl	ax, 4
		mov	[bp+var_4], ax

loc_DED0:
		mov	ax, [bp+var_F8]
		mov	cx, ax
		shl	ax, 1
		add	ax, cx
		shl	ax, 2
		add	ax, 42h	; 'B'
		cwd
		mov	[bp+var_122], ax
		mov	[bp+var_120], dx
		test	[bp+var_22A], 4
		jz	short loc_DEFE
		add	ax, 68h	; 'h'
		adc	dx, 0
		mov	[bp+var_122], ax
		mov	[bp+var_120], dx

loc_DEFE:				; CODE XREF: sub_DDB8+136j
		mov	[bp+var_72], ax
		mov	[bp+var_70], dx
		cmp	byte ptr [bp+var_11E], 0
		jz	short loc_DF1F
		add	cx, 22h	; '"'
		shl	cx, 3
		sub	bx, bx
		add	ax, cx
		adc	dx, bx
		mov	[bp+var_122], ax
		mov	[bp+var_120], dx

loc_DF1F:				; CODE XREF: sub_DDB8+151j
		mov	[bp+var_220], ax
		mov	[bp+var_21E], dx
		test	[bp+var_22A], 2
		jnz	short loc_DF45
		cmp	byte ptr [bp+var_11E], 0
		jnz	short loc_DF45
		add	ax, [bp+var_8A]
		adc	dx, [bp+var_88]
		mov	[bp+var_220], ax
		mov	[bp+var_21E], dx

loc_DF45:				; CODE XREF: sub_DDB8+174j
					; sub_DDB8+17Bj
		mov	ax, word_19956
		or	ax, word_19954
		jz	short loc_DF70
		mov	ax, word_1BD32
		mov	dx, word_1BD34
		cmp	[bp+var_21E], dx
		jg	short loc_DF70
		jl	short loc_DF63
		cmp	[bp+var_220], ax
		ja	short loc_DF70

loc_DF63:				; CODE XREF: sub_DDB8+1A3j
		mov	ax, word_19954
		mov	dx, word_19956
		mov	[bp+var_66], ax
		mov	[bp-64h], dx

loc_DF70:				; CODE XREF: sub_DDB8+194j
					; sub_DDB8+1A1j ...
		mov	ax, [bp+var_220]
		mov	dx, [bp+var_21E]
		mov	word_1B90A, ax
		mov	word_1B90C, dx
		mov	cx, [bp-64h]
		or	cx, [bp+var_66]
		jnz	short loc_DF98
		lea	cx, [bp+var_20A]
		push	ss
		push	cx
		call	sub_CDC6	; äã­ªæ¨ï @mem_get_name
		mov	[bp+var_66], ax
		mov	[bp-64h], dx

loc_DF98:				; CODE XREF: sub_DDB8+1CDj
		mov	ax, [bp-64h]
		or	ax, [bp+var_66]
		jnz	short loc_DFAA

loc_DFA0:				; CODE XREF: sub_DDB8+207j
					; sub_DDB8+295j
		mov	word_1994E, 0FFFCh
		jmp	loc_E6A9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_DFAA:				; CODE XREF: sub_DDB8+1E6j
		push	ds
		push	offset aSpLoad	; "$sp-load"
		mov	ax, [bp+var_4]
		cwd
		call	sub_CDC6	; äã­ªæ¨ï @mem_get_name
		mov	[bp+var_6A], ax
		mov	[bp-68h], dx
		or	dx, ax
		jz	short loc_DFA0
		les	bx, dword ptr [bp+var_66]
		sub	ax, ax
		mov	es:[bx+40h], ax
		mov	es:[bx+3Eh], ax
		mov	es:[bx+38h], ax
		mov	es:[bx+36h], ax
		mov	es:[bx+30h], ax
		mov	es:[bx+2Eh], ax
		mov	es:[bx+34h], ax
		mov	es:[bx+32h], ax
		mov	es:[bx+3Ch], ax
		mov	es:[bx+3Ah], ax
		push	word ptr [bp-68h]
		push	[bp+var_6A]	; void *
		push	ax		; int
		push	1		; int
		lea	ax, [bp+var_1F4]
		push	ss
		push	ax		; __int32
		mov	ax, [bp+var_4]
		cwd
		call	sub_12582	; @loader_read
		or	dx, ax
		jnz	short loc_E014
		mov	word_1994E, 0FFFEh
		jmp	loc_E6A9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_E014:				; CODE XREF: sub_DDB8+250j
		cmp	[bp+var_112], 0
		jnz	short loc_E076
		push	ds
		push	offset aColor	; "$color$"
		mov	di, [bp+var_1DC]
		mov	ax, di
		shl	di, 2
		add	di, ax
		shl	di, 1
		mov	ax, [bp+di+var_1C8]
		mov	dx, [bp+di+var_1C6]
		mov	[bp+var_216], ax
		mov	[bp+var_214], dx
		call	sub_CDC6	; äã­ªæ¨ï @mem_get_name
		mov	[bp+var_126], ax
		mov	[bp-124h], dx
		or	dx, ax
		jnz	short loc_E050
		jmp	loc_DFA0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E050:				; CODE XREF: sub_DDB8+293j
		push	word ptr [bp-124h]
		push	ax		; void *
		push	0		; int
		push	1		; int
		lea	ax, [bp+var_1F4]
		push	ss
		push	ax		; __int32
		mov	ax, [bp+var_216]
		mov	dx, [bp+var_214]

loc_E067:				; CODE XREF: sub_DDB8+30Aj
		call	sub_12582	; @loader_read
		or	dx, ax
		jz	short loc_E073
		jmp	loc_E106
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E073:				; CODE XREF: sub_DDB8+2B6j
		jmp	loc_E6A9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E076:				; CODE XREF: sub_DDB8+261j
		mov	di, [bp+var_1DC]
		mov	ax, di
		shl	di, 2
		add	di, ax
		shl	di, 1
		mov	ax, [bp+di+var_1C8]
		mov	dx, [bp+di+var_1C6]
		mov	[bp+var_216], ax
		mov	[bp+var_214], dx
		mov	ax, word_19952
		or	ax, word_19950
		jz	short loc_E0C4
		mov	ax, word_19950
		mov	dx, word_19952
		mov	[bp+var_62], ax
		mov	[bp+var_60], dx
		sub	cx, cx
		mov	[bp-124h], cx
		mov	[bp+var_126], cx
		push	dx
		push	ax
		push	cx
		push	1
		lea	ax, [bp+var_1F4]
		push	ss
		push	ax

loc_E0BE:
		mov	ax, 300h
		cwd
		jmp	short loc_E067
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E0C4:				; CODE XREF: sub_DDB8+2E2j
		lea	ax, [bp+var_5E]
		push	ax		; fpos_t *
		push	[bp+var_1EE]	; FILE *
		call	_fgetpos
		add	sp, 4
		push	0		; int
		mov	di, [bp+var_1DC]
		inc	[bp+var_1DC]
		mov	[bp+var_56], di
		mov	ax, di
		shl	di, 2
		add	di, ax
		shl	di, 1
		mov	ax, [bp+di+var_1C4]
		mov	dx, [bp+di+var_1C2]
		add	ax, word ptr [bp+var_5E]
		adc	dx, word ptr [bp+var_5E+2]
		push	dx		; __int32
		push	ax		; __int32
		push	[bp+var_1EE]	; FILE *
		call	_fseek
		add	sp, 8

loc_E106:				; CODE XREF: sub_DDB8+2B8j
		mov	al, byte ptr [bp+var_11E]
		les	bx, dword ptr [bp+var_66]
		mov	es:[bx+2Ch], al
		cmp	[bp+var_11C], 0
		jz	short loc_E126
		cmp	[bp+var_11A], 4
		jge	short loc_E126
		mov	word ptr es:[bx], 1
		jmp	short loc_E12E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E126:				; CODE XREF: sub_DDB8+35Ej
					; sub_DDB8+365j
		les	bx, dword ptr [bp+var_66]
		mov	word ptr es:[bx], 0

loc_E12E:				; CODE XREF: sub_DDB8+36Cj
		mov	ax, [bp+var_11A]
		les	bx, dword ptr [bp+var_66]
		mov	es:[bx+2], ax
		mov	ax, [bp+var_F8]
		mov	es:[bx+4], ax
		mov	ax, [bp+var_8E]
		mov	es:[bx+28h], ax
		mov	ax, [bp+var_8C]
		mov	es:[bx+2Ah], ax
		sub	si, si
		mov	es, word ptr [bp-64h]

loc_E156:				; CODE XREF: sub_DDB8+3B1j
		mov	di, si
		shl	di, 1
		mov	ax, [bp+di+var_118]
		mov	bx, [bp+var_66]
		mov	es:[bx+di+8], ax
		inc	si
		cmp	si, 10h
		jl	short loc_E156
		test	[bp+var_22A], 4
		jz	short loc_E1B3
		mov	ax, [bp+var_72]
		add	ax, [bp+var_66]
		mov	dx, [bp-64h]
		sub	ax, 68h	; 'h'
		les	bx, dword ptr [bp+var_66]
		mov	es:[bx+3Eh], ax
		mov	es:[bx+40h], dx
		push	dx
		push	ax
		call	sub_104F2
		les	bx, dword ptr [bp+var_66]
		mov	es:[bx+3Eh], ax
		mov	es:[bx+40h], dx
		push	68h ; 'h'       ; size_t
		lea	ax, [bp+var_F6]
		push	ss
		push	ax		; size_t
		push	word ptr es:[bx+40h] ; void *
		push	word ptr es:[bx+3Eh] ; void *
		call	_memcpy
		add	sp, 0Ah

loc_E1B3:				; CODE XREF: sub_DDB8+3B8j
		mov	ax, [bp+var_122]
		add	ax, [bp+var_66]
		mov	dx, [bp-64h]
		push	dx
		push	ax
		call	sub_104F2
		mov	[bp+var_20E], ax
		mov	[bp-20Ch], dx
		mov	[bp+var_76], ax
		mov	[bp+var_74], dx
		sub	si, si
		jmp	short loc_E1ED
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E1D6:				; CODE XREF: sub_DDB8+48Dj
					; sub_DDB8+494j
		mov	di, si
		shl	di, 1
		add	di, si
		shl	di, 2
		les	bx, dword ptr [bp+var_66]
		sub	ax, ax
		mov	es:[bx+di+44h],	ax
		mov	es:[bx+di+42h],	ax

loc_E1EC:				; CODE XREF: sub_DDB8+4B7j
		inc	si

loc_E1ED:				; CODE XREF: sub_DDB8+41Cj
		les	bx, dword ptr [bp+var_66]
		cmp	es:[bx+4], si
		jle	short loc_E274
		mov	di, si
		shl	di, 4
		add	di, [bp+var_6A]
		mov	es, word ptr [bp-68h]
		mov	ax, es:[di+8]
		mov	bx, si
		shl	bx, 1
		add	bx, si
		shl	bx, 2
		mov	cx, es
		add	bx, [bp+var_66]
		mov	es, word ptr [bp-64h]
		mov	es:[bx+46h], ax
		mov	ax, es
		mov	es, cx
		mov	dx, es:[di+0Ah]
		mov	es, ax
		mov	es:[bx+48h], dx
		mov	es, cx
		mov	dx, es:[di+0Ch]
		mov	es, ax
		mov	es:[bx+4Ah], dx
		mov	es, cx
		mov	dx, es:[di+0Eh]
		mov	es, ax
		mov	es:[bx+4Ch], dx
		test	[bp+var_22A], 2
		jnz	short loc_E1D6
		cmp	byte ptr [bp+var_11E], 0
		jnz	short loc_E1D6
		mov	ax, [bp+var_76]
		mov	dx, [bp+var_74]
		mov	es:[bx+42h], ax
		mov	es:[bx+44h], dx
		mov	es, cx
		add	ax, es:[di+4]
		push	dx
		push	ax
		call	sub_104F2
		mov	[bp+var_76], ax
		mov	[bp+var_74], dx
		jmp	loc_E1EC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 4

loc_E274:				; CODE XREF: sub_DDB8+43Cj
		test	[bp+var_22A], 2
		jnz	short loc_E2A8
		cmp	byte ptr [bp+var_11E], 0
		jnz	short loc_E2A8
		push	word ptr [bp-20Ch]
		push	[bp+var_20E]	; void *
		push	0		; int
		push	1		; int
		lea	ax, [bp+var_1F4]
		push	ss
		push	ax		; __int32
		mov	ax, [bp+var_8A]
		mov	dx, [bp+var_88]
		call	sub_12582	; @loader_read
		or	dx, ax
		jnz	short loc_E2A8
		jmp	loc_E6A9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E2A8:				; CODE XREF: sub_DDB8+4C1j
					; sub_DDB8+4C8j ...
		cmp	[bp+var_112], 0
		jz	short loc_E2B2

loc_E2AF:
		jmp	loc_E419
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E2B2:				; CODE XREF: sub_DDB8+4F5j
		test	[bp+var_22A], 9
		jnz	short loc_E2BC
		jmp	loc_E3C8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E2BC:				; CODE XREF: sub_DDB8+4FFj
		les	bx, dword ptr [bp+var_66]
		mov	word ptr es:[bx+6], 0
		test	[bp+var_22A], 8
		jnz	short loc_E2CF
		jmp	loc_E419
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E2CF:				; CODE XREF: sub_DDB8+512j
		sub	si, si
		mov	[bp+var_222], si
		jmp	loc_E3A9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E2D8:				; CODE XREF: sub_DDB8+57Dj
		cmp	[bp+var_2], 4
		jge	short loc_E337
		push	3		; size_t
		mov	ax, [bp+var_2]
		mov	cx, ax
		shl	ax, 1
		add	ax, cx
		add	ax, 5B20h
		push	ds
		push	ax		; size_t
		mov	ax, si
		shl	ax, 1
		add	ax, si
		shl	ax, 1
		add	ax, [bp+var_126]
		mov	dx, [bp-124h]
		mov	cx, ax
		mov	bx, dx
		inc	ax
		inc	ax
		push	dx		; void *
		push	ax		; void *
		mov	di, cx
		mov	word ptr [bp+var_228], di
		mov	word ptr [bp+var_228+2], bx
		call	_memcmp
		add	sp, 0Ah
		or	ax, ax
		jnz	short loc_E32D
		mov	[bp+var_218], 1
		mov	al, byte ptr [bp+var_2]
		les	bx, [bp+var_228]
		mov	es:[bx+5], al

loc_E32D:				; CODE XREF: sub_DDB8+562j
		inc	[bp+var_2]

loc_E330:				; CODE XREF: sub_DDB8+603j
		cmp	[bp+var_218], 0
		jz	short loc_E2D8

loc_E337:				; CODE XREF: sub_DDB8+524j
		cmp	[bp+var_218], 0
		jnz	short loc_E3A8
		push	3		; size_t
		mov	ax, si
		shl	ax, 1
		add	ax, si
		shl	ax, 1
		add	ax, [bp+var_126]
		mov	dx, [bp-124h]
		mov	cx, ax
		mov	bx, dx
		inc	ax
		inc	ax
		push	dx
		push	ax		; size_t
		mov	es, seg_1A726
		assume es:seg120
		mov	di, [bp+var_222]
		mov	al, es:[di+0]
		sub	ah, ah
		mov	dx, ax
		shl	ax, 1
		add	ax, dx
		add	ax, 5B20h	; master_palette
		push	ds		; void *
		push	ax		; void *
		mov	di, cx
		mov	word ptr [bp+var_228], di
		mov	word ptr [bp+var_228+2], bx
		call	_memcpy
		add	sp, 0Ah
		mov	es, seg_1A726
		mov	bx, [bp+var_222]
		mov	al, es:[bx+0]
		les	di, [bp+var_228]
		assume es:nothing
		mov	es:[di+5], al
		lea	ax, [bx+1]
		cmp	ax, 6
		jle	short loc_E3A4
		mov	ax, 6

loc_E3A4:				; CODE XREF: sub_DDB8+5E7j
		mov	[bp+var_222], ax

loc_E3A8:				; CODE XREF: sub_DDB8+584j
		inc	si

loc_E3A9:				; CODE XREF: sub_DDB8+51Dj
		les	bx, dword ptr [bp+var_126]
		cmp	es:[bx], si
		jle	short loc_E3BE
		sub	ax, ax
		mov	[bp+var_218], ax
		mov	[bp+var_2], ax
		jmp	loc_E330
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E3BE:				; CODE XREF: sub_DDB8+5F8j
		push	word ptr [bp-64h]
		push	[bp+var_66]
		push	es
		push	bx
		jmp	short loc_E414
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E3C8:				; CODE XREF: sub_DDB8+501j
		push	word ptr [bp-124h]
		push	[bp+var_126]
		push	word ptr dword_1A274+2
		push	word ptr dword_1A274
		mov	ah, [bp+var_229]
		and	ax, 0FC00h
		call	sub_10B56	; @pal_allocate
		les	bx, dword ptr [bp+var_66]
		mov	es:[bx+6], ax
		or	ax, ax
		jge	short loc_E3F8
		mov	word_1994E, 0FFF7h
		jmp	loc_E6A9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E3F8:				; CODE XREF: sub_DDB8+635j
		test	[bp+var_22A], 2
		jnz	short loc_E419
		cmp	byte ptr [bp+var_11E], 0
		jnz	short loc_E419
		push	word ptr [bp-64h]
		push	[bp+var_66]
		push	word ptr [bp-124h]
		push	[bp+var_126]

loc_E414:				; CODE XREF: sub_DDB8+60Ej
		call	sub_10696	; @sprite_color_translate

loc_E419:				; CODE XREF: sub_DDB8:loc_E2AFj
					; sub_DDB8+514j ...
		cmp	byte ptr [bp+var_11E], 0
		jnz	short loc_E423
		jmp	loc_E69B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E423:				; CODE XREF: sub_DDB8+666j
		mov	ax, [bp+var_72]
		add	ax, [bp+var_66]
		mov	dx, [bp-64h]
		les	bx, dword ptr [bp+var_66]
		mov	es:[bx+36h], ax
		mov	es:[bx+38h], dx
		add	ax, 0FCh ; 'ü'
		mov	es:[bx+2Eh], ax
		mov	es:[bx+30h], dx
		mov	word ptr [bp+var_6E], ax
		mov	word ptr [bp+var_6E+2],	dx
		add	ax, 14h
		mov	es:[bx+32h], ax
		mov	es:[bx+34h], dx
		mov	word ptr [bp+var_5A], ax
		mov	word ptr [bp+var_5A+2],	dx
		sub	si, si
		jmp	short loc_E475
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_E45E:				; CODE XREF: sub_DDB8+6C4j
		mov	di, si
		shl	di, 1
		add	di, si
		shl	di, 1
		mov	al, es:[bx+di+5]
		les	bx, dword ptr [bp+var_66]
		les	bx, es:[bx+36h]
		mov	es:[bx+si], al
		inc	si

loc_E475:				; CODE XREF: sub_DDB8+6A3j
		les	bx, dword ptr [bp+var_126]
		cmp	es:[bx], si
		jg	short loc_E45E
		mov	al, byte ptr [bp+var_11E+1]
		les	bx, [bp+var_6E]
		mov	es:[bx+1], al
		mov	al, [bp+var_1F0]
		mov	es:[bx], al
		mov	cx, ax
		dec	al
		jz	short loc_E49E
		cmp	cl, 2
		jz	short loc_E49E
		jmp	loc_E55C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E49E:				; CODE XREF: sub_DDB8+6DCj
					; sub_DDB8+6E1j
		mov	ax, [bp-1ECh]
		les	bx, [bp+var_6E]
		mov	es:[bx+8], ax
		mov	ax, [bp+var_1E4]
		mov	es:[bx+0Ah], ax
		mov	ax, [bp+var_1E2]
		mov	es:[bx+0Ch], ax
		mov	ax, [bp+var_1EA]
		mov	es:[bx+0Eh], ax
		mov	ax, [bp+var_1E8]
		mov	dx, [bp+var_1E6]
		mov	es:[bx+10h], ax
		mov	es:[bx+12h], dx
		sub	ax, ax
		mov	[bp+var_210], ax
		mov	[bp+var_212], ax
		mov	word ptr [bp+var_12A+2], ax
		mov	word ptr [bp+var_12A], ax
		sub	si, si
		jmp	short loc_E4E9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_E4E8:				; CODE XREF: sub_DDB8+7A1j
		inc	si

loc_E4E9:				; CODE XREF: sub_DDB8+72Dj
		les	bx, dword ptr [bp+var_66]
		cmp	es:[bx+4], si
		jg	short loc_E4F5
		jmp	loc_E600
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E4F5:				; CODE XREF: sub_DDB8+738j
		mov	ax, word ptr [bp+var_12A]
		mov	dx, word ptr [bp+var_12A+2]
		mov	bx, si
		shl	bx, 3
		les	di, [bp+var_5A]
		mov	es:[bx+di], ax
		mov	es:[bx+di+2], dx
		mov	di, si
		shl	di, 4
		mov	cx, bx
		les	bx, dword ptr [bp+var_6A]
		mov	ax, es:[bx+di+4]
		mov	dx, es:[bx+di+6]
		les	bx, [bp+var_5A]
		add	bx, cx
		mov	es:[bx+4], ax
		mov	es:[bx+6], dx
		add	word ptr [bp+var_12A], ax
		adc	word ptr [bp+var_12A+2], dx
		mov	ax, es:[bx+4]
		mov	dx, es:[bx+6]
		cmp	dx, [bp+var_210]
		jg	short loc_E551
		jl	short loc_E549
		cmp	ax, [bp+var_212]
		jnb	short loc_E551

loc_E549:				; CODE XREF: sub_DDB8+789j
		mov	dx, [bp+var_210]
		mov	ax, [bp+var_212]

loc_E551:				; CODE XREF: sub_DDB8+787j
					; sub_DDB8+78Fj
		mov	[bp+var_212], ax
		mov	[bp+var_210], dx
		jmp	short loc_E4E8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_E55C:				; CODE XREF: sub_DDB8+6E3j
		mov	ax, [bp+var_1EE]
		les	bx, [bp+var_6E]
		mov	es:[bx+2], ax
		lea	ax, [bp+var_12A]
		push	ax		; fpos_t *
		push	[bp+var_1EE]	; FILE *
		call	_fgetpos
		add	sp, 4
		mov	ax, word ptr [bp+var_12A]
		mov	dx, word ptr [bp+var_12A+2]

loc_E580:
		les	bx, [bp+var_6E]
		mov	es:[bx+4], ax
		mov	es:[bx+6], dx
		sub	ax, ax
		mov	[bp+var_210], ax
		mov	[bp+var_212], ax
		sub	si, si
		jmp	short loc_E5F7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_E59A:				; CODE XREF: sub_DDB8+846j
		mov	bx, si
		shl	bx, 4
		les	di, dword ptr [bp+var_6A]
		mov	ax, es:[bx+di]
		mov	dx, es:[bx+di+2]
		mov	cx, bx
		mov	bx, si
		shl	bx, 3
		les	di, [bp+var_5A]
		mov	es:[bx+di], ax
		mov	es:[bx+di+2], dx
		mov	ax, bx
		les	bx, dword ptr [bp+var_6A]
		add	bx, cx
		mov	cx, ax
		mov	ax, es:[bx+4]
		mov	dx, es:[bx+6]
		les	bx, [bp+var_5A]
		add	bx, cx
		mov	es:[bx+4], ax
		mov	es:[bx+6], dx
		cmp	dx, [bp+var_210]
		jg	short loc_E5EE
		jl	short loc_E5E6
		cmp	ax, [bp+var_212]
		jnb	short loc_E5EE

loc_E5E6:				; CODE XREF: sub_DDB8+826j
		mov	dx, [bp+var_210]
		mov	ax, [bp+var_212]

loc_E5EE:				; CODE XREF: sub_DDB8+824j
					; sub_DDB8+82Cj
		mov	[bp+var_212], ax
		mov	[bp+var_210], dx
		inc	si

loc_E5F7:				; CODE XREF: sub_DDB8+7DFj
		les	bx, dword ptr [bp+var_66]
		cmp	es:[bx+4], si
		jg	short loc_E59A

loc_E600:				; CODE XREF: sub_DDB8+73Aj
		test	[bp+var_22A], 2
		jz	short loc_E60A
		jmp	loc_E68E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E60A:				; CODE XREF: sub_DDB8+84Dj
		mov	ax, [bp-124h]
		or	ax, [bp+var_126]
		jz	short loc_E621
		push	word ptr [bp-124h]
		push	[bp+var_126]
		call	sub_CFA0	; @mem_free

loc_E621:				; CODE XREF: sub_DDB8+85Aj
		sub	ax, ax
		mov	[bp-124h], ax
		mov	[bp+var_126], ax
		mov	ax, [bp-68h]
		or	ax, [bp+var_6A]
		jz	short loc_E63E
		push	word ptr [bp-68h]
		push	[bp+var_6A]
		call	sub_CFA0	; @mem_free

loc_E63E:				; CODE XREF: sub_DDB8+879j
		sub	ax, ax
		mov	[bp-68h], ax
		mov	[bp+var_6A], ax
		push	ds
		push	offset aArena	; "$arena$"
		mov	ax, [bp+var_212]
		mov	dx, [bp+var_210]
		call	sub_CDC6	; äã­ªæ¨ï @mem_get_name
		les	bx, dword ptr [bp+var_66]
		mov	es:[bx+3Ah], ax
		mov	es:[bx+3Ch], dx
		mov	ax, dx
		or	ax, es:[bx+3Ah]
		jz	short loc_E6A9
		push	4		; size_t
		lea	ax, [bp+var_212]
		push	ss
		push	ax		; size_t
		mov	ax, [bp+var_66]
		mov	dx, [bp-64h]
		add	ax, 8
		push	dx		; void *
		push	ax		; void *
		call	_memcpy
		add	sp, 0Ah
		mov	word ptr [bp+var_1F4], 0
		jmp	short loc_E69B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_E68E:				; CODE XREF: sub_DDB8+84Fj
		les	bx, dword ptr [bp+var_66]
		sub	ax, ax
		mov	es:[bx+3Ch], ax
		mov	es:[bx+3Ah], ax

loc_E69B:				; CODE XREF: sub_DDB8+668j
					; sub_DDB8+8D3j
		mov	ax, [bp+var_66]
		mov	dx, [bp-64h]
		mov	[bp+var_21C], ax
		mov	[bp+var_21A], dx

loc_E6A9:				; CODE XREF: sub_DDB8+D3j sub_DDB8+FFj ...
		cmp	word ptr [bp+var_1F4], 0
		jz	short loc_E6BB
		lea	ax, [bp+var_1F4]
		push	ss
		push	ax
		call	sub_124EE	; @loader_close

loc_E6BB:				; CODE XREF: sub_DDB8+8F6j
		mov	ax, [bp-124h]
		or	ax, [bp+var_126]
		jz	short loc_E6D2
		push	word ptr [bp-124h]
		push	[bp+var_126]
		call	sub_CFA0	; @mem_free

loc_E6D2:				; CODE XREF: sub_DDB8+90Bj
		mov	ax, [bp-68h]
		or	ax, [bp+var_6A]
		jz	short loc_E6E5
		push	word ptr [bp-68h]
		push	[bp+var_6A]
		call	sub_CFA0	; @mem_free

loc_E6E5:				; CODE XREF: sub_DDB8+920j
		mov	ax, [bp-64h]
		or	ax, [bp+var_66]
		jz	short loc_E710
		mov	ax, [bp+var_66]
		mov	dx, [bp-64h]
		cmp	word_19954, ax	; sprite_force_memory
		jnz	short loc_E6FF
		cmp	word_19956, dx
		jz	short loc_E710

loc_E6FF:				; CODE XREF: sub_DDB8+93Fj
		mov	cx, [bp+var_21A]
		or	cx, [bp+var_21C]
		jnz	short loc_E710
		push	dx
		push	ax
		call	sub_CFA0	; @mem_free

loc_E710:				; CODE XREF: sub_DDB8+933j
					; sub_DDB8+945j ...
		mov	ax, [bp+var_21C]

loc_E714:
		mov	dx, [bp+var_21A]
		pop	si
		pop	di
		leave
		retf
sub_DDB8	endp

seg059		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg060		segment public 'CODE'
		assume cs:seg060
		;org 0Ch
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_E71C	proc far		; CODE XREF: seg016:0650P

var_2E		= word ptr -2Eh
var_2C		= word ptr -2Ch
var_2A		= word ptr -2Ah
var_28		= word ptr -28h
var_26		= word ptr -26h
var_24		= word ptr -24h
var_22		= word ptr -22h
var_20		= word ptr -20h
var_1E		= word ptr -1Eh
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		enter	28h, 0
		push	dx
		push	bx
		push	ax
		push	di
		push	si
		mov	ax, [bx+2]
		dec	ax
		mov	[bp+var_20], ax
		mov	ax, [bx]
		dec	ax
		mov	[bp+var_26], ax
		mov	dx, 1
		mov	ax, [bp+var_2E]
		or	ax, ax
		jns	short loc_E73F
		mov	dx, 0FFFFh

loc_E73F:				; CODE XREF: sub_E71C+1Ej
		mov	[bp+var_10], dx
		and	ax, 7FFFh
		mov	[bp+var_2E], ax
		mov	bx, [bp+var_2E]
		mov	ax, bx
		shl	bx, 1
		add	bx, ax
		shl	bx, 2
		add	bx, [bp+arg_2]
		mov	es, [bp+arg_4]
		add	bx, 36h	; '6'
		mov	[bp+var_E], bx
		mov	[bp+var_C], es

loc_E763:
		mov	ax, es:[bx]
		mov	dx, es:[bx+2]
		mov	word ptr [bp+var_1C], ax
		mov	word ptr [bp+var_1C+2],	dx
		mov	si, [bp+var_2C]
		mov	ax, [si+4]
		mov	dx, [si+6]
		mov	word ptr [bp+var_18], ax
		mov	word ptr [bp+var_18+2],	dx
		mov	ax, [si+2]
		mov	[bp+var_2], ax
		mov	ax, es:[bx+8]
		mov	[bp+var_12], ax
		mov	ax, es:[bx+0Ah]
		mov	[bp+var_14], ax
		push	ds
		mov	bx, [bp+var_12]
		xor	cx, cx
		mov	ax, [bp+var_2A]
		mov	dx, ax
		add	dx, bx
		dec	dx
		or	ax, ax
		jge	short loc_E7A9
		add	bx, ax
		sub	cx, ax

loc_E7A9:				; CODE XREF: sub_E71C+87j
		sub	dx, [bp+var_20]
		jle	short loc_E7B0
		sub	bx, dx

loc_E7B0:				; CODE XREF: sub_E71C+90j
		mov	[bp+var_22], cx
		mov	[bp+var_6], bx
		add	cx, bx
		mov	[bp+var_1E], cx
		or	bx, bx
		jg	short loc_E7C2
		jmp	loc_E922
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E7C2:				; CODE XREF: sub_E71C+A1j
		cmp	[bp+var_10], 1
		jz	short loc_E7E0
		mov	di, [bp+var_12]
		add	ax, di
		dec	ax
		mov	[bp+var_2A], ax
		sub	di, cx
		neg	di
		mov	[bp+var_22], di
		neg	di
		add	di, [bp+var_6]
		mov	[bp+var_1E], di

loc_E7E0:				; CODE XREF: sub_E71C+AAj
		mov	bx, [bp+var_14]
		xor	cx, cx
		mov	ax, [bp+arg_0]
		mov	dx, ax
		add	dx, bx
		dec	dx
		or	ax, ax
		jge	short loc_E7F5
		add	bx, ax
		sub	cx, ax

loc_E7F5:				; CODE XREF: sub_E71C+D3j
		sub	dx, [bp+var_26]
		jle	short loc_E7FC
		sub	bx, dx

loc_E7FC:				; CODE XREF: sub_E71C+DCj
		mov	[bp+var_28], cx
		mov	[bp+var_A], bx
		push	cx
		add	cx, bx
		mov	[bp+var_24], cx
		pop	cx
		or	bx, bx
		jg	short loc_E810
		jmp	loc_E922
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E810:				; CODE XREF: sub_E71C+EFj
		les	bx, [bp+var_18]
		mov	dx, es
		mov	di, [bp+var_2]
		add	cx, ax
		jz	short loc_E82A

loc_E81C:				; CODE XREF: sub_E71C:loc_E828j
		add	bx, di
		jns	short loc_E828
		sub	bx, 7000h
		add	dx, 700h

loc_E828:				; CODE XREF: sub_E71C+102j
		loop	loc_E81C

loc_E82A:				; CODE XREF: sub_E71C+FEj
		add	bx, [bp+var_2A]
		add	bx, [bp+var_22]
		mov	es, dx
		assume es:nothing
		lds	si, [bp+var_1C]
		mov	ax, [bp+var_22]
		imul	[bp+var_10]
		mov	cx, ax
		mov	di, [bp+var_1E]
		mov	dx, 0FFFFh

loc_E843:				; CODE XREF: sub_E71C:loc_E91Fj
		mov	[bp+var_4], 0
		inc	dx
		cmp	dx, [bp+var_24]
		jl	short loc_E852
		jmp	loc_E922
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_E852:				; CODE XREF: sub_E71C+130j
		cmp	dx, [bp+var_28]
		jge	short loc_E85A
		jmp	loc_E914
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E85A:				; CODE XREF: sub_E71C+139j
		push	bx
		push	dx
		xor	dx, dx
		lodsb
		cmp	al, 0FFh
		jz	short loc_E86A
		cmp	al, 0FDh ; 'ı'
		jz	short loc_E872
		jmp	short loc_E8AA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_E86A:				; CODE XREF: sub_E71C+145j
		mov	[bp+var_4], 0FFFFh
		jmp	loc_E902
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E872:				; CODE XREF: sub_E71C+149j
					; sub_E71C:loc_E8A8j
		cmp	dx, di
		jl	short loc_E87A
		jmp	loc_E902
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_E87A:				; CODE XREF: sub_E71C+158j
		lodsb
		cmp	al, 0FFh
		jnz	short loc_E886

loc_E87F:				; CODE XREF: sub_E71C:loc_E8BCj
		mov	[bp+var_4], 0FFFFh
		jmp	short loc_E902
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E886:				; CODE XREF: sub_E71C+161j
		mov	ah, al
		lodsb

loc_E889:				; CODE XREF: sub_E71C+18Aj
		cmp	dx, cx
		jl	short loc_E8A1
		cmp	dx, di
		jge	short loc_E8A1
		cmp	al, 0FDh ; 'ı'
		jz	short loc_E89E
		cmp	byte ptr es:[bx], 0
		jnz	short loc_E89E
		mov	es:[bx], al

loc_E89E:				; CODE XREF: sub_E71C+177j
					; sub_E71C+17Dj
		add	bx, [bp+var_10]

loc_E8A1:				; CODE XREF: sub_E71C+16Fj
					; sub_E71C+173j
		inc	dx
		dec	ah
		jz	short loc_E8A8
		jmp	short loc_E889
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E8A8:				; CODE XREF: sub_E71C+188j
		jmp	short loc_E872
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E8AA:				; CODE XREF: sub_E71C+14Bj
					; sub_E71C:loc_E8E2j ...
		cmp	dx, di
		jl	short loc_E8B0
		jmp	short loc_E902
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E8B0:				; CODE XREF: sub_E71C+190j
		lodsb
		cmp	al, 0FFh
		jz	short loc_E8BC
		cmp	al, 0FEh ; 'ş'
		jz	short loc_E8BE
		jmp	short loc_E8E6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_E8BC:				; CODE XREF: sub_E71C+197j
		jmp	short loc_E87F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E8BE:				; CODE XREF: sub_E71C+19Bj
		lodsb
		mov	ah, al
		lodsb

loc_E8C2:				; CODE XREF: sub_E71C+1C3j
		cmp	dx, cx
		jl	short loc_E8DA
		cmp	dx, di
		jge	short loc_E8DA
		cmp	al, 0FDh ; 'ı'

loc_E8CC:
		jz	short loc_E8D7
		cmp	byte ptr es:[bx], 0
		jnz	short loc_E8D7
		mov	es:[bx], al

loc_E8D7:				; CODE XREF: sub_E71C:loc_E8CCj
					; sub_E71C+1B6j
		add	bx, [bp+var_10]

loc_E8DA:				; CODE XREF: sub_E71C+1A8j
					; sub_E71C+1ACj
		inc	dx
		dec	ah
		jz	short loc_E8E2
		jmp	short loc_E8C2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_E8E2:				; CODE XREF: sub_E71C+1C1j
		jmp	short loc_E8AA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jmp	short loc_E8FE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E8E6:				; CODE XREF: sub_E71C+19Dj
		cmp	dx, cx
		jl	short loc_E8FE
		cmp	dx, di
		jge	short loc_E8FE
		cmp	al, 0FDh ; 'ı'
		jz	short loc_E8FB
		cmp	byte ptr es:[bx], 0
		jnz	short loc_E8FB
		mov	es:[bx], al

loc_E8FB:				; CODE XREF: sub_E71C+1D4j
					; sub_E71C+1DAj
		add	bx, [bp+var_10]

loc_E8FE:				; CODE XREF: sub_E71C+1C8j
					; sub_E71C+1CCj ...
		inc	dx
		jmp	short loc_E8AA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_E902:				; CODE XREF: sub_E71C+153j
					; sub_E71C+15Aj ...
		pop	dx
		pop	bx
		add	bx, [bp+var_2]
		jns	short loc_E914
		sub	bx, 7000h
		mov	ax, es
		add	ax, 700h
		mov	es, ax
		assume es:nothing

loc_E914:				; CODE XREF: sub_E71C+13Bj
					; sub_E71C+1EBj
		cmp	[bp+var_4], 0FFFFh
		jz	short loc_E91F

loc_E91A:				; CODE XREF: sub_E71C+201j
		lodsb
		cmp	al, 0FFh
		jnz	short loc_E91A

loc_E91F:				; CODE XREF: sub_E71C+1FCj
		jmp	loc_E843
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_E922:				; CODE XREF: sub_E71C+A3j sub_E71C+F1j ...
		pop	ds
		pop	si

loc_E924:
		pop	di
		leave
		retf	6
sub_E71C	endp

seg060		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg061		segment public 'CODE'
		assume cs:seg061
		;org 9
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_E92A	proc far		; CODE XREF: seg016:066EP

var_174		= word ptr -174h
var_172		= word ptr -172h
var_170		= word ptr -170h
var_16E		= word ptr -16Eh
var_16C		= word ptr -16Ch
var_16A		= word ptr -16Ah
var_168		= word ptr -168h
var_166		= word ptr -166h
var_164		= word ptr -164h
var_162		= word ptr -162h
var_160		= word ptr -160h
var_15E		= word ptr -15Eh
var_15C		= dword	ptr -15Ch
var_158		= dword	ptr -158h
var_154		= word ptr -154h
var_152		= byte ptr -152h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		enter	16Eh, 0
		push	dx
		push	bx
		push	ax
		push	di
		push	si
		mov	ax, [bx+2]
		dec	ax
		mov	[bp+var_162], ax
		mov	ax, [bx]
		dec	ax
		mov	[bp+var_16C], ax
		mov	dx, 1
		mov	ax, [bp+var_174]
		or	ax, ax
		jns	short loc_E950
		mov	dx, 0FFFFh

loc_E950:				; CODE XREF: sub_E92A+21j
		mov	[bp+var_10], dx
		and	ax, 7FFFh
		mov	[bp+var_174], ax
		mov	bx, [bp+var_174]
		mov	ax, bx
		shl	bx, 1
		add	bx, ax
		shl	bx, 2
		add	bx, [bp+arg_4]
		mov	es, [bp+arg_6]
		add	bx, 36h	; '6'
		mov	[bp+var_E], bx

loc_E973:
		mov	[bp+var_C], es
		mov	ax, es:[bx]
		mov	dx, es:[bx+2]
		mov	word ptr [bp+var_15C], ax
		mov	word ptr [bp+var_15C+2], dx
		mov	si, [bp+var_172]
		mov	ax, [si+4]
		mov	dx, [si+6]
		mov	word ptr [bp+var_158], ax
		mov	word ptr [bp+var_158+2], dx
		mov	ax, [si+2]
		mov	[bp+var_2], ax
		mov	ax, es:[bx+8]
		mov	[bp+var_15E], ax
		mov	cx, es:[bx+0Ah]
		mov	[bp+var_164], cx
		cmp	ax, cx
		jge	short loc_E9B3
		mov	ax, cx

loc_E9B3:				; CODE XREF: sub_E92A+85j
		mov	[bp+var_166], ax
		push	ds
		xor	di, di
		mov	si, [bp+arg_0]
		xor	ax, ax
		mov	[bp+var_12], ax
		mov	[bp+var_154], ax
		mov	ax, 32h	; '2'
		mov	bx, [bp+var_15E]
		mov	dx, [bp+var_164]

loc_E9D1:				; CODE XREF: sub_E92A+D2j
		add	ax, si
		cmp	ax, 64h	; 'd'
		jl	short loc_E9F2
		mov	[bp+di+var_152], 0FFh
		sub	ax, 64h	; 'd'
		cmp	di, bx
		jge	short loc_E9E7
		inc	[bp+var_12]

loc_E9E7:				; CODE XREF: sub_E92A+B8j
		cmp	di, dx
		jge	short loc_E9F7
		inc	[bp+var_154]
		jmp	short loc_E9F7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_E9F2:				; CODE XREF: sub_E92A+ACj
		mov	[bp+di+var_152], 0

loc_E9F7:				; CODE XREF: sub_E92A+BFj sub_E92A+C5j
		inc	di
		cmp	di, [bp+var_166]
		jl	short loc_E9D1
		mov	ax, [bp+var_12]
		shr	ax, 1
		sub	[bp+var_170], ax
		mov	ax, [bp+var_154]
		sub	[bp+arg_2], ax
		inc	[bp+arg_2]
		mov	bx, [bp+var_12]
		xor	cx, cx
		mov	ax, [bp+var_170]
		mov	dx, ax
		add	dx, bx
		dec	dx
		or	ax, ax
		jge	short loc_EA27
		add	bx, ax
		sub	cx, ax

loc_EA27:				; CODE XREF: sub_E92A+F7j
		sub	dx, [bp+var_162]
		jle	short loc_EA2F
		sub	bx, dx

loc_EA2F:				; CODE XREF: sub_E92A+101j
		mov	[bp+var_168], cx
		mov	[bp+var_6], bx
		add	cx, bx
		mov	[bp+var_160], cx
		or	bx, bx
		jg	short loc_EA44
		jmp	loc_EC02
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_EA44:				; CODE XREF: sub_E92A+114j
		cmp	[bp+var_10], 1
		jz	short loc_EA65
		mov	di, [bp+var_12]
		add	ax, di
		dec	ax
		mov	[bp+var_170], ax
		sub	di, cx
		neg	di
		mov	[bp+var_168], di
		neg	di
		add	di, [bp+var_6]
		mov	[bp+var_160], di

loc_EA65:				; CODE XREF: sub_E92A+11Ej
		mov	bx, [bp+var_154]
		xor	cx, cx
		mov	ax, [bp+arg_2]
		mov	dx, ax
		add	dx, bx
		dec	dx
		or	ax, ax
		jge	short loc_EA7B
		add	bx, ax
		sub	cx, ax

loc_EA7B:				; CODE XREF: sub_E92A+14Bj
		sub	dx, [bp+var_16C]
		jle	short loc_EA83
		sub	bx, dx

loc_EA83:				; CODE XREF: sub_E92A+155j
		mov	[bp+var_16E], cx
		mov	[bp+var_A], bx
		push	cx
		add	cx, bx
		mov	[bp+var_16A], cx
		pop	cx
		or	bx, bx
		jg	short loc_EA9A
		jmp	loc_EC02
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_EA9A:				; CODE XREF: sub_E92A+16Aj
		les	bx, [bp+var_158]
		mov	dx, es
		mov	di, [bp+var_2]
		add	cx, ax
		jz	short loc_EAB5

loc_EAA7:				; CODE XREF: sub_E92A:loc_EAB3j
		add	bx, di
		jns	short loc_EAB3
		sub	bx, 7000h
		add	dx, 700h

loc_EAB3:				; CODE XREF: sub_E92A+17Fj
		loop	loc_EAA7

loc_EAB5:				; CODE XREF: sub_E92A+17Bj
		add	bx, [bp+var_170]
		add	bx, [bp+var_168]
		mov	es, dx
		assume es:nothing
		lds	si, [bp+var_15C]
		mov	ax, [bp+var_168]
		imul	[bp+var_10]
		mov	[bp+var_168], ax
		mov	di, 0FFFFh
		mov	dx, 0FFFFh

loc_EAD4:				; CODE XREF: sub_E92A:loc_EBFEj
		mov	[bp+var_4], 0
		inc	di
		cmp	di, [bp+var_164]
		jl	short loc_EAE4
		jmp	loc_EC02
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_EAE4:				; CODE XREF: sub_E92A+1B4j
		mov	al, [bp+di+var_152]
		or	al, al
		jnz	short loc_EAF0
		jmp	loc_EBF3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_EAF0:				; CODE XREF: sub_E92A+1C0j
		inc	dx
		cmp	dx, [bp+var_16A]
		jl	short loc_EAFA
		jmp	loc_EC02
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EAFA:				; CODE XREF: sub_E92A+1CBj
		cmp	dx, [bp+var_16E]
		jge	short loc_EB04
		jmp	loc_EBF3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_EB04:				; CODE XREF: sub_E92A+1D4j
		push	di
		xor	di, di
		push	bx
		push	dx
		xor	dx, dx
		lodsb
		cmp	al, 0FFh
		jz	short loc_EB16
		cmp	al, 0FDh ; 'ı'
		jz	short loc_EB1E
		jmp	short loc_EB6A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EB16:				; CODE XREF: sub_E92A+1E4j
		mov	[bp+var_4], 0FFFFh
		jmp	loc_EBE0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EB1E:				; CODE XREF: sub_E92A+1E8j
					; sub_E92A:loc_EB68j
		cmp	dx, [bp+var_160]
		jl	short loc_EB28
		jmp	loc_EBE0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_EB28:				; CODE XREF: sub_E92A+1F8j
		lodsb
		cmp	al, 0FFh
		jnz	short loc_EB36

loc_EB2D:				; CODE XREF: sub_E92A:loc_EB7Ej
		mov	[bp+var_4], 0FFFFh
		jmp	loc_EBE0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_EB36:				; CODE XREF: sub_E92A+201j
		mov	ah, al
		lodsb

loc_EB39:				; CODE XREF: sub_E92A+23Cj
		mov	cl, [bp+di+var_152]
		or	cl, cl
		jnz	short loc_EB44
		jmp	short loc_EB61
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_EB44:				; CODE XREF: sub_E92A+215j
		cmp	dx, [bp+var_168]
		jl	short loc_EB60
		cmp	dx, [bp+var_160]
		jge	short loc_EB60
		cmp	al, 0FDh ; 'ı'
		jz	short loc_EB5D
		cmp	byte ptr es:[bx], 0
		jnz	short loc_EB5D
		mov	es:[bx], al

loc_EB5D:				; CODE XREF: sub_E92A+228j
					; sub_E92A+22Ej
		add	bx, [bp+var_10]

loc_EB60:				; CODE XREF: sub_E92A+21Ej
					; sub_E92A+224j
		inc	dx

loc_EB61:				; CODE XREF: sub_E92A+217j
		inc	di
		dec	ah
		jz	short loc_EB68
		jmp	short loc_EB39
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EB68:				; CODE XREF: sub_E92A+23Aj
		jmp	short loc_EB1E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EB6A:				; CODE XREF: sub_E92A+1EAj
					; sub_E92A:loc_EBB2j ...
		cmp	dx, [bp+var_160]
		jl	short loc_EB72
		jmp	short loc_EBE0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EB72:				; CODE XREF: sub_E92A+244j
		lodsb
		cmp	al, 0FFh
		jz	short loc_EB7E
		cmp	al, 0FEh ; 'ş'
		jz	short loc_EB80
		jmp	short loc_EBB6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_EB7E:				; CODE XREF: sub_E92A+24Bj
		jmp	short loc_EB2D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EB80:				; CODE XREF: sub_E92A+24Fj
		lodsb
		mov	ah, al
		lodsb

loc_EB84:				; CODE XREF: sub_E92A+286j
		mov	cl, [bp+di+var_152]
		or	cl, cl
		jnz	short loc_EB8E
		jmp	short loc_EBAB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EB8E:				; CODE XREF: sub_E92A+260j
		cmp	dx, [bp+var_168]
		jl	short loc_EBAA
		cmp	dx, [bp+var_160]
		jge	short loc_EBAA
		cmp	al, 0FDh ; 'ı'
		jz	short loc_EBA7
		cmp	byte ptr es:[bx], 0
		jnz	short loc_EBA7
		mov	es:[bx], al

loc_EBA7:				; CODE XREF: sub_E92A+272j
					; sub_E92A+278j
		add	bx, [bp+var_10]

loc_EBAA:				; CODE XREF: sub_E92A+268j
					; sub_E92A+26Ej
		inc	dx

loc_EBAB:				; CODE XREF: sub_E92A+262j
		inc	di

loc_EBAC:
		dec	ah
		jz	short loc_EBB2
		jmp	short loc_EB84
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EBB2:				; CODE XREF: sub_E92A+284j
		jmp	short loc_EB6A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jmp	short loc_EBDC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EBB6:				; CODE XREF: sub_E92A+251j
		mov	cl, [bp+di+var_152]
		or	cl, cl
		jnz	short loc_EBC0
		jmp	short loc_EBDD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EBC0:				; CODE XREF: sub_E92A+292j
		cmp	dx, [bp+var_168]
		jl	short loc_EBDC
		cmp	dx, [bp+var_160]
		jge	short loc_EBDC
		cmp	al, 0FDh ; 'ı'
		jz	short loc_EBD9
		cmp	byte ptr es:[bx], 0
		jnz	short loc_EBD9
		mov	es:[bx], al

loc_EBD9:				; CODE XREF: sub_E92A+2A4j
					; sub_E92A+2AAj
		add	bx, [bp+var_10]

loc_EBDC:				; CODE XREF: sub_E92A+28Aj
					; sub_E92A+29Aj ...
		inc	dx

loc_EBDD:				; CODE XREF: sub_E92A+294j
		inc	di
		jmp	short loc_EB6A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EBE0:				; CODE XREF: sub_E92A+1F1j
					; sub_E92A+1FAj ...
		pop	dx
		pop	bx
		pop	di
		add	bx, [bp+var_2]
		jns	short loc_EBF3
		sub	bx, 7000h
		mov	ax, es
		add	ax, 700h
		mov	es, ax
		assume es:nothing

loc_EBF3:				; CODE XREF: sub_E92A+1C2j
					; sub_E92A+1D6j ...
		cmp	[bp+var_4], 0FFFFh
		jz	short loc_EBFE

loc_EBF9:				; CODE XREF: sub_E92A+2D2j
		lodsb
		cmp	al, 0FFh
		jnz	short loc_EBF9

loc_EBFE:				; CODE XREF: sub_E92A+2CDj
		jmp	loc_EAD4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_EC02:				; CODE XREF: sub_E92A+116j
					; sub_E92A+16Cj ...
		pop	ds
		pop	si

loc_EC04:
		pop	di
		leave
		retf	8
sub_E92A	endp

seg061		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg062		segment public 'CODE'
		assume cs:seg062
		;org 9
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_EC0A(int,int,void *)
sub_EC0A	proc far		; CODE XREF: sub_2516+4CP

var_2		= word ptr -2
arg_0		= word ptr  6

		enter	2, 0
		push	di
		mov	[bp+var_2], 1
		push	ds		; int
		push	bx		; int
		lea	bx, unk_19958
		call	sub_2A74	; ¢(r)§¬(r)¦­(r),(r)âªàëâ¨¥ viceroy.pal
		mov	di, ax
		or	di, di
		jz	short loc_EC43
		push	word ptr [bp+8]
		push	[bp+arg_0]	; void *
		push	0		; int
		push	1		; int
		mov	ax, 300h	; 768 -	¢(r)§¬(r)¦­(r),¨¬¥¥âáï ¢ ¢¨¤ã	¬¨­¨¬.à §¬¥à viceroy.pal
		cwd			; int
		mov	bx, di
		call	sub_BCA0	; äã­ªæ¨ï @fileio_fread_f
		or	dx, ax
		jz	short loc_EC43	; ¬.¡.¯¥à¥å(r)¤ ­  § ªàëâ¨¥ viceroy.pal ¬¥­ìè¥ 768 ¡ (c)â(r)¢
		mov	[bp+var_2], 0

loc_EC43:				; CODE XREF: sub_EC0A+19j sub_EC0A+32j
		or	di, di
		jz	short loc_EC50	; ¬.¡.(r)§­ ç ¥â ãá¯¥è­(r)áâì ¢ë¯(r)"­-ï ¯à(r)£¨
		push	di		; FILE *
		call	_fclose
		add	sp, 2

loc_EC50:				; CODE XREF: sub_EC0A+3Bj
		mov	ax, [bp+var_2]	; ¬.¡.(r)§­ ç ¥â ãá¯¥è­(r)áâì ¢ë¯(r)"­-ï ¯à(r)£¨

loc_EC53:
		pop	di

locret_EC54:
		leave
		retf	4
sub_EC0A	endp

seg062		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg063		segment public 'CODE'
		assume cs:seg063
		;org 8
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_EC58	proc far		; CODE XREF: sub_2516+24P
					; sub_2516+2B7P ...

arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	0, 0		; ä-ï video_init
		mov	ax, [bp+arg_0]
		mov	word_1A836, ax	; video_mode
		jmp	short loc_EC65
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EC65:				; CODE XREF: sub_EC58+Aj
		cmp	[bp+arg_2], 0
		jz	short locret_EC72 ; ¥á"¨ ­(r)"ì
		mov	ax, [bp+arg_0]	; arg_0	íâ(r) 13 ¢ sub_2516
		xor	ah, ah
		int	10h		; - VIDEO - SET	VIDEO MODE
					; AL = mode

locret_EC72:				; CODE XREF: sub_EC58+11j
		leave
		retf
sub_EC58	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_EC74	proc far		; CODE XREF: sub_2516+C6P sub_C384+29P

arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h
arg_C		= word ptr  12h
arg_E		= word ptr  14h

		enter	4, 0
		push	ds		; ä-ï video_update ­¥¯(r)áà­(r) (r)â(r)¡à ¦ ¥â
		push	es		; ¯¥à¢ãî § áâ ¢ªã
		push	si
		push	di
		les	di, [bp+arg_0]
		mov	bx, es:[di+2]
		mov	si, es:[di+4]
		mov	cx, es:[di+6]
		mov	ax, [bp+arg_6]
		mul	bx
		shl	dx, 0Ch
		add	cx, dx
		mov	dx, ax
		and	dx, 0FFF0h
		shr	dx, 4
		add	cx, dx
		and	ax, 0Fh

loc_ECA2:
		add	si, ax
		add	si, [bp+arg_4]
		mov	ax, 0A000h
		mov	es, ax
		assume es:nothing

loc_ECAC:
		mov	ax, 140h
		mul	[bp+arg_A]
		mov	di, [bp+arg_8]
		add	di, ax
		mov	dx, [bp+arg_C]
		sub	bx, dx
		mov	ax, [bp+arg_E]
		push	bp
		mov	bp, 140h
		sub	bp, dx
		mov	ds, cx
		or	ax, ax
		jnz	short loc_ECCE
		jmp	short loc_ED00
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_ECCE:				; CODE XREF: sub_EC74+55j
		shr	dx, 1
		jnb	short loc_ECE5	; ­¥â,íâ(r) jnc,¨	âãâ ­ ¢¥à­(r) ¢á¥£¤  ¡ã¤¥â ¯¥à¥å(r)¤?

loc_ECD2:				; CODE XREF: sub_EC74+6Cj
		or	dx, dx
		jz	short loc_ECDA
		mov	cx, dx
		rep movsw

loc_ECDA:				; CODE XREF: sub_EC74+60j
		movsb
		add	si, bx
		add	di, bp
		dec	ax
		jnz	short loc_ECD2
		jmp	short loc_ED00
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_ECE5:				; CODE XREF: sub_EC74+5Cj
		jz	short loc_ED00

loc_ECE7:				; CODE XREF: sub_EC74+8Aj
		mov	cx, dx
		rep movsw		; ¢¨¤¨¬(r),ª(r)¯¨à-¥ ¢ ¢¨¤¥(r)¯ ¬ïâì
		add	si, bx
		jns	short loc_ECFB	; ¥á"¨ ­¥â §­ ª !
		sub	si, 8000h	; 32768
		mov	cx, ds		; ­ ¢¥à­(r),íâ(r) ¨§¬¥­-¥ ds:si §­ ç¨â,çâ(r) äà¥(c)¬¡ãää¥à ­¥ ¬.§ ­¨¬ âì ¯(r)¤àï¤	¡(r)"ìè¥ 32768 ¡ (c)â(r)¢?
		add	cx, 800h	; 2048
		mov	ds, cx
		assume ds:nothing

loc_ECFB:				; CODE XREF: sub_EC74+79j
		add	di, bp
		dec	ax
		jnz	short loc_ECE7

loc_ED00:				; CODE XREF: sub_EC74+57j sub_EC74+6Ej ...
		pop	bp
		pop	di
		pop	si
		pop	es
		assume es:nothing

loc_ED04:
		pop	ds
		assume ds:dseg
		leave
		retf
sub_EC74	endp

seg063		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg064		segment public 'CODE'
		assume cs:seg064
		;org 7
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_ED08	proc near		; CODE XREF: sub_F0D6+6Bp sub_F0D6+77p

var_34		= word ptr -34h
var_30		= word ptr -30h
var_2E		= word ptr -2Eh
var_2A		= word ptr -2Ah
var_28		= byte ptr -28h

		enter	2Eh, 0		; ­¥â á¨¬¢.¨¬¥­¨
		push	dx
		push	ax
		push	bx
		push	si		; char *
		mov	[bp+var_2A], 0FFFFh
		push	ds		; int
		push	ax		; int
		lea	bx, unk_19994	; aRt
		call	sub_2A74	; @env_open
		mov	[bp+var_2E], ax
		or	ax, ax
		jz	short loc_ED95
		mov	word ptr [bp-2Ch], 1
		jmp	short loc_ED31
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_ED2E:				; CODE XREF: sub_ED08:loc_ED53j
		inc	word ptr [bp-2Ch]

loc_ED31:				; CODE XREF: sub_ED08+24j
		mov	ax, [bp+var_30]
		cmp	[bp-2Ch], ax
		jg	short loc_ED58
		mov	bx, [bp+var_2E]
		test	byte ptr [bx+6], 10h
		jnz	short loc_ED95
		push	bx		; FILE *
		push	24h ; '$'       ; int
		lea	ax, [bp+var_28]
		push	ax		; char *
		call	_fgets
		add	sp, 6
		or	ax, ax

loc_ED53:
		jnz	short loc_ED2E
		jmp	short loc_ED95
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_ED58:				; CODE XREF: sub_ED08+2Fj
		mov	word ptr [bp-2Ch], 0
		jmp	short loc_ED70
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_ED60:				; CODE XREF: sub_ED08+77j
		mov	si, [bp-2Ch]
		cmp	[bp+si+var_28],	20h ; ' '
		jge	short loc_ED6D
		mov	[bp+si+var_28],	0

loc_ED6D:				; CODE XREF: sub_ED08+5Fj
		inc	word ptr [bp-2Ch]

loc_ED70:				; CODE XREF: sub_ED08+55j
		lea	ax, [bp+var_28]
		push	ax		; char *
		call	_strlen
		add	sp, 2
		cmp	ax, [bp-2Ch]
		jg	short loc_ED60
		lea	ax, [bp+var_28]
		push	ax		; char *
		push	[bp+var_34]	; char *
		call	_strcpy
		add	sp, 4
		mov	[bp+var_2A], 0

loc_ED95:				; CODE XREF: sub_ED08+1Dj sub_ED08+38j ...
		cmp	[bp+var_2E], 0
		jz	short loc_EDA6
		push	[bp+var_2E]	; FILE *
		call	_fclose
		add	sp, 2

loc_EDA6:				; CODE XREF: sub_ED08+91j
		mov	ax, [bp+var_2A]
		pop	si
		leave
		retn
sub_ED08	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_EDAC	proc far		; CODE XREF: sub_EE56+257p

var_58		= word ptr -58h
var_54		= word ptr -54h
var_52		= word ptr -52h
var_50		= byte ptr -50h

		enter	58h, 0
		push	bx		; size_t
		push	si		; FILE *
		mov	[bp+var_52], 0FFFFh
		push	ds		; int
		push	bx		; int
		lea	bx, unk_199F2
		call	sub_2A74
		mov	[bp+var_58], ax
		or	ax, ax
		jz	short loc_EE41
		mov	[bp+var_54], 0FFFFh

loc_EDCE:				; CODE XREF: sub_EDAC+93j
		mov	bx, [bp+var_58]
		test	byte ptr [bx+6], 10h
		jnz	short loc_EE41
		push	bx		; FILE *
		push	4Fh ; 'O'       ; int
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_fgets
		add	sp, 6
		or	ax, ax
		jz	short loc_EE41
		mov	word ptr [bp-56h], 0
		jmp	short loc_EE02
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_EDF2:				; CODE XREF: sub_EDAC+65j
		mov	si, [bp-56h]
		cmp	[bp+si+var_50],	20h ; ' '
		jge	short loc_EDFF
		mov	[bp+si+var_50],	0

loc_EDFF:				; CODE XREF: sub_EDAC+4Dj
		inc	word ptr [bp-56h]

loc_EE02:				; CODE XREF: sub_EDAC+43j
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strlen
		add	sp, 2
		cmp	ax, [bp-56h]
		jg	short loc_EDF2
		push	3		; size_t
		push	3B85h		; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strncmp
		add	sp, 6
		or	ax, ax
		jnz	short loc_EE2E
		mov	[bp+var_54], ax
		jmp	short loc_EE3B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_EE2E:				; CODE XREF: sub_EDAC+7Aj
		lea	ax, [bp+var_50]
		push	ss
		push	ax		; char *
		mov	ax, 0FFFFh
		call	sub_127B0

loc_EE3B:				; CODE XREF: sub_EDAC+7Fj
		cmp	[bp+var_54], 0
		jnz	short loc_EDCE

loc_EE41:				; CODE XREF: sub_EDAC+1Bj sub_EDAC+29j ...
		cmp	[bp+var_58], 0
		jz	short loc_EE52
		push	[bp+var_58]	; FILE *
		call	_fclose
		add	sp, 2

loc_EE52:				; CODE XREF: sub_EDAC+99j
		pop	si
		leave
		retf
sub_EDAC	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall sub_EE56(int,int,int,__int32,char *)
sub_EE56	proc near		; CODE XREF: sub_F0D6+8Fp

var_5E		= word ptr -5Eh
var_5C		= word ptr -5Ch
var_5A		= word ptr -5Ah
var_50		= byte ptr -50h
arg_0		= word ptr  4
arg_2		= dword	ptr  6
arg_6		= word ptr  0Ah

		enter	58h, 0		; ­¥â á¨¬¢.¨¬¥­¨
		push	dx
		push	ax
		push	bx		; char *
		call	sub_11269	; sound_initialized
		or	ax, ax
		jz	short loc_EE75
		push	0
		call	sub_11274	; sound_queue
		add	sp, 2
		call	far ptr	sub_112C9 ; sound_system_shutdown

loc_EE75:				; CODE XREF: sub_EE56+Ej
		call	sub_D3B3	; timer_remove
		call	sub_101A7	; keys_remove
		push	3
		push	0
		call	sub_F6D6	; mouse_init
		add	sp, 4
		mov	ax, 3
		call	sub_C3CA	; @screen_dominant_mode
		mov	ax, 3
		int	10h		; - VIDEO - SET	VIDEO MODE
					; AL = mode
		cmp	[bp+arg_0], 0FFECh
		jnz	short loc_EEA6
		jmp	loc_F0A8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EEA6:				; CODE XREF: sub_EE56+4Bj
		push	3B89h		; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		push	[bp+var_5E]	; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		push	3B91h		; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		push	[bp+var_5C]	; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat

loc_EEDF:
		add	sp, 4
		push	3B9Fh		; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		push	[bp+var_5A]	; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		push	3BA8h		; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		push	[bp+arg_6]	; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		lea	ax, [bp+var_50]
		push	ss
		push	ax		; char *
		mov	ax, 0FFFFh
		call	sub_127B0	; @echo
		push	3B32h		; char * error_string
		call	_strlen
		add	sp, 2
		or	ax, ax
		jz	short loc_EF46
		push	ds
		push	offset byte_199A2 ; char* error_string
		mov	ax, 0FFFFh
		call	sub_127B0	; @echo

loc_EF46:				; CODE XREF: sub_EE56+E2j
		cmp	byte_165BB, 0	; mem_last_alloc_failed
		jnz	short loc_EF50
		jmp	loc_EFD2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_EF50:				; CODE XREF: sub_EE56+F5j
		push	0Ah		; int
		push	[bp+var_5A]	; char *
		push	word_165C0
		push	word_165BE	; long mem_last_alloc_size
		call	far ptr	_ltoa
		add	sp, 8
		push	0Ah		; int
		push	[bp+arg_6]	; char *
		push	word_165C4
		push	word_165C2	; long mem_last_alloc_avail
		call	far ptr	_ltoa
		add	sp, 8
		push	3BAAh		; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		push	[bp+var_5A]	; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		push	3BBDh		; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		push	[bp+arg_6]	; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		push	3BCFh		; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		lea	ax, [bp+var_50]
		push	ss
		push	ax		; char *
		mov	ax, 0FFFFh
		call	sub_127B0	; @echo

loc_EFD2:				; CODE XREF: sub_EE56+F7j
		push	ds
		push	offset asc_19A51 ; " "
		mov	ax, 0FFFFh
		call	sub_127B0	; @echo
		push	3BE3h		; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		push	0Ah		; int
		push	[bp+var_5A]	; char *
		push	word ptr [bp+arg_2+2]
		push	word ptr [bp+arg_2] ; __int32
		call	far ptr	_ltoa
		add	sp, 8
		push	[bp+var_5A]	; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		lea	ax, [bp+var_50]
		push	ss
		push	ax		; char *
		mov	ax, 0FFFFh
		call	sub_127B0
		push	3BFEh		; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		push	0Ah		; int
		push	[bp+var_5A]	; char *
		push	word_1A3D8	; int _errno
		call	_itoa
		add	sp, 6
		push	[bp+var_5A]	; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		lea	ax, [bp+var_50]
		push	ss
		push	ax		; char *
		mov	ax, 0FFFFh
		call	sub_127B0	; echo
		push	3C19h		; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		push	0Ah		; int
		push	[bp+var_5A]	; char *
		call	sub_12ABB	; stack_check
		push	ax		; int
		call	_itoa
		add	sp, 6
		push	[bp+var_5A]	; char *
		lea	ax, [bp+var_50]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		lea	ax, [bp+var_50]
		push	ss
		push	ax		; char *
		mov	ax, 0FFFFh
		call	sub_127B0	; @echo
		push	ds
		push	offset asc_19AA4 ; " "
		mov	ax, 0FFFFh
		call	sub_127B0	; @echo
		lea	bx, aWarn0_dat	; "*warn0.dat"
		jmp	short loc_F0AC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F0A8:				; CODE XREF: sub_EE56+4Dj
		lea	bx, aWarn6_dat	; "*warn6.dat"

loc_F0AC:				; CODE XREF: sub_EE56+250j
		push	cs
		call	near ptr sub_EDAC ; ­¥â	á¨¬¢(r)"ì­(r)£(r) ¨¬¥­¨
		mov	ax, word ptr dword_1999C+2
		or	ax, word ptr dword_1999C ; error_service_routine_2
		jz	short loc_F0BD
		call	dword_1999C

loc_F0BD:				; CODE XREF: sub_EE56+261j
		mov	ax, word ptr dword_19998+2
		or	ax, word ptr dword_19998 ; error_service_routine
		jz	short loc_F0CA
		call	dword_19998

loc_F0CA:				; CODE XREF: sub_EE56+26Ej
		push	3		; int
		call	_exit
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		leave
		retn	8
sub_EE56	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_F0D6(int,int,__int32,__int32)
sub_F0D6	proc far		; CODE XREF: sub_2CDC+4EP
					; sub_48A4+297P ...

var_6A		= byte ptr -6Ah
var_42		= byte ptr -42h
var_1A		= byte ptr -1Ah
var_E		= word ptr -0Eh
var_2		= word ptr -2
arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah

		enter	6Ah, 0		; ä-ï @error_report
		push	bx
		push	dx
		push	ax
		push	di
		push	si		; int
		mov	di, bx
		mov	si, ax
		mov	[bp+var_2], 0
		mov	ax, word_199A0	; error_abort
		cmp	dx, ax
		jl	short loc_F168

loc_F0EF:				; int
		push	0Ah
		lea	ax, [bp+var_42]
		push	ax		; char *
		push	si		; int
		call	_itoa
		add	sp, 6
		push	0Ah		; int
		lea	ax, [bp+var_6A]
		push	ax		; char *
		push	di		; int
		call	_itoa

loc_F10A:
		add	sp, 6

loc_F10D:				; int
		push	0Ah
		lea	ax, [bp+var_E]
		push	ax		; char *
		push	word ptr [bp+arg_4+2]
		push	word ptr [bp+arg_4] ; __int32
		call	far ptr	_ltoa
		add	sp, 8
		push	0Ah		; int
		lea	ax, [bp+var_1A]
		push	ax		; char *
		push	word ptr [bp+arg_0+2]
		push	word ptr [bp+arg_0] ; __int32
		call	far ptr	_ltoa
		add	sp, 8
		mov	dx, si
		not	dx
		inc	dx
		lea	bx, [bp+var_42]
		lea	ax, aErrors_db	; "*ERRORS.DB"
		call	sub_ED08	; ­¥â á¨¬¢.¨¬¥­¨
		mov	dx, di
		lea	bx, [bp+var_6A]
		lea	ax, aModules_db	; "*MODULES.DB"
		call	sub_ED08	; ­¥â á¨¬¢.¨¬¥­¨
		lea	ax, [bp+var_1A]
		push	ax		; char *
		call	sub_D102	; @mem_get_avail
		push	dx
		push	ax		; __int32
		push	si		; int
		lea	bx, [bp+var_42]

loc_F15F:
		lea	ax, [bp+var_6A]

loc_F162:				; int
		lea	dx, [bp+var_E]
		call	sub_EE56	; ­¥â á¨¬¢.¨¬¥­¨

loc_F168:				; CODE XREF: sub_F0D6+17j
		pop	si
		pop	di
		leave
		retf	8
sub_F0D6	endp

seg064		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg065		segment public 'CODE'
		assume cs:seg065
		;org 0Eh
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F16E	proc far		; CODE XREF: _main+CP
		mov	word_1A2FC, 1
		mov	byte_1A2FB, 0FFh
		mov	word ptr dword_1A306, offset loc_11686
		mov	word ptr dword_1A306+2,	seg seg087 ; çâ(r) íâ(r) §­ ç¨â???
		mov	word ptr dword_1A30A, offset loc_11A70
		mov	word ptr dword_1A30A+2,	seg seg088
		mov	word ptr dword_1A30E, offset loc_11CBE
		mov	word ptr dword_1A30E+2,	seg seg088
		mov	word ptr dword_1A312, offset loc_11ECA
		mov	word ptr dword_1A312+2,	seg seg088
		retf
sub_F16E	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	6, 0
		call	sub_D186	; @timer_read

loc_F1B3:
		mov	[bp-4],	ax
		mov	[bp-2],	dx
		mov	word ptr [bp-6], 0

loc_F1BE:				; CODE XREF: seg065:0079j
		mov	ax, [bp-4]
		mov	dx, [bp-2]
		mov	bx, [bp-6]
		shl	bx, 2
		mov	[bx+52E8h], ax
		mov	[bx+52EAh], dx
		inc	word ptr [bp-6]
		cmp	word ptr [bp-6], 8
		jl	short loc_F1BE
		push	22h ; '"'
		push	word ptr [bp+8]
		push	word ptr [bp+6]
		push	ds
		push	offset word_1B96E
		call	_memcpy
		add	sp, 0Ah
		push	300h
		push	ds
		push	offset unk_1B990
		push	ds
		push	offset unk_1BEB8
		call	_memcpy
		add	sp, 0Ah
		sub	ax, ax
		mov	word_1AD0A, ax
		mov	[bp-6],	ax
		jmp	short loc_F223
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F20C:				; CODE XREF: seg065:00C9j
		mov	bx, [bp-6]
		shl	bx, 2
		mov	al, [bx+5B00h]
		sub	ah, ah
		add	word_1AD0A, ax
		mov	[bx+5B01h], ah
		inc	word ptr [bp-6]

loc_F223:				; CODE XREF: seg065:00AAj
		mov	ax, word_1B96E
		cmp	[bp-6],	ax
		jl	short loc_F20C
		mov	word_1A980, 3
		cmp	word_1AD0A, 10h
		jg	short loc_F23E
		mov	word_1A980, 0

loc_F23E:				; CODE XREF: seg065:00D6j
		mov	ax, [bp+0Ah]
		mov	word_19AD4, ax
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	0Eh, 0
		push	di
		push	si
		cmp	word_19AD4, 0
		jnz	short loc_F256
		jmp	loc_F365
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F256:				; CODE XREF: seg065:00F1j
		mov	ax, word_1A980
		inc	word_19AD6
		cmp	word_19AD6, ax
		jge	short loc_F266
		jmp	loc_F365
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F266:				; CODE XREF: seg065:0101j
		cmp	word_19926, 0
		jz	short loc_F270
		jmp	loc_F365
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F270:				; CODE XREF: seg065:010Bj
		call	sub_D186
		mov	[bp-0Eh], ax
		mov	[bp-0Ch], dx
		sub	ax, ax
		mov	[bp-2],	ax
		mov	[bp-8],	ax
		jmp	loc_F33C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F286:				; CODE XREF: seg065:01E4j
		mov	bx, [bp-8]
		shl	bx, 2
		mov	al, [bx+5B03h]
		sub	ah, ah
		sub	dx, dx
		add	ax, [bx+52E8h]
		adc	dx, [bx+52EAh]
		cmp	dx, [bp-0Ch]
		jle	short loc_F2A4
		jmp	loc_F339
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F2A4:				; CODE XREF: seg065:013Fj
		jl	short loc_F2AE
		cmp	ax, [bp-0Eh]
		jbe	short loc_F2AE
		jmp	loc_F339
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F2AE:				; CODE XREF: seg065:loc_F2A4j
					; seg065:0149j
		mov	ax, [bp-0Eh]
		mov	dx, [bp-0Ch]
		mov	[bx+52E8h], ax
		mov	[bx+52EAh], dx
		mov	al, [bx+5B00h]
		sub	ah, ah
		mov	[bp-4],	ax
		mov	cl, [bx+5B02h]
		sub	ch, ch
		mov	[bp-6],	cx
		mov	cl, [bx+5B01h]
		mov	[bp-0Ah], cx
		mov	word ptr [bp-2], 0FFFFh
		cmp	ax, 1
		jle	short loc_F32C
		std
		push	ds
		pop	es
		assume es:dseg
		mov	ax, [bp-4]
		add	ax, [bp-6]
		shl	ax, 1
		add	ax, [bp-4]
		add	ax, [bp-6]
		mov	bx, [bp-4]
		shl	bx, 1
		add	bx, [bp-4]
		mov	si, 6048h
		add	si, ax
		sub	si, 1
		mov	di, 49A6h
		add	di, 2
		push	di
		push	si
		mov	cx, 3

loc_F30B:
		rep movsb

loc_F30D:
		pop	di
		mov	cx, bx
		sub	cx, 3
		rep movsb
		pop	si
		mov	cx, 3
		rep movsb
		cld
		inc	word ptr [bp-0Ah]
		mov	ax, [bp-0Ah]
		cmp	ax, [bp-4]
		jb	short loc_F32C
		mov	word ptr [bp-0Ah], 0

loc_F32C:				; CODE XREF: seg065:017Dj seg065:01C5j
		mov	al, [bp-0Ah]
		mov	bx, [bp-8]
		shl	bx, 2
		mov	[bx+5B01h], al

loc_F339:				; CODE XREF: seg065:0141j seg065:014Bj
		inc	word ptr [bp-8]

loc_F33C:				; CODE XREF: seg065:0123j
		mov	ax, word_1B96E
		cmp	[bp-8],	ax
		jge	short loc_F347
		jmp	loc_F286
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F347:				; CODE XREF: seg065:01E2j
		cmp	word ptr [bp-2], 0
		jz	short loc_F35F
		push	ds
		push	offset unk_1BEB8
		mov	al, byte_1B972
		sub	ah, ah
		mov	dx, word_1AD0A
		call	sub_1062E

loc_F35F:				; CODE XREF: seg065:01EBj
		mov	word_19AD6, 0

loc_F365:				; CODE XREF: seg065:00F3j seg065:0103j ...
		pop	si
		pop	di
		leave
		retf
seg065		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg066		segment public 'CODE'
		
seg066		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg067		segment public 'CODE'
  	
seg067		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg068		segment public 'CODE'
		assume cs:seg068
		assume es:nothing, ss:nothing, ds:dseg



; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_F4E0	proc far		; CODE XREF: sub_3AAE+4EP sub_706E+50P

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= dword	ptr  0Eh

		push	bp		; ä-ï @heap_declare -áà ¢­¨ á sub_F450!
		mov	bp, sp
		les	bx, [bp+arg_8]
		mov	byte ptr es:[bx+1], 0
		mov	es:[bx], al
		mov	ax, [bp+arg_4]
		mov	dx, [bp+arg_6]
		mov	es:[bx+6], ax
		mov	es:[bx+8], dx
		mov	es:[bx+2], ax
		mov	es:[bx+4], dx
		mov	ax, [bp+arg_0]
		mov	dx, [bp+arg_2]
		mov	es:[bx+0Eh], ax
		mov	es:[bx+10h], dx
		mov	es:[bx+0Ah], ax
		mov	es:[bx+0Ch], dx
		leave
		retf	0Ch
sub_F4E0	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	bp
		mov	bp, sp
		les	bx, [bp+6]
		cmp	byte ptr es:[bx+1], 0
		jz	short loc_F538
		push	word ptr es:[bx+4]
		push	word ptr es:[bx+2]
		call	sub_CFA0

loc_F538:				; CODE XREF: seg068:00D9j
		les	bx, [bp+6]
		sub	ax, ax
		mov	es:[bx+4], ax
		mov	es:[bx+2], ax
		mov	es:[bx+10h], ax
		mov	es:[bx+0Eh], ax
		mov	es:[bx+0Ch], ax
		mov	es:[bx+0Ah], ax
		leave
		retf	4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_F55A(int,int,__int32)
sub_F55A	proc far		; CODE XREF: sub_3376:loc_3392P
					; sub_33DE+1DP	...

var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= dword	ptr  6

		enter	4, 0		; ä-ï @heap_get
		push	dx
		push	ax
		sub	cx, cx		; int
		mov	[bp+var_2], cx
		mov	[bp+var_4], cx
		les	bx, [bp+arg_0]
		cmp	es:[bx+10h], dx
		jg	short loc_F596
		jl	short loc_F579
		cmp	es:[bx+0Eh], ax
		jnb	short loc_F596

loc_F579:				; CODE XREF: sub_F55A+17j
		push	dx
		push	ax		; __int32
		push	word ptr es:[bx+10h]
		push	word ptr es:[bx+0Eh] ; __int32
		mov	bl, es:[bx]
		sub	bh, bh
		mov	ax, 0FFC3h
		mov	dx, 2		; int
		call	sub_F0D6	; @error_report
		jmp	short loc_F5B9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_F596:				; CODE XREF: sub_F55A+15j sub_F55A+1Dj
		mov	ax, es:[bx+6]
		mov	dx, es:[bx+8]
		mov	[bp+var_4], ax
		mov	[bp+var_2], dx
		mov	ax, [bp+var_8]
		add	es:[bx+6], ax
		mov	ax, [bp+var_8]
		mov	dx, [bp+var_6]
		sub	es:[bx+0Eh], ax
		sbb	es:[bx+10h], dx

loc_F5B9:				; CODE XREF: sub_F55A+39j
		mov	ax, [bp+var_4]
		mov	dx, [bp+var_2]
		leave
		retf	4
sub_F55A	endp



seg068		ends

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg069		segment public 'CODE'
		assume cs:seg069
		assume es:nothing, ss:nothing, ds:dseg
		mov	dx, seg	dseg

loc_F653:
		mov	ax, 3ED0h
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F657	proc far		; CODE XREF: sub_2516+38P
					; sub_F9DA:loc_FA2FP ...
		cmp	word_1B14E, 0	; äã­ªæ¨ï mouse_show
		jnz	short loc_F668
		cmp	word_1A830, 0
		jz	short loc_F686
		jmp	short loc_F68C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_F668:				; CODE XREF: sub_F657+5j
		mov	al, byte_1B942	; MOUSE_SHOWING
		or	al, al
		jz	short loc_F686
		inc	al
		jnz	short loc_F686
		push	ax
		push	bx
		push	cx
		push	dx
		push	si
		push	di
		push	ds
		push	es
		call	sub_FCBF
		pop	es
		pop	ds
		pop	di
		pop	si
		pop	dx
		pop	cx
		pop	bx
		pop	ax

loc_F686:				; CODE XREF: sub_F657+Cj sub_F657+16j	...
		mov	byte_1B942, al
		jmp	short locret_F69D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_F68C:				; CODE XREF: sub_F657+Ej
		mov	ax, 1
		int	33h		; - MS MOUSE - SHOW MOUSE CURSOR
					; SeeAlso: AX=0002h, INT 16/AX=FFFEh
		mov	al, byte_1B942
		or	al, al
		jz	short locret_F69D
		inc	al
		mov	byte_1B942, al

locret_F69D:				; CODE XREF: sub_F657+32j sub_F657+3Fj
		retf
sub_F657	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F69E	proc far		; CODE XREF: sub_2516:loc_27A9P
					; sub_F872+DP ...
		cmp	word_1B14E, 0

loc_F6A3:
		jnz	short loc_F6AF
		cmp	word_1A830, 0
		jz	short locret_F6D5
		jmp	short loc_F6CC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F6AF:				; CODE XREF: sub_F69E:loc_F6A3j
		sub	byte_1B942, 1
		jnb	short locret_F6D5
		push	ax
		push	bx
		push	cx
		push	dx
		push	si
		push	di
		push	ds
		push	es
		call	sub_FC9A
		pop	es
		pop	ds
		pop	di
		pop	si
		pop	dx
		pop	cx
		pop	bx
		pop	ax
		jmp	short locret_F6D5
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_F6CC:				; CODE XREF: sub_F69E+Ej
		mov	ax, 2
		int	33h		; - MS MOUSE - HIDE MOUSE CURSOR
					; SeeAlso: AX=0001h, INT 16/AX=FFFFh
		dec	byte_1B942

locret_F6D5:				; CODE XREF: sub_F69E+Cj sub_F69E+16j	...
		retf
sub_F69E	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_F6D6	proc far		; CODE XREF: sub_2516+30P
					; sub_2516+2A0P ...

var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	2, 0
		push	bx
		push	cx
		push	dx
		push	es
		push	0
		push	[bp+arg_2]
		call	sub_EC58	; video_init
		add	sp, 4
		mov	ax, 10h
		mov	word_1B150, ax	; MOUSE_CURSOR_BUFFER
		mov	word_1B152, ax
		mov	ax, 42D8h
		mov	word_1B154, ax
		mov	ax, seg	dseg
		mov	word_1B156, ax
		mov	ax, [bp+arg_2]
		mov	word_1BEB6, ax
		mov	word_1A830, 0
		mov	word_1B14E, 0
		mov	[bp+var_2], 0
		mov	ax, 3533h
		int	21h		; DOS -	2+ - GET INTERRUPT VECTOR
					; AL = interrupt number
					; Return: ES:BX	= value	of interrupt vector
		mov	ax, es
		or	ax, bx
		jnz	short loc_F725
		jmp	short loc_F759
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F725:				; CODE XREF: sub_F6D6+4Aj
		mov	al, es:[bx]
		cmp	al, 0CFh ; 'Ï'
		jnz	short loc_F72F
		jmp	short loc_F759
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F72F:				; CODE XREF: sub_F6D6+54j
		xor	ax, ax
		int	33h		; - MS MOUSE - RESET DRIVER AND	READ STATUS
					; Return: AX = status
					; BX = number of buttons
		cmp	ax, 0FFFFh
		jz	short loc_F73B
		jmp	short loc_F759
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F73B:				; CODE XREF: sub_F6D6+60j
		mov	ax, 0Fh
		mov	cx, 8
		mov	dx, 18h
		int	33h		; - MS MOUSE - DEFINE MICKEY/PIXEL RATIO
					; CX = number of mickeys per 8 pixels horizontally (default 8)
					; DX = number of mickeys per 8 pixels vertically (default 16)
		mov	cx, 0FFFFh

loc_F749:				; CODE XREF: sub_F6D6+7Cj
		push	cx
		mov	ax, 3
		int	33h		; - MS MOUSE - RETURN POSITION AND BUTTON STATUS
					; Return: BX = button status, CX = column, DX =	row
		pop	cx
		or	bx, bx
		loopne	loc_F749
		mov	[bp+var_2], 0FFFFh

loc_F759:				; CODE XREF: sub_F6D6+4Cj sub_F6D6+56j ...
		mov	ax, [bp+arg_0]
		or	ax, ax
		jnz	short loc_F763
		jmp	loc_F83B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F763:				; CODE XREF: sub_F6D6+88j
		mov	ax, [bp+var_2]
		mov	word_1A830, ax
		mov	byte_1B942, 0FFh
		mov	byte_19AFE, 0
		mov	word_1BC92, 0A0h ; ' '
		mov	word_1BC94, 64h	; 'd'
		mov	word_1AADE, 0
		mov	byte_19B1F, 1
		mov	byte_19AF9, 0
		mov	ax, word_19AF5
		mov	word_19AF7, ax
		xor	al, al
		mov	byte ptr word_19B0C, al
		mov	byte ptr word_19B0C+1, al
		mov	ax, word_1BEB6
		mov	word_1B14E, 0FFFFh
		cmp	ax, 13h
		jz	short loc_F7D1
		mov	word_1B14E, 0
		cmp	ax, 4
		jnz	short loc_F7B9
		jmp	short loc_F7FE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F7B9:				; CODE XREF: sub_F6D6+DEj
		cmp	ax, 3
		jbe	short loc_F7C6
		cmp	ax, 7
		jz	short loc_F7C6
		jmp	short loc_F806
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_F7C6:				; CODE XREF: sub_F6D6+E6j sub_F6D6+EBj
		mov	al, 3
		mov	byte ptr word_19B0C, al
		mov	byte ptr word_19B0C+1, al
		jmp	short loc_F806
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F7D1:				; CODE XREF: sub_F6D6+D3j
		mov	ax, word_19B0E
		or	ax, ax
		jnz	short loc_F7DD
		mov	byte ptr word_19B0C, 1

loc_F7DD:				; CODE XREF: sub_F6D6+100j
		mov	ax, offset loc_Mouse3;5 FIXES BY ME
		mov	word_1A24E, ax
		mov	ax, offset loc_Mouse4
		mov	word_1A250, ax
		mov	ax, offset loc_Mouse5
		mov	word_1A252, ax
		mov	ax, offset loc_Mouse6
		mov	word_1A254, ax
		mov	ax, offset loc_Mouse7
		mov	word_1A256, ax
		jmp	short loc_F806
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_F7FE:				; CODE XREF: sub_F6D6+E0j
		mov	byte ptr word_19B0C, 1
		jmp	short loc_F83B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_F806:				; CODE XREF: sub_F6D6+EDj sub_F6D6+F8j ...
		cmp	[bp+var_2], 0
		jz	short loc_F83B
		mov	ax, word_19AE4
		or	ax, ax
		jnz	short loc_F82C
		mov	ax, word_1B14E
		or	ax, ax
		jz	short loc_F83B
		mov	ax, cs
		mov	es, ax
		assume es:seg069
		mov	dx, offset loc_Mouse1
		mov	cx, 1
		mov	ax, 14h
		int	33h		; - MS MOUSE - EXCHANGE	INTERRUPT SUBROUTINES
					; CX = call mask, ES:DX	-> FAR routine
					; Return: CX = call mask of previous interrupt routine
					; ES:DX	= FAR address of previous interrupt routine
		jmp	short loc_F83B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_F82C:				; CODE XREF: sub_F6D6+13Bj
		mov	ax, cs
		mov	es, ax
		mov	dx, offset loc_Mouse2
		mov	cx, 1
		mov	ax, 14h
		int	33h		; - MS MOUSE - EXCHANGE	INTERRUPT SUBROUTINES
					; CX = call mask, ES:DX	-> FAR routine
					; Return: CX = call mask of previous interrupt routine
					; ES:DX	= FAR address of previous interrupt routine

loc_F83B:				; CODE XREF: sub_F6D6+8Aj
					; sub_F6D6+12Dj ...
		mov	ax, word_1A830
		pop	es
		assume es:nothing
		pop	dx
		pop	cx
		pop	bx
		leave
		retf
sub_F6D6	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	0, 0
		mov	ax, [bp+6]
		and	ax, 0Fh
		mov	bx, [bp+8]
		and	bx, 0Fh
		mov	word_19B04, ax
		mov	word_19B06, bx
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	ds
		push	si
		mov	ax, 40h	; '@'
		mov	ds, ax
		assume ds:nothing
		mov	si, 6Ch	; 'l'
		mov	ax, [si]

loc_F869:				; CODE XREF: seg069:021Dj
		mov	bx, [si]
		cmp	bx, ax
		jz	short loc_F869
		pop	si
		pop	ds
		assume ds:dseg
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_F872	proc far		; CODE XREF: sub_F9DA+18P

arg_0		= word ptr  6

		enter	0, 0
		push	es
		push	si
		cmp	word_1A830, 0
		jz	short loc_F8C6
		call	sub_F69E
		mov	ax, 40h	; '@'
		mov	es, ax
		assume es:nothing
		mov	bx, 49h	; 'I'
		mov	si, 10h
		mov	ax, [bp+arg_0]
		mov	ch, es:[bx]
		mov	cl, es:[si]
		push	ax
		mov	ah, cl
		cmp	al, 3
		jz	short loc_F8A8
		cmp	al, 7
		jz	short loc_F8AD
		xor	al, al
		jmp	short loc_F8AF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_F8A8:				; CODE XREF: sub_F872+2Bj
		mov	al, 20h	; ' '
		jmp	short loc_F8AF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F8AD:				; CODE XREF: sub_F872+2Fj
		mov	al, 30h	; '0'

loc_F8AF:				; CODE XREF: sub_F872+33j sub_F872+38j
		and	ah, 0CFh
		or	ah, al
		mov	es:[si], ah
		pop	ax
		push	ax
		mov	es:[bx], al
		push	0FFFFh
		call	sub_F6D6
		add	sp, 4

loc_F8C6:				; CODE XREF: sub_F872+Bj
		pop	si
		pop	es
loc_Mouse8:
		assume es:nothing
		leave
		retf
sub_F872	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mov	ax, word_1BEB6
loc_Mouse9:	retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
loc_Mouse10:	enter	0, 0
		cmp	word_1A830, 0
		jz	short locret_F911
		cmp	word_19AE4, 0
		jnz	short locret_F911
		mov	ax, [bp+6]
		mov	word_19AE6, ax
		push	ax
		mov	ax, [bp+8]
		mov	word_19AE8, ax
		mov	ax, [bp+0Ah]
		mov	word_19AEA, ax
		mov	ax, [bp+0Ch]
		mov	word_19AF5, ax
		mov	word_19AF7, ax
		mov	word_19AE4, 0FFFFh
		mov	byte_19AF9, 0
		push	0FFFFh
		call	sub_F6D6
		add	sp, 4

locret_F911:				; CODE XREF: seg069:0287j seg069:028Ej
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_F913	proc far		; CODE XREF: sub_C320+CP

arg_0		= word ptr  6

		enter	0, 0
		mov	ax, [bp+arg_0]
		mov	word_19AF7, ax
		leave
		retf
sub_F913	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		cmp	word_1A830, 0
		jz	short locret_F933
		cmp	word_19AE4, 0
		jz	short locret_F933

loc_F92D:
		mov	word_19AE4, 0

locret_F933:				; CODE XREF: seg069:02D4j seg069:02DBj
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
loc_Mouse2:
		pushf
		push	ax
		push	ds
		mov	ax, seg	dseg
		mov	ds, ax
		cmp	word_19AF3, 0
		jnz	short loc_F97F
		cmp	word_19AF7, 0
		jz	short loc_F97F
		mov	ax, word_1BEB6
		cmp	ax, word_19AE6
		jnz	short loc_F969
		xor	ax, ax
		cmp	word_19AEA, 0
		jz	short loc_F95F
		mov	ax, offset loc_Mouse8

loc_F95F:				; CODE XREF: seg069:030Aj
		cmp	cx, ax
		jnz	short loc_F97F
		mov	ax, word_19AE8
		jmp	short loc_F98E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F969:				; CODE XREF: seg069:0301j
		xor	ax, ax
		cmp	word_19AEA, 0
		jnz	short loc_F975
		mov	ax, offset loc_Mouse10

loc_F975:				; CODE XREF: seg069:0320j
		cmp	cx, ax
		jnz	short loc_F97F
		mov	ax, word_19AE6
		jmp	short loc_F98E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F97F:				; CODE XREF: seg069:02F1j seg069:02F8j ...
		cmp	word_1B14E, 0
		jz	short loc_F98B
		call	sub_FA48	; MOUSE_CURSOR

loc_F98B:				; CODE XREF: seg069:0334j
		jmp	short loc_F9D6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_F98E:				; CODE XREF: seg069:0316j seg069:032Cj
		push	bx
		push	cx
		push	dx
		mov	bl, byte_1B942
		cmp	ax, 3
		jz	short loc_F9AF
		cmp	ax, 7
		jz	short loc_F9AF
		or	cx, cx
		jz	short loc_F9A9
		mov	cx, 1
		jmp	short loc_F9BF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F9A9:				; CODE XREF: seg069:0351j
		mov	cx, offset loc_Mouse9
		jmp	short loc_F9BF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F9AF:				; CODE XREF: seg069:0348j seg069:034Dj
		or	cx, cx
		jz	short loc_F9B9
		mov	cx, 8
		jmp	short loc_F9BF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F9B9:				; CODE XREF: seg069:0361j
		mov	cx, offset loc_F8C6
		jmp	short loc_F9BF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_F9BF:				; CODE XREF: seg069:0356j seg069:035Cj ...
		mov	word_19AEC, ax
		mov	byte_19AEE, bl
		mov	word_19AEF, cx
		mov	word_19AF1, dx
		mov	byte_19AF9, 0FFh
		pop	dx
		pop	cx
		pop	bx

loc_F9D6:				; CODE XREF: seg069:loc_F98Bj
		pop	ds
		pop	ax
		popf
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_F9DA	proc far		; CODE XREF: sub_C252+7P
		cmp	word_1A830, 0
		jz	short loc_FA34
		mov	word_19AF3, 0FFFFh
		cmp	byte_19AF9, 0
		jz	short loc_FA34
		mov	ax, word_19AEC
		push	ax
		call	sub_F872
		add	sp, 2
		mov	cx, word_19AEF
		mov	dx, word_19AF1
		push	cx
		push	dx
		mov	ax, 4
		int	33h		; - MS MOUSE - POSITION	MOUSE CURSOR
					; CX = column, DX = row
		pop	dx
		pop	cx
		call	sub_FBAC
		mov	word_1BC92, cx
		mov	word_1BC94, dx
		mov	bl, byte_19AEE
		or	bl, bl
		jz	short loc_FA2F

loc_FA1E:				; CODE XREF: sub_F9DA+53j
		mov	bl, byte_19AEE
		cmp	bl, byte_1B942
		jz	short loc_FA34
		call	sub_F69E
		jmp	short loc_FA1E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_FA2F:				; CODE XREF: sub_F9DA+42j
		call	sub_F657

loc_FA34:				; CODE XREF: sub_F9DA+5j sub_F9DA+12j	...
		mov	bx, word_19AF5
		mov	word_19AF7, bx
		mov	byte_19AF9, 0
		mov	word_19AF3, 0
		retf
sub_F9DA	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_FA48	proc far		; CODE XREF: seg069:0336P seg069:054FP ...
loc_Mouse1:
		push	ax		; ä-ï MOUSE_CURSOR
		push	ds
		mov	ax, seg	dseg
		mov	ds, ax
		cmp	word_1A146, 0
		jz	short loc_FA59
		pop	ds
		pop	ax
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_FA59:				; CODE XREF: sub_FA48+Cj
		mov	word_1A146, 1
		mov	word_1A142, ss
		mov	word_1A144, sp
		mov	ss, ax
		mov	sp, 42D0h
		push	bx
		push	cx
		push	dx
		push	es
		push	si
		push	di
		push	bp
		push	ds
		pushf
		cld
		cmp	byte_19AFE, 0
		jz	short loc_FA8D
		mov	byte_19AFF, 0FFh
		mov	word_19B10, cx
		mov	word_19B12, dx
		jmp	short loc_FAF5
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_FA8D:				; CODE XREF: sub_FA48+33j
		mov	ax, cx
		mov	cl, byte ptr word_19B0C
		shr	ax, cl
		cmp	byte_1B942, 0
		jz	short loc_FAE3
		cmp	byte_1B942, 80h	; '€'
		jz	short loc_FAAA
		mov	word_1BC92, ax
		mov	word_1BC94, dx

loc_FAAA:				; CODE XREF: sub_FA48+59j
		jmp	short loc_FAF5
sub_FA48	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_FAAD	proc far		; CODE XREF: sub_FB21+25P
		push	ax
		push	ds
		mov	ax, seg	dseg
		mov	ds, ax
		cmp	word_1A146, 0
		jz	short loc_FABE
		pop	ds
		pop	ax
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_FABE:				; CODE XREF: sub_FAAD+Cj
		mov	word_1A146, 1
		mov	word_1A142, ss
		mov	word_1A144, sp
		mov	ss, ax
		mov	sp, 42D0h
		push	bx
		push	cx
		push	dx
		push	es
		push	si
		push	di
		push	bp
		push	ds
		pushf
		cld
		mov	ax, cx
		mov	cl, byte ptr word_19B0C
		shr	ax, cl

loc_FAE3:				; CODE XREF: sub_FA48+52j
		push	ax
		push	dx
		call	sub_FC9A
		pop	dx
		pop	cx
		mov	word_1BC92, cx
		mov	word_1BC94, dx
		call	sub_FCBF

loc_FAF5:				; CODE XREF: sub_FA48+42j
					; sub_FA48:loc_FAAAj
		popf
		pop	ds
		pop	bp
		pop	di
		pop	si
		pop	es
		pop	dx
		pop	cx
		pop	bx
		mov	ss, word_1A142
		mov	sp, word_1A144
		mov	word_1A146, 0
		pop	ds
		pop	ax
		retf
sub_FAAD	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_FB0F	proc far		; CODE XREF: sub_C384+9P
					; seg069:loc_FB70P ...
		cmp	word_1B14E, 0
		jz	short locret_FB20
		mov	byte_19AFF, 0
		mov	byte_19AFE, 0FFh

locret_FB20:				; CODE XREF: sub_FB0F+5j
		retf
sub_FB0F	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_FB21	proc far		; CODE XREF: sub_C384:loc_C3BEP
					; seg069:0555P	...
		cmp	word_1B14E, 0	; MOUSE_KNOWN_MODE
		jz	short locret_FB4F
		mov	bl, 80h	; '€'
		xchg	bl, byte_1B942	; MOUSE_SHOWING

loc_FB2E:
		mov	cx, word_19B10
		mov	dx, word_19B12
		mov	byte_19AFE, 0
		cmp	byte_19AFF, 0
		jz	short loc_FB4B
		or	bl, bl
		jnz	short loc_FB4B
		call	sub_FAAD

loc_FB4B:				; CODE XREF: sub_FB21+1Fj sub_FB21+23j
		mov	byte_1B942, bl

locret_FB4F:				; CODE XREF: sub_FB21+5j
		retf
sub_FB21	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	0, 0
		mov	ax, cx
		mov	cx, [bp+6]
		shl	cx, 1
		mov	dx, [bp+8]
		push	ax
		push	cx
		push	dx
		cmp	word_1B14E, 0
		jnz	short loc_FB70
		call	sub_F69E
		jmp	short loc_FB75
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_FB70:				; CODE XREF: seg069:0516j
		call	sub_FB0F

loc_FB75:				; CODE XREF: seg069:051Dj
		pop	dx
		pop	cx
		pop	ax
		mov	word_1BC92, ax
		mov	word_1BC94, dx
		cmp	word_1A830, 0
		jz	short loc_FB96
		push	cx
		push	dx
		mov	ax, 4
		int	33h		; - MS MOUSE - POSITION	MOUSE CURSOR
					; CX = column, DX = row
		pop	dx
		pop	cx
		cmp	word_1B14E, 0
		jnz	short loc_FB9E

loc_FB96:				; CODE XREF: seg069:0534j
		call	sub_F657
		jmp	short locret_FBAA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_FB9E:				; CODE XREF: seg069:0544j
		cli
		call	sub_FA48
		sti
		call	sub_FB21	; mouse_thaw

locret_FBAA:				; CODE XREF: seg069:054Bj
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_FBAC	proc near		; CODE XREF: sub_F9DA+31p sub_FBCC+25p
		push	ax
		mov	ax, cx

loc_FBAF:
		mov	cx, word_19B0C
		shr	ax, cl
		xchg	ch, cl
		shr	dx, cl
		mov	cx, ax
		cmp	word_1B14E, 0
		jnz	short loc_FBCA
		mov	word_1BC92, cx
		mov	word_1BC94, dx

loc_FBCA:				; CODE XREF: sub_FBAC+14j
		pop	ax
		retn
sub_FBAC	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_FBCC	proc far		; CODE XREF: sub_C252:loc_C270P

arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	0, 0
		xor	bx, bx
		cmp	word_1B14E, 0
		jz	short loc_FBE5
		mov	cx, word_1BC92
		mov	dx, word_1BC94
		xor	bx, bx
		push	cx
		push	dx

loc_FBE5:				; CODE XREF: sub_FBCC+Bj
		cmp	word_1A830, 0	; mouse_driver
		jz	short loc_FBF4
		mov	ax, 3
		int	33h		; - MS MOUSE - RETURN POSITION AND BUTTON STATUS
					; Return: BX = button status, CX = column, DX =	row
		call	sub_FBAC

loc_FBF4:				; CODE XREF: sub_FBCC+1Ej
		cmp	word_1B14E, 0	; MOUSE_KNOWN_MODE
		jz	short loc_FBFD
		pop	dx
		pop	cx

loc_FBFD:				; CODE XREF: sub_FBCC+2Dj
		push	bx
		mov	bx, [bp+arg_0]
		mov	[bx], cx
		mov	bx, [bp+arg_2]
		mov	[bx], dx
		pop	ax
		or	ax, word_1AADE
		leave
		retf
sub_FBCC	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ		enter	0, 0
		cmp	word_1A830, 0
		jz	short locret_FC25
		mov	cx, [bp+6]
		mov	dx, [bp+8]
		mov	ax, 7
		int	33h		; - MS MOUSE - DEFINE HORIZONTAL CURSOR	RANGE
					; CX = minimum column, DX = maximum column

locret_FC25:				; CODE XREF: seg069:05C8j
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	0, 0
		cmp	word_1A830, 0
		jz	short locret_FC3D
		mov	cx, [bp+6]
		mov	dx, [bp+8]
		mov	ax, 8
		int	33h		; - MS MOUSE - DEFINE VERTICAL CURSOR RANGE
					; CX = minimum row, DX = maximum row

locret_FC3D:				; CODE XREF: seg069:05E0j
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		cmp	word_1B14E, 0
		jz	short locret_FC52
		cmp	byte_1B942, 0
		jnz	short locret_FC52
		call	sub_FB0F

locret_FC52:				; CODE XREF: seg069:05F4j seg069:05FBj
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	es
		push	di
		push	si
		cmp	word_1B14E, 0
		jz	short loc_FC68
		cmp	byte_1B942, 0
		jnz	short loc_FC68
		jmp	word_1A256
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_FC68:				; CODE XREF: seg069:060Bj seg069:0612j
		jmp	short loc_FC96
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
loc_Mouse7:
		call	sub_FD96
		mov	ax, word_19AFA
		mov	es, ax
		mov	di, word_19AFC
		mov	si, 3DD0h
		add	si, word_19B1C
		mov	ah, byte ptr word_19B14
		mov	al, byte ptr word_19B16
		mov	bx, 10h
		mov	dx, 140h
		call	sub_FD81
		jmp	short loc_FC91
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop

loc_FC91:				; CODE XREF: seg069:063Ej
		call	sub_FB21

loc_FC96:				; CODE XREF: seg069:loc_FC68j
		pop	si
		pop	di
		pop	es
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_FC9A	proc near		; CODE XREF: sub_F69E+20p sub_FAAD+38p
		mov	ax, word_19AFA
		mov	es, ax
		mov	di, word_19AFC
		jmp	word_1A24E
sub_FC9A	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
loc_Mouse3:
		mov	si, 3CD0h
		add	si, word_19B1C
		mov	ah, byte ptr word_19B14
		mov	al, byte ptr word_19B16
		mov	bx, 10h
		mov	dx, 140h
		call	sub_FD81
		retn

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_FCBF	proc near		; CODE XREF: sub_F657+24p sub_FAAD+45p
		xor	cx, cx
		mov	word_19B18, cx
		mov	word_19B1A, cx
		mov	cx, word_1BC92
		mov	dx, word_1BC94
		sub	cx, word_19B04
		jns	short loc_FCDF
		neg	cx
		mov	word_19B18, cx
		xor	cx, cx

loc_FCDF:				; CODE XREF: sub_FCBF+16j
		mov	word_19B08, cx
		sub	dx, word_19B06
		jns	short loc_FCF1
		neg	dx
		mov	word_19B1A, dx
		xor	dx, dx

loc_FCF1:				; CODE XREF: sub_FCBF+28j
		mov	word_19B0A, dx
		mov	ax, 10h
		cmp	dx, 0B8h ; '¸'
		jle	short loc_FD03
		mov	ax, 0C8h ; 'È'
		sub	ax, dx

loc_FD03:				; CODE XREF: sub_FCBF+3Dj
		sub	ax, word_19B1A
		mov	word_19B14, ax
		mov	ax, 10h
		cmp	cx, 130h
		jle	short loc_FD18
		mov	ax, 140h
		sub	ax, cx

loc_FD18:				; CODE XREF: sub_FCBF+52j
		sub	ax, word_19B18
		mov	word_19B16, ax
		call	sub_11142
		mov	ax, es
		mov	word_19AFA, ax
		mov	word_19AFC, di
		mov	word_19B00, cx
		jmp	word_1A250
sub_FCBF	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
loc_Mouse4:
		mov	si, di
		mov	di, 3CD0h
		mov	ax, 10h
		mul	word_19B1A
		add	ax, word_19B18
		mov	word_19B1C, ax
		add	di, ax
		mov	ah, byte ptr word_19B14
		mov	al, byte ptr word_19B16
		mov	bx, 140h
		mov	dx, 10h
		push	es
		push	ds
		pop	es
		assume es:dseg
		pop	ds
		call	sub_FD81
		push	es
		push	ds
		pop	es
		pop	ds
		call	sub_FD96
		mov	di, word_19AFC
		mov	si, 3DD0h
		add	si, word_19B1C
		mov	ah, byte ptr word_19B14
		mov	al, byte ptr word_19B16
		mov	dx, 140h
		mov	bx, 10h
		call	sub_FD81
		retn

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_FD81	proc near		; CODE XREF: seg069:063Bp seg069:066Bp ...
		xor	ch, ch
		mov	cl, al

loc_FD85:				; CODE XREF: sub_FD81+12j
		rep movsb
		mov	cl, al
		sub	di, cx
		sub	si, cx
		add	si, bx
		add	di, dx
		dec	ah
		jnz	short loc_FD85
		retn
sub_FD81	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_FD96	proc near		; CODE XREF: seg069:061Bp seg069:0712p ...
		mov	si, 42D8h
		mov	di, 3DD0h
		mov	cx, 100h

loc_FD9F:				; CODE XREF: sub_FD96+15j
		lodsb
		cmp	al, 0FFh
		jnz	short loc_FDA8
		mov	al, [di-100h]

loc_FDA8:				; CODE XREF: sub_FD96+Cj
		mov	[di], al
		inc	di
		loop	loc_FD9F
		retn
sub_FD96	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_FE1D	proc far		; CODE XREF: sub_C384:loc_C392P

var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= byte ptr -8
var_6		= byte ptr -6
var_4		= word ptr -4
var_2		= word ptr -2

		enter	12h, 0
		push	es
		push	di
		push	si
		cmp	word_1B14E, 0	; MOUSE_KNOWN_MODE
		jz	short loc_FE85
		cmp	byte_1B942, 0	; MOUSE_SHOWING
		jnz	short loc_FE85
		mov	si, 10h
		sub	si, word_19B18
		mov	di, 10h
		sub	di, word_19B1A
		mov	cx, word_19B08
		cmp	cx, word_19B28
		jg	short loc_FE85
		mov	dx, cx
		add	dx, si
		dec	dx
		cmp	dx, word_19B26
		jl	short loc_FE85
		mov	ax, word_19B0A
		cmp	ax, word_19B2C
		jg	short loc_FE85
		mov	bx, ax
		add	bx, di
		dec	bx
		cmp	bx, word_19B2A
		jl	short loc_FE85
		sub	ax, word_19B2A
		jl	short loc_FE8B
		mov	[bp+var_A], ax
		mov	[bp+var_2], 0
		sub	bx, word_19B2C
		jg	short loc_FE9F
		mov	ax, di
		mov	[bp+var_6], al
		jmp	short loc_FEA6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_FE85:				; CODE XREF: sub_FE1D+Cj sub_FE1D+13j	...
		mov	ax, 0
		jmp	loc_FF4E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_FE8B:				; CODE XREF: sub_FE1D+50j
		mov	bx, ax
		neg	ax
		mov	[bp+var_2], ax
		add	bx, di
		mov	[bp+var_6], bl
		mov	[bp+var_A], 0
		jmp	short loc_FEA6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_FE9F:				; CODE XREF: sub_FE1D+5Ej
		mov	ax, di
		sub	ax, bx
		mov	[bp+var_6], al

loc_FEA6:				; CODE XREF: sub_FE1D+65j sub_FE1D+7Fj
		sub	cx, word_19B26
		jl	short loc_FEC2
		mov	[bp+var_C], cx
		mov	[bp+var_4], 0
		sub	dx, word_19B28
		jg	short loc_FED6
		mov	cx, si
		mov	[bp+var_8], cl
		jmp	short loc_FEDD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_FEC2:				; CODE XREF: sub_FE1D+8Dj
		mov	dx, cx
		neg	cx
		mov	[bp+var_4], cx
		add	dx, si
		mov	[bp+var_8], dl
		mov	[bp+var_C], 0
		jmp	short loc_FEDD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_FED6:				; CODE XREF: sub_FE1D+9Bj
		mov	cx, si
		sub	cx, dx
		mov	[bp+var_8], cl

loc_FEDD:				; CODE XREF: sub_FE1D+A2j sub_FE1D+B6j
		jmp	word_1A252
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
loc_Mouse5:
		mov	ax, [bp+var_A]
		mov	dx, word_19B24
		mul	dx
		mov	si, [bp+var_C]
		add	si, ax
		add	si, word_19B34
		mov	ax, [bp+var_2]
		mov	dx, 10h
		mul	dx
		mov	di, 3CD0h
		add	di, word_19B1C
		add	di, ax
		add	di, [bp+var_4]
		mov	bx, word_19B24
		mov	dx, 10h
		mov	ah, [bp+var_6]
		mov	al, [bp+var_8]
		push	si
		push	di
		push	ax
		mov	cx, word_19B20
		mov	ds, cx
		push	ds
		mov	cx, seg	dseg
		mov	es, cx
		assume es:dseg
		call	sub_FD81
		push	es
		pop	ds
		call	sub_FD96
		pop	es
		assume es:nothing
		pop	ax
		pop	si
		pop	di
		mov	word_19B3A, ax
		mov	word_19B3C, si
		mov	word_19B3E, di
		add	si, 100h
		mov	bx, 10h
		mov	dx, word_19B24
		call	sub_FD81
		mov	ax, 0FFFFh
		jmp	short loc_FF4E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_FF4E:				; CODE XREF: sub_FE1D+6Bj
					; sub_FE1D+12Ej
		pop	si
		pop	di
		pop	es
		leave
		retf
sub_FE1D	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_FF53	proc near		; CODE XREF: sub_C384+35P
		push	es		; ä-ï mouse_refresh_done
		push	di
		push	si
		mov	ax, word_19B3A
		mov	si, word_19B3C
		mov	di, word_19B3E
		jmp	word_1A254
sub_FF53	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
loc_Mouse6:
		mov	cx, word_19B20
		mov	es, cx
		mov	bx, 10h
		mov	dx, word_19B24
		call	sub_FD81
		jmp	short loc_FF78
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_FF78:				; CODE XREF: seg069:0925j
		pop	si
		pop	di
		pop	es
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mov	word_19B0E, 0FFFFh
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	0, 0
		push	ds
		push	es
		push	si
		push	di

loc_FF8B:
		mov	ax, ds

loc_FF8D:
		mov	es, ax
		assume es:dseg
		mov	si, 42D8h
		mov	di, 42D8h
		mov	cx, 100h
		mov	bx, [bp+6]
		cmp	bx, 1
		jz	short loc_FFA8
		cmp	bx, 2
		jz	short loc_FFBE
		jmp	short loc_FFE6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_FFA8:				; CODE XREF: seg069:094Ej seg069:0966j
		lodsb
		cmp	al, 7

loc_FFAB:
		jnz	short loc_FFAF

loc_FFAD:
		mov	al, 2

loc_FFAF:				; CODE XREF: seg069:loc_FFABj
		cmp	al, 0Fh
		jnz	short loc_FFB5
		mov	al, 3

loc_FFB5:				; CODE XREF: seg069:0961j
		stosb
		loop	loc_FFA8
		mov	dx, 2
		jmp	short loc_FFD4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_FFBE:				; CODE XREF: seg069:0953j seg069:097Cj
		lodsb
		cmp	al, 7
		jnz	short loc_FFC5
		mov	al, 0FDh ; 'ı'

loc_FFC5:				; CODE XREF: seg069:0971j
		cmp	al, 0Fh
		jnz	short loc_FFCB
		mov	al, 0FEh ; 'ş'

loc_FFCB:				; CODE XREF: seg069:0977j
		stosb
		loop	loc_FFBE
		mov	dx, 0FDh ; 'ı'
		jmp	short loc_FFD4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_FFD4:				; CODE XREF: seg069:096Bj seg069:0981j
		mov	si, 43D8h
		les	di, [bp+8]
		assume es:nothing
		mov	ax, 3
		mul	dx

loc_FFDF:
		add	di, ax
		mov	cx, 6

loc_FFE4:
		rep movsb

loc_FFE6:				; CODE XREF: seg069:0955j
		pop	di
		pop	si
		pop	es
		pop	ds
		leave
		retf
seg069		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg070		segment public 'CODE'
		assume cs:seg070
		;org 0Ch
		assume es:nothing, ss:nothing, ds:dseg
dword_FFEC	dd 0			; DATA XREF: seg070:009Fr seg070:0185w ...
dword_FFF0	dd 0			; DATA XREF: seg070:016Dr seg070:01A2w ...
byte_FFF4	db 0			; DATA XREF: seg070:01BAw sub_101A7r ...
byte_FFF5	db 0			; DATA XREF: seg070:0027r seg070:01C0w ...
byte_FFF6	db 0			; DATA XREF: seg070:0060w seg070:006Ar ...
byte_FFF7	db 0			; DATA XREF: seg070:0035w seg070:003Fw ...
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		add	ax, 901h
		inc	ax
		add	al, 10h
		or	[bx+si], al
		push	es
		add	cl, [bp+si]
		adc	[bx+si], ah
		sti
		push	ax
		cmp	cs:byte_FFF5, 0
		jz	short loc_1006B
		in	al, 60h		; AT Keyboard controller 8042.
		cmp	al, 0E0h ; 'à'
		jnz	short loc_1001B
		mov	cs:byte_FFF7, 2

loc_1001B:				; CODE XREF: seg070:0033j
		cmp	al, 0E1h ; 'á'
		jnz	short loc_10025
		mov	cs:byte_FFF7, 3

loc_10025:				; CODE XREF: seg070:003Dj
		mov	ah, al
		and	al, 7Fh
		cmp	al, 47h	; 'G'
		jb	short loc_1006B
		cmp	al, 53h	; 'S'
		ja	short loc_1006B
		push	bx

loc_10032:
		sub	al, 47h	; 'G'
		mov	bx, 18h
		xlat	byte ptr cs:[bx]
		pop	bx
		shl	ah, 1
		jb	short loc_10048
		or	al, 80h
		or	cs:byte_FFF6, al
		jmp	short loc_10055
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_10048:				; CODE XREF: seg070:005Cj
		not	al
		and	al, cs:byte_FFF6
		or	al, 80h
		mov	cs:byte_FFF6, al

loc_10055:				; CODE XREF: seg070:0065j seg070:009Bj
		in	al, 61h		; PC/XT	PPI port B bits:
					; 0: Tmr 2 gate	ÍËÍ OR	03H=spkr ON
					; 1: Tmr 2 data	Í¼  AND	0fcH=spkr OFF
					; 3: 1=read high switches
					; 4: 0=enable RAM parity checking
					; 5: 0=enable I/O channel check
					; 6: 0=hold keyboard clock low
					; 7: 0=enable kbrd
		jmp	short $+2
		or	al, 80h
		out	61h, al		; PC/XT	PPI port B bits:
					; 0: Tmr 2 gate	ÍËÍ OR	03H=spkr ON
					; 1: Tmr 2 data	Í¼  AND	0fcH=spkr OFF
					; 3: 1=read high switches
					; 4: 0=enable RAM parity checking
					; 5: 0=enable I/O channel check
					; 6: 0=hold keyboard clock low
					; 7: 0=enable kbrd
		jmp	short $+2
		and	al, 7Fh
		out	61h, al		; PC/XT	PPI port B bits:
					; 0: Tmr 2 gate	ÍËÍ OR	03H=spkr ON					; 1: Tmr 2 data	Í¼  AND	0fcH=spkr OFF
					; 3: 1=read high switches
					; 4: 0=enable RAM parity checking
					; 5: 0=enable I/O channel check
					; 6: 0=hold keyboard clock low
					; 7: 0=enable kbrd
		jmp	short $+2
		mov	al, 20h	; ' '
		out	20h, al		; Interrupt controller,	8259A.
		pop	ax
		iret
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1006B:				; CODE XREF: seg070:002Dj seg070:004Bj ...
		mov	ah, cs:byte_FFF7
		or	ah, ah
		jz	short loc_1007D
		dec	ah
		mov	cs:byte_FFF7, ah
		jmp	short loc_10055
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1007D:				; CODE XREF: seg070:0092j
		pop	ax
		cli
		jmp	cs:dword_FFEC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	ax
		push	ds
		mov	ax, seg	dseg
		mov	ds, ax
		mov	ax, word_1B14E
		or	ax, ax
		jnz	short loc_10095
		jmp	loc_10133
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10095:				; CODE XREF: seg070:00B0j
		mov	al, cs:byte_FFF6
		xor	ah, ah
		or	ax, ax
		jnz	short loc_100A2
		jmp	loc_10133
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_100A2:				; CODE XREF: seg070:00BDj
		and	cs:byte_FFF6, 7Fh
		push	bx
		push	cx
		push	dx
		push	ds
		xor	bx, bx
		mov	ds, bx
		assume ds:seg000
		mov	bx, 417h
		mov	bl, [bx]
		pop	ds
		assume ds:dseg
		push	ax
		push	ax
		push	ax
		shr	ax, 4
		and	ax, 3
		mov	word_1AADE, ax
		pop	ax
		shr	ax, 6
		and	ax, 1
		mov	word_1A8FA, ax
		pop	ax
		and	al, 0Ch
		ror	ax, 3
		cwd
		xor	ah, ah
		add	dx, ax
		test	bl, 10h
		jnz	short loc_100E7
		add	dx, dx
		add	dx, dx
		test	bl, 3
		jz	short loc_100E7
		add	dx, dx

loc_100E7:				; CODE XREF: seg070:00FAj seg070:0103j
		mov	cx, word_1BC92
		add	cx, dx
		or	cx, cx
		jns	short loc_100F3
		xor	cx, cx

loc_100F3:				; CODE XREF: seg070:010Fj
		cmp	cx, 13Fh
		jle	short loc_100FC
		mov	cx, 13Fh

loc_100FC:				; CODE XREF: seg070:0117j
		shl	cx, 1
		pop	ax
		and	al, 3
		ror	ax, 1
		cwd
		xor	ah, ah
		add	dx, ax
		test	bl, 10h
		jnz	short loc_10118
		add	dx, dx
		add	dx, dx
		test	bl, 3
		jz	short loc_10118
		add	dx, dx

loc_10118:				; CODE XREF: seg070:012Bj seg070:0134j
		add	dx, word_1BC94
		or	dx, dx
		jns	short loc_10122
		xor	dx, dx

loc_10122:				; CODE XREF: seg070:013Ej
		cmp	dx, 0C7h ; 'Ç'
		jle	short loc_1012B
		mov	dx, 0C7h ; 'Ç'

loc_1012B:				; CODE XREF: seg070:0146j
		call	sub_FA48
		pop	dx
		pop	cx
		pop	bx

loc_10133:				; CODE XREF: seg070:00B2j seg070:00BFj
		mov	ax, word_1A37E
		or	ax, ax
		jz	short loc_1014B
		push	bx
		push	cx
		push	dx
		push	si
		push	di
		push	es
		call	sub_12ADC
		pop	es
		pop	di
		pop	si
		pop	dx
		pop	cx
		pop	bx

loc_1014B:				; CODE XREF: seg070:0158j
		pop	ds
		pop	ax
		jmp	cs:dword_FFF0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		push	ds
		mov	cs:byte_FFF6, 0
		mov	word_1AADE, 0
		mov	al, 9
		mov	ah, 35h
		int	21h		; DOS -	2+ - GET INTERRUPT VECTOR
					; AL = interrupt number
					; Return: ES:BX	= value	of interrupt vector
		mov	word ptr cs:dword_FFEC,	bx
		mov	bx, es
		mov	word ptr cs:dword_FFEC+2, bx
		mov	dx, 25h	; '%'
		push	cs
		pop	ds
		assume ds:seg070
		mov	al, 9
		mov	ah, 25h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		mov	al, 1Ch
		mov	ah, 35h
		int	21h		; DOS -	2+ - GET INTERRUPT VECTOR
					; AL = interrupt number
					; Return: ES:BX	= value	of interrupt vector
		mov	word ptr cs:dword_FFF0,	bx
		mov	bx, es
		mov	word ptr cs:dword_FFF0+2, bx
		mov	dx, 0A4h ; '¤'
		push	cs
		pop	ds
		mov	al, 1Ch
		mov	ah, 25h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		pop	ds
		assume ds:dseg
		mov	cs:byte_FFF4, 0FFh
		mov	cs:byte_FFF5, 0FFh
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_101A7	proc far		; CODE XREF: sub_EE56+24P
		cmp	cs:byte_FFF4, 0
		jz	short loc_101D5
		push	ds
		mov	dx, word ptr cs:dword_FFEC+2
		mov	ds, dx
		mov	dx, word ptr cs:dword_FFEC
		mov	al, 9
		mov	ah, 25h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		mov	dx, word ptr cs:dword_FFF0+2
		mov	ds, dx
		mov	dx, word ptr cs:dword_FFF0
		mov	al, 1Ch
		mov	ah, 25h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		pop	ds

loc_101D5:				; CODE XREF: sub_101A7+6j
		mov	cs:byte_FFF4, 0
		mov	word_1AADE, 0	; MOUSE_FORCE_BUTTON
		retf
sub_101A7	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mov	al, cs:byte_FFF4
		cbw
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mov	cs:byte_FFF5, 0FFh
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_101EF:
		mov	cs:byte_FFF5, 0
		mov	cs:byte_FFF6, 0
		retf
seg070		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg071		segment public 'CODE'
		assume cs:seg071
		;org 0Ch
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __stdcall	far sub_101FC(char *)
sub_101FC	proc far		; CODE XREF: sub_C1A2+DP

var_2		= word ptr -2
arg_0		= word ptr  6

		enter	4, 0
		push	di
		push	si
		push	word ptr [bp+8]
		push	[bp+arg_0]	; char *
		call	_strlen_0
		add	sp, 4

loc_10210:				; CODE XREF: sub_101FC:loc_10253j
		mov	si, 0FFFFh
		push	word ptr [bp+8]
		push	[bp+arg_0]	; char *
		call	_strlen_0
		add	sp, 4
		mov	bx, ax
		add	bx, [bp+arg_0]
		mov	es, word ptr [bp+8]
		dec	bx
		mov	di, bx
		mov	[bp+var_2], es
		cmp	byte ptr es:[bx], 20h ;	' '
		jz	short loc_10240
		cmp	byte ptr es:[di], 9
		jz	short loc_10240
		sub	si, si
		jmp	short loc_10247
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_10240:				; CODE XREF: sub_101FC+37j
					; sub_101FC+3Dj
		mov	es, [bp+var_2]

loc_10243:
		mov	byte ptr es:[di], 0

loc_10247:				; CODE XREF: sub_101FC+41j
		lea	ax, [di-1]
		cmp	ax, [bp+arg_0]
		jnb	short loc_10251

loc_1024F:
		sub	si, si

loc_10251:				; CODE XREF: sub_101FC+51j
		or	si, si

loc_10253:
		jnz	short loc_10210
		pop	si
		pop	di
		leave
		retf	4
sub_101FC	endp

seg071		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg072		segment public 'CODE'
		assume cs:seg072
		;org 0Bh
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_1025C(int,int,int,int)
sub_1025C	proc far		; CODE XREF: sub_C9DE+BAP

var_32		= word ptr -32h
var_30		= word ptr -30h
var_2E		= word ptr -2Eh
var_2C		= byte ptr -2Ch
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8

		enter	2Ch, 0
		push	dx
		push	ax
		push	bx
		push	di
		push	si		; char *
		mov	[bp+var_4], 0FFFFh
		mov	[bp+var_2], 0
		sub	si, si
		mov	di, si

loc_10273:				; CODE XREF: sub_1025C+68j
		mov	al, byte_1A264
		sub	ah, ah
		inc	ax
		mov	cx, 0Ah
		cwd
		idiv	cx
		mov	byte_1A264, dl
		push	43ECh		; "$MPOP.$"
		lea	ax, [bp+var_2C]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		lea	ax, [bp+var_2C]
		push	ss
		push	ax		; char *
		mov	al, byte_1A264
		sub	ah, ah
		mov	dx, 1

loc_1029F:				; @env_catint
		call	sub_297C
		mov	bl, byte_1A264
		sub	bh, bh
		cmp	[bx+43F6h], bh
		jnz	short loc_102B6
		mov	si, 0FFFFh
		jmp	short loc_102C2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_102B6:				; CODE XREF: sub_1025C+52j
		inc	di
		cmp	di, 0Ah
		jle	short loc_102C2
		mov	di, [bp+var_2]
		jmp	short loc_10323
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_102C2:				; CODE XREF: sub_1025C+57j
					; sub_1025C+5Ej
		or	si, si
		jz	short loc_10273
		mov	bl, byte_1A264
		sub	bh, bh
		mov	byte ptr [bx+43F6h], 0FFh
		push	43E8h		; "wb"
		lea	ax, [bp+var_2C]
		push	ax		; char *
		call	_fopen
		add	sp, 4
		mov	di, ax
		or	di, di
		jz	short loc_10323
		sub	si, si
		cmp	[bp+arg_0], si
		jle	short loc_1031B
		mov	[bp+var_2], di

loc_102F0:				; CODE XREF: sub_1025C+BDj
		mov	dx, [bp+var_2E]
		add	dx, si
		mov	bx, [bp+var_32]
		mov	ax, [bp+var_30]
		call	sub_C910
		push	dx
		push	ax		; void far *
		push	0		; int
		push	1		; int
		mov	ax, [bp+arg_2]
		cwd			; int
		mov	bx, di
		call	sub_BEA8
		or	dx, ax
		jz	short loc_10323
		inc	si
		cmp	[bp+arg_0], si
		jg	short loc_102F0

loc_1031B:				; CODE XREF: sub_1025C+8Fj
		mov	al, byte_1A264
		sub	ah, ah
		mov	[bp+var_4], ax

loc_10323:				; CODE XREF: sub_1025C+63j
					; sub_1025C+88j ...
		or	di, di
		jz	short loc_10330
		push	di		; FILE *
		call	_fclose
		add	sp, 2

loc_10330:				; CODE XREF: sub_1025C+C9j
		mov	ax, [bp+var_4]
		pop	si
		pop	di
		leave
		retf	4
sub_1025C	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_1033A(int,int,int,int,int,int)
sub_1033A	proc far		; CODE XREF: sub_CABC+81P

var_30		= word ptr -30h
var_2E		= word ptr -2Eh
var_2C		= word ptr -2Ch
var_2A		= byte ptr -2Ah
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		enter	2Ah, 0
		push	dx
		push	ax
		push	bx
		push	di
		push	si		; char *
		push	43ECh		; char *
		lea	ax, [bp+var_2A]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		lea	ax, [bp+var_2A]
		push	ss
		push	ax		; char *
		mov	ax, [bp+var_2E]
		mov	dx, 1
		call	sub_297C
		push	4400h		; char *
		lea	ax, [bp+var_2A]
		push	ax		; char *
		call	_fopen
		add	sp, 4	
		mov	di, ax
		or	di, di
		jz	short loc_103AC
		sub	si, si
		cmp	[bp+arg_0], si

loc_1037C:
		jle	short loc_103AC
		mov	[bp+var_2], di

loc_10381:				; CODE XREF: sub_1033A+70j
		mov	dx, [bp+arg_4]
		add	dx, si
		mov	bx, [bp+var_30]
		mov	ax, [bp+arg_6]
		call	sub_C910
		push	dx
		push	ax		; void *
		push	0		; int
		push	1		; int
		mov	ax, [bp+arg_2]
		cwd			; int
		mov	bx, di
		call	sub_BCA0	; äã­ªæ¨ï @fileio_fread_f
		or	dx, ax
		jz	short loc_103AC
		inc	si
		cmp	[bp+arg_0], si
		jg	short loc_10381

loc_103AC:				; CODE XREF: sub_1033A+3Bj
					; sub_1033A:loc_1037Cj	...
		or	di, di
		jz	short loc_103D3
		push	di		; FILE *
		call	_fclose
		add	sp, 2
		cmp	[bp+var_2C], 0
		jnz	short loc_103D3
		mov	bx, [bp+var_2E]
		mov	byte ptr [bx+43F6h], 0
		lea	ax, [bp+var_2A]
		push	ax		; char *
		call	_remove

loc_103D0:
		add	sp, 2

loc_103D3:				; CODE XREF: sub_1033A+74j
					; sub_1033A+83j
		pop	si

loc_103D4:
		pop	di
		leave
		retf	8
sub_1033A	endp

seg072		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg073		segment public 'CODE'
	
seg073		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg074		segment public 'CODE'
		assume cs:seg074
		;org 2
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_104F2	proc far		; CODE XREF: sub_C4C0:loc_C510P
					; sub_C4C0+6BP	...

arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp		; ä-ï @mem_normalize

loc_104F3:
		mov	bp, sp
		mov	ax, [bp+arg_0]
		mov	dx, [bp+arg_2]
		mov	bx, ax
		shr	bx, 4

loc_10500:
		add	dx, bx

loc_10502:
		and	ax, 0Fh
		leave
		retf	4
sub_104F2	endp

seg074		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg077		segment public 'CODE'
		assume cs:seg077
		;org 5
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_105B6	proc far		; CODE XREF: sub_D33D+5BP sub_D3B3+1DP

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		cli
		mov	al, 36h	; '6'
		out	43h, al		; Timer	8253-5 (AT: 8254.2).

loc_105BE:
		mov	ax, [bp+arg_0]
		out	40h, al		; Timer	8253-5 (AT: 8254.2).

loc_105C3:
		mov	al, ah
		out	40h, al		; Timer	8253-5 (AT: 8254.2).
		sti
		leave
		retf
sub_105B6	endp

seg077		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg078		segment public 'CODE'
		assume cs:seg078
		;org 0Ah
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_105CA	proc far		; CODE XREF: sub_D7C4+5EP

arg_0		= dword	ptr  6

		push	bp		; ä-ï @mcga_getpal
		mov	bp, sp
		push	di
		push	si
		mov	word_19926, 1	; mcga_palette_update
		mov	bx, 40h	; '@'
		mov	si, 300h
		les	di, [bp+arg_0]
		mov	dx, 3C7h
		xor	al, al
		out	dx, al

loc_105E4:				; CODE XREF: sub_105CA+42j
		mov	dx, 3DAh
		mov	ah, 8

loc_105E9:				; CODE XREF: sub_105CA+22j
		in	al, dx		; Video	status bits:
					; 0: retrace.  1=display is in vert or horiz retrace.
					; 1: 1=light pen is triggered; 0=armed
					; 2: 1=light pen switch	is open; 0=closed
					; 3: 1=vertical	sync pulse is occurring.
		and	al, ah
		jnz	short loc_105E9

loc_105EE:				; CODE XREF: sub_105CA+27j
		in	al, dx		; Video	status bits:
					; 0: retrace.  1=display is in vert or horiz retrace.
					; 1: 1=light pen is triggered; 0=armed
					; 2: 1=light pen switch	is open; 0=closed
					; 3: 1=vertical	sync pulse is occurring.
		and	al, ah
		jz	short loc_105EE
		cli
		mov	dx, 3C9h	; ¯(r)àâ 0å3á9 ¨á¯(r)"ì§ã¥âáï ¢ ¯ "¨âà(r)¢ëå (r)¯¥à æ¨ïå
		mov	cx, si
		cmp	cx, bx
		jbe	short loc_105FF
		mov	cx, bx

loc_105FF:				; CODE XREF: sub_105CA+31j
		push	cx

loc_10600:				; CODE XREF: sub_105CA+3Cj
		ins	byte ptr es:[di], dx
		jmp	short loc_10604
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
algn_10603:
		align 2

loc_10604:				; CODE XREF: sub_105CA+37j
		jmp	short $+2
		loop	loc_10600
		sti
		pop	cx
		sub	si, cx
		jnz	short loc_105E4

loc_1060E:
		mov	word_19926, 0

loc_10614:
		pop	si
		pop	di
		leave
		retf	4
sub_105CA	endp

seg078		ends

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg079		segment public 'CODE'
		assume cs:seg079
		;org 0Ah
		assume es:nothing, ss:nothing, ds:dseg
		push	bp
		mov	bp, sp
		mov	dx, 3DAh
		mov	ah, 8

loc_10622:				; CODE XREF: seg079:0015j
		in	al, dx		; Video	status bits:
					; 0: retrace.  1=display is in vert or horiz retrace.
					; 1: 1=light pen is triggered; 0=armed
					; 2: 1=light pen switch	is open; 0=closed
					; 3: 1=vertical	sync pulse is occurring.
		and	al, ah
		jnz	short loc_10622

loc_10627:				; CODE XREF: seg079:001Aj
		in	al, dx		; Video	status bits:
					; 0: retrace.  1=display is in vert or horiz retrace.
					; 1: 1=light pen is triggered; 0=armed
					; 2: 1=light pen switch	is open; 0=closed
					; 3: 1=vertical	sync pulse is occurring.
		and	al, ah
		jz	short loc_10627
		leave
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_1062E	proc far		; CODE XREF: seg065:01FAP

var_8		= word ptr -8
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= dword	ptr  6

		enter	4, 0
		push	dx
		push	ax
		push	di
		push	si
		mov	cx, ax
		shl	ax, 1
		add	ax, cx

loc_1063C:
		mov	[bp+var_2], ax
		mov	ax, dx
		shl	dx, 1
		add	dx, ax
		mov	[bp+var_4], dx
		mov	word_19926, 0FFFFh
		mov	bx, word_19924
		mov	di, [bp+var_4]
		push	ds
		lds	si, [bp+arg_0]
		add	si, [bp+var_2]
		mov	dx, 3C8h
		mov	ax, [bp+var_8]
		out	dx, al

loc_10663:
		inc	dx

loc_10664:				; CODE XREF: sub_1062E+58j
		push	dx
		mov	dx, 3DAh
		mov	ah, 8

loc_1066A:				; CODE XREF: sub_1062E+3Fj
		in	al, dx		; Video	status bits:
					; 0: retrace.  1=display is in vert or horiz retrace.
					; 1: 1=light pen is triggered; 0=armed
					; 2: 1=light pen switch	is open; 0=closed
					; 3: 1=vertical	sync pulse is occurring.
		and	al, ah
		jnz	short loc_1066A

loc_1066F:				; CODE XREF: sub_1062E+44j
		in	al, dx		; Video	status bits:
					; 0: retrace.  1=display is in vert or horiz retrace.
					; 1: 1=light pen is triggered; 0=armed
					; 2: 1=light pen switch	is open; 0=closed
					; 3: 1=vertical	sync pulse is occurring.
		and	al, ah
		jz	short loc_1066F
		cli
		pop	dx
		mov	cx, di
		cmp	cx, bx
		jbe	short loc_1067E
		mov	cx, bx

loc_1067E:				; CODE XREF: sub_1062E+4Cj
		push	cx

loc_1067F:				; CODE XREF: sub_1062E+52j
		outsb
		loop	loc_1067F
		sti
		pop	cx
		sub	di, cx
		jnz	short loc_10664
		pop	ds
		mov	word_19926, 0
		pop	si

loc_10690:
		pop	di
		leave

locret_10692:
		retf	4
sub_1062E	endp

seg079		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg080		segment public 'CODE'
		assume cs:seg080
		;org 5
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_10696	proc far		; CODE XREF: sub_DDB8:loc_E414P

var_A		= word ptr -0Ah
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= dword	ptr  0Ah

		enter	0Ah, 0
		push	di
		push	si
		mov	ax, [bp+arg_0]
		mov	dx, [bp+arg_2]
		add	ax, 5
		mov	word ptr [bp+var_8], ax
		mov	word ptr [bp+var_8+2], dx
		mov	[bp+var_A], 0
		jmp	loc_10738
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_106B4:				; CODE XREF: sub_10696:loc_10744j
		mov	si, ax
		shl	si, 1
		add	si, ax
		shl	si, 2
		mov	ax, es:[bx+si+42h]
		mov	dx, es:[bx+si+44h]
		mov	word ptr [bp+var_4], ax
		mov	word ptr [bp+var_4+2], dx
		or	dx, ax
		jz	short loc_10747
		push	ds
		les	di, [bp+var_8]
		lds	si, [bp+var_4]
		xor	bx, bx

loc_106D8:				; CODE XREF: sub_10696+49j
					; sub_10696:loc_106EBj	...
		lodsb
		cmp	al, 0FCh ; 'ü'
		jz	short loc_10734
		cmp	al, 0FFh
		jz	short loc_106D8
		cmp	al, 0FDh ; 'ı'

loc_106E3:
		jz	short loc_106E8
		jmp	short loc_10708
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_106E8:				; CODE XREF: sub_10696:loc_106E3j
					; sub_10696+70j
		lodsb
		cmp	al, 0FFh

loc_106EB:
		jz	short loc_106D8

loc_106ED:
		mov	al, [si]
		cmp	al, 0FDh ; 'ı'
		jz	short loc_10705
		xor	bh, bh
		mov	bl, al
		shl	bx, 1
		mov	cx, bx
		shl	bx, 1
		add	bx, cx
		mov	al, es:[bx+di]
		db	3Eh
		mov	[si], al

loc_10705:				; CODE XREF: sub_10696+5Bj
		inc	si
		jmp	short loc_106E8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10708:				; CODE XREF: sub_10696+4Fj					; sub_10696+97j
		mov	al, [si]
		cmp	al, 0FFh
		jz	short loc_10730
		cmp	al, 0FEh ; 'ş'
		jnz	short loc_10717
		add	si, 2
		mov	al, [si]

loc_10717:				; CODE XREF: sub_10696+7Aj
		cmp	al, 0FDh ; 'ı'
		jz	short loc_1072C
		xor	bh, bh
		mov	bl, al
		shl	bx, 1
		mov	cx, bx
		shl	bx, 1
		add	bx, cx
		mov	al, es:[bx+di]
		mov	[si], al

loc_1072C:				; CODE XREF: sub_10696+83j
		inc	si
		jmp	short loc_10708
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_10730:				; CODE XREF: sub_10696+76j
		inc	si
		jmp	short loc_106D8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_10734:				; CODE XREF: sub_10696+45j
		pop	ds
		inc	[bp+var_A]

loc_10738:				; CODE XREF: sub_10696+1Aj
		mov	ax, [bp+var_A]
		les	bx, [bp+arg_4]

loc_1073E:
		cmp	es:[bx+4], ax
		jle	short loc_10747

loc_10744:
		jmp	loc_106B4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10747:				; CODE XREF: sub_10696+37j
					; sub_10696+ACj
		pop	si
		pop	di
		leave
		retf	8
sub_10696	endp

seg080		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg081		segment public 'CODE'
		assume cs:seg081
		;org 0Dh
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_1074E	proc near		; CODE XREF: seg081:00E1p seg081:01CDp ...

arg_0		= dword	ptr  4
arg_4		= word ptr  8

		push	bp
		mov	bp, sp
		mov	ax, word ptr [bp+arg_0]
		or	ax, word ptr [bp+arg_0+2]
		jz	short locret_10769
		mov	bx, [bp+arg_4]
		mov	word_1A280, bx
		call	[bp+arg_0]
		mov	word_1A280, 0

locret_10769:				; CODE XREF: sub_1074E+9j
		leave
		retn
sub_1074E	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		push	dx
		push	ax
		push	di
		push	si
		mov	word_1A8F8, 0
		mov	word_1A83C, 100h
		sub	ax, ax
		mov	bx, 6572h
		mov	cx, 200h
		mov	di, bx
		push	ds
		pop	es
		assume es:dseg
		rep stosw
		cmp	word_1A27A, ax
		jnz	short loc_107A2

loc_10793:
		lea	bx, unk_1B990
		call	sub_12B00
		mov	word_1A27A, 0FFFFh

loc_107A2:				; CODE XREF: seg081:0051j
		cmp	word ptr [bp-4], 0
		jle	short loc_107C6
		mov	word_1C3E2, 1

loc_107AE:
		mov	word_1C3E4, 0
		mov	ax, 6576h
		mov	cx, [bp-4]
		dec	cx
		shl	cx, 1
		mov	di, ax
		mov	si, 6572h
		push	ds
		pop	es
		rep movsw

loc_107C6:				; CODE XREF: seg081:0066j
		cmp	word ptr [bp-2], 0
		jle	short loc_107EC
		mov	word_1C7DE, 1
		mov	word_1C7E0, 0
		mov	ax, 696Ch
		mov	cx, [bp-2]
		dec	cx
		shl	cx, 1
		std
		mov	di, ax
		mov	si, 6970h
		push	ds
		pop	es
		rep movsw
		cld

loc_107EC:				; CODE XREF: seg081:008Aj
		sub	ax, ax
		mov	bx, 5294h
		mov	cx, 20h	; ' '
		mov	di, bx
		push	ds
		pop	es
		rep stosw
		mov	ax, 0FFFFh
		mov	word_1B104, ax
		mov	word_1B106, ax
		mov	ax, [bp-4]
		mov	word_1BC90, ax
		mov	ax, [bp-2]
		mov	word_1B146, ax
		sub	ax, ax
		mov	word_1A278, ax
		mov	word_1A282, ax
		push	1
		push	word_1A27E
		push	word_1A27C
		call	sub_1074E
		add	sp, 6
		pop	si
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	2, 0
		cmp	word_1B142, 0
		jz	short loc_10854
		cmp	word_1A278, 0
		jnz	short loc_10854
		push	0
		push	20h ; ' '
		push	0
		push	1
		mov	ax, 0FFFBh
		mov	dx, 2
		mov	bx, 3
		call	sub_F0D6

loc_10854:				; CODE XREF: seg081:00F5j seg081:00FCj
		mov	ax, 0FFFFh
		mov	word_1A278, ax
		mov	word_1B142, ax
		mov	bx, 6572h
		mov	cx, [bp-2]

loc_10863:				; CODE XREF: seg081:0135j
		mov	ax, [bx+2]
		or	ax, [bx]
		jz	short loc_1086E
		or	byte ptr [bx+3], 80h

loc_1086E:				; CODE XREF: seg081:0128j
		add	bx, 4
		cmp	bx, 6972h
		jb	short loc_10863
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		cmp	word_1A278, 0
		jz	short locret_10899
		mov	bx, 6572h

loc_10884:				; CODE XREF: seg081:014Fj
		and	byte ptr [bx+3], 7Fh
		add	bx, 4
		cmp	bx, 6972h
		jb	short loc_10884
		sub	ax, ax
		mov	word_1B144, ax
		mov	word_1A278, ax

locret_10899:				; CODE XREF: seg081:013Fj
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	8, 0
		push	di
		mov	di, ax
		cmp	di, 20h	; ' '
		jge	short loc_10913
		or	di, di
		jle	short loc_10913
		mov	ax, 1
		cwd
		mov	cx, di
		or	cl, cl
		jz	short loc_108BC

loc_108B4:				; CODE XREF: seg081:017Aj
		shl	ax, 1
		rcl	dx, 1
		dec	cl
		jnz	short loc_108B4

loc_108BC:				; CODE XREF: seg081:0172j
		not	ax
		not	dx
		mov	[bp-4],	ax
		mov	[bp-2],	dx
		mov	bx, 6572h
		mov	cx, [bp-6]

loc_108CC:				; CODE XREF: seg081:01B0j
		mov	ax, [bp-4]
		mov	dx, [bp-2]
		and	[bx], ax
		and	[bx+2],	dx
		cmp	word ptr [bx], 2
		jnz	short loc_108E9
		cmp	word ptr [bx+2], 0
		jnz	short loc_108E9
		sub	ax, ax
		mov	[bx+2],	ax
		mov	[bx], ax

loc_108E9:				; CODE XREF: seg081:019Aj seg081:01A0j
		add	bx, 4
		cmp	bx, 6972h
		jb	short loc_108CC
		mov	bx, di
		shl	bx, 1
		add	bx, 5294h
		cmp	word ptr [bx], 0
		jz	short loc_10913
		mov	word ptr [bx], 0
		push	4
		push	word_1A27E
		push	word_1A27C
		call	sub_1074E
		add	sp, 6

loc_10913:				; CODE XREF: seg081:0164j seg081:0168j ...
		sub	ax, ax
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		nop

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_1091A	proc far

var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2

		enter	0Eh, 0
		push	ax
		push	di
		push	si
		mov	cx, dx
		mov	[bp+var_4], 0FFFFh
		mov	[bp+var_2], 0FFFFh
		sub	ax, ax
		mov	[bp+var_6], ax
		mov	[bp+var_8], ax
		mov	[bp+var_E], ax
		or	cx, cx
		jle	short loc_1096B
		mov	di, cx

loc_1093E:				; CODE XREF: sub_1091A+4Fj
		mov	ax, 1
		cwd
		mov	cl, [bx]
		or	cl, cl
		jz	short loc_10950

loc_10948:				; CODE XREF: sub_1091A+34j
		shl	ax, 1
		rcl	dx, 1
		dec	cl
		jnz	short loc_10948

loc_10950:				; CODE XREF: sub_1091A+2Cj
		xor	[bp+var_4], ax
		xor	[bp+var_2], dx
		or	[bp+var_8], ax
		or	[bp+var_6], dx
		mov	si, [bx]
		shl	si, 1
		mov	word ptr [si+5294h], 0
		inc	bx
		inc	bx
		dec	di
		jnz	short loc_1093E

loc_1096B:				; CODE XREF: sub_1091A+20j
		mov	ax, 1
		cwd
		mov	cl, byte ptr [bp+var_10]
		or	cl, cl
		jz	short loc_1097E

loc_10976:				; CODE XREF: sub_1091A+62j
		shl	ax, 1
		rcl	dx, 1
		dec	cl
		jnz	short loc_10976

loc_1097E:				; CODE XREF: sub_1091A+5Aj
		mov	[bp+var_C], ax
		mov	[bp+var_A], dx
		mov	bx, 6572h
		mov	cx, [bp+var_E]

loc_1098A:				; CODE XREF: sub_1091A+9Cj
		mov	ax, [bp+var_8]
		mov	dx, [bp+var_6]
		and	ax, [bx]
		and	dx, [bx+2]
		or	dx, ax
		jz	short loc_109AF
		mov	ax, [bp+var_4]
		mov	dx, [bp+var_2]
		and	[bx], ax
		and	[bx+2],	dx
		mov	ax, [bp+var_C]
		mov	dx, [bp+var_A]
		or	[bx], ax
		or	[bx+2],	dx

loc_109AF:				; CODE XREF: sub_1091A+7Dj
		add	bx, 4
		cmp	bx, 6972h
		jb	short loc_1098A
		mov	bx, [bp+var_10]
		shl	bx, 1
		mov	word ptr [bx+5294h], 0FFFFh
		pop	si
		pop	di
		leave
		retf
sub_1091A	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_109C8	proc far		; CODE XREF: sub_10B56+3FBp

arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah

		push	bp
		mov	bp, sp
		push	di
		push	si
		push	ds
		les	di, [bp+arg_4]
		assume es:nothing
		lds	si, [bp+arg_0]
		mov	cx, 3
		xor	dx, dx

loc_109D9:				; CODE XREF: sub_109C8+1Aj
		lodsb
		sub	al, es:[di]
		inc	di
		imul	al
		add	dx, ax
		loop	loc_109D9
		mov	ax, dx
		pop	ds
		pop	si
		pop	di
		leave
		retf	8
sub_109C8	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_109EE	proc far		; CODE XREF: sub_10B56+118p

var_16		= word ptr -16h
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= dword	ptr  0Ah

		enter	16h, 0
		push	di
		push	si
		mov	si, word ptr [bp+arg_4]
		mov	[bp+var_6], 0
		mov	es, word ptr [bp+arg_4+2]
		cmp	word ptr es:[si], 0
		jle	short loc_10A55
		lea	ax, [si+2]
		mov	dx, es
		mov	cx, ax
		mov	[bp+var_8], dx
		lea	di, [bp+var_16]
		mov	[bp+var_A], cx
		mov	si, cx

loc_10A17:				; CODE XREF: sub_109EE+63j
		mov	es, [bp+var_8]
		mov	bx, si
		inc	si
		inc	si

loc_10A1E:
		mov	ax, es:[bx]
		mov	cx, ax
		shl	ax, 1
		add	ax, cx
		shl	ax, 1
		add	ax, [bp+arg_0]
		mov	dx, [bp+arg_2]
		inc	ax
		inc	ax
		push	dx
		push	ax
		call	sub_133EA
		add	sp, 4
		cwd
		add	di, 4
		mov	[di-4],	ax
		mov	[di-2],	dx
		inc	[bp+var_6]
		mov	ax, [bp+var_6]
		les	bx, [bp+arg_4]
		cmp	es:[bx], ax
		jg	short loc_10A17
		mov	si, bx

loc_10A55:				; CODE XREF: sub_109EE+15j
		mov	cx, es
		lea	ax, [si+2]
		push	cx
		push	ax
		lea	ax, [bp+var_16]
		push	ss
		push	ax
		mov	es, cx
		mov	ax, es:[si]
		call	sub_12C7E
		pop	si
		pop	di
		leave
		retf	8
sub_109EE	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_10A72	proc far		; CODE XREF: sub_10B56+108p

var_8		= dword	ptr -8
arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		enter	8, 0
		push	di
		push	si
		mov	di, [bp+arg_4]
		mov	cx, word ptr [bp+arg_0]
		sub	bx, bx
		mov	es, [bp+arg_6]
		mov	es:[di], bx
		mov	es, word ptr [bp+arg_0+2]
		mov	si, cx
		cmp	es:[si], bx
		jle	short loc_10ACB
		mov	ax, cx
		add	ax, 7
		mov	dx, es
		mov	word ptr [bp+var_8], ax
		mov	word ptr [bp+var_8+2], dx
		mov	ds, [bp+arg_6]

loc_10AA0:				; CODE XREF: sub_10A72+52j
		les	si, [bp+var_8]
		test	byte ptr es:[si], 10h
		jz	short loc_10AB9
		cmp	word ptr [di], 3
		jge	short loc_10AB9
		mov	si, [di]
		shl	si, 1
		add	si, di
		mov	[si+2],	bx
		inc	word ptr [di]

loc_10AB9:				; CODE XREF: sub_10A72+35j
					; sub_10A72+3Aj
		add	word ptr [bp+var_8], 6
		inc	bx
		les	si, [bp+arg_0]
		cmp	es:[si], bx
		jg	short loc_10AA0
		mov	cx, seg	dseg
		mov	ds, cx

loc_10ACB:				; CODE XREF: sub_10A72+1Cj
		pop	si
		pop	di
		leave
		retf	8
sub_10A72	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		mov	ax, [bp+6]
		mov	dx, [bp+8]
		mov	word ptr dword_1A274, ax
		mov	word ptr dword_1A274+2,	dx
		leave
		retf	4

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_10AE6	proc near		; CODE XREF: sub_10B56+6Ep
		push	di
		mov	di, 0FFF6h
		sub	dx, dx
		mov	bx, 5294h

loc_10AEF:				; CODE XREF: sub_10AE6+15j
		cmp	word ptr [bx], 0
		jz	short loc_10B00
		inc	dx
		inc	bx
		inc	bx
		cmp	bx, 52D4h
		jb	short loc_10AEF
		jmp	short loc_10B06
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_10B00:				; CODE XREF: sub_10AE6+Cj
		mov	di, dx
		mov	ax, di
		pop	di
		retn
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10B06:				; CODE XREF: sub_10AE6+17j
		push	0
		push	20h ; ' '       ; __int32
		push	0
		push	1		; __int32
		mov	ax, 0FFFBh
		mov	dx, 2		; int
		mov	bx, 3
		call	sub_F0D6
		mov	ax, di
		pop	di
		retn
sub_10AE6	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_10B20	proc near		; CODE XREF: sub_10B56+120p

var_2		= word ptr -2
arg_0		= word ptr  4

		enter	2, 0
		push	di
		mov	di, [bp+arg_0]
		mov	word ptr [di], 0FFFFh
		sub	cx, cx
		mov	[bp+var_2], cx
		mov	bx, 6572h

loc_10B34:				; CODE XREF: sub_10B20+2Dj
		mov	ax, [bx+2]
		or	ax, [bx]
		jnz	short loc_10B45
		inc	[bp+var_2]
		cmp	word ptr [di], 0
		jge	short loc_10B45
		mov	[di], cx

loc_10B45:				; CODE XREF: sub_10B20+19j
					; sub_10B20+21j
		inc	cx
		add	bx, 4
		cmp	bx, 6972h
		jb	short loc_10B34
		mov	ax, [bp+var_2]
		pop	di
		leave
		retn
sub_10B20	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_10B56	proc far		; CODE XREF: sub_DDB8+627P

var_24E		= byte ptr -24Eh
var_24D		= byte ptr -24Dh
var_24C		= word ptr -24Ch
var_248		= word ptr -248h
var_246		= word ptr -246h
var_244		= word ptr -244h
var_242		= word ptr -242h
var_240		= word ptr -240h
var_23E		= word ptr -23Eh
var_23C		= word ptr -23Ch
var_23A		= word ptr -23Ah
var_238		= word ptr -238h
var_234		= word ptr -234h
var_232		= word ptr -232h
var_230		= word ptr -230h
var_22E		= word ptr -22Eh
var_22C		= word ptr -22Ch
var_22A		= word ptr -22Ah
var_228		= word ptr -228h
var_226		= word ptr -226h
var_224		= word ptr -224h
var_21E		= word ptr -21Eh
var_11E		= word ptr -11Eh
var_11C		= word ptr -11Ch
var_11A		= word ptr -11Ah
var_118		= word ptr -118h
var_116		= word ptr -116h
var_114		= dword	ptr -114h
var_110		= word ptr -110h
var_10E		= word ptr -10Eh
var_10C		= word ptr -10Ch
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah

		enter	24Ch, 0
		push	ax
		push	di
		push	si
		lea	cx, [bp+var_238]
		mov	[bp+var_118], cx
		mov	[bp+var_246], 5B20h
		mov	cx, ax
		and	ax, 800h
		cmp	ax, 1
		sbb	ax, ax
		and	al, 0FCh
		add	ah, 1
		mov	[bp+var_244], ax
		test	ch, 40h
		jz	short loc_10B8A
		mov	[bp+var_6], 0
		jmp	short loc_10BA1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10B8A:				; CODE XREF: sub_10B56+2Bj
		mov	ax, word_1BC90
		mov	[bp+var_6], ax
		mov	ax, 100h
		sub	ax, word_1B146
		cmp	ax, [bp+var_244]
		jle	short loc_10BA1

loc_10B9D:
		mov	ax, [bp+var_244]

loc_10BA1:				; CODE XREF: sub_10B56+32j
					; sub_10B56+45j
		mov	[bp+var_23A], ax
		mov	ax, word_1A8F8
		cmp	ax, [bp+var_6]
		jge	short loc_10BB0
		mov	ax, [bp+var_6]

loc_10BB0:				; CODE XREF: sub_10B56+55j
		mov	[bp+var_6], ax
		mov	ax, word_1A83C
		cmp	ax, [bp+var_23A]
		jle	short loc_10BC0
		mov	ax, [bp+var_23A]

loc_10BC0:				; CODE XREF: sub_10B56+64j
		mov	[bp+var_23A], ax
		call	sub_10AE6
		mov	[bp+var_22C], ax
		or	ax, ax
		jge	short loc_10BD2
		jmp	loc_11137
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10BD2:				; CODE XREF: sub_10B56+77j
		mov	ax, 1
		cwd
		mov	cl, byte ptr [bp+var_22C]
		or	cl, cl
		jz	short loc_10BE6

loc_10BDE:				; CODE XREF: sub_10B56+8Ej
		shl	ax, 1
		rcl	dx, 1
		dec	cl
		jnz	short loc_10BDE

loc_10BE6:				; CODE XREF: sub_10B56+86j
		mov	[bp+var_23E], ax
		mov	[bp+var_23C], dx
		mov	ah, [bp+var_24D]
		and	ax, 8000h
		mov	[bp+var_C], ax
		mov	ch, [bp+var_24D]
		and	cx, 8400h
		mov	[bp+var_A], cx
		mov	cx, word ptr [bp+arg_0+2]
		or	cx, word ptr [bp+arg_0]
		jz	short loc_10C10
		mov	ax, 1
		jmp	short loc_10C12
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10C10:				; CODE XREF: sub_10B56+B3j
		sub	ax, ax

loc_10C12:				; CODE XREF: sub_10B56+B8j
		mov	[bp+var_248], ax
		mov	word ptr [bp+var_114+2], 0
		or	ax, ax
		jz	short loc_10C4A
		cmp	[bp+var_C], 0
		jnz	short loc_10C2F
		les	bx, [bp+arg_0]
		cmp	word ptr es:[bx], 0
		jnz	short loc_10C35

loc_10C2F:				; CODE XREF: sub_10B56+CEj
		mov	[bp+var_248], 0

loc_10C35:				; CODE XREF: sub_10B56+D7j
		cmp	[bp+var_C], 0
		jz	short loc_10C4A
		les	bx, [bp+arg_0]
		cmp	word ptr es:[bx], 0
		jz	short loc_10C4A
		mov	word ptr [bp+var_114+2], 0FFFFh

loc_10C4A:				; CODE XREF: sub_10B56+C8j
					; sub_10B56+E3j ...
		cmp	[bp+var_248], 0
		jz	short loc_10C71
		lea	ax, [bp+var_226]
		push	ss
		push	ax
		push	word ptr [bp+arg_4+2]
		push	word ptr [bp+arg_4]
		push	cs
		call	near ptr sub_10A72
		lea	ax, [bp+var_226]
		push	ss
		push	ax
		push	word ptr [bp+arg_4+2]
		push	word ptr [bp+arg_4]
		push	cs
		call	near ptr sub_109EE

loc_10C71:				; CODE XREF: sub_10B56+F9j
		lea	ax, [bp+var_228]
		push	ax
		call	sub_10B20
		add	sp, 2
		mov	[bp+var_8], ax
		mov	ax, [bp+var_6]
		cmp	ax, [bp+var_228]
		jge	short loc_10C8C
		mov	ax, [bp+var_228]

loc_10C8C:				; CODE XREF: sub_10B56+130j
		mov	[bp+var_228], ax
		mov	[bp+var_22A], 0
		jmp	short loc_10CFB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10C98:				; CODE XREF: sub_10B56+1AFj
		sub	ah, ah
		lea	cx, [bp+var_21E]
		mov	bx, [bp+var_22A]
		add	bx, cx
		mov	[bx], al
		mov	bx, [bp+var_22A]
		lea	ax, [bp+var_10C]
		add	bx, ax
		mov	byte ptr [bx], 0
		mov	ax, bx
		mov	bx, [bp+var_22A]
		mov	cx, bx
		shl	bx, 1
		add	bx, cx

loc_10CBF:
		shl	bx, 1
		add	bx, word ptr [bp+arg_4]
		mov	es, word ptr [bp+arg_4+2]
		test	byte ptr es:[bx+7], 80h
		jnz	short loc_10CD3
		mov	bx, ax

loc_10CD0:
		mov	byte ptr [bx], 40h ; '@'

loc_10CD3:				; CODE XREF: sub_10B56+176j
		mov	bx, [bp+var_22A]
		mov	ax, bx
		shl	bx, 1
		add	bx, ax
		shl	bx, 1
		add	bx, word ptr [bp+arg_4]
		mov	es, word ptr [bp+arg_4+2]
		test	byte ptr es:[bx+7], 60h
		jz	short loc_10CF7
		mov	bx, ax
		lea	ax, [bp+var_10C]
		add	bx, ax
		or	byte ptr [bx], 20h

loc_10CF7:				; CODE XREF: sub_10B56+194j
		inc	[bp+var_22A]

loc_10CFB:				; CODE XREF: sub_10B56+140j
		mov	ax, [bp+var_22A]
		les	bx, [bp+arg_4]
		cmp	es:[bx], ax
		jg	short loc_10C98
		lea	ax, [bp+var_21E]
		push	ss
		push	ax
		lea	ax, [bp+var_10C]
		push	ss
		push	ax
		mov	bx, word ptr [bp+arg_4]
		mov	ax, es:[bx]
		call	sub_12E08
		test	[bp+var_24D], 40h
		jz	short loc_10D2E
		mov	[bp+var_234], 0FFFFh
		jmp	short loc_10D34
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_10D2E:				; CODE XREF: sub_10B56+1CDj
		mov	[bp+var_234], 0FFFEh

loc_10D34:				; CODE XREF: sub_10B56+1D5j
		mov	[bp+var_232], 0FFFFh
		mov	word ptr [bp+var_114], 0
		jmp	loc_11066
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_10D44:				; CODE XREF: sub_10B56+234j
		mov	ax, [bp+var_11A]
		cmp	[bp+var_226], ax
		jle	short loc_10D8C
		mov	bx, ax
		shl	bx, 1
		lea	cx, [bp+var_224]
		add	bx, cx
		cmp	[bx], di
		jnz	short loc_10D81
		mov	[bp+var_242], 0FFFFh
		les	bx, [bp+arg_0]
		mov	cx, es:[bx]
		dec	cx
		cmp	cx, ax
		jle	short loc_10D6F
		mov	cx, ax

loc_10D6F:				; CODE XREF: sub_10B56+215j
		mov	[bp+var_240], cx
		mov	bx, cx
		shl	bx, 1
		add	bx, word ptr [bp+arg_0]
		mov	ax, es:[bx+2]

loc_10D7E:
		mov	[bp+var_4], ax

loc_10D81:				; CODE XREF: sub_10B56+204j
		inc	[bp+var_11A]

loc_10D85:				; CODE XREF: sub_10B56+578j
		cmp	[bp+var_242], 0
		jz	short loc_10D44
loc_10D8C:				; CODE XREF: sub_10B56+1F6j
					; sub_10B56+55Aj ...
		cmp	word ptr [bp+var_114+2], 0
		jz	short loc_10E0C
		mov	bx, di
		shl	bx, 1
		add	bx, di
		shl	bx, 1
		add	bx, word ptr [bp+arg_4]
		mov	es, word ptr [bp+arg_4+2]
		test	byte ptr es:[bx+7], 10h
		jz	short loc_10E0C
		mov	[bp+var_11A], 0
		jmp	short loc_10E05
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 2 dup(90h)
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10DB2:				; CODE XREF: sub_10B56+2B4j
		mov	ax, [bp+var_11A]
		les	bx, dword_1A274
		cmp	es:[bx], ax
		jle	short loc_10E0C
		shl	ax, 1
		inc	bx
		inc	bx
		add	bx, ax
		cmp	es:[bx], di
		jnz	short loc_10E01
		mov	[bp+var_242], 0FFFFh
		mov	ax, [bp+var_11A]
		add	ax, 0F0h ; 'ğ'
		mov	[bp+var_4], ax
		push	3		; size_t
		mov	cx, di
		shl	cx, 1

loc_10DE0:
		add	cx, di
		shl	cx, 1
		add	cx, word ptr [bp+arg_4]
		mov	dx, word ptr [bp+arg_4+2]
		inc	cx
		inc	cx
		push	dx
		push	cx		; size_t
		mov	cx, ax
		shl	ax, 1
		add	ax, cx
		add	ax, 5B20h
		push	ds		; void *
		push	ax		; void *
		call	_memcpy
		add	sp, 0Ah

loc_10E01:				; CODE XREF: sub_10B56+272j
		inc	[bp+var_11A]

loc_10E05:				; CODE XREF: sub_10B56+258j
		cmp	[bp+var_242], 0
		jz	short loc_10DB2

loc_10E0C:				; CODE XREF: sub_10B56+23Bj
					; sub_10B56+250j ...
		mov	bx, di
		shl	bx, 1
		add	bx, di
		shl	bx, 1
		add	bx, word ptr [bp+arg_4]
		mov	es, word ptr [bp+arg_4+2]
		test	byte ptr es:[bx+7], 80h
		jz	short loc_10E2E
		sub	ax, ax
		mov	[bp+var_22E], ax
		mov	[bp+var_230], ax
		jmp	short loc_10E3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_10E2E:				; CODE XREF: sub_10B56+2C9j
		mov	[bp+var_230], 2
		mov	[bp+var_22E], 0

loc_10E3A:				; CODE XREF: sub_10B56+2D5j
		cmp	[bp+var_242], 0
		jnz	short loc_10E50
		cmp	[bp+var_C], 0
		jnz	short loc_10E50
		mov	[bp+var_116], 1
		jmp	short loc_10E56
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_10E50:				; CODE XREF: sub_10B56+2E9j
					; sub_10B56+2EFj
		mov	[bp+var_116], 0

loc_10E56:				; CODE XREF: sub_10B56+2F7j
		cmp	[bp+var_116], 0
		jnz	short loc_10E60
		jmp	loc_10F5C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10E60:				; CODE XREF: sub_10B56+305j
		mov	bx, di
		shl	bx, 1
		add	bx, di
		shl	bx, 1
		add	bx, word ptr [bp+arg_4]
		test	byte ptr es:[bx+7], 20h
		jnz	short loc_10E8D
		test	[bp+var_24D], 20h
		jnz	short loc_10E80
		test	byte ptr es:[bx+7], 40h
		jz	short loc_10E94

loc_10E80:				; CODE XREF: sub_10B56+321j
		test	[bp+var_24D], 10h
		jnz	short loc_10E8D
		cmp	[bp+var_8], 0
		jnz	short loc_10E94

loc_10E8D:				; CODE XREF: sub_10B56+31Aj
					; sub_10B56+32Fj
		mov	[bp+var_2], 7FFFh
		jmp	short loc_10E99
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10E94:				; CODE XREF: sub_10B56+328j
					; sub_10B56+335j
		mov	[bp+var_2], 1

loc_10E99:				; CODE XREF: sub_10B56+33Cj
		mov	si, [bp+var_6]
		jmp	short loc_10EEE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10E9E:				; CODE XREF: sub_10B56+3DAj
		mov	bx, si
		shl	bx, 1
		add	bx, si
		mov	ax, [bx+5B20h]
		mov	cx, bx		; int
		mov	bx, di
		shl	bx, 1
		add	bx, di
		shl	bx, 1
		add	bx, word ptr [bp+arg_4]
		mov	es, word ptr [bp+arg_4+2]
		cmp	es:[bx+2], ax
		jnz	short loc_10ED2
		mov	al, es:[bx+4]
		mov	bx, cx
		cmp	al, [bx+5B22h]
		jnz	short loc_10ED2
		mov	[bp+var_10E], 0
		jmp	short loc_10ED8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10ED2:				; CODE XREF: sub_10B56+366j
					; sub_10B56+372j
		mov	[bp+var_10E], 1

loc_10ED8:				; CODE XREF: sub_10B56+37Aj
					; sub_10B56+402j
		mov	ax, [bp+var_10E]
		cmp	[bp+var_2], ax
		jle	short loc_10EED
		mov	[bp+var_242], 0FFFFh
		mov	[bp+var_4], si
		mov	[bp+var_2], ax

loc_10EED:				; CODE XREF: sub_10B56+389j
					; sub_10B56+3ABj ...
		inc	si

loc_10EEE:				; CODE XREF: sub_10B56+346j
		cmp	[bp+var_23A], si
		jle	short loc_10F5C
		mov	bx, si
		shl	bx, 2
		mov	ax, [bx+6574h]
		or	ax, [bx+6572h]
		jz	short loc_10EED
		test	byte ptr [bx+6572h], 1
		jz	short loc_10F11
		test	[bp+var_24D], 40h

loc_10F0F:
		jz	short loc_10EED

loc_10F11:				; CODE XREF: sub_10B56+3B2j
		mov	bx, si
		shl	bx, 2
		mov	ax, [bx+6572h]
		mov	dx, [bx+6574h]
		and	ax, [bp+var_230]
		and	dx, [bp+var_22E]
		or	dx, ax
		jnz	short loc_10EED
		cmp	[bp+var_2], 1
		jg	short loc_10F33
		jmp	loc_10E9E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10F33:				; CODE XREF: sub_10B56+3D8j
		mov	ax, di
		shl	ax, 1
		add	ax, di
		shl	ax, 1
		add	ax, word ptr [bp+arg_4]
		mov	dx, word ptr [bp+arg_4+2]
		inc	ax
		inc	ax
		push	dx
		push	ax
		mov	ax, si
		shl	ax, 1
		add	ax, si
		add	ax, 5B20h
		push	ds
		push	ax
		push	cs
		call	near ptr sub_109C8
		mov	[bp+var_10E], ax
		jmp	loc_10ED8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_10F5C:				; CODE XREF: sub_10B56+307j
					; sub_10B56+39Cj
		cmp	[bp+var_242], 0
		jnz	short loc_10F8E
		test	[bp+var_24D], 10h
		jz	short loc_10F86
		mov	bx, di
		shl	bx, 1
		add	bx, di
		shl	bx, 1
		add	bx, word ptr [bp+arg_4]
		mov	es, word ptr [bp+arg_4+2]
		test	byte ptr es:[bx+7], 60h
		jnz	short loc_10F8E
		test	[bp+var_24D], 20h
		jnz	short loc_10F8E

loc_10F86:				; CODE XREF: sub_10B56+412j
		mov	[bp+var_110], 1
		jmp	short loc_10F94
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10F8E:				; CODE XREF: sub_10B56+40Bj
					; sub_10B56+427j ...
		mov	[bp+var_110], 0

loc_10F94:				; CODE XREF: sub_10B56+436j
		cmp	[bp+var_110], 0
		jz	short loc_10FF7
		mov	si, [bp+var_228]
		jmp	short loc_10FF0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_10FA2:				; CODE XREF: sub_10B56+49Fj
		cmp	[bp+var_23A], si
		jle	short loc_10FF7
		mov	bx, si
		shl	bx, 2
		mov	ax, [bx+6574h]
		or	ax, [bx+6572h]
		jnz	short loc_10FEF
		dec	[bp+var_8]
		inc	[bp+var_228]
		mov	[bp+var_242], 0FFFFh
		mov	[bp+var_4], si
		mov	ax, di
		shl	ax, 1
		add	ax, di
		shl	ax, 1
		add	ax, word ptr [bp+arg_4]
		mov	dx, word ptr [bp+arg_4+2]
		inc	ax
		inc	ax
		mov	bx, si
		shl	bx, 1
		add	bx, si
		push	si
		push	di
		push	ds
		lea	di, [bx+5B20h]
		mov	si, ax
		push	ds
		pop	es
		assume es:dseg
		mov	ds, dx
		movsw
		movsb
		pop	ds
		pop	di
		pop	si

loc_10FEF:				; CODE XREF: sub_10B56+45Fj
		inc	si

loc_10FF0:				; CODE XREF: sub_10B56+449j
		cmp	[bp+var_242], 0
		jz	short loc_10FA2

loc_10FF7:				; CODE XREF: sub_10B56+443j
					; sub_10B56+450j
		cmp	[bp+var_242], 0
		jnz	short loc_11001
		jmp	loc_110D2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11001:				; CODE XREF: sub_10B56+4A6j
		cmp	[bp+var_C], 0
		jz	short loc_11024
		mov	bx, di
		shl	bx, 1
		add	bx, di
		shl	bx, 1
		add	bx, word ptr [bp+arg_4]
		mov	es, word ptr [bp+arg_4+2]
		assume es:nothing
		cmp	byte ptr es:[bx+6], 0
		jz	short loc_11024
		mov	[bp+var_24C], 2
		jmp	short loc_1102A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11024:				; CODE XREF: sub_10B56+4AFj
					; sub_10B56+4C4j
		mov	[bp+var_24C], 0

loc_1102A:				; CODE XREF: sub_10B56+4CCj
		mov	ax, [bp+var_24C]
		cwd
		mov	[bp+var_11E], ax
		mov	[bp+var_11C], dx
		or	ax, [bp+var_23E]
		or	dx, [bp+var_23C]
		mov	bx, [bp+var_4]
		shl	bx, 2
		or	[bx+6572h], ax
		or	[bx+6574h], dx
		mov	al, byte ptr [bp+var_4]
		mov	bx, di
		shl	bx, 1
		add	bx, di
		shl	bx, 1
		add	bx, word ptr [bp+arg_4]
		mov	es, word ptr [bp+arg_4+2]
		mov	es:[bx+5], al
		inc	word ptr [bp+var_114]

loc_11066:				; CODE XREF: sub_10B56+1EAj
		mov	ax, word ptr [bp+var_114]
		les	bx, [bp+arg_4]
		cmp	es:[bx], ax
		jg	short loc_11075
		jmp	loc_11112
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11075:				; CODE XREF: sub_10B56+51Aj
		mov	[bp+var_242], 0
		mov	[bp+var_4], 0FFFFh
		lea	di, [bp+var_21E]
		add	di, ax
		mov	al, [di]
		sub	ah, ah
		mov	di, ax
		mov	bx, ax
		shl	bx, 1
		add	bx, di
		shl	bx, 1
		add	bx, word ptr [bp+arg_4]
		test	byte ptr es:[bx+7], 8
		jz	short loc_110A9
		mov	[bp+var_242], 0FFFFh
		mov	[bp+var_4], 0FDh ; 'ı'

loc_110A9:				; CODE XREF: sub_10B56+546j
		cmp	[bp+var_248], 0
		jnz	short loc_110B3
		jmp	loc_10D8C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_110B3:				; CODE XREF: sub_10B56+558j
		mov	bx, di
		shl	bx, 1
		add	bx, di
		shl	bx, 1
		add	bx, word ptr [bp+arg_4]
		test	byte ptr es:[bx+7], 10h
		jnz	short loc_110C8
		jmp	loc_10D8C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_110C8:				; CODE XREF: sub_10B56+56Dj
		mov	[bp+var_11A], 0
		jmp	loc_10D85
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_110D2:				; CODE XREF: sub_10B56+4A8j
		les	bx, [bp+arg_4]
		mov	ax, es:[bx]
		mov	word_1A282, ax
		push	3
		push	word_1A27E
		push	word_1A27C
		call	sub_1074E
		add	sp, 6

loc_110EB:
		les	bx, [bp+arg_4]
		mov	ax, es:[bx]
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, word ptr [bp+var_114]
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, 0FFFAh
		mov	dx, 2		; int
		mov	bx, 3
		call	sub_F0D6
		mov	[bp+var_22C], 0FFF5h
		jmp	short loc_11137
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_11112:				; CODE XREF: sub_10B56+51Cj
		mov	bx, [bp+var_22C]
		shl	bx, 1
		mov	word ptr [bx+5294h], 0FFFFh
		les	bx, [bp+arg_4]
		mov	ax, es:[bx]
		mov	word_1A282, ax
		push	2
		push	word_1A27E
		push	word_1A27C
		call	sub_1074E
		add	sp, 6

loc_11137:				; CODE XREF: sub_10B56+79j
					; sub_10B56+5B9j
		mov	ax, [bp+var_22C]
		pop	si
		pop	di
		leave

locret_1113E:
		retf	8
sub_10B56	endp

seg081		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg082		segment public 'CODE'
		assume cs:seg082
		;org 1
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_11142	proc far		; CODE XREF: sub_FCBF+60P sub_FDC7+20P
		mov	di, 0A000h
		mov	es, di
		assume es:nothing
		shl	dx, 6
		mov	di, dx
		shl	dx, 2
		add	di, dx
		add	di, cx
		retf
sub_11142	endp

seg082		ends

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg083		segment public 'CODE'
		assume cs:seg083
		;org 4
		assume es:nothing, ss:nothing, ds:dseg
		enter	4, 0
		push	es
		push	ds
		push	si
		push	di
		xor	ax, ax
		mov	[bp-4],	ax
		mov	bx, 0FFFFh
		mov	ah, 48h
		int	21h		; DOS -	2+ - ALLOCATE MEMORY
					; BX = number of 16-byte paragraphs desired
		jb	short loc_1116D
		jmp	loc_111ED
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1116D:				; CODE XREF: seg083:0018j
		sub	bx, 2
		mov	[bp-2],	bx
		mov	ah, 48h
		int	21h		; DOS -	2+ - ALLOCATE MEMORY
					; BX = number of 16-byte paragraphs desired
		jnb	short loc_1117C
		jmp	short loc_111FA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop

loc_1117C:				; CODE XREF: seg083:0027j
		mov	[bp-4],	ax
		push	ax
		dec	ax
		mov	es, ax
		assume es:nothing
		mov	di, 8
		mov	si, 441Dh
		mov	cx, 8
		rep movsb
		pop	ax
		push	bp
		mov	cx, ss
		mov	word_1A285, cx
		mov	word_1A287, sp
		push	ds
		pop	es
		assume es:dseg
		mov	bx, 4419h
		mov	[bx], ax
		mov	[bx+2],	ax
		lds	dx, [bp+6]
		mov	al, 3
		mov	ah, 4Bh
		int	21h		; DOS -	2+ - LOAD OR EXECUTE (EXEC)
					; DS:DX	-> ASCIZ filename
					; ES:BX	-> parameter block
					; AL = subfunc:	called by MSC spawn(P_NOWAIT,...) when running DOS 4.x.
		mov	dx, seg	dseg
		mov	ds, dx
		mov	dx, word_1A285
		mov	ss, dx
		mov	sp, word_1A287
		pop	bp
		jb	short loc_111ED
		mov	es, word_1A289
		assume es:seg000
		mov	bx, word ptr es:[2Ah]
		mov	ax, word ptr es:[2Ch]
		add	ax, 0Fh
		rcr	ax, 1
		shr	ax, 3
		add	bx, ax
		mov	ax, es
		sub	bx, ax
		add	bx, 8
		cmp	bx, [bp-2]
		ja	short loc_111ED
		mov	ah, 4Ah
		int	21h		; DOS -	2+ - ADJUST MEMORY BLOCK SIZE (SETBLOCK)
					; ES = segment address of block	to change
					; BX = new size	in paragraphs
		jb	short loc_111ED
		mov	ax, es
		jmp	short loc_111FC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop

loc_111ED:				; CODE XREF: seg083:001Aj seg083:006Dj ...
		mov	ax, [bp-4]
		or	ax, ax
		jz	short loc_111FA
		mov	es, ax
		assume es:nothing
		mov	ah, 49h
		int	21h		; DOS -	2+ - FREE MEMORY
					; ES = segment address of area to be freed

loc_111FA:				; CODE XREF: seg083:0029j seg083:00A2j
		xor	ax, ax

loc_111FC:				; CODE XREF: seg083:009Aj
		pop	di
		pop	si
		pop	ds
		pop	es
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	0, 0
		push	es
		push	ds
		push	si
		push	di
		mov	byte_1A284, 0FFh
		mov	dx, [bp+6]
		or	dx, dx
		jz	short loc_1122D
		mov	si, 32h	; '2'
		mov	di, 602Ah
		mov	ax, seg	dseg
		mov	es, ax
		assume es:dseg
		mov	cx, 5
		mov	ds, dx
		assume ss:seg000
		mov	ax, word_15E98

loc_11229:				; CODE XREF: seg083:00DBj
		movsw
		stosw
		loop	loc_11229

loc_1122D:				; CODE XREF: seg083:00C4j
		pop	di
		pop	si
		pop	ds
		pop	es
		assume es:nothing
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	0, 0
		push	es
		mov	ax, [bp+6]
		or	ax, ax
		jz	short loc_1124A
		mov	es, ax
		mov	ah, 49h
		int	21h		; DOS -	2+ - FREE MEMORY
					; ES = segment address of area to be freed
		call	sub_11250

loc_1124A:				; CODE XREF: seg083:00EDj
		pop	es
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		xor	ax, ax
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_11250	proc far		; CODE XREF: seg049:loc_D1BCP
					; seg083:00F5P
		push	di
		mov	cx, 5
		mov	di, 602Ah	; SOUND_JUMP_TABLE
		mov	ax, seg	seg083
		mov	bx, 0FDh ; 'ı'

loc_1125D:				; CODE XREF: sub_11250+15j
		mov	[di], bx
		mov	[di+2],	ax
		add	di, 4
		loop	loc_1125D
		pop	di
		retf
sub_11250	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_11269	proc far		; CODE XREF: sub_EE56+7P
		xor	ah, ah
		mov	al, byte_1A284
		retf
sub_11269	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
seg083		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg084		segment public 'CODE'
		assume cs:seg084
		assume es:nothing, ss:nothing, ds:dseg
		jmp	dword_1BE9A	; SOUND_JUMP_TABLE

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_11274	proc far		; CODE XREF: sub_EE56+12P seg084:0046P

arg_2		= word ptr  6

		cmp	byte_1A2A7, 0
		jnz	short loc_1127F

loc_1127B:				; dword	ptr [SOUND_JUMP_TABLE+4h]
		jmp	dword_1BE9E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1127F:				; CODE XREF: sub_11274+5j
		mov	al, byte_1A2A6
		cmp	al, 8
		jnb	short locret_1129A
		cbw
		mov	bx, ax
		shl	bx, 1
		push	bp
		mov	bp, sp
		mov	ax, [bp+arg_2]
		mov	[bx+4426h], ax	; [bx+byte_1A296]
		inc	byte_1A2A6
		pop	bp

locret_1129A:				; CODE XREF: sub_11274+10j
		retf
sub_11274	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mov	byte_1A2A7, 0FFh
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mov	byte_1A2A7, 0
		mov	cl, byte_1A2A6
		xor	ch, ch
		jcxz	short loc_112C3
		xor	bx, bx

loc_112B0:				; CODE XREF: seg084:0051j
		push	bx
		push	cx
		push	word ptr [bx+4426h]
		call	sub_11274	; sound_queue
		pop	ax
		pop	cx
		pop	bx
		add	bx, 2
		loop	loc_112B0

loc_112C3:				; CODE XREF: seg084:003Cj
		mov	byte_1A2A6, 0
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_112C9	proc near		; CODE XREF: sub_EE56+1AP
		jmp	dword_1BEA2	; SOUND_JUMP_TABLE+8
sub_112C9	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_112CD	proc near		; CODE XREF: seg049:0037P seg050:0097P
		jmp	dword_1BEA6
sub_112CD	endp

seg084		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg085		segment public 'CODE'
		assume cs:seg085
		;org 1
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_112D1	proc near		; CODE XREF: seg050:0060P
		jmp	dword_1BEAA	; SOUND_JUMP_TABLE+10h
sub_112D1	endp

seg085		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg086		segment public 'CODE'

seg086		ends

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg087		segment public 'CODE'
		assume cs:seg087
		;org 6
		assume es:nothing, ss:nothing, ds:dseg

loc_11686:				; DATA XREF: sub_F16E+Bo
		enter	0, 0
		push	si
		push	di
		push	ds
		push	bp
		les	ax, [bp+0Eh]
		add	ax, 0Fh
		shr	ax, 4
		mov	dx, es
		add	dx, ax
		jnz	short loc_116A8
		mov	ax, 71BEh
		pop	bp
		pop	ds
		pop	di
		pop	si
		leave
		retf	14h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_116A8:				; CODE XREF: seg087:001Bj
		push	bp
		push	ds
		mov	ds, dx
		pop	word_15E72
		pop	word_15E70
		les	ax, [bp+16h]
		mov	word_15E74, ax
		mov	word_15E76, es
		les	ax, [bp+12h]
		mov	word_15E7C, ax
		mov	word_15E7E, es
		call	sub_11891
		mov	bp, word_15E70
		lds	si, [bp+0Eh]
		mov	[si], ax
		mov	[si+2],	dx
		xor	ax, ax
		pop	bp
		pop	ds
		pop	di
		pop	si
		leave
		retf	14h

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_116E1	proc near		; CODE XREF: sub_11891+2p
		mov	word_15E7A, 1
		lea	ax, unk_1C81E
		mov	word_15E80, ax
		mov	ax, 800h
		mov	word_15E82, ax
		retn
sub_116E1	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_116F5	proc near		; CODE XREF: sub_11891+65p
					; sub_11891+174p
		push	bx
		push	cx
		push	dx
		push	si
		push	di
		push	es
		push	ds
		lea	ax, unk_1C01E
		mov	word_15E78, ax
		push	ds
		push	ax
		mov	ax, 800h
		mov	word_1C01C, ax
		push	ds
		push	offset word_1C01C
		mov	bp, word_15E70
		mov	ds, word_15E72
		call	dword ptr es:4
		pop	ds
		inc	ax
		mov	word_15E7A, ax
		dec	ax
		pop	es
		pop	di
		pop	si
		pop	dx
		pop	cx
		pop	bx
		retn
sub_116F5	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_11729	proc near		; CODE XREF: sub_1176Ap sub_1176E+10p	...
		push	bx
		push	cx
		push	dx
		push	si
		push	di
		push	ds
		push	es
		mov	ax, 800h
		mov	word_15E82, ax
		mov	ax, word_15E80
		lea	bx, unk_1C81E
		mov	word_15E80, bx
		push	ds
		push	bx
		sub	ax, bx
		mov	word_1C01C, ax
		add	word_15E84, ax
		adc	word_15E86, 0
		push	ds
		push	offset word_1C01C
		mov	bp, word_15E70
		mov	ds, word_15E72
		call	dword ptr es:0Ch
		pop	es
		pop	ds
		pop	di
		pop	si
		pop	dx
		pop	cx
		pop	bx
		retn
sub_11729	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_1176A	proc near		; CODE XREF: sub_11891+1D4p
		call	sub_11729
		retn
sub_1176A	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_1176E	proc near		; CODE XREF: sub_11891+47p
					; sub_11891+4Cp ...
		mov	bx, word_15E80
		inc	word_15E80
		mov	[bx], al
		dec	word_15E82
		jnz	short locret_11781
		call	sub_11729

locret_11781:				; CODE XREF: sub_1176E+Ej
		retn
sub_1176E	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_11782	proc near		; CODE XREF: sub_117B6+11p
					; sub_11891+1D1p
		mov	si, 28h	; '('

loc_11785:				; CODE XREF: sub_11782+1Fj
		inc	word_15E90
		lodsb
		mov	bx, word_15E80
		inc	word_15E80
		mov	[bx], al
		dec	word_15E82
		jnz	short loc_1179D
		call	sub_11729

loc_1179D:				; CODE XREF: sub_11782+16j
		cmp	si, word_15E94
		jnz	short loc_11785
		mov	word_15E96, 1
		mov	word_15E98, 0
		mov	word_15E94, 2Ah	; '*'
		retn
sub_11782	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_117B6	proc near		; CODE XREF: sub_11891+B6p
					; sub_11891+C4p ...
		or	al, al
		jz	short loc_117C1
		mov	ax, word_15E96
		or	word_15E98, ax

loc_117C1:				; CODE XREF: sub_117B6+2j
		shl	word_15E96, 1
		jnz	short locret_117CA
		call	sub_11782

locret_117CA:				; CODE XREF: sub_117B6+Fj
		retn
sub_117B6	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_117CB	proc near		; CODE XREF: sub_11891+BDp
					; sub_11891+EFp ...
		mov	di, word_15E94
		inc	word_15E94
		mov	[di], al
		retn
sub_117CB	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_117D6	proc near		; CODE XREF: sub_11891:loc_119F9p
		push	si
		push	di
		mov	si, [di+0AAh]
		and	si, 7FFh
		add	si, 1001h
		shl	si, 1
		shl	di, 1
		mov	bx, [si+11A8h]
		mov	[di+11A8h], bx
		mov	[si+11A8h], di
		mov	[bx+41AAh], di
		mov	[di+41AAh], si
		pop	di
		pop	si
		retn
sub_117D6	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_117FF	proc near		; CODE XREF: sub_11891:loc_119FCp
		shl	si, 1
		mov	bx, [si+41AAh]
		cmp	bx, 2000h
		jz	short loc_11817
		mov	word ptr [bx+11A8h], 2000h
		mov	word ptr [si+41AAh], 2000h

loc_11817:				; CODE XREF: sub_117FF+Aj
		shr	si, 1
		retn
sub_117FF	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_1181A	proc near		; CODE XREF: sub_11891+8Bp
					; sub_11891+1ABp
		push	si
		push	di
		push	di
		add	di, 0AAh ; 'ª'
		mov	dx, di
		inc	dx
		mov	bx, [di]
		and	bx, 7FFh
		add	bx, 1001h
		shl	bx, 1
		push	bx
		mov	ax, 0FCh ; 'ü'

loc_11834:				; CODE XREF: sub_1181A+37j
					; sub_1181A+3Dj
		mov	bx, [bx+11A8h]
		cmp	bx, 2000h
		jz	short loc_1185E
		mov	si, bx
		shr	si, 1
		add	si, 0ABh ; '"'
		mov	di, dx
		mov	cx, 0FCh ; 'ü'
		repe cmpsb
		jz	short loc_11859
		cmp	cx, ax
		jnb	short loc_11834
		mov	bp, bx
		mov	ax, cx
		jmp	short loc_11834
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11859:				; CODE XREF: sub_1181A+33j
		mov	bp, bx
		mov	ax, 0FFFFh

loc_1185E:				; CODE XREF: sub_1181A+22j
		pop	si
		pop	di
		shl	di, 1
		mov	cx, 0FDh ; 'ı'
		sub	cx, ax
		dec	cx
		mov	word_15E8A, cx
		mov	ax, di
		sub	ax, bp
		shr	ax, 1
		and	ax, 0FFFh
		neg	ax
		mov	word_15E8C, ax
		mov	bx, [si+11A8h]
		mov	[di+11A8h], bx
		mov	[si+11A8h], di
		mov	[bx+41AAh], di
		mov	[di+41AAh], si
		pop	di
		pop	si
		retn
sub_1181A	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_11891	proc near		; CODE XREF: seg087:0048p
		push	ds
		pop	es
		assume es:dseg
		call	sub_116E1
		mov	cx, 1000h
		mov	ax, 2000h
		lea	di, unk_1A01A
		rep stosw
		mov	cx, 1801h
		lea	di, unk_17018
		rep stosw
		lea	di, aView	; "view"
		mov	cx, 10FCh
		mov	al, 0
		rep stosb
		mov	word_15E96, 1
		mov	word_15E94, 2Ah	; '*'
		xor	ax, ax
		mov	word_15E98, ax
		mov	word_15E8E, ax
		mov	word_15E90, ax
		mov	word_15E92, ax
		mov	word_15E84, ax
		mov	word_15E86, ax
		mov	al, 46h	; 'F'
		call	sub_1176E
		mov	al, 41h	; 'A'
		call	sub_1176E
		mov	al, 42h	; 'B'
		call	sub_1176E
		mov	al, 0Ch
		call	sub_1176E
		mov	di, 0FADh
		mov	cx, 0FDh ; 'ı'

loc_118F0:				; CODE XREF: sub_11891+6Cj
					; sub_11891+77j
		dec	word_15E7A
		jnz	short loc_118FF
		call	sub_116F5
		or	ax, ax
		jz	short loc_1190A
		jmp	short loc_118F0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_118FF:				; CODE XREF: sub_11891+63j
		mov	si, word_15E78
		inc	word_15E78
		movsb
		loop	loc_118F0

loc_1190A:				; CODE XREF: sub_11891+6Aj
		mov	ax, 0FDh ; 'ı'
		sub	ax, cx
		jnz	short loc_11914
		jmp	loc_11A49
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11914:				; CODE XREF: sub_11891+7Ej
		mov	word_15E88, ax
		mov	di, 0F03h
		xor	si, si
		call	sub_1181A

loc_1191F:				; CODE XREF: sub_11891+1B5j
		mov	ax, word_15E8A
		cmp	ax, word_15E88
		jle	short loc_1192E
		mov	ax, word_15E88
		mov	word_15E8A, ax

loc_1192E:				; CODE XREF: sub_11891+95j
		push	si
		push	di
		cmp	ax, 2
		jb	short loc_1193F
		ja	short loc_11953
		cmp	word_15E8C, 0FF00h
		jg	short loc_11953

loc_1193F:				; CODE XREF: sub_11891+A2j
		mov	word_15E8A, 1
		mov	al, 1
		call	sub_117B6
		mov	al, [di+0AAh]
		call	sub_117CB
		jmp	short loc_119B1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11953:				; CODE XREF: sub_11891+A4j
					; sub_11891+ACj
		mov	al, 0
		call	sub_117B6
		cmp	word_15E8A, 5
		ja	short loc_11985
		cmp	word_15E8C, 0FF00h
		jle	short loc_11985
		mov	al, 0
		call	sub_117B6
		mov	ax, word_15E8A
		dec	ax
		dec	ax
		push	ax
		and	al, 2
		call	sub_117B6
		pop	ax
		and	al, 1
		call	sub_117B6
		mov	ax, word_15E8C
		call	sub_117CB
		jmp	short loc_119B1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11985:				; CODE XREF: sub_11891+CCj
					; sub_11891+D4j
		mov	al, 1
		call	sub_117B6
		mov	ax, word_15E8C
		call	sub_117CB
		mov	al, ah
		mov	cl, 4
		shl	al, cl
		mov	bx, word_15E8A
		cmp	bx, 11h
		ja	short loc_119A8
		dec	bx
		dec	bx
		or	al, bl
		call	sub_117CB
		jmp	short loc_119B1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_119A8:				; CODE XREF: sub_11891+10Cj
		call	sub_117CB
		mov	ax, bx
		dec	ax
		call	sub_117CB

loc_119B1:				; CODE XREF: sub_11891+C0j
					; sub_11891+F2j ...
		mov	ax, word_15E8A
		sub	word_15E90, ax
		jge	short loc_119CA

loc_119BA:				; CODE XREF: sub_11891+137j
		inc	word_15E92
		add	word_15E90, 10h
		cmp	word_15E90, 0
		jl	short loc_119BA

loc_119CA:				; CODE XREF: sub_11891+127j
		add	word_15E8E, ax
		cmp	word_15E8E, 0A000h
		jb	short loc_119F5
		mov	al, 0
		call	sub_117B6
		mov	al, 1
		call	sub_117B6
		mov	al, 0
		call	sub_117CB
		mov	al, 0
		call	sub_117CB
		mov	al, 1
		call	sub_117CB
		mov	word_15E8E, 0

loc_119F5:				; CODE XREF: sub_11891+143j
		pop	di
		pop	si
		jmp	short loc_119FC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_119F9:				; CODE XREF: sub_11891+1A9j
		call	sub_117D6	; ­¥â á¨¬¢.¨¬¥­¨

loc_119FC:				; CODE XREF: sub_11891+166j
		call	sub_117FF

loc_119FF:				; CODE XREF: sub_11891+17Bj
		dec	word_15E7A
		jnz	short loc_11A0E
		call	sub_116F5
		or	ax, ax
		jz	short loc_11A28
		jmp	short loc_119FF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11A0E:				; CODE XREF: sub_11891+172j
		mov	bx, word_15E78
		inc	word_15E78
		mov	al, [bx]
		mov	[si+0AAh], al
		cmp	si, 0FCh ; 'ü'
		jnb	short loc_11A26
		mov	[si+10AAh], al

loc_11A26:				; CODE XREF: sub_11891+18Fj
		jmp	short loc_11A2C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11A28:				; CODE XREF: sub_11891+179j
		dec	word_15E88

loc_11A2C:				; CODE XREF: sub_11891:loc_11A26j
		inc	si
		inc	di
		and	si, 0FFFh
		and	di, 0FFFh
		dec	word_15E8A
		jnz	short loc_119F9
		call	sub_1181A
		cmp	word_15E88, 0
		jle	short loc_11A49
		jmp	loc_1191F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11A49:				; CODE XREF: sub_11891+80j
					; sub_11891+1B3j
		mov	al, 0
		call	sub_117B6
		mov	al, 1
		call	sub_117B6
		mov	al, 0
		call	sub_117CB
		mov	al, 0
		call	sub_117CB
		mov	al, 0
		call	sub_117CB
		call	sub_11782
		call	sub_1176A
		mov	ax, word_15E84
		mov	dx, word_15E86
		retn
sub_11891	endp

seg087		ends

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg088		segment public 'CODE'
		assume cs:seg088
		assume es:nothing, ss:nothing, ds:dseg

loc_11A70:				; DATA XREF: sub_F16E+17o
		enter	0, 0

loc_11A74:
		push	si
		push	di
		push	ds
		les	ax, [bp+6]
		add	ax, 0Fh
		shr	ax, 4
		mov	dx, es
		add	dx, ax
		jnz	short loc_11A90
		mov	ax, 382Ch
		pop	ds
		pop	di
		pop	si
		leave
		retf	0Ch
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11A90:				; CODE XREF: seg088:0014j
		push	bp
		push	ds
		mov	ds, dx
		pop	word_15E72
		pop	word_15E70
		les	ax, [bp+0Eh]
		mov	word_15E7C, ax
		mov	word_15E7E, es
		les	ax, [bp+0Ah]
		mov	word_15E80, ax
		mov	word_15E82, es
		lea	si, word_15E8C
		add	si, 800h
		lea	di, unk_1868C
		mov	es, dx
		xor	ax, ax
		mov	word_15E86, ax

loc_11AC3:
		mov	word_15E88, ax
		cmp	si, 81Bh
		jb	short loc_11ACF
		call	sub_11C2D

loc_11ACF:				; CODE XREF: seg088:005Aj
		lodsw
		cmp	ax, 4146h
		jnz	short loc_11B2F
		cmp	si, 81Bh
		jb	short loc_11ADE
		call	sub_11C2D

loc_11ADE:				; CODE XREF: seg088:0069j
		lodsw
		cmp	al, 42h	; 'B'
		jnz	short loc_11B2F
		cmp	ah, 0Ah
		jb	short loc_11B2F
		cmp	ah, 0Dh
		ja	short loc_11B2F
		mov	cl, 10h
		sub	cl, ah
		mov	byte ptr word_15E74, cl
		mov	al, 1
		shl	al, cl
		dec	al
		mov	byte ptr word_15E74+1, al
		mov	cl, ah
		mov	ax, 1
		shl	ax, cl
		mov	word_15E78, ax
		sub	cl, 4
		mov	ax, 1
		shl	ax, cl
		mov	word_15E7A, ax
		sub	cl, 4
		mov	al, 0FFh
		shl	al, cl
		mov	byte ptr word_15E76, al
		cmp	si, 81Bh
		jb	short loc_11B26
		call	sub_11C2D

loc_11B26:				; CODE XREF: seg088:00B1j
		lodsw
		mov	bp, ax
		mov	dx, 10h
		jmp	short loc_11B39
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11B2F:				; CODE XREF: seg088:0063j seg088:0071j ...
		mov	ax, 16h
		pop	ds
		pop	di
		pop	si
		leave
		retf	0Ch
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11B39:				; CODE XREF: seg088:00BCj seg088:00F6j ...
		dec	dx
		jnz	short loc_11B4E
		cmp	si, 81Bh
		jb	short loc_11B45
		call	sub_11C2D

loc_11B45:				; CODE XREF: seg088:00D0j
		lodsw
		mov	dl, 10h
		shr	bp, 1
		mov	bp, ax
		rcl	bp, 1

loc_11B4E:				; CODE XREF: seg088:00CAj
		rcr	bp, 1
		jnb	short loc_11B68
		cmp	si, 81Bh
		jbe	short loc_11B5B
		call	sub_11C2D

loc_11B5B:				; CODE XREF: seg088:00E6j
		lodsb
		cmp	di, 381Bh
		jbe	short loc_11B65
		call	sub_11C61

loc_11B65:				; CODE XREF: seg088:00F0j
		stosb
		jmp	short loc_11B39
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11B68:				; CODE XREF: seg088:00E0j
		xor	cx, cx
		dec	dx
		jnz	short loc_11B7F
		cmp	si, 81Bh
		jb	short loc_11B76
		call	sub_11C2D

loc_11B76:				; CODE XREF: seg088:0101j
		lodsw
		mov	dl, 10h
		shr	bp, 1
		mov	bp, ax
		rcl	bp, 1

loc_11B7F:				; CODE XREF: seg088:00FBj
		rcr	bp, 1
		jb	short loc_11BC8
		dec	dx
		jnz	short loc_11B98
		cmp	si, 81Bh
		jb	short loc_11B8F
		call	sub_11C2D

loc_11B8F:				; CODE XREF: seg088:011Aj
		lodsw
		mov	dl, 10h
		shr	bp, 1
		mov	bp, ax
		rcl	bp, 1

loc_11B98:				; CODE XREF: seg088:0114j
		rcr	bp, 1
		rcl	cx, 1
		dec	dx
		jnz	short loc_11BB1
		cmp	si, 81Bh
		jb	short loc_11BA8
		call	sub_11C2D

loc_11BA8:				; CODE XREF: seg088:0133j
		lodsw
		mov	dl, 10h
		shr	bp, 1
		mov	bp, ax
		rcl	bp, 1

loc_11BB1:				; CODE XREF: seg088:012Dj
		rcr	bp, 1
		rcl	cx, 1
		inc	cx
		inc	cx
		cmp	si, 81Bh
		jbe	short loc_11BC0
		call	sub_11C2D

loc_11BC0:				; CODE XREF: seg088:014Bj
		lodsb
		mov	bh, 0FFh
		mov	bl, al
		jmp	short loc_11BE8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_11BC8:				; CODE XREF: seg088:0111j
		cmp	si, 81Bh
		jb	short loc_11BD1
		call	sub_11C2D

loc_11BD1:				; CODE XREF: seg088:015Cj
		lodsw
		mov	bx, ax
		mov	cl, byte ptr word_15E74
		shr	bh, cl
		or	bh, byte ptr word_15E76
		and	ah, byte ptr word_15E74+1
		jz	short loc_11BFA
		mov	cl, ah
		inc	cx
		inc	cx

loc_11BE8:				; CODE XREF: seg088:0155j seg088:0185j ...
		mov	al, es:[bx+di]
		cmp	di, 381Bh
		jbe	short loc_11BF4
		call	sub_11C61

loc_11BF4:				; CODE XREF: seg088:017Fj
		stosb
		loop	loc_11BE8
		jmp	loc_11B39
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11BFA:				; CODE XREF: seg088:0172j
		cmp	si, 81Bh
		jbe	short loc_11C03
		call	sub_11C2D

loc_11C03:				; CODE XREF: seg088:018Ej
		lodsb
		or	al, al
		jz	short loc_11C14
		cmp	al, 1
		jz	short loc_11C11
		mov	cl, al
		inc	cx
		jmp	short loc_11BE8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11C11:				; CODE XREF: seg088:019Aj
		jmp	loc_11B39
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11C14:				; CODE XREF: seg088:0196j
		call	sub_11C61
		mov	bp, word_15E70
		lea	si, word_15E86
		les	di, [bp+6]
		movsw
		movsw
		xor	ax, ax
		pop	ds
		pop	di
		pop	si
		leave
		retf	0Ch

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_11C2D	proc near		; CODE XREF: seg088:005Cp seg088:006Bp ...
		mov	al, [si]
		sub	si, 800h
		mov	[si], al
		mov	word_15E84, 800h
		push	bx
		push	cx
		push	dx
		push	si
		push	di
		push	ds
		push	es
		push	bp
		push	ds
		push	offset word_15E8C
		push	ds
		push	offset word_15E84
		mov	bp, word_15E70
		mov	ds, word_15E72
		call	dword ptr es:0Ch
		pop	bp
		pop	es
		pop	ds
		pop	di
		pop	si
		pop	dx
		pop	cx
		pop	bx
		retn
sub_11C2D	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_11C61	proc near		; CODE XREF: seg088:00F2p seg088:0181p ...
		sub	di, 281Ch
		mov	word_15E84, di
		add	word_15E86, di
		adc	word_15E88, 0
		push	ax
		push	bx
		push	cx
		push	dx
		push	si
		push	di
		push	ds
		push	es
		push	bp
		push	es
		push	281Ch
		push	ds
		push	offset word_15E84
		mov	bp, word_15E70
		mov	ds, word_15E72
		call	dword ptr es:10h
		pop	bp
		pop	es
		pop	ds
		pop	di
		pop	si
		pop	dx
		pop	cx
		pop	bx
		pop	ax
		cmp	word_15E84, 1000h
		jnz	short locret_11CB9
		push	cx
		push	si
		mov	cx, word_15E78
		lea	si, unk_1968C
		sub	si, cx
		lea	di, unk_1868C
		sub	di, cx
		shr	cx, 1
		rep movsw
		pop	si
		pop	cx

locret_11CB9:				; CODE XREF: sub_11C61+3Ej
		retn
sub_11C61	endp ; sp = -8

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
dword_11CBA	dd 0			; DATA XREF: seg088:027Dw
					; sub_11E8E+26r ...
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11CBE:				; DATA XREF: sub_F16E+23o
		enter	0, 0
		push	si
		push	di
		push	ds
		les	ax, [bp+6]
		add	ax, 0Fh
		shr	ax, 4
		mov	dx, es
		add	dx, ax
		jnz	short loc_11CDE
		mov	ax, 820h
		pop	ds
		pop	di
		pop	si
		leave
		retf	0Ch
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11CDE:				; CODE XREF: seg088:0262j
		push	bp
		push	ds
		mov	ds, dx
		pop	word_15E72
		pop	word_15E70
		les	ax, [bp+0Eh]
		mov	word ptr cs:dword_11CBA, ax
		mov	word ptr cs:dword_11CBA+2, es
		lea	si, word_15E80
		add	si, 800h
		les	di, [bp+0Ah]
		cmp	si, 80Fh
		jb	short loc_11D0A
		call	sub_11E8E

loc_11D0A:				; CODE XREF: seg088:0295j
		lodsw
		cmp	ax, 4146h
		jnz	short loc_11D6A
		cmp	si, 80Fh
		jb	short loc_11D19
		call	sub_11E8E

loc_11D19:				; CODE XREF: seg088:02A4j
		lodsw
		cmp	al, 42h	; 'B'
		jnz	short loc_11D6A
		cmp	ah, 0Ah
		jb	short loc_11D6A
		cmp	ah, 0Dh
		ja	short loc_11D6A
		mov	cl, 10h
		sub	cl, ah
		mov	byte ptr word_15E74, cl
		mov	al, 1
		shl	al, cl
		dec	al
		mov	byte ptr word_15E74+1, al
		mov	cl, ah
		mov	ax, 1
		shl	ax, cl
		mov	word_15E78, ax
		sub	cl, 4
		mov	ax, 1
		shl	ax, cl
		mov	word_15E7A, ax
		sub	cl, 4
		mov	al, 0FFh
		shl	al, cl
		mov	byte ptr word_15E76, al
		cmp	si, 80Fh
		jb	short loc_11D61
		call	sub_11E8E

loc_11D61:				; CODE XREF: seg088:02ECj
		lodsw
		mov	bp, ax
		mov	dx, 10h
		jmp	short loc_11D74
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_11D6A:				; CODE XREF: seg088:029Ej seg088:02ACj ...
		mov	ax, 16h
		pop	ds
		pop	di
		pop	si
		leave
		retf	0Ch
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11D74:				; CODE XREF: seg088:02F7j seg088:0328j ...
		dec	dx
		jnz	short loc_11D89
		cmp	si, 80Fh
		jb	short loc_11D80
		call	sub_11E8E

loc_11D80:				; CODE XREF: seg088:030Bj
		lodsw
		mov	dl, 10h
		shr	bp, 1
		mov	bp, ax
		rcl	bp, 1

loc_11D89:				; CODE XREF: seg088:0305j
		rcr	bp, 1
		jnb	short loc_11D9A
		cmp	si, 80Fh
		jbe	short loc_11D96
		call	sub_11E8E

loc_11D96:				; CODE XREF: seg088:0321j
		lodsb
		stosb
		jmp	short loc_11D74
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11D9A:				; CODE XREF: seg088:031Bj
		xor	cx, cx
		dec	dx
		jnz	short loc_11DB1
		cmp	si, 80Fh
		jb	short loc_11DA8
		call	sub_11E8E

loc_11DA8:				; CODE XREF: seg088:0333j
		lodsw
		mov	dl, 10h
		shr	bp, 1
		mov	bp, ax
		rcl	bp, 1

loc_11DB1:				; CODE XREF: seg088:032Dj
		rcr	bp, 1
		jb	short loc_11DFA
		dec	dx
		jnz	short loc_11DCA
		cmp	si, 80Fh
		jb	short loc_11DC1
		call	sub_11E8E

loc_11DC1:				; CODE XREF: seg088:034Cj
		lodsw
		mov	dl, 10h
		shr	bp, 1
		mov	bp, ax
		rcl	bp, 1

loc_11DCA:				; CODE XREF: seg088:0346j
		rcr	bp, 1
		rcl	cx, 1
		dec	dx
		jnz	short loc_11DE3
		cmp	si, 80Fh
		jb	short loc_11DDA
		call	sub_11E8E

loc_11DDA:				; CODE XREF: seg088:0365j
		lodsw
		mov	dl, 10h
		shr	bp, 1
		mov	bp, ax
		rcl	bp, 1

loc_11DE3:				; CODE XREF: seg088:035Fj
		rcr	bp, 1
		rcl	cx, 1
		inc	cx
		inc	cx
		cmp	si, 80Fh
		jbe	short loc_11DF2
		call	sub_11E8E

loc_11DF2:				; CODE XREF: seg088:037Dj
		lodsb
		mov	bh, 0FFh
		mov	bl, al
		jmp	short loc_11E1A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_11DFA:				; CODE XREF: seg088:0343j
		cmp	si, 80Fh
		jb	short loc_11E03
		call	sub_11E8E

loc_11E03:				; CODE XREF: seg088:038Ej
		lodsw
		mov	bx, ax
		mov	cl, byte ptr word_15E74
		shr	bh, cl
		or	bh, byte ptr word_15E76
		and	ah, byte ptr word_15E74+1
		jz	short loc_11E23
		mov	cl, ah
		inc	cx
		inc	cx

loc_11E1A:				; CODE XREF: seg088:0387j seg088:03AEj ...
		mov	al, es:[bx+di]
		stosb
		loop	loc_11E1A
		jmp	loc_11D74
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11E23:				; CODE XREF: seg088:03A4j
		cmp	si, 80Fh
		jbe	short loc_11E2C
		call	sub_11E8E

loc_11E2C:				; CODE XREF: seg088:03B7j
		lodsb
		or	al, al
		jz	short loc_11E54
		cmp	al, 1
		jz	short loc_11E3A
		mov	cl, al
		inc	cx
		jmp	short loc_11E1A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11E3A:				; CODE XREF: seg088:03C3j
		mov	bx, di
		and	di, 0Fh
		add	di, word_15E78
		mov	cl, 4
		shr	bx, cl
		mov	ax, es
		add	ax, bx
		sub	ax, word_15E7A
		mov	es, ax
		jmp	loc_11D74
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11E54:				; CODE XREF: seg088:03BFj
		mov	dx, es
		shr	dx, 0Ch
		mov	ax, es
		shl	ax, 4
		add	ax, di
		adc	dx, 0
		mov	bp, word_15E70
		les	di, [bp+0Ah]
		mov	bx, es
		shr	bx, 0Ch
		mov	cx, es
		shl	cx, 4
		add	cx, di
		adc	bx, 0
		sub	ax, cx
		sbb	dx, bx
		lds	si, [bp+6]
		mov	[si], ax
		mov	[si+2],	dx
		xor	ax, ax
		pop	ds
		pop	di
		pop	si
		leave
		retf	0Ch

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_11E8E	proc near		; CODE XREF: seg088:0297p seg088:02A6p ...
		mov	al, [si]
		sub	si, 800h
		mov	[si], al
		mov	word_15E7C, 800h
		push	bx
		push	cx
		push	dx
		push	si
		push	di
		push	ds
		push	es
		push	bp
		push	ds
		push	offset word_15E80
		push	ds
		push	offset word_15E7C
		mov	bp, word_15E70
		mov	ds, word_15E72
		call	cs:dword_11CBA
		pop	bp
		pop	es
		pop	ds
		pop	di
		pop	si
		pop	dx
		pop	cx
		pop	bx
		retn
sub_11E8E	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
byte_11EC2	db 0			; DATA XREF: seg088:0494w seg088:052Ar
byte_11EC3	db 0			; DATA XREF: seg088:049Fw seg088:0536r
byte_11EC4	db 0			; DATA XREF: seg088:04C1w seg088:0531r
		align 2
word_11EC6	dw 0			; DATA XREF: seg088:04AAw seg088:055Cr
word_11EC8	dw 0			; DATA XREF: seg088:04B6w seg088:0569r
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11ECA:				; DATA XREF: sub_F16E+2Fo
		enter	0, 0		; loc_12164
		push	si		; íâ(r) ¯(r) áãâ¨ ¯à(r)æ¥¤ãà 	(r)â ­ ç "  ¤(r) ª(r)­æ  seg88
		push	di
		push	ds
		les	di, [bp+6]	; ­ ¢¥à­(r)¥, arg_0
		mov	ax, es
		or	ax, di
		jnz	short loc_11EE4
		mov	ax, 4
		pop	ds
		pop	di
		pop	si
		leave
		retf	0Ch
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11EE4:				; CODE XREF: seg088:0468j
		push	bp
		lds	si, [bp+0Eh]
		les	di, [bp+0Ah]
		lodsw			; ax=ds:si; si++(??);
		cmp	ax, 4146h	; ­ ç¨­ ¥âáï ¯à(r)¢¥àª  FAB-á¨£­ âãàë!
		jnz	short loc_11F3E
		lodsw
		cmp	al, 42h	; 'B'   ; ¯à(r)¤(r)"¦ ¥¬ ¯à(r)¢¥àªã FAB-á¨£­ âãàë
		jnz	short loc_11F3E
		cmp	ah, 0Ah
		jb	short loc_11F3E	; ¡ (c)â 0åB3, ¥á"¨ ­¨¦¥
		cmp	ah, 0Dh		; ¥á"¨ ¢ëè¥
		ja	short loc_11F3E
		mov	cl, 10h
		sub	cl, ah
		mov	cs:byte_11EC2, cl
		mov	al, 1
		shl	al, cl
		dec	al
		mov	cs:byte_11EC3, al
		mov	cl, ah
		mov	ax, 1
		shl	ax, cl
		mov	cs:word_11EC6, ax
		sub	cl, 4
		mov	ax, 1
		shl	ax, cl
		mov	cs:word_11EC8, ax
		sub	cl, 4
		mov	al, 0FFh
		shl	al, cl
		mov	cs:byte_11EC4, al
		lodsw
		mov	bp, ax
		mov	dx, 10h
		jmp	short loc_11F48
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_11F3E:				; CODE XREF: seg088:047Fj seg088:0484j ...
		mov	ax, 16h
		pop	ds
		pop	di
		pop	si
		leave
		retf	0Ch
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11F48:				; CODE XREF: seg088:04CBj seg088:04E9j ...
		dec	dx
		jnz	short loc_11F54
		lodsw
		mov	dl, 10h
		shr	bp, 1
		mov	bp, ax
		rcl	bp, 1

loc_11F54:				; CODE XREF: seg088:04D9j
		rcr	bp, 1
		jnb	short loc_11F5B	; á(r)£" á­(r) DBD §¤¥áì JNC
		movsb
		jmp	short loc_11F48
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11F5B:				; CODE XREF: seg088:04E6j
		xor	cx, cx
		dec	dx
		jnz	short loc_11F69
		lodsw
		mov	dl, 10h
		shr	bp, 1
		mov	bp, ax
		rcl	bp, 1

loc_11F69:				; CODE XREF: seg088:04EEj
		rcr	bp, 1
		jb	short loc_11F97	; §¤¥áì	JC á(r)£" á­(r) DBD
		dec	dx
		jnz	short loc_11F79
		lodsw
		mov	dl, 10h
		shr	bp, 1
		mov	bp, ax
		rcl	bp, 1

loc_11F79:				; CODE XREF: seg088:04FEj
		rcr	bp, 1
		rcl	cx, 1
		dec	dx
		jnz	short loc_11F89
		lodsw
		mov	dl, 10h
		shr	bp, 1
		mov	bp, ax
		rcl	bp, 1

loc_11F89:				; CODE XREF: seg088:050Ej
		rcr	bp, 1
		rcl	cx, 1
		inc	cx
		inc	cx
		lodsb
		mov	bh, 0FFh
		mov	bl, al
		jmp	short loc_11FB1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 90h
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11F97:				; CODE XREF: seg088:04FBj
		lodsw
		mov	bx, ax
		mov	cl, cs:byte_11EC2
		shr	bh, cl
		or	bh, cs:byte_11EC4
		and	ah, cs:byte_11EC3
		jz	short loc_11FB9
		mov	cl, ah
		inc	cx
		inc	cx

loc_11FB1:				; CODE XREF: seg088:0524j seg088:0545j ...
		mov	al, es:[bx+di]
		stosb			; es:di=al;di++;
		loop	loc_11FB1
		jmp	short loc_11F48
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11FB9:				; CODE XREF: seg088:053Bj
		lodsb
		or	al, al
		jz	short loc_11FF0
		cmp	al, 1
		jz	short loc_11FC7
		mov	cl, al
		inc	cx
		jmp	short loc_11FB1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11FC7:				; CODE XREF: seg088:0550j
		mov	bx, di
		and	di, 0Fh
		add	di, cs:word_11EC6
		mov	cl, 4
		shr	bx, cl
		mov	ax, es
		add	ax, bx
		sub	ax, cs:word_11EC8
		mov	es, ax
		mov	bx, si
		and	si, 0Fh
		shr	bx, cl
		mov	ax, ds
		add	ax, bx
		mov	ds, ax
		jmp	loc_11F48
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_11FF0:				; CODE XREF: seg088:054Cj
		mov	dx, es
		shr	dx, 0Ch
		mov	ax, es
		shl	ax, 4
		add	ax, di
		adc	dx, 0
		pop	bp
		lds	si, [bp+0Ah]
		mov	bx, ds
		shr	bx, 0Ch
		mov	cx, ds
		shl	cx, 4
		add	cx, si
		adc	bx, 0
		sub	ax, cx
		sbb	dx, bx
		lds	si, [bp+6]
		mov	[si], ax
		mov	[si+2],	dx
		xor	ax, ax
seg088		ends

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg089		segment public 'CODE'
		assume cs:seg089
		assume es:nothing, ss:nothing, ds:dseg
		pop	ds
		pop	di
		pop	si
		leave

locret_12024:
		retf	0Ch
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_12028	proc far		; CODE XREF: sub_120A6+10p

var_2		= word ptr -2

		enter	2, 0
		push	di
		push	si
		sub	si, si
		cmp	word_1B102, si
		jl	short loc_1209F
		jg	short loc_1203E
		cmp	word_1B100, si	; pack_read_size
		jz	short loc_1209F

loc_1203E:				; CODE XREF: sub_12028+Ej					; sub_12028+6Cj ...
		or	si, si
		jnz	short loc_1209F
		mov	ax, word_1BE98
		sub	dx, dx
		cmp	dx, word_1B102
		jl	short loc_1205C
		jg	short loc_12055
		cmp	ax, word_1B100
		jbe	short loc_1205C

loc_12055:				; CODE XREF: sub_12028+25j
		mov	dx, word_1B102
		mov	ax, word_1B100

loc_1205C:				; CODE XREF: sub_12028+23j
					; sub_12028+2Bj
		mov	[bp+var_2], ax
		push	word_1AD16
		push	word_1AD14
		lea	ax, [bp+var_2]
		push	ss
		push	ax
		call	dword_1BEB2
		mov	di, ax

loc_12072:
		cmp	di, [bp+var_2]
		jz	short loc_1207E
		mov	si, 4
		jmp	short loc_1208F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 2 dup(90h)
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1207E:				; CODE XREF: sub_12028+4Dj
		push	word_1AD16
		push	word_1AD14
		lea	ax, [bp+var_2]
		push	ss
		push	ax
		call	dword_1C358	; pack_write_routine

loc_1208F:				; CODE XREF: sub_12028+52j
		cmp	word_1B102, 0
		jg	short loc_1203E
		jl	short loc_1209F
		cmp	word_1B100, 0
		jnz	short loc_1203E

loc_1209F:				; CODE XREF: sub_12028+Cj
					; sub_12028+14j ...
		mov	ax, si
		pop	si
		pop	di
		leave
		retf
sub_12028	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_120A6	proc far		; CODE XREF: sub_130DA+276P
					; sub_130DA:loc_1338BP

var_2		= word ptr -2

		enter	2, 0
		push	dx
		push	ax
		mov	cx, ax
		or	ax, ax
		jz	short loc_120BC
		dec	ax
		jz	short loc_12118
		push	cs
		call	near ptr sub_12028 ; íâ  ä-ï ¢ë¯(r)"­ï¥âáï (r)¤¨­ à § ¯(r)á"¥	(r)âªàëâ¨ï woodtile.ss
		jmp	locret_1219E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_120BC:				; CODE XREF: sub_120A6+Aj
		mov	[bp+var_2], 1000h
		cmp	word_1A2FC, 1
		jnz	short loc_120F0
		push	word ptr dword_1BEB2+2
		push	word ptr dword_1BEB2 ; pack_read_routine
		push	word ptr dword_1C358+2
		push	word ptr dword_1C358 ; pack_write_routine
		push	word_1AD16
		push	word_1AD14	; pack_buffer
		push	ds
		push	offset unk_1A2F8 ; pack_mode
		lea	ax, [bp+var_2]
		push	ss
		push	ax
		call	dword_1A306	; pack_pFABcomp_routine
		leave			; íâ  ¯à(r)æ¥¤ãà 	­¥ ãç áâ¢ã¥â ¢ à áè¨äà(r)¢ª¥ ¨,­ ¢¥à­(r), ­¨ ¢ ç¥¬
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_120F0:				; CODE XREF: sub_120A6+20j
		push	word ptr dword_1BEB2+2 ; 0xA1AC	¢ opening.exe
		push	word ptr dword_1BEB2
		push	word ptr dword_1C358+2
		push	word ptr dword_1C358
		push	word_1AD16
		push	word_1AD14
		push	ds
		push	offset unk_1A2F8
		lea	ax, [bp+var_2]
		push	ss
		push	ax
		call	dword_1A2FE	; pack_implode_routine
		leave			; íâ  ¯à(r)æ¥¤ãà 	­¥ ãç áâ¢ã¥â ¢ à áè¨äà(r)¢ª¥ ¨,¢(r)§¬(r)¦­(r),¢(r)(r)¡é¥ ­¨	¢ ç¥¬
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_12118:				; CODE XREF: sub_120A6+Dj
		cmp	word_1A2FC, 1
		jnz	short loc_12182
		mov	ax, dx
		dec	ax
		jz	short loc_12146
		dec	ax
		jz	short loc_12164
		push	word ptr dword_1BEB2+2
		push	word ptr dword_1BEB2
		push	word ptr dword_1C358+2
		push	word ptr dword_1C358
		push	word_1AD16
		push	word_1AD14
		call	dword_1A30A	; pack_pFABexp0_routine
		leave			; íâ  ¯à(r)æ¥¤ãà 	­¥ ãç áâ¢ã¥â ¢ à áè¨äà(r)¢ª¥ ¨,¢(r)§¬(r)¦­(r),¢(r)(r)¡é¥ ­¨	¢ ç¥¬
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_12146:				; CODE XREF: sub_120A6+7Cj
		push	word ptr dword_1BEB2+2
		push	word ptr dword_1BEB2 ; pack_read_routine
		push	word ptr dword_1B90E+2
		push	word ptr dword_1B90E ; pack_write_memory_ptr
		push	word_1AD16
		push	word_1AD14	; pack_buffer
		call	dword_1A30E	; pack_pFABexp1_routine
		leave			; íâ  ¯à(r)æ¥¤ãà 	"¨¡(r) ¢(r)(r)¡é¥ ­¥ ¯à¨¬¥­ï¥âáï ¢ mapedit.exe,"¨¡(r) ¯à¨¬¥­ï¥âáï "¨èì ¤"ï è¨äà(r)¢ ­¨ï
					; (  ­¥	à áè¨äà(r)¢ª¨)
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12164:				; CODE XREF: sub_120A6+7Fj
		push	word ptr dword_1C1B8+2
		push	word ptr dword_1C1B8 ; pack_read_memory_ptr
		push	word ptr dword_1B90E+2
		push	word ptr dword_1B90E ; pack_write_memory_ptr
		push	word_1AD16
		push	word_1AD14	; pack_buffer
		call	dword_1A312	; pack_pFABexp2_routine	- (r)á­.à áè¨äà(r)¢(r)ç­ ï ¯à(r)æ¥¤ãà 
		leave			; ¬ë ¡ë"¨ ¢ loc_11ECA
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12182:				; CODE XREF: sub_120A6+77j
		push	word ptr dword_1BEB2+2
		push	word ptr dword_1BEB2 ; pack_read_routine
		push	word ptr dword_1C358+2
		push	word ptr dword_1C358 ; pack_write_routine
		push	word_1AD16
		push	word_1AD14	; pack_buffer
		call	dword_1A302	; pack_explode_routine-¢ë§ë¢ ¥âáï (r)¤­ ¦¤ë ã¦¥
					; ¯(r)á"¥	(r)âªàëâ¨ï woodtile.ss

locret_1219E:				; CODE XREF: sub_120A6+13j
		leave
		retf
sub_120A6	endp

seg089		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg090		segment public 'CODE'
		assume cs:seg090
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __fastcall far sub_121A0(int,int,char *,__int32)
sub_121A0	proc far		; CODE XREF: sub_D43A+79P sub_DDB8+C4P

var_20		= word ptr -20h
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_4		= word ptr  0Ah

		enter	1Ch, 0

loc_121A4:				; var_20+2 - íâ(r) ax
		push	ax
		push	bx		; var_20
		push	di
		push	si		; fpos_t *
		mov	di, [bp+arg_4]
		mov	ax, 0FFFFh
		mov	[bp+var_4], ax
		mov	[bp+var_14], ax
		push	0Dh		; size_t
		push	word ptr [bp+8]
		push	[bp+arg_0]	; size_t
		push	ds		; char *
		push	offset byte_1A358 ; char *
		call	_strncpy_0
		add	sp, 0Ah
		mov	si, [bp-1Eh]
		mov	es, word ptr [bp+0Ch]
		mov	word ptr es:[di], 0
		push	72h ; 'r'       ; int
		push	[bp+var_20]	; char *
		call	_strlwr
		add	sp, 2
		push	ax		; char *
		call	_strchr
		add	sp, 4
		cmp	ax, 1		; § ç¥¬	¤¥" âì áà ¢­¥­¨¥ ¡¥§ ¯¥à¥å(r)¤ ?
		sbb	ax, ax		; ¢ëç¨â ­¨¥ á ãçñâ(r)¬ ¡¨â  ¯¥à¥­(r)á  CF
		inc	ax
		mov	[bp+var_2], ax

loc_121F2:
		or	ax, ax
		jz	short loc_12212
		or	si, si
		jz	short loc_12212
		cmp	word_1A356, 0
		jnz	short loc_12212
		;push	word ptr [bp+8]
		;push	[bp+arg_0]	; char *
		;call	sub_1345A	; himem_resident
		;add	sp, 4
		;mov	[bp+var_14], ax

loc_12212:				; CODE XREF: sub_121A0+54j
					; sub_121A0+58j ...
		cmp	[bp+var_14], 0
		jge	short loc_1221B
		jmp	loc_1231C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1221B:				; CODE XREF: sub_121A0+76j
		mov	si, word ptr dword_1A9C6
		mov	es, word ptr dword_1A9C6+2
		cmp	byte ptr es:[si], 3
		jnz	short loc_1222E
		mov	al, 1
		jmp	short loc_12230
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_1222E:				; CODE XREF: sub_121A0+87j
		mov	al, 2

loc_12230:				; CODE XREF: sub_121A0+8Bj
		mov	cx, es
		mov	es, word ptr [bp+0Ch]
		mov	es:[di+4], al
		mov	ax, es
		mov	es, cx

loc_1223D:
		mov	cx, es:[si+12h]
		mov	dx, es
		mov	es, ax
		mov	es:[di+0Ah], cx
		sub	cx, cx
		mov	es:[di+0Eh], cx
		mov	es:[di+0Ch], cx
		mov	cx, [bp+var_14]
		mov	es:[di+8], cx
		mov	word ptr es:[di+12h], 4000h
		mov	es, dx
		mov	cx, es:[si+14h]
		mov	bx, es:[si+16h]
		mov	es, ax
		mov	es:[di+14h], cx
		mov	es:[di+16h], bx
		mov	cx, ax
		mov	es, dx
		mov	dx, es:[si+18h]
		mov	es, cx
		mov	es:[di+28h], dx
		mov	bx, 0FFFFh
		mov	es:[di+10h], bx
		mov	es:[di+2], bx
		sub	ax, ax
		mov	es:[di+18h], ax
		mov	[bp+var_12], ax
		or	dx, dx
		jle	short loc_122F7
		lea	ax, [di+2Ah]
		mov	cx, [bp+0Ch]
		mov	[bp+var_8], ax
		mov	[bp+var_6], cx
		lea	ax, [si+1Ah]
		mov	cx, word ptr dword_1A9C6+2
		mov	[bp+var_10], ax
		mov	[bp+var_E], cx
		mov	bx, [bp+var_8]
		mov	di, ax
		mov	cx, [bp+var_12]

loc_122BB:				; CODE XREF: sub_121A0+153j
		mov	es, [bp+var_6]
		mov	byte ptr es:[bx], 0
		mov	es, [bp+var_E]
		mov	ax, es:[di]
		mov	dx, es:[di+2]	; int
		mov	es, [bp+var_6]
		mov	es:[bx+2], ax
		mov	es:[bx+4], dx
		mov	es, [bp+var_6]
		mov	es:[bx+6], ax
		mov	es:[bx+8], dx
		add	bx, 0Ah
		add	di, 4
		mov	ax, [bp+var_E]
		inc	cx		; int
		les	si, dword ptr [bp+arg_4]
		cmp	es:[si+28h], cx
		jg	short loc_122BB
		mov	di, si

loc_122F7:				; CODE XREF: sub_121A0+F8j
		les	bx, dword_1A9C6
		cmp	byte ptr es:[bx], 3
		jnz	short loc_1230E
		add	word_1A332, 1
		adc	word_1A334, 0
		jmp	loc_124A3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1230E:				; CODE XREF: sub_121A0+15Fj
		add	word_1A336, 1
		adc	word_1A338, 0
		jmp	loc_124A3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_1231C:				; CODE XREF: sub_121A0+78j
		mov	es, word ptr [bp+0Ch]
		mov	byte ptr es:[di+4], 0
		mov	word ptr es:[di+8], 0FFFFh
		push	word ptr [bp+8]	; int
		push	[bp+arg_0]	; int
		mov	bx, [bp+var_20]
		mov	si, es
		call	sub_2A74	; (r)âªàë¢ ¥â ä (c)"
		mov	es, si
		mov	es:[di+6], ax	; FILE*
		or	ax, ax
		jnz	short loc_12347
		jmp	loc_124B0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12347:				; CODE XREF: sub_121A0+1A2j
		mov	bx, [bp+var_2]
		mov	es, word ptr [bp+0Ch]
		mov	es:[di+2], bx
		mov	word ptr es:[di+18h], 0
		or	bx, bx
		jnz	short loc_1235E
		jmp	loc_12444
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1235E:				; CODE XREF: sub_121A0+1B9j
		lea	ax, [bp+var_18]	; var_18 ¨¬¥¥â â¨¯ fpos_t
		push	ax		; fpos_t *
		mov	es, word ptr [bp+0Ch]
		push	word ptr es:[di+6] ; FILE *
		mov	si, es
		call	_fgetpos
		add	sp, 4
		lea	ax, [di+1Ah]
		push	si
		push	ax		; void *
		push	0		; int
		push	1		; int
		mov	es, si
		mov	bx, es:[di+6]
		mov	ax, 10h
		cwd			; int
		call	sub_BCA0	; äã­ªæ¨ï @fileio_fread_f
		or	dx, ax
		jnz	short loc_12392
		jmp	loc_124B0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12392:				; CODE XREF: sub_121A0+1EDj
		push	0Ch		; size_t
		push	ds
		push	offset aMadspack2_0 ; "MADSPACK	2.0"
		mov	ax, di
		mov	dx, [bp+0Ch]
		add	ax, 1Ah
		push	dx		; char *
		push	ax		; char *
		call	_strncmp_0	; _fstrncmp á(r)£" á­(r) CodeView
		add	sp, 0Ah
		or	ax, ax
		jz	short loc_123B1
		jmp	loc_124B0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_123B1:				; CODE XREF: sub_121A0+20Cj
		mov	ax, di
		mov	dx, [bp+0Ch]
		add	ax, 2Ah	; '*'
		push	dx
		push	ax		; void *
		push	0		; int
		push	1		; int
		mov	es, dx
		mov	si, di
		mov	ax, es:[si+28h]
		mov	dx, ax
		shl	ax, 2		; ax=ax*4?
		add	ax, dx
		shl	ax, 1
		sub	dx, dx		; int
		mov	bx, es:[si+6]
		call	sub_BCA0	; äã­ªæ¨ï @fileio_fread_f
		or	dx, ax
		jnz	short loc_123E2
		jmp	loc_124B0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_123E2:				; CODE XREF: sub_121A0+23Dj
		add	word ptr [bp+var_18], 0B0h ; '°'
		adc	word ptr [bp+var_18+2],	0 ; ¢ 0åb0 ­ å(r)¤¨âáï ¯¥à¢ ï 4å¡ (c)â(r)¢ ï FAB-á¨£­ âãà 
		lea	ax, [bp+var_18]
		push	ax		; fpos_t *
		mov	es, word ptr [bp+0Ch]
		push	word ptr es:[di+6] ; FILE *
		mov	si, es
		call	_fsetpos
		add	sp, 4
		mov	es, si
		sub	ax, ax
		mov	es:[di+16h], ax
		mov	es:[di+14h], ax
		mov	[bp+var_12], ax
		cmp	es:[di+28h], ax
		jg	short loc_12418
		jmp	loc_12499
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12418:				; CODE XREF: sub_121A0+273j
		mov	ds, word ptr [bp+0Ch]
		mov	ax, di
		mov	dx, ds
		add	ax, 2Ch	; ','
		mov	bx, ax
		mov	es, dx
		assume es:dseg
		mov	cx, [di+28h]

loc_12429:				; CODE XREF: sub_121A0+29Bj
		mov	si, bx
		add	bx, 0Ah
		mov	ax, es:[si]
		mov	dx, es:[si+2]
		add	[di+14h], ax
		adc	[di+16h], dx
		loop	loc_12429	; int
		mov	ax, seg	dseg
		mov	ds, ax
		jmp	short loc_12499
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12444:				; CODE XREF: sub_121A0+1BBj
		mov	es, word ptr [bp+0Ch]
		assume es:nothing
		mov	word ptr es:[di+28h], 0
		mov	al, [bp-1Eh]
		mov	es:[di+2Ah], al
		push	ds
		push	offset aMadspack2_0_0 ;	"MADSPACK 2.0"
		lea	ax, [di+1Ah]
		push	es		; char *
		push	ax		; char *
		mov	si, ax
		mov	word ptr [bp+var_1C], si
		mov	word ptr [bp+var_1C+2],	es
		mov	si, es
		call	_strcpy_0
		add	sp, 8
		push	word ptr [bp+var_1C+2]
		push	word ptr [bp+var_1C] ; void far	*
		push	0		; int
		push	1		; int
		mov	es, si
		mov	bx, es:[di+6]
		mov	ax, 0B0h ; '°'
		cwd			; int
		call	sub_BEA8
		or	dx, ax
		jz	short loc_124B0
		mov	es, word ptr [bp+0Ch]
		sub	ax, ax
		mov	es:[di+16h], ax
		mov	es:[di+14h], ax

loc_12499:				; CODE XREF: sub_121A0+275j
					; sub_121A0+2A2j
		add	word_1A33A, 1	; 0x7B3B ¢ opening.exe
		adc	word_1A33C, 0	; DWORD	loader_found_on_disk

loc_124A3:				; CODE XREF: sub_121A0+16Bj
					; sub_121A0+178j
		mov	es, word ptr [bp+0Ch]
		mov	word ptr es:[di], 0FFFFh
		mov	[bp+var_4], 0

loc_124B0:				; CODE XREF: sub_121A0+1A4j
					; sub_121A0+1EFj ...
		cmp	[bp+var_4], 0
		jz	short loc_124D2
		cmp	[bp+var_14], 0
		jnz	short loc_124D2
		mov	es, word ptr [bp+0Ch]
		cmp	word ptr es:[di+6], 0
		jz	short loc_124D2
		push	word ptr es:[di+6] ; FILE *
		call	_fclose
		add	sp, 2

loc_124D2:				; CODE XREF: sub_121A0+314j
					; sub_121A0+31Aj ...
		mov	ax, [bp+var_4]
		pop	si
		pop	di
		leave
		retf	8
sub_121A0	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		push	si
		mov	bx, ax
		les	si, [bp+6]
		mov	es:[si+2Bh], bl
		pop	si
		leave
		retf	4

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_124EE	proc far		; CODE XREF: sub_D43A+EFP
					; sub_DDB8+8FEP

arg_0		= dword	ptr  6

		push	bp
		mov	bp, sp
		push	di
		push	si
		les	si, [bp+arg_0]
		sub	di, di
		cmp	es:[si], di
		jz	short loc_12572
		cmp	byte ptr es:[si+4], 1
		jz	short loc_1255C
		cmp	byte ptr es:[si+4], 2
		jz	short loc_1255C
		cmp	es:[si+2], di
		jnz	short loc_1254A
		push	word ptr es:[si+6] ; FILE *
		mov	di, es
		call	_rewind
		add	sp, 2
		mov	ax, si
		mov	dx, di
		add	ax, 1Ah
		push	dx
		push	ax		; void far *
		push	0		; int
		push	1		; int

loc_1252C:
		mov	es, di
		mov	bx, si
		mov	bx, es:[bx+6]
		mov	ax, 0B0h ; '°'
		cwd			; int
		call	sub_BEA8	; @fileio_fwrite_f
		or	dx, ax
		jnz	short loc_12548
		mov	di, 1
		jmp	short loc_1254A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 4

loc_12548:				; CODE XREF: sub_124EE+51j
		sub	di, di

loc_1254A:				; CODE XREF: sub_124EE+21j
					; sub_124EE+56j
		mov	es, word ptr [bp+arg_0+2]
		push	word ptr es:[si+6] ; FILE *
		call	_fclose
		add	sp, 2
		jmp	short loc_12572
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_1255C:				; CODE XREF: sub_124EE+14j
					; sub_124EE+1Bj
		mov	word ptr es:[si+10h], 0FFFFh
		mov	word ptr es:[si+12h], 4000h
		sub	ax, ax
		mov	es:[si+0Eh], ax
		mov	es:[si+0Ch], ax

loc_12572:				; CODE XREF: sub_124EE+Dj
					; sub_124EE+6Bj
		mov	es, word ptr [bp+arg_0+2]
		mov	word ptr es:[si], 0
		mov	ax, di
		pop	si
		pop	di
		leave

locret_1257F:
		retf	4
sub_124EE	endp

seg090		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg091		segment public 'CODE'
		assume cs:seg091
		;org 2
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __stdcall	far sub_12582(__int32,int,int,void *)
sub_12582	proc far		; CODE XREF: sub_D43A+B7P sub_DDB8+F6P ...

var_20		= word ptr -20h
var_1E		= word ptr -1Eh
var_1C		= word ptr -1Ch
var_1A		= word ptr -1Ah
var_18		= dword	ptr -18h
var_14		= word ptr -14h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh

		enter	1Ch, 0
		push	dx		; var_1E
		push	ax		; var_20
		push	di
		push	si
		sub	ax, ax
		mov	[bp+var_1A], ax
		mov	[bp+var_1C], ax
		mov	[bp+var_14], ax
		mov	ax, dx
		or	ax, [bp+var_20]
		jnz	short loc_125A6
		sub	ax, ax

loc_1259E:				; CODE XREF: sub_12582+216j
		sub	dx, dx
		pop	si
		pop	di
		leave
		retf	0Ch		; int
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_125A6:				; CODE XREF: sub_12582+18j
		cmp	[bp+arg_4], 1
		jnz	short loc_125B8
		cmp	[bp+arg_6], 0
		jnz	short loc_125B8
		mov	ax, [bp+var_20]
		jmp	short loc_125C7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_125B8:				; CODE XREF: sub_12582+28j
					; sub_12582+2Ej
		push	dx
		push	[bp+var_20]
		push	[bp+arg_6]
		push	[bp+arg_4]
		call	__aFlmul

loc_125C7:				; CODE XREF: sub_12582+33j
		mov	[bp+var_4], ax
		mov	[bp+var_2], dx
		les	si, [bp+arg_0]

loc_125D0:
		mov	di, es:[si+18h]
		inc	word ptr es:[si+18h]
		cmp	byte ptr es:[si+4], 1
		jnz	short loc_12622
		sub	ax, ax
		mov	[bp+var_C], ax
		mov	[bp+var_E], ax
		mov	cx, word ptr [bp+arg_0+2]
		lea	ax, [si+10h]
		;push	cx
		;push	ax		; __int32
		;lea	ax, [si+12h]
		;push	cx		; __int32
		;push	ax		; __int32
		;push	word ptr [bp+10h] ; __int32
		;push	[bp+arg_8]	; void *
		;push	[bp+var_2]	; int
		;push	[bp+var_4]	; int
		;mov	es, cx
		;mov	ax, es:[si+8]
		;call	sub_12EC8	; @ems_copy_it_down
		or	ax, ax
		jz	short loc_12612
		jmp	loc_12772
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12612:				; CODE XREF: sub_12582+8Bj
		mov	ax, [bp+var_4]
		mov	dx, [bp+var_2]
		mov	[bp+var_E], ax
		mov	[bp+var_C], dx
		jmp	loc_12772
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_12622:				; CODE XREF: sub_12582+5Bj
		cmp	byte ptr es:[si+4], 2
		jnz	short loc_12676
		sub	ax, ax
		mov	[bp+var_C], ax
		mov	[bp+var_E], ax
		push	word ptr [bp+10h]
		push	[bp+arg_8]
		push	ax
		mov	es, word ptr [bp+arg_0+2]
		;push	word ptr es:[si+0Eh]
		;push	word ptr es:[si+0Ch]
		;push	word ptr es:[si+0Ah]
		;push	[bp+var_2]
		;push	[bp+var_4]
		;call	sub_13434
		;add	sp, 10h
		or	ax, ax
		jz	short loc_1265C
		jmp	loc_12772
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1265C:				; CODE XREF: sub_12582+D5j
		mov	ax, [bp+var_4]
		mov	dx, [bp+var_2]
		mov	[bp+var_E], ax
		mov	[bp+var_C], dx
		mov	es, word ptr [bp+arg_0+2]
		add	es:[si+0Ch], ax
		adc	es:[si+0Eh], dx
		jmp	loc_12772
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12676:				; CODE XREF: sub_12582+A5j
		sub	ax, ax
		mov	[bp+var_C], ax
		mov	[bp+var_E], ax
		mov	bx, si
		mov	ax, di
		shl	ax, 2
		add	ax, di
		shl	ax, 1
		add	bx, ax
		mov	al, es:[bx+2Ah]
		sub	ah, ah
		mov	word_1A2FC, ax
		mov	cx, es:[bx+30h]
		mov	dx, es:[bx+32h]
		mov	[bp+var_8], cx
		mov	[bp+var_6], dx
		cmp	ax, 1
		sbb	ax, ax
		and	ax, 1
		inc	ax
		mov	[bp+var_A], ax
		dec	ax
		jnz	short loc_1270C
		mov	ax, cx
		call	sub_CF72	; @mem_get
		mov	[bp+var_1C], ax
		mov	[bp+var_1A], dx
		or	dx, ax
		jz	short loc_1270C
		push	[bp+var_1A]
		push	ax		; void *
		push	0		; int
		push	1		; int
		mov	es, word ptr [bp+arg_0+2]
		mov	bx, es:[si+6]
		mov	ax, [bp+var_8]
		mov	dx, [bp+var_6]	; int
		call	sub_BCA0	; äã­ªæ¨ï @fileio_fread_f
		or	dx, ax
		jnz	short loc_126E3
		jmp	loc_12772
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_126E3:				; CODE XREF: sub_12582+15Cj
		push	[bp+var_2]
		push	[bp+var_4]
		push	[bp+var_1A]
		push	[bp+var_1C]
		push	word ptr [bp+10h]
		push	[bp+arg_8]
		mov	ax, [bp+var_A]
		sub	dx, dx
		sub	bx, bx
		call	sub_130DA	; @pack_data
		mov	[bp+var_E], ax
		mov	[bp+var_C], dx
		mov	[bp+var_14], 0FFFFh

loc_1270C:				; CODE XREF: sub_12582+12Dj
					; sub_12582+13Ej
		cmp	[bp+var_14], 0
		jnz	short loc_12772
		lea	ax, [bp+var_18]
		push	ax		; fpos_t *
		mov	es, word ptr [bp+arg_0+2]
		push	word ptr es:[si+6] ; FILE *
		mov	di, es
		call	_fgetpos
		add	sp, 4
		push	[bp+var_2]
		push	[bp+var_4]
		mov	es, di
		push	ds
		push	word ptr es:[si+6]
		push	word ptr [bp+10h]
		push	[bp+arg_8]
		mov	ax, [bp+var_A]
		mov	dx, 1
		sub	bx, bx
		call	sub_130DA	; @pack_data
		mov	[bp+var_E], ax
		mov	[bp+var_C], dx
		cmp	[bp+var_A], 1
		jnz	short loc_12772
		push	0		; int
		mov	ax, [bp+var_8]
		mov	dx, [bp+var_6]
		add	ax, word ptr [bp+var_18]
		adc	dx, word ptr [bp+var_18+2]
		push	dx		; __int32
		push	ax		; __int32
		mov	es, word ptr [bp+arg_0+2]
		push	word ptr es:[si+6] ; FILE *
		call	_fseek
		add	sp, 8

loc_12772:				; CODE XREF: sub_12582+8Dj
					; sub_12582+9Cj ...
		mov	ax, [bp+var_1A]
		or	ax, [bp+var_1C]
		jz	short loc_12785
		push	[bp+var_1A]
		push	[bp+var_1C]
		call	sub_CFA0	; @mem_free

loc_12785:				; CODE XREF: sub_12582+1F6j
		mov	ax, [bp+var_E]
		mov	dx, [bp+var_C]
		cmp	[bp+var_20], ax
		jnz	short loc_1279C
		cmp	[bp+var_1E], dx
		jnz	short loc_1279C
		mov	ax, 1
		jmp	loc_1259E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_1279C:				; CODE XREF: sub_12582+20Cj
					; sub_12582+211j
		push	[bp+var_1E]
		push	[bp+var_20]
		push	dx
		push	ax
		call	__aFldiv
		pop	si
		pop	di
		leave
		retf	0Ch
sub_12582	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
seg091		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg092		segment public 'CODE'
		assume cs:seg092
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

; int __stdcall	far sub_127B0(char *)
sub_127B0	proc far		; CODE XREF: sub_EDAC+8AP sub_EE56+D0P ...

var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6

		enter	2, 0

loc_127B4:				; ä-ï @echo
		push	ax
		push	word ptr [bp+8]
		push	[bp+arg_0]	; char *
		call	_strlen_0
		add	sp, 4
		mov	[bp+var_2], ax
		push	ds
		mov	cx, [bp+var_2]
		mov	bx, 1
		lds	dx, dword ptr [bp+arg_0]
		mov	ah, 40h
		int	21h		; DOS -	2+ - WRITE TO FILE WITH	HANDLE
					; BX = file handle, CX = number	of bytes to write, DS:DX -> buffer
		pop	ds
		mov	ax, [bp+var_4]
		or	ax, ax
		jz	short locret_127E8
		mov	dl, 0Ah
		mov	ah, 2

loc_127E0:				; DOS -	DISPLAY	OUTPUT
		int	21h		; DL = character to send to standard output
		mov	dl, 0Dh

loc_127E4:
		mov	ah, 2
		int	21h		; DOS -	DISPLAY	OUTPUT
					; DL = character to send to standard output

locret_127E8:				; CODE XREF: sub_127B0+2Aj
		leave
		retf	4
sub_127B0	endp

seg092		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg093		segment public 'CODE'

seg093		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg094		segment public 'CODE'

seg094		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg095		segment public 'CODE'

seg095		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg096		segment public 'CODE'

seg096		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg097		segment public 'CODE'

seg097		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg098		segment public 'CODE'

seg098		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg099		segment public 'CODE'
		
seg099		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg100		segment public 'CODE'
		assume cs:seg100
		assume es:nothing, ss:nothing, ds:dseg
		push	si
		xor	dx, dx

loc_12AA3:
		mov	di, word_1A412
		mov	cx, di
		sub	cx, sp
		jnb	short loc_12AB7
		neg	cx
		mov	dx, cx
		push	ds
		pop	es
		assume es:dseg
		xor	al, al
		rep stosb

loc_12AB7:				; CODE XREF: seg100:000Bj
		mov	ax, dx
		pop	si
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_12ABB	proc far		; CODE XREF: sub_EE56+216P
		push	si		; ä-ï stack_check
		xor	bx, bx
		mov	si, word_1A412	; STKHQQ
		mov	cx, si
		sub	cx, sp
		jnb	short loc_12AD7
		neg	cx
		mov	dx, cx

loc_12ACC:				; CODE XREF: sub_12ABB+16j
		lodsb
		or	al, al

loc_12ACF:
		jnz	short loc_12AD3
		loop	loc_12ACC

loc_12AD3:				; CODE XREF: sub_12ABB:loc_12ACFj
		mov	bx, dx
		sub	bx, cx

loc_12AD7:				; CODE XREF: sub_12ABB+Bj
		mov	ax, bx
		pop	si
		retf
sub_12ABB	endp

seg100		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg101		segment public 'CODE'
		assume cs:seg101
		;org 0Bh
		assume es:nothing, ss:nothing, ds:dseg
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_12ADC	proc far		; CODE XREF: seg070:0160P
		push	bp
		mov	bp, sp
		mov	ax, word_1A380
		shl	ax, 2
		add	ax, word_1A380
		inc	ax
		mov	word_1A380, ax
		and	ah, 3

loc_12AF0:
		dec	word_1A37E
		jnz	short loc_12AF8
		xor	ah, ah

loc_12AF8:				; CODE XREF: sub_12ADC+18j
		mov	dx, 3D4h
		mov	al, 0Dh
		out	dx, ax		; Video: CRT cntrlr addr
					; regen	start address (low)
		leave
		retf
sub_12ADC	endp

seg101		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg102		segment public 'CODE'
		assume cs:seg102
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_12B00	proc far		; CODE XREF: seg081:0057P

var_14		= word ptr -14h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2

		enter	12h, 0

loc_12B04:
		push	bx
		push	di
		push	si
		sub	bx, bx
		mov	dx, bx
		mov	[bp+var_6], dx

loc_12B0E:				; CODE XREF: sub_12B00+BCj
		mov	[bp+var_A], bx
		cmp	dx, 1
		sbb	ax, ax
		and	al, 0EBh
		add	ax, 3Fh	; '?'
		mov	[bp+var_8], 0
		mov	[bp+var_E], bx

loc_12B23:
		mov	[bp+var_10], dx
		mov	di, ax

loc_12B28:				; CODE XREF: sub_12B00+AAj
		sub	dx, dx
		mov	bx, [bp+var_A]

loc_12B2D:				; CODE XREF: sub_12B00+9Fj
		sub	cx, cx
		mov	[bp+var_4], dx

loc_12B32:				; CODE XREF: sub_12B00+92j
		mov	ax, [bp+var_6]
		add	ax, cx
		mov	[bp+var_2], ax
		cmp	[bp+var_8], 0
		jz	short loc_12B56
		mov	ax, di
		mov	si, [bp+var_2]
		mov	dx, si
		shl	si, 1
		add	si, dx
		add	si, [bp+var_14]
		mov	[bp+var_12], si
		mov	[si], al

loc_12B53:
		jmp	short loc_12B64
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_12B56:				; CODE XREF: sub_12B00+3Ej
		mov	si, ax
		shl	si, 1
		add	si, ax
		add	si, [bp+var_14]
		mov	[bp+var_12], si
		mov	[si], bl

loc_12B64:				; CODE XREF: sub_12B00:loc_12B53j
		cmp	[bp+var_4], 0
		jz	short loc_12B74
		mov	ax, di
		mov	si, [bp+var_12]
		mov	[si+1],	al
		jmp	short loc_12B7A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12B74:				; CODE XREF: sub_12B00+68j
		mov	si, [bp+var_12]
		mov	[si+1],	bl

loc_12B7A:				; CODE XREF: sub_12B00+72j
		or	cx, cx
		jz	short loc_12B88
		mov	ax, di
		mov	si, [bp+var_12]
		mov	[si+2],	al
		jmp	short loc_12B8E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12B88:				; CODE XREF: sub_12B00+7Cj
		mov	si, [bp+var_12]
		mov	[si+2],	bl

loc_12B8E:				; CODE XREF: sub_12B00+86j
		inc	cx
		cmp	cx, 2
		jl	short loc_12B32
		add	[bp+var_6], 2
		mov	dx, [bp+var_4]
		inc	dx
		cmp	dx, 2
		jl	short loc_12B2D
		inc	[bp+var_8]
		cmp	[bp+var_8], 2
		jge	short loc_12BAD
		jmp	loc_12B28
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12BAD:				; CODE XREF: sub_12B00+A8j
		mov	dx, [bp+var_10]
		inc	dx
		mov	bx, [bp+var_E]
		add	bx, 15h
		cmp	bx, 2Ah	; '*'
		jge	short loc_12BBF
		jmp	loc_12B0E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12BBF:				; CODE XREF: sub_12B00+BAj
		mov	bx, [bp+var_14]
		mov	byte ptr [bx+13h], 15h
		pop	si
		pop	di
		leave
		retf
sub_12B00	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		enter	4, 0
		push	bx
		push	di
		push	si
		mov	byte ptr [bp-4], 0
		mov	byte ptr [bp-3], 15h
		mov	byte ptr [bp-2], 2Ah ; '*'
		mov	byte ptr [bp-1], 3Fh ; '?'
		sub	dx, dx
		mov	si, bx

loc_12BE5:				; CODE XREF: seg102:00F9j
		mov	di, dx
		mov	al, [bp+di-4]
		mov	[si], al
		mov	[si+1],	al
		mov	[si+2],	al
		add	si, 3
		inc	dx
		cmp	dx, 4
		jl	short loc_12BE5
		pop	si
		pop	di
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		enter	0Eh, 0
		push	dx
		push	ax
		push	si
		mov	dx, [bp+8]
		mov	cx, [bp-10h]
		mov	word ptr [bp-4], 0
		mov	ax, dx
		sub	dx, [bp+6]
		neg	dx
		mov	[bp-0Ch], dx

loc_12C1C:
		mov	[bp-2],	ax
		or	cx, cx
		jle	short loc_12C79
		mov	si, [bp-12h]
		mov	ax, si
		shl	si, 1
		add	si, ax
		add	si, bx
		mov	ax, cx
		dec	ax
		mov	[bp-0Eh], ax
		mov	[bp-8],	cx

loc_12C37:				; CODE XREF: seg102:0177j
		mov	dx, [bp-2]
		mov	[si], dl
		mov	[si+1],	dl
		mov	[si+2],	dl
		cmp	cx, 1
		jle	short loc_12C71
		mov	ax, [bp-0Eh]
		mov	bx, [bp-0Ch]
		add	[bp-4],	bx
		cmp	[bp-4],	ax
		jb	short loc_12C71
		mov	[bp-6],	si
		mov	bx, [bp-4]

loc_12C5B:				; CODE XREF: seg102:0166j
		inc	dx
		mov	ax, 1
		sub	ax, cx
		add	bx, ax
		cmp	bx, [bp-0Eh]
		jnb	short loc_12C5B
		mov	[bp-4],	bx
		mov	[bp-2],	dx

loc_12C6E:
		mov	si, [bp-6]

loc_12C71:				; CODE XREF: seg102:0145j seg102:0153j
		add	si, 3

loc_12C74:
		dec	word ptr [bp-8]
		jnz	short loc_12C37

loc_12C79:				; CODE XREF: seg102:0121j
		pop	si
		leave
		retf	4
seg102		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg103		segment public 'CODE'
		assume cs:seg103
		;org 0Eh
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_12C7E	proc far		; CODE XREF: sub_109EE+78P

var_1A		= word ptr -1Ah
var_18		= word ptr -18h
var_14		= word ptr -14h
var_12		= word ptr -12h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_4		= word ptr  0Ah

		enter	18h, 0
		push	ax
		push	di
		push	si
		mov	cx, ax
		dec	cx
		mov	[bp+var_14], cx

loc_12C8B:				; CODE XREF: sub_12C7E:loc_12DFFj
		sub	ax, ax
		mov	[bp+var_2], ax
		mov	[bp+var_C], ax
		mov	dx, [bp+var_1A]
		cmp	[bp+var_14], ax
		jg	short loc_12C9E
		jmp	loc_12DF9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12C9E:				; CODE XREF: sub_12C7E+1Bj
		mov	ax, dx
		dec	ax
		shl	ax, 1
		mov	[bp+var_E], ax
		sub	ax, ax
		mov	[bp+var_A], ax
		mov	[bp+var_8], ax

loc_12CAE:				; CODE XREF: sub_12C7E+178j
		cmp	[bp+var_2], 0
		jz	short loc_12CB7
		jmp	loc_12DF9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12CB7:				; CODE XREF: sub_12C7E+34j
		les	bx, dword ptr [bp+arg_0]
		add	bx, [bp+var_8]
		mov	[bp+var_18], bx
		mov	word ptr [bp-16h], es

loc_12CC3:
		mov	ax, es:[bx]
		mov	dx, es:[bx+2]
		cmp	es:[bx+6], dx
		jle	short loc_12CD3
		jmp	loc_12DDF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12CD3:				; CODE XREF: sub_12C7E+50j
		jl	short loc_12CDE
		cmp	es:[bx+4], ax
		jb	short loc_12CDE
		jmp	loc_12DDF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12CDE:				; CODE XREF: sub_12C7E:loc_12CD3j
					; sub_12C7E+5Bj
		mov	es, word ptr [bp-16h]
		mov	ax, es:[bx]
		mov	dx, es:[bx+2]
		mov	[bp+var_6], ax
		mov	[bp+var_4], dx
		les	bx, dword ptr [bp+arg_4]
		mov	si, [bp+var_A]
		mov	ax, es:[bx+si]
		mov	[bp+var_12], ax
		mov	di, [bp+var_E]
		or	di, di
		jle	short loc_12D3B
		mov	ax, di
		shl	di, 1
		push	di		; size_t
		mov	cx, [bp+var_18]
		mov	dx, [bp-16h]
		add	cx, 4
		push	dx
		push	cx		; size_t
		push	dx		; void *
		push	[bp+var_18]	; void *
		mov	si, ax
		call	_memmove
		add	sp, 0Ah
		push	si		; size_t
		mov	ax, [bp+arg_4]
		mov	dx, [bp+0Ch]
		add	ax, [bp+var_A]
		mov	cx, ax
		mov	bx, dx
		inc	ax
		inc	ax
		push	dx
		push	ax		; size_t
		push	bx		; void *
		push	cx		; void *
		call	_memmove
		add	sp, 0Ah

loc_12D3B:				; CODE XREF: sub_12C7E+81j
		sub	di, di
		cmp	[bp+var_14], di
		jle	short loc_12D6B
		lds	bx, dword ptr [bp+arg_0]
		mov	cx, [bp+var_2]

loc_12D48:				; CODE XREF: sub_12C7E+EBj
		or	cx, cx
		jnz	short loc_12D6B
		mov	ax, [bp+var_6]

loc_12D4F:
		mov	dx, [bp+var_4]
		mov	si, bx
		add	bx, 4
		cmp	[si+2],	dx
		jl	short loc_12D65
		jg	short loc_12D62
		cmp	[si], ax
		jbe	short loc_12D65

loc_12D62:				; CODE XREF: sub_12C7E+DEj
		mov	cx, 1

loc_12D65:				; CODE XREF: sub_12C7E+DCj
					; sub_12C7E+E2j
		inc	di
		cmp	[bp+var_14], di
		jg	short loc_12D48

loc_12D6B:				; CODE XREF: sub_12C7E+C2j
					; sub_12C7E+CCj
		mov	ax, seg	dseg
		mov	ds, ax
		mov	[bp+var_2], 0FFFFh
		mov	si, [bp+var_1A]
		sub	si, di
		dec	si
		shl	si, 1
		or	si, si
		jle	short loc_12DBB
		mov	ax, si
		shl	si, 1
		push	si		; size_t
		mov	cx, di
		shl	cx, 2
		add	cx, [bp+arg_0]
		mov	dx, [bp+8]
		push	dx
		push	cx		; size_t
		add	cx, 4
		push	dx		; void *
		push	cx		; void *
		mov	si, ax
		call	_memmove
		add	sp, 0Ah
		push	si		; size_t
		mov	ax, di
		shl	ax, 1
		add	ax, [bp+arg_4]

loc_12DAA:
		mov	dx, [bp+0Ch]

loc_12DAD:
		push	dx
		push	ax		; size_t
		inc	ax
		inc	ax
		push	dx		; void *
		push	ax		; void *
		call	_memmove
		add	sp, 0Ah

loc_12DBB:				; CODE XREF: sub_12C7E+101j
		mov	ax, [bp+var_6]
		mov	dx, [bp+var_4]
		mov	bx, di
		mov	cx, di
		shl	bx, 2
		les	si, dword ptr [bp+arg_0]
		mov	es:[bx+si], ax
		mov	es:[bx+si+2], dx
		mov	ax, [bp+var_12]
		mov	bx, cx
		shl	bx, 1
		les	si, dword ptr [bp+arg_4]
		mov	es:[bx+si], ax

loc_12DDF:				; CODE XREF: sub_12C7E+52j
					; sub_12C7E+5Dj
		add	[bp+var_A], 2
		sub	[bp+var_E], 2
		add	[bp+var_8], 4
		inc	[bp+var_C]
		mov	ax, [bp+var_C]
		cmp	[bp+var_14], ax
		jle	short loc_12DF9
		jmp	loc_12CAE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12DF9:				; CODE XREF: sub_12C7E+1Dj
					; sub_12C7E+36j ...
		cmp	[bp+var_2], 0
		jz	short loc_12E02

loc_12DFF:
		jmp	loc_12C8B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12E02:				; CODE XREF: sub_12C7E+17Fj
		pop	si
		pop	di

locret_12E04:
		leave
		retf	8
sub_12C7E	endp

seg103		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg104		segment public 'CODE'
		assume cs:seg104
		;org 8
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_12E08	proc far		; CODE XREF: sub_10B56+1C3P

var_12		= word ptr -12h
var_10		= word ptr -10h
arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah

		enter	10h, 0
		push	ax
		push	di
		push	si
		mov	[bp+var_10], 0
		push	ds
		les	di, [bp+arg_0]

loc_12E18:				; CODE XREF: sub_12E08+B5j
		mov	si, [bp+var_10]
		mov	bx, si
		mov	dx, [bp+var_12]
		dec	dx

loc_12E21:				; CODE XREF: sub_12E08+30j
		cmp	si, dx
		jl	short loc_12E28
		jmp	loc_12EC0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12E28:				; CODE XREF: sub_12E08+1Bj
		mov	al, es:[bx+di+1]
		cmp	al, es:[bx+di]
		jb	short loc_12E3A
		inc	si
		add	bx, 1
		mov	[bp+var_10], si
		jmp	short loc_12E21
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12E3A:				; CODE XREF: sub_12E08+27j
		mov	cx, dx
		sub	cx, si
		dec	cx
		add	di, bx
		add	di, 1
		push	si
		push	cx
		push	es
		pop	ds
		mov	si, di
		add	si, 1
		or	cx, cx
		jz	short loc_12E53
		rep movsb

loc_12E53:				; CODE XREF: sub_12E08+47j
		pop	cx
		lds	si, [bp+arg_4]
		les	di, [bp+arg_4]
		pop	bx
		inc	bx
		add	si, bx
		add	di, bx
		inc	si
		mov	dl, es:[di]
		or	cx, cx
		jz	short loc_12E6A
		rep movsb

loc_12E6A:				; CODE XREF: sub_12E08+5Ej
		les	di, [bp+arg_0]

loc_12E6D:
		xor	si, si
		xor	bx, bx
		mov	cx, [bp+var_12]
		dec	cx

loc_12E75:				; CODE XREF: sub_12E08+7Dj
		cmp	si, cx
		jl	short loc_12E7C
		jmp	short loc_12E88
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_12E7C:				; CODE XREF: sub_12E08+6Fj
		cmp	al, es:[bx+di]
		jbe	short loc_12E88
		inc	si
		add	bx, 1
		jmp	short loc_12E75
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_12E88:				; CODE XREF: sub_12E08+71j
					; sub_12E08+77j
		push	bx
		push	si
		sub	cx, si
		jz	short loc_12EAF
		push	cx
		add	di, bx
		push	es
		pop	ds
		add	di, cx
		mov	si, di
		sub	si, 1
		std
		rep movsb
		lds	si, [bp+arg_4]
		pop	cx
		pop	di
		push	di
		add	di, si
		push	ds
		pop	es
		assume es:dseg
		add	di, cx
		mov	si, di
		dec	si
		rep movsb
		cld

loc_12EAF:				; CODE XREF: sub_12E08+84j
		lds	si, [bp+arg_4]
		pop	bx
		db	3Eh
		mov	[bx+si], dl
		les	di, [bp+arg_0]
		assume es:nothing
		pop	bx
		mov	es:[bx+di], al
		jmp	loc_12E18
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_12EC0:				; CODE XREF: sub_12E08+1Dj
		pop	ds
		pop	si
		pop	di
		leave

locret_12EC4:
		retf	8
sub_12E08	endp

seg104		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg105		segment public 'CODE'

seg105		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg106		segment public 'CODE'
		
seg106		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg107		segment public 'CODE'
		
seg107		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg108		segment public 'CODE'
		assume cs:seg108
		;org 0Ah
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_1309A	proc far		; CODE XREF: sub_130DA+41p
					; sub_130DA+ADp

arg_0		= dword	ptr  6

		push	bp
		mov	bp, sp
		les	bx, [bp+arg_0]
		mov	ax, bx
		leave
		retf
sub_1309A	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_130A4	proc far		; CODE XREF: sub_130DA+2FFp
		push	bp
		mov	bp, sp
		push	di
		les	di, dword_1A386
		mov	ax, es
		or	ax, di
		jz	short loc_130B6
		call	dword_1A386

loc_130B6:				; CODE XREF: sub_130A4+Cj
		pop	di
		leave
		retf
sub_130A4	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
		push	bp
		mov	bp, sp
		mov	ax, [bp+6]
		mov	dx, [bp+8]
		mov	word_1A382, ax
		mov	word_1A384, dx
		mov	ax, [bp+0Ah]
		mov	dx, [bp+0Ch]

loc_130D0:
		mov	word ptr dword_1A386, ax
		mov	word ptr dword_1A386+2,	dx
		leave
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_130DA	proc far		; CODE XREF: sub_12582+17AP
					; sub_12582+1C0P

var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h

		enter	6, 0
		push	bx		; ä-ï @pack_data;var_8
		push	dx		; var_A	(var_C+2)
		push	ax		; var_C
		push	di
		push	si

loc_130E3:
		mov	[bp+var_4], 0
		or	dx, dx
		jnz	short loc_13108

loc_130EC:				; pack_read_routine
		mov	word ptr dword_1BEB2, offset loc_13596
		mov	word ptr dword_1BEB2+2,	seg seg113
		mov	ax, [bp+arg_4]
		mov	dx, [bp+arg_6]
		mov	word ptr dword_1C1B8, ax ; pack_read_memory_ptr
		mov	word ptr dword_1C1B8+2,	dx
		jmp	short loc_13124
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_13108:				; CODE XREF: sub_130DA+10j
		mov	word ptr dword_1BEB2, offset loc_13678 ; pack_read_routine
		mov	word ptr dword_1BEB2+2,	seg seg115
		push	[bp+arg_6]
		push	[bp+arg_4]
		push	cs
		call	near ptr sub_1309A ; sub_A25C ¢	opening.exe
		add	sp, 4
		mov	word_1ACEC, ax	; pack_read_file_handle

loc_13124:				; CODE XREF: sub_130DA+2Bj
		cmp	word ptr [bp+var_8], 2
		jnz	short loc_13152
		mov	word ptr dword_1C358, offset loc_13784 ; pack_write_routine
		mov	word ptr dword_1C358+2,	seg seg117
		mov	bx, [bp+arg_0]
		mov	es, [bp+arg_2]
		mov	ax, es:[bx]

loc_1313F:				; pack_ems_page_handle
		mov	word_1C7E8, ax
		mov	ax, es:[bx+2]
		mov	word_1AA24, ax	; pack_ems_page_marker
		mov	ax, es:[bx+4]
		mov	word_1ACF2, ax	; pack_ems_page_offset
		jmp	short loc_13190
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13152:				; CODE XREF: sub_130DA+4Ej
		cmp	word ptr [bp+var_8], 0
		jnz	short loc_13174
		mov	word ptr dword_1C358, offset loc_1360A ; pack_write_routine
		mov	word ptr dword_1C358+2,	seg seg114
		mov	ax, [bp+arg_0]
		mov	dx, [bp+arg_2]
		mov	word ptr dword_1B90E, ax ; pack_write_memory_ptr
		mov	word ptr dword_1B90E+2,	dx
		jmp	short loc_13190
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_13174:				; CODE XREF: sub_130DA+7Cj
		mov	word ptr dword_1C358, offset loc_136F2 ; pack_write_routine
		mov	word ptr dword_1C358+2,	seg seg116
		push	[bp+arg_2]
		push	[bp+arg_0]
		push	cs
		call	near ptr sub_1309A
		add	sp, 4
		mov	word_1ACEA, ax	; pack_write_file_handle

loc_13190:				; CODE XREF: sub_130DA+76j
					; sub_130DA+97j
		sub	ax, ax
		mov	word_1C7F6, ax	; pack_write_count
		mov	word_1C7F4, ax
		mov	word_1A97C, ax	; pack_read_count
		mov	word_1A97A, ax
		mov	ax, word ptr [bp+var_C]
		or	ax, ax
		jz	short loc_131D2
		dec	ax
		jnz	short loc_131AB	; çâ(r) áà ¢­¨¢ ¥¬ á ­ã"¥¬:ã¬¥­ìè¥­­ãî ax	¨"¨ ¡¥§	ã¬¥­ìè¥­¨ï ­  1?
		jmp	loc_13238
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_131AB:				; CODE XREF: sub_130DA+CCj
		mov	word_1BE98, 1000h ; pack_buffer_size
		mov	ax, [bp+arg_8]
		mov	dx, [bp+arg_A]
		mov	word_1B100, ax	; pack_read_size
		mov	word_1B102, dx
		mov	word_1A8F4, ax	; pack_write_size
		mov	word_1A8F6, dx
		mov	word ptr [bp+var_8+2], 5290h ; §¤¥áì ¬.¡. ¤à¥á 	á"(r)¢ ¢ dseg'¥
		mov	[bp+var_2], 6984h
		jmp	loc_132F4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_131D2:				; CODE XREF: sub_130DA+C9j
		cmp	word_1A2FC, 1	; pack_strategy
		jnz	short loc_131E8
		mov	word_1BE98, 0D1D0h ; pack_buffer_size
		mov	ax, word ptr dword_1A306+2 ; pack_pFABcomp_routine
		or	ax, word ptr dword_1A306
		jmp	short loc_131F5
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_131E8:				; CODE XREF: sub_130DA+FDj
		mov	word_1BE98, 89B8h ; pack_buffer_size
		mov	ax, word ptr dword_1A2FE+2 ; pack_implode_routine
		or	ax, word ptr dword_1A2FE

loc_131F5:				; CODE XREF: sub_130DA+10Cj
		jnz	short loc_13211
		mov	ax, word ptr [bp+var_C]
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, word_1A2FC	; pack_strategy
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, 0FFE3h
		mov	dx, 3		; int
		mov	bx, 18h
		call	sub_F0D6	; @error_report

loc_13211:				; CODE XREF: sub_130DA:loc_131F5j
		mov	ax, [bp+arg_8]
		mov	dx, [bp+arg_A]
		mov	word_1B100, ax	; pack_read_size
		mov	word_1B102, dx
		mov	word_1A8F4, 0FFFFh ; pack_write_size
		mov	word_1A8F6, 0FFFFh
		mov	word ptr [bp+var_8+2], 5290h ; pack_read_size
		mov	[bp+var_2], 4B0Ah ; pack_read_count
		jmp	loc_132F4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_13238:				; CODE XREF: sub_130DA+CEj
		mov	word_1B100, 0FFFFh ; pack_read_size
		mov	word_1B102, 0FFFFh
		mov	ax, [bp+arg_8]
		mov	dx, [bp+arg_A]
		mov	word_1A8F4, ax	; pack_write_size
		mov	word_1A8F6, dx
		mov	word ptr [bp+var_8+2], 4A84h ; pack_write_size
		cmp	word_1A2FC, 1	; pack_strategy
		jnz	short loc_132C6
		cmp	word ptr [bp+var_C+2], 0
		jnz	short loc_13286
		cmp	word ptr [bp+var_8], 0
		jnz	short loc_13286
		mov	ax, word ptr dword_1A312+2 ; pack_pFABexp2_routine
		or	ax, word ptr dword_1A312

loc_13270:
		jz	short loc_13286
		lea	ax, [bp+arg_8]
		mov	[bp+var_2], ax
		mov	word_1BE98, 4	; pack_buffer_size
		mov	[bp+var_4], 2
		jmp	short loc_132F4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ		align 2

loc_13286:				; CODE XREF: sub_130DA+187j
					; sub_130DA+18Dj ...
		cmp	word ptr [bp+var_8], 1
		jz	short loc_132AC
		cmp	word ptr [bp+var_8], 2
		jz	short loc_132AC
		lea	ax, [bp+arg_8]
		mov	[bp+var_2], ax
		mov	word_1BE98, 822h ; pack_buffer_size

loc_1329E:
		mov	[bp+var_4], 1
		mov	ax, word ptr dword_1A30E+2
		or	ax, word ptr dword_1A30E ; pack_pFABexp1_routine
		jmp	short loc_132D8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_132AC:				; CODE XREF: sub_130DA+1B0j
					; sub_130DA+1B6j
		mov	[bp+var_2], 6984h ; pack_write_count
		mov	word_1BE98, 382Eh ; pack_buffer_size
		mov	[bp+var_4], 0
		mov	ax, word ptr dword_1A30A+2 ; pack_pFABexp0_routine
		or	ax, word ptr dword_1A30A
		jmp	short loc_132D8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_132C6:				; CODE XREF: sub_130DA+181j
		mov	[bp+var_2], 6984h ; pack_write_count

loc_132CB:				; pack_buffer_size
		mov	word_1BE98, 311Eh
		mov	ax, word ptr dword_1A302+2
		or	ax, word ptr dword_1A302 ; pack_explode_routine

loc_132D8:				; CODE XREF: sub_130DA+1D0j
					; sub_130DA+1E9j
		jnz	short loc_132F4
		mov	ax, word ptr [bp+var_C]
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, word_1A2FC	; pack_strategy
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, 0FFE3h
		mov	dx, 3		; int
		mov	bx, 18h
		call	sub_F0D6	; @error_report

loc_132F4:				; CODE XREF: sub_130DA+F5j
					; sub_130DA+15Aj ...
		sub	ax, ax
		mov	word_1AD16, ax	; pack_buffer
		mov	word_1AD14, ax
		mov	ax, word_1A384	; pack_special_buffer
		or	ax, word_1A382
		jnz	short loc_13330
		push	ds
		push	offset aPack	; "$pack$"
		mov	ax, word_1BE98	; pack_buffer_size
		sub	dx, dx
		call	sub_CDC6	; äã­ªæ¨ï @mem_get_name
		mov	word_1AD14, ax	; pack_buffer
		mov	word_1AD16, dx
		mov	ax, dx
		or	ax, word_1AD14
		jnz	short loc_1333E
		mov	bx, [bp+var_2]
		sub	ax, ax
		mov	[bx+2],	ax
		mov	[bx], ax
		jmp	loc_133B7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_13330:				; CODE XREF: sub_130DA+229j
		mov	ax, word_1A382	; pack_special_buffer
		mov	dx, word_1A384
		mov	word_1AD14, ax	; pack_buffer
		mov	word_1AD16, dx

loc_1333E:				; CODE XREF: sub_130DA+246j
		cmp	word ptr [bp+var_C], 1
		jnz	short loc_13374
		cmp	word ptr [bp+var_8], 0
		jnz	short loc_13374
		mov	ax, word ptr [bp+var_C]
		mov	dx, [bp+var_4]
		call	sub_120A6	; @pack_a_packet
		mov	si, ax
		or	si, si
		jz	short loc_133B7
		mov	bx, [bp+var_2]
		sub	ax, ax
		mov	[bx+2],	ax
		mov	[bx], ax
		imul	ax, word ptr [bp+var_C], 3E8h
		add	ax, [bp+var_4]
		cwd
		push	dx
		push	ax
		mov	ax, si
		jmp	short loc_133A6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13374:				; CODE XREF: sub_130DA+268j
					; sub_130DA+26Ej
		mov	si, word ptr [bp+var_8+2]
		mov	di, word ptr [bp+var_C]

loc_1337A:				; CODE XREF: sub_130DA+2B8j
		cmp	word ptr [si+2], 0
		jl	short loc_133B7
		jg	short loc_13387
		cmp	word ptr [si], 0
		jz	short loc_133B7

loc_13387:				; CODE XREF: sub_130DA+2A6j
		mov	ax, di
		sub	dx, dx

loc_1338B:				; @pack_a_packet
		call	sub_120A6
		or	ax, ax
		jz	short loc_1337A
		mov	bx, [bp+var_2]
		sub	ax, ax
		mov	[bx+2],	ax
		mov	[bx], ax
		mov	ax, di
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, word ptr [bp+var_8]

loc_133A6:				; CODE XREF: sub_130DA+298j
		cwd
		push	dx
		push	ax		; __int32
		mov	ax, 0FFE4h
		mov	dx, 3		; int
		mov	bx, 18h
		call	sub_F0D6	; @error_report

loc_133B7:				; CODE XREF: sub_130DA+252j
					; sub_130DA+27Fj ...
		mov	ax, word_1A384	; pack_special_buffer
		or	ax, word_1A382
		jnz	short loc_133D8
		mov	ax, word_1AD16	; pack_buffer
		or	ax, word_1AD14
		jz	short loc_133DC
		push	word_1AD16
		push	word_1AD14	; pack_buffer
		call	sub_CFA0	; @mem_free
		jmp	short loc_133DC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_133D8:				; CODE XREF: sub_130DA+2E4j
		push	cs
		call	near ptr sub_130A4

loc_133DC:				; CODE XREF: sub_130DA+2EDj
					; sub_130DA+2FCj
		mov	bx, [bp+var_2]

loc_133DF:
		mov	ax, [bx]
		mov	dx, [bx+2]

loc_133E4:
		pop	si
		pop	di
		leave
		retf	0Ch
sub_130DA	endp

seg108		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg109		segment public 'CODE'
		assume cs:seg109
		;org 0Ah
		assume es:nothing, ss:nothing, ds:dseg

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_133EA	proc far		; CODE XREF: sub_109EE+45P

arg_0		= dword	ptr  6

		push	bp
		mov	bp, sp
		push	di
		push	si
		les	di, [bp+arg_0]
		xor	ax, ax
		mov	cl, es:[di]
		xor	ch, ch
		mov	si, cx
		shl	cx, 5
		shl	si, 1
		add	cx, si
		shl	si, 1
		add	cx, si
		add	ax, cx
		mov	cl, es:[di+1]
		xor	ch, ch
		mov	si, cx
		shl	cx, 6
		shl	si, 2
		add	cx, si
		shl	si, 1
		add	cx, si
		add	ax, cx
		mov	cl, es:[di+2]
		xor	ch, ch
		mov	si, cx
		shl	cx, 4
		shl	si, 1
		sub	cx, si
		add	ax, cx
		pop	si
		pop	di
		leave
		retf
sub_133EA	endp

seg109		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg110		segment public 'CODE'

seg110		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg111		segment public 'CODE'

seg111		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
; Segment type:	Pure code
seg112		segment public 'CODE'

seg112		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg113		segment public 'CODE'
		assume cs:seg113
		;org 5
		assume es:nothing, ss:nothing, ds:dseg
		align 2

loc_13596:				; DATA XREF: sub_130DA:loc_130ECo
		enter	2, 0
		push	di
		push	si
		les	di, [bp+6]
		mov	cx, es:[di]
		mov	ax, word_1B100
		mov	dx, word_1B102
		cmp	dx, 0FFFFh
		jz	short loc_135CA
		push	ax
		or	ax, dx
		pop	ax
		jz	short loc_135EA
		or	dx, dx
		jnz	short loc_135BE
		cmp	cx, ax
		jbe	short loc_135BE
		mov	cx, ax

loc_135BE:				; CODE XREF: seg113:0026j seg113:002Aj
		sub	ax, cx
		sbb	dx, 0

loc_135C3:
		mov	word_1B100, ax
		mov	word_1B102, dx

loc_135CA:				; CODE XREF: seg113:001Cj
		add	word_1A97A, cx
		adc	word_1A97C, 0
		mov	ax, cx
		or	cx, cx
		jz	short loc_135EA
		push	ds
		les	di, [bp+0Ah]
		lds	si, dword_1C1B8
		rep movsb

loc_135E3:
		mov	dx, si
		pop	ds
		mov	word ptr dword_1C1B8, dx

loc_135EA:				; CODE XREF: seg113:0022j seg113:0047j
		mov	[bp-2],	ax
		push	word ptr dword_1C1B8+2
		push	word ptr dword_1C1B8
		call	sub_104F2
		mov	word ptr dword_1C1B8, ax
		mov	word ptr dword_1C1B8+2,	dx
		mov	ax, [bp-2]
		pop	si
		pop	di
		leave
		retf	8
seg113		ends

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg114		segment public 'CODE'
		assume cs:seg114
		;org 0Ah
		assume es:nothing, ss:nothing, ds:dseg

loc_1360A:				; DATA XREF: sub_130DA+7Eo
		push	bp
		mov	bp, sp
		push	di
		push	si
		les	di, [bp+6]
		mov	cx, es:[di]
		mov	ax, word_1A8F4
		mov	dx, word_1A8F6

loc_1361C:
		cmp	dx, 0FFFFh
		jz	short loc_1363D
		push	ax
		or	ax, dx
		pop	ax
		jz	short loc_1365D
		or	dx, dx
		jnz	short loc_13631
		cmp	cx, ax
		jbe	short loc_13631
		mov	cx, ax

loc_13631:				; CODE XREF: seg114:0029j seg114:002Dj
		sub	ax, cx
		sbb	dx, 0
		mov	word_1A8F4, ax
		mov	word_1A8F6, dx

loc_1363D:				; CODE XREF: seg114:001Fj
		add	word_1C7F4, cx
		adc	word_1C7F6, 0
		mov	ax, cx
		or	cx, cx
		jz	short loc_1365D
		push	ds
		les	di, dword_1B90E

loc_13651:
		lds	si, [bp+0Ah]
		rep movsb
		mov	dx, di
		pop	ds
		mov	word ptr dword_1B90E, dx

loc_1365D:				; CODE XREF: seg114:0025j seg114:004Aj
		push	word ptr dword_1B90E+2
		push	word ptr dword_1B90E
		call	sub_104F2
		mov	word ptr dword_1B90E, ax

loc_1366D:
		mov	word ptr dword_1B90E+2,	dx
		pop	si
		pop	di
		leave

locret_13674:
		retf	8
seg114		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg115		segment public 'CODE'
		assume cs:seg115
		;org 7
		assume es:nothing, ss:nothing, ds:dseg
		align 2

loc_13678:				; DATA XREF: sub_130DA:loc_13108o
		push	bp
		mov	bp, sp
		push	si
		cmp	word_1B102, 0
		jl	short loc_136A4
		les	bx, [bp+6]
		mov	ax, es:[bx]
		sub	dx, dx
		cmp	dx, word_1B102

loc_1368F:
		jl	short loc_136A0
		jg	short loc_13699
		cmp	ax, word_1B100
		jbe	short loc_136A0

loc_13699:				; CODE XREF: seg115:0021j
		mov	dx, word_1B102

loc_1369D:
		mov	ax, word_1B100

loc_136A0:				; CODE XREF: seg115:loc_1368Fj
					; seg115:0027j
		mov	si, ax
		jmp	short loc_136AA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_136A4:				; CODE XREF: seg115:0011j
		les	bx, [bp+6]
		mov	si, es:[bx]

loc_136AA:				; CODE XREF: seg115:0032j
		or	si, si
		jz	short loc_136EA
		push	word ptr [bp+0Ch]
		push	word ptr [bp+0Ah]
		push	0
		push	si
		mov	ax, 1
		cwd
		mov	bx, word_1ACEC

loc_136BF:				; äã­ªæ¨ï @fileio_fread_f
		call	sub_BCA0
		mov	si, ax
		cmp	word_1B102, 0
		jl	short loc_136E0
		jg	short loc_136D6
		cmp	word_1B100, 0
		jz	short loc_136E0

loc_136D6:				; CODE XREF: seg115:005Dj
		sub	ax, ax
		sub	word_1B100, si
		sbb	word_1B102, ax

loc_136E0:				; CODE XREF: seg115:005Bj seg115:0064j
		sub	ax, ax
		add	word_1A97A, si
		adc	word_1A97C, ax

loc_136EA:				; CODE XREF: seg115:003Cj
		mov	ax, si
		pop	si
		leave

locret_136EE:
		retf	8
seg115		ends

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg116		segment public 'CODE'
		assume cs:seg116
		;org 1
		assume es:nothing, ss:nothing, ds:dseg
		nop

loc_136F2:				; DATA XREF: sub_130DA:loc_13174o
		enter	4, 0
		push	si
		cmp	word_1A8F6, 0
		jl	short loc_13720
		les	bx, [bp+6]
		mov	ax, es:[bx]
		sub	dx, dx
		cmp	dx, word_1A8F6
		jl	short loc_1371B
		jg	short loc_13714
		cmp	ax, word_1A8F4
		jbe	short loc_1371B

loc_13714:				; CODE XREF: seg116:001Cj
		mov	dx, word_1A8F6
		mov	ax, word_1A8F4

loc_1371B:				; CODE XREF: seg116:001Aj seg116:0022j
		mov	si, ax
		jmp	short loc_13726
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop

loc_13720:				; CODE XREF: seg116:000Cj
		les	bx, [bp+6]
		mov	si, es:[bx]

loc_13726:				; CODE XREF: seg116:002Dj
		or	si, si
		jz	short loc_1377C
		push	word ptr [bp+0Ch]
		push	word ptr [bp+0Ah]
		push	0
		push	1
		mov	ax, si
		sub	dx, dx
		mov	[bp-4],	ax
		mov	[bp-2],	dx
		mov	bx, word_1ACEA
		call	sub_BEA8
		or	dx, ax
		jnz	short loc_13750
		sub	si, si
		jmp	short loc_1377C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop

loc_13750:				; CODE XREF: seg116:0059j
		cmp	word_1A8F6, 0
		jl	short loc_1376E
		jg	short loc_13760
		cmp	word_1A8F4, 0
		jz	short loc_1376E

loc_13760:				; CODE XREF: seg116:0067j
		mov	ax, [bp-4]
		mov	dx, [bp-2]
		sub	word_1A8F4, ax
		sbb	word_1A8F6, dx

loc_1376E:				; CODE XREF: seg116:0065j seg116:006Ej
		mov	ax, [bp-4]
		mov	dx, [bp-2]
		add	word_1C7F4, ax
		adc	word_1C7F6, dx

loc_1377C:				; CODE XREF: seg116:0038j seg116:005Dj
		mov	ax, si
		pop	si
		leave
		retf	8
seg116		ends

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg117		segment public 'CODE'
		assume cs:seg117
		;org 3
		assume es:nothing, ss:nothing, ds:dseg
		nop

loc_13784:				; DATA XREF: sub_130DA+50o
		enter	0Eh, 0
		cmp	word_1A8F6, 0
		jl	short loc_137AE
		les	bx, [bp+6]
		mov	ax, es:[bx]
		sub	dx, dx
		cmp	dx, word_1A8F6
		jl	short loc_137B4
		jg	short loc_137A5
		cmp	ax, word_1A8F4
		jbe	short loc_137B4

loc_137A5:				; CODE XREF: seg117:001Dj
		mov	dx, word_1A8F6
		mov	ax, word_1A8F4
		jmp	short loc_137B4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_137AE:				; CODE XREF: seg117:000Dj
		les	bx, [bp+6]
		mov	ax, es:[bx]

loc_137B4:				; CODE XREF: seg117:001Bj seg117:0023j ...
		mov	[bp-2],	ax
		or	ax, ax
		jnz	short loc_137BE
		jmp	far ptr loc_13887  ;was changed by me randomly
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_137BE:				; CODE XREF: seg117:0039j
		mov	[bp-8],	ax
		mov	ax, [bp+0Ah]
		mov	dx, [bp+0Ch]
		mov	[bp-6],	ax
		mov	[bp-4],	dx
		mov	ax, word_1A2CC
		mov	dx, word_1A2CE
		mov	[bp-0Ch], ax
		mov	[bp-0Ah], dx
		cmp	word_1ACF2, 4000h
		jl	short loc_137FE
		mov	ax, word_1C7E8
		mov	dx, word_1AA24
		;call	sub_11614
		mov	word_1AA24, ax
		mov	word_1ACF2, 0
		or	ax, ax
		jge	short loc_137FE
		jmp	far ptr loc_13887  ;was changed by me randomly
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_137FE:				; CODE XREF: seg117:0060j seg117:0079j
		mov	ax, 4000h
		sub	ax, word_1ACF2
		cmp	ax, [bp-8]
		jle	short loc_1380D
		mov	ax, [bp-8]

loc_1380D:				; CODE XREF: seg117:0088j
		mov	[bp-0Eh], ax
		push	word_1AA24
		push	0
		;call	sub_113A4
		add	sp, 4
		push	word ptr [bp-0Eh]
		push	word ptr [bp-4]
		push	word ptr [bp-6]
		mov	ax, [bp-0Ch]
		mov	dx, [bp-0Ah]
		add	ax, word_1ACF2
		push	dx
		push	ax
		call	_memcpy
		add	sp, 0Ah
		mov	ax, [bp-6]
		mov	dx, [bp-4]
		add	ax, [bp-0Eh]
		push	dx
		push	ax
		call	sub_104F2
		mov	[bp-6],	ax
		mov	[bp-4],	dx
		mov	ax, [bp-0Eh]
		sub	[bp-8],	ax
		add	word_1ACF2, ax
		cmp	word_1A8F6, 0

loc_13860:
		jl	short loc_13875
		jg	short loc_1386B
		cmp	word_1A8F4, 0
		jz	short loc_13875

loc_1386B:				; CODE XREF: seg117:00E2j
		sub	dx, dx
		sub	word_1A8F4, ax
		sbb	word_1A8F6, dx

loc_13875:				; CODE XREF: seg117:loc_13860j
					; seg117:00E9j
		sub	dx, dx
		add	word_1C7F4, ax
		adc	word_1C7F6, dx
		cmp	[bp-8],	dx	; CODE XREF: start+97p
seg117		ends

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Pure code
seg118		segment public 'CODE'
		assume cs:seg118
		;org 2
		assume es:nothing, ss:nothing, ds:dseg
		jz	short loc_13887

loc_13884:
		jmp	loc_13887 	;maybe this stub is data?
						;anyway changed by me randomly
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13887:				; CODE XREF: seg118:0002j
		mov	ax, [bp-2]
		leave
		retf	8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 10h dup(0)
		assume ss:seg122, ds:nothing

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

		public start
start		proc far
		mov	ah, 30h
		int	21h		; DOS -	GET DOS	VERSION
					; Return: AL = major version number (00h for DOS 1.x)
		cmp	al, 2
		jnb	short loc_138AB	; ¥á"¨ ¢¥àá¨ï DOS ¡(r)"ìè¥ ¤¢ãå
		xor	ax, ax
		push	es
		push	ax
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_138AB:				; CODE XREF: start+6j
		mov	di, seg	dseg
		mov	si, ds:2
		sub	si, di
		cmp	si, 1000h
		jb	short loc_138BD
		mov	si, 1000h

loc_138BD:				; CODE XREF: start+1Aj
		cli
		mov	ss, di
		assume ss:dseg
		add	sp, 69AEh
		sti
		jnb	short loc_138D9
		push	ss
		pop	ds
		assume ds:dseg
		push	cs
		call	near ptr __FF_MSGBANNER
		xor	ax, ax
		push	ax
		push	cs

loc_138D1:
		call	near ptr __NMSG_WRITE
		mov	ax, 4CFFh
		int	21h		; DOS -	2+ - QUIT WITH EXIT CODE (EXIT)
					; AL = exit code
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_138D9:				; CODE XREF: start+27j
		mov	ax, si
		mov	cl, 4
		shl	ax, cl
		dec	ax
		mov	ss:word_1A3A2, ax
		mov	bx, 4534h
		mov	word ptr ss:[bx], ss
		and	sp, 0FFFEh
		mov	ss:[bx+4], sp
		mov	ax, 0FFFEh
		push	ax
		mov	ss:[bx+0Ah], sp
		not	ax
		push	ax
		mov	ss:[bx+6], sp
		mov	ss:[bx+8], sp
		mov	ss:word_1A39E, sp
		add	si, di
		mov	word_15E72, si
		mov	bx, es
		sub	bx, si
		neg	bx
		mov	ah, 4Ah
		int	21h		; DOS -	2+ - ADJUST MEMORY BLOCK SIZE (SETBLOCK)
					; ES = segment address of block	to change
					; BX = new size	in paragraphs
		mov	ss:word_1A3DE, ds
		push	ss
		pop	es
		assume es:dseg
		cld
		mov	di, 499Ah
		mov	cx, 69B0h
		sub	cx, di
		xor	ax, ax
		rep stosb
		push	ss
		pop	ds
		mov	cx, word_1A704
		jcxz	short loc_13937
		call	cx

loc_13937:				; CODE XREF: start+95j
		call	__setenvp
		call	far ptr	__setargv
		xor	bp, bp
		call	__cinit
		push	ss
		pop	ds
		push	envp		; envp
		push	argv		; argv
		push	argc		; argc
		call	_main
		push	ax		; int
		push	cs
		call	near ptr _exit
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

locret_13960:				; CODE XREF: __aFchkstk-199p
					; __exit+39p ...
		retn
start		endp ; sp =  69A6h

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

__cintDIV:
		mov	ax, word ptr cs:__dataseg
		mov	ds, ax
		assume ds:nothing
		mov	ax, 3
		mov	ss:off_1A3A0, 1DBh
; START	OF FUNCTION CHUNK FOR __aFchkstk

__amsg_exit:				; CODE XREF: __aFchkstk+1Dj
					; __fptrap+3j ...
		push	ax
		push	cs
		call	near ptr __FF_MSGBANNER
		push	cs
		call	near ptr __NMSG_WRITE
		cmp	ss:word_1A706, 0D6D6h
		jnz	short loc_1398A
		pop	ax
		push	ax
		call	ss:off_1A70A

loc_1398A:				; CODE XREF: __aFchkstk-19Dj
		mov	ax, 0FFh
		push	ax		; int
		push	cs
		call	word ptr ds:4530h

__dataseg:				; DATA XREF: seg118:__cintDIVr
		out	15h, ax
; END OF FUNCTION CHUNK	FOR __aFchkstk
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		db 0

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

__cinit		proc far		; CODE XREF: start+A5P
		mov	ax, 3500h
		int	21h		; DOS -	2+ - GET INTERRUPT VECTOR
					; AL = interrupt number
					; Return: ES:BX	= value	of interrupt vector
		mov	ds:455Ah, bx
		mov	word ptr ds:455Ch, es
		push	cs
		pop	ds
		assume ds:seg118
		mov	ax, 2500h
		mov	dx, 0E1h ; 'á'
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		push	ss
		pop	ds
		assume ds:dseg
		mov	cx, word_1A718
		jcxz	short loc_139E3
		mov	es, word_1A3DE
		assume es:nothing
		mov	si, es:2Ch
		lds	ax, dword_1A71A
		mov	dx, ds
		xor	bx, bx
		call	dword ptr ss:unk_1A716
		jnb	short loc_139D2
		push	ss
		pop	ds
		jmp	near ptr __fptrap
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_139D2:				; CODE XREF: __cinit+35j
		lds	ax, ss:dword_1A71E
		mov	dx, ds
		mov	bx, 3
		call	dword ptr ss:unk_1A716
		push	ss
		pop	ds

loc_139E3:				; CODE XREF: __cinit+1Dj
		mov	es, word_1A3DE
		mov	cx, es:2Ch
		jcxz	short loc_13A2C
		mov	es, cx
		xor	di, di

loc_139F2:				; CODE XREF: __cinit+75j
		cmp	byte ptr es:[di], 0
		jz	short loc_13A2C
		mov	cx, 0Dh
		mov	si, 454Ch
		repe cmpsb
		jz	short loc_13A0D
		mov	cx, 7FFFh
		xor	ax, ax
		repne scasb
		jnz	short loc_13A2C
		jmp	short loc_139F2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13A0D:				; CODE XREF: __cinit+6Aj
		push	es
		push	ds
		pop	es
		assume es:dseg
		pop	ds
		mov	si, di
		mov	di, 4577h
		mov	cl, 4

loc_13A18:				; CODE XREF: __cinit+92j
		lodsb
		sub	al, 41h	; 'A'
		jb	short loc_13A2A
		shl	al, cl
		xchg	ax, dx
		lodsb
		sub	al, 41h	; 'A'
		jb	short loc_13A2A
		or	al, dl
		stosb
		jmp	short loc_13A18
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13A2A:				; CODE XREF: __cinit+85j __cinit+8Dj
		push	ss
		pop	ds

loc_13A2C:				; CODE XREF: __cinit+56j __cinit+60j ...
		mov	bx, 4

loc_13A2F:				; CODE XREF: __cinit+B0j
		and	byte ptr [bx+4577h], 0BFh
		mov	ax, 4400h
		int	21h		; DOS -	2+ - IOCTL - GET DEVICE	INFORMATION
					; BX = file or device handle
		jb	short loc_13A45
		test	dl, 80h
		jz	short loc_13A45
		or	byte ptr [bx+4577h], 40h

loc_13A45:				; CODE XREF: __cinit+A3j __cinit+A8j
		dec	bx
		jns	short loc_13A2F
		mov	si, 48B2h
		mov	di, 48B2h
		call	sub_13B0B
		mov	si, 48B2h
		mov	di, 48B2h
		call	sub_13B0B
		retf
__cinit		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function noreturn	bp-based frame

; void __cdecl exit(int)
_exit		proc far		; CODE XREF: sub_EE56+276P start+BFp
		push	bp
		mov	bp, sp
		xor	cx, cx
		jmp	short loc_13A7C
_exit		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function noreturn	bp-based frame

; void __cdecl _exit(int)
__exit		proc far		; CODE XREF: __aFchkstk-18Fp
					; DATA XREF: dseg:off_1A3A0o

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		mov	cx, 1
		jmp	short loc_13A7C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

; void _cexit(void)
__cexit:
		push	bp
		mov	bp, sp
		push	si
		push	di
		mov	cx, 100h
		jmp	short loc_13A7C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

; void _c_exit(void)
__c_exit:
		push	bp
		mov	bp, sp
		push	si
		push	di
		mov	cx, 101h

loc_13A7C:				; CODE XREF: _exit+5j __exit+6j ...
		push	cx
		or	cl, cl
		jnz	short loc_13A9F
		mov	si, 49B2h
		mov	di, 49B2h
		call	sub_13B0B
		mov	si, 48B2h
		mov	di, 48B6h
		call	sub_13B0B
		cmp	word_1A706, 0D6D6h
		jnz	short loc_13A9F
		call	off_1A70C

loc_13A9F:				; CODE XREF: __exit+1Dj __exit+37j
		mov	si, 48B6h
		mov	di, 48B6h
		call	sub_13B0B
		mov	si, 48B6h
		mov	di, 48B6h
		call	sub_13B0B
		call	__nullcheck
		or	ax, ax
		jz	short loc_13ACB
		pop	ax
		or	ah, ah
		push	ax
		jnz	short loc_13ACB
		cmp	[bp+arg_0], 0
		jnz	short loc_13ACB
		mov	[bp+arg_0], 0FFh

loc_13ACB:				; CODE XREF: __exit+56j __exit+5Cj ...
		call	__ctermsub
		pop	ax
		or	ah, ah
		jnz	short loc_13ADA
		mov	ax, [bp+arg_0]
		mov	ah, 4Ch
		int	21h		; DOS -	2+ - QUIT WITH EXIT CODE (EXIT)
					; AL = exit code
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13ADA:				; CODE XREF: __exit+6Fj
		pop	di
		pop	si
		pop	bp
		retf
__exit		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

__ctermsub	proc near		; CODE XREF: __exit:loc_13ACBp
		mov	cx, word_1A718
		jcxz	short loc_13AEB
		mov	bx, 2
		call	dword ptr unk_1A716

loc_13AEB:				; CODE XREF: __ctermsub+4j
		push	ds
		lds	dx, dword_1A3CA
		mov	ax, 2500h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		pop	ds
		cmp	byte_1A408, 0
		jz	short locret_13B0A
		push	ds
		mov	al, byte_1A409
		lds	dx, dword_1A40A
		mov	ah, 25h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		pop	ds

locret_13B0A:				; CODE XREF: __ctermsub+1Dj
		retn
__ctermsub	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

sub_13B0B	proc near		; CODE XREF: __cinit+B8p __cinit+C1p ...
		cmp	si, di
		jnb	short locret_13B1D
		sub	di, 4
		mov	ax, [di]
		or	ax, [di+2]
		jz	short sub_13B0B
		call	dword ptr [di]
		jmp	short sub_13B0B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

locret_13B1D:				; CODE XREF: sub_13B0B+2j
		retn
sub_13B0B	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

__aFchkstk	proc far		; CODE XREF: __output+7p _write+B1p

; FUNCTION CHUNK AT 00F1 SIZE 00000024 BYTES

		pop	cx
		pop	dx
		mov	bx, sp
		sub	bx, ax
		jb	short loc_13B31
		cmp	bx, word_1A412
		jb	short loc_13B31
		mov	sp, bx
		push	dx
		push	cx
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13B31:				; CODE XREF: __aFchkstk+6j
					; __aFchkstk+Cj
		push	dx
		push	cx
		mov	ax, word ptr dword_1A40E
		inc	ax
		jnz	short loc_13B3E
		xor	ax, ax
		jmp	__amsg_exit
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13B3E:				; CODE XREF: __aFchkstk+19j
		jmp	dword_1A40E
__aFchkstk	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl fclose(FILE *)
_fclose		proc far		; CODE XREF: sub_8420+BP sub_A100+136P ...

var_E		= byte ptr -0Eh
var_C		= word ptr -0Ch
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		sub	sp, 0Eh
		push	di
		push	si		; int
		mov	di, 0FFFFh
		mov	si, [bp+arg_0]
		test	byte ptr [si+6], 40h
		jz	short loc_13B59
		jmp	loc_13BF0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13B59:				; CODE XREF: _fclose+12j
		test	byte ptr [si+6], 83h
		jnz	short loc_13B62
		jmp	loc_13BF0
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13B62:				; CODE XREF: _fclose+1Bj
		push	si		; FILE *
		call	_fflush
		add	sp, 2
		mov	di, ax
		mov	bx, si
		sub	bx, 46C6h
		mov	ax, [bx+476Ah]
		mov	[bp+var_4], ax
		push	si
		call	__freebuf
		add	sp, 2
		mov	al, [si+7]
		sub	ah, ah
		push	ax		; int
		call	_close
		add	sp, 2
		or	ax, ax
		jl	short loc_13BED
		cmp	[bp+var_4], 0
		jz	short loc_13BF0
		mov	ax, 45A4h
		push	ax		; char *
		lea	ax, [bp+var_E]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		lea	ax, [bp+var_C]
		mov	[bp+var_2], ax

loc_13BAF:
		cmp	[bp+var_E], 5Ch	; '\'
		jz	short loc_13BC8
		mov	ax, 45A6h
		push	ax		; char *
		lea	ax, [bp+var_E]
		push	ax		; char *
		call	_strcat
		add	sp, 4
		jmp	short loc_13BCB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_13BC8:				; CODE XREF: _fclose+71j
		dec	[bp+var_2]

loc_13BCB:				; CODE XREF: _fclose+83j
		mov	ax, 0Ah
		push	ax		; int
		push	[bp+var_2]	; char *
		push	[bp+var_4]	; int
		call	_itoa
		add	sp, 6
		lea	ax, [bp+var_E]
		push	ax		; char *
		call	_remove
		add	sp, 2
		or	ax, ax
		jz	short loc_13BF0

loc_13BED:				; CODE XREF: _fclose+4Fj
		mov	di, 0FFFFh

loc_13BF0:				; CODE XREF: _fclose+14j _fclose+1Dj ...
		mov	byte ptr [si+6], 0
		mov	ax, di
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retf
_fclose		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
; Attributes: library function bp-based	frame

; FILE *__cdecl	_fsopen(const char *,const char	*,int)
__fsopen	proc far		; CODE XREF: _fopen+CP

arg_0		= word ptr  6
arg_4		= word ptr  0Ah

		push	bp
		mov	bp, sp
		push	si

loc_13C00:
		call	__getstream
		mov	si, ax
		or	si, si
		jnz	short loc_13C10
		sub	ax, ax
		jmp	short loc_13C22
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_13C10:				; CODE XREF: __fsopen+Dj
		push	si		; int
		push	[bp+arg_4]	; int
		push	word ptr [bp+8]	; int
		push	[bp+arg_0]	; char *
		call	__openfile

loc_13C1F:
		add	sp, 8

loc_13C22:				; CODE XREF: __fsopen+11j
		pop	si
		mov	sp, bp
		pop	bp
		retf
__fsopen	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; FILE *__cdecl	fopen(const char *,const char *)
_fopen		proc far		; CODE XREF: sub_2A74+1FP
					; sub_1025C+7CP ...

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		sub	ax, ax
		push	ax		; int
		push	word ptr [bp+8]	; char *
		push	[bp+arg_0]	; char *
		call	__fsopen
		mov	sp, bp
		pop	bp
		retf
_fopen		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; size_t __cdecl fread(void *,size_t,size_t,FILE *)
_fread		proc far		; CODE XREF: sub_A100+40P sub_A100+61P ...

var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp
		mov	bp, sp
		sub	sp, 4
		push	si
		push	di
		mov	ax, [bp+8]
		mul	[bp+arg_4]
		mov	cx, ax
		jcxz	short loc_13CAD
		mov	[bp+var_2], ax
		mov	bx, [bp+arg_0]
		mov	si, [bp+arg_6]
		mov	di, 4766h
		mov	ax, si
		sub	ax, 46C6h
		add	di, ax
		test	byte ptr [si+6], 0Ch
		jnz	short loc_13C6E
		test	byte ptr [di], 1
		jz	short loc_13C73
loc_13C6E:				; CODE XREF: _fread+29j
		mov	ax, [di+2]
		jmp	short loc_13C76
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13C73:				; CODE XREF: _fread+2Ej
		mov	ax, 200h

loc_13C76:				; CODE XREF: _fread+33j
		mov	[bp+var_4], ax

loc_13C79:				; CODE XREF: _fread+73j
		test	byte ptr [si+6], 0Ch
		jnz	short loc_13C84
		test	byte ptr [di], 1
		jz	short loc_13CB3

loc_13C84:				; CODE XREF: _fread+3Fj
		mov	ax, [si+2]
		or	ax, ax
		jz	short loc_13CB3
		cmp	ax, cx
		jbe	short loc_13C91
		mov	ax, cx

loc_13C91:				; CODE XREF: _fread+4Fj
		push	ax
		push	bx		; size_t
		push	cx
		push	ax		; size_t
		push	word ptr [si]	; void *
		push	bx		; void *
		push	cs
		call	near ptr _memcpy_0
		add	sp, 6
		pop	cx
		pop	bx
		pop	ax
		sub	cx, ax
		sub	[si+2],	ax
		add	bx, ax
		add	[si], ax
		jmp	short loc_13CAF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13CAD:				; CODE XREF: _fread+10j
		jmp	short loc_13D1B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13CAF:				; CODE XREF: _fread+6Dj _fread+A5j ...
		jcxz	short loc_13D0A
		jmp	short loc_13C79
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13CB3:				; CODE XREF: _fread+44j _fread+4Bj
		cmp	cx, [bp+var_4]
		jb	short loc_13CE5
		xor	dx, dx
		mov	ax, cx
		div	[bp+var_4]
		mov	ax, cx
		sub	ax, dx
		push	bx
		push	cx		; unsigned int
		push	ax		; unsigned int
		push	bx		; void *
		xor	ax, ax
		mov	al, [si+7]
		push	ax		; int
		push	cs
		call	near ptr _read
		add	sp, 6
		pop	cx
		pop	bx
		or	ax, ax
		jz	short loc_13D00
		cmp	ax, 0FFFFh
		jz	short loc_13D06
		sub	cx, ax
		add	bx, ax
		jmp	short loc_13CAF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13CE5:				; CODE XREF: _fread+78j
		push	bx
		push	cx
		push	si		; FILE *
		push	cs
		call	near ptr __filbuf
		pop	cx
		pop	cx
		pop	bx
		cmp	ax, 0FFFFh
		jz	short loc_13D0A
		mov	[bx], al
		inc	bx
		dec	cx
		mov	ax, [di+2]
		mov	[bp+var_4], ax
		jmp	short loc_13CAF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13D00:				; CODE XREF: _fread+9Aj
		or	byte ptr [si+6], 10h
		jmp	short loc_13D0A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13D06:				; CODE XREF: _fread+9Fj
		or	byte ptr [si+6], 20h

loc_13D0A:				; CODE XREF: _fread:loc_13CAFj
					; _fread+B4j ...
		jcxz	short loc_13D18
		mov	ax, [bp+var_2]
		sub	ax, cx
		xor	dx, dx
		div	word ptr [bp+8]
		jmp	short loc_13D1B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13D18:				; CODE XREF: _fread:loc_13D0Aj
		mov	ax, [bp+arg_4]

loc_13D1B:				; CODE XREF: _fread:loc_13CADj
					; _fread+D8j
		pop	di
		pop	si
		mov	sp, bp
		pop	bp
		retf
_fread		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; size_t __cdecl fwrite(const void *,size_t,size_t,FILE	*)
_fwrite		proc far		; CODE XREF: sub_A240+40P sub_A240+67P

var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp
		mov	bp, sp
		sub	sp, 4
		push	si
		push	di
		mov	ax, [bp+arg_2]
		mul	[bp+arg_4]
		mov	cx, ax
		jcxz	short loc_13D91
		mov	[bp+var_2], ax
		mov	bx, [bp+arg_0]
		mov	si, [bp+arg_6]
		mov	di, 4766h

loc_13D40:
		mov	ax, si
		sub	ax, 46C6h
		add	di, ax
		test	byte ptr [si+6], 0Ch
		jnz	short loc_13D52
		test	byte ptr [di], 1
		jz	short loc_13D57

loc_13D52:				; CODE XREF: _fwrite+29j
		mov	ax, [di+2]
		jmp	short loc_13D5A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13D57:				; CODE XREF: _fwrite+2Ej
		mov	ax, 200h

loc_13D5A:				; CODE XREF: _fwrite+33j
		mov	[bp+var_4], ax

loc_13D5D:				; CODE XREF: _fwrite+74j
		test	byte ptr [si+6], 8
		jnz	short loc_13D68
		test	byte ptr [di], 1
		jz	short loc_13D9A

loc_13D68:				; CODE XREF: _fwrite+3Fj
		mov	ax, [si+2]
		or	ax, ax
		jz	short loc_13D9A
		cmp	ax, cx
		jbe	short loc_13D75
		mov	ax, cx

loc_13D75:				; CODE XREF: _fwrite+4Fj
		push	ax
		push	bx		; size_t
		push	cx
		push	ax		; size_t
		push	bx		; void *
		push	word ptr [si]	; void *
		push	cs
		call	near ptr _memcpy_0
		add	sp, 6
		pop	cx
		pop	bx
		pop	ax
		sub	cx, ax
		sub	[si+2],	ax
		add	bx, ax
		add	[si], ax
		jmp	short loc_13D94
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13D91:				; CODE XREF: _fwrite+10j
		jmp	loc_13E21
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13D94:				; CODE XREF: _fwrite+6Dj _fwrite+C3j ...
		or	cx, cx
		jnz	short loc_13D5D
		jmp	short loc_13E10
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13D9A:				; CODE XREF: _fwrite+44j _fwrite+4Bj
		cmp	cx, [bp+var_4]
		jb	short loc_13DE7
		test	byte ptr [si+6], 8
		jnz	short loc_13DAA
		test	byte ptr [di], 1
		jz	short loc_13DB8

loc_13DAA:				; CODE XREF: _fwrite+81j
		push	bx
		push	cx
		push	si		; FILE *
		push	cs
		call	near ptr _fflush
		pop	dx
		pop	cx
		pop	bx
		or	ax, ax
		jnz	short loc_13E10

loc_13DB8:				; CODE XREF: _fwrite+86j
		xor	dx, dx
		mov	ax, cx
		div	[bp+var_4]
		mov	ax, cx
		sub	ax, dx
		push	ax
		push	bx
		push	cx		; unsigned int
		push	ax		; unsigned int
		push	bx		; void *
		xor	ax, ax
		mov	al, [si+7]
		push	ax		; int
		push	cs

loc_13DCF:
		call	near ptr _write
		add	sp, 6
		pop	cx
		pop	bx
		pop	dx
		cmp	ax, 0FFFFh
		jz	short loc_13E0C
		sub	cx, ax
		cmp	ax, dx
		jnz	short loc_13E0C
		add	bx, ax
		jmp	short loc_13D94
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13DE7:				; CODE XREF: _fwrite+7Bj
		xor	ax, ax
		mov	al, [bx]
		push	bx
		push	cx
		push	si		; FILE *
		push	ax		; int
		push	cs
		call	near ptr __flsbuf
		add	sp, 4
		pop	cx
		pop	bx
		cmp	ax, 0FFFFh
		jz	short loc_13E10
		inc	bx
		dec	cx
		mov	ax, [di+2]
		or	ax, ax
		jnz	short loc_13E07
		inc	ax

loc_13E07:				; CODE XREF: _fwrite+E2j
		mov	[bp+var_4], ax
		jmp	short loc_13D94
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13E0C:				; CODE XREF: _fwrite+B9j _fwrite+BFj
		or	byte ptr [si+6], 20h

loc_13E10:				; CODE XREF: _fwrite+76j _fwrite+94j ...
		jcxz	short loc_13E1E
		mov	ax, [bp+var_2]
		sub	ax, cx
		xor	dx, dx
		div	[bp+arg_2]
		jmp	short loc_13E21
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_13E1E:				; CODE XREF: _fwrite:loc_13E10j
		mov	ax, [bp+arg_4]

loc_13E21:				; CODE XREF: _fwrite:loc_13D91j
					; _fwrite+FAj
		pop	di
		pop	si
		mov	sp, bp
		pop	bp
		retf
_fwrite		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int printf(const char	*,...)
_printf		proc far		; CODE XREF: sub_27DE+3P sub_27DE+EP ...

var_4		= word ptr -4
arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp
		mov	bp, sp
		sub	sp, 4
		push	di
		push	si
		mov	si, 46CEh
		push	si
		call	__stbuf
		add	sp, 2
		mov	di, ax
		lea	ax, [bp+arg_2]
		push	ax

loc_13E40:
		push	[bp+arg_0]
		mov	ax, 46CEh
		push	ax
		call	__output
		add	sp, 6
		mov	[bp+var_4], ax
		mov	ax, 46CEh
		push	ax		; FILE *
		push	di		; int
		call	__ftbuf
		add	sp, 4
		mov	ax, [bp+var_4]
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retf
_printf		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	strcat(char *,const char *)
_strcat		proc far		; CODE XREF: sub_842+6FP sub_8E2+3BP ...

arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp
		mov	bp, sp
		mov	dx, di
		mov	bx, si
		mov	ax, ds
		mov	es, ax
		mov	di, [bp+arg_0]
		xor	ax, ax
		mov	cx, 0FFFFh
		repne scasb
		lea	si, [di-1]
		mov	di, [bp+arg_2]
		mov	cx, 0FFFFh
		repne scasb
		not	cx
		sub	di, cx
		xchg	di, si
		mov	ax, [bp+arg_0]
		test	si, 1
		jz	short loc_13E97
		movsb
		dec	cx

loc_13E97:				; CODE XREF: _strcat+2Dj
		shr	cx, 1
		rep movsw
		adc	cx, cx
		rep movsb
		mov	si, bx
		mov	di, dx
		pop	bp
		retf
_strcat		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	strcpy(char *,const char *)
_strcpy		proc far		; CODE XREF: sub_56A+BEP sub_842+CP ...

arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp
		mov	bp, sp
		mov	dx, di
		mov	bx, si
		mov	si, [bp+arg_2]
		mov	di, si
		mov	ax, ds
		mov	es, ax
		xor	ax, ax
		mov	cx, 0FFFFh
		repne scasb
		not	cx

loc_13EBF:
		mov	di, [bp+arg_0]
		mov	ax, di
		test	al, 1
		jz	short loc_13ECA
		movsb
		dec	cx

loc_13ECA:				; CODE XREF: _strcpy+20j
		shr	cx, 1
		rep movsw
		adc	cx, cx
		rep movsb
		mov	si, bx
		mov	di, dx
		pop	bp
		retf
_strcpy		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl strcmp(const char	*,const	char *)
_strcmp		proc far		; CODE XREF: sub_6682+BCP sub_6682+CFP ...

arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp
		mov	bp, sp
		mov	dx, di
		mov	bx, si
		mov	ax, ds
		mov	es, ax
		mov	si, [bp+arg_0]
		mov	di, [bp+arg_2]
		xor	ax, ax
		mov	cx, 0FFFFh
		repne scasb
		not	cx
		sub	di, cx
		repe cmpsb
		jz	short loc_13EFD
		sbb	ax, ax
		sbb	ax, 0FFFFh

loc_13EFD:				; CODE XREF: _strcmp+1Ej
		mov	si, bx
		mov	di, dx
		pop	bp
		retf
_strcmp		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; size_t __cdecl strlen(const char *)
_strlen		proc far		; CODE XREF: sub_33DE+12P sub_51F2+56P ...

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		mov	dx, di
		mov	ax, ds
		mov	es, ax
		mov	di, [bp+arg_0]
		xor	ax, ax
		mov	cx, 0FFFFh
		repne scasb
		not	cx
		dec	cx
		xchg	ax, cx
		mov	di, dx
		pop	bp
		retf
_strlen		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	strncat(char *,const char *,size_t)
_strncat	proc far		; CODE XREF: sub_DDB8+AAP

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		push	bp
		mov	bp, sp
		push	di
		push	si
		push	ds
		pop	es
		mov	di, [bp+arg_0]
		mov	dx, di
		xor	ax, ax
		mov	cx, 0FFFFh
		repne scasb
		dec	di
		mov	si, di
		mov	di, [bp+arg_2]
		mov	bx, di
		mov	cx, [bp+arg_4]
		repne scasb
		jnz	short loc_13F43
		inc	cx

loc_13F43:				; CODE XREF: _strncat+20j
		sub	cx, [bp+arg_4]
		neg	cx
		mov	di, si
		mov	si, bx
		rep movsb
		stosb

loc_13F4F:
		mov	ax, dx
		pop	si
		pop	di
		pop	bp
		retf
_strncat	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	strncpy(char *,const char *,size_t)
_strncpy	proc far		; CODE XREF: sub_D43A+5FP

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		push	bp
		mov	bp, sp
		push	di
		push	si
		push	ds
		pop	es
		mov	di, [bp+arg_0]
		mov	si, [bp+arg_2]
		mov	bx, di
		mov	cx, [bp+arg_4]
		jcxz	short loc_13F76

loc_13F6A:				; CODE XREF: _strncpy+1Aj
		lodsb
		or	al, al
		jz	short loc_13F72
		stosb
		loop	loc_13F6A

loc_13F72:				; CODE XREF: _strncpy+17j		xor	al, al
		rep stosb

loc_13F76:				; CODE XREF: _strncpy+12j
		mov	ax, bx
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retf
_strncpy	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl strncmp(const char *,const char *,size_t)
_strncmp	proc far		; CODE XREF: sub_647A+94P sub_647A+ECP ...

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		push	bp
		mov	bp, sp
		push	di
		push	si
		push	ds
		pop	es
		mov	cx, [bp+arg_4]
		jcxz	short loc_13FB0
		mov	bx, cx
		mov	di, [bp+arg_0]
		mov	si, di
		xor	ax, ax
		repne scasb
		neg	cx
		add	cx, bx
		mov	di, si
		mov	si, [bp+arg_2]
		repe cmpsb
		mov	al, [si-1]
		xor	cx, cx
		cmp	al, [di-1]
		ja	short loc_13FAE
		jz	short loc_13FB0
		dec	cx
		dec	cx

loc_13FAE:				; CODE XREF: _strncmp+2Aj
		not	cx

loc_13FB0:				; CODE XREF: _strncmp+Aj _strncmp+2Cj
		mov	ax, cx
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retf
_strncmp	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: thunk

sub_13FB8	proc far		; CODE XREF: sub_647A+62P sub_647A+ADP ...
		jmp	near ptr sub_156F6
sub_13FB8	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	itoa(int,char *,int)
_itoa		proc far		; CODE XREF: sub_647A+1C6P
					; seg005:386AP	...

arg_2		= word ptr  6
arg_4		= word ptr  8
arg_6		= word ptr  0Ah

; FUNCTION CHUNK AT 2164 SIZE 00000053 BYTES

		push	bp
		mov	bp, sp
		push	si
		push	di
		mov	bl, 1
		mov	cx, [bp+arg_6]
		mov	ax, [bp+arg_2]
		xor	dx, dx
		cmp	cx, 0Ah
		jnz	short loc_13FD1
		cwd

loc_13FD1:				; CODE XREF: _itoa+12j
		mov	di, [bp+arg_4]
		jmp	__cxtoa
_itoa		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	ltoa(__int32,char *,int)
_ltoa		proc near		; CODE XREF: sub_647A+C5P
					; sub_647A+11DP ...

arg_2		= word ptr  6
arg_4		= word ptr  8
arg_6		= word ptr  0Ah
arg_8		= word ptr  0Ch

; FUNCTION CHUNK AT 2158 SIZE 0000000C BYTES

		push	bp
		mov	bp, sp
		push	si
		push	di
		mov	bl, 1
		jmp	__cltoasub
_ltoa		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl fgetpos(FILE *,fpos_t *)
_fgetpos	proc far		; CODE XREF: sub_DDB8+314P
					; sub_DDB8+7B8P ...

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		push	[bp+arg_0]	; FILE *
		call	_ftell
		mov	sp, bp
		mov	bx, [bp+8]
		mov	[bx], ax
		mov	[bx+2],	dx
		cmp	ax, 0FFFFh
		jnz	short loc_14000
		cmp	dx, ax
		jz	short loc_14004

loc_14000:				; CODE XREF: _fgetpos+18j
		sub	ax, ax
		jmp	short loc_14007
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14004:				; CODE XREF: _fgetpos+1Cj
		mov	ax, 0FFFFh

loc_14007:				; CODE XREF: _fgetpos+20j
		pop	bp
		retf
_fgetpos	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	fgets(char *,int,FILE *)
_fgets		proc far		; CODE XREF: sub_843A+88P sub_8526+CP	...

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
		push	bp
		mov	bp, sp
		push	si	
		push	di
		mov	dx, [bp+arg_2]
		or	dx, dx
		jle	short loc_1406A
		dec	dx
		mov	bx, [bp+arg_4]
		push	ds
		pop	es
		mov	di, [bp+arg_0]

loc_1401F:				; CODE XREF: _fgets+3Aj _fgets+53j
		or	dx, dx
		jz	short loc_14073
		mov	cx, [bx+2]
		jcxz	short loc_14046
		cmp	cx, dx
		jbe	short loc_1402E
		mov	cx, dx

loc_1402E:				; CODE XREF: _fgets+20j
		mov	si, [bx]
		mov	ah, 0Ah
		push	cx
		nop

loc_14034:				; CODE XREF: _fgets+2Ej
		lodsb
		stosb
		cmp	al, ah
		loopne	loc_14034
		pop	ax
		mov	[bx], si
		jz	short loc_1406E
		sub	[bx+2],	ax
		sub	dx, ax
		jmp	short loc_1401F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14046:				; CODE XREF: _fgets+1Cj
		push	es
		push	bx
		push	dx
		push	bx		; FILE *
		push	cs
		call	near ptr __filbuf
		pop	dx
		pop	dx

loc_14050:
		pop	bx
		pop	es
		assume es:nothing
		cmp	ax, 0FFFFh
		jz	short loc_1405F
		stosb
		cmp	al, 0Ah
		jz	short loc_14073
		dec	dx
		jmp	short loc_1401F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1405F:				; CODE XREF: _fgets+4Bj
		cmp	di, [bp+arg_0]
		jz	short loc_1406A
		test	byte ptr [bx+6], 20h
		jz	short loc_14073

loc_1406A:				; CODE XREF: _fgets+Aj	_fgets+58j
		xor	ax, ax
		jmp	short loc_14079
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1406E:				; CODE XREF: _fgets+33j
		sub	ax, cx
		sub	[bx+2],	ax

loc_14073:				; CODE XREF: _fgets+17j _fgets+50j ...
		xor	ax, ax
		stosb
		mov	ax, [bp+arg_0]

loc_14079:				; CODE XREF: _fgets+62j
		pop	di
		pop	si
		pop	bp
		retf
_fgets		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl fseek(FILE *,__int32,int)
_fseek		proc far		; CODE XREF: sub_DDB8+346P
					; sub_12582+1E8P ...

arg_0		= word ptr  6
arg_2		= dword	ptr  8
arg_6		= word ptr  0Ch

		push	bp
		mov	bp, sp
		push	si
		mov	si, [bp+arg_0]
		test	byte ptr [si+6], 83h
		jz	short loc_14097
		cmp	[bp+arg_6], 2
		jg	short loc_14097
		cmp	[bp+arg_6], 0
		jge	short loc_140A0

loc_14097:				; CODE XREF: _fseek+Bj	_fseek+11j
		mov	word_1A3D8, 16h
		jmp	short loc_140F1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_140A0:				; CODE XREF: _fseek+17j
		and	byte ptr [si+6], 0EFh
		cmp	[bp+arg_6], 1
		jnz	short loc_140BE
		push	si		; FILE *
		call	_ftell
		add	sp, 2
		add	word ptr [bp+arg_2], ax
		adc	word ptr [bp+arg_2+2], dx
		mov	[bp+arg_6], 0

loc_140BE:				; CODE XREF: _fseek+2Aj
		push	si		; FILE *
		call	_fflush
		add	sp, 2
		test	byte ptr [si+6], 80h
		jz	short loc_140D1
		and	byte ptr [si+6], 0FCh

loc_140D1:				; CODE XREF: _fseek+4Dj
		push	[bp+arg_6]	; int
		push	word ptr [bp+arg_2+2]
		push	word ptr [bp+arg_2] ; __int32
		mov	al, [si+7]
		sub	ah, ah
		push	ax		; int
		call	_lseek
		add	sp, 8
		cmp	ax, 0FFFFh
		jnz	short loc_140F6
		cmp	dx, ax
		jnz	short loc_140F6

loc_140F1:				; CODE XREF: _fseek+1Fj
		mov	ax, 0FFFFh
		jmp	short loc_140F8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_140F6:				; CODE XREF: _fseek+6Dj _fseek+71j
		sub	ax, ax

loc_140F8:				; CODE XREF: _fseek+76j
		pop	si
		mov	sp, bp
		pop	bp
		retf
_fseek		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl fsetpos(FILE *,const fpos_t *)
_fsetpos	proc far		; CODE XREF: sub_121A0+258P

arg_0		= word ptr  6

		push	bp		; int
		mov	bp, sp
		sub	ax, ax
		push	ax		; int
		mov	bx, [bp+8]
		push	word ptr [bx+2]	; __int32
		push	word ptr [bx]	; __int32
		push	[bp+arg_0]	; FILE *
		call	_fseek
		mov	sp, bp
		pop	bp
		retf
_fsetpos	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; void __cdecl rewind(FILE *)
_rewind		proc far		; CODE XREF: sub_124EE+29P

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		push	di
		push	si
		mov	si, [bp+arg_0]
		mov	al, [si+7]
		sub	ah, ah
		mov	di, ax
		push	si		; FILE *
		call	_fflush
		add	sp, 2
		and	byte ptr [di+4577h], 0FDh
		and	byte ptr [si+6], 0CFh
		test	byte ptr [si+6], 80h
		jz	short loc_14147
		mov	al, [si+6]
		and	al, 0FCh
		mov	[si+6],	al

loc_14147:				; CODE XREF: _rewind+25j
		sub	ax, ax
		push	ax		; int
		push	ax
		push	ax		; __int32
		push	di		; int
		call	_lseek
		add	sp, 8
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retf
_rewind		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; void __cdecl setbuf(FILE *,char *)
_setbuf		proc far		; CODE XREF: sub_BCA0+B8P sub_BEA8+2CP

arg_0		= word ptr  6

		push	bp		; int
		mov	bp, sp
		cmp	word ptr [bp+8], 0
		jnz	short loc_14172
		sub	ax, ax
		push	ax
		mov	ax, 4
		push	ax
		sub	ax, ax
		push	ax
		jmp	short loc_1417C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_14172:				; CODE XREF: _setbuf+7j
		mov	ax, 200h
		push	ax		; size_t
		sub	ax, ax
		push	ax		; int
		push	word ptr [bp+8]	; char *

loc_1417C:				; CODE XREF: _setbuf+13j
		push	[bp+arg_0]	; FILE *
		call	_setvbuf
		mov	sp, bp
		pop	bp
		retf
_setbuf		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int sprintf(char *,const char	*,...)
_sprintf	proc far		; CODE XREF: sub_94E+26P sub_94E+5DP ...

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		push	bp
		mov	bp, sp
		sub	sp, 2
		push	di
		push	si
		mov	byte_1A820, 42h	; 'B'
		mov	ax, [bp+arg_0]
		mov	word_1A81E, ax
		mov	si, 49AAh
		mov	[si], ax
		mov	word_1A81C, 7FFFh
		lea	ax, [bp+arg_4]
		push	ax
		push	[bp+arg_2]
		mov	ax, si
		push	ax
		call	__output
		add	sp, 6
		mov	di, ax
		dec	word_1A81C
		js	short loc_141CE
		mov	bx, word_1A81A
		inc	word_1A81A
		mov	byte ptr [bx], 0
		jmp	short loc_141DA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_141CE:				; CODE XREF: _sprintf+36j
		push	si		; FILE *
		sub	ax, ax
		push	ax		; int
		call	__flsbuf
		add	sp, 4

loc_141DA:				; CODE XREF: _sprintf+43j
		mov	ax, di
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retf
_sprintf	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; __int32 __cdecl filelength(int)
_filelength	proc far		; CODE XREF: seg001:0138P

var_8		= dword	ptr -8
var_4		= word ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		sub	sp, 8
		push	si
		mov	si, [bp+arg_0]
		or	si, si
		jl	short loc_141F6
		cmp	word_1A3E5, si
		jg	short loc_14202

loc_141F6:				; CODE XREF: _filelength+Cj
		mov	word_1A3D8, 9
		mov	ax, 0FFFFh
		cwd
		jmp	short loc_14263
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14202:				; CODE XREF: _filelength+12j
		mov	ax, 1
		push	ax		; int
		sub	ax, ax
		push	ax
		push	ax		; __int32
		push	si		; int
		call	_lseek
		add	sp, 8
		mov	word ptr [bp+var_8], ax
		mov	word ptr [bp+var_8+2], dx
		cmp	ax, 0FFFFh
		jnz	short loc_1422A
		cmp	dx, ax
		jnz	short loc_1422A
		mov	[bp+var_4], ax
		mov	[bp+var_2], ax
		jmp	short loc_1425D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1422A:				; CODE XREF: _filelength+3Aj
					; _filelength+3Ej
		mov	ax, 2
		push	ax		; int
		sub	ax, ax
		push	ax
		push	ax		; __int32
		push	si		; int
		call	_lseek
		add	sp, 8
		mov	[bp+var_4], ax
		mov	[bp+var_2], dx
		cmp	ax, word ptr [bp+var_8]
		jnz	short loc_1424B
		cmp	dx, word ptr [bp+var_8+2]
		jz	short loc_1425D

loc_1424B:				; CODE XREF: _filelength+62j
		sub	ax, ax
		push	ax		; int
		push	word ptr [bp+var_8+2]
		push	word ptr [bp+var_8] ; __int32
		push	si		; int
		call	_lseek
		add	sp, 8

loc_1425D:				; CODE XREF: _filelength+46j
					; _filelength+67j
		mov	ax, [bp+var_4]
		mov	dx, [bp+var_2]

loc_14263:				; CODE XREF: _filelength+1Ej
		pop	si
		mov	sp, bp
		pop	bp
		retf
_filelength	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	strchr(const char *,int)
_strchr		proc far		; CODE XREF: _main+34P	sub_3864+28P ...

arg_0		= word ptr  6
arg_2		= byte ptr  8

		push	bp
		mov	bp, sp
		push	di
		mov	di, [bp+arg_0]
		push	ds
		pop	es
		assume es:dseg
		mov	bx, di
		xor	ax, ax
		mov	cx, 0FFFFh
		repne scasb
		inc	cx
		neg	cx
		mov	al, [bp+arg_2]
		mov	di, bx
		repne scasb
		dec	di
		cmp	[di], al
		jz	short loc_1428B
		xor	di, di

loc_1428B:				; CODE XREF: _strchr+1Fj
		mov	ax, di
		pop	di
		mov	sp, bp
		pop	bp
		retf
_strchr		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl strnicmp(const char *,const char *,size_t)
_strnicmp	proc far		; CODE XREF: sub_647A+4FP
					; sub_6682+215P

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		push	bp
		mov	bp, sp
		push	di
		push	si
		mov	si, [bp+arg_0]
		mov	di, [bp+arg_2]
		push	ds
		pop	es
		mov	cx, [bp+arg_4]
		jcxz	short loc_142E1
		mov	bh, 41h	; 'A'
		mov	bl, 5Ah	; 'Z'
		mov	dh, 20h	; ' '

loc_142AA:				; CODE XREF: _strnicmp+3Ej
		mov	ah, [si]
		mov	al, [di]
		or	ah, ah
		jz	short loc_142D2
		or	al, al
		jz	short loc_142D2
		inc	si
		inc	di
		cmp	ah, bh
		jb	short loc_142C2
		cmp	ah, bl
		ja	short loc_142C2
		add	ah, dh

loc_142C2:				; CODE XREF: _strnicmp+28j
					; _strnicmp+2Cj
		cmp	al, bh
		jb	short loc_142CC
		cmp	al, bl
		ja	short loc_142CC
		add	al, dh

loc_142CC:				; CODE XREF: _strnicmp+32j
					; _strnicmp+36j
		cmp	ah, al
		jnz	short loc_142D8
		loop	loc_142AA

loc_142D2:				; CODE XREF: _strnicmp+1Ej
					; _strnicmp+22j
		xor	cx, cx
		cmp	ah, al
		jz	short loc_142E1

loc_142D8:				; CODE XREF: _strnicmp+3Cj
		mov	cx, 0
		jb	short loc_142DF
		dec	cx
		dec	cx

loc_142DF:				; CODE XREF: _strnicmp+49j
		not	cx

loc_142E1:				; CODE XREF: _strnicmp+10j					; _strnicmp+44j
		mov	ax, cx
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retf
_strnicmp	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	strlwr(char *)
_strlwr		proc far		; CODE XREF: sub_121A0+38P

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		mov	bx, [bp+arg_0]
		mov	dx, bx
		jmp	short loc_142FF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_142F4:				; CODE XREF: _strlwr+19j
		sub	al, 41h	; 'A'
		cmp	al, 1Ah
		jnb	short loc_142FE
		add	al, 61h	; 'a'
		mov	[bx], al

loc_142FE:				; CODE XREF: _strlwr+Ej
		inc	bx

loc_142FF:				; CODE XREF: _strlwr+8j
		mov	al, [bx]
		or	al, al
		jnz	short loc_142F4
		xchg	ax, dx
		pop	bp
		retf
_strlwr		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
; Attributes: library function bp-based	frame

; char *__cdecl	strupr(char *)
_strupr		proc far		; CODE XREF: sub_17E0+DDP
					; sub_17E0+155P ...

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		mov	bx, [bp+arg_0]
		mov	dx, bx
		jmp	short loc_1431D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14312:				; CODE XREF: _strupr+19j
		sub	al, 61h	; 'a'
		cmp	al, 1Ah
		jnb	short loc_1431C
		add	al, 41h	; 'A'
		mov	[bx], al

loc_1431C:				; CODE XREF: _strupr+Ej
		inc	bx

loc_1431D:				; CODE XREF: _strupr+8j
		mov	al, [bx]
		or	al, al
		jnz	short loc_14312
		xchg	ax, dx
		pop	bp
		retf
_strupr		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl remove(const char	*)
_remove		proc far		; CODE XREF: sub_1033A+91P _fclose+9FP

arg_2		= word ptr  6

; FUNCTION CHUNK AT 1238 SIZE 00000008 BYTES
; FUNCTION CHUNK AT 124F SIZE 0000000B BYTES

		push	bp
		mov	bp, sp
		mov	dx, [bp+arg_2]
		mov	ah, 41h
		int	21h		; DOS -	2+ - DELETE A FILE (UNLINK)
					; DS:DX	-> ASCIZ pathname of file to delete (no	wildcards allowed)
		jmp	__dosret0
_remove		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; unsigned int __cdecl _dos_findnext(struct _find_t *)
__dos_findnext	proc far		; CODE XREF: sub_56A+39P sub_56A+CAP

arg_2		= word ptr  6

		push	bp
		mov	bp, sp
		push	ds
		mov	al, 4Fh	; 'O'
		mov	dx, [bp+arg_2]
		jmp	short loc_14348
__dos_findnext	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; unsigned int __cdecl _dos_findfirst(const char *,unsigned int,struct _find_t *)
__dos_findfirst	proc far		; CODE XREF: sub_56A+25P sub_56A+86P

arg_2		= word ptr  6
arg_4		= word ptr  8
arg_6		= word ptr  0Ah

; FUNCTION CHUNK AT 1240 SIZE 0000000D BYTES

		push	bp
		mov	bp, sp
		push	ds
		mov	al, 4Eh	; 'N'
		mov	dx, [bp+arg_6]

loc_14348:				; CODE XREF: __dos_findnext+9j
		mov	ah, 2Fh
		int	21h		; DOS -	GET DISK TRANSFER AREA ADDRESS
					; Return: ES:BX	-> DTA
		mov	ah, 1Ah
		int	21h		; DOS -	SET DISK TRANSFER AREA ADDRESS
					; DS:DX	-> disk	transfer buffer
		cmp	al, 4Eh	; 'N'
		jnz	short loc_1435A
		mov	dx, [bp+arg_2]
		mov	cx, [bp+arg_4]

loc_1435A:				; CODE XREF: __dos_findfirst+13j
		mov	ah, al
		int	21h		; DOS -	2+ - FIND FIRST	ASCIZ (FINDFIRST)
					; CX = search attributes
					; DS:DX	-> ASCIZ filespec
					; (drive, path,	and wildcards allowed)
		push	ax
		lahf
		push	ax
		mov	dx, es
		mov	ds, dx
		mov	dx, bx
		mov	ah, 1Ah
		int	21h		; DOS -	SET DISK TRANSFER AREA ADDRESS
					; DS:DX	-> disk	transfer buffer
		pop	ax
		sahf
		pop	ax
		pop	ds
		jmp	__dosreturn
__dos_findfirst	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; unsigned int __cdecl _dos_read(int,void far *,unsigned int,unsigned int *)
__dos_read	proc far		; CODE XREF: sub_BCA0+108P
		push	bp
		mov	bp, sp
		mov	ah, 3Fh	; '?'
		jmp	short loc_1437E
__dos_read	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; unsigned int __cdecl _dos_write(int,const void far *,unsigned	int,unsigned int *)
__dos_write	proc far		; CODE XREF: sub_BEA8+98P

arg_2		= word ptr  6
arg_4		= dword	ptr  8
arg_8		= word ptr  0Ch
arg_A		= word ptr  0Eh

		push	bp
		mov	bp, sp
		mov	ah, 40h	; '@'

loc_1437E:				; CODE XREF: __dos_read+5j
		mov	bx, [bp+arg_2]
		mov	cx, [bp+arg_8]
		cmp	word_1A706, 0D6D6h
		jnz	short loc_14390
		call	off_1A708

loc_14390:				; CODE XREF: __dos_write+11j
		push	ds
		lds	dx, [bp+arg_4]
		int	21h		; DOS -
		pop	ds
		jb	short loc_1439E
		mov	bx, [bp+arg_A]
		mov	[bx], ax

loc_1439E:				; CODE XREF: __dos_write+1Ej
		jmp	__dosreturn
__dos_write	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

__aFldiv	proc far		; CODE XREF: sub_BCA0:loc_BE9CP
					; sub_BEA8+FCP	...

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp
		mov	bp, sp
		push	di
		push	si
		push	bx
		xor	di, di
		mov	ax, [bp+arg_2]
		or	ax, ax
		jge	short loc_143C2
		inc	di
		mov	dx, [bp+arg_0]
		neg	ax
		neg	dx
		sbb	ax, 0
		mov	[bp+arg_2], ax
		mov	[bp+arg_0], dx

loc_143C2:				; CODE XREF: __aFldiv+Dj
		mov	ax, [bp+arg_6]
		or	ax, ax
		jge	short loc_143DA
		inc	di
		mov	dx, [bp+arg_4]
		neg	ax
		neg	dx
		sbb	ax, 0
		mov	[bp+arg_6], ax
		mov	[bp+arg_4], dx

loc_143DA:				; CODE XREF: __aFldiv+25j
		or	ax, ax
		jnz	short loc_143F3
		mov	cx, [bp+arg_4]
		mov	ax, [bp+arg_2]
		xor	dx, dx
		div	cx
		mov	bx, ax
		mov	ax, [bp+arg_0]
		div	cx
		mov	dx, bx
		jmp	short loc_1442B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_143F3:				; CODE XREF: __aFldiv+3Aj
		mov	bx, ax
		mov	cx, [bp+arg_4]
		mov	dx, [bp+arg_2]
		mov	ax, [bp+arg_0]

loc_143FE:				; CODE XREF: __aFldiv+66j
		shr	bx, 1
		rcr	cx, 1
		shr	dx, 1
		rcr	ax, 1
		or	bx, bx
		jnz	short loc_143FE
		div	cx
		mov	si, ax
		mul	[bp+arg_6]
		xchg	ax, cx
		mov	ax, [bp+arg_4]
		mul	si
		add	dx, cx
		jb	short loc_14427
		cmp	dx, [bp+arg_2]
		ja	short loc_14427
		jb	short loc_14428
		cmp	ax, [bp+arg_0]
		jbe	short loc_14428

loc_14427:				; CODE XREF: __aFldiv+77j __aFldiv+7Cj
		dec	si

loc_14428:				; CODE XREF: __aFldiv+7Ej __aFldiv+83j
		xor	dx, dx
		xchg	ax, si

loc_1442B:				; CODE XREF: __aFldiv+4Fj
		dec	di
		jnz	short loc_14435
		neg	dx
		neg	ax
		sbb	dx, 0

loc_14435:				; CODE XREF: __aFldiv+8Aj
		pop	bx
		pop	si
		pop	di
		pop	bp
		retf	8
__aFldiv	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

__aFlmul	proc far		; CODE XREF: sub_BCA0+41P sub_BEA8+54P ...

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp
		mov	bp, sp
		mov	ax, [bp+arg_2]
		mov	cx, [bp+arg_6]
		or	cx, ax
		mov	cx, [bp+arg_4]
		jnz	short loc_14455
		mov	ax, [bp+arg_0]
		mul	cx
		pop	bp
		retf	8
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14455:				; CODE XREF: __aFlmul+Ej
		push	bx
		mul	cx
		mov	bx, ax
		mov	ax, [bp+arg_0]
		mul	[bp+arg_6]
		add	bx, ax
		mov	ax, [bp+arg_0]
		mul	cx
		add	dx, bx
		pop	bx
		pop	bp
		retf	8
__aFlmul	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl memcmp(const void	*,const	void *,size_t)
_memcmp		proc far		; CODE XREF: sub_DDB8+558P

arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah
arg_8		= word ptr  0Eh

		push	bp
		mov	bp, sp
		xor	ax, ax
		mov	cx, [bp+arg_8]
		jcxz	short loc_144C7
		push	ds
		push	di
		push	si
		lds	si, [bp+arg_0]
		les	di, [bp+arg_4]
		assume es:nothing

loc_14481:				; CODE XREF: _memcmp+46j _memcmp+4Fj
		mov	ax, cx
		dec	ax
		mov	dx, di
		not	dx
		sub	ax, dx
		sbb	bx, bx
		and	ax, bx
		add	ax, dx
		mov	dx, si
		not	dx
		sub	ax, dx
		sbb	bx, bx
		and	ax, bx
		add	ax, dx
		inc	ax
		xchg	ax, cx
		sub	ax, cx
		repe cmpsb
		jnz	short loc_144BF
		xchg	ax, cx
		jcxz	short loc_144C4
		or	si, si
		jnz	short loc_144B2
		mov	ax, ds
		add	ax, 1000h
		mov	ds, ax
		assume ds:nothing

loc_144B2:				; CODE XREF: _memcmp+3Bj
		or	di, di
		jnz	short loc_14481
		mov	ax, es
		add	ax, 1000h
		mov	es, ax
		assume es:nothing
		jmp	short loc_14481
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_144BF:				; CODE XREF: _memcmp+34j
		sbb	ax, ax
		sbb	ax, 0FFFFh

loc_144C4:				; CODE XREF: _memcmp+37j
		pop	si
		pop	di
		pop	ds
		assume ds:dseg

loc_144C7:				; CODE XREF: _memcmp+8j
		pop	bp
		retf
_memcmp		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; void *__cdecl	memcpy(void *,const void *,size_t)
_memcpy		proc far		; CODE XREF: sub_750+21P sub_77E+21P ...

arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah
arg_8		= word ptr  0Eh

		push	bp
		mov	bp, sp
		mov	cx, [bp+arg_8]
		push	ds
		push	di
		push	si
		jcxz	short loc_1451D
		lds	si, [bp+arg_4]
		les	di, [bp+arg_0]
		assume es:nothing

loc_144DB:				; CODE XREF: _memcpy+48j _memcpy+51j
		mov	ax, cx
		dec	ax
		mov	dx, di
		not	dx
		sub	ax, dx
		sbb	bx, bx
		and	ax, bx
		add	ax, dx
		mov	dx, si
		not	dx
		sub	ax, dx
		sbb	bx, bx
		and	ax, bx
		add	ax, dx
		inc	ax
		xchg	ax, cx
		sub	ax, cx
		shr	cx, 1
		rep movsw
		adc	cx, cx
		rep movsb
		xchg	ax, cx
		jcxz	short loc_1451D
		or	si, si
		jnz	short loc_14510
		mov	ax, ds
		add	ax, 1000h
		mov	ds, ax
		assume ds:nothing

loc_14510:				; CODE XREF: _memcpy+3Dj
		or	di, di
		jnz	short loc_144DB
		mov	ax, es
		add	ax, 1000h
		mov	es, ax
		assume es:nothing
		jmp	short loc_144DB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1451D:				; CODE XREF: _memcpy+9j _memcpy+39j
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		pop	si
		pop	di
		pop	ds
		assume ds:dseg
		pop	bp
		retf
_memcpy		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	strchr_0(const char *,int)
_strchr_0	proc far		; CODE XREF: sub_3A20+27P
					; sub_3DDE+1B2P ...

arg_0		= dword	ptr  6
arg_4		= byte ptr  0Ah

		push	bp
		mov	bp, sp
		push	di
		les	di, [bp+arg_0]
		assume es:nothing
		mov	bx, di
		xor	ax, ax
		mov	cx, 0FFFFh
		repne scasb
		inc	cx
		neg	cx
		mov	al, [bp+arg_4]
		mov	di, bx
		repne scasb
		dec	di
		cmp	es:[di], al
		jz	short loc_1454C
		xor	di, di
		mov	es, di
		assume es:seg000

loc_1454C:				; CODE XREF: _strchr_0+1Ej
		mov	ax, di
		mov	dx, es
		pop	di
		mov	sp, bp
		pop	bp
		retf
_strchr_0	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl stricmp(const char *,const char *)
_stricmp	proc far		; CODE XREF: sub_1345A+E3P

arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah

		push	bp
		mov	bp, sp
		mov	dx, si
		push	ds
		lds	si, [bp+arg_4]
		les	bx, [bp+arg_0]
		assume es:nothing
		mov	al, 0FFh

loc_14564:				; CODE XREF: _stricmp+19j _stricmp+39j
		or	al, al
		jz	short loc_14595
		lodsb
		mov	ah, es:[bx]
		inc	bx
		cmp	ah, al
		jz	short loc_14564
		sub	al, 41h	; 'A'
		cmp	al, 1Ah
		sbb	cl, cl
		and	cl, 20h
		add	al, cl
		add	al, 41h	; 'A'
		xchg	ah, al
		sub	al, 41h	; 'A'
		cmp	al, 1Ah
		sbb	cl, cl
		and	cl, 20h
		add	al, cl
		add	al, 41h	; 'A'
		cmp	al, ah
		jz	short loc_14564
		sbb	al, al
		sbb	al, 0FFh

loc_14595:				; CODE XREF: _stricmp+10j
		cbw
		pop	ds
		mov	si, dx
		pop	bp
		retf
_stricmp	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl strncmp_0(const char *,const char	*,size_t)
_strncmp_0	proc far		; CODE XREF: sub_121A0+202P

arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah
arg_8		= word ptr  0Eh

		push	bp
		mov	bp, sp
		push	di
		push	si
		push	ds
		mov	cx, [bp+arg_8]
		jcxz	short loc_145CE
		mov	bx, cx
		les	di, [bp+arg_0]
		mov	si, di
		xor	ax, ax
		repne scasb
		neg	cx
		add	cx, bx
		mov	di, si
		lds	si, [bp+arg_4]
		repe cmpsb
		mov	al, [si-1]
		xor	cx, cx
		cmp	al, es:[di-1]
		ja	short loc_145CC
		jz	short loc_145CE
		dec	cx
		dec	cx

loc_145CC:				; CODE XREF: _strncmp_0+2Aj
		not	cx

loc_145CE:				; CODE XREF: _strncmp_0+9j
					; _strncmp_0+2Cj
		mov	ax, cx
		pop	ds
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retf
_strncmp_0	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	strncpy_0(char *,const char *,size_t)
_strncpy_0	proc far		; CODE XREF: sub_4122+18CP
					; sub_121A0+20P

arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah
arg_8		= word ptr  0Eh

		push	bp
		mov	bp, sp
		push	di
		push	si
		push	ds
		les	di, [bp+arg_0]
		lds	si, [bp+arg_4]
		mov	bx, di
		mov	cx, [bp+arg_8]
		jcxz	short loc_145F7

loc_145EB:				; CODE XREF: _strncpy_0+19j
		lodsb
		or	al, al
		jz	short loc_145F3
		stosb
		loop	loc_145EB

loc_145F3:				; CODE XREF: _strncpy_0+16j
		xor	al, al
		rep stosb

loc_145F7:				; CODE XREF: _strncpy_0+11j
		mov	ax, bx
		mov	dx, es
		pop	ds
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retf
_strncpy_0	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	strrchr(const char *,int)
_strrchr	proc far		; CODE XREF: sub_3A20+11P sub_6FB6+13P ...

arg_0		= dword	ptr  6
arg_4		= byte ptr  0Ah

		push	bp
		mov	bp, sp
		push	di
		les	di, [bp+arg_0]
		xor	ax, ax
		mov	cx, 0FFFFh
		repne scasb
		inc	cx
		neg	cx
		dec	di
		mov	al, [bp+arg_4]
		std
		repne scasb
		inc	di
		cmp	es:[di], al
		jz	short loc_14626
		xor	ax, ax
		mov	dx, ax
		jmp	short loc_1462A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14626:				; CODE XREF: _strrchr+1Cj
		mov	ax, di
		mov	dx, es

loc_1462A:				; CODE XREF: _strrchr+22j
		cld
		pop	di
		mov	sp, bp
		pop	bp
		retf
_strrchr	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	strupr_0(char *)
_strupr_0	proc far		; CODE XREF: sub_C04E+40P sub_C09C+69P ...

arg_0		= dword	ptr  6

		push	bp
		mov	bp, sp
		mov	cx, ds
		lds	bx, [bp+arg_0]
		mov	dx, bx
		jmp	short loc_14647
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1463C:				; CODE XREF: _strupr_0+1Bj
		sub	al, 61h	; 'a'
		cmp	al, 1Ah
		jnb	short loc_14646
		add	al, 41h	; 'A'
		mov	[bx], al

loc_14646:				; CODE XREF: _strupr_0+10j
		inc	bx

loc_14647:				; CODE XREF: _strupr_0+Aj
		mov	al, [bx]
		or	al, al
		jnz	short loc_1463C
		xchg	ax, dx
		mov	dx, ds
		mov	ds, cx
		pop	bp
		retf
_strupr_0	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; size_t __cdecl strlen_0(const	char *)
_strlen_0	proc far		; CODE XREF: sub_297C+3DP sub_297C+50P ...

arg_0		= dword	ptr  6

		push	bp
		mov	bp, sp
		mov	dx, di
		les	di, [bp+arg_0]
		xor	ax, ax
		mov	cx, 0FFFFh
		repne scasb
		not	cx
		dec	cx
		xchg	ax, cx
		mov	di, dx
		pop	bp
		retf
_strlen_0	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	strcpy_0(char *,const char *)
_strcpy_0	proc far		; CODE XREF: sub_2A2A+24P sub_3376+23P ...

arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah

		push	bp
		mov	bp, sp
		mov	dx, di
		mov	bx, si
		push	ds
		lds	si, [bp+arg_4]
		mov	di, si
		mov	ax, ds
		mov	es, ax
		assume es:dseg
		xor	ax, ax
		mov	cx, 0FFFFh
		repne scasb
		not	cx
		les	di, [bp+arg_0]
		assume es:nothing
		mov	ax, di
		test	al, 1
		jz	short loc_14691
		movsb
		dec	cx

loc_14691:				; CODE XREF: _strcpy_0+21j
		shr	cx, 1
		rep movsw
		adc	cx, cx
		rep movsb
		mov	si, bx
		mov	di, dx
		pop	ds
		mov	dx, es
		pop	bp
		retf
_strcpy_0	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; char *__cdecl	strcat_0(char *,const char *)
_strcat_0	proc far		; CODE XREF: sub_842+2DP sub_842+60P ...

arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah

		push	bp
		mov	bp, sp
		mov	dx, di
		mov	bx, si
		push	ds
		les	di, [bp+arg_0]
		xor	ax, ax
		mov	cx, 0FFFFh
		repne scasb
		lea	si, [di-1]
		les	di, [bp+arg_4]
		mov	cx, 0FFFFh
		repne scasb
		not	cx
		sub	di, cx
		mov	ax, es
		mov	ds, ax
		mov	es, word ptr [bp+arg_0+2]
		xchg	di, si
		mov	ax, word ptr [bp+arg_0]
		test	si, 1
		jz	short loc_146D7
		movsb
		dec	cx

loc_146D7:				; CODE XREF: _strcat_0+31j
		shr	cx, 1
		rep movsw
		adc	cx, cx
		rep movsb
		mov	si, bx
		mov	di, dx
		pop	ds
		mov	dx, es
		pop	bp
		retf
_strcat_0	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; void *__cdecl	memset(void *,int,size_t)
_memset		proc far		; CODE XREF: sub_9C42:loc_9F38P
					; sub_9C42+310P ...

arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp
		mov	bp, sp
		mov	cx, [bp+arg_6]
		jcxz	short loc_14728
		push	di
		les	di, [bp+arg_0]
		mov	dx, di
		neg	dx
		jz	short loc_14706
		sub	dx, cx
		sbb	bx, bx
		and	dx, bx
		add	dx, cx
		xchg	dx, cx
		sub	dx, cx

loc_14706:				; CODE XREF: _memset+10j
		mov	ax, [bp+arg_4]
		mov	ah, al
		shr	cx, 1
		rep stosw
		adc	cx, cx
		rep stosb
		xchg	dx, cx
		jcxz	short loc_14727
		mov	bx, es
		add	bx, 1000h
		mov	es, bx
		assume es:nothing
		shr	cx, 1
		rep stosw
		adc	cx, cx
		rep stosb

loc_14727:				; CODE XREF: _memset+2Dj
		pop	di

loc_14728:				; CODE XREF: _memset+6j
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		pop	bp
		retf
_memset		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; void *__cdecl	memmove(void *,const void *,size_t)
_memmove	proc far		; CODE XREF: sub_12C7E+99P
					; sub_12C7E+B5P ...

arg_0		= dword	ptr  6
arg_4		= dword	ptr  0Ah
arg_8		= word ptr  0Eh

		push	bp
		mov	bp, sp
		mov	cx, [bp+arg_8]
		push	ds
		push	di
		push	si
		or	cx, cx
		jnz	short loc_14740
		jmp	loc_147EF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14740:				; CODE XREF: _memmove+Bj
		lds	si, [bp+arg_4]
		les	di, [bp+arg_0]
		assume es:nothing
		push	ds
		push	si
		push	es
		push	di
		call	__aFahdiff
		mov	cx, [bp+arg_8]
		or	dx, dx
		js	short loc_147AD
		sub	ax, cx
		sbb	dx, 0
		jnb	short loc_147AD
		dec	cx
		add	si, cx
		jnb	short loc_14769
		mov	ax, ds
		add	ax, 1000h
		mov	ds, ax
		assume ds:nothing

loc_14769:				; CODE XREF: _memmove+30j
		add	di, cx
		jnb	short loc_14774
		mov	ax, es
		add	ax, 1000h
		mov	es, ax
		assume es:nothing

loc_14774:				; CODE XREF: _memmove+3Bj
		inc	cx

loc_14775:				; CODE XREF: _memmove+72j _memmove+7Bj
		mov	ax, cx
		dec	ax
		sub	ax, di
		sbb	bx, bx
		and	ax, bx
		add	ax, di
		sub	ax, si
		sbb	bx, bx
		and	ax, bx
		add	ax, si
		inc	ax
		xchg	ax, cx
		sub	ax, cx
		std
		rep movsb
		cld
		xchg	ax, cx
		jcxz	short loc_147EF
		cmp	si, 0FFFFh
		jnz	short loc_1479F
		mov	ax, ds
		sub	ax, 1000h
		mov	ds, ax
		assume ds:dseg

loc_1479F:				; CODE XREF: _memmove+66j
		cmp	di, 0FFFFh
		jnz	short loc_14775
		mov	ax, es	
		sub	ax, 1000h
		mov	es, ax
		assume es:nothing	
		jmp	short loc_14775
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_147AD:				; CODE XREF: _memmove+24j _memmove+2Bj ...
		mov	ax, cx
		dec	ax
		mov	dx, di	
		not	dx
		sub	ax, dx
		sbb	bx, bx
		and	ax, bx
		add	ax, dx
		mov	dx, si
		not	dx
		sub	ax, dx
		sbb	bx, bx
		and	ax, bx
		add	ax, dx
		inc	ax
		xchg	ax, cx
		sub	ax, cx
		shr	cx, 1
		rep movsw
		adc	cx, cx
		rep movsb
		xchg	ax, cx
		jcxz	short loc_147EF
		or	si, si
		jnz	short loc_147E2
		mov	ax, ds
		add	ax, 1000h
		mov	ds, ax
		assume ds:nothing

loc_147E2:				; CODE XREF: _memmove+A9j
		or	di, di
		jnz	short loc_147AD
		mov	ax, es
		add	ax, 1000h
		mov	es, ax
		assume es:nothing
		jmp	short loc_147AD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_147EF:				; CODE XREF: _memmove+Dj _memmove+61j	...
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		pop	si
		pop	di
		pop	ds
		assume ds:dseg
		pop	bp
		retf
_memmove	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

__FF_MSGBANNER	proc far		; CODE XREF: start+2Cp	__aFchkstk-1ABp ...
		push	bp
		mov	bp, sp
		mov	ax, 0FCh ; 'ü'
		push	ax
		push	cs
		call	near ptr __NMSG_WRITE
		cmp	word_1A51C, 0
		jz	short loc_14810
		call	dword ptr unk_1A51A

loc_14810:				; CODE XREF: __FF_MSGBANNER+10j
		mov	ax, 0FFh
		push	ax
		push	cs
		call	near ptr __NMSG_WRITE
		mov	sp, bp
		pop	bp
		retf
__FF_MSGBANNER	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

__fptrap	proc far		; CODE XREF: __cinit+39j __output+276P ...
		mov	ax, 2
		jmp	__amsg_exit
__fptrap	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

__nullcheck	proc far		; CODE XREF: __exit+4FP
		push	si
		xor	si, si
		mov	cx, 42h	; 'B'
		xor	ah, ah
		cld

loc_1482B:				; CODE XREF: __nullcheck+Cj
		lodsb
		xor	ah, al
		loop	loc_1482B
		xor	ah, 55h
		jz	short loc_14844
		push	cs
		call	near ptr __FF_MSGBANNER
		mov	ax, 1
		push	ax
		push	cs
		call	near ptr __NMSG_WRITE
		mov	ax, 1

loc_14844:				; CODE XREF: __nullcheck+11j
		pop	si
		retf
__nullcheck	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

__setargv	proc near		; CODE XREF: start+9EP
		pop	word ptr dword_1A51E
		pop	word ptr dword_1A51E+2
		mov	ah, 30h
		int	21h		; DOS -	GET DOS	VERSION
					; Return: AL = major version number (00h for DOS 1.x)
		mov	word_1A3E0, ax
		mov	dx, 1
		cmp	al, 2
		jz	short loc_14885
		mov	es, word_1A3DE
		assume es:nothing
		mov	es, word ptr es:2Ch
		mov	seg_1A403, es
		xor	ax, ax
		cwd
		mov	cx, 8000h
		xor	di, di

loc_14871:				; CODE XREF: __setargv+2Ej
		repne scasb
		scasb
		jnz	short loc_14871
		inc	di
		inc	di
		mov	word_1A401, di
		mov	cx, 0FFFFh
		repne scasb
		not	cx
		mov	dx, cx

loc_14885:				; CODE XREF: __setargv+14j
		mov	di, 1
		mov	si, 81h	; ''
		mov	ds, word_1A3DE

loc_1488F:				; CODE XREF: __setargv+4Cj
					; __setargv+50j ...
		lodsb
		cmp	al, 20h	; ' '
		jz	short loc_1488F
		cmp	al, 9
		jz	short loc_1488F
		cmp	al, 0Dh
		jz	short loc_1490B
		or	al, al
		jz	short loc_1490B
		inc	di
loc_148A1:				; CODE XREF: __setargv+86j
		dec	si

loc_148A2:				; CODE XREF: __setargv+76j
					; __setargv+90j ...
		lodsb
		cmp	al, 20h	; ' '
		jz	short loc_1488F
		cmp	al, 9
		jz	short loc_1488F
		cmp	al, 0Dh
		jz	short loc_1490B
		or	al, al
		jz	short loc_1490B
		cmp	al, 22h	; '"'
		jz	short loc_148DB
		cmp	al, 5Ch	; '\'
		jz	short loc_148BE
		inc	dx
		jmp	short loc_148A2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_148BE:				; CODE XREF: __setargv+73j
		xor	cx, cx

loc_148C0:				; CODE XREF: __setargv+7Ej
		inc	cx
		lodsb
		cmp	al, 5Ch	; '\'
		jz	short loc_148C0
		cmp	al, 22h	; '"'
		jz	short loc_148CE
		add	dx, cx
		jmp	short loc_148A1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_148CE:				; CODE XREF: __setargv+82j
		mov	ax, cx
		shr	cx, 1
		adc	dx, cx
		test	al, 1
		jnz	short loc_148A2
		jmp	short loc_148DB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_148DA:				; CODE XREF: __setargv+B7j
		dec	si

loc_148DB:				; CODE XREF: __setargv+6Fj
					; __setargv+92j ...
		lodsb
		cmp	al, 0Dh
		jz	short loc_1490B
		or	al, al
		jz	short loc_1490B
		cmp	al, 22h	; '"'
		jz	short loc_148A2
		cmp	al, 5Ch	; '\'
		jz	short loc_148EF
		inc	dx
		jmp	short loc_148DB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_148EF:				; CODE XREF: __setargv+A4j
		xor	cx, cx

loc_148F1:				; CODE XREF: __setargv+AFj
		inc	cx
		lodsb
		cmp	al, 5Ch	; '\'
		jz	short loc_148F1
		cmp	al, 22h	; '"'
		jz	short loc_148FF
		add	dx, cx
		jmp	short loc_148DA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_148FF:				; CODE XREF: __setargv+B3j
		mov	ax, cx
		shr	cx, 1
		adc	dx, cx
		test	al, 1
		jnz	short loc_148DB
		jmp	short loc_148A2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1490B:				; CODE XREF: __setargv+54j
					; __setargv+58j ...
		push	ss
		pop	ds
		mov	argc, di
		add	dx, di
		inc	di
		shl	di, 1
		add	dx, di
		inc	dx
		and	dl, 0FEh
		sub	sp, dx
		mov	ax, sp
		mov	argv, ax
		mov	bx, ax
		add	di, bx
		push	ss
		pop	es
		assume es:dseg
		mov	ss:[bx], di
		inc	bx
		inc	bx
		lds	si, dword ptr word_1A401

loc_14932:				; CODE XREF: __setargv+F0j
		lodsb
		stosb
		or	al, al
		jnz	short loc_14932
		mov	ds, ss:word_1A3DE
		mov	si, 81h	; ''
		jmp	short loc_14945
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14942:				; CODE XREF: __setargv+119j
					; __setargv+11Dj
		xor	ax, ax
		stosb

loc_14945:				; CODE XREF: __setargv+FAj
					; __setargv+102j ...
		lodsb
		cmp	al, 20h	; ' '
		jz	short loc_14945
		cmp	al, 9
		jz	short loc_14945
		cmp	al, 0Dh
		jz	short loc_149CE
		or	al, al
		jz	short loc_149CE
		mov	ss:[bx], di
		inc	bx
		inc	bx

loc_1495B:				; CODE XREF: __setargv+142j
		dec	si

loc_1495C:				; CODE XREF: __setargv+130j
					; __setargv+14Fj ...
		lodsb
		cmp	al, 20h	; ' '
		jz	short loc_14942
		cmp	al, 9
		jz	short loc_14942
		cmp	al, 0Dh
		jz	short loc_149CB
		or	al, al
		jz	short loc_149CB
		cmp	al, 22h	; '"'
		jz	short loc_14998
		cmp	al, 5Ch	; '\'
		jz	short loc_14978
		stosb
		jmp	short loc_1495C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14978:				; CODE XREF: __setargv+12Dj
		xor	cx, cx

loc_1497A:				; CODE XREF: __setargv+138j
		inc	cx
		lodsb
		cmp	al, 5Ch	; '\'
		jz	short loc_1497A
		cmp	al, 22h	; '"'
		jz	short loc_1498A
		mov	al, 5Ch	; '\'
		rep stosb
		jmp	short loc_1495B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1498A:				; CODE XREF: __setargv+13Cj
		mov	al, 5Ch	; '\'
		shr	cx, 1
		rep stosb
		jnb	short loc_14998
		mov	al, 22h	; '"'
		stosb
		jmp	short loc_1495C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14997:				; CODE XREF: __setargv+176j
		dec	si

loc_14998:				; CODE XREF: __setargv+129j
					; __setargv+14Aj ...
		lodsb
		cmp	al, 0Dh
		jz	short loc_149CB
		or	al, al
		jz	short loc_149CB
		cmp	al, 22h	; '"'
		jz	short loc_1495C
		cmp	al, 5Ch	; '\'
		jz	short loc_149AC
		stosb
		jmp	short loc_14998
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_149AC:				; CODE XREF: __setargv+161j
		xor	cx, cx

loc_149AE:				; CODE XREF: __setargv+16Cj
		inc	cx
		lodsb
		cmp	al, 5Ch	; '\'
		jz	short loc_149AE
		cmp	al, 22h	; '"'
		jz	short loc_149BE
		mov	al, 5Ch	; '\'
		rep stosb
		jmp	short loc_14997
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_149BE:				; CODE XREF: __setargv+170j
		mov	al, 5Ch	; '\'
		shr	cx, 1
		rep stosb
		jnb	short loc_1495C
		mov	al, 22h	; '"'
		stosb
		jmp	short loc_14998
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_149CB:				; CODE XREF: __setargv+121j
					; __setargv+125j ...
		xor	ax, ax
		stosb

loc_149CE:				; CODE XREF: __setargv+10Aj
					; __setargv+10Ej
		push	ss
		pop	ds
		mov	word ptr [bx], 0
		jmp	dword_1A51E
__setargv	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

__setenvp	proc far		; CODE XREF: start:loc_13937P
		push	bp
		mov	bp, sp
		push	ds
		mov	es, word_1A3DE
		assume es:nothing
		mov	bx, es:2Ch
		mov	es, bx
		xor	ax, ax
		xor	si, si
		xor	di, di
		mov	cx, 0FFFFh
		or	bx, bx
		jz	short loc_14A02
		cmp	byte ptr es:0, 0
		jz	short loc_14A02

loc_149FC:				; CODE XREF: __setenvp+28j
		repne scasb
		inc	si
		scasb
		jnz	short loc_149FC

loc_14A02:				; CODE XREF: __setenvp+1Aj
					; __setenvp+22j
		mov	ax, di
		inc	ax
		and	al, 0FEh
		inc	si
		mov	di, si
		shl	si, 1
		mov	cx, 9
		call	near ptr __myalloc
		push	ax
		mov	ax, si
		call	near ptr __myalloc
		mov	envp, ax
		push	es
		push	ds
		pop	es
		assume es:dseg
		pop	ds
		mov	cx, di
		mov	bx, ax
		xor	si, si
		pop	di
		dec	cx
		jcxz	short loc_14A4F

loc_14A29:				; CODE XREF: __setenvp+75j
		mov	ax, [si]
		cmp	ax, ss:word_1A3BC
		jnz	short loc_14A42
		push	cx
		push	si
		push	di
		mov	di, 454Ch
		mov	cx, 6
		repe cmpsw
		pop	di
		pop	si
		pop	cx
		jz	short loc_14A47

loc_14A42:				; CODE XREF: __setenvp+58j
		mov	es:[bx], di
		inc	bx
		inc	bx

loc_14A47:				; CODE XREF: __setenvp+68j
					; __setenvp+73j
		lodsb
		stosb
		or	al, al
		jnz	short loc_14A47
		loop	loc_14A29

loc_14A4F:				; CODE XREF: __setenvp+4Fj
		mov	es:[bx], cx
		pop	ds
		pop	bp
		retf
__setenvp	endp ; sp =  4

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

__NMSG_TEXT	proc far		; CODE XREF: __NMSG_WRITE+8p

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		push	si
		push	di
		push	ds
		pop	es
		mov	dx, [bp+arg_0]
		mov	si, 48C0h

loc_14A63:				; CODE XREF: __NMSG_TEXT+20j
		lodsw
		cmp	ax, dx
		jz	short loc_14A78
		inc	ax
		xchg	ax, si
		jz	short loc_14A78
		xchg	ax, di
		xor	ax, ax
		mov	cx, 0FFFFh
		repne scasb
		mov	si, di
		jmp	short loc_14A63
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14A78:				; CODE XREF: __NMSG_TEXT+10j
					; __NMSG_TEXT+14j
		xchg	ax, si
		pop	di
		pop	si
		mov	sp, bp
		pop	bp
		retf	2
__NMSG_TEXT	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

__NMSG_WRITE	proc far		; CODE XREF: start:loc_138D1p
					; __aFchkstk-1A7p ...

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		push	di
		push	[bp+arg_0]
		push	cs
		call	near ptr __NMSG_TEXT
		or	ax, ax
		jz	short loc_14AB0
		xchg	ax, dx
		mov	di, dx
		xor	ax, ax
		mov	cx, 0FFFFh
		repne scasb
		not	cx
		dec	cx
		mov	bx, 2
		cmp	word_1A706, 0D6D6h
		jnz	short loc_14AAC
		call	off_1A708

loc_14AAC:				; CODE XREF: __NMSG_WRITE+25j
		mov	ah, 40h
		int	21h		; DOS -	2+ - WRITE TO FILE WITH	HANDLE
					; BX = file handle, CX = number	of bytes to write, DS:DX -> buffer

loc_14AB0:				; CODE XREF: __NMSG_WRITE+Dj
		pop	di
		mov	sp, bp
		pop	bp
		retf	2
__NMSG_WRITE	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
; START	OF FUNCTION CHUNK FOR _remove

__dosret0:				; CODE XREF: _remove+Aj
					; _close:loc_1544Fj
		jb	short loc_14ACF

loc_14ABA:				; CODE XREF: __dos_findfirst:__dosreturnj
		xor	ax, ax
		mov	sp, bp
		pop	bp
		retf
; END OF FUNCTION CHUNK	FOR _remove
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __dos_findfirst

__dosreturn:				; CODE XREF: __dos_findfirst+30j
					; __dos_write:loc_1439Ej
		jnb	short loc_14ABA
		push	ax
		call	sub_14AE0
		pop	ax
		xor	ah, ah
		mov	sp, bp
		pop	bp
		retf
; END OF FUNCTION CHUNK	FOR __dos_findfirst
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR _sopen

__dosretax:				; CODE XREF: _lseek:loc_154C9j
					; _read:loc_15549j ...
		jnb	short loc_14AD6
; END OF FUNCTION CHUNK	FOR _sopen
; START	OF FUNCTION CHUNK FOR _remove

loc_14ACF:				; CODE XREF: _remove:__dosret0j
		call	sub_14AE0
		mov	ax, 0FFFFh
		cwd

loc_14AD6:				; CODE XREF: _sopen:__dosretaxj
		mov	sp, bp
		pop	bp
		retf
; END OF FUNCTION CHUNK	FOR _remove
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

__maperror:
		xor	ah, ah
		call	sub_14AE0
		retf

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_14AE0	proc near		; CODE XREF: __dos_findfirst+784p
					; _remove:loc_14ACFp ...
		mov	byte_1A3E3, al
		or	ah, ah
		jnz	short loc_14B09
		cmp	byte ptr word_1A3E0, 3
		jb	short loc_14AFA
		cmp	al, 22h	; '"'
		jnb	short loc_14AFE
		cmp	al, 20h	; ' '
		jb	short loc_14AFA
		mov	al, 5
		jmp	short loc_14B00
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14AFA:				; CODE XREF: sub_14AE0+Cj
					; sub_14AE0+14j
		cmp	al, 13h
		jbe	short loc_14B00

loc_14AFE:				; CODE XREF: sub_14AE0+10j
		mov	al, 13h

loc_14B00:				; CODE XREF: sub_14AE0+18j
					; sub_14AE0+1Cj
		mov	bx, 46B2h
		xlat

loc_14B04:				; CODE XREF: sub_14AE0+2Bj
		cbw
		mov	word_1A3D8, ax
		retn
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14B09:				; CODE XREF: sub_14AE0+5j		mov	al, ah
		jmp	short loc_14B04
sub_14AE0	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl _filbuf(FILE *)
__filbuf	proc far		; CODE XREF: _fread+ABp _fgets+41p

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		push	si
		push	di		; unsigned int
		mov	si, [bp+arg_0]
		mov	al, [si+6]
		test	al, 83h
		jz	short loc_14B76
		test	al, 40h
		jnz	short loc_14B76
		test	al, 2
		jnz	short loc_14B67
		or	al, 1
		mov	[si+6],	al
		mov	di, si
		sub	di, 46C6h
		add	di, 4766h
		test	al, 0Ch
		jnz	short loc_14B42
		test	byte ptr [di], 1
		jnz	short loc_14B42
		push	si
		call	__getbuf
		pop	ax

loc_14B42:				; CODE XREF: __filbuf+28j __filbuf+2Dj
		mov	ax, [si+4]
		mov	[si], ax
		push	word ptr [di+2]	; unsigned int
		push	ax		; void *
		xor	bx, bx
		mov	bl, [si+7]
		push	bx		; int
		push	cs
		call	near ptr _read
		add	sp, 6
		or	ax, ax
		jz	short loc_14B6D
		cmp	ax, 0FFFFh
		jnz	short loc_14B7B
		or	byte ptr [si+6], 20h
		jmp	short loc_14B71
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14B67:				; CODE XREF: __filbuf+15j
		or	byte ptr [si+6], 20h
		jmp	short loc_14B76
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14B6D:				; CODE XREF: __filbuf+4Cj
		or	byte ptr [si+6], 10h

loc_14B71:				; CODE XREF: __filbuf+57j
		mov	word ptr [si+2], 0

loc_14B76:				; CODE XREF: __filbuf+Dj __filbuf+11j	...
		mov	ax, 0FFFFh
		jmp	short loc_14B9F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14B7B:				; CODE XREF: __filbuf+51j
		mov	bh, [bx+4577h]
		and	bh, 82h
		cmp	bh, 82h	; '‚'
		jnz	short loc_14B92
		mov	bh, [si+6]
		test	bh, 82h
		jnz	short loc_14B92
		or	byte ptr [di], 20h

loc_14B92:				; CODE XREF: __filbuf+77j __filbuf+7Fj
		dec	ax
		mov	[si+2],	ax
		mov	bx, [si]
		xor	ax, ax
		mov	al, [bx]
		inc	bx
		mov	[si], bx

loc_14B9F:				; CODE XREF: __filbuf+6Bj
		pop	di
		pop	si
		pop	bp
		retf
__filbuf	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl _flsbuf(int,FILE *)
__flsbuf	proc far		; CODE XREF: _fwrite+CEp _sprintf+4AP	...

arg_0		= word ptr  6
arg_2		= word ptr  8

		push	bp
		mov	bp, sp
		push	si
		push	di		; unsigned int
		mov	si, [bp+arg_2]
		mov	al, [si+6]
		test	al, 82h
		jz	short loc_14C1C
		test	al, 40h
		jnz	short loc_14C1C
		mov	word ptr [si+2], 0
		test	al, 1
		jz	short loc_14BCB
		test	al, 10h
		jz	short loc_14C1C
		mov	cx, [si+4]
		mov	[si], cx
		and	al, 0FEh

loc_14BCB:				; CODE XREF: __flsbuf+1Aj
		or	al, 2
		and	al, 0EFh
		mov	[si+6],	al
		mov	di, si
		sub	di, 46C6h
		add	di, 4766h
		xor	bx, bx
		mov	bl, [si+7]
		test	al, 8
		jnz	short loc_14C32
		test	al, 4
		jnz	short loc_14C07
		test	byte ptr [di], 1
		jnz	short loc_14C32
		cmp	si, 46CEh
		jz	short loc_14C00
		cmp	si, 46D6h
		jz	short loc_14C00
		cmp	si, 46E6h
		jnz	short loc_14C25

loc_14C00:				; CODE XREF: __flsbuf+4Ej __flsbuf+54j
		test	byte ptr [bx+4577h], 40h
		jz	short loc_14C25

loc_14C07:				; CODE XREF: __flsbuf+43j __flsbuf+8Cj
		mov	cx, 1
		push	cx		; unsigned int
		lea	di, [bp+arg_0]
		push	di		; void *
		push	bx		; int
		push	cs
		call	near ptr _write
		add	sp, 6
		mov	cx, 1
		jmp	short loc_14C5B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14C1C:				; CODE XREF: __flsbuf+Dj __flsbuf+11j	...
		mov	ax, 0FFFFh
		or	byte ptr [si+6], 20h
		jmp	short loc_14C83
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14C25:				; CODE XREF: __flsbuf+5Aj __flsbuf+61j
		push	bx
		push	si
		call	__getbuf
		pop	bx
		pop	bx
		test	byte ptr [si+6], 8
		jz	short loc_14C07

loc_14C32:				; CODE XREF: __flsbuf+3Fj __flsbuf+48j
		mov	cx, [si]
		mov	dx, [si+4]
		sub	cx, dx
		inc	dx
		mov	[si], dx
		mov	dx, [di+2]
		dec	dx
		mov	[si+2],	dx
		jcxz	short loc_14C66
		push	cx		; unsigned int
		push	cx		; unsigned int
		push	word ptr [si+4]	; void *
		push	bx		; int
		push	cs
		call	near ptr _write
		add	sp, 6
		pop	cx

loc_14C53:				; CODE XREF: __flsbuf+C9j __flsbuf+DDj
		mov	di, [si+4]
		mov	dx, [bp+arg_0]
		mov	[di], dl

loc_14C5B:				; CODE XREF: __flsbuf+76j
		cmp	ax, cx
		jnz	short loc_14C1C
		xor	ax, ax
		mov	al, byte ptr [bp+arg_0]
		jmp	short loc_14C83
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14C66:				; CODE XREF: __flsbuf+9Fj
		xor	ax, ax
		test	byte ptr [bx+4577h], 20h
		jz	short loc_14C53
		mov	cx, 2
		push	cx		; int
		push	ax		; int
		push	ax		; __int32
		push	bx		; int
		push	cs		; int
		call	near ptr _lseek
		add	sp, 8
		xor	ax, ax
		mov	cx, ax
		jmp	short loc_14C53
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14C83:				; CODE XREF: __flsbuf+7Fj __flsbuf+C0j
		pop	di
		pop	si
		pop	bp
		retf
__flsbuf	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

__freebuf	proc near		; CODE XREF: _fclose+39p _setvbuf+49p

arg_0		= word ptr  4

		push	bp
		mov	bp, sp
		push	si
		mov	si, [bp+arg_0]
		mov	al, [si+6]
		test	al, 83h
		jz	short loc_14CB1
		test	al, 8
		jz	short loc_14CB1
		push	word ptr [si+4]
		call	sub_15C78
		pop	cx
		and	byte ptr [si+6], 0F7h
		xor	ax, ax
		mov	[si+4],	ax
		mov	[si], ax
		mov	[si+2],	ax

loc_14CB1:				; CODE XREF: __freebuf+Cj
					; __freebuf+10j
		pop	si
		pop	bp
		retn
__freebuf	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl far _openfile(char *,int,int)
__openfile	proc far		; CODE XREF: __fsopen+1EP

var_8		= word ptr -8
var_6		= word ptr -6
var_4		= byte ptr -4
var_2		= word ptr -2
arg_0		= word ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp
		mov	bp, sp
		sub	sp, 8
		push	di
		push	si
		mov	bx, [bp+8]
		mov	al, [bx]
		cbw
		cmp	ax, 77h	; 'w'
		jz	short loc_14D0C
		ja	short loc_14CD1
		sub	al, 61h	; 'a'
		jz	short loc_14D16
		sub	al, 11h
		jz	short loc_14CD6

loc_14CD1:				; CODE XREF: __openfile+13j
					; __openfile+ACj
		sub	ax, ax
		jmp	loc_14D96
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14CD6:				; CODE XREF: __openfile+1Bj
		sub	si, si
		mov	[bp+var_4], 1

loc_14CDC:				; CODE XREF: __openfile+5Fj
		mov	[bp+var_2], 1

loc_14CE1:				; CODE XREF: __openfile+55j
					; __openfile+78j ...
		inc	word ptr [bp+8]
		mov	bx, [bp+8]
		cmp	byte ptr [bx], 0
		jz	short loc_14D46
		cmp	[bp+var_2], 0
		jz	short loc_14D46
		mov	al, [bx]
		cbw
		cmp	ax, 74h	; 't'
		jz	short loc_14D2E
		ja	short loc_14D04
		sub	al, 2Bh	; '+'
		jz	short loc_14D1C
		sub	al, 37h	; '7'
		jz	short loc_14D3A

loc_14D04:				; CODE XREF: __openfile+46j
					; __openfile+6Cj ...
		mov	[bp+var_2], 0
		jmp	short loc_14CE1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_14D0C:				; CODE XREF: __openfile+11j
		mov	si, 301h

loc_14D0F:				; CODE XREF: __openfile+65j
		mov	[bp+var_4], 2
		jmp	short loc_14CDC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_14D16:				; CODE XREF: __openfile+17j
		mov	si, 109h
		jmp	short loc_14D0F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_14D1C:				; CODE XREF: __openfile+4Aj
		test	si, 2
		jnz	short loc_14D04
		or	si, 2
		and	si, 0FFFEh
		mov	[bp+var_4], 80h	; '€'
		jmp	short loc_14CE1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14D2E:				; CODE XREF: __openfile+44j
		test	si, 0C000h
		jnz	short loc_14D04
		or	si, 4000h
		jmp	short loc_14CE1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14D3A:				; CODE XREF: __openfile+4Ej
		test	si, 0C000h
		jnz	short loc_14D04
		or	si, 8000h
		jmp	short loc_14CE1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14D46:				; CODE XREF: __openfile+36j
					; __openfile+3Cj
		mov	ax, 1A4h
		push	ax		; int
		push	[bp+arg_4]	; int
		push	si		; int
		push	[bp+arg_0]	; char *
		call	_sopen
		add	sp, 8
		mov	[bp+var_6], ax
		or	ax, ax
		jge	short loc_14D63
		jmp	loc_14CD1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14D63:				; CODE XREF: __openfile+AAj
		inc	word_1A6E0
		mov	di, [bp+arg_6]
		mov	ax, di
		sub	ax, 46C6h
		add	ax, 4766h
		mov	[bp+var_8], ax
		mov	al, [bp+var_4]
		mov	[di+6],	al
		mov	bx, [bp+var_8]
		mov	byte ptr [bx], 0
		sub	ax, ax
		mov	[di+2],	ax
		mov	[bx+4],	ax
		mov	[di], ax
		mov	[di+4],	ax
		mov	al, byte ptr [bp+var_6]
		mov	[di+7],	al
		mov	ax, di

loc_14D96:				; CODE XREF: __openfile+1Fj
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retf
__openfile	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

__stbuf		proc near		; CODE XREF: _printf+Cp

arg_0		= word ptr  4

		push	bp
		mov	bp, sp
		push	si
		push	di
		mov	si, [bp+arg_0]
		mov	bx, 4808h
		cmp	si, 46CEh
		jz	short loc_14DBF
		mov	bx, 480Ah
		cmp	si, 46D6h
		jz	short loc_14DBF
		mov	bx, 480Ch
		cmp	si, 46E6h
		jnz	short loc_14E09

loc_14DBF:				; CODE XREF: __stbuf+Fj __stbuf+18j
		mov	di, si
		sub	di, 46C6h
		add	di, 4766h
		test	byte ptr [si+6], 0Ch
		jnz	short loc_14E09
		test	byte ptr [di], 1
		jnz	short loc_14E09
		mov	ax, [bx]
		or	ax, ax
		jz	short loc_14DF5

loc_14DDA:				; CODE XREF: __stbuf+6Bj
		mov	[si+4],	ax
		mov	[si], ax
		mov	word ptr [si+2], 200h
		mov	word ptr [di+2], 200h
		or	byte ptr [si+6], 2
		mov	byte ptr [di], 11h
		mov	ax, 1
		jmp	short loc_14E0B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14DF5:				; CODE XREF: __stbuf+3Cj
		push	bx
		mov	ax, 200h
		push	ax
		call	sub_15C72	; íâ  äã­ªæ¨ï -	ç¨áâ(r) malloc,¯à¨­¨¬ ¥â (r)¤¨­ WORD- à£ã¬¥­â,
					; á¬. mymall_MSC6.txt
		pop	bx
		pop	bx
		or	ax, ax
		jz	short loc_14E09
		mov	[bx], ax
		jmp	short loc_14DDA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14E09:				; CODE XREF: __stbuf+21j __stbuf+31j ...
		xor	ax, ax

loc_14E0B:				; CODE XREF: __stbuf+57j
		pop	di
		pop	si
		pop	bp
		retn
__stbuf		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl _ftbuf(int,FILE *)
__ftbuf		proc near		; CODE XREF: _printf+2Fp

arg_0		= word ptr  4
arg_2		= word ptr  6

		push	bp
		mov	bp, sp
		push	si
		push	di
		mov	si, [bp+arg_2]
		mov	di, si
		sub	di, 46C6h
		add	di, 4766h
		test	byte ptr [di], 10h
		jz	short loc_14E4A
		xor	bx, bx
		mov	bl, [si+7]
		test	byte ptr [bx+4577h], 40h
		jz	short loc_14E4A
		push	si		; FILE *
		push	cs
		call	near ptr _fflush
		pop	ax
		cmp	[bp+arg_0], 0
		jz	short loc_14E4A
		xor	ax, ax
		mov	[di], al
		mov	[di+2],	ax
		mov	[si], ax
		mov	[si+4],	ax

loc_14E4A:				; CODE XREF: __ftbuf+15j __ftbuf+21j ...
		pop	di
		pop	si
		pop	bp
		retn
__ftbuf		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl fflush(FILE *)
_fflush		proc far		; CODE XREF: _fclose+21P _fwrite+8Cp ...

var_2		= word ptr -2
arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		sub	sp, 2
		push	di
		push	si		; unsigned int
		sub	di, di
		cmp	[bp+arg_0], di
		jnz	short loc_14E66
		sub	ax, ax
		push	ax
		call	flsall
		jmp	short loc_14EBC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_14E66:				; CODE XREF: _fflush+Dj
		mov	si, [bp+arg_0]
		mov	al, [si+6]
		mov	cx, ax
		and	al, 3
		cmp	al, 2
		jnz	short loc_14EB0
		test	cl, 8
		jnz	short loc_14E86
		mov	bx, si
		sub	bx, 46C6h
		test	byte ptr [bx+4766h], 1
		jz	short loc_14EB0

loc_14E86:				; CODE XREF: _fflush+29j
		mov	ax, [si]
		sub	ax, [si+4]
		mov	[bp+var_2], ax
		or	ax, ax
		jle	short loc_14EB0
		push	ax		; unsigned int
		push	word ptr [si+4]	; void *
		mov	cl, [si+7]
		sub	ch, ch
		push	cx		; int
		call	_write
		add	sp, 6
		cmp	[bp+var_2], ax
		jz	short loc_14EB0
		or	byte ptr [si+6], 20h
		mov	di, 0FFFFh

loc_14EB0:				; CODE XREF: _fflush+24j _fflush+36j ...
		mov	ax, [si+4]
		mov	[si], ax
		mov	word ptr [si+2], 0
		mov	ax, di

loc_14EBC:				; CODE XREF: _fflush+15j
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retf
_fflush		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

; int flushall(void)
_flushall	proc far		; DATA XREF: dseg:48B2o
		mov	ax, 1
		push	ax
		call	flsall
		retf
_flushall	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function static bp-based frame

flsall		proc near		; CODE XREF: _fflush+12p _flushall+4p

var_2		= word ptr -2
arg_0		= word ptr  4

		push	bp
		mov	bp, sp
		sub	sp, 2
		push	di
		push	si
		mov	si, 46C6h
		sub	di, di
		mov	[bp+var_2], di
		jmp	short loc_14EE4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14EDC:				; CODE XREF: flsall+30j
		mov	[bp+var_2], 0FFFFh

loc_14EE1:				; CODE XREF: flsall+24j flsall+33j
		add	si, 8

loc_14EE4:				; CODE XREF: flsall+10j
		cmp	word_1A676, si
		jb	short loc_14F00
		test	byte ptr [si+6], 83h
		jz	short loc_14EE1
		push	si		; FILE *
		call	_fflush
		add	sp, 2
		inc	ax
		jz	short loc_14EDC
		inc	di
		jmp	short loc_14EE1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_14F00:				; CODE XREF: flsall+1Ej
		cmp	[bp+arg_0], 1
		jnz	short loc_14F0A
		mov	ax, di
		jmp	short loc_14F0D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14F0A:				; CODE XREF: flsall+3Aj
		mov	ax, [bp+var_2]

loc_14F0D:				; CODE XREF: flsall+3Ej
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retn	2
flsall		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2
off_14F16	dw offset loc_14F7D	; DATA XREF: __output+52r
		dw offset loc_14F88
		dw offset loc_14F9C
		dw offset loc_14FD0
		dw offset loc_14FFC
		dw offset loc_15004
		dw offset loc_1502D
		dw offset loc_1505F

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame
__output	proc far		; CODE XREF: _printf+1FP _sprintf+28P

var_172		= word ptr -172h
var_16E		= word ptr -16Eh
var_169		= word ptr -169h
var_15		= word ptr -15h
var_12		= word ptr -12h
var_10		= word ptr -10h
var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= byte ptr -6
var_5		= byte ptr -5
var_4		= word ptr -4
var_2		= byte ptr -2
var_1		= byte ptr -1
arg_4		= word ptr  8
arg_6		= word ptr  0Ah

; FUNCTION CHUNK AT 1B77 SIZE 00000006 BYTES

		push	bp
		mov	bp, sp
		mov	ax, 171h
		push	cs
		call	near ptr __aFchkstk
		push	si
		push	di
		xor	ax, ax
		mov	[bp+var_8], ax
		mov	[bp+var_5], al

loc_14F3A:				; CODE XREF: __output+60j __output+74j ...
		mov	si, [bp+arg_4]
		lodsb
		mov	[bp+arg_4], si
		mov	[bp+var_2], al
		or	al, al
		jz	short loc_14F4E
		cmp	[bp+var_8], 0
		jge	short loc_14F54

loc_14F4E:				; CODE XREF: __output+20j
		mov	ax, [bp+var_8]
		jmp	loc_153F7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14F54:				; CODE XREF: __output+26j
		mov	bx, 480Eh
		sub	al, 20h	; ' '
		cmp	al, 58h	; 'X'
		ja	short loc_14F62
		xlat
		and	al, 0Fh
		jmp	short loc_14F64
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14F62:				; CODE XREF: __output+35j
		mov	al, 0

loc_14F64:				; CODE XREF: __output+3Aj
		mov	cl, 3
		shl	al, cl
		add	al, [bp+var_5]
		xlat
		inc	cl
		shr	al, cl
		mov	[bp+var_5], al
		cbw
		mov	bx, ax
		shl	bx, 1
		jmp	cs:off_14F16[bx]

loc_14F7D:				; DATA XREF: seg118:off_14F16o
		mov	dl, [bp+var_2]
		mov	cx, 1
		call	sub_153AA
		jmp	short loc_14F3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14F88:				; CODE XREF: __output+52j
					; DATA XREF: seg118:1698o
		xor	ax, ax
		mov	[bp+var_10], ax
		mov	[bp+var_A], ax
		mov	[bp+var_12], ax
		mov	[bp+var_4], ax
		dec	ax
		mov	[bp+var_C], ax
		jmp	short loc_14F3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14F9C:				; CODE XREF: __output+52j
					; DATA XREF: seg118:169Ao
		mov	al, [bp+var_2]
		cmp	al, 2Dh	; '-'
		jnz	short loc_14FA9
		or	byte ptr [bp+var_4], 4
		jmp	short loc_14F3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14FA9:				; CODE XREF: __output+7Bj
		cmp	al, 2Bh	; '+'
		jnz	short loc_14FB3
		or	byte ptr [bp+var_4], 1
		jmp	short loc_14F3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14FB3:				; CODE XREF: __output+85j
		cmp	al, 20h	; ' '
		jnz	short loc_14FBE
		or	byte ptr [bp+var_4], 2
		jmp	loc_14F3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
loc_14FBE:				; CODE XREF: __output+8Fj
		cmp	al, 23h	; '#'
		jnz	short loc_14FC9
		or	byte ptr [bp+var_4], 80h
		jmp	loc_14F3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14FC9:				; CODE XREF: __output+9Aj
		or	byte ptr [bp+var_4], 8
		jmp	loc_14F3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14FD0:				; CODE XREF: __output+52j
					; DATA XREF: seg118:169Co
		mov	cl, [bp+var_2]
		cmp	cl, 2Ah	; '*'
		jnz	short loc_14FE7
		call	sub_15331
		or	ax, ax
		jns	short loc_14FF6
		neg	ax
		or	byte ptr [bp+var_4], 4
		jmp	short loc_14FF6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14FE7:				; CODE XREF: __output+B0j
		sub	cl, 30h	; '0'
		xor	ch, ch
		mov	ax, [bp+var_A]
		mov	bx, 0Ah
		mul	bx
		add	ax, cx

loc_14FF6:				; CODE XREF: __output+B7j __output+BFj
		mov	[bp+var_A], ax
		jmp	loc_14F3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_14FFC:				; CODE XREF: __output+52j
					; DATA XREF: seg118:169Eo
		mov	[bp+var_C], 0
		jmp	loc_14F3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15004:				; CODE XREF: __output+52j
					; DATA XREF: seg118:16A0o
		mov	cl, [bp+var_2]
		cmp	cl, 2Ah	; '*'
		jnz	short loc_15018
		call	sub_15331
		or	ax, ax
		jns	short loc_15027
		mov	ax, 0FFFFh
		jmp	short loc_15027
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15018:				; CODE XREF: __output+E4j
		sub	cl, 30h	; '0'
		xor	ch, ch
		mov	ax, [bp+var_C]
		mov	bx, 0Ah
		mul	bx
		add	ax, cx

loc_15027:				; CODE XREF: __output+EBj __output+F0j
		mov	[bp+var_C], ax
		jmp	loc_14F3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1502D:				; CODE XREF: __output+52j
					; DATA XREF: seg118:16A2o
		mov	al, [bp+var_2]
		cmp	al, 6Ch	; 'l'
		jnz	short loc_1503A
		or	byte ptr [bp+var_4], 10h
		jmp	short loc_1505C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1503A:				; CODE XREF: __output+10Cj
		cmp	al, 46h	; 'F'
		jnz	short loc_15044
		or	byte ptr [bp+var_4], 20h
		jmp	short loc_1505C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15044:				; CODE XREF: __output+116j
		cmp	al, 4Eh	; 'N'
		jnz	short loc_1504E
		or	byte ptr [bp+var_4+1], 10h
		jmp	short loc_1505C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1504E:				; CODE XREF: __output+120j
		cmp	al, 4Ch	; 'L'
		jnz	short loc_15058
		or	byte ptr [bp+var_4+1], 4
		jmp	short loc_1505C
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15058:				; CODE XREF: __output+12Aj
		or	byte ptr [bp+var_4+1], 8

loc_1505C:				; CODE XREF: __output+112j
					; __output+11Cj ...
		jmp	loc_14F3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1505F:				; CODE XREF: __output+52j
					; DATA XREF: seg118:16A4o
		mov	al, [bp+var_2]
		cmp	al, 64h	; 'd'
		jnz	short loc_15069
		jmp	loc_151F7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15069:				; CODE XREF: __output+13Ej
		cmp	al, 69h	; 'i'
		jnz	short loc_15070
		jmp	loc_151F7
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15070:				; CODE XREF: __output+145j
		cmp	al, 75h	; 'u'
		jnz	short loc_15077
		jmp	loc_151FB
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15077:				; CODE XREF: __output+14Cj
		cmp	al, 58h	; 'X'
		jnz	short loc_1507E
		jmp	loc_15201
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1507E:				; CODE XREF: __output+153j
		cmp	al, 78h	; 'x'
		jnz	short loc_15085
		jmp	loc_15207
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15085:				; CODE XREF: __output+15Aj
		cmp	al, 6Fh	; 'o'
		jnz	short loc_1508C
		jmp	loc_15228
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1508C:				; CODE XREF: __output+161j
		cmp	al, 63h	; 'c'
		jz	short loc_150AA
		cmp	al, 73h	; 's'
		jz	short loc_150BB
		cmp	al, 6Eh	; 'n'
		jz	short loc_150E9
		cmp	al, 70h	; 'p'
		jz	short loc_150FC
		cmp	al, 45h	; 'E'
		jz	short loc_150A7
		cmp	al, 47h	; 'G'
		jz	short loc_150A7
		jmp	loc_15162
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_150A7:				; CODE XREF: __output+178j
					; __output+17Cj
		jmp	loc_1515F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_150AA:				; CODE XREF: __output+168j
		call	sub_15331
		lea	di, [bp+var_172+1]
		push	ss
		pop	es
		stosb
		dec	di
		mov	cx, 1
		jmp	loc_152A6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_150BB:				; CODE XREF: __output+16Cj
		call	sub_15345
		or	di, di
		jnz	short loc_150D4
		mov	ax, es
		or	ax, ax
		jnz	short loc_150D4
		push	ds
		pop	es
		mov	di, 4867h
		mov	cx, word_1A6DD
		jmp	loc_152A6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_150D4:				; CODE XREF: __output+19Aj
					; __output+1A0j
		push	di
		mov	cx, [bp+var_C]
		jcxz	short loc_150E1
		xor	al, al
		repne scasb
		jnz	short loc_150E1
		dec	di

loc_150E1:				; CODE XREF: __output+1B2j
					; __output+1B8j
		pop	cx
		sub	di, cx
		xchg	cx, di
		jmp	loc_152A6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_150E9:				; CODE XREF: __output+170j
		call	sub_15345
		mov	ax, [bp+var_8]
		stosw
		test	byte ptr [bp+var_4], 10h
		jz	short loc_150F9
		xor	ax, ax
		stosw

loc_150F9:				; CODE XREF: __output+1CEj
		jmp	loc_14F3A
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_150FC:				; CODE XREF: __output+174j
		test	byte ptr [bp+var_4], 30h
		jnz	short loc_15107
		call	sub_15331
		jmp	short loc_15140
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15107:				; CODE XREF: __output+1DAj
		call	sub_15339
		test	byte ptr [bp+var_4+1], 18h
		jnz	short loc_15140
		mov	[bp+var_1], 7
		mov	cx, 10h
		push	ss
		pop	es
		push	dx
		xor	dx, dx
		lea	di, [bp+var_169]
		mov	si, 4
		call	sub_153C6
		mov	cx, 10h
		lea	di, [bp+var_16E]
		pop	ax
		xor	dx, dx
		mov	si, 4
		call	sub_153C6
		mov	byte ptr [bp+var_16E+1], 3Ah ; ':'
		mov	cx, 9
		jmp	short loc_15158
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15140:				; CODE XREF: __output+1DFj
					; __output+1E8j
		mov	[bp+var_1], 7
		mov	cx, 10h
		push	ss
		pop	es
		xor	dx, dx
		lea	di, [bp+var_16E]
		mov	si, 4
		call	sub_153C6
		mov	cx, 4

loc_15158:				; CODE XREF: __output+218j
		lea	di, [bp+var_172+1]
		jmp	loc_152A6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1515F:				; CODE XREF: __output:loc_150A7j
		inc	[bp+var_12]

loc_15162:				; CODE XREF: __output+17Ej
		or	byte ptr [bp+var_4], 40h
		mov	al, [bp+var_2]
		or	al, 20h
		cbw
		mov	si, ax
		cmp	[bp+var_C], 0
		jg	short loc_15187
		jz	short loc_1517D
		mov	[bp+var_C], 6
		jmp	short loc_15187
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1517D:				; CODE XREF: __output+24Ej
		cmp	ax, 67h	; 'g'
		jnz	short loc_15187
		mov	[bp+var_C], 1

loc_15187:				; CODE XREF: __output+24Cj
					; __output+255j ...
		lea	di, [bp+var_172+1]
		push	[bp+var_12]
		push	[bp+var_C]
		push	si
		push	di
		push	[bp+arg_6]
		test	byte ptr [bp+var_4+1], 4
		jz	short loc_151A6
		call	off_1A6F6
		add	[bp+arg_6], 0Ah
		jmp	short loc_151AE
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_151A6:				; CODE XREF: __output+274j
		call	off_1A6E2
		add	[bp+arg_6], 8

loc_151AE:				; CODE XREF: __output+27Ej
		add	sp, 0Ah
		test	byte ptr [bp+var_4], 80h
		jz	short loc_151C5
		cmp	[bp+var_C], 0
		jnz	short loc_151C5
		push	di
		call	off_1A6EE
		add	sp, 2

loc_151C5:				; CODE XREF: __output+28Fj
					; __output+295j
		cmp	si, 67h	; 'g'
		jnz	short loc_151D9
		test	[bp+var_4], 80h
		jnz	short loc_151D9
		push	di
		call	off_1A6E6
		add	sp, 2

loc_151D9:				; CODE XREF: __output+2A2j
					; __output+2A9j
		push	ss
		pop	es
		cmp	byte ptr es:[di], 2Dh ;	'-'
		jnz	short loc_151E6
		inc	di
		or	byte ptr [bp+var_4+1], 1

loc_151E6:				; CODE XREF: __output+2B9j
		mov	cx, 0FFFFh
		push	di
		mov	al, 0
		repne scasb
		dec	di
		pop	cx
		sub	di, cx
		xchg	cx, di
		jmp	loc_152A6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_151F7:				; CODE XREF: __output+140j
					; __output+147j
		or	byte ptr [bp+var_4], 40h

loc_151FB:				; CODE XREF: __output+14Ej
		mov	[bp+var_6], 0Ah
		jmp	short loc_15236
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15201:				; CODE XREF: __output+155j
		mov	[bp+var_1], 7
		jmp	short loc_1520B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15207:				; CODE XREF: __output+15Cj
		mov	[bp+var_1], 27h	; '''

loc_1520B:				; CODE XREF: __output+2DFj
		test	byte ptr [bp+var_4], 80h
		jz	short loc_15222
		mov	[bp+var_10], 2
		mov	byte ptr [bp+var_E], 30h ; '0'
		mov	dl, 51h	; 'Q'
		add	dl, [bp+var_1]
		mov	byte ptr [bp+var_E+1], dl

loc_15222:				; CODE XREF: __output+2E9j
		mov	[bp+var_6], 10h
		jmp	short loc_15236
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15228:				; CODE XREF: __output+163j
		test	byte ptr [bp+var_4], 80h
		jz	short loc_15232
		or	byte ptr [bp+var_4+1], 2

loc_15232:				; CODE XREF: __output+306j
		mov	[bp+var_6], 8

loc_15236:				; CODE XREF: __output+2D9j
					; __output+300j
		test	byte ptr [bp+var_4], 10h
		jz	short loc_15241
		call	sub_15339
		jmp	short loc_1524F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15241:				; CODE XREF: __output+314j
		call	sub_15331
		test	byte ptr [bp+var_4], 40h
		jz	short loc_1524D
		cwd
		jmp	short loc_1524F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1524D:				; CODE XREF: __output+322j
		xor	dx, dx

loc_1524F:				; CODE XREF: __output+319j
					; __output+325j
		test	byte ptr [bp+var_4], 40h
		jz	short loc_15264
		or	dx, dx
		jge	short loc_15264
		or	byte ptr [bp+var_4+1], 1
		neg	ax
		adc	dx, 0
		neg	dx

loc_15264:				; CODE XREF: __output+32Dj
					; __output+331j
		cmp	[bp+var_C], 0
		jge	short loc_15271
		mov	[bp+var_C], 1
		jmp	short loc_15275
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15271:				; CODE XREF: __output+342j
		and	byte ptr [bp+var_4], 0F7h

loc_15275:				; CODE XREF: __output+349j
		mov	bx, ax
		or	bx, dx
		jnz	short loc_15280
		mov	[bp+var_10], 0

loc_15280:				; CODE XREF: __output+353j
		lea	di, [bp+var_15]
		push	ss
		pop	es
		mov	cl, [bp+var_6]
		xor	ch, ch
		mov	si, [bp+var_C]
		call	sub_153C6
		test	byte ptr [bp+var_4+1], 2
		jz	short loc_152A4
		jcxz	short loc_1529E
		cmp	byte ptr es:[di], 30h ;	'0'
		jz	short loc_152A4

loc_1529E:				; CODE XREF: __output+370j
		dec	di
		mov	byte ptr es:[di], 30h ;	'0'
		inc	cx

loc_152A4:				; CODE XREF: __output+36Ej
					; __output+376j
		jmp	short $+2

loc_152A6:				; CODE XREF: __output+192j
					; __output+1ABj ...
		test	byte ptr [bp+var_4], 40h
		jz	short loc_152DD
		test	byte ptr [bp+var_4+1], 1
		jz	short loc_152BD
		mov	byte ptr [bp+var_E], 2Dh ; '-'
		mov	[bp+var_10], 1
		jmp	short loc_152DD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_152BD:				; CODE XREF: __output+38Aj
		test	byte ptr [bp+var_4], 1
		jz	short loc_152CE
		mov	byte ptr [bp+var_E], 2Bh ; '+'
		mov	[bp+var_10], 1
		jmp	short loc_152DD
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_152CE:				; CODE XREF: __output+39Bj
		test	byte ptr [bp+var_4], 2
		jz	short loc_152DD
		mov	byte ptr [bp+var_E], 20h ; ' '
		mov	[bp+var_10], 1

loc_152DD:				; CODE XREF: __output+384j
					; __output+395j ...
		mov	ax, [bp+var_A]
		sub	ax, cx
		sub	ax, [bp+var_10]
		jge	short loc_152E9
		xor	ax, ax

loc_152E9:				; CODE XREF: __output+3BFj
		push	es
		push	di
		push	cx
		test	byte ptr [bp+var_4], 0Ch
		jnz	short loc_152F9
		mov	cx, ax
		mov	dl, 20h	; ' '
		call	sub_153AA

loc_152F9:				; CODE XREF: __output+3CAj
		push	ax
		push	ss
		pop	es
		lea	di, [bp+var_E]
		mov	cx, [bp+var_10]
		call	sub_1538C
		pop	ax
		test	byte ptr [bp+var_4], 8
		jz	short loc_15319
		test	byte ptr [bp+var_4], 4
		jnz	short loc_15319
		mov	cx, ax
		mov	dl, 30h	; '0'
		call	sub_153AA

loc_15319:				; CODE XREF: __output+3E4j
					; __output+3EAj
		pop	cx
		pop	di
		pop	es
		assume es:nothing
		push	ax
		call	sub_1538C
		pop	ax
		test	byte ptr [bp+var_4], 4
		jz	short loc_1532E
		mov	cx, ax
		mov	dl, 20h	; ' '
		call	sub_153AA

loc_1532E:				; CODE XREF: __output+3FFj
		jmp	loc_14F3A
__output	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

sub_15331	proc near		; CODE XREF: __output+B2p __output+E6p ...
		mov	si, [bp+0Ah]
		lodsw
		mov	[bp+0Ah], si
		retn
sub_15331	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

sub_15339	proc near		; CODE XREF: __output:loc_15107p
					; __output+316p ...
		mov	si, [bp+0Ah]
		lodsw
		mov	dx, ax
		lodsw
		xchg	ax, dx
		mov	[bp+0Ah], si
		retn
sub_15339	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

sub_15345	proc near		; CODE XREF: __output:loc_150BBp
					; __output:loc_150E9p
		test	byte ptr [bp-4], 20h
		jz	short loc_15353
		call	sub_15339
		mov	es, dx
		mov	di, ax
		retn
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15353:				; CODE XREF: sub_15345+4j
		call	sub_15331
		mov	di, ax
		or	ax, ax
		jnz	short loc_1535F
		mov	es, ax
		retn
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1535F:				; CODE XREF: sub_15345+15j
		push	ds
		pop	es
		assume es:dseg
		retn
sub_15345	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

sub_15362	proc near		; CODE XREF: sub_1538C+Cp sub_153AA+Ap
		cbw
		push	di
		mov	bx, [bp+6]
		dec	word ptr [bx+2]
		js	short loc_15376
		mov	di, [bx]
		inc	word ptr [bx]
		mov	[di], al

loc_15372:				; CODE XREF: sub_15362+26j
		xor	ax, ax

loc_15374:				; CODE XREF: sub_15362+28j
		pop	di
		retn
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15376:				; CODE XREF: sub_15362+8j
		push	es
		push	cx
		push	dx
		push	bx		; FILE *
		push	ax		; int
		push	cs
		call	near ptr __flsbuf
		add	sp, 4
		pop	dx
		pop	cx
		pop	es
		assume es:nothing
		cmp	ax, 0FFFFh
		jnz	short loc_15372
		jmp	short loc_15374
sub_15362	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

sub_1538C	proc near		; CODE XREF: __output+3DCp
					; __output+3F7p
		jcxz	short locret_153A9
		mov	si, di
		add	[bp-8],	cx
		push	di
		xor	di, di

loc_15396:				; CODE XREF: sub_1538C+11j
		lods	byte ptr es:[si]
		call	sub_15362
		or	di, ax
		loop	loc_15396
		or	di, di
		pop	di
		jz	short locret_153A9
		mov	word ptr [bp-8], 0FFFFh

locret_153A9:				; CODE XREF: sub_1538Cj sub_1538C+16j
		retn
sub_1538C	endp

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

sub_153AA	proc near		; CODE XREF: __output+5Dp
					; __output+3D0p ...
		jcxz	short locret_153C5
		add	[bp-8],	cx
		push	di
		xor	di, di

loc_153B2:				; CODE XREF: sub_153AA+Fj
		mov	al, dl
		call	sub_15362
		or	di, ax
		loop	loc_153B2
		or	di, di
		pop	di
		jz	short locret_153C5
		mov	word ptr [bp-8], 0FFFFh

locret_153C5:				; CODE XREF: sub_153AAj sub_153AA+14j
		retn
sub_153AA	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

sub_153C6	proc near		; CODE XREF: __output+1FDp
					; __output+20Dp ...
		std
		push	di
		xchg	ax, bx

loc_153C9:				; CODE XREF: sub_153C6+29j
		or	si, si
		jg	short loc_153D7
		or	bx, bx
		jnz	short loc_153D7
		or	dx, dx
		jnz	short loc_153D7
		jmp	short loc_153F1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_153D7:				; CODE XREF: sub_153C6+5j sub_153C6+9j ...
		xchg	ax, dx
		xor	dx, dx
		div	cx
		xchg	ax, bx
		div	cx
		xchg	ax, dx
		xchg	dx, bx
		add	al, 30h	; '0'
		cmp	al, 39h	; '9'
		jbe	short loc_153EB
		add	al, [bp-1]

loc_153EB:				; CODE XREF: sub_153C6+20j
		stosb
		mov	ax, dx
		dec	si
		jmp	short loc_153C9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_153F1:				; CODE XREF: sub_153C6+Fj
		pop	cx
		sub	cx, di
		inc	di
		cld
		retn
sub_153C6	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR __output

loc_153F7:				; CODE XREF: __output+2Bj
		pop	di
		pop	si
		mov	sp, bp
		pop	bp
		retf
; END OF FUNCTION CHUNK	FOR __output
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

__getstream	proc far		; CODE XREF: __fsopen:loc_13C00P
		push	di
		push	si
		mov	si, 46C6h
		sub	di, di
		jmp	short loc_1540B
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_15408:				; CODE XREF: __getstream+17j
		add	si, 8

loc_1540B:				; CODE XREF: __getstream+7j
		cmp	word_1A676, si
		jb	short loc_1542D
		test	byte ptr [si+6], 83h
		jnz	short loc_15408
		mov	word ptr [si+2], 0
		mov	byte ptr [si+6], 0
		sub	ax, ax
		mov	[si+4],	ax
		mov	[si], ax
		mov	byte ptr [si+7], 0FFh
		mov	di, si

loc_1542D:				; CODE XREF: __getstream+11j
		mov	ax, di
		pop	si
		pop	di
		retf
__getstream	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl close(int)
_close		proc far		; CODE XREF: _fclose+45P

arg_2		= word ptr  6

		push	bp
		mov	bp, sp
		mov	bx, [bp+arg_2]
		cmp	bx, word_1A3E5
		jb	short loc_15444
		mov	ax, 900h
		stc
		jmp	short loc_1544F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15444:				; CODE XREF: _close+Aj
		mov	ah, 3Eh
		int	21h		; DOS -	2+ - CLOSE A FILE WITH HANDLE
					; BX = file handle
		jb	short loc_1544F
		mov	byte ptr [bx+4577h], 0

loc_1544F:				; CODE XREF: _close+10j _close+16j
		jmp	__dosret0
_close		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; __int32 __cdecl lseek(int,__int32,int)
_lseek		proc far		; CODE XREF: _fseek+62P _rewind+35P ...

var_4		= word ptr -4
var_2		= word ptr -2
arg_2		= word ptr  6
arg_4		= word ptr  8
arg_6		= word ptr  0Ah
arg_8		= word ptr  0Ch

		push	bp
		mov	bp, sp
		sub	sp, 4
		mov	bx, [bp+arg_2]
		cmp	bx, word_1A3E5
		jb	short loc_15466
		mov	ax, 900h
		jmp	short loc_15490
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15466:				; CODE XREF: _lseek+Dj
		test	[bp+arg_6], 8000h
		jz	short loc_154B5
		cmp	[bp+arg_8], 0
		jz	short loc_1548D
		xor	cx, cx
		mov	dx, cx
		mov	ax, 4201h
		int	21h		; DOS -	2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
					; AL = method: offset from present location
		jb	short loc_154C9
		test	[bp+arg_8], 2
		jnz	short loc_15493
		add	ax, [bp+arg_4]
		adc	dx, [bp+arg_6]
		jns	short loc_154B5

loc_1548D:				; CODE XREF: _lseek+1Fj _lseek+61j
		mov	ax, 1600h

loc_15490:				; CODE XREF: _lseek+12j
		stc
		jmp	short loc_154C9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15493:				; CODE XREF: _lseek+31j
		mov	[bp+var_2], dx
		mov	[bp+var_4], ax
		mov	dx, cx
		mov	ax, 4202h
		int	21h		; DOS -	2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
					; AL = method: offset from end of file
		add	ax, [bp+arg_4]
		adc	dx, [bp+arg_6]
		jns	short loc_154B5
		mov	cx, [bp+var_2]
		mov	dx, [bp+var_4]
		mov	ax, 4200h
		int	21h		; DOS -	2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
					; AL = method: offset from beginning of	file
		jmp	short loc_1548D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_154B5:				; CODE XREF: _lseek+19j _lseek+39j ...
		mov	dx, [bp+arg_4]
		mov	cx, [bp+arg_6]
		mov	al, byte ptr [bp+arg_8]
		mov	ah, 42h
		int	21h		; DOS -	2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
					; AL = method:
					; 0-from beginnig,1-from current,2-from	end
		jb	short loc_154C9
		and	byte ptr [bx+4577h], 0FDh

loc_154C9:				; CODE XREF: _lseek+2Aj _lseek+3Fj ...
		jmp	__dosretax
_lseek		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl read(int,void *,unsigned int)
_read		proc far		; CODE XREF: _fread+90p __filbuf+44p

var_1		= word ptr -1
arg_2		= word ptr  6
arg_4		= word ptr  8
arg_6		= word ptr  0Ah

		push	bp
		mov	bp, sp
		sub	sp, 2
		mov	bx, [bp+arg_2]
		cmp	bx, word_1A3E5
		jb	short loc_154E1
		stc
		mov	ax, 900h
		jmp	short loc_15549
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_154E1:				; CODE XREF: _read+Dj
		xor	ax, ax
		mov	cx, [bp+arg_6]
		jcxz	short loc_15549
		test	byte ptr [bx+4577h], 2
		jnz	short loc_15549
		cmp	word_1A706, 0D6D6h
		jnz	short loc_154FB
		call	off_1A708

loc_154FB:				; CODE XREF: _read+29j
		mov	cx, [bp+arg_6]
		mov	dx, [bp+arg_4]
		mov	ah, 3Fh
		int	21h		; DOS -	2+ - READ FROM FILE WITH HANDLE
					; BX = file handle, CX = number	of bytes to read
					; DS:DX	-> buffer
		jnb	short loc_1550B
		mov	ah, 9
		jmp	short loc_15549
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1550B:				; CODE XREF: _read+39j
		test	byte ptr [bx+4577h], 80h
		jz	short loc_15549
		and	byte ptr [bx+4577h], 0FBh
		push	si
		push	di
		cld
		mov	si, dx
		mov	di, dx
		mov	cx, ax
		jcxz	short loc_15547
		mov	ah, 0Dh
		cmp	byte ptr [si], 0Ah
		jnz	short loc_1552E
		or	byte ptr [bx+4577h], 4

loc_1552E:				; CODE XREF: _read+5Bj
					; _read:loc_15541j
		lodsb
		cmp	al, ah
		jz	short loc_1554C
		cmp	al, 1Ah
		jnz	short loc_1553E
		or	byte ptr [bx+4577h], 2
		jmp	short loc_15543
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1553E:				; CODE XREF: _read+69j	_read+8Aj ...
		mov	[di], al
		inc	di

loc_15541:				; CODE XREF: _read+88j	_read+DFj
		loop	loc_1552E

loc_15543:				; CODE XREF: _read+70j
		mov	ax, di
		sub	ax, dx

loc_15547:				; CODE XREF: _read+54j	_read+A5j ...
		pop	di
		pop	si

loc_15549:				; CODE XREF: _read+13j	_read+1Aj ...
		jmp	__dosretax
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1554C:				; CODE XREF: _read+65j
		cmp	cx, 1
		jz	short loc_15558
		cmp	byte ptr [si], 0Ah
		jz	short loc_15541
		jmp	short loc_1553E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15558:				; CODE XREF: _read+83j
		test	byte ptr [bx+4577h], 40h
		jz	short loc_15577
		mov	ax, 4400h
		int	21h		; DOS -	2+ - IOCTL - GET DEVICE	INFORMATION
					; BX = file or device handle
		test	dx, 20h
		jnz	short loc_15573
		lea	dx, [bp+var_1]
		mov	ah, 3Fh
		int	21h		; DOS -	2+ - READ FROM FILE WITH HANDLE
					; BX = file handle, CX = number	of bytes to read
					; DS:DX	-> buffer
		jb	short loc_15547

loc_15573:				; CODE XREF: _read+9Cj	_read+E7j
		mov	al, 0Ah
		jmp	short loc_155A3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15577:				; CODE XREF: _read+91j
		mov	byte ptr [bp+var_1], 0
		lea	dx, [bp+var_1]
		mov	ah, 3Fh
		int	21h		; DOS -	2+ - READ FROM FILE WITH HANDLE
					; BX = file handle, CX = number	of bytes to read
					; DS:DX	-> buffer
		jb	short loc_15547
		or	ax, ax
		jz	short loc_155A1
		cmp	[bp+arg_6], 1
		jz	short loc_155AD

loc_1558E:				; CODE XREF: _read+E5j
		mov	cx, 0FFFFh
		mov	dx, cx
		mov	ax, 4201h
		int	21h		; DOS -	2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
					; AL = method: offset from present location
		mov	cx, 1
		cmp	byte ptr [bp+var_1], 0Ah
		jz	short loc_155A8

loc_155A1:				; CODE XREF: _read+BAj
		mov	al, 0Dh

loc_155A3:				; CODE XREF: _read+A9j
		mov	dx, [bp+arg_4]
		jmp	short loc_1553E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_155A8:				; CODE XREF: _read+D3j
		mov	dx, [bp+arg_4]
		jmp	short loc_15541
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_155AD:				; CODE XREF: _read+C0j
		cmp	byte ptr [bp+var_1], 0Ah
		jnz	short loc_1558E
		jmp	short loc_15573
_read		endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl write(int,const void *,unsigned int)
_write		proc far		; CODE XREF: _fwrite:loc_13DCFp
					; __flsbuf+6Dp	...

var_8		= word ptr -8
var_4		= word ptr -4
var_2		= word ptr -2
arg_2		= word ptr  6
arg_4		= word ptr  0Ah

; FUNCTION CHUNK AT 1E42 SIZE 00000034 BYTES

		push	bp
		mov	bp, sp
		sub	sp, 8
		mov	bx, [bp+arg_2]
		cmp	bx, word_1A3E5
		jb	short loc_155CC
		mov	ax, 900h
		stc

loc_155C9:				; CODE XREF: _write+32j
		jmp	__dosretax
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_155CC:				; CODE XREF: _write+Dj
		cmp	word_1A706, 0D6D6h
		jnz	short loc_155D8
		call	off_1A708

loc_155D8:				; CODE XREF: _write+1Cj
		test	byte ptr [bx+4577h], 20h
		jz	short loc_155EA
		mov	ax, 4202h
		xor	cx, cx
		mov	dx, cx
		int	21h		; DOS -	2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
					; AL = method: offset from end of file
		jb	short loc_155C9

loc_155EA:				; CODE XREF: _write+27j
		test	byte ptr [bx+4577h], 80h
		jz	short loc_15661
		mov	dx, [bp+8]
		push	ds
		pop	es
		assume es:dseg
		xor	ax, ax
		mov	[bp+var_2], ax
		mov	[bp+var_4], ax
		cld
		push	di
		push	si
		mov	di, dx
		mov	si, dx
		mov	[bp+var_8], sp
		mov	cx, [bp+arg_4]
		jcxz	short loc_15647
		mov	al, 0Ah
		repne scasb
		jnz	short loc_1565F
		call	sub_15C5E	; ä-ï _stackavail
		cmp	ax, 0A8h ; '¨'
		jbe	short loc_15663
		sub	sp, 2
		mov	bx, sp
		mov	dx, 200h
		cmp	ax, 228h
		jnb	short loc_1562D
		mov	dx, 80h	; '€'

loc_1562D:				; CODE XREF: _write+72j
		sub	sp, dx
		mov	dx, sp
		mov	di, dx
		push	ss
		pop	es
		mov	cx, [bp+arg_4]

loc_15638:				; CODE XREF: _write+8Cj
		lodsb
		cmp	al, 0Ah
		jz	short loc_15649

loc_1563D:				; CODE XREF: _write+A2j
		cmp	di, bx
		jz	short loc_1565A

loc_15641:				; CODE XREF: _write+A7j
		stosb
		loop	loc_15638
		call	near ptr sub_1566A

loc_15647:				; CODE XREF: _write+55j
		jmp	short loc_156B4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15649:				; CODE XREF: _write+85j
		mov	al, 0Dh
		cmp	di, bx
		jnz	short loc_15652
		call	near ptr sub_1566A

loc_15652:				; CODE XREF: _write+97j
		stosb
		mov	al, 0Ah
		inc	[bp+var_4]
		jmp	short loc_1563D
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1565A:				; CODE XREF: _write+89j
		call	near ptr sub_1566A
		jmp	short loc_15641
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1565F:				; CODE XREF: _write+5Bj
		pop	si
		pop	di

loc_15661:				; CODE XREF: _write+39j
		jmp	short loc_156C2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15663:				; CODE XREF: _write+65j
		mov	ax, 0FFFCh
		push	cs
		call	near ptr __aFchkstk
_write		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

sub_1566A	proc far		; CODE XREF: _write+8Ep _write+99p ...
		push	ax
		push	bx
		push	cx
		mov	cx, di
		sub	cx, dx
		jcxz	short loc_15685
		push	cx
		mov	bx, [bp+6]
		mov	ah, 40h
		int	21h		; DOS -	2+ - WRITE TO FILE WITH	HANDLE
					; BX = file handle, CX = number	of bytes to write, DS:DX -> buffer
		pop	cx
		jb	short loc_1568B
		add	[bp-2],	ax
		cmp	cx, ax
		ja	short loc_1568B

loc_15685:				; CODE XREF: sub_1566A+7j
		pop	cx
		pop	bx
		pop	ax
		mov	di, dx
		retn
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1568B:				; CODE XREF: sub_1566A+12j
					; sub_1566A+19j
		lahf
		add	sp, 8
		cmp	word ptr [bp-2], 0
		jnz	short loc_156B4
		sahf
		jnb	short loc_1569C
		mov	ah, 9
		jmp	short loc_156BA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1569C:				; CODE XREF: sub_1566A+2Cj
		test	byte ptr [bx+4577h], 40h
		jz	short loc_156AE
		mov	bx, [bp+8]
		cmp	byte ptr [bx], 1Ah
		jnz	short loc_156AE
		clc
		jmp	short loc_156BA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_156AE:				; CODE XREF: sub_1566A+37j
					; sub_1566A+3Fj
		stc
		mov	ax, 1C00h
		jmp	short loc_156BA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_156B4:				; CODE XREF: _write:loc_15647j
					; sub_1566A+29j
		mov	ax, [bp-2]
		sub	ax, [bp-4]

loc_156BA:				; CODE XREF: sub_1566A+30j
					; sub_1566A+42j ...
		mov	sp, [bp-8]
		pop	si
		pop	di

loc_156BF:				; CODE XREF: _write+123j _write+127j ...
		jmp	__dosretax
sub_1566A	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR _write

loc_156C2:				; CODE XREF: _write:loc_15661j
		mov	cx, [bp+arg_4]
		or	cx, cx
		jnz	short loc_156CE
		mov	ax, cx
		jmp	__dosretax
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_156CE:				; CODE XREF: _write+111j
		mov	dx, [bp+8]
		mov	ah, 40h
		int	21h		; DOS -	2+ - WRITE TO FILE WITH	HANDLE
					; BX = file handle, CX = number	of bytes to write, DS:DX -> buffer
		jnb	short loc_156DB
		mov	ah, 9
		jmp	short loc_156BF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_156DB:				; CODE XREF: _write+11Fj
		or	ax, ax
		jnz	short loc_156BF
		test	byte ptr [bx+4577h], 40h
		jz	short loc_156F0
		mov	bx, dx
		cmp	byte ptr [bx], 1Ah
		jnz	short loc_156F0
		clc
		jmp	short loc_156BF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_156F0:				; CODE XREF: _write+12Ej _write+135j
		stc
		mov	ax, 1C00h
		jmp	short loc_156BF
; END OF FUNCTION CHUNK	FOR _write

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_156F6	proc far		; CODE XREF: sub_13FB8j

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		push	di
		push	si
		mov	si, [bp+arg_0]
		xor	ax, ax
		cwd
		xor	bx, bx

loc_15703:				; CODE XREF: sub_156F6+10j
					; sub_156F6+14j
		lodsb
		cmp	al, 20h	; ' '
		jz	short loc_15703
		cmp	al, 9
		jz	short loc_15703
		push	ax
		cmp	al, 2Dh	; '-'
		jz	short loc_15715
		cmp	al, 2Bh	; '+'
		jnz	short loc_15716

loc_15715:				; CODE XREF: sub_156F6+19j
					; sub_156F6+41j
		lodsb

loc_15716:				; CODE XREF: sub_156F6+1Dj
		cmp	al, 39h	; '9'
		ja	short loc_15739
		sub	al, 30h	; '0'
		jb	short loc_15739
		shl	bx, 1
		rcl	dx, 1
		mov	cx, bx
		mov	di, dx
		shl	bx, 1
		rcl	dx, 1
		shl	bx, 1
		rcl	dx, 1
		add	bx, cx
		adc	dx, di
		add	bx, ax
		adc	dx, 0
		jmp	short loc_15715
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15739:				; CODE XREF: sub_156F6+22j
					; sub_156F6+26j
		pop	ax
		cmp	al, 2Dh	; '-'
		xchg	ax, bx
		jnz	short loc_15746
		neg	ax
		adc	dx, 0
		neg	dx

loc_15746:				; CODE XREF: sub_156F6+47j
		pop	si
		pop	di
		pop	bp
		retf
sub_156F6	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

__aFahdiff	proc far		; CODE XREF: _memmove+1AP

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp
		mov	bp, sp
		mov	ax, [bp+arg_2]
		sub	ax, [bp+arg_6]
		sbb	dx, dx
		add	ax, ax
		adc	dx, dx
		add	ax, ax
		adc	dx, dx
		add	ax, ax
		adc	dx, dx
		add	ax, ax
		adc	dx, dx
		add	ax, [bp+arg_0]
		adc	dx, 0
		sub	ax, [bp+arg_4]
		sbb	dx, 0
		pop	bp
		retf	8
__aFahdiff	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; __int32 __cdecl ftell(FILE *)
_ftell		proc far		; CODE XREF: _fgetpos+6P _fseek+2DP

var_E		= word ptr -0Eh
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_8		= word ptr -8
var_6		= word ptr -6
var_4		= dword	ptr -4
arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		sub	sp, 0Eh
		push	di
		push	si
		mov	si, [bp+arg_0]
		mov	ax, si
		sub	ax, 46C6h
		add	ax, 4766h
		mov	[bp+var_E], ax
		mov	al, [si+7]
		sub	ah, ah
		mov	[bp+var_A], ax
		cmp	word ptr [si+2], 0
		jge	short loc_1579F
		mov	word ptr [si+2], 0

loc_1579F:				; CODE XREF: _ftell+22j
		mov	ax, 1
		push	ax		; int
		sub	ax, ax
		push	ax
		push	ax		; __int32
		push	[bp+var_A]	; int
		call	_lseek
		add	sp, 8
		mov	word ptr [bp+var_4], ax
		mov	word ptr [bp+var_4+2], dx
		or	dx, dx
		jge	short loc_157C4

loc_157BC:				; CODE XREF: _ftell+BAj
		mov	ax, 0FFFFh
		cwd
		jmp	loc_158E6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_157C4:				; CODE XREF: _ftell+44j
		test	byte ptr [si+6], 8
		jnz	short loc_157E8
		mov	bx, [bp+var_E]
		test	byte ptr [bx], 1
		jnz	short loc_157E8
		mov	ax, [si+2]
		cwd
		mov	cx, ax
		mov	bx, dx
		mov	ax, word ptr [bp+var_4]
		mov	dx, word ptr [bp+var_4+2]
		sub	ax, cx
		sbb	dx, bx
		jmp	loc_158E6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_157E8:				; CODE XREF: _ftell+52j _ftell+5Aj
		mov	ax, [si]
		sub	ax, [si+4]
		mov	[bp+var_8], ax
		test	byte ptr [si+6], 3
		jz	short loc_15824
		mov	bx, [bp+var_A]
		test	byte ptr [bx+4577h], 80h
		jz	short loc_15813
		mov	di, [si+4]
		jmp	short loc_1580F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_15806:				; CODE XREF: _ftell+9Bj
		cmp	byte ptr [di], 0Ah
		jnz	short loc_1580E
		inc	[bp+var_8]

loc_1580E:				; CODE XREF: _ftell+93j
		inc	di

loc_1580F:				; CODE XREF: _ftell+8Dj
		cmp	[si], di
		ja	short loc_15806

loc_15813:				; CODE XREF: _ftell+88j _ftell+B2j
		mov	ax, word ptr [bp+var_4+2]
		or	ax, word ptr [bp+var_4]
		jnz	short loc_15832
		mov	ax, [bp+var_8]
		sub	dx, dx
		jmp	loc_158E6
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_15824:				; CODE XREF: _ftell+7Ej
		test	byte ptr [si+6], 80h
		jnz	short loc_15813
		mov	word_1A3D8, 16h
		jmp	short loc_157BC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15832:				; CODE XREF: _ftell+A3j
		test	byte ptr [si+6], 1
		jnz	short loc_1583B
		jmp	loc_158DA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1583B:				; CODE XREF: _ftell+C0j
		cmp	word ptr [si+2], 0
		jnz	short loc_1584A
		mov	[bp+var_8], 0
		jmp	loc_158DA
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_1584A:				; CODE XREF: _ftell+C9j
		mov	ax, [si]
		sub	ax, [si+4]
		add	ax, [si+2]
		mov	[bp+var_C], ax
		mov	bx, [bp+var_A]
		test	byte ptr [bx+4577h], 80h
		jz	short loc_158CF
		mov	cx, 2
		push	cx		; int
		sub	cx, cx
		push	cx
		push	cx		; __int32
		push	bx		; int
		call	_lseek
		add	sp, 8
		cmp	ax, word ptr [bp+var_4]
		jnz	short loc_158A4
		cmp	dx, word ptr [bp+var_4+2]
		jnz	short loc_158A4
		mov	ax, [bp+var_C]
		add	ax, [si+4]
		mov	[bp+var_6], ax
		mov	di, [si+4]
		jmp	short loc_15891
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15888:				; CODE XREF: _ftell+11Ej
		cmp	byte ptr [di], 0Ah
		jnz	short loc_15890
		inc	[bp+var_C]

loc_15890:				; CODE XREF: _ftell+115j
		inc	di

loc_15891:				; CODE XREF: _ftell+110j
		cmp	[bp+var_6], di
		ja	short loc_15888
		mov	bx, [bp+var_E]
		test	byte ptr [bx], 20h
		jz	short loc_158CF
		inc	[bp+var_C]
		jmp	short loc_158CF
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_158A4:				; CODE XREF: _ftell+FDj _ftell+102j
		sub	ax, ax
		push	ax		; int
		push	word ptr [bp+var_4+2]
		push	word ptr [bp+var_4] ; __int32
		push	[bp+var_A]	; int
		call	_lseek
		add	sp, 8
		mov	bx, [bp+var_E]
		mov	ax, [bx+2]
		mov	[bp+var_C], ax
		mov	bx, [bp+var_A]
		test	byte ptr [bx+4577h], 4
		jz	short loc_158CF
		inc	ax
		mov	[bp+var_C], ax

loc_158CF:				; CODE XREF: _ftell+E7j _ftell+126j ...
		mov	ax, [bp+var_C]
		sub	dx, dx
		sub	word ptr [bp+var_4], ax
		sbb	word ptr [bp+var_4+2], dx

loc_158DA:				; CODE XREF: _ftell+C2j _ftell+D0j
		mov	ax, word ptr [bp+var_4]
		mov	dx, word ptr [bp+var_4+2]
		add	ax, [bp+var_8]
		adc	dx, 0

loc_158E6:				; CODE XREF: _ftell+4Aj _ftell+6Ej ...
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retf
_ftell		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int __cdecl setvbuf(FILE *,char *,int,size_t)
_setvbuf	proc far		; CODE XREF: _setbuf+23P

var_2		= word ptr -2
arg_0		= word ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp
		mov	bp, sp
		sub	sp, 2
		push	di
		push	si
		mov	[bp+var_2], 0
		cmp	[bp+arg_4], 4
		jz	short loc_1591E
		cmp	[bp+arg_6], 0
		jz	short loc_15918
		cmp	[bp+arg_6], 7FFFh
		ja	short loc_15918
		cmp	[bp+arg_4], 0
		jz	short loc_1591E
		cmp	[bp+arg_4], 40h	; '@'
		jz	short loc_1591E

loc_15918:				; CODE XREF: _setvbuf+17j _setvbuf+1Ej
		mov	ax, 0FFFFh
		jmp	loc_159A5
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_1591E:				; CODE XREF: _setvbuf+11j _setvbuf+24j ...
		mov	si, [bp+arg_0]
		mov	di, si
		sub	di, 46C6h
		add	di, 4766h
		push	si		; FILE *
		call	_fflush
		add	sp, 2
		push	si
		call	__freebuf
		add	sp, 2
		test	byte ptr [bp+arg_4], 4
		jz	short loc_15956
		or	byte ptr [si+6], 4
		mov	byte ptr [di], 0
		lea	ax, [di+1]
		mov	[bp+8],	ax
		mov	[bp+arg_6], 1
		jmp	short loc_1598F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_15956:				; CODE XREF: _setvbuf+53j
		cmp	word ptr [bp+8], 0
		jnz	short loc_15984
		push	[bp+arg_6]
		call	sub_15C72	; íâ  äã­ªæ¨ï -	ç¨áâ(r) malloc,¯à¨­¨¬ ¥â (r)¤¨­ WORD- à£ã¬¥­â,
					; á¬. mymall_MSC6.txt
		add	sp, 2
		mov	[bp+8],	ax
		or	ax, ax
		jnz	short loc_15976
		mov	[bp+var_2], 0FFFFh
		jmp	short loc_159A2
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_15976:				; CODE XREF: _setvbuf+80j
		and	byte ptr [si+6], 0FBh
		or	byte ptr [si+6], 8
		mov	byte ptr [di], 0
		jmp	short loc_1598F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_15984:				; CODE XREF: _setvbuf+6Ej
		inc	word_1A6E0
		and	byte ptr [si+6], 0F3h
		mov	byte ptr [di], 1

loc_1598F:				; CODE XREF: _setvbuf+67j _setvbuf+95j
		mov	ax, [bp+arg_6]
		mov	[di+2],	ax
		mov	ax, [bp+8]
		mov	[si+4],	ax
		mov	[si], ax
		mov	word ptr [si+2], 0

loc_159A2:				; CODE XREF: _setvbuf+87j
		mov	ax, [bp+var_2]

loc_159A5:				; CODE XREF: _setvbuf+2Fj
		pop	si
		pop	di
		mov	sp, bp
		pop	bp
		retf
_setvbuf	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; void *__cdecl	memcpy_0(void *,const void *,size_t)
_memcpy_0	proc far		; CODE XREF: _fread+5Bp _fwrite+5Bp

arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah

		push	bp
		mov	bp, sp
		mov	dx, di
		mov	bx, si
		mov	ax, ds
		mov	es, ax
		mov	si, [bp+arg_2]
		mov	di, [bp+arg_0]
		mov	ax, di
		mov	cx, [bp+arg_4]
		jcxz	short loc_159D2
		test	al, 1
		jz	short loc_159CA
		movsb
		dec	cx

loc_159CA:				; CODE XREF: _memcpy_0+1Aj
		shr	cx, 1
		rep movsw
		adc	cx, cx
		rep movsb

loc_159D2:				; CODE XREF: _memcpy_0+16j
		mov	si, bx
		mov	di, dx
		pop	bp
		retf
_memcpy_0	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
; START	OF FUNCTION CHUNK FOR _ltoa

__cltoasub:				; CODE XREF: _ltoa+7j
		mov	cx, [bp+arg_8]
		mov	ax, [bp+arg_2]
		mov	dx, [bp+arg_4]
		mov	di, [bp+arg_6]
; END OF FUNCTION CHUNK	FOR _ltoa
; START	OF FUNCTION CHUNK FOR _itoa

__cxtoa:				; CODE XREF: _itoa+18j
		push	di
		push	ds
		pop	es
		cld
		xchg	ax, bx
		or	al, al
		jz	short loc_15A00
		cmp	cx, 0Ah
		jnz	short loc_15A00
		or	dx, dx
		jns	short loc_15A00
		mov	al, 2Dh	; '-'
		stosb
		neg	bx
		adc	dx, 0
		neg	dx

loc_15A00:				; CODE XREF: _itoa+1A2Fj _itoa+1A34j ...
		mov	si, di

loc_15A02:				; CODE XREF: _itoa+1A62j
		xchg	ax, dx
		xor	dx, dx
		or	ax, ax
		jz	short loc_15A0B
		div	cx

loc_15A0B:				; CODE XREF: _itoa+1A4Bj
		xchg	ax, bx
		div	cx
		xchg	ax, dx
		xchg	dx, bx
		add	al, 30h	; '0'
		cmp	al, 39h	; '9'
		jbe	short loc_15A19
		add	al, 27h	; '''

loc_15A19:				; CODE XREF: _itoa+1A59j
		stosb
		mov	ax, dx
		or	ax, bx
		jnz	short loc_15A02
		mov	[di], al

loc_15A22:				; CODE XREF: _itoa+1A72j
		dec	di
		lodsb
		xchg	al, [di]
		mov	[si-1],	al
		lea	ax, [si+1]
		cmp	ax, di
		jb	short loc_15A22
		pop	ax
		pop	di
		pop	si
		mov	sp, bp
		pop	bp
		retf
; END OF FUNCTION CHUNK	FOR _itoa
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

__myalloc	proc far		; CODE XREF: __setenvp+37p
					; __setenvp+3Dp
		push	bx
		push	es
		push	cx
		mov	cx, 400h
		xchg	cx, word_1A702
		push	cx
		push	ax
		call	sub_15C72	; íâ  äã­ªæ¨ï -	ç¨áâ(r) malloc,¯à¨­¨¬ ¥â (r)¤¨­ WORD- à£ã¬¥­â,
					; á¬. mymall_MSC6.txt
		pop	bx
		pop	word_1A702
		pop	cx
		mov	dx, ds
		or	ax, ax
		jz	short loc_15A58
		pop	es
		assume es:nothing
		pop	bx
		retn
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15A58:				; CODE XREF: __myalloc+1Bj
		mov	ax, cx
		jmp	__amsg_exit
__myalloc	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

__getbuf	proc near		; CODE XREF: __filbuf+30p __flsbuf+83p

arg_0		= word ptr  4

		push	bp
		mov	bp, sp
		push	si
		mov	si, [bp+arg_0]
		mov	ax, 200h
		push	ax
		call	sub_15C72	; íâ  äã­ªæ¨ï -	ç¨áâ(r) malloc,¯à¨­¨¬ ¥â (r)¤¨­ WORD- à£ã¬¥­â,
					; á¬. mymall_MSC6.txt
		pop	cx
		mov	bx, si
		sub	bx, 46C6h
		add	bx, 4766h
		or	ax, ax
		jz	short loc_15A88
		or	byte ptr [si+6], 8
		mov	word ptr [bx+2], 200h
		jmp	short loc_15A94
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15A88:				; CODE XREF: __getbuf+1Dj
		or	byte ptr [si+6], 4
		mov	word ptr [bx+2], 1
		lea	ax, [bx+1]

loc_15A94:				; CODE XREF: __getbuf+28j
		mov	[si], ax
		mov	[si+4],	ax
		mov	word ptr [si+2], 0
		pop	si
		pop	bp
		retn
__getbuf	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function bp-based	frame

; int sopen(const char *,int,int,...)
_sopen		proc far		; CODE XREF: __openfile+9DP

var_4		= byte ptr -4
var_3		= byte ptr -3
var_2		= byte ptr -2
var_1		= word ptr -1
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

; FUNCTION CHUNK AT 124D SIZE 00000002 BYTES

		push	bp
		mov	bp, sp
		sub	sp, 4
		xor	bh, bh
		cmp	byte ptr word_1A3E0, 3
		jb	short loc_15AB4
		mov	bh, byte ptr [bp+arg_4]

loc_15AB4:				; CODE XREF: _sopen+Dj
		mov	ax, [bp+arg_6]
		mov	[bp+arg_4], ax
		jmp	short loc_15AC4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

; int open(const char *,int,...)
_open:
		push	bp
		mov	bp, sp
		sub	sp, 4
		xor	bh, bh

loc_15AC4:				; CODE XREF: _sopen+18j
		mov	[bp+var_2], bh
		mov	ax, [bp+arg_2]
		mov	cx, ax
		mov	[bp+var_4], 0
		test	ax, 8000h
		jnz	short loc_15AE5
		test	ax, 4000h
		jnz	short loc_15AE1
		test	byte_1A701, 80h
		jnz	short loc_15AE5

loc_15AE1:				; CODE XREF: _sopen+36j
		mov	[bp+var_4], 80h	; '€'

loc_15AE5:				; CODE XREF: _sopen+31j _sopen+3Dj
		mov	dx, [bp+arg_0]
		and	al, 3
		or	al, bh
		mov	ah, 3Dh
		int	21h		; DOS -	2+ - OPEN DISK FILE WITH HANDLE
					; DS:DX	-> ASCIZ filename
					; AL = access mode
					; 0 - read, 1 -	write, 2 - read	& write
		jnb	short loc_15B04
		cmp	ax, 2
		jnz	short loc_15B00
		test	cx, 100h
		jz	short loc_15B00
		jmp	loc_15B9F
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15B00:				; CODE XREF: _sopen+53j _sopen+59j ...
		stc
		jmp	__dosretax
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15B04:				; CODE XREF: _sopen+4Ej
		xchg	ax, bx
		mov	ax, cx
		and	ax, 500h
		cmp	ax, 500h
		jnz	short loc_15B18
		mov	ah, 3Eh
		int	21h		; DOS -	2+ - CLOSE A FILE WITH HANDLE
					; BX = file handle
		mov	ax, 1100h
		jmp	short loc_15B00
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15B18:				; CODE XREF: _sopen+6Bj
		mov	[bp+var_3], 1
		mov	ax, 4400h
		int	21h		; DOS -	2+ - IOCTL - GET DEVICE	INFORMATION
					; BX = file or device handle
		test	dl, 80h
		jz	short loc_15B2A
		or	[bp+var_4], 40h

loc_15B2A:				; CODE XREF: _sopen+82j
		test	[bp+var_4], 40h
		jz	short loc_15B33
		jmp	loc_15C06
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15B33:				; CODE XREF: _sopen+8Cj
		mov	ax, [bp+arg_2]
		test	ax, 200h
		jz	short loc_15B57
		test	ax, 3
		jz	short loc_15B49
		xor	cx, cx
		mov	ah, 40h
		int	21h		; DOS -	2+ - WRITE TO FILE WITH	HANDLE
					; BX = file handle, CX = number	of bytes to write, DS:DX -> buffer
		jmp	loc_15C06
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15B49:				; CODE XREF: _sopen+9Cj
		mov	ah, 3Eh
		int	21h		; DOS -	2+ - CLOSE A FILE WITH HANDLE
					; BX = file handle
		mov	dx, [bp+arg_0]
		mov	ax, 4300h
		int	21h		; DOS -	2+ - GET FILE ATTRIBUTES
					; DS:DX	-> ASCIZ file name or directory
					; name without trailing	slash
		jmp	short loc_15BBC
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15B57:				; CODE XREF: _sopen+97j
		test	[bp+var_4], 80h
		jnz	short loc_15B60
		jmp	loc_15C06
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15B60:				; CODE XREF: _sopen+B9j
		test	ax, 2
		jnz	short loc_15B68
		jmp	loc_15C06
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15B68:				; CODE XREF: _sopen+C1j
		mov	cx, 0FFFFh
		mov	dx, cx
		mov	ax, 4202h
		int	21h		; DOS -	2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
					; AL = method: offset from end of file
		neg	cx
		lea	dx, [bp+var_1]
		mov	ah, 3Fh
		int	21h		; DOS -	2+ - READ FROM FILE WITH HANDLE
					; BX = file handle, CX = number	of bytes to read
					; DS:DX	-> buffer
		or	ax, ax
		jz	short loc_15B94
		cmp	byte ptr [bp+var_1], 1Ah
		jnz	short loc_15B94
		neg	cx
		mov	dx, cx
		mov	ax, 4202h
		int	21h		; DOS -	2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
					; AL = method: offset from end of file
		xor	cx, cx
		mov	ah, 40h
		int	21h		; DOS -	2+ - WRITE TO FILE WITH	HANDLE
					; BX = file handle, CX = number	of bytes to write, DS:DX -> buffer

loc_15B94:				; CODE XREF: _sopen+DBj _sopen+E1j
		xor	cx, cx
		mov	dx, cx
		mov	ax, 4200h
		int	21h		; DOS -	2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
					; AL = method: offset from beginning of	file
		jmp	short loc_15C06
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15B9F:				; CODE XREF: _sopen+5Bj
		mov	[bp+var_3], 0
		mov	cx, [bp+arg_4]
		call	__cXENIXtoDOSmode
		mov	[bp+arg_4], cx
		test	[bp+var_2], 0FFh
		jnz	short loc_15BB9
		test	[bp+arg_2], 2
		jnz	short loc_15BBC

loc_15BB9:				; CODE XREF: _sopen+10Ej
		and	cl, 0FEh

loc_15BBC:				; CODE XREF: _sopen+B3j _sopen+115j
		mov	dx, [bp+arg_0]
		mov	ah, 3Ch
		int	21h		; DOS -	2+ - CREATE A FILE WITH	HANDLE (CREAT)
					; CX = attributes for file
					; DS:DX	-> ASCIZ filename (may include drive and path)
		jnb	short loc_15BC8

loc_15BC5:				; CODE XREF: _sopen+147j _sopen+162j
		jmp	__dosretax
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15BC8:				; CODE XREF: _sopen+121j
		xchg	ax, bx
		test	[bp+var_2], 0FFh
		jnz	short loc_15BD6
		test	[bp+arg_2], 2
		jnz	short loc_15C06

loc_15BD6:				; CODE XREF: _sopen+12Bj
		mov	ah, 3Eh
		int	21h		; DOS -	2+ - CLOSE A FILE WITH HANDLE
					; BX = file handle
		mov	al, byte ptr [bp+arg_2]
		and	al, 3
		or	al, [bp+var_2]
		mov	dx, [bp+arg_0]
		mov	ah, 3Dh
		int	21h		; DOS -	2+ - OPEN DISK FILE WITH HANDLE
					; DS:DX	-> ASCIZ filename
					; AL = access mode
					; 0 - read, 1 -	write, 2 - read	& write
		jb	short loc_15BC5
		xchg	ax, bx
		test	[bp+var_3], 1
		jnz	short loc_15C06
		test	[bp+arg_4], 1
		jz	short loc_15C06
		or	cl, 1
		mov	dx, [bp+arg_0]
		mov	ax, 4301h
		int	21h		; DOS -	2+ - SET FILE ATTRIBUTES
					; DS:DX	-> ASCIZ file name
					; CX = file attribute bits
		jb	short loc_15BC5

loc_15C06:				; CODE XREF: _sopen+8Ej _sopen+A4j ...
		test	[bp+var_4], 40h
		jnz	short loc_15C49
		mov	dx, [bp+arg_0]
		mov	ax, 4300h
		int	21h		; DOS -	2+ - GET FILE ATTRIBUTES
					; DS:DX	-> ASCIZ file name or directory
					; name without trailing	slash
		mov	ax, cx
		xor	cl, cl
		and	ax, 1
		jz	short loc_15C1F
		mov	cl, 10h

loc_15C1F:				; CODE XREF: _sopen+179j
		test	[bp+arg_2], 8
		jz	short loc_15C29
		or	cl, 20h

loc_15C29:				; CODE XREF: _sopen+182j _sopen+1A9j
		cmp	bx, word_1A3E5
		jb	short loc_15C39
		mov	ah, 3Eh
		int	21h		; DOS -	2+ - CLOSE A FILE WITH HANDLE
					; BX = file handle
		mov	ax, 1800h
		jmp	loc_15B00
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15C39:				; CODE XREF: _sopen+18Bj
		or	cl, [bp+var_4]
		or	cl, 1
		mov	[bx+4577h], cl
		mov	ax, bx
		mov	sp, bp
		pop	bp
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15C49:				; CODE XREF: _sopen+168j
		xor	cl, cl
		jmp	short loc_15C29
_sopen		endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

__cXENIXtoDOSmode proc near		; CODE XREF: _sopen+104p
		mov	ax, word_1A3DA
		not	ax
		and	ax, cx
		xor	cx, cx
		test	al, 80h
		jnz	short locret_15C5D
		or	cl, 1

locret_15C5D:				; CODE XREF: __cXENIXtoDOSmode+Bj
		retn
__cXENIXtoDOSmode endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_15C5E	proc far		; CODE XREF: _write+5DP
		pop	cx		; _stackavail -¡¨¡"¨(r)â¥ç­ ï C-äã­ªæ¨ï
		pop	dx
		mov	ax, word_1A412	; STKHQQ
		cmp	ax, sp
		jnb	short loc_15C6E
		sub	ax, sp
		neg	ax

loc_15C6B:				; CODE XREF: sub_15C5E+12j
		push	dx
		push	cx
		retf
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15C6E:				; CODE XREF: sub_15C5E+7j
		xor	ax, ax
		jmp	short loc_15C6B
sub_15C5E	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; íâ  äã­ªæ¨ï -	ç¨áâ(r) malloc,¯à¨­¨¬ ¥â (r)¤¨­ WORD- à£ã¬¥­â,
; á¬. mymall_MSC6.txt
; Attributes: thunk

sub_15C72	proc far		; CODE XREF: __stbuf+5EP _setvbuf+73P	...
		jmp	sub_15C9F
sub_15C72	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_15C78	proc far		; CODE XREF: __freebuf+15P

arg_2		= word ptr  6

		jmp	loc_15C7E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_15C7E:				; CODE XREF: sub_15C78J
		push	bp
		mov	bp, sp
		push	si
		mov	bx, [bp+arg_2]
		mov	si, 4534h
		cmp	[si+6],	bx
		jnb	short loc_15C9A
		dec	bx
		dec	bx
		or	byte ptr [bx], 1
		cmp	[si+8],	bx
		jbe	short loc_15C9A
		mov	[si+8],	bx

loc_15C9A:				; CODE XREF: sub_15C78+13j
					; sub_15C78+1Dj
		pop	si
		mov	sp, bp
		pop	bp
		retf
sub_15C78	endp ; sp =  2


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: bp-based frame

sub_15C9F	proc far		; CODE XREF: sub_15C72J

arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		push	si
		push	di
		mov	cx, [bp+arg_0]
		cmp	cx, 0FFE8h
		ja	short loc_15CBE
		mov	bx, 4534h
		call	__searchseg
		jnb	short loc_15CC3
		call	__growseg
		jb	short loc_15CBE
		call	__searchseg
		jnb	short loc_15CC3

loc_15CBE:				; CODE XREF: sub_15C9F+Bj
					; sub_15C9F+18j
		xor	ax, ax
		cwd
		jmp	short $+2

loc_15CC3:				; CODE XREF: sub_15C9F+13j
					; sub_15C9F+1Dj
		pop	di
		pop	si
		pop	bp
		retf
sub_15C9F	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

__growseg	proc near		; CODE XREF: sub_15C9F+15p
		push	cx
		push	di
		test	byte ptr [bx+2], 1
		jz	short loc_15D33
		call	__findlast
		mov	di, si
		mov	ax, [si]
		test	al, 1
		jz	short loc_15CDE
		sub	cx, ax
		dec	cx

loc_15CDE:				; CODE XREF: __growseg+11j
		inc	cx
		inc	cx
		mov	si, [bx+4]
		or	si, si
		jz	short loc_15D33
		add	cx, si
		jnb	short loc_15CF4
		xor	ax, ax
		mov	dx, 0FFF0h
		jcxz	short loc_15D22
		jmp	short loc_15D33
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15CF4:				; CODE XREF: __growseg+21j
		push	ss
		pop	es
		assume es:dseg
		mov	ax, es:word_1A702
		cmp	ax, 2000h
		jz	short loc_15D15
		mov	dx, 8000h

loc_15D02:				; CODE XREF: __growseg+40j
		cmp	dx, ax
		jb	short loc_15D0C
		shr	dx, 1
		jnz	short loc_15D02
		jmp	short loc_15D2E
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15D0C:				; CODE XREF: __growseg+3Cj
		cmp	dx, 8
		jb	short loc_15D2E
		shl	dx, 1
		mov	ax, dx

loc_15D15:				; CODE XREF: __growseg+35j
					; __growseg+69j
		dec	ax
		mov	dx, ax
		add	ax, cx
		jnb	short loc_15D1E
		xor	ax, ax

loc_15D1E:				; CODE XREF: __growseg+52j
		not	dx
		and	ax, dx

loc_15D22:				; CODE XREF: __growseg+28j
		push	dx
		call	__incseg
		pop	dx
		jnb	short loc_15D36
		cmp	dx, 0FFF0h
		jz	short loc_15D33

loc_15D2E:				; CODE XREF: __growseg+42j
					; __growseg+47j
		mov	ax, 10h
		jmp	short loc_15D15
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15D33:				; CODE XREF: __growseg+6j
					; __growseg+1Dj ...
		stc
		jmp	short loc_15D51
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15D36:				; CODE XREF: __growseg+5Fj
		mov	dx, ax
		sub	dx, [bx+4]
		mov	[bx+4],	ax
		mov	[bx+8],	di
		mov	si, [bx+0Ah]
		dec	dx
		mov	[si], dx
		inc	dx
		add	si, dx
		mov	word ptr [si], 0FFFEh
		mov	[bx+0Ah], si

loc_15D51:				; CODE XREF: __growseg+6Cj
		pop	di
		pop	cx
		retn
__growseg	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

__incseg	proc near		; CODE XREF: __growseg+5Bp
		mov	dx, ax
		test	byte ptr [bx+2], 4
		jz	short loc_15D6B
		dec	dx
		mov	si, [bx+4]
		dec	si
		cmp	dx, si
		jb	short loc_15D6A
		cmp	[bx-2],	dx
		jnb	short loc_15DA0

loc_15D6A:				; CODE XREF: __incseg+Fj
		inc	dx

loc_15D6B:				; CODE XREF: __incseg+6j
		push	bx
		push	cx
		mov	si, ds
		mov	es, si
		mov	cl, 4
		shr	ax, cl
		jnz	short loc_15D7A
		mov	ax, 1000h

loc_15D7A:				; CODE XREF: __incseg+21j
		test	byte ptr [bx+2], 4
		jz	short loc_15D8A
		add	ax, si
		mov	bx, word_1A3DE
		sub	ax, bx
		mov	es, bx
		assume es:nothing

loc_15D8A:				; CODE XREF: __incseg+2Aj
		mov	bx, ax
		mov	ah, 4Ah
		int	21h		; DOS -	2+ - ADJUST MEMORY BLOCK SIZE (SETBLOCK)
					; ES = segment address of block	to change
					; BX = new size	in paragraphs
		pop	cx
		pop	bx
		jb	short locret_15DA4
		mov	ax, dx
		test	byte ptr [bx+2], 4
		jz	short loc_15DA0
		dec	dx
		mov	[bx-2],	dx

loc_15DA0:				; CODE XREF: __incseg+14j __incseg+46j
		clc
		jmp	short locret_15DA4
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		stc

locret_15DA4:				; CODE XREF: __incseg+3Ej __incseg+4Dj
		retn
__incseg	endp


; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

__findlast	proc near		; CODE XREF: __growseg+8p
		push	di
		mov	si, [bx+8]
		cmp	si, [bx+0Ah]
		jnz	short loc_15DB1
		mov	si, [bx+6]

loc_15DB1:				; CODE XREF: __findlast+7j
					; __findlast+18j
		lodsw
		cmp	ax, 0FFFEh
		jz	short loc_15DBF
		mov	di, si
		and	al, 0FEh
		add	si, ax
		jmp	short loc_15DB1
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15DBF:				; CODE XREF: __findlast+10j
		dec	di
		dec	di
		mov	si, di
		pop	di
		retn
__findlast	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

; ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B	R O U T	I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

; Attributes: library function

__searchseg	proc near		; CODE XREF: sub_15C9F+10p
					; sub_15C9F+1Ap
		inc	cx
		and	cl, 0FEh
		push	bx
		cld
		mov	si, [bx+8]
		mov	bx, [bx+0Ah]
		xor	di, di
		jmp	short loc_15DF9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15DD6:				; CODE XREF: __searchseg+2Dj
		mov	ax, bx
		pop	bx
		test	al, 1
		jnz	short loc_15E1F
		push	bx
		mov	si, [bx+6]
		mov	bx, [bx+8]
		cmp	bx, si
		jz	short loc_15E1E
		dec	bx
		xor	di, di
		jmp	short loc_15DF9
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 2

loc_15DEE:				; CODE XREF: __searchseg+36j
					; __searchseg+48j
		lea	dx, [si-2]
		cmp	dx, bx
		jnb	short loc_15DD6
		add	si, ax
		jb	short loc_15E1C

loc_15DF9:				; CODE XREF: __searchseg+Ej
					; __searchseg+25j
		lodsw
		test	al, 1
		jz	short loc_15DEE
		mov	di, si

loc_15E00:				; CODE XREF: __searchseg+54j
		dec	ax
		cmp	ax, cx
		jnb	short loc_15E28
		add	si, ax
		jb	short loc_15E1C
		mov	dx, ax
		lodsw
		test	al, 1
		jz	short loc_15DEE
		add	ax, dx
		add	ax, 2
		mov	si, di
		mov	[si-2],	ax
		jmp	short loc_15E00
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15E1C:				; CODE XREF: __searchseg+31j
					; __searchseg+41j
		mov	ax, ax

loc_15E1E:				; CODE XREF: __searchseg+20j
		pop	bx

loc_15E1F:				; CODE XREF: __searchseg+15j
		mov	ax, [bx+6]
		mov	[bx+8],	ax
		stc
		jmp	short locret_15E41
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_15E28:				; CODE XREF: __searchseg+3Dj
		pop	bx
		mov	[si-2],	cx
		jz	short loc_15E37
		add	di, cx
		sub	ax, cx
		dec	ax
		mov	[di], ax
		sub	di, cx

loc_15E37:				; CODE XREF: __searchseg+66j
		add	di, cx
		mov	[bx+8],	di
		mov	ax, si
		mov	dx, ds
		clc

locret_15E41:				; CODE XREF: __searchseg+60j
		retn
__searchseg	endp

; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		align 10h
seg118		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Regular
seg119		segment public 'UNK'
		assume cs:seg119
		assume es:nothing, ss:nothing, ds:dseg
seg_15E50	dw seg dseg		; DATA XREF: dseg:48A0o
algn_15E52:
		align 10h
seg119		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

; Segment type:	Regular
seg120		segment public 'UNK'
		assume cs:seg120
		assume es:nothing, ss:nothing, ds:dseg
		db    7
		db 0F6h	; ö
		db 0F7h	; ÷
		db 0F8h	; ø
unk_15E64	db 0F9h	; ù
		db 0FAh	; ú
		db 0FBh	; û
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
seg120		ends

; ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
seg121		segment public 'CODE'
		assume cs:seg121
		assume es:nothing, ss:nothing, ds:dseg

StupidDelay PROC FAR
		push	bp
		mov	bp, sp
loc_Delay1:
		call	sub_BB08; @keys_get
		cmp 	al, 1Bh; 1Bh is a scan code for Escape
		jne	loc_Delay1 
		leave
		retf
StupidDelay ENDP

_cgets PROC FAR		
arg_0		= word ptr  6

		push	bp
		mov	bp, sp
		push	di
		cmp	word_1A706, 0D6D6h
		jnz	short loc_cgets1
		push	bx
		mov	bx, 0FFFFh
		call	off_1A708
		pop	bx

loc_cgets1:			
		mov	dx, [bp+arg_0]
		push	ds
		pop	es
		assume es:dseg
		mov	ah, 0Ah
		int	21h		; DOS -	BUFFERED KEYBOARD INPUT
					; DS:DX	-> buffer
		mov	di, dx
		mov	cl, [di]
		xor	ch, ch
		inc	di
		inc	di
		mov	al, 0Dh
		repne scasb
		dec	di
		mov	byte ptr [di], 0
		mov	ax, dx
		inc	ax
		inc	ax
		pop	di
		mov	sp, bp
		pop	bp
		retf
_cgets ENDP

picture_load_2 PROC FAR			;sub_1814 in opening.exe

var_126		= dword	ptr -126h
var_5C		= byte ptr -5Ch
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h
arg_C		= dword	ptr  12h

		enter	126h, 0
		push	di
		push	si		; char *
		mov	si, 1
		push	[bp+arg_0]
		lea	ax, [bp+var_5C]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		lea	ax, [bp+var_5C]
		push	ss
		push	ax		; char *
		push	ds
		push	offset aPik	; "PIK"
		call	sub_C04E	; @fileio_add_ext
		lea	ax, [bp+var_126]
		push	ss
		push	ax		; __int32
		lea	ax, [bp+var_5C]
		push	ss
		push	ax		; char *
		lea	bx, unk_19931	; "rb"
		sub	ax, ax
		call	sub_121A0	; @loader_open
		or	ax, ax
		jz	short loc_picture_load_2_1
		jmp	loc_picture_load_2_3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_picture_load_2_1:				; loc_1857 in opening.exe
		lea	ax, [bp+var_C]
		push	ss
		push	ax		; void *
		push	0		; int
		push	1		; int
		lea	ax, [bp+var_126]
		push	ss
		push	ax		; __int32
		mov	ax, 8
		cwd
		call	sub_12582	; @loader_read
		or	dx, ax
		jz	short loc_picture_load_2_3
		mov	ax, [bp+arg_6]
		mov	dx, [bp+arg_8]
		mov	di, ax
		mov	[bp+var_2], dx
		cmp	[bp+arg_A], 0
		jz	short loc_picture_load_2_2
		mov	dx, [bp+arg_2]
		sub	dx, [bp+var_C]
		lea	bx, [bp+arg_2]
		sub	ax, ax
		call	sub_C910	; @buffer_pointer
		mov	di, ax
		mov	[bp+var_2], dx

loc_picture_load_2_2:				; loc_1899 in opening.exe
		push	[bp+var_2]
		push	di		; void *
		push	0		; int
		push	1		; int
		lea	ax, [bp+var_126]
		push	ss
		push	ax		; __int32
		mov	ax, [bp+var_A]
		imul	[bp+var_C]
		call	sub_12582	; @loader_read
		or	dx, ax
		jz	short loc_picture_load_2_3
		push	word ptr [bp+arg_C+2]
		push	word ptr [bp+arg_C] ; void *
		push	0		; int
		push	1		; int
		lea	ax, [bp+var_126]
		push	ss
		push	ax		; __int32
		mov	ax, 300h
		cwd
		call	sub_12582	; @loader_read
		or	dx, ax
		jz	short loc_picture_load_2_3
		lea	ax, [bp+var_126]
		push	ss
		push	ax
		call	sub_124EE	; @loader_close
		sub	si, si

loc_picture_load_2_3:			;loc_18E0 in opening.exe
		mov	ax, si
		pop	si
		pop	di
		leave
		retf
picture_load_2 ENDP

picture_load PROC FAR
		
var_126		= dword	ptr -126h
var_5C		= byte ptr -5Ch
var_C		= word ptr -0Ch
var_A		= word ptr -0Ah
var_2		= word ptr -2
arg_0		= word ptr  6
arg_2		= word ptr  8
arg_6		= word ptr  0Ch
arg_8		= word ptr  0Eh
arg_A		= word ptr  10h

		enter	126h, 0		
		push	di
		push	si		; char *
		mov	si, 1
		push	[bp+arg_0]
		lea	ax, [bp+var_5C]
		push	ax		; char *
		call	_strcpy
		add	sp, 4
		lea	ax, [bp+var_5C]
		push	ss
		push	ax		; char *
		push	ds
		push	offset aPik		; "PIK"
		call	sub_C04E		; @fileio_add_ext
		lea	ax, [bp+var_126]
		push	ss
		push	ax		; __int32
		lea	ax, [bp+var_5C]
		push	ss
		push	ax		; char *
		lea	bx, unk_19931	; "rb"
		sub	ax, ax
		call	sub_121A0	; @loader_open
		or	ax, ax
		jnz	short loc_picture_load_1_1
		lea	ax, [bp+var_C]
		push	ss
		push	ax		; void *
		push	0		; int
		push	1		; int
		lea	ax, [bp+var_126]
		push	ss
		push	ax		; __int32
		mov	ax, 8
		cwd
		call	sub_12582		; @loader_read
		or	dx, ax
		jz	short loc_picture_load_1_1
		mov	ax, [bp+arg_6]
		mov	dx, [bp+arg_8]
		mov	di, ax
		mov	[bp+var_2], dx
		cmp	[bp+arg_A], 0
		jz	short loc_picture_load_1_2
		mov	dx, [bp+arg_2]
		sub	dx, [bp+var_C]
		lea	bx, [bp+arg_2]
		sub	ax, ax
		call	sub_C910	; @buffer_pointer
		mov	di, ax
		mov	[bp+var_2], dx

loc_picture_load_1_2:				; CODE XREF: sub_1B48+6Bj
		push	[bp+var_2]
		push	di		; void *
		push	0		; int
		push	1		; int
		lea	ax, [bp+var_126]
		push	ss
		push	ax		; __int32
		mov	ax, [bp+var_A]
		imul	[bp+var_C]
		call	sub_12582		; @loader_read
		or	dx, ax
		jz	short loc_picture_load_1_1
		lea	ax, [bp+var_126]
		push	ss
		push	ax
		call	sub_124EE	; @loader_close
		sub	si, si

loc_picture_load_1_1:				; CODE XREF: sub_1B48+3Ej sub_1B48+5Aj ...
		mov	ax, si
		pop	si
		pop	di
		leave
		retf
picture_load ENDP

_memset_0 PROC FAR
arg_0		= dword	ptr  6
arg_4		= word ptr  0Ah
arg_6		= word ptr  0Ch

		push	bp
		mov	bp, sp
		mov	cx, [bp+arg_6]
		jcxz	short loc_memset03
		push	di
		les	di, [bp+arg_0]
		mov	dx, di
		neg	dx
		jz	short loc_memset01
		sub	dx, cx
		sbb	bx, bx
		and	dx, bx
		add	dx, cx
		xchg	dx, cx
		sub	dx, cx

loc_memset01:				; loc_53A2 in opening.exe
		mov	ax, [bp+arg_4]
		mov	ah, al
		shr	cx, 1
		rep stosw
		adc	cx, cx
		rep stosb
		xchg	dx, cx
		jcxz	short loc_memset02
		mov	bx, es
		add	bx, 1000h
		mov	es, bx
		assume es:nothing
		shr	cx, 1
		rep stosw
		adc	cx, cx
		rep stosb

loc_memset02:				; loc_53C3 in opening.exe
		pop	di

loc_memset03:				; loc_53C4 in opening.exe
		mov	ax, word ptr [bp+arg_0]
		mov	dx, word ptr [bp+arg_0+2]
		pop	bp
		retf
_memset_0 ENDP


_memset_opening PROC FAR	;INTRODUCED COZ _memset (from mapedit.exe IDA listing) is not
;the same as _memset (from opening.exe IDA listing). The former is apparently _fmemset.

arg_0		= word ptr  6
arg_2		= byte ptr  8
arg_4		= word ptr  0Ah

		push	bp
		mov	bp, sp
		mov	dx, di
		mov	ax, ds
		mov	es, ax
		mov	di, [bp+arg_0]
		mov	bx, di
		mov	cx, [bp+arg_4]
		jcxz	short loc_memsetopening1
		mov	al, [bp+arg_2]
		mov	ah, al
		test	di, 1
		jz	short loc_memsetopening0
		stosb
		dec	cx

loc_memsetopening0:				; loc_4FD4 in opening.exe
		shr	cx, 1
		rep stosw
		adc	cx, cx
		rep stosb

loc_memsetopening1:				; loc_4FDC in opening.exe
		mov	di, dx
		xchg	ax, bx
		pop	bp
		retf
_memset_opening ENDP


StupidPIKViewer PROC FAR
var_2		= word ptr -2
arg_0		= word ptr 6

		enter	6, 0
		push	di
		push	si
		push	1
		push	13h
		call	sub_EC58	; video_init
		add	sp, 4
loc_Closing41:				;
		push	300h		; size_t
		push	0		; int
		push	0A000h
		push	0FC00h		; void *
		call	_memset_0
		add	sp, 8
		push	0A000h
		push	0FC00h
		call	sub_D70A; @mcga_setpal
		lea	bx, word_19964	; scr_work
		mov	ax, 140h
		mov	dx, 0C8h
		call	sub_C3EA	; @buffer_init
		mov	ax, word_1996A	; scr_work[3]:scr_work[2]
		or	ax, word_19968
		jnz	short loc_Closing71
		mov	word_15ED2, 14h	; exit_value
		jmp	loc_Closing31
;SOME MISSED STUFF
loc_Closing71:				;
loc_Closing61:				;
;SOME MISSED STUFF
		lea	bx, word_1996C	; scr_orig
		mov	ax, 3C0h
		mov	dx, 84h	
		call	sub_C3EA	; @buffer_init
		mov	ax, word_19972 ;scr_orig[3]
		or	ax, word_19970;scr_orig[2]
		jnz	short loc_Closing51
		mov	word_15ED2, 1	;exit_value
		jmp	loc_Closing31	;to exit
loc_Closing51:				;
		push	0A000h
		push	0FC00h		; void *
		push	0		; int
;		push	word_19972	
;		push	word_19970	
;		push	word_1996E	
;		push	word_1996C	; short	scr_orig[0]
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964
		push	word ptr [bp+arg_0]	;Name of .PIK file being loaded
		call	picture_load_2	
		add	sp, 10h
		or	ax, ax
		jz	short loc_Closing11
		mov	word_15ED2, 2	; exit_value
		jmp	loc_Closing31; to exit
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
loc_Closing11:	
;PASTED FROM open_loop
		push	0A000h
		push	0FC00h
		call	sub_D70A; @mcga_setpal		
loc_Closing21:			;
;MY INTRUDING CODE
		push 0C8h
		push 140h
		push 0
		push 0
		push 0
		push 0
		push ds
		push offset word_19964; scr_work
		call sub_EC74; video_update
		add sp, 10h
		call FAR PTR StupidDelay
;END OF STUPIDITY
loc_Closing31:				; 
		push	1; MY CHANGE
		push	3
		call	sub_EC58	; video_init
		add	sp, 4
		pop	si
		pop	di
		leave
		retf
StupidPIKViewer ENDP

StupidOpeningPIKViewer PROC FAR; PIK VIEWER FUNCTION FOR OPENING.PIK
var_2		= word ptr -2
arg_0		= word ptr 6

		enter	6, 0
		push	di
		push	si
		push	1
		push	13h
		call	sub_EC58	; video_init
		add	sp, 4
loc_Closing410:				;
		push	300h		; size_t
		push	0		; int
		push	0A000h
		push	0FC00h		; void *
		call	_memset_0
		add	sp, 8
		push	0A000h
		push	0FC00h
		call	sub_D70A; @mcga_setpal
		lea	bx, word_19964	; scr_work
		mov	ax, 3C0h		;LARGER BUFFER NEEDED FOR OPENING.PIK
		mov	dx, 084h
		call	sub_C3EA	; @buffer_init
		mov	ax, word_1996A	; scr_work[3]:scr_work[2]
		or	ax, word_19968
		jnz	short loc_Closing710
		mov	word_15ED2, 14h	; exit_value
		jmp	loc_Closing310
loc_Closing710:				;
loc_Closing610:				;
loc_Closing510:				;
		push	0A000h
		push	0FC00h		; void *
		push	0		; int
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964	;short scr_work[]
		push	word ptr [bp+arg_0]	;Name of .PIK file being loaded
		call	picture_load_2	
		add	sp, 10h
		or	ax, ax
		jz	short loc_Closing110
		mov	word_15ED2, 2	; exit_value
		jmp	loc_Closing310; to exit
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
loc_Closing110:	
;PASTED FROM open_loop
		push	0A000h
		push	0FC00h
		call	sub_D70A; @mcga_setpal		
loc_Closing210:			;
		push 84h		;TO REFLECT OPENING.PIK HEIGHT
		push 140h
		push 0
		push 0
		push 0
		push OpeningPIKScrolling	;TO SCROLL OPENING.PIK AT USER'S WHIM
		push ds
		push offset word_19964; scr_work
		call sub_EC74; video_update
		add sp, 10h
loc_DelaynScroll1:	mov	ah, 0
		int 	16h		;GET XT SCAN CODE & ASCII CHARACTER CODE
		cmp 	al, 1Bh		;ASCII code for Escape
		je	loc_Closing310
		cmp	al, 2Bh		;ASCII code for "+"
		je	loc_ScrollPlus1
		cmp	ah, 4Dh		;XT scan code for ->
		je	loc_ScrollPlus1 
		cmp	al, 2Dh		;ASCII code for "-"
		je	loc_ScrollMinus1
		cmp	ah, 4Bh		;XT scan code for <-
		je	loc_ScrollMinus1	
		jmp	loc_DelaynScroll1
loc_ScrollPlus1:	cmp	OpeningPIKScrolling, 280h; WIDTH of OPENING.PIK - WIDTH of VGA screen (VERIFIED!)
		jge	loc_DelaynScroll1
		add	OpeningPIKScrolling, 1
		jmp	loc_Closing210
loc_ScrollMinus1:	cmp	OpeningPIKScrolling, 0
		jle	loc_DelaynScroll1
		sub	OpeningPIKScrolling, 1
		jmp	loc_Closing210
loc_Closing310:				; 
		push	1; MY CHANGE
		push	3
		call	sub_EC58	; video_init
		add	sp, 4
		pop	si
		pop	di
		leave
		retf
StupidOpeningPIKViewer ENDP

StupidColonyPIKViewer PROC FAR; PIK VIEWER FUNCTION FOR OPENING.PIK (WRAPPER)
var_2		= word ptr -2
arg_0		= word ptr 6

		enter	6, 0
		push	di
		push	si
		push	1
		push	13h
		call	sub_EC58	; video_init
		add	sp, 4
loc_Closing412:				;
		push	300h		; size_t
		push	0		; int
		push	0A000h
		push	0FC00h		; void *
		call	_memset_0
		add	sp, 8
		push	0A000h
		push	0FC00h
		call	sub_D70A; @mcga_setpal
loc_Closing712:				;
loc_Closing612:				;
		lea	bx, word_1996C	; scr_orig
		mov	ax, 140h		;BUFFER FOR *.PIK CONTAINING PALETTE FOR OPENING.PIK
		mov	dx, 0C8h	
		call	sub_C3EA	; @buffer_init
		mov	ax, word_19972 ;scr_orig[3]
		or	ax, word_19970;scr_orig[2]
		jnz	short loc_Closing512
		mov	word_15ED2, 1	;exit_value
		jmp	loc_Closing312	;to exit
loc_Closing512:				;
		push	0A000h
		push	0FC00h		; void *
		push	0		; int
		push	word_19972
		push	word_19970
		push	word_1996E
		push	word_1996C	;short scr_orig[]
		push	offset aEurope	;Here  *.PIK WITH PALETTE FOR OPENING.PIK is loaded
		call	picture_load_2	
		add	sp, 10h
		or	ax, ax
		jz	short loc_Closing112
		mov	word_15ED2, 2	; exit_value
		jmp	loc_Closing312; to exit
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
loc_Closing112:	
;PASTED FROM open_loop
		push	0A000h
		push	0FC00h
		call	sub_D70A; @mcga_setpal		
loc_Closing212:			;
		push word ptr [bp+arg_0]
		call StupidColonyPIKViewer2
		add sp, 2		
;END OF STUPIDITY
loc_Closing312:				; 
		push	1; MY CHANGE
		push	3
		call	sub_EC58	; video_init
		add	sp, 4
		pop	si
		pop	di
		leave
		retf
StupidColonyPIKViewer ENDP

StupidColonyPIKViewer2 PROC FAR; PIK VIEWER FUNCTION FOR COLONY.PIK (CORE)
var_2		= word ptr -2
arg_0		= word ptr 6

		enter	6, 0
		push	di
		push	si
loc_Closing411:				;
		lea	bx, word_19964	; scr_work
		mov	ax, 140h		;BUFFER NEEDED FOR COLONY.PIK
		mov	dx, 48h
		call	sub_C3EA	; @buffer_init
		mov	ax, word_1996A	; scr_work[3]:scr_work[2]
		or	ax, word_19968
		jnz	short loc_Closing711
		mov	word_15ED2, 14h	; exit_value
		jmp	loc_Closing311
loc_Closing711:				;
loc_Closing611:				;
loc_Closing511:				;
		push	0		; int
		push	word_1996A
		push	word_19968
		push	word_19966
		push	word_19964	;short scr_work[]
		push	word ptr [bp+arg_0]	;Name of .PIK file being loaded
		call	picture_load	;IMPORTANT CHANGE
		add	sp, 0Ch
		or	ax, ax
		jz	short loc_Closing111
		mov	word_15ED2, 2	; exit_value
		jmp	loc_Closing311; to exit
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
loc_Closing111:	
loc_Closing211:			;
		push 48h		;TO REFLECT COLONY.PIK HEIGHT
		push 140h
		push 0
		push 0
		push 0
		push 0
		push ds
		push offset word_19964; scr_work
		call sub_EC74; video_update
		add sp, 10h
		call FAR PTR StupidDelay
;END OF STUPIDITY
loc_Closing311:				; 
		pop	si
		pop	di
		leave
		retf
StupidColonyPIKViewer2 ENDP

StupidSelfPaletteMethod PROC FAR
var_2		= word ptr -2
arg_0		= word ptr 6

		enter	6, 0
		push	di
		push	si
		push	1
		push	13h
		call	sub_EC58	; video_init
		add	sp, 4
loc_Selfpal4:				;loc_F31 in opening.exe
		push	300h		; size_t
		push	0		; int
		push	0A000h
		push	0FC00h		; void *
		call	_memset_0
		add	sp, 8
		push	0A000h
		push	0FC00h
		call	sub_D70A; @mcga_setpal, sub_373A in opening.exe
		lea	bx, word_19964	; scr_work
		mov	ax, 140h
		mov	dx, 0C8h
		call	sub_C3EA	; @buffer_init
		mov	ax, word_1996A	; scr_work[3]:scr_work[2]
		or	ax, word_19968
		jnz	short loc_Selfpal7
		mov	word_15ED2, 14h	; exit_value
		jmp	loc_Selfpal3
;SOME MISSED STUFF
loc_Selfpal7:				;loc_FD8 in opening.exe
;MISSED STUFF
		mov	word_19950, 0FC00h ; put_palette
		mov	word_19952, 0A000h ; put_palette+2
		mov	bx, word ptr [bp+arg_0]	; *.SS file being opened
		sub	ax, ax
		call	sub_DDB8	; @sprite_series_load
		mov	word ptr logo, ax
		mov	word ptr logo+2, dx
		sub	ax, ax
		mov	word_19952, ax	; put_palette+2
		mov	word_19950, ax
;A LOT OF MISSED STUFF
		mov	ax, word ptr logo+2
		or	ax, word ptr logo
		jz	loc_Selfpal9
		jmp	loc_Selfpal8
;MISSED STUFF
loc_Selfpal9:				;loc_1029 in mapedit.exe
		mov	word_15ED2, 14Dh ; exit_value
		jmp	loc_Selfpal3
loc_Selfpal8:				;loc_1032 in mapedit.exe
loc_Selfpal6:				;loc_1040 in opening.exe
loc_Selfpal5:				;loc_107C in opening.exe
loc_Selfpal1:	
;PASTED FROM open_logo
		push	0A000h
		push	0FC00h
		call	sub_D70A; @mcga_setpal, sub_373A in opening.exe			
;PASTED FROM open_logo
		push	word_1996A	;loc_10AC in opening.exe
		push	word_19968
		push	word_19966
		push	word_19964	; scr_work
		sub	al, al		
		call	sub_C49E	; @buffer_fill 
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lea	bx, StupidString2
		add	bx, 2
		mov	ax, 4000h
		call	sub_DDB8	; @sprite_series_load
		mov	word_15ED8, ax	; icons
		mov	word_15EDA, dx
		mov	ax, dx
		or	ax, word_15ED8	; icons
		jnz	short loc_Selfpal2
		mov	word_15ED2, 19h	; exit_value
		jmp	loc_Selfpal3
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
loc_Selfpal2:			; CODE XREF: sub_2516+1AFj
;MY INTRUDING CODE
		push	word_1996A	
		push	word_19968
		push	word_19966
		push	word_19964	; scr_work
		sub	al, al		
		call	sub_C49E	; @buffer_fill 
		push word_15EDA
		push word_15ED8 ;icons
		push 0
		mov ax, SSPictureNum	;MY CHANGE TO BROWSE *.SS FILES EASILY
		lea bx, word_19964; scr_work
		sub dx, dx
		call sub_D8F0; @sprite_draw		

		push 0C8h
		push 140h
		push 0
		push 0
		push 0
		push 0
		push ds
		push offset word_19964
		call sub_EC74; video_update
		add sp, 10h
loc_DelaynList1:	mov	ah, 0
		int 	16h		;GET XT SCAN CODE & ASCII CHARACTER CODE
		cmp 	al, 1Bh		;ASCII code for Escape
		je	loc_Selfpal3
		cmp	al, 2Bh		;ASCII code for "+"
		je	loc_ListPlus1
		cmp	ah, 4Dh		;XT scan code for ->
		je	loc_ListPlus1 
		cmp	al, 2Dh		;ASCII code for "-"
		je	loc_ListMinus1
		cmp	ah, 4Bh		;XT scan code for <-
		je	loc_ListMinus1	
		jmp	loc_DelaynList1
loc_ListPlus1:	add	SSPictureNum, 1
		jmp	loc_Selfpal2
loc_ListMinus1:	cmp	SSPictureNum, 1
		jle	loc_DelaynList1
		sub	SSPictureNum, 1
		jmp	loc_Selfpal2
loc_Selfpal3:				; CODE XREF: sub_2516+2B0j
		push	1; MY CHANGE
		push	3
		call	sub_EC58	; video_init
		add	sp, 4
		pop	si
		pop	di
		leave
		retf
StupidSelfPaletteMethod ENDP

StupidWinfwrkMethod PROC FAR
		enter	4, 0
		push	di
		push	si
		push	offset aWinfwrkStatement
		call	_printf
		add	sp, 2		
		pop	si
		pop	di
		leave
		retf
StupidWinfwrkMethod ENDP
seg121		ends
;ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
; Segment type:	Uninitialized
seg122		segment stack 'STACK'
		assume cs:seg122
		assume es:nothing, ss:nothing, ds:dseg
byte_1C820	db 1000h dup(?)
seg122		ends


		end start
