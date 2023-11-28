; Sum 0.1 Ten Times
; CISC 225, Computer Organization

global main		; exposes program entry point to the linker
extern printf	; declare external function

section .text	; start of code segment

main:
  push rbp       ; preserve base pointer
  mov rbp,rsp    ; copy stack pointer to base pointer



  pop rbp        ; restore base pointer
  mov rax,0      ; exit status (0 = success)
  ret

section .data	; start of initialized data segment

  ; printf format strings
  fmt_sum db "Sum 0.1 ten times = %.10lf",0xa,0
  fmt_lt1 db "Sum < 1.0",0xa,0
  fmt_gt1 db "Sum > 1.0",0xa,0
  fmt_eq1 db "Sum == 1.0",0xa,0

  ; Floating point constants
  c0 dq 0.0
  c1 dq 1.0
  c01 dq 0.1

section .bss	; start of uninitialized data segment
