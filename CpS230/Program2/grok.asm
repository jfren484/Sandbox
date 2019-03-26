default rel
bits 64
 
extern gets
extern printf
extern strlen
 
SECTION .data

    ; allocate 80 bytes for the input string
    inputString: db "01234567890123456789012345678901234567890123456789012345678901234567890123456789", 0
    ; allocate 160 bytes (40 32-bit numbers) for stack
    stack: db "0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789", 0
    stackPointer: dq 0
    quitString: db "Thank you for visiting Earth.  We hope you make it home safely.", 13, 10, 0
	stringIndex: dq 0
	returnVal: db "%d", 13, 10, 0

SECTION .text

global main
main:
	mov r9, inputString
	mov r8, r9

.whileNotEmptyString:
    lea rcx, [inputString]
    call gets

    movzx rcx, byte [inputString]
    cmp rcx, 0
    je .endCalculator

    lea rcx, [inputString]
    call strlen

    mov [stringIndex], rax    ; x = strlen result

.whileNotZero:
	lea rbx, [rel inputString]
    mov rdx, [stringIndex]	    ; x = strlen result
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
	mov rdx, rax
	lea rcx, [returnVal]
	xor rax, rax
	call printf

    jmp .whileNotEmptyString

.plusOperator:

    ;todo: add

    jmp .endOfCharacterLoop

.minusOperator:

    ;todo: subtract

    jmp .endOfCharacterLoop

.negOperator:

	call popMethod

    neg eax
	mov ecx, eax

	call pushMethod

    jmp .endOfCharacterLoop

.digitOperator:

    mov rcx, r8
	sub rcx, '0'
	call pushMethod

    jmp .endOfCharacterLoop

.charOperator:

    mov rcx, r8
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
    mov dword [rbx + rdx], ecx

    inc qword [stackPointer]
    inc qword [stackPointer]
    inc qword [stackPointer]
    inc qword [stackPointer]

    ret

global popMethod:
popMethod:

    dec qword [stackPointer]
    dec qword [stackPointer]
    dec qword [stackPointer]
    dec qword [stackPointer]

	lea rbx, [rel stack]
	mov [stackPointer], rdx
    mov eax, dword [rbx + rdx]

    ret
