bits 16

org 0x100

section .text

jmp play_music

; si - note to play (frequency)
; di - length
play_note:
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

    mov     cx, 10
    mov     dx, di
    mov     ah, 0x86
    int     0x15

    in      al, 61h         ; Turn off note (get value from
                            ;  port 61h).
    and     al, 11111100b   ; Reset bits 1 and 0.
    out     61h, al         ; Send new value.
    ret

play_music:
    lea     di, [lengths]
    lea     si, [notes]
.play_note:
    push    di
    push    si
    mov     di, [di]
    mov     si, [si]
    call    play_note
    pop     si
    pop     di
    add     di, 2
    add     si, 2
    cmp     word [di], 0
    je      play_music
    jmp     .play_note

section .data

    notes: dw 4560, 4560, 4063, 4560, 3416, 3619, 0
    lengths: dw 500, 500, 500, 500, 500, 500, 0