.section .data
  output:
    .ascii "The min is %d, and the mean is %d\n"
  array:
    .int 12,4,6,7,80,34,54,46,3,23
  min:
    .int 0
  sum:
    .long 0
  len:
    .int 10
.section .bss
  .lcomm buffer, 64
.section .text
.globl _start
_start:
  movl $0, %eax # %eax is sum
  movl $0, %ebx # %ebx is array[i]
  movl $0, %edi # %edi is the counter i
  movl array(,%edi,4), %edx # %edx is min
  movl len, %ecx
loop1:
  movl array(,%edi,4), %ebx
  cmp %ebx, %edx
  jle flag1
  movl %ebx, %edx
flag1:
  addl %ebx, %eax
  inc %edi
  loop loop1
  movl %edx, min

  movl $0, %edx
  divl len

  pushl %eax # eax is mean
  pushl min
  pushl $output
  call printf
  addl $12, %esp

  pushl $0
  call exit

