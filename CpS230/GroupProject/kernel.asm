;  Polar-Freeziepups Final Project: Simple Implementation of Frogger
;  David Polar and Jason French

bits 16

segment _TEXT CLASS=CODE

global _start
_start:
    mov     ax, 0xA000
    mov     es, ax

    mov     ah, 0                               ; set 320x200 VGA video mode with color graphics
    mov     al, 0x13
    int     0x10

    call    draw_top_line
    call    draw_middle_line
    call    draw_bottom_line

    mov     word [task_status], 1               ; spawns main task that does nothing but loop forever

	lea     di, [move_block_1]                  ; spawns task 1
	call    spawn_new_task

    lea     di, [move_block_2]                  ; spawns task 2
	call    spawn_new_task

    lea     di, [move_block_3]                  ; spawns task 3
	call    spawn_new_task

    lea     di, [move_block_4]                  ; spawns task 4
    call    spawn_new_task

    lea     di, [move_block_5]                  ; spawns task 5
    call    spawn_new_task

    lea     di, [move_block_6]                  ; spawns task 6
    call    spawn_new_task

    lea     di, [move_block_7]                  ; spawns task 7
    call    spawn_new_task

    lea     di, [move_block_8]                  ; spawns task 8
    call    spawn_new_task

    lea     di, [move_block_9]                  ; spawns task 9
    call    spawn_new_task

    lea     di, [music_task]                    ; spawns music task
    call    spawn_new_task

.loop_forever:                                  ; main task that loops forever
    call 	yield
	jmp		.loop_forever

draw_top_line:
    mov     ax, 0                               ; left x value
    mov     bx, 0                               ; top y value
    mov     cx, 0x07                            ; color is white
    mov     si, 17                              ; block is 17 pixels tall
    mov     di, 320                             ; block strectches across the screen
    call    draw_block
    ret

draw_middle_line:
    mov     ax, 0                               ; left x value
    mov     bx, 100                             ; top y value
    mov     cx, 0x07                            ; color is white
    mov     si, 16                              ; block is 16 pixels tall
    mov     di, 320                             ; block strectches across the screen
    call    draw_block
    ret

draw_bottom_line:
    mov     ax, 0                               ; left x value
    mov     bx, 183                             ; top y value
    mov     cx, 0x07                            ; color is white
    mov     si, 17                              ; block is 17 pixels tall
    mov     di, 320                             ; block strectches across the screen
    call    draw_block
    ret

; di should contain the address of the function to run for a task
spawn_new_task:
	lea     bx, [stack_pointers]                ; get the location of the stack pointers
    add     bx, [current_task]                  ; get the location of the current stack pointer
	mov     [bx], sp                            ; save current stack so we can switch back
	mov     cx, [current_task]                  ; look for a new task 
	add     cx, 2                               ; start searching at the next one though
.sp_loop_for_available_stack:
	cmp     cx, [current_task]                  ; we are done when we get back to the original
	jne     .sp_check_if_available
	jmp     .sp_no_available_stack
.sp_check_if_available:
	lea     bx, [task_status]                   ; get status of this stack
	add     bx, cx                              
	cmp     word [bx], 0
	je      .sp_is_available
	add     cx, 2                               ; next stack to search
    and     cx, 0x1F                            ; make sure stack to search is always less 2 * # of tasks
	jmp     .sp_loop_for_available_stack
.sp_is_available:
	lea     bx, [task_status]                   ; we found a stack, set it to active
	add     bx, cx
	mov     word [bx], 1
	lea     bx, [stack_pointers]                ; switch to the fake stack so we can do stuff with it
	add     bx, cx
	mov     sp, [bx]                            ; swap stacks
	push    di                                  ; push address of function to run
	pusha                                       ; push registers
	pushf                                       ; push flags
	lea     bx, [stack_pointers]                ; update top of this stack
	add     bx, cx
	mov     [bx], sp
.sp_no_available_stack:                         ; restore to original stack
	lea     bx, [stack_pointers]
	add     bx, [current_task]
	mov     sp, [bx]
	ret

