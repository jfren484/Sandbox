; Segment type:	Pure data
dseg		segment public 'DATA'
		assume cs:dseg
word_15E70	dw 0			; DATA XREF: seg087:0030 w seg087:004B r ...
word_15E72	dw 0			; DATA XREF: seg087:002C w
					; sub_116F5+1E r ...
word_15E74	dw 0			; DATA XREF: seg087:0037 w seg088:0081 w ...
word_15E76	dw 0			; DATA XREF: seg087:003A w seg088:00AA w ...
word_15E78	dw 534Dh		; DATA XREF: sub_116F5+B w
					; sub_11891:loc_118FF r	...
word_15E7A	dw 5220h		; DATA XREF: sub_116E1 w sub_116F5+29 w	...
word_15E7C	dw 6E75h		; DATA XREF: seg087:0041 w seg088:002F w ...
word_15E7E	dw 542Dh		; DATA XREF: seg087:0044 w seg088:0032 w
word_15E80	dw 6D69h		; DATA XREF: sub_116E1+A w sub_11729+D r ...
word_15E82	dw 2065h		; DATA XREF: sub_116E1+10 w
					; sub_11729+A w	...
word_15E84	dw 694Ch		; DATA XREF: sub_11729+1F w
					; sub_11891+3F w ...
word_15E86	dw 7262h		; DATA XREF: sub_11729+23 w
					; sub_11891+42 w ...
word_15E88	dw 7261h		; DATA XREF: sub_11891:loc_11914 w
					; sub_11891+91 r ...
word_15E8A	dw 2079h		; DATA XREF: sub_1181A+4E w
					; sub_11891:loc_1191F r	...
word_15E8C	dw 202Dh		; DATA XREF: sub_1181A+5D w
					; sub_11891+A6 r ...
word_15E8E	dw 6F43h		; DATA XREF: sub_11891+36 w
					; sub_11891:loc_119CA w	...
word_15E90	dw 7970h		; DATA XREF: sub_11782:loc_11785 w
					; sub_11891+39 w ...
word_15E92	dw 6972h		; DATA XREF: sub_11891+3C w
					; sub_11891:loc_119BA w
word_15E94	dw 6867h		; DATA XREF: sub_11782:loc_1179D r
					; sub_11782+2D w ...
word_15E96	dw 2074h		; DATA XREF: sub_11782+21 w
					; sub_117B6+4 r	...
word_15E98	dw 6328h		; DATA XREF: seg083:00D6 r
					; sub_11782+27 w ...
		db  29h	; )
		db  20h
		db  31h	; 1
		db  39h	; 9
		db  39h	; 9
		db  30h	; 0
		db  2Ch	; ,
		db  20h
		db  4Dh	; M
unk_15EA3	db  69h	; i
		db  63h	; c
		db  72h	; r
		db  6Fh	; o
		db  73h	; s
		db  6Fh	; o
		db  66h	; f
		db  74h	; t
		db  20h
		db  43h	; C
		db  6Fh	; o
		db  72h	; r
		db  70h	; p
		db  18h
		db    0
word_15EB2	dw 0			; DATA XREF: _main+18 w
word_15EB4	dw 0			; DATA XREF: _main+1B w
word_15EB6	dw 0			; DATA XREF: sub_15FC+67 w
					; sub_1670+166 w ...
		db    0
		db    0
; char *word_15EBA
word_15EBA	dw 0			; DATA XREF: sub_94E+334 r
					; sub_17E0:loc_1B04 r ...
word_15EBC	dw 0			; DATA XREF: sub_247A+4 r
					; sub_2872:loc_28CF w
word_15EBE	dw 0			; DATA XREF: sub_94E+367 r
					; sub_17E0:loc_1B1A r ...
word_15EC0	dw 0			; DATA XREF: sub_750+7 r
					; sub_17E0:loc_1B28 r ...
word_15EC2	dw 0			; DATA XREF: sub_750+26 w sub_77E+7 r ...
word_15EC4	dw 0			; DATA XREF: sub_247A+B r sub_247A+26 w	...
byte_15EC6	db 19h			; DATA XREF: sub_94E:loc_AE0 r
					; sub_94E+199 r	...
byte_15EC7	db 40h			; DATA XREF: sub_10CC+EB r
					; sub_10CC+10C w ...
byte_15EC8	db 0			; DATA XREF: sub_94E+12F r sub_94E+136 r ...
byte_15EC9	db 0			; DATA XREF: sub_94E+128 r sub_10CC+FD r ...
; size_t word_15ECA
word_15ECA	dw 0			; DATA XREF: sub_750+1D r sub_77E+15 r ...
; void *off_15ECC
off_15ECC	dw offset word_15E70	; DATA XREF: sub_750+19 r sub_77E+11 r ...
		db 0FFh
		db 0FFh
		db    0
		db    0
word_15ED2	dw 0			; DATA XREF: sub_247A+74 w sub_2516+55 w ...
word_15ED4	dw 0			; DATA XREF: sub_2516+148 w
					; sub_2516+151 r
word_15ED6	dw 0			; DATA XREF: sub_2516+14B w
word_15ED8	dw 0			; DATA XREF: sub_1310+BD r
					; sub_2516+1A2 w ...
word_15EDA	dw 0			; DATA XREF: sub_1310+B9 r
					; sub_2516+1A5 w
		align 8
word_15EE0	dw 1			; DATA XREF: sub_1404+21 r sub_157A w
		align 8
; __int32 dword_15EE8
dword_15EE8	dd 0			; DATA XREF: sub_196+1C w sub_196+25 r ...
		align 8
; __int32 dword_15EF0
dword_15EF0	dd 0			; DATA XREF: sub_196+D r sub_842+8E r ...
aGame		db 'GAME',0             ; DATA XREF: seg005:3754 o seg005:3764 o ...
		align 2
word_15EFA	dw 0			; DATA XREF: sub_595E+987 r
word_15EFC	dw 0			; DATA XREF: sub_1670+10 w sub_1670+19 r ...
word_15EFE	dw 0			; DATA XREF: sub_1670+13 w sub_1670+29 r ...
word_15F00	dw 0			; DATA XREF: sub_7A6 r sub_7A6+3A r ...
byte_15F02	db 44h			; DATA XREF: sub_18:loc_26 r
					; sub_2336+F9 w	...
byte_15F03	db 95h			; DATA XREF: sub_18:loc_2C r
					; sub_2336+101 w ...
byte_15F04	db 8			; DATA XREF: sub_18+1A r sub_2336+109 w	...
byte_15F05	db 80h			; DATA XREF: sub_18 r sub_2336+111 w ...
byte_15F06	db 2Fh			; DATA XREF: sub_18+8 r	sub_2336+119 w
byte_15F07	db 8Ah			; DATA XREF: sub_18+20 r sub_2336+121 w	...
		db  95h	; Х
byte_15F09	db 86h			; DATA XREF: sub_18+29 r sub_2336+129 w
byte_15F0A	db 80h			; DATA XREF: sub_18+2F r sub_2336+131 w
byte_15F0B	db 8Ah			; DATA XREF: sub_18+35 r sub_2336+139 w
aGame_0		db 'game',0
aMapmenu	db 'mapmenu',0
; char byte_15F19[]
byte_15F19	db 0			; DATA XREF: sub_196+CC o
aView		db 'view',0             ; DATA XREF: sub_11891+1A o
aMapmenu_0	db 'mapmenu',0
; char byte_15F27[]
byte_15F27	db 0			; DATA XREF: sub_196+164 o
; char byte_15F28[]
byte_15F28	db 0			; DATA XREF: sub_196+1E8 o
		db  63h	; c
		db  75h	; u
		db  70h	; p
		db    0
		db  6Dh	; m
		db  61h	; a
		db  70h	; p
		db  6Dh	; m
		db  65h	; e
		db  6Eh	; n
		db  75h	; u
		db    0
; char byte_15F35[]
byte_15F35	db 0			; DATA XREF: sub_196+280 o
; char byte_15F36[]
byte_15F36	db 0			; DATA XREF: sub_196+2CE o
aHelp		db 'help',0
aMapmenu_1	db 'mapmenu',0
; char byte_15F44[]
byte_15F44	db 0			; DATA XREF: sub_196+39D o
; char aMore[]
aMore		db '(More)',0           ; DATA XREF: sub_56A+10D o
; char aMore_0[]
aMore_0		db '(More)',0           ; DATA XREF: sub_56A+15E o
		db '(',0
		db ')',0
		db '(',0
		db ')',0
aSizeDD		db 'Size: (%d, %d)',0
aCursDD		db 'Curs: (%d, %d)',0
; char aTerrainAtCurso[]
aTerrainAtCurso	db 'Terrain at cursor:',0 ; DATA XREF: sub_94E+8E o
; char aSelected[]
aSelected	db 'Selected:',0        ; DATA XREF: sub_94E+110 o
; char aShiftLeftAdd[]
aShiftLeftAdd	db 'Shift-Left:  Add',0 ; DATA XREF: sub_94E+251 o
aShiftRightRemo	db 'Shift-Right: Remove',0 ; DATA XREF: sub_94E+270 o
; char aShiftLeftAdd_0[]
aShiftLeftAdd_0	db 'Shift-Left:  Add',0 ; DATA XREF: sub_94E+2B7 o
aShiftRightRe_0	db 'Shift-Right: Remove',0 ; DATA XREF: sub_94E+2D6 o
; char aShiftLeftPaint[]
aShiftLeftPaint	db 'Shift-Left:  Paint',0 ; DATA XREF: sub_94E+306 o
; char aShiftRightPick[]
aShiftRightPick	db 'Shift-Right: Pick up',0 ; DATA XREF: sub_94E+325 o
aFillRadiusD	db 'Fill radius: %d',0
aCoastProtectOn	db 'Coast Protect: ON',0 ; DATA XREF: sub_94E+375 o
; char aCoastProtectOf[]
aCoastProtectOf	db 'Coast Protect: OFF',0 ; DATA XREF: sub_94E+381 o
		align 2
