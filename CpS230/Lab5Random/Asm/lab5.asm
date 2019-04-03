default rel

extern printf
extern scanf

section .text

global main
main:
  push    rbp
	mov     rbp, rsp
	sub     rsp, 32

.while:
  mov     rcx, str_guess_prompt
  call    printf

  mov     rdx, int_guess
  mov     rcx, str_read_guess
  call    scanf

  mov     rdx, [int_guess]
  mov     rcx, [int_magic_number]
  cmp     rdx, rcx
  je      .end
  jl      .guess_lower
  jg      .guess_higher

.guess_lower:
  mov     rcx, str_too_low
  call    printf

  inc     qword [int_amount_of_guesses]

  jmp     .while

.guess_higher:
  mov     rcx, str_too_high
  call    printf

  inc     qword [int_amount_of_guesses]

  jmp     .while

.end:
  inc     qword [int_amount_of_guesses]

  mov     rdx, qword [int_amount_of_guesses]
  mov     rcx, str_amount_of_guesses

  mov     rdx, qword [int_amount_of_guesses]
  call    printf

  mov     rcx, str_correct
  call    printf

  mov     rax, 0
  pop	  rbp
  ret

section .data
  str_guess_prompt      db   "I'm thinking of a number between 1 and 100; what is it? ",13,10,0
  str_amount_of_guesses db   "The amount of guesses you took was: %lld", 13,10,0
  str_read_guess        db   "%lld", 0
  str_correct           db   "You guessed it! Thanks for playing...",13,10,0
  str_too_high          db   "Too high!", 13,10,0
  str_too_low           db   "Too low!", 13,10,0

  int_amount_of_guesses dq   0
  int_guess             dq   0
  int_magic_number      dq   72