yield:
	pusha                                       ; push registers
	pushf                                       ; push flags
	lea     bx, [stack_pointers]                ; save current stack pointer
	add     bx, [current_task]
	mov     [bx], sp
	mov     cx, [current_task]                  ; look for a new task 
	add     cx, 2                               ; start searching at the next one though
.y_check_if_enabled:
	lea     bx, [task_status]
	add     bx, cx
	cmp     word [bx], 1
	je      .y_task_available
	add     cx, 2                               ; next stack to search
    and     cx, 0x1F                            ; make sure stack to search is always less than 2 * # of tasks
	jmp     .y_check_if_enabled
.y_task_available:
	mov     bx, cx
	mov     [current_task], bx
	mov     bx, stack_pointers                  ; update stack pointer
	add     bx, [current_task]
	mov     sp, [bx]
	popf
	popa
	ret

; Courtesy of the Great and Fabulous Dr. McGee
dontDrawDuringRefresh:
    push    dx
    push    ax
    mov     dx, 3dah

    in      al, dx
    test    al, 08h
    jz      .okay

    ; Wait for bit 3 to be zero (not in VR).
    ; We want to detect a 0->1 transition.
.needToWaitPart1:
    in      al, dx
    test    al, 08h
    jnz     .needToWaitPart1

    ; Wait for bit 3 to be one (in VR)
.needToWaitPart2:
    in      al, dx
    test    al, 08h
    jz      .needToWaitPart2

.okay:
    pop     ax
    pop     dx
    ret

; use ax to hold x
; use bx to hold y
; use cx to hold the color
; use si to hold height of block
; use di to hold width of block
draw_block:
    call    dontDrawDuringRefresh
    push    dx                                  ; we don't explicitly state above that we change dx, no surprises then
    push    cx                                  ; save the color
    mov     bx, bx                              ; prepare for multiply without imul
    mov     cx, bx                  
    shl     bx, 8                               ; multiply by 256
    shl     cx, 6                               ; multiply by 64
    add     bx, cx                              ; effectively multiply by 320
    add     bx, ax                              ; starting offset is now calculated 
    pop     ax                                  ; put the color in ax
    mov     dx, 0                               ; row = 0
.while:                 
    cmp     dx, si                              ; row < height
    je      .exit                   
    mov     cx, 0                               ; col = 0
.inner_while:
    cmp     cx, di                              ; col < width
    je      .exit_inner_while
    mov     [es:bx], al                         ; write one pixel of color
    inc     bx                                  ; move color printer to next col
    inc     cx                                  ; col++
    jmp     .inner_while                    
.exit_inner_while:                  
    push    dx                                  ; save dx temporarily (we need a register not in use)
    mov     dx, 320                             ; calculate how many pixels to jump to get to next row
    sub     dx, di                  
    add     bx, dx                              ; move color printer to next row
    pop     dx                                  ; restore dx
    inc     dx                                  ; row++
    jmp     .while                  
.exit:                  
    pop     dx                                  ; undo our surprise
    ret

move_block_1:   ; prints gray block moving in rightward direction
.while:
    mov     cx, 0                               ; draw black over previous block
    mov     ax, word [task_1_block_x]
    mov     bx, word [task_1_block_y]
    mov     di, 1                               ; width of block
    mov     si, 14                              ; height of block
    call    draw_block
    jmp     .incCol
.incCol:
    inc     word [task_1_block_x]
    cmp     word [task_1_block_x], 320
    je      .resetX
    jmp     .continueWhile
.resetX:
    mov     word [task_1_block_x], 0            ; loop the block back to other side of the screen
    jmp     .continueWhile
.continueWhile:
    mov     cx, word [task_1_block_color]
    mov     bx, word [task_1_block_y]
    mov     ax, word [task_1_block_x]
    mov     di, 50                              ; width of block
    mov     si, 13                              ; height of block
    call    draw_block
    call    yield                               ; switch to different task temporarily
    jmp     .while

move_block_2:   ; prints green block moving in leftward direction
.while:
    mov     cx, 0                               ; draw black over previous block
    mov     ax, word [task_2_block_x]
    add     ax, 50
    mov     bx, word [task_2_block_y]
    sub     bx, 1
    mov     di, 1                               ; width of block
    mov     si, 14                              ; height of block
    call    draw_block
    jmp     .decCol