word_1603E	dw 1			; DATA XREF: sub_D2A+44 w sub_D9E+45 w ...
aMemory		db 'MEMORY',0           ; DATA XREF: sub_15CC+23 o
aDebug		db 'DEBUG',0            ; DATA XREF: sub_15CC+1F o
aUntitled_mp	db 'UNTITLED.MP',0      ; DATA XREF: sub_15FC+12 o
aNewname	db 'NEWNAME',0          ; DATA XREF: sub_15FC+E o
aMapedit_2	db 'MAPEDIT',0          ; DATA XREF: sub_15FC+A o
; char aMp[]
aMp		db 'MP',0               ; DATA XREF: sub_15FC+36 o
aContinents1	db 'CONTINENTS1',0      ; DATA XREF: sub_1670+48 o
aMapedit_9	db 'MAPEDIT',0          ; DATA XREF: sub_1670+44 o
aContinents2	db 'CONTINENTS2',0      ; DATA XREF: sub_1670+5D o
aMapedit_10	db 'MAPEDIT',0          ; DATA XREF: sub_1670+59 o
aSave		db 'SAVE',0             ; DATA XREF: sub_17E0+1CB o
aMapedit_3	db 'MAPEDIT',0          ; DATA XREF: sub_17E0+1C7 o
aError_0	db 'ERROR',0            ; DATA XREF: sub_17E0+1EC o
aMapedit_4	db 'MAPEDIT',0          ; DATA XREF: sub_17E0:loc_19C8 o
aSaveas		db 'SAVEAS',0           ; DATA XREF: sub_17E0+EB o
aMapedit	db 'MAPEDIT',0          ; DATA XREF: sub_17E0+E7 o
; char aMp_0[]
aMp_0		db 'MP',0               ; DATA XREF: sub_17E0+116 o
aError		db 'ERROR',0            ; DATA XREF: sub_17E0+12B o
aMapedit_0	db 'MAPEDIT',0          ; DATA XREF: sub_17E0+127 o
aCreatenow	db 'CREATENOW',0        ; DATA XREF: sub_17E0+16E o
aMapedit_1	db 'MAPEDIT',0          ; DATA XREF: sub_17E0+16A o
aLoad		db 'LOAD',0             ; DATA XREF: sub_17E0+21E o
aMapedit_5	db 'MAPEDIT',0          ; DATA XREF: sub_17E0+21A o
a_mp		db '*.MP',0
aMaptoload	db 'MAPTOLOAD',0
aMapedit_18	db 'MAPEDIT',0
aError_1	db 'ERROR',0            ; DATA XREF: sub_17E0+26E o
aMapedit_6	db 'MAPEDIT',0          ; DATA XREF: sub_17E0+26A o
aExit		db 'EXIT',0             ; DATA XREF: sub_17E0+2AC o
aMapedit_7	db 'MAPEDIT',0          ; DATA XREF: sub_17E0:loc_1A88 o
aError_2	db 'ERROR',0            ; DATA XREF: sub_17E0+2CB o
aMapedit_8	db 'MAPEDIT',0          ; DATA XREF: sub_17E0+2C7 o
aHelp1		db 'HELP1',0            ; DATA XREF: sub_17E0+364 o
aMapedit_11	db 'MAPEDIT',0          ; DATA XREF: sub_17E0:loc_1B40 o
aHelp2		db 'HELP2',0            ; DATA XREF: sub_17E0+370 o
aMapedit_12	db 'MAPEDIT',0          ; DATA XREF: sub_17E0:loc_1B4C o
aHelp3		db 'HELP3',0            ; DATA XREF: sub_17E0+37C o
aMapedit_13	db 'MAPEDIT',0          ; DATA XREF: sub_17E0:loc_1B58 o
aHelp4		db 'HELP4',0            ; DATA XREF: sub_17E0+388 o
aMapedit_14	db 'MAPEDIT',0          ; DATA XREF: sub_17E0:loc_1B64 o
aAbout		db 'ABOUT',0            ; DATA XREF: sub_17E0+394 o
aMapedit_15	db 'MAPEDIT',0          ; DATA XREF: sub_17E0:loc_1B70 o
aExit_0		db 'EXIT',0             ; DATA XREF: sub_1DB6+137 o
aMapedit_16	db 'MAPEDIT',0          ; DATA XREF: sub_1DB6+133 o
aError_3	db 'ERROR',0            ; DATA XREF: sub_1DB6+156 o
aMapedit_17	db 'MAPEDIT',0          ; DATA XREF: sub_1DB6+152 o
aNames		db 'names',0
aLabels		db 'labels',0
aUnforested	db 'UNFORESTED',0
aForested	db 'FORESTED',0
aOther		db 'OTHER',0
aOther_names	db 'OTHER_NAMES',0
aColors		db 'COLORS',0
a_mp_0		db '*.MP',0
aMaptoedit	db 'MAPTOEDIT',0
aMapedit_19	db 'MAPEDIT',0
aViceroy_pal	db 'viceroy.pal',0      ; DATA XREF: sub_2516+48 o
aFontintr	db 'fontintr',0         ; DATA XREF: sub_2516+CE o
aFonttiny	db 'fonttiny',0         ; DATA XREF: sub_2516:loc_2606 o
aCursor		db 'cursor',0           ; DATA XREF: sub_2516:loc_2652 o
aPhys0		db 'phys0',0            ; DATA XREF: sub_2516:loc_2676 o
aIcons		db 'icons',0            ; DATA XREF: sub_2516+196 o
aWoodtile	db 'woodtile',0         ; DATA XREF: sub_2516:loc_26F2 o
aColonizationMa	db 'Colonization Map Editor',0Ah,0
aCopyrightC1994	db 'Copyright (C) 1994 by Microprose Software',0Ah
		db 0Ah,0
aOptions	db 'Options:',0Ah,0
aMapeditStartsE	db '  mapedit           = Starts editor normally',0Ah,0
aMapeditCForceC	db '  mapedit -c        = Force creation of new map',0Ah,0
aMapeditMFileEd	db '  mapedit -m:file   = Edits specified file',0Ah,0
		db '-/',0
aExitValueD	db 'Exit value: %d',0Ah,0
		align 2
; char a0[]
a0		db '0',0                ; DATA XREF: sub_297C+1D o
		align 4
word_1630C	dw 0			; DATA XREF: sub_2A2A:loc_2A3E r
word_1630E	dw 0			; DATA XREF: sub_A100:loc_A175 r
					; sub_A100+89 w	...
; char aMp_1[]
aMp_1		db 'mp',0               ; DATA XREF: sub_A100+12 o sub_A240+12 o ...
		align 2
word_16314	dw 0			; DATA XREF: sub_247A+71 r sub_A0BC+2F w ...
word_16316	dw 0			; DATA XREF: sub_9FF2+A r
					; sub_A0BC:loc_A0D6 w ...
; size_t word_16318
word_16318	dw 0			; DATA XREF: sub_750+15 r sub_77E+1D r ...
; void *word_1631A
word_1631A	dw 0			; DATA XREF: sub_750+11 r sub_77E+19 r ...
; void *word_1631C
word_1631C	dw 0			; DATA XREF: sub_2BDE+A r sub_2BF6+C r ...
; int word_1631E
word_1631E	dw 0			; DATA XREF: sub_2BDE+E r sub_2BF6+10 r	...
; void *word_16320
word_16320	dw 0			; DATA XREF: sub_1670+6E r sub_2C48+A r	...
; int word_16322
word_16322	dw 0			; DATA XREF: sub_1670+72 r sub_2C48+E r	...
word_16324	dw 0			; DATA XREF: sub_2D94+A r seg002:0308 r	...
word_16326	dw 0			; DATA XREF: sub_2D94+E r seg002:030C r	...
word_16328	dw 0			; DATA XREF: sub_94E+1C3 r sub_D9E+13 r	...
word_1632A	dw 0			; DATA XREF: sub_94E+1BF r sub_D9E+F r ...
		align 8
word_16330	dw 0			; DATA XREF: sub_94E+141 r sub_94E+152 r ...
word_16332	dw 0			; DATA XREF: sub_94E+13D r
					; sub_94E:loc_A9C r ...
word_16334	dw 0			; DATA XREF: sub_2516+178 w
					; sub_2516+18F w
word_16336	dw 0			; DATA XREF: sub_2516+175 w
					; sub_2516+192 w
word_16338	dw 0			; DATA XREF: sub_1404+19 w
					; sub_17E0+191 w ...
word_1633A	dw 0			; DATA XREF: sub_1404+1D w
					; sub_17E0+19C w ...
word_1633C	dw 0			; DATA XREF: sub_9FF2+11 w sub_9FF2+28 w ...
word_1633E	dw 0			; DATA XREF: sub_9FF2+17 w sub_9FF2+2B w ...
word_16340	dw 0			; DATA XREF: sub_1310+C5 r sub_1582+1B w ...
word_16342	dw 64h			; DATA XREF: sub_A476+181 w
					; sub_A9C2+12 r	...
word_16344	dw 0Ah			; DATA XREF: sub_A476+18C w
word_16346	dw 0			; DATA XREF: sub_A476+18 r sub_A476+5B r ...
word_16348	dw 0			; DATA XREF: sub_247A+49 w sub_A3CE+F r
word_1634A	dw 0			; DATA XREF: sub_306C+D r sub_ADA2+228 r ...
word_1634C	dw 0			; DATA XREF: sub_2F08+9 r sub_2F08+89 r	...
		db    6
		db    0
		db    1
		db    0
		db    2
		db    0
		db    3
		db    0
		db    4
		db    0
		db    5
		db    0
		db    6
		db    0
		db    6
		db    0
		db    9
		db    0
		db    1
		db    0
		db    8
		db    0
		db    9
		db    0
		db  0Ah
		db    0
		db  0Ah
		db    0
		db    6
		db    0
		db    6
		db    0
		db    9
		db    0
		db    1
		db    0
		db    8
		db    0
		db    9
		db    0
		db  0Ah
		db    0
		db  0Ah
		db    0
		db    6
		db    0
		db    6
		db    0
		db 0FFh
		db 0FFh
		db    7
		db    0
		db 0FFh
		db 0FFh
		db  0Ch
		db    0
		db  0Dh
		db    0
		db  49h	; I
		db  6Ch	; l
		db  6Ch	; l
		db  65h	; e
		db  67h	; g
		db  61h	; a
		db  6Ch	; l
		db  20h
		db  65h	; e
		db  6Eh	; n
		db  74h	; t
		db  72h	; r
		db  79h	; y
		db  20h
		db  69h	; i
		db  6Eh	; n
		db  74h	; t
		db  6Fh	; o
		db  20h
		db  76h	; v
		db  69h	; i
		db  6Ch	; l
		db  6Ch	; l
		db  61h	; a
		db  67h	; g
		db  65h	; e
		db    0
		db    0
aString		db '$STRING',0          ; DATA XREF: sub_334A+E o
word_163AC	dw 7			; DATA XREF: sub_3AAE+97 r
					; sub_5656+1FA r ...
word_163AE	dw 7			; DATA XREF: sub_3AAE+9E r
					; sub_5656+1FE r ...
word_163B0	dw 8			; DATA XREF: sub_18+26 w sub_3AAE+A5 r ...
word_163B2	dw 8			; DATA XREF: sub_18+23 w sub_3AAE+AC r ...
word_163B4	dw 0			; DATA XREF: sub_18+2C w sub_3AAE+B3 r ...
word_163B6	dw 0			; DATA XREF: sub_18+32 w sub_5656+F8 r ...
word_163B8	dw 0			; DATA XREF: sub_18+38 w sub_5656+CA r ...
word_163BA	dw 0			; DATA XREF: sub_18:loc_29 w
					; sub_3AAE+12B r ...
word_163BC	dw 8			; DATA XREF: sub_18+1D w sub_3AAE+127 r	...
word_163BE	dw 0Fh			; DATA XREF: sub_18+17 w sub_3AAE+123 r	...
word_163C0	dw 7			; DATA XREF: sub_18+5 w	sub_3AAE+11F r
word_163C2	dw 8			; DATA XREF: sub_18+B w	sub_3AAE+11B r
word_163C4	dw 0			; DATA XREF: sub_595E+6B r
					; sub_595E+AB6 w ...
word_163C6	dw 0			; DATA XREF: sub_3AAE+68 r
					; sub_3AAE+142 w ...
word_163C8	dw 0FFFFh		; DATA XREF: sub_3AAE+6F r sub_3AAE+80 w
word_163CA	dw 0FFFFh		; DATA XREF: sub_3AAE+76 r sub_3AAE+83 w
word_163CC	dw 0FFFFh		; DATA XREF: sub_3420+4 r sub_3420+3C r	...
word_163CE	dw 0FFFFh		; DATA XREF: sub_34A0+13 r
					; sub_48A4:loc_4C7B r ...
word_163D0	dw 0FFFFh		; DATA XREF: sub_34CA+13 r
					; sub_48A4+3DE r ...
word_163D2	dw 0			; DATA XREF: sub_3916+19 r sub_3916+8C r ...
word_163D4	dw 1			; DATA XREF: sub_18+41 w sub_595E+18C r
word_163D6	dw 0			; DATA XREF: sub_48A4+1D7 r sub_4E56+4 r ...
word_163D8	dw 0			; DATA XREF: sub_595E+20 w
					; sub_595E:loc_5D87 w ...
word_163DA	dw 0			; DATA XREF: sub_4E1A+4 r
word_163DC	dw 0			; DATA XREF: sub_18:loc_53 w
					; sub_2516+21B w ...
word_163DE	dw 0			; DATA XREF: sub_3420+1D w sub_3AAE+C w	...
word_163E0	dw 0			; DATA XREF: sub_34F4+FB w
					; sub_34F4+168 r ...
