; Unpacked Addition
; CISC 225, Computer Organization

global main		; exposes program entry point to the linker
extern printf

section .text	; start of code segment

main:
	push rbp				; preserve base pointer
	mov rbp,rsp				; copy stack pointer to base pointer

  ; Print num1
  mov rdi,fmt       ; Format string
  mov rsi,num1      ; Address of string to print
  xor rax,rax       ; No FP arguments
  call printf       ; Print the string

  ; Print num1
  mov rdi,fmt       ; Format string
  mov rsi,num2      ; Address of string to print
  xor rax,rax       ; No FP arguments
  call printf       ; Print the string



  ; Print sum
  mov rdi,fmt       ; Format string
  mov rsi,sum       ; Address of string to print
  xor rax,rax       ; No FP arguments
  call printf       ; Print the string

	pop		rbp				; restore base pointer
	mov		rax, 0			; exit status (0 = success)
	ret

section .data	; start of initialized data segment

num1 db '008246135523',0
num2 db '002575246757',0
sum db '000000000000',0

fmt db '%s',0xa ; Format string

section .bss	; start of uninitialized data segment
