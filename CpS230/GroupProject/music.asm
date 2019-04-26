bits 16

org 0x100

section .text

jmp .play_music

; si - note to play (frequency)
; di - length
.play_note:
    mov     al, 182         ; Prepare the speaker for the
    out     43h, al         ;  note.
    mov     ax, si          ; Frequency number (in decimal)
                            ;  for middle C.
    out     42h, al         ; Output low byte.
    mov     al, ah          ; Output high byte.
    out     42h, al 
    in      al, 61h         ; Turn on note (get value from
                            ;  port 61h).
    or      al, 00000011b   ; Set bits 1 and 0.
    out     61h, al         ; Send new value.

    mov     ax, di          ; length in milliseconds
    mov     cx, 1000
    mul     cx              ; convert to microseconds
    mov     cx, dx          ; mov dx:ax
    mov     dx, ax          ; to cx:dx
    mov     ah, 0x86
    int     0x15

    in      al, 61h         ; Turn off note (get value from
                            ;  port 61h).
    and     al, 11111100b   ; Reset bits 1 and 0.
    out     61h, al         ; Send new value.
    ret

.play_music:
    lea     di, [lengths]
    lea     si, [notes]
.actually.play_note:
    push    di
    push    si
    mov     di, [di]
    mov     si, [si]
    call    .play_note
    pop     si
    pop     di
    add     di, 2
    add     si, 2
    cmp     word [di], 0
    je      .play_music
    jmp     .actually.play_note

section .data

    notes: dw	3616,3616,3616,3616,4831,4831,4554,4554,4058,4058,3616,4058,4554,4554,4831,4831,5424,5424,5424,5424,1,5424,5424,4554,4554,3616,3616,3616,3616,4058,4058,4554,4554,4831,4831,4831,4831,1,4831,4831,4554,4554,4058,4058,4058,4058,3616,3616,3616,3616,4554,4554,4554,4554,5424,5424,5424,5424,1,5424,5424,5424,5424,5424,5424,5424,5424,1,1,4058,4058,4058,4058,3419,3419,2712,2712,2712,2712,3044,3044,3419,3419,3616,3616,3616,3616,3616,3616,4554,4554,3616,3616,3616,3616,4058,4058,4554,4554,4831,4831,4831,4831,1,4831,4831,4554,4554,4058,4058,4058,4058,3616,3616,3616,3616,4554,4554,4554,4554,5424,5424,5424,5424,1,5424,5424,5424,5424,5424,5424,5424,5424,1,0
    lengths: dw	109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,10,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,10,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,10,109,109,109,109,109,109,109,109,10,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,10,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,109,10,109,109,109,109,109,109,109,109,10,0