aKing		db 'KING',0
aInd0a0		db 'IND0A0',0
aMss0		db 'MSS0',0
aMyr0		db 'MYR0',0
a2		db '2',0
word_163FA	dw 0			; DATA XREF: sub_371A+11 r sub_42F4+14 r ...
		db '~{}|',0
		db '~[ ',0
; char asc_16405[]
asc_16405	db ' ',0                ; DATA XREF: sub_4122+D9 o
; char aW[]
aW		db 'W',0                ; DATA XREF: sub_4122+137 o
		db ' ',0
a__1		db '_',0
		align 2
word_1640E	dw 0			; DATA XREF: sub_6462+9 w sub_6682+45 r
word_16410	dw 0			; DATA XREF: sub_6462+C w
					; sub_6682:loc_66C3 r
word_16412	dw 0C00h		; DATA XREF: sub_6462+13 w sub_6682+49 r
aString_0	db 'STRING',0
aNumber		db 'NUMBER',0
aHex		db 'HEX',0
a0_0		db '0',0
aCountry	db 'COUNTRY',0
aYear		db 'YEAR',0
; char asc_16435[]
asc_16435	db '%',0                ; DATA XREF: sub_647A+1EB o
aOptions_0	db 'OPTIONS',0
aPrompt		db 'PROMPT',0
aText		db 'TEXT',0
aSmallfont	db 'SMALLFONT',0
aY		db 'Y',0
		db 'X',0
aWidth		db 'WIDTH',0
aLength		db 'LENGTH',0
aCheckbox	db 'CHECKBOX',0
aDefault	db 'DEFAULT',0
		align 2
word_16478	dw 0			; DATA XREF: sub_6682:loc_66E3 r
					; sub_6682+295 r ...
aTextcolr	db 'TEXTCOLR',0         ; DATA XREF: seg005:38AE o
		align 2
word_16484	dw 7			; DATA XREF: sub_706E+83 r seg006:15F6 w
word_16486	dw 7			; DATA XREF: sub_706E+8D r seg006:1612 w
word_16488	dw 7			; DATA XREF: sub_706E+CB r seg006:15F9 w
word_1648A	dw 7			; DATA XREF: sub_706E+D5 r seg006:1615 w
word_1648C	dw 8			; DATA XREF: sub_2516+235 w
					; sub_706E+DC r	...
word_1648E	dw 8			; DATA XREF: sub_706E+E3 r seg006:164D w
word_16490	dw 8			; DATA XREF: sub_2516+232 w
					; sub_706E+BA r	...
word_16492	dw 8			; DATA XREF: sub_706E+C4 r seg006:164A w
word_16494	dw 0			; DATA XREF: sub_706E+EA r
word_16496	dw 0			; DATA XREF: sub_2516+23E w
					; sub_706E+F9 r	...
word_16498	dw 8			; DATA XREF: sub_2516+247 w
					; sub_706E+F5 r	...
word_1649A	dw 0Fh			; DATA XREF: sub_2516+250 w
					; sub_706E+F1 r	...
word_1649C	dw 0			; DATA XREF: sub_2516+23B w
					; sub_706E+9C r	...
word_1649E	dw 8			; DATA XREF: sub_2516+244 w
					; sub_706E+98 r
word_164A0	dw 0Fh			; DATA XREF: sub_2516+24D w
					; sub_706E+94 r	...
word_164A2	dw 0			; DATA XREF: sub_2516+21E w sub_6DC2+4 r ...
aMenucolr_ss	db 'MENUCOLR.SS',0      ; DATA XREF: seg006:15C4 o
; FILE *word_164B0
word_164B0	dw 0			; DATA XREF: sub_8420 r	sub_8420+7 r ...
; char aTxt[]
aTxt		db 'TXT',0              ; DATA XREF: sub_843A+50 o
aRt		db 'rt',0               ; DATA XREF: sub_843A+5E o
		align 2
		db ' ',0
		db ', ',0
		db ': ',0
a__2		db '.  ',0
		db '%',0
		db '(',0
		db ')',0
		db '{',0
		db '}',0
		db '+',0
		db '-',0
		db 'x',0
a0_1		db '0',0                ; DATA XREF: seg011:0195 o
asc_164D8	db '$',0                ; DATA XREF: seg011:0205 o
aGame_1		db 'game',0
aMenu		db 'menu',0
unk_164E4	db    0			; DATA XREF: seg012:0096 o
unk_164E5	db    0			; DATA XREF: seg012:00E1 o
unk_164E6	db    0			; DATA XREF: seg012:012C o
unk_164E7	db    0			; DATA XREF: seg012:015D o
		db  76h	; v
		db  69h	; i
		db  65h	; e
		db  77h	; w
		db    0
unk_164ED	db    0			; DATA XREF: seg012:0227 o
unk_164EE	db    0			; DATA XREF: seg012:025A o
unk_164EF	db    0			; DATA XREF: seg012:02A8 o
unk_164F0	db    0			; DATA XREF: seg012:032C o
		db  6Fh	; o
		db  72h	; r
		db  64h	; d
		db  65h	; e
		db  72h	; r
		db  73h	; s
		db    0
unk_164F8	db    0			; DATA XREF: seg012:0434 o
unk_164F9	db    0			; DATA XREF: seg012:052D o
unk_164FA	db    0			; DATA XREF: seg012:05B6 o
unk_164FB	db    0			; DATA XREF: seg012:05EA o
		db  72h	; r
		db  65h	; e
		db  70h	; p
		db  6Fh	; o
		db  72h	; r
		db  74h	; t
		db  73h	; s
		db    0
unk_16504	db    0			; DATA XREF: seg012:0683 o
unk_16505	db    0			; DATA XREF: seg012:0707 o
unk_16506	db    0			; DATA XREF: seg012:078B o
		db  74h	; t
		db  72h	; r
		db  61h	; a
		db  64h	; d
		db  65h	; e
		db    0
		db  63h	; c
		db  75h	; u
		db  70h	; p
		db    0
unk_16511	db    0			; DATA XREF: seg012:08A1 o
unk_16512	db    0			; DATA XREF: seg012:08EF o
unk_16513	db    0			; DATA XREF: seg012:093D o
unk_16514	db    0			; DATA XREF: seg012:0990 o
		db  70h	; p
		db  65h	; e
		db  64h	; d
		db  69h	; i
		db  61h	; a
		db    0
unk_1651B	db    0			; DATA XREF: seg012:0A9B o
		db  74h	; t
		db  65h	; e
		db  72h	; r
		db  72h	; r
		db  61h	; a
		db  69h	; i
		db  6Eh	; n
		db    0
		db    0
		db    1
		db    0
		db 0FFh
		db    0
		db    0
		db 0FFh
		db    0
		db    1
		db    0
		db    0
		db    0
		db    0
		db    1
		db    1
		db    1
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    0
		db 0FFh
		db 0FFh
		db    0
		db    1
		db    1
		db    1
		db    0
		db 0FFh
		db    0
		db    0
		db    0
		db    1
		db    0
		db 0FFh
		db 0FFh
		db    1
		db    1
		db 0FFh
		db    0
		db    2
		db    0
		db 0FEh	; ■
		db 0FFh
		db    1
		db 0FFh
		db    1
		db 0FEh	; ■
		db 0FEh	; ■
		db    2
		db    2
		db    0
		db    0
		db 0FFh
		db    0
		db    1
		db    0
		db 0FFh
		db 0FFh
		db    1
		db    1
		db 0FEh	; ■
		db    0
		db    2
		db    0
		db 0FEh	; ■
		db 0FEh	; ■
		db    2
		db    2
		db 0FFh
		db    1
		db 0FFh
		db    1
		db    0
		db    0
		db  42h	; B
		db  61h	; a
		db  63h	; c
		db  68h	; h
		db  75h	; u
		db  6Eh	; n
		db  67h	; g
		db  61h	; a
		db  0Ah
		db    0
unk_1657A	db  72h	; r		; DATA XREF: sub_A100+1E o
		db  62h	; b
		db    0
unk_1657D	db  77h	; w		; DATA XREF: sub_A240+1E o
		db  62h	; b
		db    0
unk_16580	db  72h	; r		; DATA XREF: sub_A3CE+2B o
		db  62h	; b
		db    0
		db    0
byte_16584	db 0			; DATA XREF: sub_A9C2+29 r sub_AA22+27 r ...
byte_16585	db 0			; DATA XREF: sub_A9C2+1B r sub_AA22+19 r ...
word_16586	dw 0			; DATA XREF: sub_D2A+41 r sub_D9E+42 r ...
word_16588	dw 0			; DATA XREF: sub_BCA0+4C r
; char a_[]
a_		db '.',0                ; DATA XREF: sub_C04E+1A o
; char a__0[]
a__0		db '.',0                ; DATA XREF: sub_C09C+45 o
		db '\',0
word_16590	dw 0FFFFh		; DATA XREF: sub_1F8E+A3 r
					; sub_1F8E:loc_2044 r ...
word_16592	dw 0			; DATA XREF: sub_C23A+9 r sub_C252+25 w	...
word_16594	dw 0			; DATA XREF: sub_11EE+10 r sub_1B84 r ...
word_16596	dw 0			; DATA XREF: sub_11EE+13 r sub_1B84+6 r	...
word_16598	dw 0			; DATA XREF: sub_1F8E+1E r sub_20E0+A r	...
word_1659A	dw 0			; DATA XREF: sub_595E+8FF r
					; sub_7B0C+C0 r	...
word_1659C	dw 0			; DATA XREF: sub_595E:loc_5B3F r
					; sub_C252+8C w	...
word_1659E	dw 0			; DATA XREF: sub_C23A+11 w sub_C252+38 r ...
word_165A0	dw 0			; DATA XREF: sub_60:loc_95 r
					; sub_11EE:loc_1215 r ...
word_165A2	dw 0			; DATA XREF: sub_11EE+9 r
					; sub_1226:loc_12E9 r ...
word_165A4	dw 0			; DATA XREF: sub_C23A+3 w
					; sub_C252:loc_C261 w ...
word_165A6	dw 0			; DATA XREF: sub_C23A+6 w sub_C252+15 w	...
word_165A8	dw 0			; DATA XREF: sub_C252+2D w
					; sub_C320:loc_C33D r
word_165AA	dw 0			; DATA XREF: sub_C252+30 w
					; sub_C320:loc_C343 r
aPreserv	db '$preserv',0
		align 2
; int word_165B6
word_165B6	dw 0			; DATA XREF: sub_CABC:loc_CAFB r
					; sub_CABC+7D r	...
		db    0
byte_165B9	db 0			; DATA XREF: sub_CDC6+5C r sub_CDC6+71 w
byte_165BA	db 0			; DATA XREF: sub_CDC6:loc_CE3C r
					; sub_CDC6+8F w	...
byte_165BB	db 0			; DATA XREF: sub_CD2C+9 w
					; sub_CDC6:loc_CF42 w ...
word_165BC	dw 0Bh			; DATA XREF: sub_D43A+15 w sub_DDB8+26 w
; __int32 word_165BE
word_165BE	dw 0			; DATA XREF: sub_CDC6+3A w
					; sub_EE56+103 r
word_165C0	dw 0			; DATA XREF: sub_CDC6+3D w sub_EE56+FF r
; __int32 word_165C2
word_165C2	dw 0			; DATA XREF: sub_CDC6+47 w
					; sub_EE56+118 r
word_165C4	dw 0			; DATA XREF: sub_CDC6+4A w
					; sub_EE56+114 r
word_165C6	dw 0			; DATA XREF: sub_CDC6+54 w
word_165C8	dw 0			; DATA XREF: sub_CDC6+58 w
word_165CA	dw 0FFFFh		; DATA XREF: sub_CDC6+63 w
word_165CC	dw 0FFFFh		; DATA XREF: sub_CDC6+66 w
word_165CE	dw 0E100h		; DATA XREF: sub_CDC6+6A w
					; sub_CDC6+160 r ...
word_165D0	dw 5F5h			; DATA XREF: sub_CDC6+6D w
					; sub_CDC6+158 r ...
