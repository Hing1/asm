.section .data
  dividend:
    .quad 269
  divisor:
    .int 10
  quotient:
    .int 0
  remainder:
    .int 0
.section .bss
    .lcomm buffer, 18
.section .text
.globl _start
_start:
  movl dividend, %eax
  movl dividend + 4, %edx
  divl divisor


  pushl $0
  call exit

