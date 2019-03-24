default rel
 
extern gets
extern printf
extern malloc
extern strcmp
extern strlen
 
SECTION .data

    ; allocate 80 bytes for the input string
    inputString: db "01234567890123456789012345678901234567890123456789012345678901234567890123456789", 0
    ; allocate 160 bytes (40 32-bit numbers) for stack
    stack: db "0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789", 0
    stackPointer: db 0,0,0,0
    quitString: db "Thank you for visiting Earth.  We hope you make it home safely.", 13, 10, 0
    newLine: db 13, 10, 0

SECTION .text

global main
main:
.whileNotEmptyString:
    lea rcx, [inputString]
    call gets

    movzx rcx, byte [inputString]
    cmp rcx, 0
    je .endCalculator

    lea rcx, [inputString]
    call strlen

    mov rdx, rax    ; x = strlen result
.whileNotZero:
    movzx rcx, byte [inputString + rdx] ; move inputString[x] to rcx

    ; - 23H +-3B 45 + 4 76

    cmp rcx, '+'
    je .plusOperator

    cmp rcx, '-'
    je .minusOperator

    cmp rcx, '~'
    je .negOperator

    cmp rcx, '0'
    jl .endOfCharacterLoop
    cmp rcx, '9'
    jle .digitOperator

    cmp rcx, 'A'
    jl .endOfCharacterLoop
    cmp rcx, 'I'
    jle .digitOperator

.endOfCharacterLoop:

    dec rdx     ; x--
    
    cmp rdx, 0  ; if x >= 0, loop
    jge .whileNotZero

    jmp .whileNotEmptyString

.plusOperator:

    ;todo: add

    jmp .endOfCharacterLoop

.minusOperator:

    ;todo: subtract

    jmp .endOfCharacterLoop

.negOperator:

    ;todo: neg

    jmp .endOfCharacterLoop

.digitOperator:

    ;todo: store 

    jmp .endOfCharacterLoop

.endCalculator:
    lea rcx, [quitString]
    call printf

    ret

global pushMethod:
pushMethod:

    mov rcx, stackPointer
    inc rcx
    mov stackPointer, rcx
    ret

global popMethod:
popMethod:

    dec stackPointer
    mov rcx, [stack]
    add rcx, stackPointer
    mov rax, qword [rcx]
    ret