word_165D2	dw 0FFFFh		; DATA XREF: sub_CDC6+81 w
					; sub_F36A:loc_F3A5 w
					; DWORD	umb_max_free
word_165D4	dw 0FFFFh		; DATA XREF: sub_CDC6+84 w sub_F36A+41 w
word_165D6	dw 0E100h		; DATA XREF: sub_CDC6+88 w
					; sub_CDC6+124 r ...
word_165D8	dw 5F5h			; DATA XREF: sub_CDC6+8B w
					; sub_CDC6+11C r ...
word_165DA	dw 0			; DATA XREF: sub_CDC6:loc_CF60 r
					; sub_CFA0+41 r
word_165DC	dw 0			; DATA XREF: sub_CDC6:loc_CF5C r
					; sub_CFA0+3D r
word_165DE	dw 0			; DATA XREF: sub_CD80+B w sub_CD80+14 w
aSys		db '$sys$',0            ; DATA XREF: sub_CF72+1 o
dword_165E6	dd 40006Ch		; DATA XREF: sub_D186 r	sub_D33D+6C w ...
		db  14h
		db    0
		db    0			; timer_service_active н чин ется
					;  ссив неопределенно большого	р зер 
					; пото	уст нови, к кого
		db    0
byte_165EE	db 0			; DATA XREF: seg050:loc_D22D w
					; seg050:loc_D243 w ...
byte_165EF	db 0			; DATA XREF: seg050:loc_D298 w
					; seg050:loc_D2E7 w ...
byte_165F0	db 0			; DATA XREF: seg050:0135 w sub_D33D+16 w
word_165F1	dw 0			; DATA XREF: sub_D33D+6F w sub_D3B3 r ...
word_165F3	dw 0			; DATA XREF: seg050:0032 r seg050:0041 w ...
word_165F5	dw 0			; DATA XREF: seg050:002E r
					; seg050:loc_D1FD w ...
word_165F7	dw 0			; DATA XREF: seg050:00F8 w seg050:011A r
word_165F9	dw 0			; DATA XREF: seg050:00F2 w seg050:0116 r
byte_165FB	db 0			; DATA XREF: seg050:0178 w
					; timer_service_active+0fh
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_16620	db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_16630	db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_16640	db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_17018	db    0			; DATA XREF: sub_11891+14 o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_17437	db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_17447	db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_17457	db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0	
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0	
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0	
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_183CC	db    0
unk_183CD	db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_1868C	db    0			; DATA XREF: seg088:0048 o
					; sub_11C61+4C o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_18A7C	db    0
unk_18A7D	db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_1968C	db    0			; DATA XREF: sub_11C61+46 o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0	
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
byte_198FC	db 0			; DATA XREF: seg051:loc_D434 r
		align 2
		db  2Eh	; .
		db  46h	; F
		db  46h	; F
		db    0
unk_19902	db  72h	; r		; DATA XREF: sub_D43A+72 o
		db  62h	; b
		db    0
		db    0
; __int32 word_19906
word_19906	dw 0			; DATA XREF: sub_2516+D7 w sub_2516+E0 r ...
word_19908	dw 0			; DATA XREF: sub_2516+DA w
					; sub_2516+115 r ...
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
word_1991A	dw 0FFFh		; DATA XREF: sub_D538+16 r sub_D6A6+5 w	...
word_1991C	dw 807h			; DATA XREF: sub_D538+19 r sub_D6A6+F w	...
word_1991E	dw 0			; DATA XREF: sub_D7C4+123 w
word_19920	dw 0			; DATA XREF: sub_D7C4+54 w sub_D7C4+A2 r
word_19922	dw 100h			; DATA XREF: sub_D7C4+FB w
					; sub_D7C4+114 w ...
word_19924	dw 300h			; DATA XREF: sub_D70A+B r sub_D7C4+120 w ...
word_19926	dw 0			; DATA XREF: sub_D70A:loc_D70F w
					; sub_D70A:loc_D751 w ...
word_19928	dw 1			; DATA XREF: sub_D75E+3C r sub_D7C4+5 w
		db  2Eh	; .
		db  53h	; S
		db  53h	; S
		db    0
		db  53h	; S
		db  24h	; $
		db    0
unk_19931	db  72h	; r		; DATA XREF: sub_DDB8+BD o
		db  62h	; b
		db    0
aSpLoad		db '$sp-load',0         ; DATA XREF: sub_DDB8+1F3 o
aColor		db '$color$',0          ; DATA XREF: sub_DDB8+264 o
aArena		db '$arena$',0          ; DATA XREF: sub_DDB8+88F o
		align 2
word_1994E	dw 0			; DATA XREF: sub_DDB8+CD w
					; sub_DDB8:loc_DE8E w ...
word_19950	dw 0			; DATA XREF: sub_34F4+CC w
					; sub_34F4+131 w ...
word_19952	dw 0			; DATA XREF: sub_34F4+D2 w
					; sub_34F4+12E w ...
word_19954	dw 0			; DATA XREF: sub_DDB8+190 r
					; sub_DDB8:loc_DF63 r ...
word_19956	dw 0			; DATA XREF: sub_DDB8:loc_DF45 r
					; sub_DDB8+1AE r ...
unk_19958	db  72h	; r		; DATA XREF: sub_EC0A+C o
		db  62h	; b
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
word_19964	dw 0			; DATA XREF: sub_7A6+13 r sub_7A6+55 r ...
word_19966	dw 0			; DATA XREF: sub_7A6+F r sub_7A6+51 r ...
word_19968	dw 0			; DATA XREF: sub_7A6+B r sub_7A6+4D r ...
word_1996A	dw 0			; DATA XREF: sub_7A6+7 r sub_7A6+49 r ...
word_1996C	dw 0			; DATA XREF: sub_1310+84 r
					; sub_2516:loc_2596 o ...
word_1996E	dw 0			; DATA XREF: sub_1310+80 r sub_371A+20 r ...
word_19970	dw 0			; DATA XREF: sub_1310+7C r sub_2516+92 r ...
word_19972	dw 0			; DATA XREF: sub_1310+78 r sub_2516+8F r ...
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
word_1998C	dw 0C8h			; DATA XREF: sub_1670+134 r
word_1998E	dw 140h			; DATA XREF: sub_1670+130 r
word_19990	dw 0			; DATA XREF: sub_1670+12C r
word_19992	dw 0A000h		; DATA XREF: sub_1670+128 r
unk_19994	db  72h	; r		; DATA XREF: sub_ED08+F o
		db  74h	; t
		db    0
		db    0
dword_19998	dd 0			; DATA XREF: sub_EE56+26A r
					; sub_EE56+270 r ...
dword_1999C	dd 0			; DATA XREF: sub_EE56+25D r
					; sub_EE56+263 r ...
word_199A0	dw 1			; DATA XREF: sub_F0D6+12 r
; char byte_199A2[]
byte_199A2	db 50h dup(0)		; DATA XREF: sub_EE56+E5 o
unk_199F2	db  72h	; r		; DATA XREF: sub_EDAC+D o
		db  74h	; t
		db    0
		db  2Ah	; *
		db  2Ah	; *
		db  2Ah	; *
		db    0
		db  45h	; E
		db  72h	; r
		db  72h	; r
		db  6Fh	; o
		db  72h	; r
		db  20h
		db  22h	; "
		db    0
		db  22h	; "
		db  20h
		db  69h	; i
		db  6Eh	; n
		db  20h
		db  6Dh	; m
		db  6Fh	; o
		db  64h	; d
		db  75h	; u
		db  6Ch	; l
		db  65h	; e
		db  20h
		db  22h	; "
		db    0
		db  22h	; "
		db  20h
		db  64h	; d
		db  61h	; a
		db  74h	; t
		db  61h	; a
		db  3Ah	; :
		db  20h
		db    0
		db  20h
		db    0
		db  54h	; T
		db  72h	; r
		db  69h	; i
		db  65h	; e
		db  64h	; d
		db  20h
		db  74h	; t
		db  6Fh	; o
		db  20h
		db  61h	; a
		db  6Ch	; l
		db  6Ch	; l
		db  6Fh	; o
		db  63h	; c
		db  61h	; a
		db  74h	; t
		db  65h	; e
		db  20h
		db    0
		db  20h
		db  62h	; b
		db  79h	; y
		db  74h	; t
		db  65h	; e
		db  73h	; s
		db  20h
		db  77h	; w
		db  68h	; h
		db  65h	; e
		db  6Eh	; n
		db  20h
		db  6Fh	; o
		db  6Eh	; n
		db  6Ch	; l
		db  79h	; y
		db  20h
		db    0
		db  20h
		db  62h	; b
		db  79h	; y
		db  74h	; t
		db  65h	; e
		db  73h	; s
		db  20h
		db  77h	; w
		db  65h	; e
		db  72h	; r
		db  65h	; e
		db  20h
		db  66h	; f
		db  72h	; r
		db  65h	; e
		db  65h	; e
		db  2Eh	; .
		db    0
; char asc_19A51[]
asc_19A51	db ' ',0                ; DATA XREF: sub_EE56+17D o
aMostRecentMemo	db 'Most recent memory check: ',0
aMostRecentDosE	db 'Most recent DOS error:    ',0
aStackUseIndica	db 'Stack use indicator:      ',0
; char asc_19AA4[]
asc_19AA4	db ' ',0                ; DATA XREF: sub_EE56+241 o
aWarn0_dat	db '*warn0.dat',0       ; DATA XREF: sub_EE56+24C o
aWarn6_dat	db '*warn6.dat',0       ; DATA XREF: sub_EE56:loc_F0A8 o
aErrors_db	db '*ERRORS.DB',0       ; DATA XREF: sub_F0D6+67 o
aModules_db	db '*MODULES.DB',0      ; DATA XREF: sub_F0D6+73 o
		align 2
word_19AD4	dw 0			; DATA XREF: sub_34F4+A0 r sub_34F4+A7 w ...
word_19AD6	dw 0			; DATA XREF: seg065:00F9 w seg065:00FD r ...
word_19AD8	dw 0			; DATA XREF: sub_F36A+4 w sub_F36A+35 w	...
word_19ADA	dw 0			; DATA XREF: _main+6 w sub_F36A+A r
dword_19ADC	dd 0			; DATA XREF: sub_F36A:loc_F389 w
					; sub_F36A+29 r	...
word_19AE0	dw 0			; DATA XREF: sub_F36A+6F w
		align 4
word_19AE4	dw 0			; DATA XREF: sub_F6D6+136 r
					; seg069:0289 r	...
word_19AE6	dw 0			; DATA XREF: seg069:0293 w seg069:02FD r ...
word_19AE8	dw 0			; DATA XREF: seg069:029A w seg069:0313 r
word_19AEA	dw 0			; DATA XREF: seg069:02A0 w seg069:0305 r ...
word_19AEC	dw 0			; DATA XREF: seg069:loc_F9BF w
					; sub_F9DA+14 r
byte_19AEE	db 0			; DATA XREF: seg069:0372 w sub_F9DA+3C r ...
word_19AEF	dw 0			; DATA XREF: seg069:0376 w sub_F9DA+20 r
word_19AF1	dw 0			; DATA XREF: seg069:037A w sub_F9DA+24 r
word_19AF3	dw 0			; DATA XREF: seg069:02EC r sub_F9DA+7 w	...
word_19AF5	dw 0			; DATA XREF: sub_F6D6+B9 r seg069:02A6 w ...
word_19AF7	dw 0			; DATA XREF: sub_F6D6+BC w seg069:02A9 w ...
byte_19AF9	db 0			; DATA XREF: sub_F6D6+B4 w seg069:02B2 w ...
word_19AFA	dw 0			; DATA XREF: seg069:061E r sub_FC9A r ...
word_19AFC	dw 0			; DATA XREF: seg069:0623 r sub_FC9A+5 r	...
byte_19AFE	db 0			; DATA XREF: sub_F6D6+98 w sub_FA48+2E r ...
byte_19AFF	db 0			; DATA XREF: sub_FA48+35 w sub_FB0F+7 w	...
word_19B00	dw 0			; DATA XREF: sub_FCBF+6E w
		align 4
