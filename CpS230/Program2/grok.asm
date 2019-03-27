default rel
bits 64
 
extern gets
extern printf
extern strlen
 
SECTION .data

    ; allocate 80 bytes for the input string
    inputString: db "01234567890123456789012345678901234567890123456789012345678901234567890123456789", 0
    ; allocate 160 bytes (40 32-bit numbers) for stack
    stack: dq 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    stackPointer: dq 0
    quitString: db "Thank you for visiting Earth.  We hope you make it home safely.", 13, 10, 0
    stringIndex: dq 0
    returnVal: db "%s", 13, 10, 0
    base19: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

SECTION .text

global main
main:
    mov rbp, rsp; for correct debugging

.whileNotEmptyString:
    lea rcx, [inputString]
    call gets

    movzx rcx, byte [inputString]
    cmp rcx, 0
    je .endCalculator

    lea rcx, [inputString]
    call strlen

    mov [stringIndex], rax    ; x = strlen result
    dec qword [stringIndex]

.whileNotZero:
    lea rbx, [rel inputString]
    mov rdx, [stringIndex]        ; x = strlen result
    movzx r8, byte [rbx + rdx] ; move inputString[x] to r8

    ; - 23H +-3B 45 + 4 76

    cmp r8, '+'
    je .plusOperator

    cmp r8, '-'
    je .minusOperator

    cmp r8, '~'
    je .negOperator

    cmp r8, '0'
    jl .endOfCharacterLoop
    cmp r8, '9'
    jle .digitOperator

    cmp r8, 'A'
    jl .endOfCharacterLoop
    cmp r8, 'I'
    jle .charOperator

.endOfCharacterLoop:

    dec qword [stringIndex]     ; x--

    cmp qword [stringIndex], 0  ; if x >= 0, loop
    jge .whileNotZero

    call popMethod

    mov rcx, rax
    call toBase19

    lea rdx, [base19]
    lea rcx, [returnVal]
    xor rax, rax
    call printf

    jmp .whileNotEmptyString

.plusOperator:

    call popMethod

    mov rcx, rax

    call popMethod

    add rcx, rax

    call pushMethod

    jmp .endOfCharacterLoop

.minusOperator:

    call popMethod

    mov rcx, rax

    call popMethod

    sub rcx, rax

    call pushMethod

    jmp .endOfCharacterLoop

.negOperator:

    call popMethod

    neg rax
    mov rcx, rax

    call pushMethod

    jmp .endOfCharacterLoop

.digitOperator:

    mov rcx, r8
    sub rcx, '0'
    call pushMethod

    jmp .endOfCharacterLoop

.charOperator:

    mov rcx, r8
    sub rcx, 'A'
    add rcx, 10
    call pushMethod

    jmp .endOfCharacterLoop

.endCalculator:
    lea rcx, [quitString]
    call printf

    ret

global pushMethod:
pushMethod:

    lea rbx, [rel stack]
    mov rdx, [stackPointer]
    mov qword [rbx + rdx], rcx

    add qword [stackPointer], 8

    ret

global popMethod:
popMethod:

    sub qword [stackPointer], 8

    lea rbx, [rel stack]
    mov rdx, [stackPointer]
    mov rax, qword [rbx + rdx]

    ret

global toBase19:
toBase19:

    mov rax, rcx            ; dividing variable
    lea rbx, [rel base19]   ; string to append to
    mov r8, rbx             ; save beginning of string

    cmp rax, 0
    jge .loopDigit

    mov byte [rbx], '-'
    inc rbx
    inc r8                  ; update saved beginning to not include '-' sign
    neg rax

.loopDigit:

    xor rdx, rdx
    mov rcx, 19
    div rcx                 ; div result in rax, remainder in rdx

    cmp rdx, 10
    jl .decDigit

    sub rdx, 10
    add rdx, 'A'

    jmp .haveChar

.decDigit:

    add rdx, '0'

.haveChar:

    mov byte [rbx], dl
    inc rbx

    cmp rax, 0
    jne .loopDigit

    mov byte [rbx], 0       ; null-terminate string

    mov r9, rbx             ; end position of string
    sub r9, 1

.reversing:

    cmp r8, r9
    jge .reversed

    mov cl, byte [r8]
    mov dl, byte [r9]
    mov byte [r8], dl
    mov byte [r9], cl

.reversed:

    ret
