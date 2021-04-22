
bootrom.elf:     file format elf64-littleriscv


Disassembly of section .text.start:

0000000000010000 <_start>:
   10000:	0010041b          	addiw	s0,zero,1
   10004:	01f41413          	slli	s0,s0,0x1f
   10008:	f1402573          	csrr	a0,mhartid
   1000c:	00000597          	auipc	a1,0x0
   10010:	07458593          	addi	a1,a1,116 # 10080 <_dtb>
   10014:	8402                	jr	s0

Disassembly of section .text.hang:

0000000000010040 <_hang>:
   10040:	f1402573          	csrr	a0,mhartid
   10044:	00000597          	auipc	a1,0x0
   10048:	03c58593          	addi	a1,a1,60 # 10080 <_dtb>
   1004c:	10500073          	wfi
   10050:	bff5                	j	1004c <_hang+0xc>