word_19B04	dw 0			; DATA XREF: seg069:0204 w sub_FCBF+12 r
word_19B06	dw 0			; DATA XREF: seg069:0207 w sub_FCBF+24 r
word_19B08	dw 0			; DATA XREF: sub_FCBF:loc_FCDF w
					; sub_FE1D+23 r
word_19B0A	dw 0			; DATA XREF: sub_FCBF:loc_FCF1 w
					; sub_FE1D+38 r
word_19B0C	dw 0			; DATA XREF: sub_F6D6+C1 w sub_F6D6+F2 w ...
word_19B0E	dw 0			; DATA XREF: sub_F6D6:loc_F7D1 r
					; seg069:092C w
word_19B10	dw 0			; DATA XREF: sub_FA48+3A w
					; sub_FB21:loc_FB2E r
word_19B12	dw 0			; DATA XREF: sub_FA48+3E w sub_FB21+11 r
word_19B14	dw 10h			; DATA XREF: seg069:062E r seg069:065E r ...
word_19B16	dw 10h			; DATA XREF: seg069:0632 r seg069:0662 r ...
word_19B18	dw 0			; DATA XREF: sub_FCBF+2 w sub_FCBF+1A w	...
word_19B1A	dw 0			; DATA XREF: sub_FCBF+6 w sub_FCBF+2C w	...
word_19B1C	dw 0			; DATA XREF: seg069:062A r seg069:065A r ...
		db    0
byte_19B1F	db 0			; DATA XREF: sub_F6D6+AF w
word_19B20	dw 0			; DATA XREF: sub_FDAE+D w sub_FE1D+FA r	...
word_19B22	dw 0			; DATA XREF: sub_FDAE+8 w sub_FDF8+1C r
word_19B24	dw 0			; DATA XREF: sub_FDAE+13 w sub_FDF8+11 r ...
word_19B26	dw 0			; DATA XREF: sub_FDC7+9 w sub_FE1D+32 r	...
word_19B28	dw 0			; DATA XREF: sub_FDC7+17 w sub_FE1D+27 r ...
word_19B2A	dw 0			; DATA XREF: sub_FDC7+10 w sub_FE1D+46 r ...
word_19B2C	dw 0			; DATA XREF: sub_FDC7+1D w sub_FE1D+3B r ...
word_19B2E	dw 0			; DATA XREF: sub_FDF8+7 w
word_19B30	dw 0			; DATA XREF: sub_FDF8+E w
word_19B32	dw 0			; DATA XREF: sub_FDF8+19 w
word_19B34	dw 0			; DATA XREF: sub_FDF8+20 w sub_FE1D+D2 r
word_19B36	dw 0			; DATA XREF: sub_FDC7+25 w
word_19B38	dw 0			; DATA XREF: sub_FDC7+29 w
word_19B3A	dw 0			; DATA XREF: sub_FE1D+112 w sub_FF53+3 r
word_19B3C	dw 0			; DATA XREF: sub_FE1D+115 w sub_FF53+6 r
word_19B3E	dw 0			; DATA XREF: sub_FE1D+119 w sub_FF53+A r
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_1A01A	db    0			; DATA XREF: sub_11891+B o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
word_1A142	dw 0			; DATA XREF: sub_FA48+17 w sub_FAAD+17 w ...
word_1A144	dw 0			; DATA XREF: sub_FA48+1B w sub_FAAD+1B w ...
word_1A146	dw 0			; DATA XREF: sub_FA48+7 r
					; sub_FA48:loc_FA59 w ...
		db 0FFh
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    7
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    7
		db    7
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    7
		db  0Fh
		db    7
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    7
		db  0Fh
		db  0Fh
		db    7
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    7
		db  0Fh
		db  0Fh
		db  0Fh
		db    7
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    7
		db  0Fh
		db  0Fh
		db  0Fh
		db  0Fh
		db    7
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    7
		db  0Fh
		db  0Fh
		db  0Fh
		db  0Fh
		db  0Fh
		db    7
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    7
		db  0Fh
		db  0Fh
		db  0Fh
		db  0Fh
		db    7
		db    7
		db    7
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    7
		db  0Fh
		db    7
		db  0Fh
		db  0Fh
		db    0
		db    0
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    7
		db    7
		db    0
		db    7
		db  0Fh
		db    7
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    0
		db 0FFh
		db    0
		db    7
		db  0Fh
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    7
		db  0Fh
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  3Fh	; ?
		db  3Fh	; ?
		db  3Fh	; ?
word_1A24E	dw 0			; DATA XREF: sub_F6D6+10A w sub_FC9A+9 r
word_1A250	dw 0			; DATA XREF: sub_F6D6+110 w
					; sub_FCBF+72 r
word_1A252	dw 0			; DATA XREF: sub_F6D6+116 w
					; sub_FE1D:loc_FEDD r
word_1A254	dw 0			; DATA XREF: sub_F6D6+11C w sub_FF53+E r
word_1A256	dw 0			; DATA XREF: sub_F6D6+122 w
					; seg069:0614 r
		db  77h	; w
		db  62h	; b
		db    0
		db    0
		db  24h	; $
		db  4Dh	; M
		db  50h	; P
		db  4Fh	; O
		db  50h	; P
		db  2Eh	; .
		db  24h	; $
		db    0
byte_1A264	db 0			; DATA XREF: sub_1025C:loc_10273 r
					; sub_1025C+23 w ...
		align 10h
		db  72h	; r
		db  62h	; b
		db    0
		db    0
dword_1A274	dd 0			; DATA XREF: sub_DDB8+61C r
					; seg081:039B w	...
word_1A278	dw 0			; DATA XREF: seg081:00D1 w seg081:00F7 r ...
word_1A27A	dw 0			; DATA XREF: seg081:004D r seg081:005C w
word_1A27C	dw 0			; DATA XREF: seg081:00DD r seg081:01C9 r ...
word_1A27E	dw 0			; DATA XREF: seg081:00D9 r seg081:01C5 r ...
word_1A280	dw 0			; DATA XREF: sub_1074E+E w
					; sub_1074E+15 w
word_1A282	dw 0			; DATA XREF: seg081:00D4 w
					; sub_10B56+582 w ...
byte_1A284	db 0			; DATA XREF: seg083:00BA w sub_11269+2 r
word_1A285	dw 0			; DATA XREF: seg083:0042 w seg083:0062 r
word_1A287	dw 0			; DATA XREF: seg083:0046 w seg083:0068 r
word_1A289	dw 0			; DATA XREF: seg083:006F r
		db    0
		db    0
		db  24h	; $
		db  73h	; s
		db  6Fh	; o
		db  75h	; u
		db  6Eh	; n
		db  64h	; d
		db  24h	; $
		db  20h
		db    0
		db    0			; сюд  обр щ ется ф-я sound_queue
					;  ссив из 10h	б йтов byte_1A296
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
byte_1A2A6	db 0			; DATA XREF: sub_11274:loc_1127F r
					; sub_11274+21 w ...
byte_1A2A7	db 0			; DATA XREF: sub_11274 r seg084:002B w ...
word_1A2A8	dw 0			; DATA XREF: sub_112D6+5 w
					; sub_112D6+7F w
word_1A2AA	dw 0			; DATA XREF: sub_112D6+A9 w
					; sub_1138A+3 r	...
word_1A2AC	dw 0			; DATA XREF: sub_112D6+5B w
word_1A2AE	dw 0			; DATA XREF: sub_112D6:loc_11378 w
					; sub_1138A+A r	...
word_1A2B0	dw 0			; DATA XREF: sub_112D6+89 w
					; sub_1145C+7 r	...
word_1A2B2	dw 0			; DATA XREF: sub_112D6:loc_11321 w
					; sub_1142E+B r
word_1A2B4	dw 0			; DATA XREF: sub_112D6+54 w
word_1A2B6	dw 0			; DATA XREF: sub_112D6+20 r
word_1A2B8	dw 0			; DATA XREF: sub_113A4+9 w sub_1145C r ...
word_1A2BA	dw 0FFFFh		; DATA XREF: sub_113A4+21 w
					; ems_mapping_changed
		db 0FFh			; short	ems_page_mapped	[8]
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
word_1A2CC	dw 0			; DATA XREF: sub_103DA+41 r
					; sub_1046E:loc_1049B r	...
					; DWORD	ems_page[4]
word_1A2CE	dw 0			; DATA XREF: sub_103DA+44 r
					; sub_1046E+30 r ...
word_1A2D0	dw 0			; DATA XREF: sub_11486+23 r
					; sub_1297E+24 r
word_1A2D2	dw 0			; DATA XREF: sub_11486+26 r
					; sub_1297E+27 r
; size_t word_1A2D4
word_1A2D4	dw 0			; DATA XREF: sub_12EC8+A2 r
					; sub_1302A+51 r
word_1A2D6	dw 0			; DATA XREF: sub_12EC8+A6 r
					; sub_1302A+4D r
; void *word_1A2D8
word_1A2D8	dw 0			; DATA XREF: sub_1302A+59 r
; void *word_1A2DA
word_1A2DA	dw 0			; DATA XREF: sub_1302A:loc_1307F r
aEmmxxxx0	db 'EMMXXXX0',0
		align 2
word_1A2E6	dw 0			; DATA XREF: sub_11486+55 w
					; sub_114F0+2C r ...
word_1A2E8	dw 0			; DATA XREF: sub_11556+28 r
					; seg086:loc_11682 w
word_1A2EA	dw 0			; DATA XREF: sub_11486+58 w
					; sub_11486+63 r ...
dword_1A2EC	dd 0			; DATA XREF: sub_11486+2A w
					; sub_11486+39 r ...
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_1A2F8	db    0			; DATA XREF: sub_120A6+3B o
					; sub_120A6+63 o
		db    0
		db    0
byte_1A2FB	db 0			; DATA XREF: sub_F16E+6 w
; __int32 word_1A2FC
word_1A2FC	dw 1			; DATA XREF: sub_F16E w	sub_120A6+1B r ...
dword_1A2FE	dd 0			; DATA XREF: sub_120A6+6B r
					; sub_130DA+117 r ...
dword_1A302	dd 0			; DATA XREF: sub_120A6+F4 r
					; sub_130DA+1FA r ...
dword_1A306	dd 0			; DATA XREF: sub_F16E+B w sub_120A6+43 r ...
dword_1A30A	dd 0			; DATA XREF: sub_F16E+17 w
					; sub_120A6+99 r ...
dword_1A30E	dd 0			; DATA XREF: sub_F16E+23 w
					; sub_120A6+B8 r ...
dword_1A312	dd 0			; DATA XREF: sub_F16E+2F w
					; sub_120A6+D6 r ...
; char aMadspack2_0[]
aMadspack2_0	db 'MADSPACK 2.0'       ; DATA XREF: sub_121A0+1F5 o
		db  1Ah
		db    0
; char aMadspack2_0_0[]
aMadspack2_0_0	db 'MADSPACK 2.0'       ; DATA XREF: sub_121A0+2B5 o
		db  1Ah
		db    0
word_1A332	dw 0			; DATA XREF: sub_121A0+161 w
word_1A334	dw 0			; DATA XREF: sub_121A0+166 w
word_1A336	dw 0			; DATA XREF: sub_121A0:loc_1230E w
word_1A338	dw 0			; DATA XREF: sub_121A0+173 w
word_1A33A	dw 0			; DATA XREF: sub_121A0:loc_12499 w
word_1A33C	dw 0			; DATA XREF: sub_121A0+2FE w
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
word_1A356	dw 0			; DATA XREF: sub_121A0+5A r
; char byte_1A358[]
byte_1A358	db 0Eh dup(0)		; DATA XREF: sub_121A0+1D o
word_1A366	dw 0			; DATA XREF: sub_12818+7 r
					; sub_12818+30 r ...
		db    0
