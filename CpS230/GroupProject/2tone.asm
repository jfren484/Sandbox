bits 16

org 0x100

section .text

jmp .play_music2

; si - note to play (frequency)
; di - length
.play_note2:
    mov     al, 182         ; Prepare the speaker for the
    out     43h, al         ;  note.
    mov     ax, si          ; Frequency number (in decimal)
    out     42h, al         ; Output low byte.
    mov     al, ah          ; Output high byte.
    out     42h, al
    in      al, 61h         ; Turn on note (get value from
                            ;  port 61h).
    or      al, 00000011b   ; Set bits 1 and 0.
    out     61h, al         ; Send new value.

    ; save time to stop after
    mov     ah, 0x00
    int     0x1A
    mov     word [music_task_2_stop], dx
    add     word [music_task_2_stop], di

    ret

.check_timer2:
    mov     ah, 0x00
    int     0x1A

    cmp     dx, word [music_task_2_stop]
    jge     .stop_sound2

    ; call yield
    jmp     .check_timer2

.stop_sound2:
    in      al, 61h         ; Turn off note (get value from
                            ;  port 61h).
    and     al, 11111100b   ; Reset bits 1 and 0.
    out     61h, al         ; Send new value.

    cmp     word [music_task_2_note_index], 100
    jl      .inc_note2
    mov     word [music_task_2_note_index], 0
    jmp     .play_music2

.inc_note2:
    add     word [music_task_2_note_index], 2

.play_music2:
    lea     si, [music_task_2_notes]
    lea     di, [music_task_2_lengths]
    add     si, word [music_task_2_note_index]
    add     di, word [music_task_2_note_index]
    mov     si, [si]
    mov     di, [di]

    call    .play_note2
    
    jmp     .check_timer2

section .data

    music_task_2_note_index:    dw 0
    music_task_2_notes:         dw 3616,4831,4554,4058,3616,4058,4554,4831,5424,1,5424,4554,3616,4058,4554,4831,1,4831,4554,4058,3616,4554,5424,1,5424,1,1,4058,4058,3419,2712,3044,3419,3616,3616,4554,3616,4058,4554,4831,1,4831,4554,4058,3616,4554,5424,1,5424,1,0
    music_task_2_lengths:       dw 8,4,4,4,2,2,4,4,8,0,4,4,8,4,4,8,0,4,4,8,8,8,8,0,16,0,2,4,4,4,8,4,4,8,4,4,8,4,4,8,0,4,4,8,8,8,8,0,16,0,0
    music_task_2_stop:          dw 0