.decCol:
    dec     word [task_2_block_x]
    cmp     word [task_2_block_x], 0
    je      .resetX
    jmp     .continueWhile
.resetX:
    mov     word [task_2_block_x], 320          ; loop the block back to other side of the screen
    jmp     .continueWhile
.continueWhile:
    mov     cx, word [task_2_block_color]
    mov     bx, word [task_2_block_y]
    mov     ax, word [task_2_block_x]
    mov     di, 50                              ; width of block
    mov     si, 13                              ; height of block
    call    draw_block
    call    yield                               ; switch to different task temporarily
    jmp     .while

move_block_3:   ; prints gray block moving in rightward direction
.while:
    mov     cx, 0                               ; draw black over previous block
    mov     ax, word [task_3_block_x]
    mov     bx, word [task_3_block_y]
    mov     di, 1                               ; width of block
    mov     si, 14                              ; height of block
    call    draw_block
    jmp      .incCol
.incCol:
    inc     word [task_3_block_x]
    cmp     word [task_3_block_x], 320
    je      .resetX
    jmp     .continueWhile
.resetX:
    mov     word [task_3_block_x], 0            ; loop the block back to other side of the screen
    jmp     .continueWhile
.continueWhile:
    mov     cx, word [task_3_block_color]
    mov     bx, word [task_3_block_y]
    mov     ax, word [task_3_block_x]
    mov     di, 50                              ; width of block
    mov     si, 13                              ; height of block
    call    draw_block
    call    yield                               ; switch to different task temporarily
    jmp     .while

move_block_4:   ; prints gray block moving in leftward direction
.while:
    mov     cx, 0                               ; draw black over previous block
    mov     ax, word [task_4_block_x]
    add     ax, 50
    mov     bx, word [task_4_block_y]
    sub     bx, 1
    mov     di, 1                               ; width of block
    mov     si, 14                              ; height of block
    call    draw_block
    jmp     .decCol
.decCol:
    dec     word [task_4_block_x]
    cmp     word [task_4_block_x], 0
    je      .resetX
    jmp     .continueWhile
.resetX:
    mov     word [task_4_block_x], 320          ; loop the block back to other side of the screen
    jmp     .continueWhile
.continueWhile:
    mov     cx, word [task_4_block_color]
    mov     bx, word [task_4_block_y]
    mov     ax, word [task_4_block_x]
    mov     di, 50                              ; width of block
    mov     si, 13                              ; height of block
    call    draw_block
    call    yield                               ; switch to different task temporarily
    jmp     .while

move_block_5:   ; prints green block moving in rightward direction
.while:
    mov     cx, 0                               ; draw black over previous block
    mov     ax, word [task_5_block_x]
    mov     bx, word [task_5_block_y]
    mov     di, 1                               ; width of block
    mov     si, 14                              ; height of block
    call    draw_block
    jmp      .incCol
.incCol:
    inc     word [task_5_block_x]
    cmp     word [task_5_block_x], 320
    je      .resetX
    jmp     .continueWhile
.resetX:
    mov     word [task_5_block_x], 0            ; loop the block back to other side of the screen
    jmp     .continueWhile
.continueWhile:
    mov     cx, word [task_5_block_color]
    mov     bx, word [task_5_block_y]
    mov     ax, word [task_5_block_x]
    mov     di, 50                              ; width of block
    mov     si, 13                              ; height of block
    call    draw_block
    call    yield                               ; switch to different task temporarily
    jmp     .while

move_block_6:   ; prints purple block moving in leftward direction
.while:
    mov     cx, 0                               ; draw black over previous block
    mov     ax, word [task_6_block_x]
    add     ax, 50
    mov     bx, word [task_6_block_y]
    sub     bx, 1
    mov     di, 1                               ; width of block
    mov     si, 14                              ; height of block
    call    draw_block
    jmp     .decCol
.decCol:
    dec     word [task_6_block_x]
    cmp     word [task_6_block_x], 0
    je      .resetX
    jmp     .continueWhile