byte_1A369	db 0			; DATA XREF: sub_1297E:loc_129C6 r
byte_1A36A	db 0FFh			; DATA XREF: sub_F3EC:loc_F419 r
					; sub_12906+3 r	...
		align 2
dword_1A36C	dd 0			; DATA XREF: sub_114F0+5A r
					; sub_1292A+1A r ...
word_1A370	dw 0FFFFh		; DATA XREF: sub_F3EC:loc_F420 r
					; sub_1292A+39 r ...
word_1A372	dw 0			; DATA XREF: sub_12906+16 w
word_1A374	dw 0			; DATA XREF: sub_F3EC:loc_F428 w
					; sub_114F0+D r	...
aHimem		db '$HIMEM$',0          ; DATA XREF: sub_1297E+6E o
word_1A37E	dw 0			; DATA XREF: seg070:loc_10133 r
					; sub_12ADC:loc_12AF0 w
word_1A380	dw 4D2h			; DATA XREF: sub_12ADC+3 r sub_12ADC+9 r ...
word_1A382	dw 0			; DATA XREF: seg108:0033 w
					; sub_130DA+225 r ...
word_1A384	dw 0			; DATA XREF: seg108:0036 w
					; sub_130DA+222 r ...
dword_1A386	dd 0			; DATA XREF: sub_130A4+4 r sub_130A4+E r ...
aPack		db '$pack$',0           ; DATA XREF: sub_130DA+22C o
		align 2
aHimem_0	db '$HIMEM$',0          ; DATA XREF: sub_1345A+78 o
		db    0
		db    0
		db    0
		db    0
word_1A39E	dw 0			; DATA XREF: start+66 w
off_1A3A0	dw offset __exit	; DATA XREF: seg118:00EA w
word_1A3A2	dw 0			; DATA XREF: start+42 w
		db    0
		db    0
		db    5
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
word_1A3BC	dw 435Fh		; DATA XREF: __setenvp+53 r
a_file_info	db '_FILE_INFO=',0
dword_1A3CA	dd 0			; DATA XREF: __ctermsub+E r
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
; int word_1A3D8
word_1A3D8	dw 0			; DATA XREF: sub_EE56+1DA r
					; _fseek:loc_14097 w ...
word_1A3DA	dw 0			; DATA XREF: __cXENIXtoDOSmode r
		db    0
		db    0
word_1A3DE	dw 0			; DATA XREF: start+7B w	__cinit+1F r ...
word_1A3E0	dw 0			; DATA XREF: __setargv+C w sub_14AE0+7 r ...
		db    0
byte_1A3E3	db 0			; DATA XREF: sub_14AE0 w
		db    0
word_1A3E5	dw 14h			; DATA XREF: _filelength+E r _close+6 r	...
		db  81h	; Б
		db  81h	; Б
		db  81h	; Б
		db    1
		db    1
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
; int argc
argc		dw 0			; DATA XREF: start+B4 r	__setargv+C7 w
; char **argv
argv		dw 0			; DATA XREF: start+B0 r	__setargv+DA w
; char *envp
envp		dw 0			; DATA XREF: start+AC r	__setenvp+40 w
word_1A401	dw 4595h		; DATA XREF: __setargv+32 w
					; __setargv+E8 r
seg_1A403	dw seg dseg		; DATA XREF: __setargv+1F w
		align 4
byte_1A408	db 0			; DATA XREF: __ctermsub+18 r
byte_1A409	db 0			; DATA XREF: __ctermsub+20 r
dword_1A40A	dd 0			; DATA XREF: __ctermsub+23 r
dword_1A40E	dd 0FFFFFFFFh		; DATA XREF: __aFchkstk+15 r
					; __aFchkstk:loc_13B3E r
