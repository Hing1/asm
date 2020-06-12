.section .data
  output:
    .ascii "hello, world!\n"
    len = .-output
.section .text
.globl main
main:
  movl $4, %eax
  movl $1, %ebx
  movl $output, %ecx
  movl $len, %edx
  int $0x80

  movl $1, %eax
  movl $0, %ebx
  int $0x80