.resetX:
    mov     word [task_6_block_x], 320          ; loop the block back to other side of the screen
    jmp     .continueWhile
.continueWhile:
    mov     cx, word [task_6_block_color]
    mov     bx, word [task_6_block_y]
    mov     ax, word [task_6_block_x]
    mov     di, 50                              ; width of block
    mov     si, 13                              ; height of block
    call    draw_block
    call    yield                               ; switch to different task temporarily
    jmp     .while

move_block_7:   ; prints red block moving in rightward direction
.while:
    mov     cx, 0                               ; draw black over previous block
    mov     ax, word [task_7_block_x]
    mov     bx, word [task_7_block_y]
    mov     di, 1                               ; width of block
    mov     si, 14                              ; height of block
    call    draw_block
    jmp      .incCol
.incCol:
    inc     word [task_7_block_x]
    cmp     word [task_7_block_x], 320
    je      .resetX
    jmp     .continueWhile
.resetX:
    mov     word [task_7_block_x], 0            ; loop the block back to other side of the screen
    jmp     .continueWhile
.continueWhile:
    mov     cx, word [task_7_block_color]
    mov     bx, word [task_7_block_y]
    mov     ax, word [task_7_block_x]
    mov     di, 50                              ; width of block
    mov     si, 13                              ; height of block
    call    draw_block
    call    yield                               ; switch to different task temporarily
    jmp     .while

move_block_8:   ; prints blue block moving in leftward direction
.while:
    mov     cx, 0                               ; draw black over previous block
    mov     ax, word [task_8_block_x]
    add     ax, 50
    mov     bx, word [task_8_block_y]
    sub     bx, 1
    mov     di, 1                               ; width of block
    mov     si, 14                              ; height of block
    call    draw_block
    jmp     .decCol
.decCol:
    dec     word [task_8_block_x]
    cmp     word [task_8_block_x], 0
    je      .resetX
    jmp     .continueWhile
.resetX:
    mov     word [task_8_block_x], 320          ; loop the block back to other side of the screen
    jmp     .continueWhile
.continueWhile:
    mov     cx, word [task_8_block_color]
    mov     bx, word [task_8_block_y]
    mov     ax, word [task_8_block_x]
    mov     di, 50                              ; width of block
    mov     si, 13                              ; height of block
    call    draw_block
    call    yield                               ; switch to different task temporarily
    jmp     .while

move_block_9:   ; prints aqua block moving in rightward direction
.while:
    mov     cx, 0                               ; draw black over previous block
    mov     ax, word [task_9_block_x]
    mov     bx, word [task_9_block_y]
    mov     di, 1                               ; width of block
    mov     si, 14                              ; height of block
    call    draw_block
    jmp      .incCol
.incCol:
    inc     word [task_9_block_x]
    cmp     word [task_9_block_x], 320
    je      .resetX
    jmp     .continueWhile
.resetX:
    mov     word [task_9_block_x], 0            ; loop the block back to other side of the screen
    jmp     .continueWhile
.continueWhile:
    mov     cx, word [task_9_block_color]
    mov     bx, word [task_9_block_y]
    mov     ax, word [task_9_block_x]
    mov     di, 50                              ; width of block
    mov     si, 13                              ; height of block
    call    draw_block
    call    yield                               ; switch to different task temporarily
    jmp     .while

music_task:
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
    cmp     word [si], 0
    call    yield
    cmp     word [di], 0
    je      .play_music
    jmp     .actually.play_note