word_1A412	dw 6AB0h		; DATA XREF: seg100:loc_12AA3 r
					; sub_12ABB+3 r	...
		unicode	0, <\\>
		dw 2000h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  28h	; (
		db  28h	; (
		db  28h	; (
		db  28h	; (
		db  28h	; (
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  48h	; H
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  84h	; Д
		db  84h	; Д
		db  84h	; Д
		db  84h	; Д
		db  84h	; Д
		db  84h	; Д
		db  84h	; Д
		db  84h	; Д
		db  84h	; Д
		db  84h	; Д
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  81h	; Б
		db  81h	; Б
		db  81h	; Б
		db  81h	; Б
		db  81h	; Б
		db  81h	; Б
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db    1
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  10h
		db  82h	; В
		db  82h	; В
		db  82h	; В
		db  82h	; В
		db  82h	; В
		db  82h	; В
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db    2
		db  10h
		db  10h
		db  10h
		db  10h
		db  20h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_1A51A	db    0			; DATA XREF: __FF_MSGBANNER+12 r
		db    0
word_1A51C	dw 0			; DATA XREF: __FF_MSGBANNER+B r
dword_1A51E	dd 0			; DATA XREF: __setargv w __setargv+18E r ...
		db    0
		db  16h
		db    2
		db    2
		db  18h
		db  0Dh
		db    9
		db  0Ch
		db  0Ch
		db  0Ch
		db    7
		db    8
		db  16h
		db  16h
		db 0FFh
		db    2
		db  0Dh
		db  12h
		db    2
		db 0FFh
		db  70h	; p
		db  4Ch	; L
		db    0
		db    0
		db  70h	; p
		db  4Ch	; L
		db    1
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    2
		db    1
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    2
		db    2
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  84h	; Д
		db    3
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    2
		db    4
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    1
		db    0
		db    0
		db    2
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
word_1A676	dw 475Eh		; DATA XREF: flsall:loc_14EE4 r
					; __getstream:loc_1540B r
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    6
		db    0
		db    0
		db    6
		db    0
		db    1
		db    0
		db    0
		db  10h
		db    0
		db    3
		db    6
		db    0
		db    6
		db    2
		db  10h
		db    4
		db  45h	; E
		db  45h	; E
		db  45h	; E
		db    5
		db    5
		db    5
		db    5
		db    5
		db  35h	; 5
		db  30h	; 0
		db    0
		db  50h	; P
		db    0
		db    0
		db    0
		db    0
		db  20h
		db  20h
		db  30h	; 0
		db  50h	; P
		db  58h	; X
		db    7
		db    8
		db    0
		db  30h	; 0
		db  30h	; 0
		db  30h	; 0
		db  57h	; W
		db  50h	; P
		db    7
		db    0
		db    0
		db  20h
		db  20h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    8
		db  60h	; `
		db  60h	; `
		db  60h	; `
		db  60h	; `
		db  60h	; `
		db  60h	; `
		db    0
		db    0
		db  70h	; p
		db  70h	; p
		db  78h	; x
		db  78h	; x
		db  78h	; x
		db  78h	; x
		db    8
		db    7
		db    8
		db    0
		db    0
		db    7
		db    0
		db    8
		db    8
		db    8
		db    0
		db    0
		db    8
		db    0
		db    8
		db    0
		db    0
		db    8
		db  28h	; (
		db  6Eh	; n
		db  75h	; u
		db  6Ch	; l
		db  6Ch	; l
		db  29h	; )
word_1A6DD	dw 6			; DATA XREF: __output+1A7 r
		align 2
word_1A6E0	dw 0			; DATA XREF: __openfile:loc_14D63 w
					; _setvbuf:loc_15984 w
off_1A6E2	dd __fptrap		; DATA XREF: __output:loc_151A6 r
off_1A6E6	dd __fptrap		; DATA XREF: __output+2AC r
		dd __fptrap
off_1A6EE	dd __fptrap		; DATA XREF: __output+298 r
		dd __fptrap
off_1A6F6	dd __fptrap		; DATA XREF: __output+276 r
		db    0
		db    0
		db    0
		db    0
		db    1
		db    0
		db    0
byte_1A701	db 0			; DATA XREF: _sopen+38 r
word_1A702	dw 2000h		; DATA XREF: __myalloc+6 w
					; __myalloc+12 w ...
word_1A704	dw 0			; DATA XREF: start+91 r
word_1A706	dw 0			; DATA XREF: __aFchkstk-1A4 r
					; __exit+31 r ...
off_1A708	dw offset locret_13960	; DATA XREF: __dos_write+13 r
					; __NMSG_WRITE+27 r ...
off_1A70A	dw offset locret_13960	; DATA XREF: __aFchkstk-199 r
off_1A70C	dw offset locret_13960	; DATA XREF: __exit+39 r
		align 4
		dd seg_15E50
		db    0
		db    0
unk_1A716	db    0			; DATA XREF: __cinit+30 r __cinit+46 r ...
		db    0
word_1A718	dw 0			; DATA XREF: __cinit+19 r __ctermsub r
dword_1A71A	dd 0			; DATA XREF: __cinit+28 r
dword_1A71E	dd 0			; DATA XREF: __cinit:loc_139D2 r
		dd _flushall
seg_1A726	dw seg seg120		; DATA XREF: sub_DDB8+5A0 r
					; sub_DDB8+5CC r
aNmsg		db '<<NMSG>>',0
		align 2
aR6000StackOver	db 'R6000',0Dh,0Ah
		db '- stack overflow',0Dh,0Ah,0
		db    3
		db    0
		db  52h	; R
		db  36h	; 6
		db  30h	; 0
		db  30h	; 0
		db  33h	; 3
		db  0Dh
		db  0Ah
		db  2Dh	; -
		db  20h
		db  69h	; i
		db  6Eh	; n
		db  74h	; t
		db  65h	; e
		db  67h	; g
		db  65h	; e
		db  72h	; r
		db  20h
		db  64h	; d
		db  69h	; i
		db  76h	; v
		db  69h	; i
		db  64h	; d
		db  65h	; e
		db  20h
		db  62h	; b
		db  79h	; y
		db  20h
		db  30h	; 0
		db  0Dh
		db  0Ah
		db    0
		db    9
		db    0
		db  52h	; R
		db  36h	; 6
		db  30h	; 0
		db  30h	; 0
		db  39h	; 9
		db  0Dh
		db  0Ah
		db  2Dh	; -
		db  20h
		db  6Eh	; n
		db  6Fh	; o
		db  74h	; t
		db  20h
		db  65h	; e
		db  6Eh	; n
		db  6Fh	; o
		db  75h	; u
		db  67h	; g
		db  68h	; h
		db  20h
		db  73h	; s
		db  70h	; p
		db  61h	; a
		db  63h	; c
		db  65h	; e
		db  20h
		db  66h	; f
		db  6Fh	; o
		db  72h	; r
		db  20h
		db  65h	; e
		db  6Eh	; n
		db  76h	; v
		db  69h	; i
		db  72h	; r
		db  6Fh	; o
		db  6Eh	; n
		db  6Dh	; m
		db  65h	; e
		db  6Eh	; n
		db  74h	; t
		db  0Dh
		db  0Ah
		db    0
		db 0FCh	; №
		db    0
		db  0Dh
		db  0Ah
		db    0
		db 0FFh
		db    0
		db  72h	; r
		db  75h	; u
		db  6Eh	; n
		db  2Dh	; -
		db  74h	; t
		db  69h	; i
		db  6Dh	; m
		db  65h	; e
		db  20h
		db  65h	; e
		db  72h	; r
		db  72h	; r
		db  6Fh	; o
		db  72h	; r
		db  20h
		db    0
		db    2
		db    0
		db  52h	; R
		db  36h	; 6
		db  30h	; 0
		db  30h	; 0
		db  32h	; 2
		db  0Dh
		db  0Ah
		db  2Dh	; -
		db  20h
		db  66h	; f
		db  6Ch	; l
		db  6Fh	; o
		db  61h	; a
		db  74h	; t
		db  69h	; i
		db  6Eh	; n
		db  67h	; g
		db  2Dh	; -
		db  70h	; p
		db  6Fh	; o
		db  69h	; i
		db  6Eh	; n
		db  74h	; t
		db  20h
		db  73h	; s
		db  75h	; u
		db  70h	; p
		db  70h	; p
		db  6Fh	; o
		db  72h	; r
		db  74h	; t
		db  20h
		db  6Eh	; n
		db  6Fh	; o
		db  74h	; t
		db  20h
		db  6Ch	; l
		db  6Fh	; o
		db  61h	; a
		db  64h	; d
		db  65h	; e
		db  64h	; d
		db  0Dh
		db  0Ah
		db    0
		db    1
		db    0
		db  52h	; R
		db  36h	; 6
		db  30h	; 0
		db  30h	; 0
		db  31h	; 1
		db  0Dh
		db  0Ah
		db  2Dh	; -
		db  20h
		db  6Eh	; n
		db  75h	; u
		db  6Ch	; l
		db  6Ch	; l
		db  20h
		db  70h	; p
		db  6Fh	; o
		db  69h	; i
		db  6Eh	; n
		db  74h	; t
		db  65h	; e
		db  72h	; r
		db  20h
		db  61h	; a
		db  73h	; s
		db  73h	; s
		db  69h	; i
		db  67h	; g
		db  6Eh	; n
		db  6Dh	; m
		db  65h	; e
		db  6Eh	; n
		db  74h	; t
		db  0Dh
		db  0Ah
		db    0
		db 0FFh
		db 0FFh
		db 0FFh
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1A80E	dw ?			; DATA XREF: sub_C9DE+33 o sub_C9DE+65 r ...
word_1A810	dw ?			; DATA XREF: sub_C9DE+61 r sub_CABC+94 r
word_1A812	dw ?			; DATA XREF: sub_C9DE:loc_CA23 r
					; sub_C9DE+5D r	...
word_1A814	dw ?			; DATA XREF: sub_C9DE+42 r sub_C9DE+59 r ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1A81A	dw ?			; DATA XREF: _sprintf+38 r _sprintf+3C w
word_1A81C	dw ?			; DATA XREF: _sprintf+18 w _sprintf+32 w
word_1A81E	dw ?			; DATA XREF: _sprintf+10 w
byte_1A820	db ?			; DATA XREF: _sprintf+8 w
		align 10h
word_1A830	dw ?			; DATA XREF: sub_3AAE+184 r sub_F657+7 r ...
word_1A832	dw ?			; DATA XREF: sub_2082+D r sub_B63C+6 w ...
byte_1A834	db ?			; DATA XREF: sub_A724+A r seg016:02DB w
		align 2
word_1A836	dw ?			; DATA XREF: sub_2516+298 r sub_EC58+7 w
dword_1A838	dd ?			; DATA XREF: sub_11556+A2 r
					; sub_1297E+35 w ...
word_1A83C	dw ?			; DATA XREF: seg081:0039 w
					; sub_10B56+5D r
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; char *off_1A85E
off_1A85E	dw ?			; DATA XREF: sub_56A+1AE w
					; sub_17E0:loc_1A32 r ...
		db    ?	;
		db    ?	;
word_1A862	dw ?			; DATA XREF: sub_1310+17 r
					; sub_1310:loc_1330 r ...
word_1A864	dw ?			; DATA XREF: sub_1310+33 r
					; sub_1310:loc_134C r ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1A86A	db    ?	;		; DATA XREF: sub_2516:loc_26D0 o
					; sub_2516+206 o
		db    ?	;
		db    ?	;
		db    ?	;
word_1A86E	dw ?			; DATA XREF: sub_2516+1CC r
word_1A870	dw ?			; DATA XREF: sub_2516+1C9 r
unk_1A872	db    ?	;		; DATA XREF: sub_334A+4 o seg004:002D o	...
		db    ?	;
word_1A874	dw ?			; DATA XREF: sub_33AC+6 r
word_1A876	dw ?			; DATA XREF: sub_33AC+9 r
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1A884	dw ?			; DATA XREF: sub_2124+2B w sub_2124+5E r ...
word_1A886	dw ?			; DATA XREF: sub_2124+2E w sub_2124+61 r ...
; char byte_1A888[]
byte_1A888	db 50h dup(?)		; DATA XREF: sub_17E0+10E o
					; sub_17E0+112 o ...
word_1A8D8	dw ?			; DATA XREF: sub_2124:loc_21EC w
					; sub_2124+DE w	...
word_1A8DA	dw ?			; DATA XREF: seg050:00CA r seg050:00E5 w ...
word_1A8DC	dw ?			; DATA XREF: sub_9F9A+18 w
word_1A8DE	dw ?			; DATA XREF: sub_9F9A+9 w
word_1A8E0	dw ?			; DATA XREF: sub_9F9A+33 w
word_1A8E2	dw ?			; DATA XREF: sub_9F9A+36 w
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1A8EC	dw ?			; DATA XREF: seg050:loc_D211 r
					; seg050:00AA w	...
					; TIMER_NOISE_ON
dword_1A8EE	dd ?			; DATA XREF: seg016:048F r
					; seg016:loc_A915 r ...
word_1A8F2	dw ?			; DATA XREF: seg050:0073 r seg050:007A w ...
word_1A8F4	dw ?			; DATA XREF: sub_130DA+E4 w
					; sub_130DA+144 w ...
word_1A8F6	dw ?			; DATA XREF: sub_130DA+E7 w
					; sub_130DA+14A w ...
word_1A8F8	dw ?			; DATA XREF: seg081:0033 w
					; sub_10B56+4F r
word_1A8FA	dw ?			; DATA XREF: seg070:00E9 w
word_1A8FC	dw ?			; DATA XREF: seg050:0088 r sub_D33D w ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1A958	dw ?			; DATA XREF: seg046:0395 w seg046:03B9 r ...
word_1A95A	dw ?			; DATA XREF: seg046:0398 w seg046:03B1 r ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
byte_1A974	db ?			; DATA XREF: sub_B5CC+36 w
byte_1A975	db ?			; DATA XREF: sub_B5CC+42 w
byte_1A976	db ?			; DATA XREF: sub_B5CC+4E w
byte_1A977	db ?			; DATA XREF: sub_B5CC+5A w
byte_1A978	db ?			; DATA XREF: sub_B5CC+66 w
		align 2
word_1A97A	dw ?			; DATA XREF: sub_130DA+C1 w
					; seg113:loc_135CA w ...
word_1A97C	dw ?			; DATA XREF: sub_130DA+BE w
					; seg113:003E w	...
word_1A97E	dw ?			; DATA XREF: sub_A9C2+2F r sub_A9C2+54 r ...
word_1A980	dw ?			; DATA XREF: seg065:00CB w seg065:00D8 w ...
; char *off_1A982
off_1A982	dw ?			; DATA XREF: sub_B6+C0 r sub_94E+1B r ...
word_1A984	dw ?			; DATA XREF: sub_B6+1C r sub_94E+17 r ...
word_1A986	dw ?			; DATA XREF: sub_A9C2+21 r sub_A9C2+48 r ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; char *off_1A9C2
off_1A9C2	dw ?			; DATA XREF: sub_94E+52 r sub_94E+AA r ...
word_1A9C4	dw ?			; DATA XREF: sub_94E+4E r sub_94E+A6 r ...
dword_1A9C6	dd ?			; DATA XREF: sub_F3EC+13 r
					; sub_121A0:loc_1221B r	...
word_1A9CA	dw ?			; DATA XREF: sub_842+4D r seg011:04B3 r
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; char byte_1A9D4[]
byte_1A9D4	db 50h dup(?)		; DATA XREF: sub_595E+9D7 o
word_1AA24	dw ?			; DATA XREF: sub_130DA+6C w
					; seg117:0065 r	...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
byte_1AADA	db ?			; DATA XREF: sub_ADA2+12 w
					; sub_ADA2:loc_AF49 r ...
		align 2
word_1AADC	dw ?			; DATA XREF: seg050:00D1 w seg050:0259 w
word_1AADE	dw ?			; DATA XREF: sub_F6D6+A9 w sub_FBCC+3D r ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1ACE0	dw ?			; DATA XREF: sub_A476+10D w
					; sub_A476+149 w ...
word_1ACE2	dw ?			; DATA XREF: seg049:002A r
					; seg050:loc_D279 w ...
word_1ACE4	dw ?			; DATA XREF: seg049:002D r seg050:00BE w ...
word_1ACE6	dw ?			; DATA XREF: sub_A476:loc_A5EB w
word_1ACE8	dw ?			; DATA XREF: sub_56A+5B w sub_56A+152 r
word_1ACEA	dw ?			; DATA XREF: sub_130DA+B3 w
					; seg116:004E r
word_1ACEC	dw ?			; DATA XREF: sub_130DA+47 w
					; seg115:004B r
word_1ACEE	dw ?			; DATA XREF: sub_3420+20 w sub_4EC6+65 r ...
		db    ?	;
		db    ?	;
word_1ACF2	dw ?			; DATA XREF: sub_130DA+73 w
					; seg117:005A r	...
byte_1ACF4	db ?			; DATA XREF: sub_A61E+B3 w
					; sub_A61E:loc_A70A r ...
		align 2
word_1ACF6	dw ?			; DATA XREF: sub_3420+2E w
					; sub_595E+640 r ...
word_1ACF8	dw ?			; DATA XREF: sub_3420+31 w
					; sub_595E+638 r ...
word_1ACFA	dw ?			; DATA XREF: sub_1310+60 r sub_1310+9E r ...
word_1ACFC	dw ?			; DATA XREF: sub_1310+71 r sub_1310+A2 r ...
word_1ACFE	dw ?			; DATA XREF: sub_1F8E+B r sub_20E0+10 w	...
word_1AD00	dw ?			; DATA XREF: sub_AB4A+5 r sub_AB4A+D w ...
word_1AD02	dw ?			; DATA XREF: sub_B6+31 r sub_B6+60 r ...
word_1AD04	dw ?			; DATA XREF: sub_B6+2D r sub_B6+5C r ...
word_1AD06	dw ?			; DATA XREF: sub_B6+29 r sub_B6+58 r ...
word_1AD08	dw ?			; DATA XREF: sub_B6:loc_DB r sub_B6+54 r ...
word_1AD0A	dw ?			; DATA XREF: seg065:00A4 w seg065:00B8 w ...
; size_t word_1AD0C
word_1AD0C	dw ?			; DATA XREF: sub_A0BC+12 r sub_A100+93 w ...
; int word_1AD0E
word_1AD0E	dw ?			; DATA XREF: sub_A0BC+9 r sub_A100+96 w	...
word_1AD10	dw ?			; DATA XREF: sub_2124+10 w
					; sub_2124:loc_2199 w ...
word_1AD12	dw ?			; DATA XREF: sub_2124+13 w sub_2124+78 w ...
word_1AD14	dw ?			; DATA XREF: sub_12028+3B r
					; sub_12028+5A r ...
word_1AD16	dw ?			; DATA XREF: sub_12028+37 r
					; sub_12028:loc_1207E r	...
word_1AD18	dw ?			; DATA XREF: seg050:00C3 r seg050:0265 w
; char byte_1AD1A[]
byte_1AD1A	db 20Ch	dup(?)		; DATA XREF: sub_2A2A+36 o
word_1AF26	dw ?			; DATA XREF: seg009:0185 w sub_D1A2 r ...
word_1AF28	dw ?			; DATA XREF: seg009:0182 w sub_D1A2+3 r	...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1B038	dw ?			; DATA XREF: seg046:03A3 w seg046:03E1 r ...
word_1B03A	dw ?			; DATA XREF: seg046:03A6 w seg046:03D9 r ...
; char byte_1B03C[]
byte_1B03C	db 50h dup(?)		; DATA XREF: sub_857E+2C o sub_85E8+5 o
word_1B08C	dw ?			; DATA XREF: sub_56A+19 w
					; sub_56A:loc_59B w ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1B0DC	dw ?			; DATA XREF: sub_1DB6+13 r sub_1F7E+3 r	...
byte_1B0DE	db ?			; DATA XREF: sub_A724+10 r seg016:02E0 w
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1B0FA	dw ?			; DATA XREF: seg011:0495 r
		align 8
word_1B100	dw ?			; DATA XREF: sub_12028+10 r
					; sub_12028+27 r ...
word_1B102	dw ?			; DATA XREF: sub_12028+8 r
					; sub_12028+1F r ...
word_1B104	dw ?			; DATA XREF: seg081:00BD w
word_1B106	dw ?			; DATA XREF: seg081:00C0 w
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1B142	dw ?			; DATA XREF: seg081:00F0 r seg081:011A w
word_1B144	dw ?			; DATA XREF: sub_1310+23 r seg009:0179 r ...
word_1B146	dw ?			; DATA XREF: seg081:00CC w
					; sub_10B56+3D r
word_1B148	dw ?			; DATA XREF: sub_1310+3F r seg009:0176 r ...
dword_1B14A	dd ?			; DATA XREF: sub_AB4A+A0 r sub_ADA2+1F r ...
word_1B14E	dw ?			; DATA XREF: sub_F657 r	sub_F69E r ...
word_1B150	dw ?			; DATA XREF: sub_F6D6+18 w
word_1B152	dw ?			; DATA XREF: sub_F6D6+1B w
word_1B154	dw ?			; DATA XREF: sub_F6D6+21 w
word_1B156	dw ?			; DATA XREF: sub_F6D6+27 w
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1B178	dw ?			; DATA XREF: sub_F36A+2D w
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1B224	dw ?			; DATA XREF: sub_4E56+48 r
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1B90A	dw ?			; DATA XREF: sub_DDB8+1C0 w
word_1B90C	dw ?			; DATA XREF: sub_DDB8+1C3 w
dword_1B90E	dd ?			; DATA XREF: sub_120A6+AC r
					; sub_120A6+CA r ...
word_1B912	dw ?			; DATA XREF: sub_9F9A+12 w
word_1B914	dw ?			; DATA XREF: sub_9F9A+3 w
word_1B916	dw ?			; DATA XREF: sub_9F9A+4F w
word_1B918	dw ?			; DATA XREF: sub_9F9A+52 w
byte_1B91A	db ?			; DATA XREF: sub_AB4A+A7 r sub_AB4A+AE r ...
		db    ?	;
		db    ?	;		; WORD xms_umb_list[16]
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
byte_1B93C	db ?			; DATA XREF: sub_A61E+FA w
					; sub_AB4A:loc_AD4D r ...
		align 2
word_1B93E	dw ?			; DATA XREF: sub_1F8E+E r sub_20E0+7 w
; size_t word_1B940
word_1B940	dw ?			; DATA XREF: sub_6682:loc_68BF r
					; sub_6682+253 w ...
byte_1B942	db ?			; DATA XREF: sub_F657:loc_F668 r
					; sub_F657:loc_F686 w ...
byte_1B943	db ?			; DATA XREF: sub_A61E+A w sub_A61E+91 w	...
word_1B944	dw ?			; DATA XREF: seg005:388D w
word_1B946	dw ?			; DATA XREF: sub_843A+D9 w sub_8526+47 w ...
word_1B948	dw ?			; DATA XREF: sub_1310+5C r sub_1F8E+5B r ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1B964	dw ?			; DATA XREF: sub_1310+6B r sub_1F8E+48 r ...
word_1B966	dw ?			; DATA XREF: sub_A476+EA w
					; sub_A476:loc_A590 r ...
word_1B968	dw ?			; DATA XREF: sub_A476+F1 w
					; sub_A476+123 r ...
dword_1B96A	dd ?			; DATA XREF: sub_A61E+56 r sub_A724+1 r	...
word_1B96E	dw ?			; DATA XREF: seg065:0084 o
					; seg065:loc_F223 r ...
		db    ?	;
		db    ?	;
byte_1B972	db ?			; DATA XREF: seg065:01F1 r
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1B990	db    ?	;		; DATA XREF: seg065:0093 o
					; seg081:loc_10793 o
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1B9DC	db    ?	;
unk_1B9DD	db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1BA9C	db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1BACC	db    ?	;
unk_1BACD	db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1BBEC	db    ?	;
unk_1BBED	db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1BC4C	db    ?	;
unk_1BC4D	db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1BC90	dw ?			; DATA XREF: seg081:00C6 w
					; sub_10B56:loc_10B8A r
word_1BC92	dw ?			; DATA XREF: sub_F6D6+9D w sub_F9DA+34 w ...
word_1BC94	dw ?			; DATA XREF: sub_F6D6+A3 w sub_F9DA+38 w ...
dword_1BC96	dd ?			; DATA XREF: seg050:010D r seg050:024A w ...
; char *off_1BC9A
off_1BC9A	dw ?			; DATA XREF: sub_6682+68 r sub_6682+6F r ...
		db    ?	;
		db    ?	;
		db    ?	;
byte_1BC9F	db ?			; DATA XREF: seg012:09FF r
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; int word_1BCA6
word_1BCA6	dw ?			; DATA XREF: sub_647A+1C2 r
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1BCB4	dw ?			; DATA XREF: sub_3420:loc_3458 r
					; sub_647A+188 r
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1BCDE	dw ?			; DATA XREF: sub_17E0:loc_1A7E w
					; sub_1DB6:loc_1EC7 w ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1BD2A	dw ?			; DATA XREF: sub_9C42+2C r sub_9F9A+15 w
word_1BD2C	dw ?			; DATA XREF: sub_9C42+28 r sub_9F9A+6 w
word_1BD2E	dw ?			; DATA XREF: sub_9C42+24 r sub_9F9A+41 w
word_1BD30	dw ?			; DATA XREF: sub_9C42+20 r sub_9F9A+44 w
word_1BD32	dw ?			; DATA XREF: sub_DDB8+196 r
word_1BD34	dw ?			; DATA XREF: sub_DDB8+199 r
; char byte_1BD36[]
byte_1BD36	db ?			; DATA XREF: sub_843A+9A w sub_843A+A0 o ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1BD86	dw ?			; DATA XREF: sub_AB4A:loc_AC3E r
					; sub_ADA2+EE r	...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1BE96	dw ?			; DATA XREF: sub_145E:loc_14CB r
					; sub_145E+7C r	...
word_1BE98	dw ?			; DATA XREF: sub_12028+1A r
					; sub_130DA:loc_131AB w	...
dword_1BE9A	dd ?			; DATA XREF: seg084:0000 r
					; DWORD	SOUND_JUMP_TABLE [5]
dword_1BE9E	dd ?			; DATA XREF: sub_11274:loc_1127B r
dword_1BEA2	dd ?			; DATA XREF: sub_112C9 r
dword_1BEA6	dd ?			; DATA XREF: sub_112CD r
dword_1BEAA	dd ?			; DATA XREF: sub_112D1 r
word_1BEAE	dw ?			; DATA XREF: sub_145E:loc_14E3 r
					; sub_145E+94 r	...
					; short	map_corner_y2
word_1BEB0	dw ?			; DATA XREF: sub_334A+19 w sub_3376+2B r ...
dword_1BEB2	dd ?			; DATA XREF: sub_12028+44 r
					; sub_120A6+26 r ...
word_1BEB6	dw ?			; DATA XREF: sub_F6D6+2D w sub_F6D6+C7 r ...
unk_1BEB8	db    ?	;		; DATA XREF: seg065:0097 o seg065:01EE o
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1BF5C	db    ?	;
unk_1BF5D	db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1C01C	dw ?			; DATA XREF: sub_116F5+13 w
					; sub_116F5+17 o ...
unk_1C01E	db    ?	;		; DATA XREF: sub_116F5+7 o
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_1C1B8	dd ?			; DATA XREF: sub_120A6+C2 r
					; sub_130DA+24 w ...
word_1C1BC	dw ?			; DATA XREF: sub_AB4A+FB r
					; sub_ADA2:loc_AE8C r ...
unk_1C1BE	db    ?	;		; DATA XREF: sub_17E0+EF o
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1C2FE	db    ?	;		; DATA XREF: sub_1292A+2D o
					; sub_1297E+8A o
					; WORD himem_directory_save_area [45]
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_1C358	dd ?			; DATA XREF: sub_12028+63 r
					; sub_120A6+2E r ...
					; pack_write_routine
word_1C35C	dw ?			; DATA XREF: sub_1B84+46 r sub_88DA+22 r ...
word_1C35E	dw ?			; DATA XREF: sub_1B84+4C r sub_88DA+26 r ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1C38C	db    ?	;
unk_1C38D	db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1C3E2	dw ?			; DATA XREF: seg081:0068 w
word_1C3E4	dw ?			; DATA XREF: seg081:loc_107AE w
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1C43C	db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1C46C	db    ?	;
unk_1C46D	db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1C61C	db    ?	;
unk_1C61D	db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1C72C	db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1C73C	db    ?	;
unk_1C73D	db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1C7AC	db    ?	;
unk_1C7AD	db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1C7DE	dw ?			; DATA XREF: seg081:008C w
word_1C7E0	dw ?			; DATA XREF: seg081:0092 w
word_1C7E2	dw ?			; DATA XREF: sub_1310+8 r sub_1310+11 w	...
byte_1C7E4	db ?			; DATA XREF: sub_A61E+7 w sub_A61E+95 w	...
		align 4
word_1C7E8	dw ?			; DATA XREF: sub_130DA:loc_1313F w
					; seg117:0062 r
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
word_1C7F2	dw ?			; DATA XREF: sub_2082+1F r sub_B63C+18 w ...
word_1C7F4	dw ?			; DATA XREF: sub_130DA+BB w
					; seg114:loc_1363D w ...
word_1C7F6	dw ?			; DATA XREF: sub_130DA+B8 w
					; seg114:0041 w	...
byte_1C7F8	db ?			; DATA XREF: sub_ADA2+26 w sub_ADA2+42 r
		align 2
word_1C7FA	dw ?			; DATA XREF: sub_15CC+5 w
word_1C7FC	dw ?			; DATA XREF: sub_15CC+8 w
word_1C7FE	dw ?			; DATA XREF: sub_15CC+18 w
word_1C800	dw ?			; DATA XREF: sub_15CC+1B w
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_1C81E	db    ?	;		; DATA XREF: sub_116E1+6 o
					; sub_11729+10 o
unk_1C81F	db    ?	;
;ALL THESE DATA ITEMS ADDED BY ME
InitialMessage	db    'Enter 1 if you want to view a *.SS file. Press 2 if you want to view a *.PIK file. Anything else will exit immediately. Enter: ',0Ah,0
StupidString1 	db    'Enter the name of the SS file you wish to open (without extension). Note that your SS file must be in the same directory as this program. Enter: ', 0Ah,0
StupidString2	db    9h; This is 8-characters filename + terminating null (1st symbol for cgets)
		db    0Bh dup (0);9+2 initial symbols reserved for cgets
StupidString3	db    'Enter the name of the PIK file you wish to open (without extension). Note that your PIK file must be in the same directory as this program. Enter: ', 0Ah, 0
StupidString4	db    2h
		db    4h dup (0)
aOpening_3	db    'OPENING',0
aPik		db    'PIK',0
aMpslogo		db    'MPSLOGO',0 	;WE NEED IT
logo		dd    0		;WE NEED IT
aCCBKGD		db    'CCBKGD',0
aClosBkg		db    'CLOS-BKG',0
aColony		db    'COLONY',0
aEurope		db    'EUROPE',0
aWinfwrk		db    'WIN-FWRK',0
aWinfwrkStatement	db    'WIN-FWRK.SS is not supported by this program. My research shows that it is very likely a broken file never used by the game itself. If you can prove otherwise please contact me.',0Ah,0
OpeningPIKScrolling	dw    0
SSPictureNum	dw    1		;BECAUSE THERE'S NO PIC#0 IN *.SS FILES
dseg		ends
