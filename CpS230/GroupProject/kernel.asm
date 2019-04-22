;  Polar-Freeziepups Final Project: Simple Implementation of Frogger
;  David Polar and Jason French

bits 16
org 0x0     ; offset of 0 because booting in at value 0x0800:0000 in memory

section .text
start:
    mov	    ax, cs                              ; make sure cs equals ds
	mov	    ds, ax

    mov     ax, 0xA000
    mov     es, ax

    mov     ah, 0                               ; set 320x200 VGA video mode with color graphics
    mov     al, 0x13
    int     0x10
    
    mov     word [task_status], 1               ; spawns main task that does nothing but loop forever

	lea     di, [move_block_1]                  ; spawns task 1
	call    spawn_new_task

    lea     di, [move_block_2]                  ; spawns task 2
	call    spawn_new_task

    lea     di, [move_block_3]                  ; spawns task 3
	call    spawn_new_task

.loop_forever:                                  ; main task that loops forever
	call 	yield
	jmp		.loop_forever

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
    and     cx, 0x6                             ; make sure stack to search is always less 2 * # of tasks
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
    and     cx, 0x6                             ; make sure stack to search is always less than 2 * # of tasks
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

; use ax to hold x
; use bx to hold y
; use cx to hold the color
; use si to hold height of block
; use di to hold width of block
draw_block:
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
    mov     [es:bx], ax                         ; write one pixel of color
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

move_block_1:   ; prints blue block moving in rightward direction
.while:
    mov     cx, 0                               ; draw black over previous block
    mov     ax, word [task_1_block_x]
    mov     bx, word [task_1_block_y]
    mov     di, 50                              ; width of block
    mov     si, 50                              ; height of block
    call    draw_block
    jmp     .incCol
.incCol:
    inc     word [task_1_block_x]
    cmp     word [task_1_block_x], 300
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
    mov     si, 50                              ; height of block
    call    draw_block
    call    yield                               ; switch to different task temporarily
    jmp     .while

move_block_2:   ; prints red block moving in leftward direction
.while:
    mov     cx, 0                               ; draw black over previous block
    mov     ax, word [task_2_block_x]
    mov     bx, word [task_2_block_y]
    mov     di, 50                              ; width of block
    mov     si, 50                              ; height of block
    call    draw_block
    jmp     .decCol
.decCol:
    dec     word [task_2_block_x]
    cmp     word [task_1_block_x], 0
    je      .resetX
    jmp     .continueWhile
.resetX:
    mov     word [task_2_block_x], 300          ; loop the block back to other side of the screen
    jmp     .continueWhile
.continueWhile:
    mov     cx, word [task_2_block_color]
    mov     bx, word [task_2_block_y]
    mov     ax, word [task_2_block_x]
    mov     di, 50                              ; width of block
    mov     si, 50                              ; height of block
    call    draw_block
    call    yield                               ; switch to different task temporarily
    jmp     .while

move_block_3:   ; prints green block moving in rightward direction
.while:
    mov     cx, 0                               ; draw black over previous block
    mov     ax, word [task_3_block_x]
    mov     bx, word [task_3_block_y]
    mov     di, 50                              ; width of block
    mov     si, 50                              ; height of block
    call    draw_block
    jmp      .incCol
.incCol:
    inc     word [task_3_block_x]
    cmp     word [task_3_block_x], 300
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
    mov     si, 50                              ; height of block
    call    draw_block
    call    yield                               ; switch to different task temporarily
    jmp     .while

section .data
    ; determine data for first block when it is initially created
    task_1_block_x              dw   0          ; x value at start - left side of screen
    task_1_block_y              dw   0          ; y value at start - top of screen
    task_1_block_color          dw   0x01       ; color is blue
    task_1_block_moving_right   dw   1          ; block is moving rightward

    ; determine data for second block when it is initially created
    task_2_block_x              dw   300        ; x value at start - right of screen
    task_2_block_y              dw   75         ; y value at start - middle of screen
    task_2_block_color          dw   0x04       ; color is red
    task_2_block_moving_right   dw   0          ; block is moving leftward

    ; determine data for third block when it is initially created
    task_3_block_x              dw   150        ; x value at start - middle of screen
    task_3_block_y              dw   150        ; y value at start - bottom of screen
    task_3_block_color          dw   0x02       ; color is green
    task_3_block_moving_right   dw   1          ; block is moving rightward

	current_task           dw  0                ; variable to holds the current task
	stacks times (256 * 4) db  0                ; fake stack that holds as many fake stack frames as there are tasks
	task_status    times 4 dw  0                ; the status of each task
	stack_pointers: dw 0                        ; pointers on the fake stack of each task
					dw stacks + (256 * 1)
					dw stacks + (256 * 2)
                    dw stacks + (256 * 3)

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