SEGMENT _DATA PUBLIC CLASS=DATA

    notes: dw	3616,4831,4554,4058,3616,0,4058,4554,4831,5424,1,0,5424,4554,3616,4058,4554,4831,1,0,4831,4554,4058,3616,4554,5424,1,0,5424,1,1,4058,4058,0,3419,2712,3044,3419,3616,3616,4554,0,3616,4058,4554,4831,1,0,4831,4554,4058,3616,4554,0,5424,1,5424,1,0
    lengths: dw	414,207,207,207,103,103,207,207,414,10,207,207,414,207,207,414,10,207,207,414,414,414,414,10,828,10,103,207,207,207,414,207,207,414,207,207,414,207,207,414,10,207,207,414,414,414,414,10,828,10,0

    ; determine data for first block when it is initially created
    task_1_block_x              dw   0          ; x value at start - left of screen
    task_1_block_y              dw   20         ; y value at start - top/1
    task_1_block_color          dw   0x08       ; color is gray

    ; determine data for second block when it is initially created
    task_2_block_x              dw   300        ; x value at start - right of screen
    task_2_block_y              dw   36         ; y value at start - top/2
    task_2_block_color          dw   0x02       ; color is green

    ; determine data for third block when it is initially created
    task_3_block_x              dw   150        ; x value at start - middle of screen
    task_3_block_y              dw   52         ; y value at start - top/3
    task_3_block_color          dw   0x08       ; color is gray

    ; determine data for fourth block when it is initially created
    task_4_block_x              dw   100        ; x value at start - middle/left of screen
    task_4_block_y              dw   68         ; y value at start - top/4
    task_4_block_color          dw   0x08       ; color is gray

    ; determine data for fifth block when it is initially created
    task_5_block_x              dw   200        ; x value at start - middle/right of screen
    task_5_block_y              dw   84         ; y value at start - top/5
    task_5_block_color          dw   0x02       ; color is green

    ; determine data for sixth block when it is initially created
    task_6_block_x              dw   200        ; x value at start - middle/right of screen
    task_6_block_y              dw   119        ; y value at start - bottom/1
    task_6_block_color          dw   0x05       ; color is purple

    ; determine data for seventh block when it is initially created
    task_7_block_x              dw   300        ; x value at start - right of screen
    task_7_block_y              dw   135        ; y value at start - bottom/2
    task_7_block_color          dw   0x04       ; color is red

    ; determine data for eighth block when it is initially created
    task_8_block_x              dw   150        ; x value at start - middle of screen
    task_8_block_y              dw   151        ; y value at start - bottom/3
    task_8_block_color          dw   0x01       ; color is blue

    ; determine data for ninth block when it is initially created
    task_9_block_x              dw   100        ; x value at start - middle/left of screen
    task_9_block_y              dw   167        ; y value at start - bottom/4
    task_9_block_color          dw   0x03       ; color is aqua

	current_task            dw  0               ; variable to holds the current task
	stacks times (256 * 16) db  0               ; fake stack that holds as many fake stack frames as there are tasks
	task_status    times 16 dw  0               ; the status of each task
	stack_pointers:         dw  0               ; pointers on the fake stack of each task
					%assign i 1
                	%rep    16
                    		dw stacks + (256 * i)
                	%assign i i+1
                	%endrep

; SEGMENT _BSS PUBLIC CLASS=BSS 

; SEGMENT _BSSEND PUBLIC CLASS=BSSEND 

; GROUP DGROUP _DATA _BSS _BSSEND ; TINY model 

;   template for block moving back and forth
; move_block_1:
; .while:
;     mov     cx, 0               ; draw black over where the block currently is
;     mov     bx, word [task_x_block_y]
;     mov     ax, word [task_x_block_x]
;     mov     di, 50
;     mov     si, 50
;     call    draw_block
;     cmp     word [task_x_block_moving_right], 1
;     je      .incCol
;     dec     word [task_x_block_x]
;     cmp     word [task_x_block_x], 0
;     je      .oneMovingRight
;     jmp     .continueWhile
; .incCol:
;     inc     word [task_x_block_x]
;     cmp     word [task_x_block_x], 300
;     je      .zeroMovingRight
;     jmp     .continueWhile
; .zeroMovingRight:
;     mov     word [task_x_block_moving_right], 0
;     jmp     .continueWhile
; .oneMovingRight:
;     mov     word [task_x_block_moving_right], 1
;     jmp     .continueWhile
; .continueWhile:
;     mov     cx, word [task_x_block_color]
;     mov     bx, word [task_x_block_y]
;     mov     ax, word [task_x_block_x]
;     mov     di, 50
;     mov     si, 50
;     call    draw_block
;     call    yield
;     jmp     .while