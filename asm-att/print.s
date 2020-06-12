.section .data
  output:
    .ascii "The number is %d\n"
.section .bss
    .lcomm buffer, 18
.section .text
.globl _start
_start:
  pushl $520
  pushl $output
  call printf
  addl $8, %esp
  pushl $0
  call exit

