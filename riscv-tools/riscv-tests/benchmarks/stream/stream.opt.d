
stream.out.opt:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <main>:
   100b0:	1141                	addi	sp,sp,-16
   100b2:	01400537          	lui	a0,0x1400
   100b6:	e406                	sd	ra,8(sp)
   100b8:	e022                	sd	s0,0(sp)
   100ba:	274000ef          	jal	ra,1032e <malloc>
   100be:	882a                	mv	a6,a0
   100c0:	87aa                	mv	a5,a0
   100c2:	86aa                	mv	a3,a0
   100c4:	4701                	li	a4,0
   100c6:	00280637          	lui	a2,0x280
   100ca:	e298                	sd	a4,0(a3)
   100cc:	0711                	addi	a4,a4,4
   100ce:	02068693          	addi	a3,a3,32
   100d2:	fec71ce3          	bne	a4,a2,100ca <main+0x1a>
   100d6:	c0502573          	csrr	a0,hpmcounter5
   100da:	0005059b          	sext.w	a1,a0
   100de:	c0402573          	csrr	a0,hpmcounter4
   100e2:	0005061b          	sext.w	a2,a0
   100e6:	c0002373          	rdcycle	t1
   100ea:	c02028f3          	rdinstret	a7
   100ee:	01400537          	lui	a0,0x1400
   100f2:	9542                	add	a0,a0,a6
   100f4:	4681                	li	a3,0
   100f6:	6398                	ld	a4,0(a5)
   100f8:	02078793          	addi	a5,a5,32
   100fc:	96ba                	add	a3,a3,a4
   100fe:	fef51ce3          	bne	a0,a5,100f6 <main+0x46>
   10102:	c00027f3          	rdcycle	a5
   10106:	8a818413          	addi	s0,gp,-1880 # 1ca30 <counters>
   1010a:	406787b3          	sub	a5,a5,t1
   1010e:	e01c                	sd	a5,0(s0)
   10110:	c02027f3          	rdinstret	a5
   10114:	411787b3          	sub	a5,a5,a7
   10118:	e41c                	sd	a5,8(s0)
   1011a:	c0502573          	csrr	a0,hpmcounter5
   1011e:	87aa                	mv	a5,a0
   10120:	c0402573          	csrr	a0,hpmcounter4
   10124:	40c5063b          	subw	a2,a0,a2
   10128:	0001a537          	lui	a0,0x1a
   1012c:	40b785bb          	subw	a1,a5,a1
   10130:	b3050513          	addi	a0,a0,-1232 # 19b30 <__clzdi2+0x30>
   10134:	7be000ef          	jal	ra,108f2 <printf>
   10138:	6410                	ld	a2,8(s0)
   1013a:	600c                	ld	a1,0(s0)
   1013c:	0001a537          	lui	a0,0x1a
   10140:	b5850513          	addi	a0,a0,-1192 # 19b58 <__clzdi2+0x58>
   10144:	7ae000ef          	jal	ra,108f2 <printf>
   10148:	60a2                	ld	ra,8(sp)
   1014a:	6402                	ld	s0,0(sp)
   1014c:	4501                	li	a0,0
   1014e:	0141                	addi	sp,sp,16
   10150:	8082                	ret

0000000000010152 <_start>:
   10152:	0000d197          	auipc	gp,0xd
   10156:	03618193          	addi	gp,gp,54 # 1d188 <__global_pointer$>
   1015a:	84818513          	addi	a0,gp,-1976 # 1c9d0 <_edata>
   1015e:	8e818613          	addi	a2,gp,-1816 # 1ca70 <_end>
   10162:	8e09                	sub	a2,a2,a0
   10164:	4581                	li	a1,0
   10166:	6bc000ef          	jal	ra,10822 <memset>
   1016a:	00000517          	auipc	a0,0x0
   1016e:	11a50513          	addi	a0,a0,282 # 10284 <__libc_fini_array>
   10172:	0e8000ef          	jal	ra,1025a <atexit>
   10176:	156000ef          	jal	ra,102cc <__libc_init_array>
   1017a:	4502                	lw	a0,0(sp)
   1017c:	002c                	addi	a1,sp,8
   1017e:	4601                	li	a2,0
   10180:	f31ff0ef          	jal	ra,100b0 <main>
   10184:	0e20006f          	j	10266 <exit>

0000000000010188 <_fini>:
   10188:	8082                	ret

000000000001018a <deregister_tm_clones>:
   1018a:	6575                	lui	a0,0x1d
   1018c:	67f5                	lui	a5,0x1d
   1018e:	98850713          	addi	a4,a0,-1656 # 1c988 <__TMC_END__>
   10192:	98878793          	addi	a5,a5,-1656 # 1c988 <__TMC_END__>
   10196:	00e78b63          	beq	a5,a4,101ac <deregister_tm_clones+0x22>
   1019a:	00000337          	lui	t1,0x0
   1019e:	00030313          	mv	t1,t1
   101a2:	00030563          	beqz	t1,101ac <deregister_tm_clones+0x22>
   101a6:	98850513          	addi	a0,a0,-1656
   101aa:	8302                	jr	t1
   101ac:	8082                	ret

00000000000101ae <register_tm_clones>:
   101ae:	67f5                	lui	a5,0x1d
   101b0:	6575                	lui	a0,0x1d
   101b2:	98878593          	addi	a1,a5,-1656 # 1c988 <__TMC_END__>
   101b6:	98850793          	addi	a5,a0,-1656 # 1c988 <__TMC_END__>
   101ba:	8d9d                	sub	a1,a1,a5
   101bc:	858d                	srai	a1,a1,0x3
   101be:	4789                	li	a5,2
   101c0:	02f5c5b3          	div	a1,a1,a5
   101c4:	c991                	beqz	a1,101d8 <register_tm_clones+0x2a>
   101c6:	00000337          	lui	t1,0x0
   101ca:	00030313          	mv	t1,t1
   101ce:	00030563          	beqz	t1,101d8 <register_tm_clones+0x2a>
   101d2:	98850513          	addi	a0,a0,-1656
   101d6:	8302                	jr	t1
   101d8:	8082                	ret

00000000000101da <__do_global_dtors_aux>:
   101da:	8701c703          	lbu	a4,-1936(gp) # 1c9f8 <completed.5212>
   101de:	eb15                	bnez	a4,10212 <__do_global_dtors_aux+0x38>
   101e0:	1141                	addi	sp,sp,-16
   101e2:	e022                	sd	s0,0(sp)
   101e4:	e406                	sd	ra,8(sp)
   101e6:	843e                	mv	s0,a5
   101e8:	fa3ff0ef          	jal	ra,1018a <deregister_tm_clones>
   101ec:	000007b7          	lui	a5,0x0
   101f0:	00078793          	mv	a5,a5
   101f4:	cb81                	beqz	a5,10204 <__do_global_dtors_aux+0x2a>
   101f6:	6571                	lui	a0,0x1c
   101f8:	87050513          	addi	a0,a0,-1936 # 1b870 <__EH_FRAME_BEGIN__>
   101fc:	ffff0097          	auipc	ra,0xffff0
   10200:	e04080e7          	jalr	-508(ra) # 0 <main-0x100b0>
   10204:	4785                	li	a5,1
   10206:	86f18823          	sb	a5,-1936(gp) # 1c9f8 <completed.5212>
   1020a:	60a2                	ld	ra,8(sp)
   1020c:	6402                	ld	s0,0(sp)
   1020e:	0141                	addi	sp,sp,16
   10210:	8082                	ret
   10212:	8082                	ret

0000000000010214 <frame_dummy>:
   10214:	000007b7          	lui	a5,0x0
   10218:	00078793          	mv	a5,a5
   1021c:	cf91                	beqz	a5,10238 <frame_dummy+0x24>
   1021e:	6571                	lui	a0,0x1c
   10220:	1141                	addi	sp,sp,-16
   10222:	87818593          	addi	a1,gp,-1928 # 1ca00 <object.5217>
   10226:	87050513          	addi	a0,a0,-1936 # 1b870 <__EH_FRAME_BEGIN__>
   1022a:	e406                	sd	ra,8(sp)
   1022c:	ffff0097          	auipc	ra,0xffff0
   10230:	dd4080e7          	jalr	-556(ra) # 0 <main-0x100b0>
   10234:	60a2                	ld	ra,8(sp)
   10236:	0141                	addi	sp,sp,16
   10238:	f77ff06f          	j	101ae <register_tm_clones>

000000000001023c <setStats>:
   1023c:	c0002773          	rdcycle	a4
   10240:	8a818793          	addi	a5,gp,-1880 # 1ca30 <counters>
   10244:	e119                	bnez	a0,1024a <setStats+0xe>
   10246:	6394                	ld	a3,0(a5)
   10248:	8f15                	sub	a4,a4,a3
   1024a:	e398                	sd	a4,0(a5)
   1024c:	c0202773          	rdinstret	a4
   10250:	e119                	bnez	a0,10256 <setStats+0x1a>
   10252:	6794                	ld	a3,8(a5)
   10254:	8f15                	sub	a4,a4,a3
   10256:	e798                	sd	a4,8(a5)
   10258:	8082                	ret

000000000001025a <atexit>:
   1025a:	85aa                	mv	a1,a0
   1025c:	4681                	li	a3,0
   1025e:	4601                	li	a2,0
   10260:	4501                	li	a0,0
   10262:	6110106f          	j	12072 <__register_exitproc>

0000000000010266 <exit>:
   10266:	1141                	addi	sp,sp,-16
   10268:	4581                	li	a1,0
   1026a:	e022                	sd	s0,0(sp)
   1026c:	e406                	sd	ra,8(sp)
   1026e:	842a                	mv	s0,a0
   10270:	667010ef          	jal	ra,120d6 <__call_exitprocs>
   10274:	8281b503          	ld	a0,-2008(gp) # 1c9b0 <_global_impure_ptr>
   10278:	6d3c                	ld	a5,88(a0)
   1027a:	c391                	beqz	a5,1027e <exit+0x18>
   1027c:	9782                	jalr	a5
   1027e:	8522                	mv	a0,s0
   10280:	1de080ef          	jal	ra,1845e <_exit>

0000000000010284 <__libc_fini_array>:
   10284:	7179                	addi	sp,sp,-48
   10286:	67f1                	lui	a5,0x1c
   10288:	6771                	lui	a4,0x1c
   1028a:	f022                	sd	s0,32(sp)
   1028c:	88070713          	addi	a4,a4,-1920 # 1b880 <__init_array_end>
   10290:	88878413          	addi	s0,a5,-1912 # 1b888 <__fini_array_end>
   10294:	8c19                	sub	s0,s0,a4
   10296:	ec26                	sd	s1,24(sp)
   10298:	e84a                	sd	s2,16(sp)
   1029a:	e44e                	sd	s3,8(sp)
   1029c:	f406                	sd	ra,40(sp)
   1029e:	840d                	srai	s0,s0,0x3
   102a0:	4481                	li	s1,0
   102a2:	88878913          	addi	s2,a5,-1912
   102a6:	59e1                	li	s3,-8
   102a8:	00941a63          	bne	s0,s1,102bc <__libc_fini_array+0x38>
   102ac:	7402                	ld	s0,32(sp)
   102ae:	70a2                	ld	ra,40(sp)
   102b0:	64e2                	ld	s1,24(sp)
   102b2:	6942                	ld	s2,16(sp)
   102b4:	69a2                	ld	s3,8(sp)
   102b6:	6145                	addi	sp,sp,48
   102b8:	ed1ff06f          	j	10188 <_fini>
   102bc:	033487b3          	mul	a5,s1,s3
   102c0:	0485                	addi	s1,s1,1
   102c2:	97ca                	add	a5,a5,s2
   102c4:	ff87b783          	ld	a5,-8(a5)
   102c8:	9782                	jalr	a5
   102ca:	bff9                	j	102a8 <__libc_fini_array+0x24>

00000000000102cc <__libc_init_array>:
   102cc:	1101                	addi	sp,sp,-32
   102ce:	e822                	sd	s0,16(sp)
   102d0:	e426                	sd	s1,8(sp)
   102d2:	6471                	lui	s0,0x1c
   102d4:	64f1                	lui	s1,0x1c
   102d6:	87448793          	addi	a5,s1,-1932 # 1b874 <__preinit_array_end>
   102da:	87440413          	addi	s0,s0,-1932 # 1b874 <__preinit_array_end>
   102de:	8c1d                	sub	s0,s0,a5
   102e0:	e04a                	sd	s2,0(sp)
   102e2:	ec06                	sd	ra,24(sp)
   102e4:	840d                	srai	s0,s0,0x3
   102e6:	87448493          	addi	s1,s1,-1932
   102ea:	4901                	li	s2,0
   102ec:	02891763          	bne	s2,s0,1031a <__libc_init_array+0x4e>
   102f0:	64f1                	lui	s1,0x1c
   102f2:	e97ff0ef          	jal	ra,10188 <_fini>
   102f6:	6471                	lui	s0,0x1c
   102f8:	87848793          	addi	a5,s1,-1928 # 1b878 <__frame_dummy_init_array_entry>
   102fc:	88040413          	addi	s0,s0,-1920 # 1b880 <__init_array_end>
   10300:	8c1d                	sub	s0,s0,a5
   10302:	840d                	srai	s0,s0,0x3
   10304:	87848493          	addi	s1,s1,-1928
   10308:	4901                	li	s2,0
   1030a:	00891d63          	bne	s2,s0,10324 <__libc_init_array+0x58>
   1030e:	60e2                	ld	ra,24(sp)
   10310:	6442                	ld	s0,16(sp)
   10312:	64a2                	ld	s1,8(sp)
   10314:	6902                	ld	s2,0(sp)
   10316:	6105                	addi	sp,sp,32
   10318:	8082                	ret
   1031a:	609c                	ld	a5,0(s1)
   1031c:	0905                	addi	s2,s2,1
   1031e:	04a1                	addi	s1,s1,8
   10320:	9782                	jalr	a5
   10322:	b7e9                	j	102ec <__libc_init_array+0x20>
   10324:	609c                	ld	a5,0(s1)
   10326:	0905                	addi	s2,s2,1
   10328:	04a1                	addi	s1,s1,8
   1032a:	9782                	jalr	a5
   1032c:	bff9                	j	1030a <__libc_init_array+0x3e>

000000000001032e <malloc>:
   1032e:	85aa                	mv	a1,a0
   10330:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   10334:	00e0006f          	j	10342 <_malloc_r>

0000000000010338 <free>:
   10338:	85aa                	mv	a1,a0
   1033a:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   1033e:	2900206f          	j	125ce <_free_r>

0000000000010342 <_malloc_r>:
   10342:	715d                	addi	sp,sp,-80
   10344:	fc26                	sd	s1,56(sp)
   10346:	f84a                	sd	s2,48(sp)
   10348:	e486                	sd	ra,72(sp)
   1034a:	e0a2                	sd	s0,64(sp)
   1034c:	f44e                	sd	s3,40(sp)
   1034e:	f052                	sd	s4,32(sp)
   10350:	ec56                	sd	s5,24(sp)
   10352:	e85a                	sd	s6,16(sp)
   10354:	e45e                	sd	s7,8(sp)
   10356:	e062                	sd	s8,0(sp)
   10358:	01758493          	addi	s1,a1,23
   1035c:	02e00793          	li	a5,46
   10360:	892a                	mv	s2,a0
   10362:	4a97f763          	bleu	s1,a5,10810 <_malloc_r+0x4ce>
   10366:	800007b7          	lui	a5,0x80000
   1036a:	98c1                	andi	s1,s1,-16
   1036c:	fff7c793          	not	a5,a5
   10370:	0097e463          	bltu	a5,s1,10378 <_malloc_r+0x36>
   10374:	02b4f263          	bleu	a1,s1,10398 <_malloc_r+0x56>
   10378:	47b1                	li	a5,12
   1037a:	00f92023          	sw	a5,0(s2)
   1037e:	4501                	li	a0,0
   10380:	60a6                	ld	ra,72(sp)
   10382:	6406                	ld	s0,64(sp)
   10384:	74e2                	ld	s1,56(sp)
   10386:	7942                	ld	s2,48(sp)
   10388:	79a2                	ld	s3,40(sp)
   1038a:	7a02                	ld	s4,32(sp)
   1038c:	6ae2                	ld	s5,24(sp)
   1038e:	6b42                	ld	s6,16(sp)
   10390:	6ba2                	ld	s7,8(sp)
   10392:	6c02                	ld	s8,0(sp)
   10394:	6161                	addi	sp,sp,80
   10396:	8082                	ret
   10398:	534000ef          	jal	ra,108cc <__malloc_lock>
   1039c:	1f700793          	li	a5,503
   103a0:	0497e863          	bltu	a5,s1,103f0 <_malloc_r+0xae>
   103a4:	0034d793          	srli	a5,s1,0x3
   103a8:	2781                	sext.w	a5,a5
   103aa:	0017871b          	addiw	a4,a5,1
   103ae:	0017171b          	slliw	a4,a4,0x1
   103b2:	66f1                	lui	a3,0x1c
   103b4:	fd068693          	addi	a3,a3,-48 # 1bfd0 <__malloc_av_>
   103b8:	070e                	slli	a4,a4,0x3
   103ba:	9736                	add	a4,a4,a3
   103bc:	6700                	ld	s0,8(a4)
   103be:	ff070693          	addi	a3,a4,-16
   103c2:	00d41663          	bne	s0,a3,103ce <_malloc_r+0x8c>
   103c6:	6f00                	ld	s0,24(a4)
   103c8:	2789                	addiw	a5,a5,2
   103ca:	06870663          	beq	a4,s0,10436 <_malloc_r+0xf4>
   103ce:	641c                	ld	a5,8(s0)
   103d0:	6c18                	ld	a4,24(s0)
   103d2:	6814                	ld	a3,16(s0)
   103d4:	9bf1                	andi	a5,a5,-4
   103d6:	97a2                	add	a5,a5,s0
   103d8:	ee98                	sd	a4,24(a3)
   103da:	eb14                	sd	a3,16(a4)
   103dc:	6798                	ld	a4,8(a5)
   103de:	00176713          	ori	a4,a4,1
   103e2:	e798                	sd	a4,8(a5)
   103e4:	854a                	mv	a0,s2
   103e6:	4e8000ef          	jal	ra,108ce <__malloc_unlock>
   103ea:	01040513          	addi	a0,s0,16
   103ee:	bf49                	j	10380 <_malloc_r+0x3e>
   103f0:	0094d713          	srli	a4,s1,0x9
   103f4:	03f00793          	li	a5,63
   103f8:	cb01                	beqz	a4,10408 <_malloc_r+0xc6>
   103fa:	4791                	li	a5,4
   103fc:	08e7e063          	bltu	a5,a4,1047c <_malloc_r+0x13a>
   10400:	0064d793          	srli	a5,s1,0x6
   10404:	0387879b          	addiw	a5,a5,56
   10408:	0017871b          	addiw	a4,a5,1
   1040c:	0017171b          	slliw	a4,a4,0x1
   10410:	66f1                	lui	a3,0x1c
   10412:	070e                	slli	a4,a4,0x3
   10414:	fd068693          	addi	a3,a3,-48 # 1bfd0 <__malloc_av_>
   10418:	9736                	add	a4,a4,a3
   1041a:	6700                	ld	s0,8(a4)
   1041c:	ff070593          	addi	a1,a4,-16
   10420:	457d                	li	a0,31
   10422:	00b40963          	beq	s0,a1,10434 <_malloc_r+0xf2>
   10426:	6418                	ld	a4,8(s0)
   10428:	9b71                	andi	a4,a4,-4
   1042a:	40970633          	sub	a2,a4,s1
   1042e:	08c55a63          	ble	a2,a0,104c2 <_malloc_r+0x180>
   10432:	37fd                	addiw	a5,a5,-1
   10434:	2785                	addiw	a5,a5,1
   10436:	69f1                	lui	s3,0x1c
   10438:	fd098693          	addi	a3,s3,-48 # 1bfd0 <__malloc_av_>
   1043c:	7280                	ld	s0,32(a3)
   1043e:	65f1                	lui	a1,0x1c
   10440:	fe058613          	addi	a2,a1,-32 # 1bfe0 <__malloc_av_+0x10>
   10444:	fd098993          	addi	s3,s3,-48
   10448:	fe058593          	addi	a1,a1,-32
   1044c:	0cc40c63          	beq	s0,a2,10524 <_malloc_r+0x1e2>
   10450:	6418                	ld	a4,8(s0)
   10452:	487d                	li	a6,31
   10454:	9b71                	andi	a4,a4,-4
   10456:	40970533          	sub	a0,a4,s1
   1045a:	06a85f63          	ble	a0,a6,104d8 <_malloc_r+0x196>
   1045e:	009407b3          	add	a5,s0,s1
   10462:	0014e493          	ori	s1,s1,1
   10466:	e404                	sd	s1,8(s0)
   10468:	f69c                	sd	a5,40(a3)
   1046a:	f29c                	sd	a5,32(a3)
   1046c:	00156693          	ori	a3,a0,1
   10470:	ef90                	sd	a2,24(a5)
   10472:	eb90                	sd	a2,16(a5)
   10474:	e794                	sd	a3,8(a5)
   10476:	9722                	add	a4,a4,s0
   10478:	e308                	sd	a0,0(a4)
   1047a:	b7ad                	j	103e4 <_malloc_r+0xa2>
   1047c:	47d1                	li	a5,20
   1047e:	00e7e563          	bltu	a5,a4,10488 <_malloc_r+0x146>
   10482:	05b7079b          	addiw	a5,a4,91
   10486:	b749                	j	10408 <_malloc_r+0xc6>
   10488:	05400793          	li	a5,84
   1048c:	00e7e763          	bltu	a5,a4,1049a <_malloc_r+0x158>
   10490:	00c4d793          	srli	a5,s1,0xc
   10494:	06e7879b          	addiw	a5,a5,110
   10498:	bf85                	j	10408 <_malloc_r+0xc6>
   1049a:	15400793          	li	a5,340
   1049e:	00e7e763          	bltu	a5,a4,104ac <_malloc_r+0x16a>
   104a2:	00f4d793          	srli	a5,s1,0xf
   104a6:	0777879b          	addiw	a5,a5,119
   104aa:	bfb9                	j	10408 <_malloc_r+0xc6>
   104ac:	55400693          	li	a3,1364
   104b0:	07e00793          	li	a5,126
   104b4:	f4e6eae3          	bltu	a3,a4,10408 <_malloc_r+0xc6>
   104b8:	0124d793          	srli	a5,s1,0x12
   104bc:	07c7879b          	addiw	a5,a5,124
   104c0:	b7a1                	j	10408 <_malloc_r+0xc6>
   104c2:	6c14                	ld	a3,24(s0)
   104c4:	00064863          	bltz	a2,104d4 <_malloc_r+0x192>
   104c8:	681c                	ld	a5,16(s0)
   104ca:	ef94                	sd	a3,24(a5)
   104cc:	ea9c                	sd	a5,16(a3)
   104ce:	00e407b3          	add	a5,s0,a4
   104d2:	b729                	j	103dc <_malloc_r+0x9a>
   104d4:	8436                	mv	s0,a3
   104d6:	b7b1                	j	10422 <_malloc_r+0xe0>
   104d8:	f690                	sd	a2,40(a3)
   104da:	f290                	sd	a2,32(a3)
   104dc:	00054863          	bltz	a0,104ec <_malloc_r+0x1aa>
   104e0:	9722                	add	a4,a4,s0
   104e2:	671c                	ld	a5,8(a4)
   104e4:	0017e793          	ori	a5,a5,1
   104e8:	e71c                	sd	a5,8(a4)
   104ea:	bded                	j	103e4 <_malloc_r+0xa2>
   104ec:	1ff00693          	li	a3,511
   104f0:	12e6e863          	bltu	a3,a4,10620 <_malloc_r+0x2de>
   104f4:	830d                	srli	a4,a4,0x3
   104f6:	2701                	sext.w	a4,a4
   104f8:	4027561b          	sraiw	a2,a4,0x2
   104fc:	4685                	li	a3,1
   104fe:	00c696b3          	sll	a3,a3,a2
   10502:	2705                	addiw	a4,a4,1
   10504:	0089b603          	ld	a2,8(s3)
   10508:	0017171b          	slliw	a4,a4,0x1
   1050c:	070e                	slli	a4,a4,0x3
   1050e:	8ed1                	or	a3,a3,a2
   10510:	974e                	add	a4,a4,s3
   10512:	00d9b423          	sd	a3,8(s3)
   10516:	6314                	ld	a3,0(a4)
   10518:	ff070613          	addi	a2,a4,-16
   1051c:	ec10                	sd	a2,24(s0)
   1051e:	e814                	sd	a3,16(s0)
   10520:	e300                	sd	s0,0(a4)
   10522:	ee80                	sd	s0,24(a3)
   10524:	4027d71b          	sraiw	a4,a5,0x2
   10528:	4305                	li	t1,1
   1052a:	00e31333          	sll	t1,t1,a4
   1052e:	0089b703          	ld	a4,8(s3)
   10532:	06676063          	bltu	a4,t1,10592 <_malloc_r+0x250>
   10536:	006776b3          	and	a3,a4,t1
   1053a:	e699                	bnez	a3,10548 <_malloc_r+0x206>
   1053c:	9bf1                	andi	a5,a5,-4
   1053e:	0306                	slli	t1,t1,0x1
   10540:	006776b3          	and	a3,a4,t1
   10544:	2791                	addiw	a5,a5,4
   10546:	dee5                	beqz	a3,1053e <_malloc_r+0x1fc>
   10548:	4e7d                	li	t3,31
   1054a:	0017871b          	addiw	a4,a5,1
   1054e:	0017171b          	slliw	a4,a4,0x1
   10552:	070e                	slli	a4,a4,0x3
   10554:	1741                	addi	a4,a4,-16
   10556:	974e                	add	a4,a4,s3
   10558:	883a                	mv	a6,a4
   1055a:	853e                	mv	a0,a5
   1055c:	01883403          	ld	s0,24(a6)
   10560:	15041f63          	bne	s0,a6,106be <_malloc_r+0x37c>
   10564:	2505                	addiw	a0,a0,1
   10566:	00357693          	andi	a3,a0,3
   1056a:	0841                	addi	a6,a6,16
   1056c:	fae5                	bnez	a3,1055c <_malloc_r+0x21a>
   1056e:	0037f693          	andi	a3,a5,3
   10572:	18069f63          	bnez	a3,10710 <_malloc_r+0x3ce>
   10576:	0089b703          	ld	a4,8(s3)
   1057a:	fff34793          	not	a5,t1
   1057e:	8ff9                	and	a5,a5,a4
   10580:	00f9b423          	sd	a5,8(s3)
   10584:	0089b683          	ld	a3,8(s3)
   10588:	0306                	slli	t1,t1,0x1
   1058a:	0066e463          	bltu	a3,t1,10592 <_malloc_r+0x250>
   1058e:	18031e63          	bnez	t1,1072a <_malloc_r+0x3e8>
   10592:	0109bb03          	ld	s6,16(s3)
   10596:	008b3403          	ld	s0,8(s6)
   1059a:	ffc47a13          	andi	s4,s0,-4
   1059e:	009a6763          	bltu	s4,s1,105ac <_malloc_r+0x26a>
   105a2:	409a07b3          	sub	a5,s4,s1
   105a6:	477d                	li	a4,31
   105a8:	24f74863          	blt	a4,a5,107f8 <_malloc_r+0x4b6>
   105ac:	8581b403          	ld	s0,-1960(gp) # 1c9e0 <__malloc_top_pad>
   105b0:	8381b703          	ld	a4,-1992(gp) # 1c9c0 <__malloc_sbrk_base>
   105b4:	57fd                	li	a5,-1
   105b6:	9426                	add	s0,s0,s1
   105b8:	16f71b63          	bne	a4,a5,1072e <_malloc_r+0x3ec>
   105bc:	02040413          	addi	s0,s0,32
   105c0:	85a2                	mv	a1,s0
   105c2:	854a                	mv	a0,s2
   105c4:	358000ef          	jal	ra,1091c <_sbrk_r>
   105c8:	57fd                	li	a5,-1
   105ca:	8aaa                	mv	s5,a0
   105cc:	1cf50b63          	beq	a0,a5,107a2 <_malloc_r+0x460>
   105d0:	014b07b3          	add	a5,s6,s4
   105d4:	00f57463          	bleu	a5,a0,105dc <_malloc_r+0x29a>
   105d8:	1d3b1563          	bne	s6,s3,107a2 <_malloc_r+0x460>
   105dc:	8b818693          	addi	a3,gp,-1864 # 1ca40 <__malloc_current_mallinfo>
   105e0:	4298                	lw	a4,0(a3)
   105e2:	8b818b93          	addi	s7,gp,-1864 # 1ca40 <__malloc_current_mallinfo>
   105e6:	9f21                	addw	a4,a4,s0
   105e8:	c298                	sw	a4,0(a3)
   105ea:	15579863          	bne	a5,s5,1073a <_malloc_r+0x3f8>
   105ee:	03479693          	slli	a3,a5,0x34
   105f2:	14069463          	bnez	a3,1073a <_malloc_r+0x3f8>
   105f6:	0109b783          	ld	a5,16(s3)
   105fa:	9452                	add	s0,s0,s4
   105fc:	00146413          	ori	s0,s0,1
   10600:	e780                	sd	s0,8(a5)
   10602:	000ba783          	lw	a5,0(s7)
   10606:	8501b683          	ld	a3,-1968(gp) # 1c9d8 <__malloc_max_sbrked_mem>
   1060a:	00f6f463          	bleu	a5,a3,10612 <_malloc_r+0x2d0>
   1060e:	84f1b823          	sd	a5,-1968(gp) # 1c9d8 <__malloc_max_sbrked_mem>
   10612:	8481b683          	ld	a3,-1976(gp) # 1c9d0 <_edata>
   10616:	18f6f663          	bleu	a5,a3,107a2 <_malloc_r+0x460>
   1061a:	84f1b423          	sd	a5,-1976(gp) # 1c9d0 <_edata>
   1061e:	a251                	j	107a2 <_malloc_r+0x460>
   10620:	00975613          	srli	a2,a4,0x9
   10624:	4691                	li	a3,4
   10626:	04c6e063          	bltu	a3,a2,10666 <_malloc_r+0x324>
   1062a:	00675693          	srli	a3,a4,0x6
   1062e:	0386869b          	addiw	a3,a3,56
   10632:	0016861b          	addiw	a2,a3,1
   10636:	0016161b          	slliw	a2,a2,0x1
   1063a:	060e                	slli	a2,a2,0x3
   1063c:	964e                	add	a2,a2,s3
   1063e:	ff060513          	addi	a0,a2,-16 # 27fff0 <__global_pointer$+0x262e68>
   10642:	6210                	ld	a2,0(a2)
   10644:	06c51763          	bne	a0,a2,106b2 <_malloc_r+0x370>
   10648:	4705                	li	a4,1
   1064a:	4026d69b          	sraiw	a3,a3,0x2
   1064e:	00d716b3          	sll	a3,a4,a3
   10652:	0089b703          	ld	a4,8(s3)
   10656:	8ed9                	or	a3,a3,a4
   10658:	00d9b423          	sd	a3,8(s3)
   1065c:	ec08                	sd	a0,24(s0)
   1065e:	e810                	sd	a2,16(s0)
   10660:	e900                	sd	s0,16(a0)
   10662:	ee00                	sd	s0,24(a2)
   10664:	b5c1                	j	10524 <_malloc_r+0x1e2>
   10666:	46d1                	li	a3,20
   10668:	00c6e563          	bltu	a3,a2,10672 <_malloc_r+0x330>
   1066c:	05b6069b          	addiw	a3,a2,91
   10670:	b7c9                	j	10632 <_malloc_r+0x2f0>
   10672:	05400693          	li	a3,84
   10676:	00c6e763          	bltu	a3,a2,10684 <_malloc_r+0x342>
   1067a:	00c75693          	srli	a3,a4,0xc
   1067e:	06e6869b          	addiw	a3,a3,110
   10682:	bf45                	j	10632 <_malloc_r+0x2f0>
   10684:	15400693          	li	a3,340
   10688:	00c6e763          	bltu	a3,a2,10696 <_malloc_r+0x354>
   1068c:	00f75693          	srli	a3,a4,0xf
   10690:	0776869b          	addiw	a3,a3,119
   10694:	bf79                	j	10632 <_malloc_r+0x2f0>
   10696:	55400513          	li	a0,1364
   1069a:	07e00693          	li	a3,126
   1069e:	f8c56ae3          	bltu	a0,a2,10632 <_malloc_r+0x2f0>
   106a2:	01275693          	srli	a3,a4,0x12
   106a6:	07c6869b          	addiw	a3,a3,124
   106aa:	b761                	j	10632 <_malloc_r+0x2f0>
   106ac:	6a10                	ld	a2,16(a2)
   106ae:	00c50663          	beq	a0,a2,106ba <_malloc_r+0x378>
   106b2:	6614                	ld	a3,8(a2)
   106b4:	9af1                	andi	a3,a3,-4
   106b6:	fed76be3          	bltu	a4,a3,106ac <_malloc_r+0x36a>
   106ba:	6e08                	ld	a0,24(a2)
   106bc:	b745                	j	1065c <_malloc_r+0x31a>
   106be:	6414                	ld	a3,8(s0)
   106c0:	6c10                	ld	a2,24(s0)
   106c2:	9af1                	andi	a3,a3,-4
   106c4:	409688b3          	sub	a7,a3,s1
   106c8:	031e5763          	ble	a7,t3,106f6 <_malloc_r+0x3b4>
   106cc:	6818                	ld	a4,16(s0)
   106ce:	009407b3          	add	a5,s0,s1
   106d2:	0014e493          	ori	s1,s1,1
   106d6:	e404                	sd	s1,8(s0)
   106d8:	ef10                	sd	a2,24(a4)
   106da:	ea18                	sd	a4,16(a2)
   106dc:	02f9b423          	sd	a5,40(s3)
   106e0:	02f9b023          	sd	a5,32(s3)
   106e4:	0018e713          	ori	a4,a7,1
   106e8:	ef8c                	sd	a1,24(a5)
   106ea:	eb8c                	sd	a1,16(a5)
   106ec:	e798                	sd	a4,8(a5)
   106ee:	96a2                	add	a3,a3,s0
   106f0:	0116b023          	sd	a7,0(a3)
   106f4:	b9c5                	j	103e4 <_malloc_r+0xa2>
   106f6:	0008cb63          	bltz	a7,1070c <_malloc_r+0x3ca>
   106fa:	96a2                	add	a3,a3,s0
   106fc:	669c                	ld	a5,8(a3)
   106fe:	0017e793          	ori	a5,a5,1
   10702:	e69c                	sd	a5,8(a3)
   10704:	681c                	ld	a5,16(s0)
   10706:	ef90                	sd	a2,24(a5)
   10708:	ea1c                	sd	a5,16(a2)
   1070a:	b9e9                	j	103e4 <_malloc_r+0xa2>
   1070c:	8432                	mv	s0,a2
   1070e:	bd89                	j	10560 <_malloc_r+0x21e>
   10710:	ff070693          	addi	a3,a4,-16
   10714:	6318                	ld	a4,0(a4)
   10716:	37fd                	addiw	a5,a5,-1
   10718:	e4d70be3          	beq	a4,a3,1056e <_malloc_r+0x22c>
   1071c:	b5a5                	j	10584 <_malloc_r+0x242>
   1071e:	2791                	addiw	a5,a5,4
   10720:	0306                	slli	t1,t1,0x1
   10722:	0066f733          	and	a4,a3,t1
   10726:	df65                	beqz	a4,1071e <_malloc_r+0x3dc>
   10728:	b50d                	j	1054a <_malloc_r+0x208>
   1072a:	87aa                	mv	a5,a0
   1072c:	bfdd                	j	10722 <_malloc_r+0x3e0>
   1072e:	6785                	lui	a5,0x1
   10730:	07fd                	addi	a5,a5,31
   10732:	943e                	add	s0,s0,a5
   10734:	77fd                	lui	a5,0xfffff
   10736:	8c7d                	and	s0,s0,a5
   10738:	b561                	j	105c0 <_malloc_r+0x27e>
   1073a:	8381b603          	ld	a2,-1992(gp) # 1c9c0 <__malloc_sbrk_base>
   1073e:	56fd                	li	a3,-1
   10740:	08d61063          	bne	a2,a3,107c0 <_malloc_r+0x47e>
   10744:	8351bc23          	sd	s5,-1992(gp) # 1c9c0 <__malloc_sbrk_base>
   10748:	00faf593          	andi	a1,s5,15
   1074c:	c589                	beqz	a1,10756 <_malloc_r+0x414>
   1074e:	47c1                	li	a5,16
   10750:	40b785b3          	sub	a1,a5,a1
   10754:	9aae                	add	s5,s5,a1
   10756:	6785                	lui	a5,0x1
   10758:	95be                	add	a1,a1,a5
   1075a:	9456                	add	s0,s0,s5
   1075c:	17fd                	addi	a5,a5,-1
   1075e:	8c7d                	and	s0,s0,a5
   10760:	40858433          	sub	s0,a1,s0
   10764:	85a2                	mv	a1,s0
   10766:	854a                	mv	a0,s2
   10768:	1b4000ef          	jal	ra,1091c <_sbrk_r>
   1076c:	57fd                	li	a5,-1
   1076e:	00f51463          	bne	a0,a5,10776 <_malloc_r+0x434>
   10772:	8556                	mv	a0,s5
   10774:	4401                	li	s0,0
   10776:	000ba783          	lw	a5,0(s7)
   1077a:	41550533          	sub	a0,a0,s5
   1077e:	0159b823          	sd	s5,16(s3)
   10782:	9fa1                	addw	a5,a5,s0
   10784:	942a                	add	s0,s0,a0
   10786:	00146413          	ori	s0,s0,1
   1078a:	00fba023          	sw	a5,0(s7)
   1078e:	008ab423          	sd	s0,8(s5)
   10792:	e73b08e3          	beq	s6,s3,10602 <_malloc_r+0x2c0>
   10796:	477d                	li	a4,31
   10798:	03476a63          	bltu	a4,s4,107cc <_malloc_r+0x48a>
   1079c:	4785                	li	a5,1
   1079e:	00fab423          	sd	a5,8(s5)
   107a2:	0109b783          	ld	a5,16(s3)
   107a6:	6798                	ld	a4,8(a5)
   107a8:	9b71                	andi	a4,a4,-4
   107aa:	409707b3          	sub	a5,a4,s1
   107ae:	00976563          	bltu	a4,s1,107b8 <_malloc_r+0x476>
   107b2:	477d                	li	a4,31
   107b4:	04f74263          	blt	a4,a5,107f8 <_malloc_r+0x4b6>
   107b8:	854a                	mv	a0,s2
   107ba:	114000ef          	jal	ra,108ce <__malloc_unlock>
   107be:	b6c1                	j	1037e <_malloc_r+0x3c>
   107c0:	40fa87b3          	sub	a5,s5,a5
   107c4:	9fb9                	addw	a5,a5,a4
   107c6:	00fba023          	sw	a5,0(s7)
   107ca:	bfbd                	j	10748 <_malloc_r+0x406>
   107cc:	008b3783          	ld	a5,8(s6)
   107d0:	fe8a0413          	addi	s0,s4,-24
   107d4:	9841                	andi	s0,s0,-16
   107d6:	8b85                	andi	a5,a5,1
   107d8:	8fc1                	or	a5,a5,s0
   107da:	00fb3423          	sd	a5,8(s6)
   107de:	46a5                	li	a3,9
   107e0:	008b07b3          	add	a5,s6,s0
   107e4:	e794                	sd	a3,8(a5)
   107e6:	eb94                	sd	a3,16(a5)
   107e8:	e0877de3          	bleu	s0,a4,10602 <_malloc_r+0x2c0>
   107ec:	010b0593          	addi	a1,s6,16
   107f0:	854a                	mv	a0,s2
   107f2:	5dd010ef          	jal	ra,125ce <_free_r>
   107f6:	b531                	j	10602 <_malloc_r+0x2c0>
   107f8:	0109b403          	ld	s0,16(s3)
   107fc:	0014e713          	ori	a4,s1,1
   10800:	0017e793          	ori	a5,a5,1
   10804:	e418                	sd	a4,8(s0)
   10806:	94a2                	add	s1,s1,s0
   10808:	0099b823          	sd	s1,16(s3)
   1080c:	e49c                	sd	a5,8(s1)
   1080e:	bed9                	j	103e4 <_malloc_r+0xa2>
   10810:	02000793          	li	a5,32
   10814:	b6b7e2e3          	bltu	a5,a1,10378 <_malloc_r+0x36>
   10818:	0b4000ef          	jal	ra,108cc <__malloc_lock>
   1081c:	02000493          	li	s1,32
   10820:	b651                	j	103a4 <_malloc_r+0x62>

0000000000010822 <memset>:
   10822:	433d                	li	t1,15
   10824:	872a                	mv	a4,a0
   10826:	02c37163          	bleu	a2,t1,10848 <memset+0x26>
   1082a:	00f77793          	andi	a5,a4,15
   1082e:	e3c1                	bnez	a5,108ae <memset+0x8c>
   10830:	e1bd                	bnez	a1,10896 <memset+0x74>
   10832:	ff067693          	andi	a3,a2,-16
   10836:	8a3d                	andi	a2,a2,15
   10838:	96ba                	add	a3,a3,a4
   1083a:	e30c                	sd	a1,0(a4)
   1083c:	e70c                	sd	a1,8(a4)
   1083e:	0741                	addi	a4,a4,16
   10840:	fed76de3          	bltu	a4,a3,1083a <memset+0x18>
   10844:	e211                	bnez	a2,10848 <memset+0x26>
   10846:	8082                	ret
   10848:	40c306b3          	sub	a3,t1,a2
   1084c:	068a                	slli	a3,a3,0x2
   1084e:	00000297          	auipc	t0,0x0
   10852:	9696                	add	a3,a3,t0
   10854:	00a68067          	jr	10(a3)
   10858:	00b70723          	sb	a1,14(a4)
   1085c:	00b706a3          	sb	a1,13(a4)
   10860:	00b70623          	sb	a1,12(a4)
   10864:	00b705a3          	sb	a1,11(a4)
   10868:	00b70523          	sb	a1,10(a4)
   1086c:	00b704a3          	sb	a1,9(a4)
   10870:	00b70423          	sb	a1,8(a4)
   10874:	00b703a3          	sb	a1,7(a4)
   10878:	00b70323          	sb	a1,6(a4)
   1087c:	00b702a3          	sb	a1,5(a4)
   10880:	00b70223          	sb	a1,4(a4)
   10884:	00b701a3          	sb	a1,3(a4)
   10888:	00b70123          	sb	a1,2(a4)
   1088c:	00b700a3          	sb	a1,1(a4)
   10890:	00b70023          	sb	a1,0(a4)
   10894:	8082                	ret
   10896:	0ff5f593          	andi	a1,a1,255
   1089a:	00859693          	slli	a3,a1,0x8
   1089e:	8dd5                	or	a1,a1,a3
   108a0:	01059693          	slli	a3,a1,0x10
   108a4:	8dd5                	or	a1,a1,a3
   108a6:	02059693          	slli	a3,a1,0x20
   108aa:	8dd5                	or	a1,a1,a3
   108ac:	b759                	j	10832 <memset+0x10>
   108ae:	00279693          	slli	a3,a5,0x2
   108b2:	00000297          	auipc	t0,0x0
   108b6:	9696                	add	a3,a3,t0
   108b8:	8286                	mv	t0,ra
   108ba:	fa2680e7          	jalr	-94(a3)
   108be:	8096                	mv	ra,t0
   108c0:	17c1                	addi	a5,a5,-16
   108c2:	8f1d                	sub	a4,a4,a5
   108c4:	963e                	add	a2,a2,a5
   108c6:	f8c371e3          	bleu	a2,t1,10848 <memset+0x26>
   108ca:	b79d                	j	10830 <memset+0xe>

00000000000108cc <__malloc_lock>:
   108cc:	8082                	ret

00000000000108ce <__malloc_unlock>:
   108ce:	8082                	ret

00000000000108d0 <_printf_r>:
   108d0:	715d                	addi	sp,sp,-80
   108d2:	f032                	sd	a2,32(sp)
   108d4:	f436                	sd	a3,40(sp)
   108d6:	f83a                	sd	a4,48(sp)
   108d8:	fc3e                	sd	a5,56(sp)
   108da:	e0c2                	sd	a6,64(sp)
   108dc:	e4c6                	sd	a7,72(sp)
   108de:	862e                	mv	a2,a1
   108e0:	690c                	ld	a1,16(a0)
   108e2:	1014                	addi	a3,sp,32
   108e4:	ec06                	sd	ra,24(sp)
   108e6:	e436                	sd	a3,8(sp)
   108e8:	060000ef          	jal	ra,10948 <_vfprintf_r>
   108ec:	60e2                	ld	ra,24(sp)
   108ee:	6161                	addi	sp,sp,80
   108f0:	8082                	ret

00000000000108f2 <printf>:
   108f2:	711d                	addi	sp,sp,-96
   108f4:	e4be                	sd	a5,72(sp)
   108f6:	8301b783          	ld	a5,-2000(gp) # 1c9b8 <_impure_ptr>
   108fa:	f832                	sd	a2,48(sp)
   108fc:	fc36                	sd	a3,56(sp)
   108fe:	f42e                	sd	a1,40(sp)
   10900:	e0ba                	sd	a4,64(sp)
   10902:	e8c2                	sd	a6,80(sp)
   10904:	ecc6                	sd	a7,88(sp)
   10906:	6b8c                	ld	a1,16(a5)
   10908:	1034                	addi	a3,sp,40
   1090a:	862a                	mv	a2,a0
   1090c:	853e                	mv	a0,a5
   1090e:	ec06                	sd	ra,24(sp)
   10910:	e436                	sd	a3,8(sp)
   10912:	036000ef          	jal	ra,10948 <_vfprintf_r>
   10916:	60e2                	ld	ra,24(sp)
   10918:	6125                	addi	sp,sp,96
   1091a:	8082                	ret

000000000001091c <_sbrk_r>:
   1091c:	1101                	addi	sp,sp,-32
   1091e:	e822                	sd	s0,16(sp)
   10920:	e426                	sd	s1,8(sp)
   10922:	84aa                	mv	s1,a0
   10924:	852e                	mv	a0,a1
   10926:	ec06                	sd	ra,24(sp)
   10928:	8e01a023          	sw	zero,-1824(gp) # 1ca68 <errno>
   1092c:	421070ef          	jal	ra,1854c <_sbrk>
   10930:	57fd                	li	a5,-1
   10932:	00f51663          	bne	a0,a5,1093e <_sbrk_r+0x22>
   10936:	8e01a783          	lw	a5,-1824(gp) # 1ca68 <errno>
   1093a:	c391                	beqz	a5,1093e <_sbrk_r+0x22>
   1093c:	c09c                	sw	a5,0(s1)
   1093e:	60e2                	ld	ra,24(sp)
   10940:	6442                	ld	s0,16(sp)
   10942:	64a2                	ld	s1,8(sp)
   10944:	6105                	addi	sp,sp,32
   10946:	8082                	ret

0000000000010948 <_vfprintf_r>:
   10948:	d9010113          	addi	sp,sp,-624
   1094c:	26113423          	sd	ra,616(sp)
   10950:	24913c23          	sd	s1,600(sp)
   10954:	25213823          	sd	s2,592(sp)
   10958:	25313423          	sd	s3,584(sp)
   1095c:	23713423          	sd	s7,552(sp)
   10960:	892e                	mv	s2,a1
   10962:	84b2                	mv	s1,a2
   10964:	8bb6                	mv	s7,a3
   10966:	26813023          	sd	s0,608(sp)
   1096a:	25413023          	sd	s4,576(sp)
   1096e:	23513c23          	sd	s5,568(sp)
   10972:	23613823          	sd	s6,560(sp)
   10976:	23813023          	sd	s8,544(sp)
   1097a:	21913c23          	sd	s9,536(sp)
   1097e:	21a13823          	sd	s10,528(sp)
   10982:	21b13423          	sd	s11,520(sp)
   10986:	89aa                	mv	s3,a0
   10988:	5d6030ef          	jal	ra,13f5e <_localeconv_r>
   1098c:	611c                	ld	a5,0(a0)
   1098e:	853e                	mv	a0,a5
   10990:	e4be                	sd	a5,72(sp)
   10992:	588040ef          	jal	ra,14f1a <strlen>
   10996:	ec2a                	sd	a0,24(sp)
   10998:	f982                	sd	zero,240(sp)
   1099a:	fd82                	sd	zero,248(sp)
   1099c:	00098863          	beqz	s3,109ac <_vfprintf_r+0x64>
   109a0:	0509a783          	lw	a5,80(s3)
   109a4:	e781                	bnez	a5,109ac <_vfprintf_r+0x64>
   109a6:	854e                	mv	a0,s3
   109a8:	257010ef          	jal	ra,123fe <__sinit>
   109ac:	01091783          	lh	a5,16(s2)
   109b0:	03279713          	slli	a4,a5,0x32
   109b4:	00074d63          	bltz	a4,109ce <_vfprintf_r+0x86>
   109b8:	6689                	lui	a3,0x2
   109ba:	0ac92703          	lw	a4,172(s2)
   109be:	8fd5                	or	a5,a5,a3
   109c0:	00f91823          	sh	a5,16(s2)
   109c4:	77f9                	lui	a5,0xffffe
   109c6:	17fd                	addi	a5,a5,-1
   109c8:	8ff9                	and	a5,a5,a4
   109ca:	0af92623          	sw	a5,172(s2)
   109ce:	01095783          	lhu	a5,16(s2)
   109d2:	8ba1                	andi	a5,a5,8
   109d4:	c3bd                	beqz	a5,10a3a <_vfprintf_r+0xf2>
   109d6:	01893783          	ld	a5,24(s2)
   109da:	c3a5                	beqz	a5,10a3a <_vfprintf_r+0xf2>
   109dc:	01095783          	lhu	a5,16(s2)
   109e0:	4729                	li	a4,10
   109e2:	8be9                	andi	a5,a5,26
   109e4:	06e79363          	bne	a5,a4,10a4a <_vfprintf_r+0x102>
   109e8:	01291783          	lh	a5,18(s2)
   109ec:	0407cf63          	bltz	a5,10a4a <_vfprintf_r+0x102>
   109f0:	86de                	mv	a3,s7
   109f2:	8626                	mv	a2,s1
   109f4:	85ca                	mv	a1,s2
   109f6:	854e                	mv	a0,s3
   109f8:	512010ef          	jal	ra,11f0a <__sbprintf>
   109fc:	f42a                	sd	a0,40(sp)
   109fe:	26813083          	ld	ra,616(sp)
   10a02:	26013403          	ld	s0,608(sp)
   10a06:	7522                	ld	a0,40(sp)
   10a08:	25813483          	ld	s1,600(sp)
   10a0c:	25013903          	ld	s2,592(sp)
   10a10:	24813983          	ld	s3,584(sp)
   10a14:	24013a03          	ld	s4,576(sp)
   10a18:	23813a83          	ld	s5,568(sp)
   10a1c:	23013b03          	ld	s6,560(sp)
   10a20:	22813b83          	ld	s7,552(sp)
   10a24:	22013c03          	ld	s8,544(sp)
   10a28:	21813c83          	ld	s9,536(sp)
   10a2c:	21013d03          	ld	s10,528(sp)
   10a30:	20813d83          	ld	s11,520(sp)
   10a34:	27010113          	addi	sp,sp,624
   10a38:	8082                	ret
   10a3a:	85ca                	mv	a1,s2
   10a3c:	854e                	mv	a0,s3
   10a3e:	55a010ef          	jal	ra,11f98 <__swsetup_r>
   10a42:	dd49                	beqz	a0,109dc <_vfprintf_r+0x94>
   10a44:	57fd                	li	a5,-1
   10a46:	f43e                	sd	a5,40(sp)
   10a48:	bf5d                	j	109fe <_vfprintf_r+0xb6>
   10a4a:	67e9                	lui	a5,0x1a
   10a4c:	b7878793          	addi	a5,a5,-1160 # 19b78 <__clzdi2+0x78>
   10a50:	ed3e                	sd	a5,152(sp)
   10a52:	0001a7b7          	lui	a5,0x1a
   10a56:	d187b783          	ld	a5,-744(a5) # 19d18 <zeroes.4441+0x20>
   10a5a:	18010a93          	addi	s5,sp,384
   10a5e:	e256                	sd	s5,256(sp)
   10a60:	f13e                	sd	a5,160(sp)
   10a62:	0001a7b7          	lui	a5,0x1a
   10a66:	d287b783          	ld	a5,-728(a5) # 19d28 <zeroes.4441+0x30>
   10a6a:	ea02                	sd	zero,272(sp)
   10a6c:	10012423          	sw	zero,264(sp)
   10a70:	f53e                	sd	a5,168(sp)
   10a72:	0001a7b7          	lui	a5,0x1a
   10a76:	d387b783          	ld	a5,-712(a5) # 19d38 <zeroes.4441+0x40>
   10a7a:	4a01                	li	s4,0
   10a7c:	8cd6                	mv	s9,s5
   10a7e:	f082                	sd	zero,96(sp)
   10a80:	ec82                	sd	zero,88(sp)
   10a82:	e002                	sd	zero,0(sp)
   10a84:	e082                	sd	zero,64(sp)
   10a86:	e882                	sd	zero,80(sp)
   10a88:	f402                	sd	zero,40(sp)
   10a8a:	e93e                	sd	a5,144(sp)
   10a8c:	8426                	mv	s0,s1
   10a8e:	02500713          	li	a4,37
   10a92:	00044783          	lbu	a5,0(s0)
   10a96:	c399                	beqz	a5,10a9c <_vfprintf_r+0x154>
   10a98:	08e79663          	bne	a5,a4,10b24 <_vfprintf_r+0x1dc>
   10a9c:	40940b3b          	subw	s6,s0,s1
   10aa0:	020b0f63          	beqz	s6,10ade <_vfprintf_r+0x196>
   10aa4:	67d2                	ld	a5,272(sp)
   10aa6:	009cb023          	sd	s1,0(s9)
   10aaa:	016cb423          	sd	s6,8(s9)
   10aae:	97da                	add	a5,a5,s6
   10ab0:	ea3e                	sd	a5,272(sp)
   10ab2:	10812783          	lw	a5,264(sp)
   10ab6:	0cc1                	addi	s9,s9,16
   10ab8:	0017871b          	addiw	a4,a5,1
   10abc:	10e12423          	sw	a4,264(sp)
   10ac0:	479d                	li	a5,7
   10ac2:	00e7da63          	ble	a4,a5,10ad6 <_vfprintf_r+0x18e>
   10ac6:	0210                	addi	a2,sp,256
   10ac8:	85ca                	mv	a1,s2
   10aca:	854e                	mv	a0,s3
   10acc:	209050ef          	jal	ra,164d4 <__sprint_r>
   10ad0:	54051363          	bnez	a0,11016 <_vfprintf_r+0x6ce>
   10ad4:	8cd6                	mv	s9,s5
   10ad6:	57a2                	lw	a5,40(sp)
   10ad8:	016787bb          	addw	a5,a5,s6
   10adc:	f43e                	sd	a5,40(sp)
   10ade:	00044783          	lbu	a5,0(s0)
   10ae2:	e399                	bnez	a5,10ae8 <_vfprintf_r+0x1a0>
   10ae4:	4040106f          	j	11ee8 <_vfprintf_r+0x15a0>
   10ae8:	00140793          	addi	a5,s0,1
   10aec:	0c0107a3          	sb	zero,207(sp)
   10af0:	5dfd                	li	s11,-1
   10af2:	f002                	sd	zero,32(sp)
   10af4:	4401                	li	s0,0
   10af6:	05a00d13          	li	s10,90
   10afa:	4c29                	li	s8,10
   10afc:	0007cb03          	lbu	s6,0(a5)
   10b00:	00178713          	addi	a4,a5,1
   10b04:	e83a                	sd	a4,16(sp)
   10b06:	46a5                	li	a3,9
   10b08:	02a00613          	li	a2,42
   10b0c:	fe0b079b          	addiw	a5,s6,-32
   10b10:	0007871b          	sext.w	a4,a5
   10b14:	3aed68e3          	bltu	s10,a4,116c4 <_vfprintf_r+0xd7c>
   10b18:	676a                	ld	a4,152(sp)
   10b1a:	1782                	slli	a5,a5,0x20
   10b1c:	83f9                	srli	a5,a5,0x1e
   10b1e:	97ba                	add	a5,a5,a4
   10b20:	439c                	lw	a5,0(a5)
   10b22:	8782                	jr	a5
   10b24:	0405                	addi	s0,s0,1
   10b26:	b7b5                	j	10a92 <_vfprintf_r+0x14a>
   10b28:	0001a7b7          	lui	a5,0x1a
   10b2c:	d7878793          	addi	a5,a5,-648 # 19d78 <zeroes.4441+0x80>
   10b30:	f0be                	sd	a5,96(sp)
   10b32:	008b8793          	addi	a5,s7,8
   10b36:	f83e                	sd	a5,48(sp)
   10b38:	02047793          	andi	a5,s0,32
   10b3c:	24078de3          	beqz	a5,11596 <_vfprintf_r+0xc4e>
   10b40:	000bbb83          	ld	s7,0(s7)
   10b44:	00147793          	andi	a5,s0,1
   10b48:	cf81                	beqz	a5,10b60 <_vfprintf_r+0x218>
   10b4a:	000b8b63          	beqz	s7,10b60 <_vfprintf_r+0x218>
   10b4e:	03000793          	li	a5,48
   10b52:	00246413          	ori	s0,s0,2
   10b56:	0cf10823          	sb	a5,208(sp)
   10b5a:	0d6108a3          	sb	s6,209(sp)
   10b5e:	2401                	sext.w	s0,s0
   10b60:	bff47413          	andi	s0,s0,-1025
   10b64:	2401                	sext.w	s0,s0
   10b66:	4789                	li	a5,2
   10b68:	12b0006f          	j	11492 <_vfprintf_r+0xb4a>
   10b6c:	854e                	mv	a0,s3
   10b6e:	3f0030ef          	jal	ra,13f5e <_localeconv_r>
   10b72:	651c                	ld	a5,8(a0)
   10b74:	853e                	mv	a0,a5
   10b76:	e8be                	sd	a5,80(sp)
   10b78:	3a2040ef          	jal	ra,14f1a <strlen>
   10b7c:	e0aa                	sd	a0,64(sp)
   10b7e:	854e                	mv	a0,s3
   10b80:	3de030ef          	jal	ra,13f5e <_localeconv_r>
   10b84:	691c                	ld	a5,16(a0)
   10b86:	e03e                	sd	a5,0(sp)
   10b88:	6786                	ld	a5,64(sp)
   10b8a:	c38d                	beqz	a5,10bac <_vfprintf_r+0x264>
   10b8c:	6782                	ld	a5,0(sp)
   10b8e:	cf99                	beqz	a5,10bac <_vfprintf_r+0x264>
   10b90:	0007c783          	lbu	a5,0(a5)
   10b94:	cf81                	beqz	a5,10bac <_vfprintf_r+0x264>
   10b96:	40046413          	ori	s0,s0,1024
   10b9a:	2401                	sext.w	s0,s0
   10b9c:	a801                	j	10bac <_vfprintf_r+0x264>
   10b9e:	0cf14783          	lbu	a5,207(sp)
   10ba2:	e789                	bnez	a5,10bac <_vfprintf_r+0x264>
   10ba4:	02000793          	li	a5,32
   10ba8:	0cf107a3          	sb	a5,207(sp)
   10bac:	67c2                	ld	a5,16(sp)
   10bae:	b7b9                	j	10afc <_vfprintf_r+0x1b4>
   10bb0:	00146413          	ori	s0,s0,1
   10bb4:	b7dd                	j	10b9a <_vfprintf_r+0x252>
   10bb6:	000ba783          	lw	a5,0(s7)
   10bba:	0ba1                	addi	s7,s7,8
   10bbc:	f03e                	sd	a5,32(sp)
   10bbe:	fe07d7e3          	bgez	a5,10bac <_vfprintf_r+0x264>
   10bc2:	5782                	lw	a5,32(sp)
   10bc4:	40f007bb          	negw	a5,a5
   10bc8:	f03e                	sd	a5,32(sp)
   10bca:	00446413          	ori	s0,s0,4
   10bce:	b7f1                	j	10b9a <_vfprintf_r+0x252>
   10bd0:	02b00793          	li	a5,43
   10bd4:	bfd1                	j	10ba8 <_vfprintf_r+0x260>
   10bd6:	6742                	ld	a4,16(sp)
   10bd8:	67c2                	ld	a5,16(sp)
   10bda:	00074b03          	lbu	s6,0(a4)
   10bde:	0785                	addi	a5,a5,1
   10be0:	02cb1c63          	bne	s6,a2,10c18 <_vfprintf_r+0x2d0>
   10be4:	000bae03          	lw	t3,0(s7)
   10be8:	008b8713          	addi	a4,s7,8
   10bec:	000e5363          	bgez	t3,10bf2 <_vfprintf_r+0x2aa>
   10bf0:	5e7d                	li	t3,-1
   10bf2:	000e0d9b          	sext.w	s11,t3
   10bf6:	8bba                	mv	s7,a4
   10bf8:	e83e                	sd	a5,16(sp)
   10bfa:	bf4d                	j	10bac <_vfprintf_r+0x264>
   10bfc:	03bc0e3b          	mulw	t3,s8,s11
   10c00:	0785                	addi	a5,a5,1
   10c02:	fff7cb03          	lbu	s6,-1(a5)
   10c06:	00ee0dbb          	addw	s11,t3,a4
   10c0a:	fd0b059b          	addiw	a1,s6,-48
   10c0e:	872e                	mv	a4,a1
   10c10:	feb6f6e3          	bleu	a1,a3,10bfc <_vfprintf_r+0x2b4>
   10c14:	e83e                	sd	a5,16(sp)
   10c16:	bddd                	j	10b0c <_vfprintf_r+0x1c4>
   10c18:	4d81                	li	s11,0
   10c1a:	bfc5                	j	10c0a <_vfprintf_r+0x2c2>
   10c1c:	08046413          	ori	s0,s0,128
   10c20:	bfad                	j	10b9a <_vfprintf_r+0x252>
   10c22:	67c2                	ld	a5,16(sp)
   10c24:	f002                	sd	zero,32(sp)
   10c26:	5702                	lw	a4,32(sp)
   10c28:	fd0b0b1b          	addiw	s6,s6,-48
   10c2c:	0785                	addi	a5,a5,1
   10c2e:	02ec073b          	mulw	a4,s8,a4
   10c32:	00eb073b          	addw	a4,s6,a4
   10c36:	fff7cb03          	lbu	s6,-1(a5)
   10c3a:	f03a                	sd	a4,32(sp)
   10c3c:	fd0b071b          	addiw	a4,s6,-48
   10c40:	fee6f3e3          	bleu	a4,a3,10c26 <_vfprintf_r+0x2de>
   10c44:	bfc1                	j	10c14 <_vfprintf_r+0x2cc>
   10c46:	00846413          	ori	s0,s0,8
   10c4a:	bf81                	j	10b9a <_vfprintf_r+0x252>
   10c4c:	67c2                	ld	a5,16(sp)
   10c4e:	0007c703          	lbu	a4,0(a5)
   10c52:	06800793          	li	a5,104
   10c56:	00f71863          	bne	a4,a5,10c66 <_vfprintf_r+0x31e>
   10c5a:	67c2                	ld	a5,16(sp)
   10c5c:	20046413          	ori	s0,s0,512
   10c60:	0785                	addi	a5,a5,1
   10c62:	e83e                	sd	a5,16(sp)
   10c64:	bf1d                	j	10b9a <_vfprintf_r+0x252>
   10c66:	04046413          	ori	s0,s0,64
   10c6a:	bf05                	j	10b9a <_vfprintf_r+0x252>
   10c6c:	67c2                	ld	a5,16(sp)
   10c6e:	0007c703          	lbu	a4,0(a5)
   10c72:	06c00793          	li	a5,108
   10c76:	00f71863          	bne	a4,a5,10c86 <_vfprintf_r+0x33e>
   10c7a:	67c2                	ld	a5,16(sp)
   10c7c:	0785                	addi	a5,a5,1
   10c7e:	e83e                	sd	a5,16(sp)
   10c80:	02046413          	ori	s0,s0,32
   10c84:	bf19                	j	10b9a <_vfprintf_r+0x252>
   10c86:	01046413          	ori	s0,s0,16
   10c8a:	bf01                	j	10b9a <_vfprintf_r+0x252>
   10c8c:	008b8793          	addi	a5,s7,8
   10c90:	f83e                	sd	a5,48(sp)
   10c92:	000ba783          	lw	a5,0(s7)
   10c96:	0c0107a3          	sb	zero,207(sp)
   10c9a:	10f10c23          	sb	a5,280(sp)
   10c9e:	4b81                	li	s7,0
   10ca0:	4d85                	li	s11,1
   10ca2:	4701                	li	a4,0
   10ca4:	e402                	sd	zero,8(sp)
   10ca6:	4c01                	li	s8,0
   10ca8:	4d01                	li	s10,0
   10caa:	0a24                	addi	s1,sp,280
   10cac:	86ba                	mv	a3,a4
   10cae:	01b75363          	ble	s11,a4,10cb4 <_vfprintf_r+0x36c>
   10cb2:	86ee                	mv	a3,s11
   10cb4:	0cf14603          	lbu	a2,207(sp)
   10cb8:	0006879b          	sext.w	a5,a3
   10cbc:	fc3e                	sd	a5,56(sp)
   10cbe:	c601                	beqz	a2,10cc6 <_vfprintf_r+0x37e>
   10cc0:	0016879b          	addiw	a5,a3,1
   10cc4:	fc3e                	sd	a5,56(sp)
   10cc6:	00247693          	andi	a3,s0,2
   10cca:	0006879b          	sext.w	a5,a3
   10cce:	f4be                	sd	a5,104(sp)
   10cd0:	c781                	beqz	a5,10cd8 <_vfprintf_r+0x390>
   10cd2:	57e2                	lw	a5,56(sp)
   10cd4:	2789                	addiw	a5,a5,2
   10cd6:	fc3e                	sd	a5,56(sp)
   10cd8:	08447793          	andi	a5,s0,132
   10cdc:	f8be                	sd	a5,112(sp)
   10cde:	efa9                	bnez	a5,10d38 <_vfprintf_r+0x3f0>
   10ce0:	5782                	lw	a5,32(sp)
   10ce2:	56e2                	lw	a3,56(sp)
   10ce4:	40d786bb          	subw	a3,a5,a3
   10ce8:	04d05863          	blez	a3,10d38 <_vfprintf_r+0x3f0>
   10cec:	6869                	lui	a6,0x1a
   10cee:	48c1                	li	a7,16
   10cf0:	ce880813          	addi	a6,a6,-792 # 19ce8 <blanks.4440>
   10cf4:	4e9d                	li	t4,7
   10cf6:	10812583          	lw	a1,264(sp)
   10cfa:	010cb023          	sd	a6,0(s9)
   10cfe:	6652                	ld	a2,272(sp)
   10d00:	0015851b          	addiw	a0,a1,1
   10d04:	85aa                	mv	a1,a0
   10d06:	010c8f13          	addi	t5,s9,16
   10d0a:	1cd8c6e3          	blt	a7,a3,116d6 <_vfprintf_r+0xd8e>
   10d0e:	00dcb423          	sd	a3,8(s9)
   10d12:	96b2                	add	a3,a3,a2
   10d14:	ea36                	sd	a3,272(sp)
   10d16:	10a12423          	sw	a0,264(sp)
   10d1a:	469d                	li	a3,7
   10d1c:	8cfa                	mv	s9,t5
   10d1e:	00a6dd63          	ble	a0,a3,10d38 <_vfprintf_r+0x3f0>
   10d22:	0210                	addi	a2,sp,256
   10d24:	85ca                	mv	a1,s2
   10d26:	854e                	mv	a0,s3
   10d28:	fcba                	sd	a4,120(sp)
   10d2a:	7aa050ef          	jal	ra,164d4 <__sprint_r>
   10d2e:	c119                	beqz	a0,10d34 <_vfprintf_r+0x3ec>
   10d30:	17a0106f          	j	11eaa <_vfprintf_r+0x1562>
   10d34:	7766                	ld	a4,120(sp)
   10d36:	8cd6                	mv	s9,s5
   10d38:	0cf14683          	lbu	a3,207(sp)
   10d3c:	c2a1                	beqz	a3,10d7c <_vfprintf_r+0x434>
   10d3e:	0cf10693          	addi	a3,sp,207
   10d42:	00dcb023          	sd	a3,0(s9)
   10d46:	4685                	li	a3,1
   10d48:	00dcb423          	sd	a3,8(s9)
   10d4c:	66d2                	ld	a3,272(sp)
   10d4e:	0cc1                	addi	s9,s9,16
   10d50:	0685                	addi	a3,a3,1
   10d52:	ea36                	sd	a3,272(sp)
   10d54:	10812683          	lw	a3,264(sp)
   10d58:	0016861b          	addiw	a2,a3,1
   10d5c:	10c12423          	sw	a2,264(sp)
   10d60:	469d                	li	a3,7
   10d62:	00c6dd63          	ble	a2,a3,10d7c <_vfprintf_r+0x434>
   10d66:	0210                	addi	a2,sp,256
   10d68:	85ca                	mv	a1,s2
   10d6a:	854e                	mv	a0,s3
   10d6c:	fcba                	sd	a4,120(sp)
   10d6e:	766050ef          	jal	ra,164d4 <__sprint_r>
   10d72:	c119                	beqz	a0,10d78 <_vfprintf_r+0x430>
   10d74:	1360106f          	j	11eaa <_vfprintf_r+0x1562>
   10d78:	7766                	ld	a4,120(sp)
   10d7a:	8cd6                	mv	s9,s5
   10d7c:	77a6                	ld	a5,104(sp)
   10d7e:	cf9d                	beqz	a5,10dbc <_vfprintf_r+0x474>
   10d80:	0994                	addi	a3,sp,208
   10d82:	00dcb023          	sd	a3,0(s9)
   10d86:	4689                	li	a3,2
   10d88:	00dcb423          	sd	a3,8(s9)
   10d8c:	66d2                	ld	a3,272(sp)
   10d8e:	0cc1                	addi	s9,s9,16
   10d90:	0689                	addi	a3,a3,2
   10d92:	ea36                	sd	a3,272(sp)
   10d94:	10812683          	lw	a3,264(sp)
   10d98:	0016861b          	addiw	a2,a3,1
   10d9c:	10c12423          	sw	a2,264(sp)
   10da0:	469d                	li	a3,7
   10da2:	00c6dd63          	ble	a2,a3,10dbc <_vfprintf_r+0x474>
   10da6:	0210                	addi	a2,sp,256
   10da8:	85ca                	mv	a1,s2
   10daa:	854e                	mv	a0,s3
   10dac:	f4ba                	sd	a4,104(sp)
   10dae:	726050ef          	jal	ra,164d4 <__sprint_r>
   10db2:	c119                	beqz	a0,10db8 <_vfprintf_r+0x470>
   10db4:	0f60106f          	j	11eaa <_vfprintf_r+0x1562>
   10db8:	7726                	ld	a4,104(sp)
   10dba:	8cd6                	mv	s9,s5
   10dbc:	77c6                	ld	a5,112(sp)
   10dbe:	08000693          	li	a3,128
   10dc2:	04d79e63          	bne	a5,a3,10e1e <_vfprintf_r+0x4d6>
   10dc6:	5782                	lw	a5,32(sp)
   10dc8:	56e2                	lw	a3,56(sp)
   10dca:	40d786bb          	subw	a3,a5,a3
   10dce:	04d05863          	blez	a3,10e1e <_vfprintf_r+0x4d6>
   10dd2:	6869                	lui	a6,0x1a
   10dd4:	48c1                	li	a7,16
   10dd6:	cf880813          	addi	a6,a6,-776 # 19cf8 <zeroes.4441>
   10dda:	4e9d                	li	t4,7
   10ddc:	10812583          	lw	a1,264(sp)
   10de0:	010cb023          	sd	a6,0(s9)
   10de4:	6652                	ld	a2,272(sp)
   10de6:	0015851b          	addiw	a0,a1,1
   10dea:	85aa                	mv	a1,a0
   10dec:	010c8f13          	addi	t5,s9,16
   10df0:	12d8c1e3          	blt	a7,a3,11712 <_vfprintf_r+0xdca>
   10df4:	00dcb423          	sd	a3,8(s9)
   10df8:	96b2                	add	a3,a3,a2
   10dfa:	ea36                	sd	a3,272(sp)
   10dfc:	10a12423          	sw	a0,264(sp)
   10e00:	469d                	li	a3,7
   10e02:	8cfa                	mv	s9,t5
   10e04:	00a6dd63          	ble	a0,a3,10e1e <_vfprintf_r+0x4d6>
   10e08:	0210                	addi	a2,sp,256
   10e0a:	85ca                	mv	a1,s2
   10e0c:	854e                	mv	a0,s3
   10e0e:	f4ba                	sd	a4,104(sp)
   10e10:	6c4050ef          	jal	ra,164d4 <__sprint_r>
   10e14:	c119                	beqz	a0,10e1a <_vfprintf_r+0x4d2>
   10e16:	0940106f          	j	11eaa <_vfprintf_r+0x1562>
   10e1a:	7726                	ld	a4,104(sp)
   10e1c:	8cd6                	mv	s9,s5
   10e1e:	41b7073b          	subw	a4,a4,s11
   10e22:	04e05663          	blez	a4,10e6e <_vfprintf_r+0x526>
   10e26:	6869                	lui	a6,0x1a
   10e28:	48c1                	li	a7,16
   10e2a:	cf880813          	addi	a6,a6,-776 # 19cf8 <zeroes.4441>
   10e2e:	4e9d                	li	t4,7
   10e30:	10812603          	lw	a2,264(sp)
   10e34:	010cb023          	sd	a6,0(s9)
   10e38:	66d2                	ld	a3,272(sp)
   10e3a:	0016059b          	addiw	a1,a2,1
   10e3e:	862e                	mv	a2,a1
   10e40:	010c8513          	addi	a0,s9,16
   10e44:	10e8c5e3          	blt	a7,a4,1174e <_vfprintf_r+0xe06>
   10e48:	00ecb423          	sd	a4,8(s9)
   10e4c:	9736                	add	a4,a4,a3
   10e4e:	ea3a                	sd	a4,272(sp)
   10e50:	10b12423          	sw	a1,264(sp)
   10e54:	471d                	li	a4,7
   10e56:	8caa                	mv	s9,a0
   10e58:	00b75b63          	ble	a1,a4,10e6e <_vfprintf_r+0x526>
   10e5c:	0210                	addi	a2,sp,256
   10e5e:	85ca                	mv	a1,s2
   10e60:	854e                	mv	a0,s3
   10e62:	672050ef          	jal	ra,164d4 <__sprint_r>
   10e66:	c119                	beqz	a0,10e6c <_vfprintf_r+0x524>
   10e68:	0420106f          	j	11eaa <_vfprintf_r+0x1562>
   10e6c:	8cd6                	mv	s9,s5
   10e6e:	10047693          	andi	a3,s0,256
   10e72:	6752                	ld	a4,272(sp)
   10e74:	100699e3          	bnez	a3,11786 <_vfprintf_r+0xe3e>
   10e78:	10812783          	lw	a5,264(sp)
   10e7c:	00ed8e33          	add	t3,s11,a4
   10e80:	009cb023          	sd	s1,0(s9)
   10e84:	0017871b          	addiw	a4,a5,1
   10e88:	01bcb423          	sd	s11,8(s9)
   10e8c:	ea72                	sd	t3,272(sp)
   10e8e:	10e12423          	sw	a4,264(sp)
   10e92:	479d                	li	a5,7
   10e94:	0cc1                	addi	s9,s9,16
   10e96:	1ce7d4e3          	ble	a4,a5,1185e <_vfprintf_r+0xf16>
   10e9a:	0210                	addi	a2,sp,256
   10e9c:	85ca                	mv	a1,s2
   10e9e:	854e                	mv	a0,s3
   10ea0:	634050ef          	jal	ra,164d4 <__sprint_r>
   10ea4:	c119                	beqz	a0,10eaa <_vfprintf_r+0x562>
   10ea6:	0040106f          	j	11eaa <_vfprintf_r+0x1562>
   10eaa:	8cd6                	mv	s9,s5
   10eac:	1b30006f          	j	1185e <_vfprintf_r+0xf16>
   10eb0:	01046413          	ori	s0,s0,16
   10eb4:	2401                	sext.w	s0,s0
   10eb6:	008b8793          	addi	a5,s7,8
   10eba:	f83e                	sd	a5,48(sp)
   10ebc:	02047793          	andi	a5,s0,32
   10ec0:	cb85                	beqz	a5,10ef0 <_vfprintf_r+0x5a8>
   10ec2:	000bbb83          	ld	s7,0(s7)
   10ec6:	000bd863          	bgez	s7,10ed6 <_vfprintf_r+0x58e>
   10eca:	02d00793          	li	a5,45
   10ece:	41700bb3          	neg	s7,s7
   10ed2:	0cf107a3          	sb	a5,207(sp)
   10ed6:	57fd                	li	a5,-1
   10ed8:	6efd9963          	bne	s11,a5,115ca <_vfprintf_r+0xc82>
   10edc:	47a5                	li	a5,9
   10ede:	7577e463          	bltu	a5,s7,11626 <_vfprintf_r+0xcde>
   10ee2:	030b8b9b          	addiw	s7,s7,48
   10ee6:	17710da3          	sb	s7,379(sp)
   10eea:	17b10493          	addi	s1,sp,379
   10eee:	af39                	j	1160c <_vfprintf_r+0xcc4>
   10ef0:	01047793          	andi	a5,s0,16
   10ef4:	f7f9                	bnez	a5,10ec2 <_vfprintf_r+0x57a>
   10ef6:	04047793          	andi	a5,s0,64
   10efa:	c781                	beqz	a5,10f02 <_vfprintf_r+0x5ba>
   10efc:	000b9b83          	lh	s7,0(s7)
   10f00:	b7d9                	j	10ec6 <_vfprintf_r+0x57e>
   10f02:	20047793          	andi	a5,s0,512
   10f06:	c781                	beqz	a5,10f0e <_vfprintf_r+0x5c6>
   10f08:	000b8b83          	lb	s7,0(s7)
   10f0c:	bf6d                	j	10ec6 <_vfprintf_r+0x57e>
   10f0e:	000bab83          	lw	s7,0(s7)
   10f12:	bf55                	j	10ec6 <_vfprintf_r+0x57e>
   10f14:	00847793          	andi	a5,s0,8
   10f18:	cfb9                	beqz	a5,10f76 <_vfprintf_r+0x62e>
   10f1a:	0bbd                	addi	s7,s7,15
   10f1c:	ff0bfb93          	andi	s7,s7,-16
   10f20:	010b8793          	addi	a5,s7,16
   10f24:	f83e                	sd	a5,48(sp)
   10f26:	000bb783          	ld	a5,0(s7)
   10f2a:	f9be                	sd	a5,240(sp)
   10f2c:	008bb783          	ld	a5,8(s7)
   10f30:	fdbe                	sd	a5,248(sp)
   10f32:	1988                	addi	a0,sp,240
   10f34:	7ef020ef          	jal	ra,13f22 <_ldcheck>
   10f38:	cdaa                	sw	a0,216(sp)
   10f3a:	4789                	li	a5,2
   10f3c:	04f51c63          	bne	a0,a5,10f94 <_vfprintf_r+0x64c>
   10f40:	754e                	ld	a0,240(sp)
   10f42:	75ee                	ld	a1,248(sp)
   10f44:	4601                	li	a2,0
   10f46:	4681                	li	a3,0
   10f48:	069070ef          	jal	ra,187b0 <__letf2>
   10f4c:	00055663          	bgez	a0,10f58 <_vfprintf_r+0x610>
   10f50:	02d00793          	li	a5,45
   10f54:	0cf107a3          	sb	a5,207(sp)
   10f58:	04700793          	li	a5,71
   10f5c:	0367c763          	blt	a5,s6,10f8a <_vfprintf_r+0x642>
   10f60:	0001a4b7          	lui	s1,0x1a
   10f64:	d4048493          	addi	s1,s1,-704 # 19d40 <zeroes.4441+0x48>
   10f68:	f7f47413          	andi	s0,s0,-129
   10f6c:	2401                	sext.w	s0,s0
   10f6e:	4b81                	li	s7,0
   10f70:	4d8d                	li	s11,3
   10f72:	4701                	li	a4,0
   10f74:	a555                	j	11618 <_vfprintf_r+0xcd0>
   10f76:	000bb507          	fld	fa0,0(s7)
   10f7a:	008b8793          	addi	a5,s7,8
   10f7e:	f83e                	sd	a5,48(sp)
   10f80:	05b080ef          	jal	ra,197da <__extenddftf2>
   10f84:	f9aa                	sd	a0,240(sp)
   10f86:	fdae                	sd	a1,248(sp)
   10f88:	b76d                	j	10f32 <_vfprintf_r+0x5ea>
   10f8a:	0001a4b7          	lui	s1,0x1a
   10f8e:	d4848493          	addi	s1,s1,-696 # 19d48 <zeroes.4441+0x50>
   10f92:	bfd9                	j	10f68 <_vfprintf_r+0x620>
   10f94:	4785                	li	a5,1
   10f96:	02f51763          	bne	a0,a5,10fc4 <_vfprintf_r+0x67c>
   10f9a:	77ee                	ld	a5,248(sp)
   10f9c:	0007d663          	bgez	a5,10fa8 <_vfprintf_r+0x660>
   10fa0:	02d00793          	li	a5,45
   10fa4:	0cf107a3          	sb	a5,207(sp)
   10fa8:	04700793          	li	a5,71
   10fac:	0167c763          	blt	a5,s6,10fba <_vfprintf_r+0x672>
   10fb0:	0001a4b7          	lui	s1,0x1a
   10fb4:	d5048493          	addi	s1,s1,-688 # 19d50 <zeroes.4441+0x58>
   10fb8:	bf45                	j	10f68 <_vfprintf_r+0x620>
   10fba:	0001a4b7          	lui	s1,0x1a
   10fbe:	d5848493          	addi	s1,s1,-680 # 19d58 <zeroes.4441+0x60>
   10fc2:	b75d                	j	10f68 <_vfprintf_r+0x620>
   10fc4:	fdfb7c13          	andi	s8,s6,-33
   10fc8:	04100793          	li	a5,65
   10fcc:	04fc1c63          	bne	s8,a5,11024 <_vfprintf_r+0x6dc>
   10fd0:	03000793          	li	a5,48
   10fd4:	0cf10823          	sb	a5,208(sp)
   10fd8:	06100713          	li	a4,97
   10fdc:	05800793          	li	a5,88
   10fe0:	00eb1463          	bne	s6,a4,10fe8 <_vfprintf_r+0x6a0>
   10fe4:	07800793          	li	a5,120
   10fe8:	0cf108a3          	sb	a5,209(sp)
   10fec:	00246413          	ori	s0,s0,2
   10ff0:	06300793          	li	a5,99
   10ff4:	2401                	sext.w	s0,s0
   10ff6:	15b7db63          	ble	s11,a5,1114c <_vfprintf_r+0x804>
   10ffa:	001d859b          	addiw	a1,s11,1
   10ffe:	854e                	mv	a0,s3
   11000:	b42ff0ef          	jal	ra,10342 <_malloc_r>
   11004:	84aa                	mv	s1,a0
   11006:	14051663          	bnez	a0,11152 <_vfprintf_r+0x80a>
   1100a:	01095783          	lhu	a5,16(s2)
   1100e:	0407e793          	ori	a5,a5,64
   11012:	00f91823          	sh	a5,16(s2)
   11016:	01095783          	lhu	a5,16(s2)
   1101a:	0407f793          	andi	a5,a5,64
   1101e:	9e0780e3          	beqz	a5,109fe <_vfprintf_r+0xb6>
   11022:	b40d                	j	10a44 <_vfprintf_r+0xfc>
   11024:	57fd                	li	a5,-1
   11026:	12fd8863          	beq	s11,a5,11156 <_vfprintf_r+0x80e>
   1102a:	04700793          	li	a5,71
   1102e:	4b81                	li	s7,0
   11030:	00fc1463          	bne	s8,a5,11038 <_vfprintf_r+0x6f0>
   11034:	120d8463          	beqz	s11,1115c <_vfprintf_r+0x814>
   11038:	10046793          	ori	a5,s0,256
   1103c:	7a6e                	ld	s4,248(sp)
   1103e:	2781                	sext.w	a5,a5
   11040:	fc3e                	sd	a5,56(sp)
   11042:	fc82                	sd	zero,120(sp)
   11044:	7ece                	ld	t4,240(sp)
   11046:	000a5963          	bgez	s4,11058 <_vfprintf_r+0x710>
   1104a:	57fd                	li	a5,-1
   1104c:	17fe                	slli	a5,a5,0x3f
   1104e:	00fa4a33          	xor	s4,s4,a5
   11052:	02d00793          	li	a5,45
   11056:	fcbe                	sd	a5,120(sp)
   11058:	04100793          	li	a5,65
   1105c:	22fc1363          	bne	s8,a5,11282 <_vfprintf_r+0x93a>
   11060:	8576                	mv	a0,t4
   11062:	85d2                	mv	a1,s4
   11064:	05b080ef          	jal	ra,198be <__trunctfdf2>
   11068:	09a8                	addi	a0,sp,216
   1106a:	3f3030ef          	jal	ra,14c5c <frexp>
   1106e:	76c080ef          	jal	ra,197da <__extenddftf2>
   11072:	768a                	ld	a3,160(sp)
   11074:	4601                	li	a2,0
   11076:	7fe070ef          	jal	ra,18874 <__multf3>
   1107a:	4601                	li	a2,0
   1107c:	4681                	li	a3,0
   1107e:	e12a                	sd	a0,128(sp)
   11080:	e52e                	sd	a1,136(sp)
   11082:	5c6070ef          	jal	ra,18648 <__eqtf2>
   11086:	e119                	bnez	a0,1108c <_vfprintf_r+0x744>
   11088:	4785                	li	a5,1
   1108a:	cdbe                	sw	a5,216(sp)
   1108c:	06100793          	li	a5,97
   11090:	0cfb1963          	bne	s6,a5,11162 <_vfprintf_r+0x81a>
   11094:	0001a7b7          	lui	a5,0x1a
   11098:	d6078793          	addi	a5,a5,-672 # 19d60 <zeroes.4441+0x68>
   1109c:	e43e                	sd	a5,8(sp)
   1109e:	fffd871b          	addiw	a4,s11,-1
   110a2:	8a26                	mv	s4,s1
   110a4:	76aa                	ld	a3,168(sp)
   110a6:	650a                	ld	a0,128(sp)
   110a8:	65aa                	ld	a1,136(sp)
   110aa:	4601                	li	a2,0
   110ac:	f93a                	sd	a4,176(sp)
   110ae:	7c6070ef          	jal	ra,18874 <__multf3>
   110b2:	8d2a                	mv	s10,a0
   110b4:	f4ae                	sd	a1,104(sp)
   110b6:	614080ef          	jal	ra,196ca <__fixtfsi>
   110ba:	0005079b          	sext.w	a5,a0
   110be:	f8be                	sd	a5,112(sp)
   110c0:	69c080ef          	jal	ra,1975c <__floatsitf>
   110c4:	77a6                	ld	a5,104(sp)
   110c6:	86ae                	mv	a3,a1
   110c8:	862a                	mv	a2,a0
   110ca:	85be                	mv	a1,a5
   110cc:	856a                	mv	a0,s10
   110ce:	5ed070ef          	jal	ra,18eba <__subtf3>
   110d2:	67a2                	ld	a5,8(sp)
   110d4:	7746                	ld	a4,112(sp)
   110d6:	0a05                	addi	s4,s4,1
   110d8:	e12a                	sd	a0,128(sp)
   110da:	00e786b3          	add	a3,a5,a4
   110de:	774a                	ld	a4,176(sp)
   110e0:	0006c683          	lbu	a3,0(a3) # 2000 <main-0xe0b0>
   110e4:	e52e                	sd	a1,136(sp)
   110e6:	0007079b          	sext.w	a5,a4
   110ea:	f4be                	sd	a5,104(sp)
   110ec:	feda0fa3          	sb	a3,-1(s4)
   110f0:	57fd                	li	a5,-1
   110f2:	88aa                	mv	a7,a0
   110f4:	8d2e                	mv	s10,a1
   110f6:	06f70b63          	beq	a4,a5,1116c <_vfprintf_r+0x824>
   110fa:	377d                	addiw	a4,a4,-1
   110fc:	4601                	li	a2,0
   110fe:	4681                	li	a3,0
   11100:	f93a                	sd	a4,176(sp)
   11102:	fd2a                	sd	a0,184(sp)
   11104:	544070ef          	jal	ra,18648 <__eqtf2>
   11108:	774a                	ld	a4,176(sp)
   1110a:	78ea                	ld	a7,184(sp)
   1110c:	fd41                	bnez	a0,110a4 <_vfprintf_r+0x75c>
   1110e:	66ca                	ld	a3,144(sp)
   11110:	4601                	li	a2,0
   11112:	8546                	mv	a0,a7
   11114:	85ea                	mv	a1,s10
   11116:	e146                	sd	a7,128(sp)
   11118:	5d4070ef          	jal	ra,186ec <__getf2>
   1111c:	04a04b63          	bgtz	a0,11172 <_vfprintf_r+0x82a>
   11120:	688a                	ld	a7,128(sp)
   11122:	66ca                	ld	a3,144(sp)
   11124:	4601                	li	a2,0
   11126:	8546                	mv	a0,a7
   11128:	85ea                	mv	a1,s10
   1112a:	51e070ef          	jal	ra,18648 <__eqtf2>
   1112e:	e509                	bnez	a0,11138 <_vfprintf_r+0x7f0>
   11130:	77c6                	ld	a5,112(sp)
   11132:	0017f713          	andi	a4,a5,1
   11136:	ef15                	bnez	a4,11172 <_vfprintf_r+0x82a>
   11138:	5726                	lw	a4,104(sp)
   1113a:	03000693          	li	a3,48
   1113e:	06074163          	bltz	a4,111a0 <_vfprintf_r+0x858>
   11142:	0a05                	addi	s4,s4,1
   11144:	feda0fa3          	sb	a3,-1(s4)
   11148:	377d                	addiw	a4,a4,-1
   1114a:	bfd5                	j	1113e <_vfprintf_r+0x7f6>
   1114c:	4b81                	li	s7,0
   1114e:	0a24                	addi	s1,sp,280
   11150:	b5e5                	j	11038 <_vfprintf_r+0x6f0>
   11152:	8baa                	mv	s7,a0
   11154:	b5d5                	j	11038 <_vfprintf_r+0x6f0>
   11156:	4b81                	li	s7,0
   11158:	4d99                	li	s11,6
   1115a:	bdf9                	j	11038 <_vfprintf_r+0x6f0>
   1115c:	8bee                	mv	s7,s11
   1115e:	4d85                	li	s11,1
   11160:	bde1                	j	11038 <_vfprintf_r+0x6f0>
   11162:	0001a7b7          	lui	a5,0x1a
   11166:	d7878793          	addi	a5,a5,-648 # 19d78 <zeroes.4441+0x80>
   1116a:	bf0d                	j	1109c <_vfprintf_r+0x754>
   1116c:	57fd                	li	a5,-1
   1116e:	f4be                	sd	a5,104(sp)
   11170:	bf79                	j	1110e <_vfprintf_r+0x7c6>
   11172:	67a2                	ld	a5,8(sp)
   11174:	f5d2                	sd	s4,232(sp)
   11176:	03000593          	li	a1,48
   1117a:	00f7c603          	lbu	a2,15(a5)
   1117e:	76ae                	ld	a3,232(sp)
   11180:	fff68713          	addi	a4,a3,-1
   11184:	f5ba                	sd	a4,232(sp)
   11186:	fff6c703          	lbu	a4,-1(a3)
   1118a:	0ec70563          	beq	a4,a2,11274 <_vfprintf_r+0x92c>
   1118e:	03900613          	li	a2,57
   11192:	0ec71463          	bne	a4,a2,1127a <_vfprintf_r+0x932>
   11196:	67a2                	ld	a5,8(sp)
   11198:	00a7c703          	lbu	a4,10(a5)
   1119c:	fee68fa3          	sb	a4,-1(a3)
   111a0:	04700713          	li	a4,71
   111a4:	409a0a3b          	subw	s4,s4,s1
   111a8:	4d6e                	lw	s10,216(sp)
   111aa:	18ec1463          	bne	s8,a4,11332 <_vfprintf_r+0x9ea>
   111ae:	5775                	li	a4,-3
   111b0:	00ed4463          	blt	s10,a4,111b8 <_vfprintf_r+0x870>
   111b4:	1fadd463          	ble	s10,s11,1139c <_vfprintf_r+0xa54>
   111b8:	3b79                	addiw	s6,s6,-2
   111ba:	fffd069b          	addiw	a3,s10,-1
   111be:	cdb6                	sw	a3,216(sp)
   111c0:	fdfb7613          	andi	a2,s6,-33
   111c4:	04100513          	li	a0,65
   111c8:	0ffb7713          	andi	a4,s6,255
   111cc:	4581                	li	a1,0
   111ce:	00a61663          	bne	a2,a0,111da <_vfprintf_r+0x892>
   111d2:	273d                	addiw	a4,a4,15
   111d4:	0ff77713          	andi	a4,a4,255
   111d8:	4585                	li	a1,1
   111da:	0ee10023          	sb	a4,224(sp)
   111de:	02b00793          	li	a5,43
   111e2:	0006d763          	bgez	a3,111f0 <_vfprintf_r+0x8a8>
   111e6:	4685                	li	a3,1
   111e8:	41a686bb          	subw	a3,a3,s10
   111ec:	02d00793          	li	a5,45
   111f0:	0ef100a3          	sb	a5,225(sp)
   111f4:	47a5                	li	a5,9
   111f6:	16d7da63          	ble	a3,a5,1136a <_vfprintf_r+0xa22>
   111fa:	0ef10713          	addi	a4,sp,239
   111fe:	853a                	mv	a0,a4
   11200:	45a9                	li	a1,10
   11202:	4825                	li	a6,9
   11204:	02b6e7bb          	remw	a5,a3,a1
   11208:	fff70613          	addi	a2,a4,-1
   1120c:	02b6c6bb          	divw	a3,a3,a1
   11210:	0307879b          	addiw	a5,a5,48
   11214:	fef70fa3          	sb	a5,-1(a4)
   11218:	14d84063          	blt	a6,a3,11358 <_vfprintf_r+0xa10>
   1121c:	0306879b          	addiw	a5,a3,48
   11220:	fef60fa3          	sb	a5,-1(a2)
   11224:	1779                	addi	a4,a4,-2
   11226:	0e210613          	addi	a2,sp,226
   1122a:	12a76963          	bltu	a4,a0,1135c <_vfprintf_r+0xa14>
   1122e:	119c                	addi	a5,sp,224
   11230:	40f607bb          	subw	a5,a2,a5
   11234:	ecbe                	sd	a5,88(sp)
   11236:	47e6                	lw	a5,88(sp)
   11238:	4705                	li	a4,1
   1123a:	01478dbb          	addw	s11,a5,s4
   1123e:	87ee                	mv	a5,s11
   11240:	01474563          	blt	a4,s4,1124a <_vfprintf_r+0x902>
   11244:	00147713          	andi	a4,s0,1
   11248:	c701                	beqz	a4,11250 <_vfprintf_r+0x908>
   1124a:	4762                	lw	a4,24(sp)
   1124c:	00e78dbb          	addw	s11,a5,a4
   11250:	bff47413          	andi	s0,s0,-1025
   11254:	2401                	sext.w	s0,s0
   11256:	10046793          	ori	a5,s0,256
   1125a:	fc3e                	sd	a5,56(sp)
   1125c:	e402                	sd	zero,8(sp)
   1125e:	4c01                	li	s8,0
   11260:	4d01                	li	s10,0
   11262:	77e6                	ld	a5,120(sp)
   11264:	c789                	beqz	a5,1126e <_vfprintf_r+0x926>
   11266:	02d00713          	li	a4,45
   1126a:	0ce107a3          	sb	a4,207(sp)
   1126e:	7462                	ld	s0,56(sp)
   11270:	4701                	li	a4,0
   11272:	bc2d                	j	10cac <_vfprintf_r+0x364>
   11274:	feb68fa3          	sb	a1,-1(a3)
   11278:	b719                	j	1117e <_vfprintf_r+0x836>
   1127a:	2705                	addiw	a4,a4,1
   1127c:	0ff77713          	andi	a4,a4,255
   11280:	bf31                	j	1119c <_vfprintf_r+0x854>
   11282:	04600793          	li	a5,70
   11286:	00fc0b63          	beq	s8,a5,1129c <_vfprintf_r+0x954>
   1128a:	04500793          	li	a5,69
   1128e:	8d6e                	mv	s10,s11
   11290:	00fc1463          	bne	s8,a5,11298 <_vfprintf_r+0x950>
   11294:	001d8d1b          	addiw	s10,s11,1
   11298:	4689                	li	a3,2
   1129a:	a019                	j	112a0 <_vfprintf_r+0x958>
   1129c:	8d6e                	mv	s10,s11
   1129e:	468d                	li	a3,3
   112a0:	09bc                	addi	a5,sp,216
   112a2:	85f6                	mv	a1,t4
   112a4:	0e810893          	addi	a7,sp,232
   112a8:	0dc10813          	addi	a6,sp,220
   112ac:	876a                	mv	a4,s10
   112ae:	8652                	mv	a2,s4
   112b0:	854e                	mv	a0,s3
   112b2:	e476                	sd	t4,8(sp)
   112b4:	358020ef          	jal	ra,1360c <_ldtoa_r>
   112b8:	04700793          	li	a5,71
   112bc:	84aa                	mv	s1,a0
   112be:	6ea2                	ld	t4,8(sp)
   112c0:	00fc1563          	bne	s8,a5,112ca <_vfprintf_r+0x982>
   112c4:	00147793          	andi	a5,s0,1
   112c8:	cbb1                	beqz	a5,1131c <_vfprintf_r+0x9d4>
   112ca:	04600713          	li	a4,70
   112ce:	01a487b3          	add	a5,s1,s10
   112d2:	02ec1963          	bne	s8,a4,11304 <_vfprintf_r+0x9bc>
   112d6:	0004c683          	lbu	a3,0(s1)
   112da:	03000713          	li	a4,48
   112de:	02e69163          	bne	a3,a4,11300 <_vfprintf_r+0x9b8>
   112e2:	8576                	mv	a0,t4
   112e4:	4601                	li	a2,0
   112e6:	4681                	li	a3,0
   112e8:	85d2                	mv	a1,s4
   112ea:	f4be                	sd	a5,104(sp)
   112ec:	e476                	sd	t4,8(sp)
   112ee:	35a070ef          	jal	ra,18648 <__eqtf2>
   112f2:	6ea2                	ld	t4,8(sp)
   112f4:	77a6                	ld	a5,104(sp)
   112f6:	c509                	beqz	a0,11300 <_vfprintf_r+0x9b8>
   112f8:	4705                	li	a4,1
   112fa:	41a70d3b          	subw	s10,a4,s10
   112fe:	cdea                	sw	s10,216(sp)
   11300:	476e                	lw	a4,216(sp)
   11302:	97ba                	add	a5,a5,a4
   11304:	4681                	li	a3,0
   11306:	4601                	li	a2,0
   11308:	8576                	mv	a0,t4
   1130a:	85d2                	mv	a1,s4
   1130c:	e43e                	sd	a5,8(sp)
   1130e:	33a070ef          	jal	ra,18648 <__eqtf2>
   11312:	67a2                	ld	a5,8(sp)
   11314:	03000693          	li	a3,48
   11318:	e909                	bnez	a0,1132a <_vfprintf_r+0x9e2>
   1131a:	f5be                	sd	a5,232(sp)
   1131c:	7a2e                	ld	s4,232(sp)
   1131e:	b549                	j	111a0 <_vfprintf_r+0x858>
   11320:	00170613          	addi	a2,a4,1
   11324:	f5b2                	sd	a2,232(sp)
   11326:	00d70023          	sb	a3,0(a4)
   1132a:	772e                	ld	a4,232(sp)
   1132c:	fef76ae3          	bltu	a4,a5,11320 <_vfprintf_r+0x9d8>
   11330:	b7f5                	j	1131c <_vfprintf_r+0x9d4>
   11332:	04600713          	li	a4,70
   11336:	e8ec12e3          	bne	s8,a4,111ba <_vfprintf_r+0x872>
   1133a:	05a05863          	blez	s10,1138a <_vfprintf_r+0xa42>
   1133e:	000d9563          	bnez	s11,11348 <_vfprintf_r+0xa00>
   11342:	00147713          	andi	a4,s0,1
   11346:	cf59                	beqz	a4,113e4 <_vfprintf_r+0xa9c>
   11348:	47e2                	lw	a5,24(sp)
   1134a:	01a7873b          	addw	a4,a5,s10
   1134e:	01b70dbb          	addw	s11,a4,s11
   11352:	06600b13          	li	s6,102
   11356:	a895                	j	113ca <_vfprintf_r+0xa82>
   11358:	8732                	mv	a4,a2
   1135a:	b56d                	j	11204 <_vfprintf_r+0x8bc>
   1135c:	0705                	addi	a4,a4,1
   1135e:	fff74783          	lbu	a5,-1(a4)
   11362:	0605                	addi	a2,a2,1
   11364:	fef60fa3          	sb	a5,-1(a2)
   11368:	b5c9                	j	1122a <_vfprintf_r+0x8e2>
   1136a:	0e210713          	addi	a4,sp,226
   1136e:	e599                	bnez	a1,1137c <_vfprintf_r+0xa34>
   11370:	03000793          	li	a5,48
   11374:	0ef10123          	sb	a5,226(sp)
   11378:	0e310713          	addi	a4,sp,227
   1137c:	0306879b          	addiw	a5,a3,48
   11380:	00170613          	addi	a2,a4,1
   11384:	00f70023          	sb	a5,0(a4)
   11388:	b55d                	j	1122e <_vfprintf_r+0x8e6>
   1138a:	000d9563          	bnez	s11,11394 <_vfprintf_r+0xa4c>
   1138e:	00147713          	andi	a4,s0,1
   11392:	cb39                	beqz	a4,113e8 <_vfprintf_r+0xaa0>
   11394:	47e2                	lw	a5,24(sp)
   11396:	0017871b          	addiw	a4,a5,1
   1139a:	bf55                	j	1134e <_vfprintf_r+0xa06>
   1139c:	014d4c63          	blt	s10,s4,113b4 <_vfprintf_r+0xa6c>
   113a0:	00147713          	andi	a4,s0,1
   113a4:	8dea                	mv	s11,s10
   113a6:	c701                	beqz	a4,113ae <_vfprintf_r+0xa66>
   113a8:	47e2                	lw	a5,24(sp)
   113aa:	01a78dbb          	addw	s11,a5,s10
   113ae:	06700b13          	li	s6,103
   113b2:	a821                	j	113ca <_vfprintf_r+0xa82>
   113b4:	47e2                	lw	a5,24(sp)
   113b6:	06700b13          	li	s6,103
   113ba:	01478dbb          	addw	s11,a5,s4
   113be:	01a04663          	bgtz	s10,113ca <_vfprintf_r+0xa82>
   113c2:	41ad8e3b          	subw	t3,s11,s10
   113c6:	001e0d9b          	addiw	s11,t3,1
   113ca:	40047413          	andi	s0,s0,1024
   113ce:	00040c1b          	sext.w	s8,s0
   113d2:	e402                	sd	zero,8(sp)
   113d4:	e80c07e3          	beqz	s8,11262 <_vfprintf_r+0x91a>
   113d8:	4c01                	li	s8,0
   113da:	e9a054e3          	blez	s10,11262 <_vfprintf_r+0x91a>
   113de:	0ff00693          	li	a3,255
   113e2:	a01d                	j	11408 <_vfprintf_r+0xac0>
   113e4:	8dea                	mv	s11,s10
   113e6:	b7b5                	j	11352 <_vfprintf_r+0xa0a>
   113e8:	06600b13          	li	s6,102
   113ec:	4d85                	li	s11,1
   113ee:	bff1                	j	113ca <_vfprintf_r+0xa82>
   113f0:	2701                	sext.w	a4,a4
   113f2:	03a75063          	ble	s10,a4,11412 <_vfprintf_r+0xaca>
   113f6:	6782                	ld	a5,0(sp)
   113f8:	40ed0d3b          	subw	s10,s10,a4
   113fc:	0017c703          	lbu	a4,1(a5)
   11400:	c315                	beqz	a4,11424 <_vfprintf_r+0xadc>
   11402:	0785                	addi	a5,a5,1
   11404:	2c05                	addiw	s8,s8,1
   11406:	e03e                	sd	a5,0(sp)
   11408:	6782                	ld	a5,0(sp)
   1140a:	0007c703          	lbu	a4,0(a5)
   1140e:	fed711e3          	bne	a4,a3,113f0 <_vfprintf_r+0xaa8>
   11412:	47a2                	lw	a5,8(sp)
   11414:	00fc073b          	addw	a4,s8,a5
   11418:	4786                	lw	a5,64(sp)
   1141a:	02f7073b          	mulw	a4,a4,a5
   1141e:	01b70dbb          	addw	s11,a4,s11
   11422:	b581                	j	11262 <_vfprintf_r+0x91a>
   11424:	47a2                	lw	a5,8(sp)
   11426:	2785                	addiw	a5,a5,1
   11428:	e43e                	sd	a5,8(sp)
   1142a:	bff9                	j	11408 <_vfprintf_r+0xac0>
   1142c:	008b8713          	addi	a4,s7,8
   11430:	f83a                	sd	a4,48(sp)
   11432:	02047713          	andi	a4,s0,32
   11436:	000bb783          	ld	a5,0(s7)
   1143a:	c719                	beqz	a4,11448 <_vfprintf_r+0xb00>
   1143c:	7722                	ld	a4,40(sp)
   1143e:	e398                	sd	a4,0(a5)
   11440:	7bc2                	ld	s7,48(sp)
   11442:	64c2                	ld	s1,16(sp)
   11444:	e48ff06f          	j	10a8c <_vfprintf_r+0x144>
   11448:	01047713          	andi	a4,s0,16
   1144c:	fb65                	bnez	a4,1143c <_vfprintf_r+0xaf4>
   1144e:	04047713          	andi	a4,s0,64
   11452:	c711                	beqz	a4,1145e <_vfprintf_r+0xb16>
   11454:	02815703          	lhu	a4,40(sp)
   11458:	00e79023          	sh	a4,0(a5)
   1145c:	b7d5                	j	11440 <_vfprintf_r+0xaf8>
   1145e:	20047413          	andi	s0,s0,512
   11462:	c411                	beqz	s0,1146e <_vfprintf_r+0xb26>
   11464:	02814703          	lbu	a4,40(sp)
   11468:	00e78023          	sb	a4,0(a5)
   1146c:	bfd1                	j	11440 <_vfprintf_r+0xaf8>
   1146e:	5722                	lw	a4,40(sp)
   11470:	c398                	sw	a4,0(a5)
   11472:	b7f9                	j	11440 <_vfprintf_r+0xaf8>
   11474:	01046413          	ori	s0,s0,16
   11478:	2401                	sext.w	s0,s0
   1147a:	008b8793          	addi	a5,s7,8
   1147e:	f83e                	sd	a5,48(sp)
   11480:	02047793          	andi	a5,s0,32
   11484:	cb85                	beqz	a5,114b4 <_vfprintf_r+0xb6c>
   11486:	000bbb83          	ld	s7,0(s7)
   1148a:	bff47413          	andi	s0,s0,-1025
   1148e:	2401                	sext.w	s0,s0
   11490:	4781                	li	a5,0
   11492:	0c0107a3          	sb	zero,207(sp)
   11496:	577d                	li	a4,-1
   11498:	12ed8c63          	beq	s11,a4,115d0 <_vfprintf_r+0xc88>
   1149c:	8722                	mv	a4,s0
   1149e:	f7f47413          	andi	s0,s0,-129
   114a2:	2401                	sext.w	s0,s0
   114a4:	120b9663          	bnez	s7,115d0 <_vfprintf_r+0xc88>
   114a8:	200d8463          	beqz	s11,116b0 <_vfprintf_r+0xd68>
   114ac:	4705                	li	a4,1
   114ae:	12e79463          	bne	a5,a4,115d6 <_vfprintf_r+0xc8e>
   114b2:	bc05                	j	10ee2 <_vfprintf_r+0x59a>
   114b4:	01047793          	andi	a5,s0,16
   114b8:	f7f9                	bnez	a5,11486 <_vfprintf_r+0xb3e>
   114ba:	04047793          	andi	a5,s0,64
   114be:	000bab83          	lw	s7,0(s7)
   114c2:	c789                	beqz	a5,114cc <_vfprintf_r+0xb84>
   114c4:	1bc2                	slli	s7,s7,0x30
   114c6:	030bdb93          	srli	s7,s7,0x30
   114ca:	b7c1                	j	1148a <_vfprintf_r+0xb42>
   114cc:	20047793          	andi	a5,s0,512
   114d0:	c781                	beqz	a5,114d8 <_vfprintf_r+0xb90>
   114d2:	0ffbfb93          	andi	s7,s7,255
   114d6:	bf55                	j	1148a <_vfprintf_r+0xb42>
   114d8:	1b82                	slli	s7,s7,0x20
   114da:	020bdb93          	srli	s7,s7,0x20
   114de:	b775                	j	1148a <_vfprintf_r+0xb42>
   114e0:	008b8793          	addi	a5,s7,8
   114e4:	f83e                	sd	a5,48(sp)
   114e6:	77e1                	lui	a5,0xffff8
   114e8:	8307c793          	xori	a5,a5,-2000
   114ec:	0cf11823          	sh	a5,208(sp)
   114f0:	0001a7b7          	lui	a5,0x1a
   114f4:	d6078793          	addi	a5,a5,-672 # 19d60 <zeroes.4441+0x68>
   114f8:	00246413          	ori	s0,s0,2
   114fc:	f0be                	sd	a5,96(sp)
   114fe:	000bbb83          	ld	s7,0(s7)
   11502:	2401                	sext.w	s0,s0
   11504:	4789                	li	a5,2
   11506:	07800b13          	li	s6,120
   1150a:	b761                	j	11492 <_vfprintf_r+0xb4a>
   1150c:	008b8793          	addi	a5,s7,8
   11510:	f83e                	sd	a5,48(sp)
   11512:	0c0107a3          	sb	zero,207(sp)
   11516:	57fd                	li	a5,-1
   11518:	000bb483          	ld	s1,0(s7)
   1151c:	00fd8e63          	beq	s11,a5,11538 <_vfprintf_r+0xbf0>
   11520:	866e                	mv	a2,s11
   11522:	4581                	li	a1,0
   11524:	8526                	mv	a0,s1
   11526:	43b020ef          	jal	ra,14160 <memchr>
   1152a:	8baa                	mv	s7,a0
   1152c:	a40503e3          	beqz	a0,10f72 <_vfprintf_r+0x62a>
   11530:	40950dbb          	subw	s11,a0,s1
   11534:	4b81                	li	s7,0
   11536:	bc35                	j	10f72 <_vfprintf_r+0x62a>
   11538:	8526                	mv	a0,s1
   1153a:	1e1030ef          	jal	ra,14f1a <strlen>
   1153e:	00050d9b          	sext.w	s11,a0
   11542:	bfcd                	j	11534 <_vfprintf_r+0xbec>
   11544:	01046413          	ori	s0,s0,16
   11548:	2401                	sext.w	s0,s0
   1154a:	008b8793          	addi	a5,s7,8
   1154e:	f83e                	sd	a5,48(sp)
   11550:	02047793          	andi	a5,s0,32
   11554:	c789                	beqz	a5,1155e <_vfprintf_r+0xc16>
   11556:	000bbb83          	ld	s7,0(s7)
   1155a:	4785                	li	a5,1
   1155c:	bf1d                	j	11492 <_vfprintf_r+0xb4a>
   1155e:	01047793          	andi	a5,s0,16
   11562:	fbf5                	bnez	a5,11556 <_vfprintf_r+0xc0e>
   11564:	04047793          	andi	a5,s0,64
   11568:	000bab83          	lw	s7,0(s7)
   1156c:	c789                	beqz	a5,11576 <_vfprintf_r+0xc2e>
   1156e:	1bc2                	slli	s7,s7,0x30
   11570:	030bdb93          	srli	s7,s7,0x30
   11574:	b7dd                	j	1155a <_vfprintf_r+0xc12>
   11576:	20047793          	andi	a5,s0,512
   1157a:	c781                	beqz	a5,11582 <_vfprintf_r+0xc3a>
   1157c:	0ffbfb93          	andi	s7,s7,255
   11580:	bfe9                	j	1155a <_vfprintf_r+0xc12>
   11582:	1b82                	slli	s7,s7,0x20
   11584:	020bdb93          	srli	s7,s7,0x20
   11588:	bfc9                	j	1155a <_vfprintf_r+0xc12>
   1158a:	0001a7b7          	lui	a5,0x1a
   1158e:	d6078793          	addi	a5,a5,-672 # 19d60 <zeroes.4441+0x68>
   11592:	d9eff06f          	j	10b30 <_vfprintf_r+0x1e8>
   11596:	01047793          	andi	a5,s0,16
   1159a:	da079363          	bnez	a5,10b40 <_vfprintf_r+0x1f8>
   1159e:	04047793          	andi	a5,s0,64
   115a2:	000bab83          	lw	s7,0(s7)
   115a6:	c791                	beqz	a5,115b2 <_vfprintf_r+0xc6a>
   115a8:	1bc2                	slli	s7,s7,0x30
   115aa:	030bdb93          	srli	s7,s7,0x30
   115ae:	d96ff06f          	j	10b44 <_vfprintf_r+0x1fc>
   115b2:	20047793          	andi	a5,s0,512
   115b6:	c789                	beqz	a5,115c0 <_vfprintf_r+0xc78>
   115b8:	0ffbfb93          	andi	s7,s7,255
   115bc:	d88ff06f          	j	10b44 <_vfprintf_r+0x1fc>
   115c0:	1b82                	slli	s7,s7,0x20
   115c2:	020bdb93          	srli	s7,s7,0x20
   115c6:	d7eff06f          	j	10b44 <_vfprintf_r+0x1fc>
   115ca:	8722                	mv	a4,s0
   115cc:	4785                	li	a5,1
   115ce:	bdc1                	j	1149e <_vfprintf_r+0xb56>
   115d0:	4705                	li	a4,1
   115d2:	90e785e3          	beq	a5,a4,10edc <_vfprintf_r+0x594>
   115d6:	4709                	li	a4,2
   115d8:	0ae78d63          	beq	a5,a4,11692 <_vfprintf_r+0xd4a>
   115dc:	1afc                	addi	a5,sp,380
   115de:	007bf713          	andi	a4,s7,7
   115e2:	03070713          	addi	a4,a4,48
   115e6:	fee78fa3          	sb	a4,-1(a5)
   115ea:	003bdb93          	srli	s7,s7,0x3
   115ee:	fff78493          	addi	s1,a5,-1
   115f2:	020b9863          	bnez	s7,11622 <_vfprintf_r+0xcda>
   115f6:	00147693          	andi	a3,s0,1
   115fa:	ca89                	beqz	a3,1160c <_vfprintf_r+0xcc4>
   115fc:	03000693          	li	a3,48
   11600:	00d70663          	beq	a4,a3,1160c <_vfprintf_r+0xcc4>
   11604:	fed48fa3          	sb	a3,-1(s1)
   11608:	ffe78493          	addi	s1,a5,-2
   1160c:	17c10e13          	addi	t3,sp,380
   11610:	876e                	mv	a4,s11
   11612:	4b81                	li	s7,0
   11614:	409e0dbb          	subw	s11,t3,s1
   11618:	e402                	sd	zero,8(sp)
   1161a:	4c01                	li	s8,0
   1161c:	4d01                	li	s10,0
   1161e:	e8eff06f          	j	10cac <_vfprintf_r+0x364>
   11622:	87a6                	mv	a5,s1
   11624:	bf6d                	j	115de <_vfprintf_r+0xc96>
   11626:	40047c13          	andi	s8,s0,1024
   1162a:	4a01                	li	s4,0
   1162c:	1afc                	addi	a5,sp,380
   1162e:	4d29                	li	s10,10
   11630:	2c01                	sext.w	s8,s8
   11632:	0ff00693          	li	a3,255
   11636:	4825                	li	a6,9
   11638:	03abf733          	remu	a4,s7,s10
   1163c:	fff78493          	addi	s1,a5,-1
   11640:	2a05                	addiw	s4,s4,1
   11642:	0307071b          	addiw	a4,a4,48
   11646:	fee78fa3          	sb	a4,-1(a5)
   1164a:	020c0e63          	beqz	s8,11686 <_vfprintf_r+0xd3e>
   1164e:	6782                	ld	a5,0(sp)
   11650:	0007c783          	lbu	a5,0(a5)
   11654:	02fa1963          	bne	s4,a5,11686 <_vfprintf_r+0xd3e>
   11658:	02d78763          	beq	a5,a3,11686 <_vfprintf_r+0xd3e>
   1165c:	03787563          	bleu	s7,a6,11686 <_vfprintf_r+0xd3e>
   11660:	6786                	ld	a5,64(sp)
   11662:	65c6                	ld	a1,80(sp)
   11664:	fc42                	sd	a6,56(sp)
   11666:	8c9d                	sub	s1,s1,a5
   11668:	863e                	mv	a2,a5
   1166a:	8526                	mv	a0,s1
   1166c:	e436                	sd	a3,8(sp)
   1166e:	0bf030ef          	jal	ra,14f2c <strncpy>
   11672:	6782                	ld	a5,0(sp)
   11674:	4a01                	li	s4,0
   11676:	66a2                	ld	a3,8(sp)
   11678:	0017c783          	lbu	a5,1(a5)
   1167c:	7862                	ld	a6,56(sp)
   1167e:	c781                	beqz	a5,11686 <_vfprintf_r+0xd3e>
   11680:	6782                	ld	a5,0(sp)
   11682:	0785                	addi	a5,a5,1
   11684:	e03e                	sd	a5,0(sp)
   11686:	03abdbb3          	divu	s7,s7,s10
   1168a:	f80b81e3          	beqz	s7,1160c <_vfprintf_r+0xcc4>
   1168e:	87a6                	mv	a5,s1
   11690:	b765                	j	11638 <_vfprintf_r+0xcf0>
   11692:	1ae4                	addi	s1,sp,380
   11694:	7706                	ld	a4,96(sp)
   11696:	00fbf793          	andi	a5,s7,15
   1169a:	14fd                	addi	s1,s1,-1
   1169c:	97ba                	add	a5,a5,a4
   1169e:	0007c783          	lbu	a5,0(a5)
   116a2:	004bdb93          	srli	s7,s7,0x4
   116a6:	00f48023          	sb	a5,0(s1)
   116aa:	fe0b95e3          	bnez	s7,11694 <_vfprintf_r+0xd4c>
   116ae:	bfb9                	j	1160c <_vfprintf_r+0xcc4>
   116b0:	1ae4                	addi	s1,sp,380
   116b2:	ffa9                	bnez	a5,1160c <_vfprintf_r+0xcc4>
   116b4:	8b05                	andi	a4,a4,1
   116b6:	db39                	beqz	a4,1160c <_vfprintf_r+0xcc4>
   116b8:	03000793          	li	a5,48
   116bc:	16f10da3          	sb	a5,379(sp)
   116c0:	82bff06f          	j	10eea <_vfprintf_r+0x5a2>
   116c4:	020b02e3          	beqz	s6,11ee8 <_vfprintf_r+0x15a0>
   116c8:	11610c23          	sb	s6,280(sp)
   116cc:	0c0107a3          	sb	zero,207(sp)
   116d0:	f85e                	sd	s7,48(sp)
   116d2:	dccff06f          	j	10c9e <_vfprintf_r+0x356>
   116d6:	0641                	addi	a2,a2,16
   116d8:	011cb423          	sd	a7,8(s9)
   116dc:	ea32                	sd	a2,272(sp)
   116de:	10b12423          	sw	a1,264(sp)
   116e2:	02aed463          	ble	a0,t4,1170a <_vfprintf_r+0xdc2>
   116e6:	0210                	addi	a2,sp,256
   116e8:	85ca                	mv	a1,s2
   116ea:	854e                	mv	a0,s3
   116ec:	fd76                	sd	t4,184(sp)
   116ee:	f942                	sd	a6,176(sp)
   116f0:	e546                	sd	a7,136(sp)
   116f2:	e13a                	sd	a4,128(sp)
   116f4:	fcb6                	sd	a3,120(sp)
   116f6:	5df040ef          	jal	ra,164d4 <__sprint_r>
   116fa:	7a051863          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   116fe:	7eea                	ld	t4,184(sp)
   11700:	784a                	ld	a6,176(sp)
   11702:	68aa                	ld	a7,136(sp)
   11704:	670a                	ld	a4,128(sp)
   11706:	76e6                	ld	a3,120(sp)
   11708:	8f56                	mv	t5,s5
   1170a:	36c1                	addiw	a3,a3,-16
   1170c:	8cfa                	mv	s9,t5
   1170e:	de8ff06f          	j	10cf6 <_vfprintf_r+0x3ae>
   11712:	0641                	addi	a2,a2,16
   11714:	011cb423          	sd	a7,8(s9)
   11718:	ea32                	sd	a2,272(sp)
   1171a:	10b12423          	sw	a1,264(sp)
   1171e:	02aed463          	ble	a0,t4,11746 <_vfprintf_r+0xdfe>
   11722:	0210                	addi	a2,sp,256
   11724:	85ca                	mv	a1,s2
   11726:	854e                	mv	a0,s3
   11728:	e576                	sd	t4,136(sp)
   1172a:	e142                	sd	a6,128(sp)
   1172c:	fcc6                	sd	a7,120(sp)
   1172e:	f8ba                	sd	a4,112(sp)
   11730:	f4b6                	sd	a3,104(sp)
   11732:	5a3040ef          	jal	ra,164d4 <__sprint_r>
   11736:	76051a63          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   1173a:	6eaa                	ld	t4,136(sp)
   1173c:	680a                	ld	a6,128(sp)
   1173e:	78e6                	ld	a7,120(sp)
   11740:	7746                	ld	a4,112(sp)
   11742:	76a6                	ld	a3,104(sp)
   11744:	8f56                	mv	t5,s5
   11746:	36c1                	addiw	a3,a3,-16
   11748:	8cfa                	mv	s9,t5
   1174a:	e92ff06f          	j	10ddc <_vfprintf_r+0x494>
   1174e:	06c1                	addi	a3,a3,16
   11750:	011cb423          	sd	a7,8(s9)
   11754:	ea36                	sd	a3,272(sp)
   11756:	10c12423          	sw	a2,264(sp)
   1175a:	02bed263          	ble	a1,t4,1177e <_vfprintf_r+0xe36>
   1175e:	0210                	addi	a2,sp,256
   11760:	85ca                	mv	a1,s2
   11762:	854e                	mv	a0,s3
   11764:	e176                	sd	t4,128(sp)
   11766:	fcc2                	sd	a6,120(sp)
   11768:	f8c6                	sd	a7,112(sp)
   1176a:	f4ba                	sd	a4,104(sp)
   1176c:	569040ef          	jal	ra,164d4 <__sprint_r>
   11770:	72051d63          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11774:	6e8a                	ld	t4,128(sp)
   11776:	7866                	ld	a6,120(sp)
   11778:	78c6                	ld	a7,112(sp)
   1177a:	7726                	ld	a4,104(sp)
   1177c:	8556                	mv	a0,s5
   1177e:	3741                	addiw	a4,a4,-16
   11780:	8caa                	mv	s9,a0
   11782:	eaeff06f          	j	10e30 <_vfprintf_r+0x4e8>
   11786:	06500693          	li	a3,101
   1178a:	5766df63          	ble	s6,a3,11d08 <_vfprintf_r+0x13c0>
   1178e:	754e                	ld	a0,240(sp)
   11790:	75ee                	ld	a1,248(sp)
   11792:	4601                	li	a2,0
   11794:	4681                	li	a3,0
   11796:	f4ba                	sd	a4,104(sp)
   11798:	6b1060ef          	jal	ra,18648 <__eqtf2>
   1179c:	7726                	ld	a4,104(sp)
   1179e:	10051e63          	bnez	a0,118ba <_vfprintf_r+0xf72>
   117a2:	0001a7b7          	lui	a5,0x1a
   117a6:	d9078793          	addi	a5,a5,-624 # 19d90 <zeroes.4441+0x98>
   117aa:	00fcb023          	sd	a5,0(s9)
   117ae:	4785                	li	a5,1
   117b0:	00fcb423          	sd	a5,8(s9)
   117b4:	10812783          	lw	a5,264(sp)
   117b8:	0705                	addi	a4,a4,1
   117ba:	ea3a                	sd	a4,272(sp)
   117bc:	0017871b          	addiw	a4,a5,1
   117c0:	10e12423          	sw	a4,264(sp)
   117c4:	479d                	li	a5,7
   117c6:	0cc1                	addi	s9,s9,16
   117c8:	00e7da63          	ble	a4,a5,117dc <_vfprintf_r+0xe94>
   117cc:	0210                	addi	a2,sp,256
   117ce:	85ca                	mv	a1,s2
   117d0:	854e                	mv	a0,s3
   117d2:	503040ef          	jal	ra,164d4 <__sprint_r>
   117d6:	6c051a63          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   117da:	8cd6                	mv	s9,s5
   117dc:	47ee                	lw	a5,216(sp)
   117de:	0147c563          	blt	a5,s4,117e8 <_vfprintf_r+0xea0>
   117e2:	00147793          	andi	a5,s0,1
   117e6:	cfa5                	beqz	a5,1185e <_vfprintf_r+0xf16>
   117e8:	67a6                	ld	a5,72(sp)
   117ea:	6762                	ld	a4,24(sp)
   117ec:	0cc1                	addi	s9,s9,16
   117ee:	fefcb823          	sd	a5,-16(s9)
   117f2:	67e2                	ld	a5,24(sp)
   117f4:	fefcbc23          	sd	a5,-8(s9)
   117f8:	67d2                	ld	a5,272(sp)
   117fa:	97ba                	add	a5,a5,a4
   117fc:	ea3e                	sd	a5,272(sp)
   117fe:	10812783          	lw	a5,264(sp)
   11802:	0017871b          	addiw	a4,a5,1
   11806:	10e12423          	sw	a4,264(sp)
   1180a:	479d                	li	a5,7
   1180c:	00e7da63          	ble	a4,a5,11820 <_vfprintf_r+0xed8>
   11810:	0210                	addi	a2,sp,256
   11812:	85ca                	mv	a1,s2
   11814:	854e                	mv	a0,s3
   11816:	4bf040ef          	jal	ra,164d4 <__sprint_r>
   1181a:	68051863          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   1181e:	8cd6                	mv	s9,s5
   11820:	fffa049b          	addiw	s1,s4,-1
   11824:	02905d63          	blez	s1,1185e <_vfprintf_r+0xf16>
   11828:	6b69                	lui	s6,0x1a
   1182a:	4c41                	li	s8,16
   1182c:	cf8b0b13          	addi	s6,s6,-776 # 19cf8 <zeroes.4441>
   11830:	4d1d                	li	s10,7
   11832:	10812703          	lw	a4,264(sp)
   11836:	016cb023          	sd	s6,0(s9)
   1183a:	67d2                	ld	a5,272(sp)
   1183c:	0017069b          	addiw	a3,a4,1
   11840:	8736                	mv	a4,a3
   11842:	010c8613          	addi	a2,s9,16
   11846:	049c4763          	blt	s8,s1,11894 <_vfprintf_r+0xf4c>
   1184a:	009cb423          	sd	s1,8(s9)
   1184e:	94be                	add	s1,s1,a5
   11850:	ea26                	sd	s1,272(sp)
   11852:	10d12423          	sw	a3,264(sp)
   11856:	479d                	li	a5,7
   11858:	8cb2                	mv	s9,a2
   1185a:	e4d7c063          	blt	a5,a3,10e9a <_vfprintf_r+0x552>
   1185e:	8811                	andi	s0,s0,4
   11860:	60041063          	bnez	s0,11e60 <_vfprintf_r+0x1518>
   11864:	7702                	ld	a4,32(sp)
   11866:	76e2                	ld	a3,56(sp)
   11868:	5782                	lw	a5,32(sp)
   1186a:	00d75363          	ble	a3,a4,11870 <_vfprintf_r+0xf28>
   1186e:	57e2                	lw	a5,56(sp)
   11870:	5722                	lw	a4,40(sp)
   11872:	9fb9                	addw	a5,a5,a4
   11874:	f43e                	sd	a5,40(sp)
   11876:	67d2                	ld	a5,272(sp)
   11878:	cb81                	beqz	a5,11888 <_vfprintf_r+0xf40>
   1187a:	0210                	addi	a2,sp,256
   1187c:	85ca                	mv	a1,s2
   1187e:	854e                	mv	a0,s3
   11880:	455040ef          	jal	ra,164d4 <__sprint_r>
   11884:	62051363          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11888:	10012423          	sw	zero,264(sp)
   1188c:	640b9963          	bnez	s7,11ede <_vfprintf_r+0x1596>
   11890:	8cd6                	mv	s9,s5
   11892:	b67d                	j	11440 <_vfprintf_r+0xaf8>
   11894:	07c1                	addi	a5,a5,16
   11896:	018cb423          	sd	s8,8(s9)
   1189a:	ea3e                	sd	a5,272(sp)
   1189c:	10e12423          	sw	a4,264(sp)
   118a0:	00dd5a63          	ble	a3,s10,118b4 <_vfprintf_r+0xf6c>
   118a4:	0210                	addi	a2,sp,256
   118a6:	85ca                	mv	a1,s2
   118a8:	854e                	mv	a0,s3
   118aa:	42b040ef          	jal	ra,164d4 <__sprint_r>
   118ae:	5e051e63          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   118b2:	8656                	mv	a2,s5
   118b4:	34c1                	addiw	s1,s1,-16
   118b6:	8cb2                	mv	s9,a2
   118b8:	bfad                	j	11832 <_vfprintf_r+0xeea>
   118ba:	46ee                	lw	a3,216(sp)
   118bc:	12d04163          	bgtz	a3,119de <_vfprintf_r+0x1096>
   118c0:	0001a7b7          	lui	a5,0x1a
   118c4:	d9078793          	addi	a5,a5,-624 # 19d90 <zeroes.4441+0x98>
   118c8:	00fcb023          	sd	a5,0(s9)
   118cc:	4785                	li	a5,1
   118ce:	00fcb423          	sd	a5,8(s9)
   118d2:	10812783          	lw	a5,264(sp)
   118d6:	0705                	addi	a4,a4,1
   118d8:	ea3a                	sd	a4,272(sp)
   118da:	0017871b          	addiw	a4,a5,1
   118de:	10e12423          	sw	a4,264(sp)
   118e2:	479d                	li	a5,7
   118e4:	0cc1                	addi	s9,s9,16
   118e6:	00e7da63          	ble	a4,a5,118fa <_vfprintf_r+0xfb2>
   118ea:	0210                	addi	a2,sp,256
   118ec:	85ca                	mv	a1,s2
   118ee:	854e                	mv	a0,s3
   118f0:	3e5040ef          	jal	ra,164d4 <__sprint_r>
   118f4:	5a051b63          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   118f8:	8cd6                	mv	s9,s5
   118fa:	47ee                	lw	a5,216(sp)
   118fc:	e791                	bnez	a5,11908 <_vfprintf_r+0xfc0>
   118fe:	000a1563          	bnez	s4,11908 <_vfprintf_r+0xfc0>
   11902:	00147793          	andi	a5,s0,1
   11906:	dfa1                	beqz	a5,1185e <_vfprintf_r+0xf16>
   11908:	67a6                	ld	a5,72(sp)
   1190a:	6762                	ld	a4,24(sp)
   1190c:	010c8313          	addi	t1,s9,16
   11910:	00fcb023          	sd	a5,0(s9)
   11914:	67e2                	ld	a5,24(sp)
   11916:	00fcb423          	sd	a5,8(s9)
   1191a:	67d2                	ld	a5,272(sp)
   1191c:	97ba                	add	a5,a5,a4
   1191e:	ea3e                	sd	a5,272(sp)
   11920:	10812783          	lw	a5,264(sp)
   11924:	0017871b          	addiw	a4,a5,1
   11928:	10e12423          	sw	a4,264(sp)
   1192c:	479d                	li	a5,7
   1192e:	00e7da63          	ble	a4,a5,11942 <_vfprintf_r+0xffa>
   11932:	0210                	addi	a2,sp,256
   11934:	85ca                	mv	a1,s2
   11936:	854e                	mv	a0,s3
   11938:	39d040ef          	jal	ra,164d4 <__sprint_r>
   1193c:	56051763          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11940:	8356                	mv	t1,s5
   11942:	4b6e                	lw	s6,216(sp)
   11944:	040b5663          	bgez	s6,11990 <_vfprintf_r+0x1048>
   11948:	6c69                	lui	s8,0x1a
   1194a:	41600b3b          	negw	s6,s6
   1194e:	879a                	mv	a5,t1
   11950:	4d41                	li	s10,16
   11952:	cf8c0c13          	addi	s8,s8,-776 # 19cf8 <zeroes.4441>
   11956:	4c9d                	li	s9,7
   11958:	10812683          	lw	a3,264(sp)
   1195c:	0187b023          	sd	s8,0(a5)
   11960:	6752                	ld	a4,272(sp)
   11962:	0016861b          	addiw	a2,a3,1
   11966:	86b2                	mv	a3,a2
   11968:	0341                	addi	t1,t1,16
   1196a:	056d4763          	blt	s10,s6,119b8 <_vfprintf_r+0x1070>
   1196e:	0167b423          	sd	s6,8(a5)
   11972:	9b3a                	add	s6,s6,a4
   11974:	ea5a                	sd	s6,272(sp)
   11976:	10c12423          	sw	a2,264(sp)
   1197a:	479d                	li	a5,7
   1197c:	00c7da63          	ble	a2,a5,11990 <_vfprintf_r+0x1048>
   11980:	0210                	addi	a2,sp,256
   11982:	85ca                	mv	a1,s2
   11984:	854e                	mv	a0,s3
   11986:	34f040ef          	jal	ra,164d4 <__sprint_r>
   1198a:	52051063          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   1198e:	8356                	mv	t1,s5
   11990:	67d2                	ld	a5,272(sp)
   11992:	00933023          	sd	s1,0(t1) # 0 <main-0x100b0>
   11996:	01433423          	sd	s4,8(t1)
   1199a:	97d2                	add	a5,a5,s4
   1199c:	ea3e                	sd	a5,272(sp)
   1199e:	10812783          	lw	a5,264(sp)
   119a2:	01030c93          	addi	s9,t1,16
   119a6:	0017871b          	addiw	a4,a5,1
   119aa:	10e12423          	sw	a4,264(sp)
   119ae:	479d                	li	a5,7
   119b0:	eae7d7e3          	ble	a4,a5,1185e <_vfprintf_r+0xf16>
   119b4:	ce6ff06f          	j	10e9a <_vfprintf_r+0x552>
   119b8:	0741                	addi	a4,a4,16
   119ba:	01a7b423          	sd	s10,8(a5)
   119be:	ea3a                	sd	a4,272(sp)
   119c0:	10d12423          	sw	a3,264(sp)
   119c4:	00ccda63          	ble	a2,s9,119d8 <_vfprintf_r+0x1090>
   119c8:	0210                	addi	a2,sp,256
   119ca:	85ca                	mv	a1,s2
   119cc:	854e                	mv	a0,s3
   119ce:	307040ef          	jal	ra,164d4 <__sprint_r>
   119d2:	4c051c63          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   119d6:	8356                	mv	t1,s5
   119d8:	3b41                	addiw	s6,s6,-16
   119da:	879a                	mv	a5,t1
   119dc:	bfb5                	j	11958 <_vfprintf_r+0x1010>
   119de:	000d0b1b          	sext.w	s6,s10
   119e2:	01aa5463          	ble	s10,s4,119ea <_vfprintf_r+0x10a2>
   119e6:	000a0b1b          	sext.w	s6,s4
   119ea:	03605a63          	blez	s6,11a1e <_vfprintf_r+0x10d6>
   119ee:	975a                	add	a4,a4,s6
   119f0:	ea3a                	sd	a4,272(sp)
   119f2:	10812703          	lw	a4,264(sp)
   119f6:	009cb023          	sd	s1,0(s9)
   119fa:	016cb423          	sd	s6,8(s9)
   119fe:	0017069b          	addiw	a3,a4,1
   11a02:	10d12423          	sw	a3,264(sp)
   11a06:	471d                	li	a4,7
   11a08:	0cc1                	addi	s9,s9,16
   11a0a:	00d75a63          	ble	a3,a4,11a1e <_vfprintf_r+0x10d6>
   11a0e:	0210                	addi	a2,sp,256
   11a10:	85ca                	mv	a1,s2
   11a12:	854e                	mv	a0,s3
   11a14:	2c1040ef          	jal	ra,164d4 <__sprint_r>
   11a18:	48051963          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11a1c:	8cd6                	mv	s9,s5
   11a1e:	875a                	mv	a4,s6
   11a20:	000b5363          	bgez	s6,11a26 <_vfprintf_r+0x10de>
   11a24:	4701                	li	a4,0
   11a26:	40ed0b3b          	subw	s6,s10,a4
   11a2a:	05605563          	blez	s6,11a74 <_vfprintf_r+0x112c>
   11a2e:	66e9                	lui	a3,0x1a
   11a30:	4841                	li	a6,16
   11a32:	cf868d93          	addi	s11,a3,-776 # 19cf8 <zeroes.4441>
   11a36:	489d                	li	a7,7
   11a38:	10812603          	lw	a2,264(sp)
   11a3c:	01bcb023          	sd	s11,0(s9)
   11a40:	6752                	ld	a4,272(sp)
   11a42:	0016059b          	addiw	a1,a2,1
   11a46:	862e                	mv	a2,a1
   11a48:	010c8513          	addi	a0,s9,16
   11a4c:	15684263          	blt	a6,s6,11b90 <_vfprintf_r+0x1248>
   11a50:	016cb423          	sd	s6,8(s9)
   11a54:	9b3a                	add	s6,s6,a4
   11a56:	ea5a                	sd	s6,272(sp)
   11a58:	10b12423          	sw	a1,264(sp)
   11a5c:	471d                	li	a4,7
   11a5e:	8caa                	mv	s9,a0
   11a60:	00b75a63          	ble	a1,a4,11a74 <_vfprintf_r+0x112c>
   11a64:	0210                	addi	a2,sp,256
   11a66:	85ca                	mv	a1,s2
   11a68:	854e                	mv	a0,s3
   11a6a:	26b040ef          	jal	ra,164d4 <__sprint_r>
   11a6e:	42051e63          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11a72:	8cd6                	mv	s9,s5
   11a74:	40047793          	andi	a5,s0,1024
   11a78:	01a48b33          	add	s6,s1,s10
   11a7c:	c39d                	beqz	a5,11aa2 <_vfprintf_r+0x115a>
   11a7e:	014487b3          	add	a5,s1,s4
   11a82:	f4be                	sd	a5,104(sp)
   11a84:	67e9                	lui	a5,0x1a
   11a86:	cf878793          	addi	a5,a5,-776 # 19cf8 <zeroes.4441>
   11a8a:	4d9d                	li	s11,7
   11a8c:	8d3e                	mv	s10,a5
   11a8e:	67a2                	ld	a5,8(sp)
   11a90:	120c1763          	bnez	s8,11bbe <_vfprintf_r+0x1276>
   11a94:	12079663          	bnez	a5,11bc0 <_vfprintf_r+0x1278>
   11a98:	014487b3          	add	a5,s1,s4
   11a9c:	0167f363          	bleu	s6,a5,11aa2 <_vfprintf_r+0x115a>
   11aa0:	8b3e                	mv	s6,a5
   11aa2:	47ee                	lw	a5,216(sp)
   11aa4:	0147c563          	blt	a5,s4,11aae <_vfprintf_r+0x1166>
   11aa8:	00147793          	andi	a5,s0,1
   11aac:	cf8d                	beqz	a5,11ae6 <_vfprintf_r+0x119e>
   11aae:	67a6                	ld	a5,72(sp)
   11ab0:	6762                	ld	a4,24(sp)
   11ab2:	0cc1                	addi	s9,s9,16
   11ab4:	fefcb823          	sd	a5,-16(s9)
   11ab8:	67e2                	ld	a5,24(sp)
   11aba:	fefcbc23          	sd	a5,-8(s9)
   11abe:	67d2                	ld	a5,272(sp)
   11ac0:	97ba                	add	a5,a5,a4
   11ac2:	ea3e                	sd	a5,272(sp)
   11ac4:	10812783          	lw	a5,264(sp)
   11ac8:	0017871b          	addiw	a4,a5,1
   11acc:	10e12423          	sw	a4,264(sp)
   11ad0:	479d                	li	a5,7
   11ad2:	00e7da63          	ble	a4,a5,11ae6 <_vfprintf_r+0x119e>
   11ad6:	0210                	addi	a2,sp,256
   11ad8:	85ca                	mv	a1,s2
   11ada:	854e                	mv	a0,s3
   11adc:	1f9040ef          	jal	ra,164d4 <__sprint_r>
   11ae0:	3c051563          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11ae4:	8cd6                	mv	s9,s5
   11ae6:	4c6e                	lw	s8,216(sp)
   11ae8:	94d2                	add	s1,s1,s4
   11aea:	416484bb          	subw	s1,s1,s6
   11aee:	418a07bb          	subw	a5,s4,s8
   11af2:	8c3e                	mv	s8,a5
   11af4:	00f4d463          	ble	a5,s1,11afc <_vfprintf_r+0x11b4>
   11af8:	00048c1b          	sext.w	s8,s1
   11afc:	03805b63          	blez	s8,11b32 <_vfprintf_r+0x11ea>
   11b00:	67d2                	ld	a5,272(sp)
   11b02:	016cb023          	sd	s6,0(s9)
   11b06:	018cb423          	sd	s8,8(s9)
   11b0a:	97e2                	add	a5,a5,s8
   11b0c:	ea3e                	sd	a5,272(sp)
   11b0e:	10812783          	lw	a5,264(sp)
   11b12:	0cc1                	addi	s9,s9,16
   11b14:	0017871b          	addiw	a4,a5,1
   11b18:	10e12423          	sw	a4,264(sp)
   11b1c:	479d                	li	a5,7
   11b1e:	00e7da63          	ble	a4,a5,11b32 <_vfprintf_r+0x11ea>
   11b22:	0210                	addi	a2,sp,256
   11b24:	85ca                	mv	a1,s2
   11b26:	854e                	mv	a0,s3
   11b28:	1ad040ef          	jal	ra,164d4 <__sprint_r>
   11b2c:	36051f63          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11b30:	8cd6                	mv	s9,s5
   11b32:	87e2                	mv	a5,s8
   11b34:	000c5363          	bgez	s8,11b3a <_vfprintf_r+0x11f2>
   11b38:	4781                	li	a5,0
   11b3a:	44ee                	lw	s1,216(sp)
   11b3c:	409a04bb          	subw	s1,s4,s1
   11b40:	9c9d                	subw	s1,s1,a5
   11b42:	d0905ee3          	blez	s1,1185e <_vfprintf_r+0xf16>
   11b46:	6b69                	lui	s6,0x1a
   11b48:	4c41                	li	s8,16
   11b4a:	cf8b0b13          	addi	s6,s6,-776 # 19cf8 <zeroes.4441>
   11b4e:	4d1d                	li	s10,7
   11b50:	10812703          	lw	a4,264(sp)
   11b54:	016cb023          	sd	s6,0(s9)
   11b58:	67d2                	ld	a5,272(sp)
   11b5a:	0017069b          	addiw	a3,a4,1
   11b5e:	8736                	mv	a4,a3
   11b60:	010c8613          	addi	a2,s9,16
   11b64:	169c4f63          	blt	s8,s1,11ce2 <_vfprintf_r+0x139a>
   11b68:	009cb423          	sd	s1,8(s9)
   11b6c:	94be                	add	s1,s1,a5
   11b6e:	ea26                	sd	s1,272(sp)
   11b70:	10d12423          	sw	a3,264(sp)
   11b74:	479d                	li	a5,7
   11b76:	8cb2                	mv	s9,a2
   11b78:	ced7d3e3          	ble	a3,a5,1185e <_vfprintf_r+0xf16>
   11b7c:	0210                	addi	a2,sp,256
   11b7e:	85ca                	mv	a1,s2
   11b80:	854e                	mv	a0,s3
   11b82:	153040ef          	jal	ra,164d4 <__sprint_r>
   11b86:	32051263          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11b8a:	18010c93          	addi	s9,sp,384
   11b8e:	b9c1                	j	1185e <_vfprintf_r+0xf16>
   11b90:	0741                	addi	a4,a4,16
   11b92:	010cb423          	sd	a6,8(s9)
   11b96:	ea3a                	sd	a4,272(sp)
   11b98:	10c12423          	sw	a2,264(sp)
   11b9c:	00b8de63          	ble	a1,a7,11bb8 <_vfprintf_r+0x1270>
   11ba0:	0210                	addi	a2,sp,256
   11ba2:	85ca                	mv	a1,s2
   11ba4:	854e                	mv	a0,s3
   11ba6:	f8c6                	sd	a7,112(sp)
   11ba8:	f4c2                	sd	a6,104(sp)
   11baa:	12b040ef          	jal	ra,164d4 <__sprint_r>
   11bae:	2e051e63          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11bb2:	78c6                	ld	a7,112(sp)
   11bb4:	7826                	ld	a6,104(sp)
   11bb6:	8556                	mv	a0,s5
   11bb8:	3b41                	addiw	s6,s6,-16
   11bba:	8caa                	mv	s9,a0
   11bbc:	bdb5                	j	11a38 <_vfprintf_r+0x10f0>
   11bbe:	c7d5                	beqz	a5,11c6a <_vfprintf_r+0x1322>
   11bc0:	47a2                	lw	a5,8(sp)
   11bc2:	37fd                	addiw	a5,a5,-1
   11bc4:	e43e                	sd	a5,8(sp)
   11bc6:	67c6                	ld	a5,80(sp)
   11bc8:	6706                	ld	a4,64(sp)
   11bca:	0cc1                	addi	s9,s9,16
   11bcc:	fefcb823          	sd	a5,-16(s9)
   11bd0:	6786                	ld	a5,64(sp)
   11bd2:	fefcbc23          	sd	a5,-8(s9)
   11bd6:	67d2                	ld	a5,272(sp)
   11bd8:	97ba                	add	a5,a5,a4
   11bda:	ea3e                	sd	a5,272(sp)
   11bdc:	10812783          	lw	a5,264(sp)
   11be0:	0017871b          	addiw	a4,a5,1
   11be4:	10e12423          	sw	a4,264(sp)
   11be8:	00edda63          	ble	a4,s11,11bfc <_vfprintf_r+0x12b4>
   11bec:	0210                	addi	a2,sp,256
   11bee:	85ca                	mv	a1,s2
   11bf0:	854e                	mv	a0,s3
   11bf2:	0e3040ef          	jal	ra,164d4 <__sprint_r>
   11bf6:	2a051a63          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11bfa:	8cd6                	mv	s9,s5
   11bfc:	6702                	ld	a4,0(sp)
   11bfe:	57a6                	lw	a5,104(sp)
   11c00:	00074703          	lbu	a4,0(a4)
   11c04:	416787bb          	subw	a5,a5,s6
   11c08:	00e7d463          	ble	a4,a5,11c10 <_vfprintf_r+0x12c8>
   11c0c:	0007871b          	sext.w	a4,a5
   11c10:	02e05d63          	blez	a4,11c4a <_vfprintf_r+0x1302>
   11c14:	67d2                	ld	a5,272(sp)
   11c16:	016cb023          	sd	s6,0(s9)
   11c1a:	00ecb423          	sd	a4,8(s9)
   11c1e:	97ba                	add	a5,a5,a4
   11c20:	ea3e                	sd	a5,272(sp)
   11c22:	10812783          	lw	a5,264(sp)
   11c26:	0cc1                	addi	s9,s9,16
   11c28:	0017869b          	addiw	a3,a5,1
   11c2c:	10d12423          	sw	a3,264(sp)
   11c30:	00dddd63          	ble	a3,s11,11c4a <_vfprintf_r+0x1302>
   11c34:	0210                	addi	a2,sp,256
   11c36:	85ca                	mv	a1,s2
   11c38:	854e                	mv	a0,s3
   11c3a:	f8ba                	sd	a4,112(sp)
   11c3c:	099040ef          	jal	ra,164d4 <__sprint_r>
   11c40:	26051563          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11c44:	7746                	ld	a4,112(sp)
   11c46:	18010c93          	addi	s9,sp,384
   11c4a:	86ba                	mv	a3,a4
   11c4c:	00075363          	bgez	a4,11c52 <_vfprintf_r+0x130a>
   11c50:	4681                	li	a3,0
   11c52:	6782                	ld	a5,0(sp)
   11c54:	4841                	li	a6,16
   11c56:	0007c783          	lbu	a5,0(a5)
   11c5a:	9f95                	subw	a5,a5,a3
   11c5c:	04f04463          	bgtz	a5,11ca4 <_vfprintf_r+0x135c>
   11c60:	6782                	ld	a5,0(sp)
   11c62:	0007c783          	lbu	a5,0(a5)
   11c66:	9b3e                	add	s6,s6,a5
   11c68:	b51d                	j	11a8e <_vfprintf_r+0x1146>
   11c6a:	6782                	ld	a5,0(sp)
   11c6c:	3c7d                	addiw	s8,s8,-1
   11c6e:	17fd                	addi	a5,a5,-1
   11c70:	e03e                	sd	a5,0(sp)
   11c72:	bf91                	j	11bc6 <_vfprintf_r+0x127e>
   11c74:	0741                	addi	a4,a4,16
   11c76:	01acb023          	sd	s10,0(s9)
   11c7a:	010cb423          	sd	a6,8(s9)
   11c7e:	ea3a                	sd	a4,272(sp)
   11c80:	10d12423          	sw	a3,264(sp)
   11c84:	00cdde63          	ble	a2,s11,11ca0 <_vfprintf_r+0x1358>
   11c88:	0210                	addi	a2,sp,256
   11c8a:	85ca                	mv	a1,s2
   11c8c:	854e                	mv	a0,s3
   11c8e:	fcc2                	sd	a6,120(sp)
   11c90:	f8be                	sd	a5,112(sp)
   11c92:	043040ef          	jal	ra,164d4 <__sprint_r>
   11c96:	20051a63          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11c9a:	7866                	ld	a6,120(sp)
   11c9c:	77c6                	ld	a5,112(sp)
   11c9e:	030c                	addi	a1,sp,384
   11ca0:	37c1                	addiw	a5,a5,-16
   11ca2:	8cae                	mv	s9,a1
   11ca4:	10812683          	lw	a3,264(sp)
   11ca8:	6752                	ld	a4,272(sp)
   11caa:	010c8593          	addi	a1,s9,16
   11cae:	0016861b          	addiw	a2,a3,1
   11cb2:	86b2                	mv	a3,a2
   11cb4:	fcf840e3          	blt	a6,a5,11c74 <_vfprintf_r+0x132c>
   11cb8:	00fcb423          	sd	a5,8(s9)
   11cbc:	97ba                	add	a5,a5,a4
   11cbe:	01acb023          	sd	s10,0(s9)
   11cc2:	ea3e                	sd	a5,272(sp)
   11cc4:	10c12423          	sw	a2,264(sp)
   11cc8:	8cae                	mv	s9,a1
   11cca:	f8cddbe3          	ble	a2,s11,11c60 <_vfprintf_r+0x1318>
   11cce:	0210                	addi	a2,sp,256
   11cd0:	85ca                	mv	a1,s2
   11cd2:	854e                	mv	a0,s3
   11cd4:	001040ef          	jal	ra,164d4 <__sprint_r>
   11cd8:	1c051963          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11cdc:	18010c93          	addi	s9,sp,384
   11ce0:	b741                	j	11c60 <_vfprintf_r+0x1318>
   11ce2:	07c1                	addi	a5,a5,16
   11ce4:	018cb423          	sd	s8,8(s9)
   11ce8:	ea3e                	sd	a5,272(sp)
   11cea:	10e12423          	sw	a4,264(sp)
   11cee:	00dd5a63          	ble	a3,s10,11d02 <_vfprintf_r+0x13ba>
   11cf2:	0210                	addi	a2,sp,256
   11cf4:	85ca                	mv	a1,s2
   11cf6:	854e                	mv	a0,s3
   11cf8:	7dc040ef          	jal	ra,164d4 <__sprint_r>
   11cfc:	1a051763          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11d00:	0310                	addi	a2,sp,384
   11d02:	34c1                	addiw	s1,s1,-16
   11d04:	8cb2                	mv	s9,a2
   11d06:	b5a9                	j	11b50 <_vfprintf_r+0x1208>
   11d08:	10812783          	lw	a5,264(sp)
   11d0c:	4605                	li	a2,1
   11d0e:	009cb023          	sd	s1,0(s9)
   11d12:	0017869b          	addiw	a3,a5,1
   11d16:	0705                	addi	a4,a4,1
   11d18:	87b6                	mv	a5,a3
   11d1a:	010c8c13          	addi	s8,s9,16
   11d1e:	01464663          	blt	a2,s4,11d2a <_vfprintf_r+0x13e2>
   11d22:	00147593          	andi	a1,s0,1
   11d26:	12058663          	beqz	a1,11e52 <_vfprintf_r+0x150a>
   11d2a:	4605                	li	a2,1
   11d2c:	10f12423          	sw	a5,264(sp)
   11d30:	00ccb423          	sd	a2,8(s9)
   11d34:	ea3a                	sd	a4,272(sp)
   11d36:	479d                	li	a5,7
   11d38:	00d7da63          	ble	a3,a5,11d4c <_vfprintf_r+0x1404>
   11d3c:	0210                	addi	a2,sp,256
   11d3e:	85ca                	mv	a1,s2
   11d40:	854e                	mv	a0,s3
   11d42:	792040ef          	jal	ra,164d4 <__sprint_r>
   11d46:	16051263          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11d4a:	8c56                	mv	s8,s5
   11d4c:	67a6                	ld	a5,72(sp)
   11d4e:	6762                	ld	a4,24(sp)
   11d50:	0c41                	addi	s8,s8,16
   11d52:	fefc3823          	sd	a5,-16(s8)
   11d56:	67e2                	ld	a5,24(sp)
   11d58:	fefc3c23          	sd	a5,-8(s8)
   11d5c:	67d2                	ld	a5,272(sp)
   11d5e:	97ba                	add	a5,a5,a4
   11d60:	ea3e                	sd	a5,272(sp)
   11d62:	10812783          	lw	a5,264(sp)
   11d66:	0017871b          	addiw	a4,a5,1
   11d6a:	10e12423          	sw	a4,264(sp)
   11d6e:	479d                	li	a5,7
   11d70:	00e7da63          	ble	a4,a5,11d84 <_vfprintf_r+0x143c>
   11d74:	0210                	addi	a2,sp,256
   11d76:	85ca                	mv	a1,s2
   11d78:	854e                	mv	a0,s3
   11d7a:	75a040ef          	jal	ra,164d4 <__sprint_r>
   11d7e:	12051663          	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11d82:	8c56                	mv	s8,s5
   11d84:	754e                	ld	a0,240(sp)
   11d86:	75ee                	ld	a1,248(sp)
   11d88:	4601                	li	a2,0
   11d8a:	4681                	li	a3,0
   11d8c:	fffa0b1b          	addiw	s6,s4,-1
   11d90:	0b9060ef          	jal	ra,18648 <__eqtf2>
   11d94:	c12d                	beqz	a0,11df6 <_vfprintf_r+0x14ae>
   11d96:	10812703          	lw	a4,264(sp)
   11d9a:	67d2                	ld	a5,272(sp)
   11d9c:	0485                	addi	s1,s1,1
   11d9e:	0017069b          	addiw	a3,a4,1
   11da2:	97da                	add	a5,a5,s6
   11da4:	009c3023          	sd	s1,0(s8)
   11da8:	016c3423          	sd	s6,8(s8)
   11dac:	ea3e                	sd	a5,272(sp)
   11dae:	10d12423          	sw	a3,264(sp)
   11db2:	479d                	li	a5,7
   11db4:	0c41                	addi	s8,s8,16
   11db6:	00d7d963          	ble	a3,a5,11dc8 <_vfprintf_r+0x1480>
   11dba:	0210                	addi	a2,sp,256
   11dbc:	85ca                	mv	a1,s2
   11dbe:	854e                	mv	a0,s3
   11dc0:	714040ef          	jal	ra,164d4 <__sprint_r>
   11dc4:	e17d                	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11dc6:	8c56                	mv	s8,s5
   11dc8:	119c                	addi	a5,sp,224
   11dca:	00fc3023          	sd	a5,0(s8)
   11dce:	67e6                	ld	a5,88(sp)
   11dd0:	6766                	ld	a4,88(sp)
   11dd2:	010c0c93          	addi	s9,s8,16
   11dd6:	00fc3423          	sd	a5,8(s8)
   11dda:	67d2                	ld	a5,272(sp)
   11ddc:	97ba                	add	a5,a5,a4
   11dde:	ea3e                	sd	a5,272(sp)
   11de0:	10812783          	lw	a5,264(sp)
   11de4:	0017871b          	addiw	a4,a5,1
   11de8:	10e12423          	sw	a4,264(sp)
   11dec:	479d                	li	a5,7
   11dee:	a6e7d8e3          	ble	a4,a5,1185e <_vfprintf_r+0xf16>
   11df2:	8a8ff06f          	j	10e9a <_vfprintf_r+0x552>
   11df6:	fd6059e3          	blez	s6,11dc8 <_vfprintf_r+0x1480>
   11dfa:	64e9                	lui	s1,0x1a
   11dfc:	4d41                	li	s10,16
   11dfe:	cf848493          	addi	s1,s1,-776 # 19cf8 <zeroes.4441>
   11e02:	4c9d                	li	s9,7
   11e04:	10812703          	lw	a4,264(sp)
   11e08:	009c3023          	sd	s1,0(s8)
   11e0c:	67d2                	ld	a5,272(sp)
   11e0e:	0017069b          	addiw	a3,a4,1
   11e12:	8736                	mv	a4,a3
   11e14:	010c0613          	addi	a2,s8,16
   11e18:	016d4b63          	blt	s10,s6,11e2e <_vfprintf_r+0x14e6>
   11e1c:	97da                	add	a5,a5,s6
   11e1e:	016c3423          	sd	s6,8(s8)
   11e22:	ea3e                	sd	a5,272(sp)
   11e24:	10d12423          	sw	a3,264(sp)
   11e28:	479d                	li	a5,7
   11e2a:	8c32                	mv	s8,a2
   11e2c:	b769                	j	11db6 <_vfprintf_r+0x146e>
   11e2e:	07c1                	addi	a5,a5,16
   11e30:	01ac3423          	sd	s10,8(s8)
   11e34:	ea3e                	sd	a5,272(sp)
   11e36:	10e12423          	sw	a4,264(sp)
   11e3a:	00dcd963          	ble	a3,s9,11e4c <_vfprintf_r+0x1504>
   11e3e:	0210                	addi	a2,sp,256
   11e40:	85ca                	mv	a1,s2
   11e42:	854e                	mv	a0,s3
   11e44:	690040ef          	jal	ra,164d4 <__sprint_r>
   11e48:	e12d                	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11e4a:	8656                	mv	a2,s5
   11e4c:	3b41                	addiw	s6,s6,-16
   11e4e:	8c32                	mv	s8,a2
   11e50:	bf55                	j	11e04 <_vfprintf_r+0x14bc>
   11e52:	00ccb423          	sd	a2,8(s9)
   11e56:	ea3a                	sd	a4,272(sp)
   11e58:	10d12423          	sw	a3,264(sp)
   11e5c:	479d                	li	a5,7
   11e5e:	bfa1                	j	11db6 <_vfprintf_r+0x146e>
   11e60:	5782                	lw	a5,32(sp)
   11e62:	5762                	lw	a4,56(sp)
   11e64:	40e7843b          	subw	s0,a5,a4
   11e68:	9e805ee3          	blez	s0,11864 <_vfprintf_r+0xf1c>
   11e6c:	64e9                	lui	s1,0x1a
   11e6e:	4b41                	li	s6,16
   11e70:	ce848493          	addi	s1,s1,-792 # 19ce8 <blanks.4440>
   11e74:	4c1d                	li	s8,7
   11e76:	10812703          	lw	a4,264(sp)
   11e7a:	009cb023          	sd	s1,0(s9)
   11e7e:	67d2                	ld	a5,272(sp)
   11e80:	0017069b          	addiw	a3,a4,1
   11e84:	8736                	mv	a4,a3
   11e86:	028b4a63          	blt	s6,s0,11eba <_vfprintf_r+0x1572>
   11e8a:	008cb423          	sd	s0,8(s9)
   11e8e:	943e                	add	s0,s0,a5
   11e90:	ea22                	sd	s0,272(sp)
   11e92:	10d12423          	sw	a3,264(sp)
   11e96:	479d                	li	a5,7
   11e98:	9cd7d6e3          	ble	a3,a5,11864 <_vfprintf_r+0xf1c>
   11e9c:	0210                	addi	a2,sp,256
   11e9e:	85ca                	mv	a1,s2
   11ea0:	854e                	mv	a0,s3
   11ea2:	632040ef          	jal	ra,164d4 <__sprint_r>
   11ea6:	9a050fe3          	beqz	a0,11864 <_vfprintf_r+0xf1c>
   11eaa:	960b8663          	beqz	s7,11016 <_vfprintf_r+0x6ce>
   11eae:	85de                	mv	a1,s7
   11eb0:	854e                	mv	a0,s3
   11eb2:	71c000ef          	jal	ra,125ce <_free_r>
   11eb6:	960ff06f          	j	11016 <_vfprintf_r+0x6ce>
   11eba:	07c1                	addi	a5,a5,16
   11ebc:	016cb423          	sd	s6,8(s9)
   11ec0:	ea3e                	sd	a5,272(sp)
   11ec2:	10e12423          	sw	a4,264(sp)
   11ec6:	0cc1                	addi	s9,s9,16
   11ec8:	00dc5963          	ble	a3,s8,11eda <_vfprintf_r+0x1592>
   11ecc:	0210                	addi	a2,sp,256
   11ece:	85ca                	mv	a1,s2
   11ed0:	854e                	mv	a0,s3
   11ed2:	602040ef          	jal	ra,164d4 <__sprint_r>
   11ed6:	f971                	bnez	a0,11eaa <_vfprintf_r+0x1562>
   11ed8:	8cd6                	mv	s9,s5
   11eda:	3441                	addiw	s0,s0,-16
   11edc:	bf69                	j	11e76 <_vfprintf_r+0x152e>
   11ede:	85de                	mv	a1,s7
   11ee0:	854e                	mv	a0,s3
   11ee2:	6ec000ef          	jal	ra,125ce <_free_r>
   11ee6:	b26d                	j	11890 <_vfprintf_r+0xf48>
   11ee8:	67d2                	ld	a5,272(sp)
   11eea:	92078663          	beqz	a5,11016 <_vfprintf_r+0x6ce>
   11eee:	0210                	addi	a2,sp,256
   11ef0:	85ca                	mv	a1,s2
   11ef2:	854e                	mv	a0,s3
   11ef4:	5e0040ef          	jal	ra,164d4 <__sprint_r>
   11ef8:	91eff06f          	j	11016 <_vfprintf_r+0x6ce>

0000000000011efc <vfprintf>:
   11efc:	86b2                	mv	a3,a2
   11efe:	862e                	mv	a2,a1
   11f00:	85aa                	mv	a1,a0
   11f02:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   11f06:	a43fe06f          	j	10948 <_vfprintf_r>

0000000000011f0a <__sbprintf>:
   11f0a:	0105d783          	lhu	a5,16(a1)
   11f0e:	b3010113          	addi	sp,sp,-1232
   11f12:	4c813023          	sd	s0,1216(sp)
   11f16:	9bf5                	andi	a5,a5,-3
   11f18:	00f11823          	sh	a5,16(sp)
   11f1c:	0ac5a783          	lw	a5,172(a1)
   11f20:	842e                	mv	s0,a1
   11f22:	4a913c23          	sd	s1,1208(sp)
   11f26:	d73e                	sw	a5,172(sp)
   11f28:	0125d783          	lhu	a5,18(a1)
   11f2c:	4b213823          	sd	s2,1200(sp)
   11f30:	4c113423          	sd	ra,1224(sp)
   11f34:	00f11923          	sh	a5,18(sp)
   11f38:	799c                	ld	a5,48(a1)
   11f3a:	892a                	mv	s2,a0
   11f3c:	d402                	sw	zero,40(sp)
   11f3e:	f83e                	sd	a5,48(sp)
   11f40:	61bc                	ld	a5,64(a1)
   11f42:	858a                	mv	a1,sp
   11f44:	e0be                	sd	a5,64(sp)
   11f46:	191c                	addi	a5,sp,176
   11f48:	e03e                	sd	a5,0(sp)
   11f4a:	ec3e                	sd	a5,24(sp)
   11f4c:	40000793          	li	a5,1024
   11f50:	c63e                	sw	a5,12(sp)
   11f52:	d03e                	sw	a5,32(sp)
   11f54:	9f5fe0ef          	jal	ra,10948 <_vfprintf_r>
   11f58:	84aa                	mv	s1,a0
   11f5a:	00054863          	bltz	a0,11f6a <__sbprintf+0x60>
   11f5e:	858a                	mv	a1,sp
   11f60:	854a                	mv	a0,s2
   11f62:	384000ef          	jal	ra,122e6 <_fflush_r>
   11f66:	c111                	beqz	a0,11f6a <__sbprintf+0x60>
   11f68:	54fd                	li	s1,-1
   11f6a:	01015783          	lhu	a5,16(sp)
   11f6e:	0407f793          	andi	a5,a5,64
   11f72:	c799                	beqz	a5,11f80 <__sbprintf+0x76>
   11f74:	01045783          	lhu	a5,16(s0)
   11f78:	0407e793          	ori	a5,a5,64
   11f7c:	00f41823          	sh	a5,16(s0)
   11f80:	4c813083          	ld	ra,1224(sp)
   11f84:	4c013403          	ld	s0,1216(sp)
   11f88:	8526                	mv	a0,s1
   11f8a:	4b013903          	ld	s2,1200(sp)
   11f8e:	4b813483          	ld	s1,1208(sp)
   11f92:	4d010113          	addi	sp,sp,1232
   11f96:	8082                	ret

0000000000011f98 <__swsetup_r>:
   11f98:	1101                	addi	sp,sp,-32
   11f9a:	e426                	sd	s1,8(sp)
   11f9c:	84aa                	mv	s1,a0
   11f9e:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   11fa2:	e822                	sd	s0,16(sp)
   11fa4:	ec06                	sd	ra,24(sp)
   11fa6:	842e                	mv	s0,a1
   11fa8:	c509                	beqz	a0,11fb2 <__swsetup_r+0x1a>
   11faa:	493c                	lw	a5,80(a0)
   11fac:	e399                	bnez	a5,11fb2 <__swsetup_r+0x1a>
   11fae:	450000ef          	jal	ra,123fe <__sinit>
   11fb2:	01041703          	lh	a4,16(s0)
   11fb6:	03071793          	slli	a5,a4,0x30
   11fba:	93c1                	srli	a5,a5,0x30
   11fbc:	0087f693          	andi	a3,a5,8
   11fc0:	eea9                	bnez	a3,1201a <__swsetup_r+0x82>
   11fc2:	0107f693          	andi	a3,a5,16
   11fc6:	ee89                	bnez	a3,11fe0 <__swsetup_r+0x48>
   11fc8:	47a5                	li	a5,9
   11fca:	c09c                	sw	a5,0(s1)
   11fcc:	04076713          	ori	a4,a4,64
   11fd0:	00e41823          	sh	a4,16(s0)
   11fd4:	557d                	li	a0,-1
   11fd6:	60e2                	ld	ra,24(sp)
   11fd8:	6442                	ld	s0,16(sp)
   11fda:	64a2                	ld	s1,8(sp)
   11fdc:	6105                	addi	sp,sp,32
   11fde:	8082                	ret
   11fe0:	8b91                	andi	a5,a5,4
   11fe2:	c795                	beqz	a5,1200e <__swsetup_r+0x76>
   11fe4:	6c2c                	ld	a1,88(s0)
   11fe6:	c991                	beqz	a1,11ffa <__swsetup_r+0x62>
   11fe8:	07440793          	addi	a5,s0,116
   11fec:	00f58563          	beq	a1,a5,11ff6 <__swsetup_r+0x5e>
   11ff0:	8526                	mv	a0,s1
   11ff2:	5dc000ef          	jal	ra,125ce <_free_r>
   11ff6:	04043c23          	sd	zero,88(s0)
   11ffa:	01045783          	lhu	a5,16(s0)
   11ffe:	00042423          	sw	zero,8(s0)
   12002:	fdb7f793          	andi	a5,a5,-37
   12006:	00f41823          	sh	a5,16(s0)
   1200a:	6c1c                	ld	a5,24(s0)
   1200c:	e01c                	sd	a5,0(s0)
   1200e:	01045783          	lhu	a5,16(s0)
   12012:	0087e793          	ori	a5,a5,8
   12016:	00f41823          	sh	a5,16(s0)
   1201a:	6c1c                	ld	a5,24(s0)
   1201c:	ef89                	bnez	a5,12036 <__swsetup_r+0x9e>
   1201e:	01045783          	lhu	a5,16(s0)
   12022:	20000713          	li	a4,512
   12026:	2807f793          	andi	a5,a5,640
   1202a:	00e78663          	beq	a5,a4,12036 <__swsetup_r+0x9e>
   1202e:	85a2                	mv	a1,s0
   12030:	8526                	mv	a0,s1
   12032:	03e020ef          	jal	ra,14070 <__smakebuf_r>
   12036:	01045783          	lhu	a5,16(s0)
   1203a:	0017f713          	andi	a4,a5,1
   1203e:	c705                	beqz	a4,12066 <__swsetup_r+0xce>
   12040:	501c                	lw	a5,32(s0)
   12042:	00042623          	sw	zero,12(s0)
   12046:	40f007bb          	negw	a5,a5
   1204a:	d41c                	sw	a5,40(s0)
   1204c:	6c1c                	ld	a5,24(s0)
   1204e:	4501                	li	a0,0
   12050:	f3d9                	bnez	a5,11fd6 <__swsetup_r+0x3e>
   12052:	01041783          	lh	a5,16(s0)
   12056:	0807f713          	andi	a4,a5,128
   1205a:	df35                	beqz	a4,11fd6 <__swsetup_r+0x3e>
   1205c:	0407e793          	ori	a5,a5,64
   12060:	00f41823          	sh	a5,16(s0)
   12064:	bf85                	j	11fd4 <__swsetup_r+0x3c>
   12066:	8b89                	andi	a5,a5,2
   12068:	4701                	li	a4,0
   1206a:	e391                	bnez	a5,1206e <__swsetup_r+0xd6>
   1206c:	5018                	lw	a4,32(s0)
   1206e:	c458                	sw	a4,12(s0)
   12070:	bff1                	j	1204c <__swsetup_r+0xb4>

0000000000012072 <__register_exitproc>:
   12072:	8281b703          	ld	a4,-2008(gp) # 1c9b0 <_global_impure_ptr>
   12076:	832a                	mv	t1,a0
   12078:	1f873783          	ld	a5,504(a4)
   1207c:	e789                	bnez	a5,12086 <__register_exitproc+0x14>
   1207e:	20070793          	addi	a5,a4,512
   12082:	1ef73c23          	sd	a5,504(a4)
   12086:	4798                	lw	a4,8(a5)
   12088:	487d                	li	a6,31
   1208a:	557d                	li	a0,-1
   1208c:	04e84463          	blt	a6,a4,120d4 <__register_exitproc+0x62>
   12090:	02030a63          	beqz	t1,120c4 <__register_exitproc+0x52>
   12094:	00371813          	slli	a6,a4,0x3
   12098:	983e                	add	a6,a6,a5
   1209a:	10c83823          	sd	a2,272(a6)
   1209e:	3107a883          	lw	a7,784(a5)
   120a2:	4605                	li	a2,1
   120a4:	00e6163b          	sllw	a2,a2,a4
   120a8:	00c8e8b3          	or	a7,a7,a2
   120ac:	3117a823          	sw	a7,784(a5)
   120b0:	20d83823          	sd	a3,528(a6)
   120b4:	4689                	li	a3,2
   120b6:	00d31763          	bne	t1,a3,120c4 <__register_exitproc+0x52>
   120ba:	3147a683          	lw	a3,788(a5)
   120be:	8e55                	or	a2,a2,a3
   120c0:	30c7aa23          	sw	a2,788(a5)
   120c4:	0017069b          	addiw	a3,a4,1
   120c8:	0709                	addi	a4,a4,2
   120ca:	070e                	slli	a4,a4,0x3
   120cc:	c794                	sw	a3,8(a5)
   120ce:	97ba                	add	a5,a5,a4
   120d0:	e38c                	sd	a1,0(a5)
   120d2:	4501                	li	a0,0
   120d4:	8082                	ret

00000000000120d6 <__call_exitprocs>:
   120d6:	715d                	addi	sp,sp,-80
   120d8:	f44e                	sd	s3,40(sp)
   120da:	8281b983          	ld	s3,-2008(gp) # 1c9b0 <_global_impure_ptr>
   120de:	f052                	sd	s4,32(sp)
   120e0:	ec56                	sd	s5,24(sp)
   120e2:	e85a                	sd	s6,16(sp)
   120e4:	e486                	sd	ra,72(sp)
   120e6:	e0a2                	sd	s0,64(sp)
   120e8:	fc26                	sd	s1,56(sp)
   120ea:	f84a                	sd	s2,48(sp)
   120ec:	e45e                	sd	s7,8(sp)
   120ee:	8aaa                	mv	s5,a0
   120f0:	8a2e                	mv	s4,a1
   120f2:	4b05                	li	s6,1
   120f4:	1f89b403          	ld	s0,504(s3)
   120f8:	c801                	beqz	s0,12108 <__call_exitprocs+0x32>
   120fa:	4404                	lw	s1,8(s0)
   120fc:	34fd                	addiw	s1,s1,-1
   120fe:	00349913          	slli	s2,s1,0x3
   12102:	9922                	add	s2,s2,s0
   12104:	0004dd63          	bgez	s1,1211e <__call_exitprocs+0x48>
   12108:	60a6                	ld	ra,72(sp)
   1210a:	6406                	ld	s0,64(sp)
   1210c:	74e2                	ld	s1,56(sp)
   1210e:	7942                	ld	s2,48(sp)
   12110:	79a2                	ld	s3,40(sp)
   12112:	7a02                	ld	s4,32(sp)
   12114:	6ae2                	ld	s5,24(sp)
   12116:	6b42                	ld	s6,16(sp)
   12118:	6ba2                	ld	s7,8(sp)
   1211a:	6161                	addi	sp,sp,80
   1211c:	8082                	ret
   1211e:	000a0963          	beqz	s4,12130 <__call_exitprocs+0x5a>
   12122:	21093783          	ld	a5,528(s2)
   12126:	01478563          	beq	a5,s4,12130 <__call_exitprocs+0x5a>
   1212a:	34fd                	addiw	s1,s1,-1
   1212c:	1961                	addi	s2,s2,-8
   1212e:	bfd9                	j	12104 <__call_exitprocs+0x2e>
   12130:	441c                	lw	a5,8(s0)
   12132:	01093683          	ld	a3,16(s2)
   12136:	37fd                	addiw	a5,a5,-1
   12138:	02979663          	bne	a5,s1,12164 <__call_exitprocs+0x8e>
   1213c:	c404                	sw	s1,8(s0)
   1213e:	d6f5                	beqz	a3,1212a <__call_exitprocs+0x54>
   12140:	31042703          	lw	a4,784(s0)
   12144:	009b163b          	sllw	a2,s6,s1
   12148:	00842b83          	lw	s7,8(s0)
   1214c:	8f71                	and	a4,a4,a2
   1214e:	2701                	sext.w	a4,a4
   12150:	ef09                	bnez	a4,1216a <__call_exitprocs+0x94>
   12152:	9682                	jalr	a3
   12154:	4418                	lw	a4,8(s0)
   12156:	1f89b783          	ld	a5,504(s3)
   1215a:	f9771de3          	bne	a4,s7,120f4 <__call_exitprocs+0x1e>
   1215e:	fcf406e3          	beq	s0,a5,1212a <__call_exitprocs+0x54>
   12162:	bf49                	j	120f4 <__call_exitprocs+0x1e>
   12164:	00093823          	sd	zero,16(s2)
   12168:	bfd9                	j	1213e <__call_exitprocs+0x68>
   1216a:	31442783          	lw	a5,788(s0)
   1216e:	11093583          	ld	a1,272(s2)
   12172:	8ff1                	and	a5,a5,a2
   12174:	2781                	sext.w	a5,a5
   12176:	e781                	bnez	a5,1217e <__call_exitprocs+0xa8>
   12178:	8556                	mv	a0,s5
   1217a:	9682                	jalr	a3
   1217c:	bfe1                	j	12154 <__call_exitprocs+0x7e>
   1217e:	852e                	mv	a0,a1
   12180:	9682                	jalr	a3
   12182:	bfc9                	j	12154 <__call_exitprocs+0x7e>

0000000000012184 <__sflush_r>:
   12184:	01059783          	lh	a5,16(a1)
   12188:	7179                	addi	sp,sp,-48
   1218a:	f022                	sd	s0,32(sp)
   1218c:	03079713          	slli	a4,a5,0x30
   12190:	9341                	srli	a4,a4,0x30
   12192:	ec26                	sd	s1,24(sp)
   12194:	f406                	sd	ra,40(sp)
   12196:	e84a                	sd	s2,16(sp)
   12198:	e44e                	sd	s3,8(sp)
   1219a:	00877693          	andi	a3,a4,8
   1219e:	84aa                	mv	s1,a0
   121a0:	842e                	mv	s0,a1
   121a2:	10069063          	bnez	a3,122a2 <__sflush_r+0x11e>
   121a6:	6705                	lui	a4,0x1
   121a8:	80070713          	addi	a4,a4,-2048 # 800 <main-0xf8b0>
   121ac:	8fd9                	or	a5,a5,a4
   121ae:	4598                	lw	a4,8(a1)
   121b0:	00f59823          	sh	a5,16(a1)
   121b4:	00e04d63          	bgtz	a4,121ce <__sflush_r+0x4a>
   121b8:	59b8                	lw	a4,112(a1)
   121ba:	00e04a63          	bgtz	a4,121ce <__sflush_r+0x4a>
   121be:	4501                	li	a0,0
   121c0:	70a2                	ld	ra,40(sp)
   121c2:	7402                	ld	s0,32(sp)
   121c4:	64e2                	ld	s1,24(sp)
   121c6:	6942                	ld	s2,16(sp)
   121c8:	69a2                	ld	s3,8(sp)
   121ca:	6145                	addi	sp,sp,48
   121cc:	8082                	ret
   121ce:	6438                	ld	a4,72(s0)
   121d0:	d77d                	beqz	a4,121be <__sflush_r+0x3a>
   121d2:	0004a903          	lw	s2,0(s1)
   121d6:	03379693          	slli	a3,a5,0x33
   121da:	0004a023          	sw	zero,0(s1)
   121de:	780c                	ld	a1,48(s0)
   121e0:	0806d863          	bgez	a3,12270 <__sflush_r+0xec>
   121e4:	6850                	ld	a2,144(s0)
   121e6:	01045783          	lhu	a5,16(s0)
   121ea:	8b91                	andi	a5,a5,4
   121ec:	c799                	beqz	a5,121fa <__sflush_r+0x76>
   121ee:	441c                	lw	a5,8(s0)
   121f0:	8e1d                	sub	a2,a2,a5
   121f2:	6c3c                	ld	a5,88(s0)
   121f4:	c399                	beqz	a5,121fa <__sflush_r+0x76>
   121f6:	583c                	lw	a5,112(s0)
   121f8:	8e1d                	sub	a2,a2,a5
   121fa:	643c                	ld	a5,72(s0)
   121fc:	780c                	ld	a1,48(s0)
   121fe:	4681                	li	a3,0
   12200:	8526                	mv	a0,s1
   12202:	9782                	jalr	a5
   12204:	57fd                	li	a5,-1
   12206:	01045683          	lhu	a3,16(s0)
   1220a:	00f51d63          	bne	a0,a5,12224 <__sflush_r+0xa0>
   1220e:	409c                	lw	a5,0(s1)
   12210:	4775                	li	a4,29
   12212:	08f76263          	bltu	a4,a5,12296 <__sflush_r+0x112>
   12216:	20400737          	lui	a4,0x20400
   1221a:	0705                	addi	a4,a4,1
   1221c:	00f75733          	srl	a4,a4,a5
   12220:	8b05                	andi	a4,a4,1
   12222:	cb35                	beqz	a4,12296 <__sflush_r+0x112>
   12224:	77fd                	lui	a5,0xfffff
   12226:	7ff78793          	addi	a5,a5,2047 # fffffffffffff7ff <__global_pointer$+0xfffffffffffe2677>
   1222a:	6c18                	ld	a4,24(s0)
   1222c:	8ff5                	and	a5,a5,a3
   1222e:	0107979b          	slliw	a5,a5,0x10
   12232:	4107d79b          	sraiw	a5,a5,0x10
   12236:	e018                	sd	a4,0(s0)
   12238:	00f41823          	sh	a5,16(s0)
   1223c:	00042423          	sw	zero,8(s0)
   12240:	03379713          	slli	a4,a5,0x33
   12244:	00075863          	bgez	a4,12254 <__sflush_r+0xd0>
   12248:	57fd                	li	a5,-1
   1224a:	00f51463          	bne	a0,a5,12252 <__sflush_r+0xce>
   1224e:	409c                	lw	a5,0(s1)
   12250:	e391                	bnez	a5,12254 <__sflush_r+0xd0>
   12252:	e848                	sd	a0,144(s0)
   12254:	6c2c                	ld	a1,88(s0)
   12256:	0124a023          	sw	s2,0(s1)
   1225a:	d1b5                	beqz	a1,121be <__sflush_r+0x3a>
   1225c:	07440793          	addi	a5,s0,116
   12260:	00f58563          	beq	a1,a5,1226a <__sflush_r+0xe6>
   12264:	8526                	mv	a0,s1
   12266:	368000ef          	jal	ra,125ce <_free_r>
   1226a:	04043c23          	sd	zero,88(s0)
   1226e:	bf81                	j	121be <__sflush_r+0x3a>
   12270:	4601                	li	a2,0
   12272:	4685                	li	a3,1
   12274:	8526                	mv	a0,s1
   12276:	9702                	jalr	a4
   12278:	57fd                	li	a5,-1
   1227a:	862a                	mv	a2,a0
   1227c:	f6f515e3          	bne	a0,a5,121e6 <__sflush_r+0x62>
   12280:	409c                	lw	a5,0(s1)
   12282:	d3b5                	beqz	a5,121e6 <__sflush_r+0x62>
   12284:	4775                	li	a4,29
   12286:	00e78563          	beq	a5,a4,12290 <__sflush_r+0x10c>
   1228a:	4759                	li	a4,22
   1228c:	04e79463          	bne	a5,a4,122d4 <__sflush_r+0x150>
   12290:	0124a023          	sw	s2,0(s1)
   12294:	b72d                	j	121be <__sflush_r+0x3a>
   12296:	0406e793          	ori	a5,a3,64
   1229a:	00f41823          	sh	a5,16(s0)
   1229e:	557d                	li	a0,-1
   122a0:	b705                	j	121c0 <__sflush_r+0x3c>
   122a2:	0185b983          	ld	s3,24(a1)
   122a6:	f0098ce3          	beqz	s3,121be <__sflush_r+0x3a>
   122aa:	0005b903          	ld	s2,0(a1)
   122ae:	8b0d                	andi	a4,a4,3
   122b0:	0135b023          	sd	s3,0(a1)
   122b4:	4139093b          	subw	s2,s2,s3
   122b8:	4781                	li	a5,0
   122ba:	e311                	bnez	a4,122be <__sflush_r+0x13a>
   122bc:	519c                	lw	a5,32(a1)
   122be:	c45c                	sw	a5,12(s0)
   122c0:	ef205fe3          	blez	s2,121be <__sflush_r+0x3a>
   122c4:	603c                	ld	a5,64(s0)
   122c6:	780c                	ld	a1,48(s0)
   122c8:	86ca                	mv	a3,s2
   122ca:	864e                	mv	a2,s3
   122cc:	8526                	mv	a0,s1
   122ce:	9782                	jalr	a5
   122d0:	00a04763          	bgtz	a0,122de <__sflush_r+0x15a>
   122d4:	01045783          	lhu	a5,16(s0)
   122d8:	0407e793          	ori	a5,a5,64
   122dc:	bf7d                	j	1229a <__sflush_r+0x116>
   122de:	99aa                	add	s3,s3,a0
   122e0:	40a9093b          	subw	s2,s2,a0
   122e4:	bff1                	j	122c0 <__sflush_r+0x13c>

00000000000122e6 <_fflush_r>:
   122e6:	1101                	addi	sp,sp,-32
   122e8:	e822                	sd	s0,16(sp)
   122ea:	ec06                	sd	ra,24(sp)
   122ec:	842a                	mv	s0,a0
   122ee:	c519                	beqz	a0,122fc <_fflush_r+0x16>
   122f0:	493c                	lw	a5,80(a0)
   122f2:	e789                	bnez	a5,122fc <_fflush_r+0x16>
   122f4:	e42e                	sd	a1,8(sp)
   122f6:	108000ef          	jal	ra,123fe <__sinit>
   122fa:	65a2                	ld	a1,8(sp)
   122fc:	01059783          	lh	a5,16(a1)
   12300:	c799                	beqz	a5,1230e <_fflush_r+0x28>
   12302:	8522                	mv	a0,s0
   12304:	6442                	ld	s0,16(sp)
   12306:	60e2                	ld	ra,24(sp)
   12308:	6105                	addi	sp,sp,32
   1230a:	e7bff06f          	j	12184 <__sflush_r>
   1230e:	60e2                	ld	ra,24(sp)
   12310:	6442                	ld	s0,16(sp)
   12312:	4501                	li	a0,0
   12314:	6105                	addi	sp,sp,32
   12316:	8082                	ret

0000000000012318 <fflush>:
   12318:	85aa                	mv	a1,a0
   1231a:	e909                	bnez	a0,1232c <fflush+0x14>
   1231c:	8281b503          	ld	a0,-2008(gp) # 1c9b0 <_global_impure_ptr>
   12320:	000125b7          	lui	a1,0x12
   12324:	2e658593          	addi	a1,a1,742 # 122e6 <_fflush_r>
   12328:	4bc0006f          	j	127e4 <_fwalk_reent>
   1232c:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   12330:	fb7ff06f          	j	122e6 <_fflush_r>

0000000000012334 <__fp_lock>:
   12334:	4501                	li	a0,0
   12336:	8082                	ret

0000000000012338 <_cleanup_r>:
   12338:	000175b7          	lui	a1,0x17
   1233c:	f8458593          	addi	a1,a1,-124 # 16f84 <_fclose_r>
   12340:	4a40006f          	j	127e4 <_fwalk_reent>

0000000000012344 <std.isra.0>:
   12344:	1141                	addi	sp,sp,-16
   12346:	e022                	sd	s0,0(sp)
   12348:	e406                	sd	ra,8(sp)
   1234a:	842a                	mv	s0,a0
   1234c:	00b51823          	sh	a1,16(a0)
   12350:	00c51923          	sh	a2,18(a0)
   12354:	00053023          	sd	zero,0(a0)
   12358:	00053423          	sd	zero,8(a0)
   1235c:	0a052623          	sw	zero,172(a0)
   12360:	00053c23          	sd	zero,24(a0)
   12364:	02052023          	sw	zero,32(a0)
   12368:	02052423          	sw	zero,40(a0)
   1236c:	4621                	li	a2,8
   1236e:	4581                	li	a1,0
   12370:	0a450513          	addi	a0,a0,164
   12374:	caefe0ef          	jal	ra,10822 <memset>
   12378:	000157b7          	lui	a5,0x15
   1237c:	d5678793          	addi	a5,a5,-682 # 14d56 <__sread>
   12380:	fc1c                	sd	a5,56(s0)
   12382:	000157b7          	lui	a5,0x15
   12386:	d8c78793          	addi	a5,a5,-628 # 14d8c <__swrite>
   1238a:	e03c                	sd	a5,64(s0)
   1238c:	000157b7          	lui	a5,0x15
   12390:	dde78793          	addi	a5,a5,-546 # 14dde <__sseek>
   12394:	e43c                	sd	a5,72(s0)
   12396:	000157b7          	lui	a5,0x15
   1239a:	e1678793          	addi	a5,a5,-490 # 14e16 <__sclose>
   1239e:	f800                	sd	s0,48(s0)
   123a0:	e83c                	sd	a5,80(s0)
   123a2:	60a2                	ld	ra,8(sp)
   123a4:	6402                	ld	s0,0(sp)
   123a6:	0141                	addi	sp,sp,16
   123a8:	8082                	ret

00000000000123aa <__fp_unlock>:
   123aa:	4501                	li	a0,0
   123ac:	8082                	ret

00000000000123ae <__sfmoreglue>:
   123ae:	1101                	addi	sp,sp,-32
   123b0:	e426                	sd	s1,8(sp)
   123b2:	0b000613          	li	a2,176
   123b6:	fff5849b          	addiw	s1,a1,-1
   123ba:	02c484b3          	mul	s1,s1,a2
   123be:	e04a                	sd	s2,0(sp)
   123c0:	892e                	mv	s2,a1
   123c2:	e822                	sd	s0,16(sp)
   123c4:	ec06                	sd	ra,24(sp)
   123c6:	0c848593          	addi	a1,s1,200
   123ca:	f79fd0ef          	jal	ra,10342 <_malloc_r>
   123ce:	842a                	mv	s0,a0
   123d0:	cd01                	beqz	a0,123e8 <__sfmoreglue+0x3a>
   123d2:	00053023          	sd	zero,0(a0)
   123d6:	01252423          	sw	s2,8(a0)
   123da:	0561                	addi	a0,a0,24
   123dc:	e808                	sd	a0,16(s0)
   123de:	0b048613          	addi	a2,s1,176
   123e2:	4581                	li	a1,0
   123e4:	c3efe0ef          	jal	ra,10822 <memset>
   123e8:	8522                	mv	a0,s0
   123ea:	60e2                	ld	ra,24(sp)
   123ec:	6442                	ld	s0,16(sp)
   123ee:	64a2                	ld	s1,8(sp)
   123f0:	6902                	ld	s2,0(sp)
   123f2:	6105                	addi	sp,sp,32
   123f4:	8082                	ret

00000000000123f6 <_cleanup>:
   123f6:	8281b503          	ld	a0,-2008(gp) # 1c9b0 <_global_impure_ptr>
   123fa:	f3fff06f          	j	12338 <_cleanup_r>

00000000000123fe <__sinit>:
   123fe:	493c                	lw	a5,80(a0)
   12400:	eba1                	bnez	a5,12450 <__sinit+0x52>
   12402:	1141                	addi	sp,sp,-16
   12404:	000127b7          	lui	a5,0x12
   12408:	e406                	sd	ra,8(sp)
   1240a:	e022                	sd	s0,0(sp)
   1240c:	33878793          	addi	a5,a5,824 # 12338 <_cleanup_r>
   12410:	ed3c                	sd	a5,88(a0)
   12412:	478d                	li	a5,3
   12414:	52f52423          	sw	a5,1320(a0)
   12418:	53850793          	addi	a5,a0,1336
   1241c:	842a                	mv	s0,a0
   1241e:	52f53823          	sd	a5,1328(a0)
   12422:	52053023          	sd	zero,1312(a0)
   12426:	6508                	ld	a0,8(a0)
   12428:	4601                	li	a2,0
   1242a:	4591                	li	a1,4
   1242c:	f19ff0ef          	jal	ra,12344 <std.isra.0>
   12430:	6808                	ld	a0,16(s0)
   12432:	4605                	li	a2,1
   12434:	45a5                	li	a1,9
   12436:	f0fff0ef          	jal	ra,12344 <std.isra.0>
   1243a:	6c08                	ld	a0,24(s0)
   1243c:	4609                	li	a2,2
   1243e:	45c9                	li	a1,18
   12440:	f05ff0ef          	jal	ra,12344 <std.isra.0>
   12444:	4785                	li	a5,1
   12446:	c83c                	sw	a5,80(s0)
   12448:	60a2                	ld	ra,8(sp)
   1244a:	6402                	ld	s0,0(sp)
   1244c:	0141                	addi	sp,sp,16
   1244e:	8082                	ret
   12450:	8082                	ret

0000000000012452 <__sfp>:
   12452:	1101                	addi	sp,sp,-32
   12454:	e426                	sd	s1,8(sp)
   12456:	8281b483          	ld	s1,-2008(gp) # 1c9b0 <_global_impure_ptr>
   1245a:	e04a                	sd	s2,0(sp)
   1245c:	ec06                	sd	ra,24(sp)
   1245e:	48bc                	lw	a5,80(s1)
   12460:	e822                	sd	s0,16(sp)
   12462:	892a                	mv	s2,a0
   12464:	e781                	bnez	a5,1246c <__sfp+0x1a>
   12466:	8526                	mv	a0,s1
   12468:	f97ff0ef          	jal	ra,123fe <__sinit>
   1246c:	52048493          	addi	s1,s1,1312
   12470:	6880                	ld	s0,16(s1)
   12472:	449c                	lw	a5,8(s1)
   12474:	37fd                	addiw	a5,a5,-1
   12476:	0007d663          	bgez	a5,12482 <__sfp+0x30>
   1247a:	609c                	ld	a5,0(s1)
   1247c:	cb89                	beqz	a5,1248e <__sfp+0x3c>
   1247e:	6084                	ld	s1,0(s1)
   12480:	bfc5                	j	12470 <__sfp+0x1e>
   12482:	01041703          	lh	a4,16(s0)
   12486:	c70d                	beqz	a4,124b0 <__sfp+0x5e>
   12488:	0b040413          	addi	s0,s0,176
   1248c:	b7e5                	j	12474 <__sfp+0x22>
   1248e:	4591                	li	a1,4
   12490:	854a                	mv	a0,s2
   12492:	f1dff0ef          	jal	ra,123ae <__sfmoreglue>
   12496:	e088                	sd	a0,0(s1)
   12498:	f17d                	bnez	a0,1247e <__sfp+0x2c>
   1249a:	47b1                	li	a5,12
   1249c:	00f92023          	sw	a5,0(s2)
   124a0:	4401                	li	s0,0
   124a2:	8522                	mv	a0,s0
   124a4:	60e2                	ld	ra,24(sp)
   124a6:	6442                	ld	s0,16(sp)
   124a8:	64a2                	ld	s1,8(sp)
   124aa:	6902                	ld	s2,0(sp)
   124ac:	6105                	addi	sp,sp,32
   124ae:	8082                	ret
   124b0:	77c1                	lui	a5,0xffff0
   124b2:	2785                	addiw	a5,a5,1
   124b4:	0a042623          	sw	zero,172(s0)
   124b8:	00043023          	sd	zero,0(s0)
   124bc:	00043423          	sd	zero,8(s0)
   124c0:	c81c                	sw	a5,16(s0)
   124c2:	00043c23          	sd	zero,24(s0)
   124c6:	02042023          	sw	zero,32(s0)
   124ca:	02042423          	sw	zero,40(s0)
   124ce:	4621                	li	a2,8
   124d0:	4581                	li	a1,0
   124d2:	0a440513          	addi	a0,s0,164
   124d6:	b4cfe0ef          	jal	ra,10822 <memset>
   124da:	04043c23          	sd	zero,88(s0)
   124de:	06042023          	sw	zero,96(s0)
   124e2:	06043c23          	sd	zero,120(s0)
   124e6:	08042023          	sw	zero,128(s0)
   124ea:	bf65                	j	124a2 <__sfp+0x50>

00000000000124ec <__sfp_lock_acquire>:
   124ec:	8082                	ret

00000000000124ee <__sfp_lock_release>:
   124ee:	8082                	ret

00000000000124f0 <__sinit_lock_acquire>:
   124f0:	8082                	ret

00000000000124f2 <__sinit_lock_release>:
   124f2:	8082                	ret

00000000000124f4 <__fp_lock_all>:
   124f4:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   124f8:	000125b7          	lui	a1,0x12
   124fc:	33458593          	addi	a1,a1,820 # 12334 <__fp_lock>
   12500:	2800006f          	j	12780 <_fwalk>

0000000000012504 <__fp_unlock_all>:
   12504:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   12508:	000125b7          	lui	a1,0x12
   1250c:	3aa58593          	addi	a1,a1,938 # 123aa <__fp_unlock>
   12510:	2700006f          	j	12780 <_fwalk>

0000000000012514 <_malloc_trim_r>:
   12514:	7139                	addi	sp,sp,-64
   12516:	f04a                	sd	s2,32(sp)
   12518:	6971                	lui	s2,0x1c
   1251a:	f822                	sd	s0,48(sp)
   1251c:	f426                	sd	s1,40(sp)
   1251e:	ec4e                	sd	s3,24(sp)
   12520:	e42e                	sd	a1,8(sp)
   12522:	fc06                	sd	ra,56(sp)
   12524:	89aa                	mv	s3,a0
   12526:	fd090913          	addi	s2,s2,-48 # 1bfd0 <__malloc_av_>
   1252a:	ba2fe0ef          	jal	ra,108cc <__malloc_lock>
   1252e:	01093783          	ld	a5,16(s2)
   12532:	65a2                	ld	a1,8(sp)
   12534:	6784                	ld	s1,8(a5)
   12536:	6785                	lui	a5,0x1
   12538:	fdf78413          	addi	s0,a5,-33 # fdf <main-0xf0d1>
   1253c:	98f1                	andi	s1,s1,-4
   1253e:	8c0d                	sub	s0,s0,a1
   12540:	9426                	add	s0,s0,s1
   12542:	8031                	srli	s0,s0,0xc
   12544:	147d                	addi	s0,s0,-1
   12546:	0432                	slli	s0,s0,0xc
   12548:	00f45d63          	ble	a5,s0,12562 <_malloc_trim_r+0x4e>
   1254c:	854e                	mv	a0,s3
   1254e:	b80fe0ef          	jal	ra,108ce <__malloc_unlock>
   12552:	4501                	li	a0,0
   12554:	70e2                	ld	ra,56(sp)
   12556:	7442                	ld	s0,48(sp)
   12558:	74a2                	ld	s1,40(sp)
   1255a:	7902                	ld	s2,32(sp)
   1255c:	69e2                	ld	s3,24(sp)
   1255e:	6121                	addi	sp,sp,64
   12560:	8082                	ret
   12562:	4581                	li	a1,0
   12564:	854e                	mv	a0,s3
   12566:	bb6fe0ef          	jal	ra,1091c <_sbrk_r>
   1256a:	01093783          	ld	a5,16(s2)
   1256e:	97a6                	add	a5,a5,s1
   12570:	fcf51ee3          	bne	a0,a5,1254c <_malloc_trim_r+0x38>
   12574:	408005b3          	neg	a1,s0
   12578:	854e                	mv	a0,s3
   1257a:	ba2fe0ef          	jal	ra,1091c <_sbrk_r>
   1257e:	57fd                	li	a5,-1
   12580:	02f51663          	bne	a0,a5,125ac <_malloc_trim_r+0x98>
   12584:	4581                	li	a1,0
   12586:	854e                	mv	a0,s3
   12588:	b94fe0ef          	jal	ra,1091c <_sbrk_r>
   1258c:	01093703          	ld	a4,16(s2)
   12590:	46fd                	li	a3,31
   12592:	40e507b3          	sub	a5,a0,a4
   12596:	faf6dbe3          	ble	a5,a3,1254c <_malloc_trim_r+0x38>
   1259a:	8381b683          	ld	a3,-1992(gp) # 1c9c0 <__malloc_sbrk_base>
   1259e:	0017e793          	ori	a5,a5,1
   125a2:	e71c                	sd	a5,8(a4)
   125a4:	8d15                	sub	a0,a0,a3
   125a6:	8aa1ac23          	sw	a0,-1864(gp) # 1ca40 <__malloc_current_mallinfo>
   125aa:	b74d                	j	1254c <_malloc_trim_r+0x38>
   125ac:	01093783          	ld	a5,16(s2)
   125b0:	8c81                	sub	s1,s1,s0
   125b2:	0014e493          	ori	s1,s1,1
   125b6:	e784                	sd	s1,8(a5)
   125b8:	8b81a783          	lw	a5,-1864(gp) # 1ca40 <__malloc_current_mallinfo>
   125bc:	854e                	mv	a0,s3
   125be:	4087843b          	subw	s0,a5,s0
   125c2:	8a81ac23          	sw	s0,-1864(gp) # 1ca40 <__malloc_current_mallinfo>
   125c6:	b08fe0ef          	jal	ra,108ce <__malloc_unlock>
   125ca:	4505                	li	a0,1
   125cc:	b761                	j	12554 <_malloc_trim_r+0x40>

00000000000125ce <_free_r>:
   125ce:	1a058863          	beqz	a1,1277e <_free_r+0x1b0>
   125d2:	1101                	addi	sp,sp,-32
   125d4:	e822                	sd	s0,16(sp)
   125d6:	e426                	sd	s1,8(sp)
   125d8:	842a                	mv	s0,a0
   125da:	84ae                	mv	s1,a1
   125dc:	ec06                	sd	ra,24(sp)
   125de:	aeefe0ef          	jal	ra,108cc <__malloc_lock>
   125e2:	ff84b503          	ld	a0,-8(s1)
   125e6:	6671                	lui	a2,0x1c
   125e8:	ff048693          	addi	a3,s1,-16
   125ec:	ffe57793          	andi	a5,a0,-2
   125f0:	fd060813          	addi	a6,a2,-48 # 1bfd0 <__malloc_av_>
   125f4:	00f685b3          	add	a1,a3,a5
   125f8:	6598                	ld	a4,8(a1)
   125fa:	01083803          	ld	a6,16(a6)
   125fe:	fd060613          	addi	a2,a2,-48
   12602:	9b71                	andi	a4,a4,-4
   12604:	8905                	andi	a0,a0,1
   12606:	04b81063          	bne	a6,a1,12646 <_free_r+0x78>
   1260a:	97ba                	add	a5,a5,a4
   1260c:	e909                	bnez	a0,1261e <_free_r+0x50>
   1260e:	ff04b703          	ld	a4,-16(s1)
   12612:	8e99                	sub	a3,a3,a4
   12614:	6a8c                	ld	a1,16(a3)
   12616:	97ba                	add	a5,a5,a4
   12618:	6e98                	ld	a4,24(a3)
   1261a:	ed98                	sd	a4,24(a1)
   1261c:	eb0c                	sd	a1,16(a4)
   1261e:	0017e713          	ori	a4,a5,1
   12622:	e698                	sd	a4,8(a3)
   12624:	8401b703          	ld	a4,-1984(gp) # 1c9c8 <__malloc_trim_threshold>
   12628:	ea14                	sd	a3,16(a2)
   1262a:	00e7e763          	bltu	a5,a4,12638 <_free_r+0x6a>
   1262e:	8581b583          	ld	a1,-1960(gp) # 1c9e0 <__malloc_top_pad>
   12632:	8522                	mv	a0,s0
   12634:	ee1ff0ef          	jal	ra,12514 <_malloc_trim_r>
   12638:	8522                	mv	a0,s0
   1263a:	6442                	ld	s0,16(sp)
   1263c:	60e2                	ld	ra,24(sp)
   1263e:	64a2                	ld	s1,8(sp)
   12640:	6105                	addi	sp,sp,32
   12642:	a8cfe06f          	j	108ce <__malloc_unlock>
   12646:	e598                	sd	a4,8(a1)
   12648:	4801                	li	a6,0
   1264a:	e10d                	bnez	a0,1266c <_free_r+0x9e>
   1264c:	ff04b503          	ld	a0,-16(s1)
   12650:	68f1                	lui	a7,0x1c
   12652:	fe088893          	addi	a7,a7,-32 # 1bfe0 <__malloc_av_+0x10>
   12656:	8e89                	sub	a3,a3,a0
   12658:	97aa                	add	a5,a5,a0
   1265a:	6a88                	ld	a0,16(a3)
   1265c:	07150e63          	beq	a0,a7,126d8 <_free_r+0x10a>
   12660:	0186b883          	ld	a7,24(a3)
   12664:	01153c23          	sd	a7,24(a0)
   12668:	00a8b823          	sd	a0,16(a7)
   1266c:	00e58533          	add	a0,a1,a4
   12670:	6508                	ld	a0,8(a0)
   12672:	8905                	andi	a0,a0,1
   12674:	ed19                	bnez	a0,12692 <_free_r+0xc4>
   12676:	97ba                	add	a5,a5,a4
   12678:	6998                	ld	a4,16(a1)
   1267a:	06081163          	bnez	a6,126dc <_free_r+0x10e>
   1267e:	6571                	lui	a0,0x1c
   12680:	fe050513          	addi	a0,a0,-32 # 1bfe0 <__malloc_av_+0x10>
   12684:	04a71c63          	bne	a4,a0,126dc <_free_r+0x10e>
   12688:	f614                	sd	a3,40(a2)
   1268a:	f214                	sd	a3,32(a2)
   1268c:	ee98                	sd	a4,24(a3)
   1268e:	ea98                	sd	a4,16(a3)
   12690:	4805                	li	a6,1
   12692:	0017e713          	ori	a4,a5,1
   12696:	e698                	sd	a4,8(a3)
   12698:	00f68733          	add	a4,a3,a5
   1269c:	e31c                	sd	a5,0(a4)
   1269e:	f8081de3          	bnez	a6,12638 <_free_r+0x6a>
   126a2:	1ff00713          	li	a4,511
   126a6:	02f76f63          	bltu	a4,a5,126e4 <_free_r+0x116>
   126aa:	838d                	srli	a5,a5,0x3
   126ac:	2781                	sext.w	a5,a5
   126ae:	4027d59b          	sraiw	a1,a5,0x2
   126b2:	4705                	li	a4,1
   126b4:	00b71733          	sll	a4,a4,a1
   126b8:	2785                	addiw	a5,a5,1
   126ba:	660c                	ld	a1,8(a2)
   126bc:	0017979b          	slliw	a5,a5,0x1
   126c0:	078e                	slli	a5,a5,0x3
   126c2:	97b2                	add	a5,a5,a2
   126c4:	8f4d                	or	a4,a4,a1
   126c6:	e618                	sd	a4,8(a2)
   126c8:	6398                	ld	a4,0(a5)
   126ca:	ff078613          	addi	a2,a5,-16
   126ce:	ee90                	sd	a2,24(a3)
   126d0:	ea98                	sd	a4,16(a3)
   126d2:	e394                	sd	a3,0(a5)
   126d4:	ef14                	sd	a3,24(a4)
   126d6:	b78d                	j	12638 <_free_r+0x6a>
   126d8:	4805                	li	a6,1
   126da:	bf49                	j	1266c <_free_r+0x9e>
   126dc:	6d8c                	ld	a1,24(a1)
   126de:	ef0c                	sd	a1,24(a4)
   126e0:	e998                	sd	a4,16(a1)
   126e2:	bf45                	j	12692 <_free_r+0xc4>
   126e4:	0097d593          	srli	a1,a5,0x9
   126e8:	4711                	li	a4,4
   126ea:	02b76e63          	bltu	a4,a1,12726 <_free_r+0x158>
   126ee:	0067d713          	srli	a4,a5,0x6
   126f2:	0387071b          	addiw	a4,a4,56
   126f6:	0017059b          	addiw	a1,a4,1
   126fa:	0015959b          	slliw	a1,a1,0x1
   126fe:	058e                	slli	a1,a1,0x3
   12700:	95b2                	add	a1,a1,a2
   12702:	ff058513          	addi	a0,a1,-16
   12706:	618c                	ld	a1,0(a1)
   12708:	06b51563          	bne	a0,a1,12772 <_free_r+0x1a4>
   1270c:	4785                	li	a5,1
   1270e:	4027571b          	sraiw	a4,a4,0x2
   12712:	00e79733          	sll	a4,a5,a4
   12716:	661c                	ld	a5,8(a2)
   12718:	8f5d                	or	a4,a4,a5
   1271a:	e618                	sd	a4,8(a2)
   1271c:	ee88                	sd	a0,24(a3)
   1271e:	ea8c                	sd	a1,16(a3)
   12720:	e914                	sd	a3,16(a0)
   12722:	ed94                	sd	a3,24(a1)
   12724:	bf11                	j	12638 <_free_r+0x6a>
   12726:	4751                	li	a4,20
   12728:	00b76563          	bltu	a4,a1,12732 <_free_r+0x164>
   1272c:	05b5871b          	addiw	a4,a1,91
   12730:	b7d9                	j	126f6 <_free_r+0x128>
   12732:	05400713          	li	a4,84
   12736:	00b76763          	bltu	a4,a1,12744 <_free_r+0x176>
   1273a:	00c7d713          	srli	a4,a5,0xc
   1273e:	06e7071b          	addiw	a4,a4,110
   12742:	bf55                	j	126f6 <_free_r+0x128>
   12744:	15400713          	li	a4,340
   12748:	00b76763          	bltu	a4,a1,12756 <_free_r+0x188>
   1274c:	00f7d713          	srli	a4,a5,0xf
   12750:	0777071b          	addiw	a4,a4,119
   12754:	b74d                	j	126f6 <_free_r+0x128>
   12756:	55400513          	li	a0,1364
   1275a:	07e00713          	li	a4,126
   1275e:	f8b56ce3          	bltu	a0,a1,126f6 <_free_r+0x128>
   12762:	0127d713          	srli	a4,a5,0x12
   12766:	07c7071b          	addiw	a4,a4,124
   1276a:	b771                	j	126f6 <_free_r+0x128>
   1276c:	698c                	ld	a1,16(a1)
   1276e:	00b50663          	beq	a0,a1,1277a <_free_r+0x1ac>
   12772:	6598                	ld	a4,8(a1)
   12774:	9b71                	andi	a4,a4,-4
   12776:	fee7ebe3          	bltu	a5,a4,1276c <_free_r+0x19e>
   1277a:	6d88                	ld	a0,24(a1)
   1277c:	b745                	j	1271c <_free_r+0x14e>
   1277e:	8082                	ret

0000000000012780 <_fwalk>:
   12780:	715d                	addi	sp,sp,-80
   12782:	e0a2                	sd	s0,64(sp)
   12784:	fc26                	sd	s1,56(sp)
   12786:	f052                	sd	s4,32(sp)
   12788:	ec56                	sd	s5,24(sp)
   1278a:	e486                	sd	ra,72(sp)
   1278c:	f84a                	sd	s2,48(sp)
   1278e:	f44e                	sd	s3,40(sp)
   12790:	52050493          	addi	s1,a0,1312
   12794:	4401                	li	s0,0
   12796:	4a05                	li	s4,1
   12798:	5afd                	li	s5,-1
   1279a:	e899                	bnez	s1,127b0 <_fwalk+0x30>
   1279c:	8522                	mv	a0,s0
   1279e:	60a6                	ld	ra,72(sp)
   127a0:	6406                	ld	s0,64(sp)
   127a2:	74e2                	ld	s1,56(sp)
   127a4:	7942                	ld	s2,48(sp)
   127a6:	79a2                	ld	s3,40(sp)
   127a8:	7a02                	ld	s4,32(sp)
   127aa:	6ae2                	ld	s5,24(sp)
   127ac:	6161                	addi	sp,sp,80
   127ae:	8082                	ret
   127b0:	0104b903          	ld	s2,16(s1)
   127b4:	0084a983          	lw	s3,8(s1)
   127b8:	39fd                	addiw	s3,s3,-1
   127ba:	0009d463          	bgez	s3,127c2 <_fwalk+0x42>
   127be:	6084                	ld	s1,0(s1)
   127c0:	bfe9                	j	1279a <_fwalk+0x1a>
   127c2:	01095783          	lhu	a5,16(s2)
   127c6:	00fa7c63          	bleu	a5,s4,127de <_fwalk+0x5e>
   127ca:	01291783          	lh	a5,18(s2)
   127ce:	01578863          	beq	a5,s5,127de <_fwalk+0x5e>
   127d2:	854a                	mv	a0,s2
   127d4:	e42e                	sd	a1,8(sp)
   127d6:	9582                	jalr	a1
   127d8:	65a2                	ld	a1,8(sp)
   127da:	8c49                	or	s0,s0,a0
   127dc:	2401                	sext.w	s0,s0
   127de:	0b090913          	addi	s2,s2,176
   127e2:	bfd9                	j	127b8 <_fwalk+0x38>

00000000000127e4 <_fwalk_reent>:
   127e4:	715d                	addi	sp,sp,-80
   127e6:	e0a2                	sd	s0,64(sp)
   127e8:	fc26                	sd	s1,56(sp)
   127ea:	f052                	sd	s4,32(sp)
   127ec:	ec56                	sd	s5,24(sp)
   127ee:	e85a                	sd	s6,16(sp)
   127f0:	e45e                	sd	s7,8(sp)
   127f2:	e486                	sd	ra,72(sp)
   127f4:	f84a                	sd	s2,48(sp)
   127f6:	f44e                	sd	s3,40(sp)
   127f8:	8a2a                	mv	s4,a0
   127fa:	8aae                	mv	s5,a1
   127fc:	52050493          	addi	s1,a0,1312
   12800:	4401                	li	s0,0
   12802:	4b05                	li	s6,1
   12804:	5bfd                	li	s7,-1
   12806:	ec89                	bnez	s1,12820 <_fwalk_reent+0x3c>
   12808:	8522                	mv	a0,s0
   1280a:	60a6                	ld	ra,72(sp)
   1280c:	6406                	ld	s0,64(sp)
   1280e:	74e2                	ld	s1,56(sp)
   12810:	7942                	ld	s2,48(sp)
   12812:	79a2                	ld	s3,40(sp)
   12814:	7a02                	ld	s4,32(sp)
   12816:	6ae2                	ld	s5,24(sp)
   12818:	6b42                	ld	s6,16(sp)
   1281a:	6ba2                	ld	s7,8(sp)
   1281c:	6161                	addi	sp,sp,80
   1281e:	8082                	ret
   12820:	0104b903          	ld	s2,16(s1)
   12824:	0084a983          	lw	s3,8(s1)
   12828:	39fd                	addiw	s3,s3,-1
   1282a:	0009d463          	bgez	s3,12832 <_fwalk_reent+0x4e>
   1282e:	6084                	ld	s1,0(s1)
   12830:	bfd9                	j	12806 <_fwalk_reent+0x22>
   12832:	01095783          	lhu	a5,16(s2)
   12836:	00fb7b63          	bleu	a5,s6,1284c <_fwalk_reent+0x68>
   1283a:	01291783          	lh	a5,18(s2)
   1283e:	01778763          	beq	a5,s7,1284c <_fwalk_reent+0x68>
   12842:	85ca                	mv	a1,s2
   12844:	8552                	mv	a0,s4
   12846:	9a82                	jalr	s5
   12848:	8c49                	or	s0,s0,a0
   1284a:	2401                	sext.w	s0,s0
   1284c:	0b090913          	addi	s2,s2,176
   12850:	bfe1                	j	12828 <_fwalk_reent+0x44>

0000000000012852 <eclear>:
   12852:	01450793          	addi	a5,a0,20
   12856:	0509                	addi	a0,a0,2
   12858:	fe051f23          	sh	zero,-2(a0)
   1285c:	fef51de3          	bne	a0,a5,12856 <eclear+0x4>
   12860:	8082                	ret

0000000000012862 <emov>:
   12862:	01450793          	addi	a5,a0,20
   12866:	0509                	addi	a0,a0,2
   12868:	ffe55703          	lhu	a4,-2(a0)
   1286c:	0589                	addi	a1,a1,2
   1286e:	fee59f23          	sh	a4,-2(a1)
   12872:	fea79ae3          	bne	a5,a0,12866 <emov+0x4>
   12876:	8082                	ret

0000000000012878 <ecleaz>:
   12878:	01a50793          	addi	a5,a0,26
   1287c:	0509                	addi	a0,a0,2
   1287e:	fe051f23          	sh	zero,-2(a0)
   12882:	fef51de3          	bne	a0,a5,1287c <ecleaz+0x4>
   12886:	8082                	ret

0000000000012888 <emovz>:
   12888:	01850713          	addi	a4,a0,24
   1288c:	87ae                	mv	a5,a1
   1288e:	0509                	addi	a0,a0,2
   12890:	ffe55683          	lhu	a3,-2(a0)
   12894:	0789                	addi	a5,a5,2
   12896:	fed79f23          	sh	a3,-2(a5)
   1289a:	fea71ae3          	bne	a4,a0,1288e <emovz+0x6>
   1289e:	00059c23          	sh	zero,24(a1)
   128a2:	8082                	ret

00000000000128a4 <ecmpm>:
   128a4:	00450793          	addi	a5,a0,4
   128a8:	0591                	addi	a1,a1,4
   128aa:	0569                	addi	a0,a0,26
   128ac:	0789                	addi	a5,a5,2
   128ae:	0589                	addi	a1,a1,2
   128b0:	ffe7d683          	lhu	a3,-2(a5)
   128b4:	ffe5d703          	lhu	a4,-2(a1)
   128b8:	00e69663          	bne	a3,a4,128c4 <ecmpm+0x20>
   128bc:	fef518e3          	bne	a0,a5,128ac <ecmpm+0x8>
   128c0:	4501                	li	a0,0
   128c2:	8082                	ret
   128c4:	4505                	li	a0,1
   128c6:	00d76363          	bltu	a4,a3,128cc <ecmpm+0x28>
   128ca:	557d                	li	a0,-1
   128cc:	8082                	ret

00000000000128ce <eshdn1>:
   128ce:	00450693          	addi	a3,a0,4
   128d2:	4781                	li	a5,0
   128d4:	0569                	addi	a0,a0,26
   128d6:	7661                	lui	a2,0xffff8
   128d8:	0006d703          	lhu	a4,0(a3)
   128dc:	00177593          	andi	a1,a4,1
   128e0:	c199                	beqz	a1,128e6 <eshdn1+0x18>
   128e2:	0017e793          	ori	a5,a5,1
   128e6:	0027f593          	andi	a1,a5,2
   128ea:	8305                	srli	a4,a4,0x1
   128ec:	e999                	bnez	a1,12902 <eshdn1+0x34>
   128ee:	0017979b          	slliw	a5,a5,0x1
   128f2:	00e69023          	sh	a4,0(a3)
   128f6:	17c2                	slli	a5,a5,0x30
   128f8:	0689                	addi	a3,a3,2
   128fa:	93c1                	srli	a5,a5,0x30
   128fc:	fcd51ee3          	bne	a0,a3,128d8 <eshdn1+0xa>
   12900:	8082                	ret
   12902:	8f51                	or	a4,a4,a2
   12904:	b7ed                	j	128ee <eshdn1+0x20>

0000000000012906 <eshup1>:
   12906:	01650693          	addi	a3,a0,22
   1290a:	4701                	li	a4,0
   1290c:	0026d783          	lhu	a5,2(a3)
   12910:	0107961b          	slliw	a2,a5,0x10
   12914:	4106561b          	sraiw	a2,a2,0x10
   12918:	00065463          	bgez	a2,12920 <eshup1+0x1a>
   1291c:	00176713          	ori	a4,a4,1
   12920:	0017979b          	slliw	a5,a5,0x1
   12924:	17c2                	slli	a5,a5,0x30
   12926:	00277613          	andi	a2,a4,2
   1292a:	93c1                	srli	a5,a5,0x30
   1292c:	ea19                	bnez	a2,12942 <eshup1+0x3c>
   1292e:	0017171b          	slliw	a4,a4,0x1
   12932:	00f69123          	sh	a5,2(a3)
   12936:	1742                	slli	a4,a4,0x30
   12938:	16f9                	addi	a3,a3,-2
   1293a:	9341                	srli	a4,a4,0x30
   1293c:	fcd518e3          	bne	a0,a3,1290c <eshup1+0x6>
   12940:	8082                	ret
   12942:	0017e793          	ori	a5,a5,1
   12946:	b7e5                	j	1292e <eshup1+0x28>

0000000000012948 <eshdn8>:
   12948:	00450793          	addi	a5,a0,4
   1294c:	4701                	li	a4,0
   1294e:	0569                	addi	a0,a0,26
   12950:	0007d683          	lhu	a3,0(a5)
   12954:	0789                	addi	a5,a5,2
   12956:	0086d61b          	srliw	a2,a3,0x8
   1295a:	8f51                	or	a4,a4,a2
   1295c:	fee79f23          	sh	a4,-2(a5)
   12960:	0086971b          	slliw	a4,a3,0x8
   12964:	1742                	slli	a4,a4,0x30
   12966:	9341                	srli	a4,a4,0x30
   12968:	fef514e3          	bne	a0,a5,12950 <eshdn8+0x8>
   1296c:	8082                	ret

000000000001296e <eshup8>:
   1296e:	01650793          	addi	a5,a0,22
   12972:	4701                	li	a4,0
   12974:	0027d683          	lhu	a3,2(a5)
   12978:	17f9                	addi	a5,a5,-2
   1297a:	00869613          	slli	a2,a3,0x8
   1297e:	8f51                	or	a4,a4,a2
   12980:	00e79223          	sh	a4,4(a5)
   12984:	0086d713          	srli	a4,a3,0x8
   12988:	fef516e3          	bne	a0,a5,12974 <eshup8+0x6>
   1298c:	8082                	ret

000000000001298e <eshup6>:
   1298e:	00450793          	addi	a5,a0,4
   12992:	01850713          	addi	a4,a0,24
   12996:	0789                	addi	a5,a5,2
   12998:	0007d683          	lhu	a3,0(a5)
   1299c:	fed79f23          	sh	a3,-2(a5)
   129a0:	fef71be3          	bne	a4,a5,12996 <eshup6+0x8>
   129a4:	00051c23          	sh	zero,24(a0)
   129a8:	8082                	ret

00000000000129aa <eshdn6>:
   129aa:	01850793          	addi	a5,a0,24
   129ae:	01a50713          	addi	a4,a0,26
   129b2:	00450693          	addi	a3,a0,4
   129b6:	17f9                	addi	a5,a5,-2
   129b8:	0007d603          	lhu	a2,0(a5)
   129bc:	1779                	addi	a4,a4,-2
   129be:	00c71023          	sh	a2,0(a4) # 20400000 <__global_pointer$+0x203e2e78>
   129c2:	fef69ae3          	bne	a3,a5,129b6 <eshdn6+0xc>
   129c6:	00051223          	sh	zero,4(a0)
   129ca:	8082                	ret

00000000000129cc <eaddm>:
   129cc:	05e1                	addi	a1,a1,24
   129ce:	01650713          	addi	a4,a0,22
   129d2:	4681                	li	a3,0
   129d4:	0005d783          	lhu	a5,0(a1)
   129d8:	1779                	addi	a4,a4,-2
   129da:	15f9                	addi	a1,a1,-2
   129dc:	97b6                	add	a5,a5,a3
   129de:	00475683          	lhu	a3,4(a4)
   129e2:	97b6                	add	a5,a5,a3
   129e4:	00f59123          	sh	a5,2(a1)
   129e8:	83c1                	srli	a5,a5,0x10
   129ea:	0017f693          	andi	a3,a5,1
   129ee:	fee513e3          	bne	a0,a4,129d4 <eaddm+0x8>
   129f2:	8082                	ret

00000000000129f4 <esubm>:
   129f4:	05e1                	addi	a1,a1,24
   129f6:	01650713          	addi	a4,a0,22
   129fa:	4681                	li	a3,0
   129fc:	0005d783          	lhu	a5,0(a1)
   12a00:	00275603          	lhu	a2,2(a4)
   12a04:	1779                	addi	a4,a4,-2
   12a06:	15f9                	addi	a1,a1,-2
   12a08:	8f91                	sub	a5,a5,a2
   12a0a:	8f95                	sub	a5,a5,a3
   12a0c:	00f59123          	sh	a5,2(a1)
   12a10:	83c1                	srli	a5,a5,0x10
   12a12:	0017f693          	andi	a3,a5,1
   12a16:	fee513e3          	bne	a0,a4,129fc <esubm+0x8>
   12a1a:	8082                	ret

0000000000012a1c <m16m>:
   12a1c:	1101                	addi	sp,sp,-32
   12a1e:	6341                	lui	t1,0x10
   12a20:	01858893          	addi	a7,a1,24
   12a24:	00011b23          	sh	zero,22(sp)
   12a28:	00011c23          	sh	zero,24(sp)
   12a2c:	0591                	addi	a1,a1,4
   12a2e:	0834                	addi	a3,sp,24
   12a30:	137d                	addi	t1,t1,-1
   12a32:	0008d703          	lhu	a4,0(a7)
   12a36:	16f9                	addi	a3,a3,-2
   12a38:	18f9                	addi	a7,a7,-2
   12a3a:	e705                	bnez	a4,12a62 <m16m+0x46>
   12a3c:	fe069f23          	sh	zero,-2(a3)
   12a40:	ff1599e3          	bne	a1,a7,12a32 <m16m+0x16>
   12a44:	4791                	li	a5,4
   12a46:	4769                	li	a4,26
   12a48:	00f105b3          	add	a1,sp,a5
   12a4c:	0005d583          	lhu	a1,0(a1)
   12a50:	00f606b3          	add	a3,a2,a5
   12a54:	0789                	addi	a5,a5,2
   12a56:	00b69023          	sh	a1,0(a3)
   12a5a:	fee797e3          	bne	a5,a4,12a48 <m16m+0x2c>
   12a5e:	6105                	addi	sp,sp,32
   12a60:	8082                	ret
   12a62:	02a70733          	mul	a4,a4,a0
   12a66:	0026d803          	lhu	a6,2(a3)
   12a6a:	006777b3          	and	a5,a4,t1
   12a6e:	97c2                	add	a5,a5,a6
   12a70:	0107d813          	srli	a6,a5,0x10
   12a74:	00f69123          	sh	a5,2(a3)
   12a78:	01075793          	srli	a5,a4,0x10
   12a7c:	0006d703          	lhu	a4,0(a3)
   12a80:	97ba                	add	a5,a5,a4
   12a82:	97c2                	add	a5,a5,a6
   12a84:	00f69023          	sh	a5,0(a3)
   12a88:	83c1                	srli	a5,a5,0x10
   12a8a:	fef69f23          	sh	a5,-2(a3)
   12a8e:	bf4d                	j	12a40 <m16m+0x24>

0000000000012a90 <eisnan>:
   12a90:	01255783          	lhu	a5,18(a0)
   12a94:	fff7c793          	not	a5,a5
   12a98:	03179713          	slli	a4,a5,0x31
   12a9c:	eb09                	bnez	a4,12aae <eisnan+0x1e>
   12a9e:	01250793          	addi	a5,a0,18
   12aa2:	0509                	addi	a0,a0,2
   12aa4:	ffe55703          	lhu	a4,-2(a0)
   12aa8:	e709                	bnez	a4,12ab2 <eisnan+0x22>
   12aaa:	fea79ce3          	bne	a5,a0,12aa2 <eisnan+0x12>
   12aae:	4501                	li	a0,0
   12ab0:	8082                	ret
   12ab2:	4505                	li	a0,1
   12ab4:	8082                	ret

0000000000012ab6 <eisneg>:
   12ab6:	1141                	addi	sp,sp,-16
   12ab8:	e022                	sd	s0,0(sp)
   12aba:	e406                	sd	ra,8(sp)
   12abc:	842a                	mv	s0,a0
   12abe:	fd3ff0ef          	jal	ra,12a90 <eisnan>
   12ac2:	e901                	bnez	a0,12ad2 <eisneg+0x1c>
   12ac4:	01344503          	lbu	a0,19(s0)
   12ac8:	811d                	srli	a0,a0,0x7
   12aca:	60a2                	ld	ra,8(sp)
   12acc:	6402                	ld	s0,0(sp)
   12ace:	0141                	addi	sp,sp,16
   12ad0:	8082                	ret
   12ad2:	4501                	li	a0,0
   12ad4:	bfdd                	j	12aca <eisneg+0x14>

0000000000012ad6 <emovi>:
   12ad6:	01251783          	lh	a5,18(a0)
   12ada:	1101                	addi	sp,sp,-32
   12adc:	ec06                	sd	ra,24(sp)
   12ade:	e822                	sd	s0,16(sp)
   12ae0:	e426                	sd	s1,8(sp)
   12ae2:	e04a                	sd	s2,0(sp)
   12ae4:	0407d963          	bgez	a5,12b36 <emovi+0x60>
   12ae8:	57fd                	li	a5,-1
   12aea:	00f59023          	sh	a5,0(a1)
   12aee:	01255703          	lhu	a4,18(a0)
   12af2:	67a1                	lui	a5,0x8
   12af4:	17fd                	addi	a5,a5,-1
   12af6:	8f7d                	and	a4,a4,a5
   12af8:	00e59123          	sh	a4,2(a1)
   12afc:	01050913          	addi	s2,a0,16
   12b00:	04f71863          	bne	a4,a5,12b50 <emovi+0x7a>
   12b04:	842e                	mv	s0,a1
   12b06:	84aa                	mv	s1,a0
   12b08:	f89ff0ef          	jal	ra,12a90 <eisnan>
   12b0c:	c905                	beqz	a0,12b3c <emovi+0x66>
   12b0e:	00640793          	addi	a5,s0,6
   12b12:	00041223          	sh	zero,4(s0)
   12b16:	ffc48513          	addi	a0,s1,-4
   12b1a:	1979                	addi	s2,s2,-2
   12b1c:	00295703          	lhu	a4,2(s2)
   12b20:	0789                	addi	a5,a5,2
   12b22:	fee79f23          	sh	a4,-2(a5) # 7ffe <main-0x80b2>
   12b26:	fea91ae3          	bne	s2,a0,12b1a <emovi+0x44>
   12b2a:	60e2                	ld	ra,24(sp)
   12b2c:	6442                	ld	s0,16(sp)
   12b2e:	64a2                	ld	s1,8(sp)
   12b30:	6902                	ld	s2,0(sp)
   12b32:	6105                	addi	sp,sp,32
   12b34:	8082                	ret
   12b36:	00059023          	sh	zero,0(a1)
   12b3a:	bf55                	j	12aee <emovi+0x18>
   12b3c:	00440793          	addi	a5,s0,4
   12b40:	01a40593          	addi	a1,s0,26
   12b44:	0789                	addi	a5,a5,2
   12b46:	fe079f23          	sh	zero,-2(a5)
   12b4a:	feb79de3          	bne	a5,a1,12b44 <emovi+0x6e>
   12b4e:	bff1                	j	12b2a <emovi+0x54>
   12b50:	00658793          	addi	a5,a1,6
   12b54:	00059223          	sh	zero,4(a1)
   12b58:	1579                	addi	a0,a0,-2
   12b5a:	1979                	addi	s2,s2,-2
   12b5c:	00295703          	lhu	a4,2(s2)
   12b60:	0789                	addi	a5,a5,2
   12b62:	fee79f23          	sh	a4,-2(a5)
   12b66:	fea91ae3          	bne	s2,a0,12b5a <emovi+0x84>
   12b6a:	00059c23          	sh	zero,24(a1)
   12b6e:	bf75                	j	12b2a <emovi+0x54>

0000000000012b70 <ecmp>:
   12b70:	711d                	addi	sp,sp,-96
   12b72:	e4a6                	sd	s1,72(sp)
   12b74:	e0ca                	sd	s2,64(sp)
   12b76:	ec86                	sd	ra,88(sp)
   12b78:	e8a2                	sd	s0,80(sp)
   12b7a:	892a                	mv	s2,a0
   12b7c:	84ae                	mv	s1,a1
   12b7e:	f13ff0ef          	jal	ra,12a90 <eisnan>
   12b82:	e559                	bnez	a0,12c10 <ecmp+0xa0>
   12b84:	8526                	mv	a0,s1
   12b86:	f0bff0ef          	jal	ra,12a90 <eisnan>
   12b8a:	842a                	mv	s0,a0
   12b8c:	e151                	bnez	a0,12c10 <ecmp+0xa0>
   12b8e:	858a                	mv	a1,sp
   12b90:	854a                	mv	a0,s2
   12b92:	f45ff0ef          	jal	ra,12ad6 <emovi>
   12b96:	100c                	addi	a1,sp,32
   12b98:	8526                	mv	a0,s1
   12b9a:	f3dff0ef          	jal	ra,12ad6 <emovi>
   12b9e:	00015703          	lhu	a4,0(sp)
   12ba2:	02015783          	lhu	a5,32(sp)
   12ba6:	02e78c63          	beq	a5,a4,12bde <ecmp+0x6e>
   12baa:	4789                	li	a5,2
   12bac:	46e1                	li	a3,24
   12bae:	00f10633          	add	a2,sp,a5
   12bb2:	00065603          	lhu	a2,0(a2) # ffffffffffff8000 <__global_pointer$+0xfffffffffffdae78>
   12bb6:	e205                	bnez	a2,12bd6 <ecmp+0x66>
   12bb8:	1010                	addi	a2,sp,32
   12bba:	963e                	add	a2,a2,a5
   12bbc:	00065603          	lhu	a2,0(a2)
   12bc0:	ea19                	bnez	a2,12bd6 <ecmp+0x66>
   12bc2:	0789                	addi	a5,a5,2
   12bc4:	fed795e3          	bne	a5,a3,12bae <ecmp+0x3e>
   12bc8:	8522                	mv	a0,s0
   12bca:	60e6                	ld	ra,88(sp)
   12bcc:	6446                	ld	s0,80(sp)
   12bce:	64a6                	ld	s1,72(sp)
   12bd0:	6906                	ld	s2,64(sp)
   12bd2:	6125                	addi	sp,sp,96
   12bd4:	8082                	ret
   12bd6:	4405                	li	s0,1
   12bd8:	db65                	beqz	a4,12bc8 <ecmp+0x58>
   12bda:	547d                	li	s0,-1
   12bdc:	b7f5                	j	12bc8 <ecmp+0x58>
   12bde:	4605                	li	a2,1
   12be0:	c311                	beqz	a4,12be4 <ecmp+0x74>
   12be2:	567d                	li	a2,-1
   12be4:	4781                	li	a5,0
   12be6:	45e1                	li	a1,24
   12be8:	00f10733          	add	a4,sp,a5
   12bec:	00075683          	lhu	a3,0(a4)
   12bf0:	1018                	addi	a4,sp,32
   12bf2:	973e                	add	a4,a4,a5
   12bf4:	00075703          	lhu	a4,0(a4)
   12bf8:	00e69663          	bne	a3,a4,12c04 <ecmp+0x94>
   12bfc:	0789                	addi	a5,a5,2
   12bfe:	feb795e3          	bne	a5,a1,12be8 <ecmp+0x78>
   12c02:	b7d9                	j	12bc8 <ecmp+0x58>
   12c04:	8432                	mv	s0,a2
   12c06:	fcd761e3          	bltu	a4,a3,12bc8 <ecmp+0x58>
   12c0a:	40c0043b          	negw	s0,a2
   12c0e:	bf6d                	j	12bc8 <ecmp+0x58>
   12c10:	5479                	li	s0,-2
   12c12:	bf5d                	j	12bc8 <ecmp+0x58>

0000000000012c14 <eisinf>:
   12c14:	01255783          	lhu	a5,18(a0)
   12c18:	fff7c793          	not	a5,a5
   12c1c:	03179713          	slli	a4,a5,0x31
   12c20:	eb11                	bnez	a4,12c34 <eisinf+0x20>
   12c22:	1141                	addi	sp,sp,-16
   12c24:	e406                	sd	ra,8(sp)
   12c26:	e6bff0ef          	jal	ra,12a90 <eisnan>
   12c2a:	60a2                	ld	ra,8(sp)
   12c2c:	00153513          	seqz	a0,a0
   12c30:	0141                	addi	sp,sp,16
   12c32:	8082                	ret
   12c34:	4501                	li	a0,0
   12c36:	8082                	ret

0000000000012c38 <einfin.isra.2>:
   12c38:	01250793          	addi	a5,a0,18
   12c3c:	0509                	addi	a0,a0,2
   12c3e:	fe051f23          	sh	zero,-2(a0)
   12c42:	fef51de3          	bne	a0,a5,12c3c <einfin.isra.2+0x4>
   12c46:	00055783          	lhu	a5,0(a0)
   12c4a:	6721                	lui	a4,0x8
   12c4c:	177d                	addi	a4,a4,-1
   12c4e:	8fd9                	or	a5,a5,a4
   12c50:	00f51023          	sh	a5,0(a0)
   12c54:	8082                	ret

0000000000012c56 <eshift.part.3>:
   12c56:	7139                	addi	sp,sp,-64
   12c58:	f822                	sd	s0,48(sp)
   12c5a:	ec4e                	sd	s3,24(sp)
   12c5c:	fc06                	sd	ra,56(sp)
   12c5e:	f426                	sd	s1,40(sp)
   12c60:	f04a                	sd	s2,32(sp)
   12c62:	e852                	sd	s4,16(sp)
   12c64:	e456                	sd	s5,8(sp)
   12c66:	89aa                	mv	s3,a0
   12c68:	842e                	mv	s0,a1
   12c6a:	0a05d963          	bgez	a1,12d1c <eshift.part.3+0xc6>
   12c6e:	40b00a3b          	negw	s4,a1
   12c72:	8952                	mv	s2,s4
   12c74:	4481                	li	s1,0
   12c76:	4abd                	li	s5,15
   12c78:	034ac763          	blt	s5,s4,12ca6 <eshift.part.3+0x50>
   12c7c:	0049591b          	srliw	s2,s2,0x4
   12c80:	55c1                	li	a1,-16
   12c82:	02b905bb          	mulw	a1,s2,a1
   12c86:	4a1d                	li	s4,7
   12c88:	4085893b          	subw	s2,a1,s0
   12c8c:	844a                	mv	s0,s2
   12c8e:	032a4463          	blt	s4,s2,12cb6 <eshift.part.3+0x60>
   12c92:	0034559b          	srliw	a1,s0,0x3
   12c96:	57e1                	li	a5,-8
   12c98:	02f585bb          	mulw	a1,a1,a5
   12c9c:	9c2d                	addw	s0,s0,a1
   12c9e:	e405                	bnez	s0,12cc6 <eshift.part.3+0x70>
   12ca0:	00903533          	snez	a0,s1
   12ca4:	a09d                	j	12d0a <eshift.part.3+0xb4>
   12ca6:	0189d783          	lhu	a5,24(s3)
   12caa:	854e                	mv	a0,s3
   12cac:	3a41                	addiw	s4,s4,-16
   12cae:	8cdd                	or	s1,s1,a5
   12cb0:	cfbff0ef          	jal	ra,129aa <eshdn6>
   12cb4:	b7d1                	j	12c78 <eshift.part.3+0x22>
   12cb6:	0189c783          	lbu	a5,24(s3)
   12cba:	854e                	mv	a0,s3
   12cbc:	3961                	addiw	s2,s2,-8
   12cbe:	8cdd                	or	s1,s1,a5
   12cc0:	c89ff0ef          	jal	ra,12948 <eshdn8>
   12cc4:	b7e9                	j	12c8e <eshift.part.3+0x38>
   12cc6:	0189d783          	lhu	a5,24(s3)
   12cca:	854e                	mv	a0,s3
   12ccc:	347d                	addiw	s0,s0,-1
   12cce:	8b85                	andi	a5,a5,1
   12cd0:	8cdd                	or	s1,s1,a5
   12cd2:	bfdff0ef          	jal	ra,128ce <eshdn1>
   12cd6:	b7e1                	j	12c9e <eshift.part.3+0x48>
   12cd8:	854e                	mv	a0,s3
   12cda:	cb5ff0ef          	jal	ra,1298e <eshup6>
   12cde:	34c1                	addiw	s1,s1,-16
   12ce0:	fe994ce3          	blt	s2,s1,12cd8 <eshift.part.3+0x82>
   12ce4:	0044559b          	srliw	a1,s0,0x4
   12ce8:	57c1                	li	a5,-16
   12cea:	02f585bb          	mulw	a1,a1,a5
   12cee:	491d                	li	s2,7
   12cf0:	00b404bb          	addw	s1,s0,a1
   12cf4:	8426                	mv	s0,s1
   12cf6:	02994663          	blt	s2,s1,12d22 <eshift.part.3+0xcc>
   12cfa:	0034559b          	srliw	a1,s0,0x3
   12cfe:	57e1                	li	a5,-8
   12d00:	02f585bb          	mulw	a1,a1,a5
   12d04:	9c2d                	addw	s0,s0,a1
   12d06:	e01d                	bnez	s0,12d2c <eshift.part.3+0xd6>
   12d08:	4501                	li	a0,0
   12d0a:	70e2                	ld	ra,56(sp)
   12d0c:	7442                	ld	s0,48(sp)
   12d0e:	74a2                	ld	s1,40(sp)
   12d10:	7902                	ld	s2,32(sp)
   12d12:	69e2                	ld	s3,24(sp)
   12d14:	6a42                	ld	s4,16(sp)
   12d16:	6aa2                	ld	s5,8(sp)
   12d18:	6121                	addi	sp,sp,64
   12d1a:	8082                	ret
   12d1c:	84ae                	mv	s1,a1
   12d1e:	493d                	li	s2,15
   12d20:	b7c1                	j	12ce0 <eshift.part.3+0x8a>
   12d22:	854e                	mv	a0,s3
   12d24:	c4bff0ef          	jal	ra,1296e <eshup8>
   12d28:	34e1                	addiw	s1,s1,-8
   12d2a:	b7f1                	j	12cf6 <eshift.part.3+0xa0>
   12d2c:	854e                	mv	a0,s3
   12d2e:	bd9ff0ef          	jal	ra,12906 <eshup1>
   12d32:	347d                	addiw	s0,s0,-1
   12d34:	bfc9                	j	12d06 <eshift.part.3+0xb0>

0000000000012d36 <enormlz>:
   12d36:	00455783          	lhu	a5,4(a0)
   12d3a:	1101                	addi	sp,sp,-32
   12d3c:	e426                	sd	s1,8(sp)
   12d3e:	ec06                	sd	ra,24(sp)
   12d40:	e822                	sd	s0,16(sp)
   12d42:	e04a                	sd	s2,0(sp)
   12d44:	84aa                	mv	s1,a0
   12d46:	efb9                	bnez	a5,12da4 <enormlz+0x6e>
   12d48:	00651783          	lh	a5,6(a0)
   12d4c:	4401                	li	s0,0
   12d4e:	0a000913          	li	s2,160
   12d52:	0007df63          	bgez	a5,12d70 <enormlz+0x3a>
   12d56:	8522                	mv	a0,s0
   12d58:	60e2                	ld	ra,24(sp)
   12d5a:	6442                	ld	s0,16(sp)
   12d5c:	64a2                	ld	s1,8(sp)
   12d5e:	6902                	ld	s2,0(sp)
   12d60:	6105                	addi	sp,sp,32
   12d62:	8082                	ret
   12d64:	8526                	mv	a0,s1
   12d66:	2441                	addiw	s0,s0,16
   12d68:	c27ff0ef          	jal	ra,1298e <eshup6>
   12d6c:	ff2405e3          	beq	s0,s2,12d56 <enormlz+0x20>
   12d70:	0064d783          	lhu	a5,6(s1)
   12d74:	dbe5                	beqz	a5,12d64 <enormlz+0x2e>
   12d76:	0064d783          	lhu	a5,6(s1)
   12d7a:	f007f793          	andi	a5,a5,-256
   12d7e:	cf91                	beqz	a5,12d9a <enormlz+0x64>
   12d80:	0a000913          	li	s2,160
   12d84:	00649783          	lh	a5,6(s1)
   12d88:	fc07c7e3          	bltz	a5,12d56 <enormlz+0x20>
   12d8c:	8526                	mv	a0,s1
   12d8e:	2405                	addiw	s0,s0,1
   12d90:	b77ff0ef          	jal	ra,12906 <eshup1>
   12d94:	fe8958e3          	ble	s0,s2,12d84 <enormlz+0x4e>
   12d98:	bf7d                	j	12d56 <enormlz+0x20>
   12d9a:	8526                	mv	a0,s1
   12d9c:	bd3ff0ef          	jal	ra,1296e <eshup8>
   12da0:	2421                	addiw	s0,s0,8
   12da2:	bfd1                	j	12d76 <enormlz+0x40>
   12da4:	f007f793          	andi	a5,a5,-256
   12da8:	4401                	li	s0,0
   12daa:	c781                	beqz	a5,12db2 <enormlz+0x7c>
   12dac:	b9dff0ef          	jal	ra,12948 <eshdn8>
   12db0:	5461                	li	s0,-8
   12db2:	f7000913          	li	s2,-144
   12db6:	a039                	j	12dc4 <enormlz+0x8e>
   12db8:	8526                	mv	a0,s1
   12dba:	347d                	addiw	s0,s0,-1
   12dbc:	b13ff0ef          	jal	ra,128ce <eshdn1>
   12dc0:	f9244be3          	blt	s0,s2,12d56 <enormlz+0x20>
   12dc4:	0044d783          	lhu	a5,4(s1)
   12dc8:	fbe5                	bnez	a5,12db8 <enormlz+0x82>
   12dca:	b771                	j	12d56 <enormlz+0x20>

0000000000012dcc <enan.constprop.12>:
   12dcc:	01050793          	addi	a5,a0,16
   12dd0:	0509                	addi	a0,a0,2
   12dd2:	fe051f23          	sh	zero,-2(a0)
   12dd6:	fef51de3          	bne	a0,a5,12dd0 <enan.constprop.12+0x4>
   12dda:	77f1                	lui	a5,0xffffc
   12ddc:	00f51023          	sh	a5,0(a0)
   12de0:	77e1                	lui	a5,0xffff8
   12de2:	fff7c793          	not	a5,a5
   12de6:	00f51123          	sh	a5,2(a0)
   12dea:	8082                	ret

0000000000012dec <emovo.isra.6>:
   12dec:	872a                	mv	a4,a0
   12dee:	00075683          	lhu	a3,0(a4) # 8000 <main-0x80b0>
   12df2:	852e                	mv	a0,a1
   12df4:	00275783          	lhu	a5,2(a4)
   12df8:	c299                	beqz	a3,12dfe <emovo.isra.6+0x12>
   12dfa:	76e1                	lui	a3,0xffff8
   12dfc:	8fd5                	or	a5,a5,a3
   12dfe:	00f51923          	sh	a5,18(a0)
   12e02:	00275603          	lhu	a2,2(a4)
   12e06:	66a1                	lui	a3,0x8
   12e08:	16fd                	addi	a3,a3,-1
   12e0a:	00670793          	addi	a5,a4,6
   12e0e:	00d61b63          	bne	a2,a3,12e24 <emovo.isra.6+0x38>
   12e12:	0769                	addi	a4,a4,26
   12e14:	0007d683          	lhu	a3,0(a5) # ffffffffffff8000 <__global_pointer$+0xfffffffffffdae78>
   12e18:	e28d                	bnez	a3,12e3a <emovo.isra.6+0x4e>
   12e1a:	0789                	addi	a5,a5,2
   12e1c:	fee79ce3          	bne	a5,a4,12e14 <emovo.isra.6+0x28>
   12e20:	e19ff06f          	j	12c38 <einfin.isra.2>
   12e24:	0541                	addi	a0,a0,16
   12e26:	0761                	addi	a4,a4,24
   12e28:	0789                	addi	a5,a5,2
   12e2a:	ffe7d683          	lhu	a3,-2(a5)
   12e2e:	1579                	addi	a0,a0,-2
   12e30:	00d51123          	sh	a3,2(a0)
   12e34:	fee79ae3          	bne	a5,a4,12e28 <emovo.isra.6+0x3c>
   12e38:	8082                	ret
   12e3a:	f93ff06f          	j	12dcc <enan.constprop.12>

0000000000012e3e <e113toe.isra.8>:
   12e3e:	7139                	addi	sp,sp,-64
   12e40:	f426                	sd	s1,40(sp)
   12e42:	84aa                	mv	s1,a0
   12e44:	850a                	mv	a0,sp
   12e46:	f822                	sd	s0,48(sp)
   12e48:	fc06                	sd	ra,56(sp)
   12e4a:	842e                	mv	s0,a1
   12e4c:	a2dff0ef          	jal	ra,12878 <ecleaz>
   12e50:	00e4d703          	lhu	a4,14(s1)
   12e54:	0107179b          	slliw	a5,a4,0x10
   12e58:	4107d79b          	sraiw	a5,a5,0x10
   12e5c:	0207c763          	bltz	a5,12e8a <e113toe.isra.8+0x4c>
   12e60:	00011023          	sh	zero,0(sp)
   12e64:	66a1                	lui	a3,0x8
   12e66:	16fd                	addi	a3,a3,-1
   12e68:	8f75                	and	a4,a4,a3
   12e6a:	00e48793          	addi	a5,s1,14
   12e6e:	04d71a63          	bne	a4,a3,12ec2 <e113toe.isra.8+0x84>
   12e72:	8726                	mv	a4,s1
   12e74:	00075683          	lhu	a3,0(a4)
   12e78:	ce89                	beqz	a3,12e92 <e113toe.isra.8+0x54>
   12e7a:	8522                	mv	a0,s0
   12e7c:	f51ff0ef          	jal	ra,12dcc <enan.constprop.12>
   12e80:	70e2                	ld	ra,56(sp)
   12e82:	7442                	ld	s0,48(sp)
   12e84:	74a2                	ld	s1,40(sp)
   12e86:	6121                	addi	sp,sp,64
   12e88:	8082                	ret
   12e8a:	57fd                	li	a5,-1
   12e8c:	00f11023          	sh	a5,0(sp)
   12e90:	bfd1                	j	12e64 <e113toe.isra.8+0x26>
   12e92:	0709                	addi	a4,a4,2
   12e94:	fee790e3          	bne	a5,a4,12e74 <e113toe.isra.8+0x36>
   12e98:	8522                	mv	a0,s0
   12e9a:	9b9ff0ef          	jal	ra,12852 <eclear>
   12e9e:	8522                	mv	a0,s0
   12ea0:	d99ff0ef          	jal	ra,12c38 <einfin.isra.2>
   12ea4:	00e49783          	lh	a5,14(s1)
   12ea8:	fc07dce3          	bgez	a5,12e80 <e113toe.isra.8+0x42>
   12eac:	8522                	mv	a0,s0
   12eae:	be3ff0ef          	jal	ra,12a90 <eisnan>
   12eb2:	f579                	bnez	a0,12e80 <e113toe.isra.8+0x42>
   12eb4:	01245783          	lhu	a5,18(s0)
   12eb8:	7761                	lui	a4,0xffff8
   12eba:	8fb9                	xor	a5,a5,a4
   12ebc:	00f41923          	sh	a5,18(s0)
   12ec0:	b7c1                	j	12e80 <e113toe.isra.8+0x42>
   12ec2:	00e11123          	sh	a4,2(sp)
   12ec6:	868a                	mv	a3,sp
   12ec8:	17f9                	addi	a5,a5,-2
   12eca:	0007d603          	lhu	a2,0(a5)
   12ece:	0689                	addi	a3,a3,2
   12ed0:	00c69223          	sh	a2,4(a3) # 8004 <main-0x80ac>
   12ed4:	fef49ae3          	bne	s1,a5,12ec8 <e113toe.isra.8+0x8a>
   12ed8:	eb01                	bnez	a4,12ee8 <e113toe.isra.8+0xaa>
   12eda:	00011223          	sh	zero,4(sp)
   12ede:	85a2                	mv	a1,s0
   12ee0:	850a                	mv	a0,sp
   12ee2:	f0bff0ef          	jal	ra,12dec <emovo.isra.6>
   12ee6:	bf69                	j	12e80 <e113toe.isra.8+0x42>
   12ee8:	4785                	li	a5,1
   12eea:	55fd                	li	a1,-1
   12eec:	850a                	mv	a0,sp
   12eee:	00f11223          	sh	a5,4(sp)
   12ef2:	d65ff0ef          	jal	ra,12c56 <eshift.part.3>
   12ef6:	b7e5                	j	12ede <e113toe.isra.8+0xa0>

0000000000012ef8 <emdnorm>:
   12ef8:	7139                	addi	sp,sp,-64
   12efa:	f822                	sd	s0,48(sp)
   12efc:	f426                	sd	s1,40(sp)
   12efe:	f04a                	sd	s2,32(sp)
   12f00:	ec4e                	sd	s3,24(sp)
   12f02:	e852                	sd	s4,16(sp)
   12f04:	e456                	sd	s5,8(sp)
   12f06:	8936                	mv	s2,a3
   12f08:	843e                	mv	s0,a5
   12f0a:	fc06                	sd	ra,56(sp)
   12f0c:	84aa                	mv	s1,a0
   12f0e:	89ae                	mv	s3,a1
   12f10:	8a32                	mv	s4,a2
   12f12:	8aba                	mv	s5,a4
   12f14:	e23ff0ef          	jal	ra,12d36 <enormlz>
   12f18:	09000793          	li	a5,144
   12f1c:	40a90933          	sub	s2,s2,a0
   12f20:	02a7d763          	ble	a0,a5,12f4e <emdnorm+0x56>
   12f24:	67a1                	lui	a5,0x8
   12f26:	17f9                	addi	a5,a5,-2
   12f28:	2327c663          	blt	a5,s2,13154 <emdnorm+0x25c>
   12f2c:	00248793          	addi	a5,s1,2
   12f30:	04e9                	addi	s1,s1,26
   12f32:	0789                	addi	a5,a5,2
   12f34:	fe079f23          	sh	zero,-2(a5) # 7ffe <main-0x80b2>
   12f38:	fe979de3          	bne	a5,s1,12f32 <emdnorm+0x3a>
   12f3c:	70e2                	ld	ra,56(sp)
   12f3e:	7442                	ld	s0,48(sp)
   12f40:	74a2                	ld	s1,40(sp)
   12f42:	7902                	ld	s2,32(sp)
   12f44:	69e2                	ld	s3,24(sp)
   12f46:	6a42                	ld	s4,16(sp)
   12f48:	6aa2                	ld	s5,8(sp)
   12f4a:	6121                	addi	sp,sp,64
   12f4c:	8082                	ret
   12f4e:	00095d63          	bgez	s2,12f68 <emdnorm+0x70>
   12f52:	f7000793          	li	a5,-144
   12f56:	0ef94a63          	blt	s2,a5,1304a <emdnorm+0x152>
   12f5a:	0009059b          	sext.w	a1,s2
   12f5e:	8526                	mv	a0,s1
   12f60:	cf7ff0ef          	jal	ra,12c56 <eshift.part.3>
   12f64:	0e051c63          	bnez	a0,1305c <emdnorm+0x164>
   12f68:	1a0a8a63          	beqz	s5,1311c <emdnorm+0x224>
   12f6c:	4058                	lw	a4,4(s0)
   12f6e:	401c                	lw	a5,0(s0)
   12f70:	04f70863          	beq	a4,a5,12fc0 <emdnorm+0xc8>
   12f74:	01a40513          	addi	a0,s0,26
   12f78:	901ff0ef          	jal	ra,12878 <ecleaz>
   12f7c:	405c                	lw	a5,4(s0)
   12f7e:	03800713          	li	a4,56
   12f82:	10e78d63          	beq	a5,a4,1309c <emdnorm+0x1a4>
   12f86:	0cf74d63          	blt	a4,a5,13060 <emdnorm+0x168>
   12f8a:	4761                	li	a4,24
   12f8c:	12e78e63          	beq	a5,a4,130c8 <emdnorm+0x1d0>
   12f90:	03500713          	li	a4,53
   12f94:	12e78163          	beq	a5,a4,130b6 <emdnorm+0x1be>
   12f98:	80010737          	lui	a4,0x80010
   12f9c:	377d                	addiw	a4,a4,-1
   12f9e:	c858                	sw	a4,20(s0)
   12fa0:	4705                	li	a4,1
   12fa2:	00e41c23          	sh	a4,24(s0)
   12fa6:	472d                	li	a4,11
   12fa8:	1702                	slli	a4,a4,0x20
   12faa:	0731                	addi	a4,a4,12
   12fac:	e418                	sd	a4,8(s0)
   12fae:	4458                	lw	a4,12(s0)
   12fb0:	01845683          	lhu	a3,24(s0)
   12fb4:	0721                	addi	a4,a4,8
   12fb6:	0706                	slli	a4,a4,0x1
   12fb8:	9722                	add	a4,a4,s0
   12fba:	00d71523          	sh	a3,10(a4) # ffffffff8001000a <__global_pointer$+0xffffffff7fff2e82>
   12fbe:	c01c                	sw	a5,0(s0)
   12fc0:	01204f63          	bgtz	s2,12fde <emdnorm+0xe6>
   12fc4:	4058                	lw	a4,4(s0)
   12fc6:	09000793          	li	a5,144
   12fca:	00f70a63          	beq	a4,a5,12fde <emdnorm+0xe6>
   12fce:	0184d783          	lhu	a5,24(s1)
   12fd2:	8526                	mv	a0,s1
   12fd4:	8b85                	andi	a5,a5,1
   12fd6:	00f9e9b3          	or	s3,s3,a5
   12fda:	8f5ff0ef          	jal	ra,128ce <eshdn1>
   12fde:	4414                	lw	a3,8(s0)
   12fe0:	01445583          	lhu	a1,20(s0)
   12fe4:	4048                	lw	a0,4(s0)
   12fe6:	00169793          	slli	a5,a3,0x1
   12fea:	00f48633          	add	a2,s1,a5
   12fee:	00065703          	lhu	a4,0(a2)
   12ff2:	8f6d                	and	a4,a4,a1
   12ff4:	08f00593          	li	a1,143
   12ff8:	00a5c863          	blt	a1,a0,13008 <emdnorm+0x110>
   12ffc:	0789                	addi	a5,a5,2
   12ffe:	2685                	addiw	a3,a3,1
   13000:	97a6                	add	a5,a5,s1
   13002:	45b1                	li	a1,12
   13004:	0cd5df63          	ble	a3,a1,130e2 <emdnorm+0x1ea>
   13008:	01445783          	lhu	a5,20(s0)
   1300c:	00065683          	lhu	a3,0(a2)
   13010:	fff7c793          	not	a5,a5
   13014:	8ff5                	and	a5,a5,a3
   13016:	00f61023          	sh	a5,0(a2)
   1301a:	01645783          	lhu	a5,22(s0)
   1301e:	00e7f6b3          	and	a3,a5,a4
   13022:	cee1                	beqz	a3,130fa <emdnorm+0x202>
   13024:	00e79d63          	bne	a5,a4,1303e <emdnorm+0x146>
   13028:	0c099763          	bnez	s3,130f6 <emdnorm+0x1fe>
   1302c:	445c                	lw	a5,12(s0)
   1302e:	01845703          	lhu	a4,24(s0)
   13032:	0786                	slli	a5,a5,0x1
   13034:	97a6                	add	a5,a5,s1
   13036:	0007d783          	lhu	a5,0(a5)
   1303a:	8ff9                	and	a5,a5,a4
   1303c:	cfdd                	beqz	a5,130fa <emdnorm+0x202>
   1303e:	85a6                	mv	a1,s1
   13040:	01a40513          	addi	a0,s0,26
   13044:	989ff0ef          	jal	ra,129cc <eaddm>
   13048:	a84d                	j	130fa <emdnorm+0x202>
   1304a:	00248793          	addi	a5,s1,2
   1304e:	04e9                	addi	s1,s1,26
   13050:	0789                	addi	a5,a5,2
   13052:	fe079f23          	sh	zero,-2(a5)
   13056:	fe979de3          	bne	a5,s1,13050 <emdnorm+0x158>
   1305a:	b5cd                	j	12f3c <emdnorm+0x44>
   1305c:	4985                	li	s3,1
   1305e:	b729                	j	12f68 <emdnorm+0x70>
   13060:	04000713          	li	a4,64
   13064:	02e78163          	beq	a5,a4,13086 <emdnorm+0x18e>
   13068:	07100713          	li	a4,113
   1306c:	f2e796e3          	bne	a5,a4,12f98 <emdnorm+0xa0>
   13070:	40008737          	lui	a4,0x40008
   13074:	377d                	addiw	a4,a4,-1
   13076:	c858                	sw	a4,20(s0)
   13078:	7761                	lui	a4,0xffff8
   1307a:	00e41c23          	sh	a4,24(s0)
   1307e:	4729                	li	a4,10
   13080:	1702                	slli	a4,a4,0x20
   13082:	0729                	addi	a4,a4,10
   13084:	b725                	j	12fac <emdnorm+0xb4>
   13086:	80010737          	lui	a4,0x80010
   1308a:	377d                	addiw	a4,a4,-1
   1308c:	c858                	sw	a4,20(s0)
   1308e:	4705                	li	a4,1
   13090:	00e41c23          	sh	a4,24(s0)
   13094:	470d                	li	a4,3
   13096:	1706                	slli	a4,a4,0x21
   13098:	071d                	addi	a4,a4,7
   1309a:	bf09                	j	12fac <emdnorm+0xb4>
   1309c:	00800737          	lui	a4,0x800
   130a0:	0ff7071b          	addiw	a4,a4,255
   130a4:	c858                	sw	a4,20(s0)
   130a6:	10000713          	li	a4,256
   130aa:	00e41c23          	sh	a4,24(s0)
   130ae:	4719                	li	a4,6
   130b0:	1702                	slli	a4,a4,0x20
   130b2:	0719                	addi	a4,a4,6
   130b4:	bde5                	j	12fac <emdnorm+0xb4>
   130b6:	04000737          	lui	a4,0x4000
   130ba:	7ff7071b          	addiw	a4,a4,2047
   130be:	c858                	sw	a4,20(s0)
   130c0:	6705                	lui	a4,0x1
   130c2:	8007071b          	addiw	a4,a4,-2048
   130c6:	b7d5                	j	130aa <emdnorm+0x1b2>
   130c8:	00800737          	lui	a4,0x800
   130cc:	0ff7071b          	addiw	a4,a4,255
   130d0:	c858                	sw	a4,20(s0)
   130d2:	10000713          	li	a4,256
   130d6:	00e41c23          	sh	a4,24(s0)
   130da:	4711                	li	a4,4
   130dc:	1702                	slli	a4,a4,0x20
   130de:	0711                	addi	a4,a4,4
   130e0:	b5f1                	j	12fac <emdnorm+0xb4>
   130e2:	0007d503          	lhu	a0,0(a5)
   130e6:	c119                	beqz	a0,130ec <emdnorm+0x1f4>
   130e8:	00176713          	ori	a4,a4,1
   130ec:	00079023          	sh	zero,0(a5)
   130f0:	2685                	addiw	a3,a3,1
   130f2:	0789                	addi	a5,a5,2
   130f4:	bf01                	j	13004 <emdnorm+0x10c>
   130f6:	f40a04e3          	beqz	s4,1303e <emdnorm+0x146>
   130fa:	01204a63          	bgtz	s2,1310e <emdnorm+0x216>
   130fe:	4058                	lw	a4,4(s0)
   13100:	09000793          	li	a5,144
   13104:	00f70563          	beq	a4,a5,1310e <emdnorm+0x216>
   13108:	8526                	mv	a0,s1
   1310a:	ffcff0ef          	jal	ra,12906 <eshup1>
   1310e:	0044d783          	lhu	a5,4(s1)
   13112:	c789                	beqz	a5,1311c <emdnorm+0x224>
   13114:	8526                	mv	a0,s1
   13116:	fb8ff0ef          	jal	ra,128ce <eshdn1>
   1311a:	0905                	addi	s2,s2,1
   1311c:	67a1                	lui	a5,0x8
   1311e:	00049c23          	sh	zero,24(s1)
   13122:	17f9                	addi	a5,a5,-2
   13124:	0327d063          	ble	s2,a5,13144 <emdnorm+0x24c>
   13128:	77e1                	lui	a5,0xffff8
   1312a:	fff7c793          	not	a5,a5
   1312e:	00f49123          	sh	a5,2(s1)
   13132:	00448793          	addi	a5,s1,4
   13136:	04e1                	addi	s1,s1,24
   13138:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__global_pointer$+0xfffffffffffdae78>
   1313c:	0789                	addi	a5,a5,2
   1313e:	fef49de3          	bne	s1,a5,13138 <emdnorm+0x240>
   13142:	bbed                	j	12f3c <emdnorm+0x44>
   13144:	00095563          	bgez	s2,1314e <emdnorm+0x256>
   13148:	00049123          	sh	zero,2(s1)
   1314c:	bbc5                	j	12f3c <emdnorm+0x44>
   1314e:	01249123          	sh	s2,2(s1)
   13152:	b3ed                	j	12f3c <emdnorm+0x44>
   13154:	e00a9ce3          	bnez	s5,12f6c <emdnorm+0x74>
   13158:	00049c23          	sh	zero,24(s1)
   1315c:	b7f1                	j	13128 <emdnorm+0x230>

000000000001315e <eiremain>:
   1315e:	7139                	addi	sp,sp,-64
   13160:	e852                	sd	s4,16(sp)
   13162:	00255a03          	lhu	s4,2(a0)
   13166:	f822                	sd	s0,48(sp)
   13168:	842e                	mv	s0,a1
   1316a:	fc06                	sd	ra,56(sp)
   1316c:	f426                	sd	s1,40(sp)
   1316e:	f04a                	sd	s2,32(sp)
   13170:	e456                	sd	s5,8(sp)
   13172:	e05a                	sd	s6,0(sp)
   13174:	8932                	mv	s2,a2
   13176:	03460b13          	addi	s6,a2,52
   1317a:	ec4e                	sd	s3,24(sp)
   1317c:	8aaa                	mv	s5,a0
   1317e:	bb9ff0ef          	jal	ra,12d36 <enormlz>
   13182:	00245483          	lhu	s1,2(s0)
   13186:	40aa0a33          	sub	s4,s4,a0
   1318a:	8522                	mv	a0,s0
   1318c:	babff0ef          	jal	ra,12d36 <enormlz>
   13190:	8c89                	sub	s1,s1,a0
   13192:	855a                	mv	a0,s6
   13194:	ee4ff0ef          	jal	ra,12878 <ecleaz>
   13198:	0344d363          	ble	s4,s1,131be <eiremain+0x60>
   1319c:	8522                	mv	a0,s0
   1319e:	7442                	ld	s0,48(sp)
   131a0:	70e2                	ld	ra,56(sp)
   131a2:	69e2                	ld	s3,24(sp)
   131a4:	6a42                	ld	s4,16(sp)
   131a6:	6aa2                	ld	s5,8(sp)
   131a8:	6b02                	ld	s6,0(sp)
   131aa:	87ca                	mv	a5,s2
   131ac:	86a6                	mv	a3,s1
   131ae:	7902                	ld	s2,32(sp)
   131b0:	74a2                	ld	s1,40(sp)
   131b2:	4701                	li	a4,0
   131b4:	4601                	li	a2,0
   131b6:	4581                	li	a1,0
   131b8:	6121                	addi	sp,sp,64
   131ba:	d3fff06f          	j	12ef8 <emdnorm>
   131be:	85a2                	mv	a1,s0
   131c0:	8556                	mv	a0,s5
   131c2:	ee2ff0ef          	jal	ra,128a4 <ecmpm>
   131c6:	4981                	li	s3,0
   131c8:	00a04763          	bgtz	a0,131d6 <eiremain+0x78>
   131cc:	85a2                	mv	a1,s0
   131ce:	8556                	mv	a0,s5
   131d0:	825ff0ef          	jal	ra,129f4 <esubm>
   131d4:	4985                	li	s3,1
   131d6:	855a                	mv	a0,s6
   131d8:	f2eff0ef          	jal	ra,12906 <eshup1>
   131dc:	04c95783          	lhu	a5,76(s2)
   131e0:	8522                	mv	a0,s0
   131e2:	14fd                	addi	s1,s1,-1
   131e4:	00f9e9b3          	or	s3,s3,a5
   131e8:	05391623          	sh	s3,76(s2)
   131ec:	f1aff0ef          	jal	ra,12906 <eshup1>
   131f0:	b765                	j	13198 <eiremain+0x3a>

00000000000131f2 <emul>:
   131f2:	7131                	addi	sp,sp,-192
   131f4:	f922                	sd	s0,176(sp)
   131f6:	f526                	sd	s1,168(sp)
   131f8:	f14a                	sd	s2,160(sp)
   131fa:	ed4e                	sd	s3,152(sp)
   131fc:	fd06                	sd	ra,184(sp)
   131fe:	e952                	sd	s4,144(sp)
   13200:	e556                	sd	s5,136(sp)
   13202:	e15a                	sd	s6,128(sp)
   13204:	fcde                	sd	s7,120(sp)
   13206:	f8e2                	sd	s8,112(sp)
   13208:	f4e6                	sd	s9,104(sp)
   1320a:	84aa                	mv	s1,a0
   1320c:	842e                	mv	s0,a1
   1320e:	8932                	mv	s2,a2
   13210:	89b6                	mv	s3,a3
   13212:	87fff0ef          	jal	ra,12a90 <eisnan>
   13216:	c115                	beqz	a0,1323a <emul+0x48>
   13218:	85ca                	mv	a1,s2
   1321a:	8526                	mv	a0,s1
   1321c:	e46ff0ef          	jal	ra,12862 <emov>
   13220:	70ea                	ld	ra,184(sp)
   13222:	744a                	ld	s0,176(sp)
   13224:	74aa                	ld	s1,168(sp)
   13226:	790a                	ld	s2,160(sp)
   13228:	69ea                	ld	s3,152(sp)
   1322a:	6a4a                	ld	s4,144(sp)
   1322c:	6aaa                	ld	s5,136(sp)
   1322e:	6b0a                	ld	s6,128(sp)
   13230:	7be6                	ld	s7,120(sp)
   13232:	7c46                	ld	s8,112(sp)
   13234:	7ca6                	ld	s9,104(sp)
   13236:	6129                	addi	sp,sp,192
   13238:	8082                	ret
   1323a:	8522                	mv	a0,s0
   1323c:	855ff0ef          	jal	ra,12a90 <eisnan>
   13240:	c501                	beqz	a0,13248 <emul+0x56>
   13242:	85ca                	mv	a1,s2
   13244:	8522                	mv	a0,s0
   13246:	bfd9                	j	1321c <emul+0x2a>
   13248:	8526                	mv	a0,s1
   1324a:	9cbff0ef          	jal	ra,12c14 <eisinf>
   1324e:	e521                	bnez	a0,13296 <emul+0xa4>
   13250:	8522                	mv	a0,s0
   13252:	9c3ff0ef          	jal	ra,12c14 <eisinf>
   13256:	c901                	beqz	a0,13266 <emul+0x74>
   13258:	65e9                	lui	a1,0x1a
   1325a:	d9858593          	addi	a1,a1,-616 # 19d98 <ezero>
   1325e:	8526                	mv	a0,s1
   13260:	911ff0ef          	jal	ra,12b70 <ecmp>
   13264:	c121                	beqz	a0,132a4 <emul+0xb2>
   13266:	8526                	mv	a0,s1
   13268:	9adff0ef          	jal	ra,12c14 <eisinf>
   1326c:	e509                	bnez	a0,13276 <emul+0x84>
   1326e:	8522                	mv	a0,s0
   13270:	9a5ff0ef          	jal	ra,12c14 <eisinf>
   13274:	cd1d                	beqz	a0,132b2 <emul+0xc0>
   13276:	8526                	mv	a0,s1
   13278:	83fff0ef          	jal	ra,12ab6 <eisneg>
   1327c:	84aa                	mv	s1,a0
   1327e:	8522                	mv	a0,s0
   13280:	837ff0ef          	jal	ra,12ab6 <eisneg>
   13284:	02a48463          	beq	s1,a0,132ac <emul+0xba>
   13288:	77e1                	lui	a5,0xffff8
   1328a:	00f91923          	sh	a5,18(s2)
   1328e:	854a                	mv	a0,s2
   13290:	9a9ff0ef          	jal	ra,12c38 <einfin.isra.2>
   13294:	b771                	j	13220 <emul+0x2e>
   13296:	65e9                	lui	a1,0x1a
   13298:	d9858593          	addi	a1,a1,-616 # 19d98 <ezero>
   1329c:	8522                	mv	a0,s0
   1329e:	8d3ff0ef          	jal	ra,12b70 <ecmp>
   132a2:	f55d                	bnez	a0,13250 <emul+0x5e>
   132a4:	854a                	mv	a0,s2
   132a6:	b27ff0ef          	jal	ra,12dcc <enan.constprop.12>
   132aa:	bf9d                	j	13220 <emul+0x2e>
   132ac:	00091923          	sh	zero,18(s2)
   132b0:	bff9                	j	1328e <emul+0x9c>
   132b2:	8526                	mv	a0,s1
   132b4:	858a                	mv	a1,sp
   132b6:	821ff0ef          	jal	ra,12ad6 <emovi>
   132ba:	8522                	mv	a0,s0
   132bc:	100c                	addi	a1,sp,32
   132be:	819ff0ef          	jal	ra,12ad6 <emovi>
   132c2:	00215403          	lhu	s0,2(sp)
   132c6:	02215483          	lhu	s1,34(sp)
   132ca:	ec09                	bnez	s0,132e4 <emul+0xf2>
   132cc:	4781                	li	a5,0
   132ce:	4759                	li	a4,22
   132d0:	00f106b3          	add	a3,sp,a5
   132d4:	0026d683          	lhu	a3,2(a3)
   132d8:	c6e9                	beqz	a3,133a2 <emul+0x1b0>
   132da:	850a                	mv	a0,sp
   132dc:	a5bff0ef          	jal	ra,12d36 <enormlz>
   132e0:	40a00433          	neg	s0,a0
   132e4:	02215783          	lhu	a5,34(sp)
   132e8:	8c26                	mv	s8,s1
   132ea:	ef81                	bnez	a5,13302 <emul+0x110>
   132ec:	4759                	li	a4,22
   132ee:	1014                	addi	a3,sp,32
   132f0:	96be                	add	a3,a3,a5
   132f2:	0026d683          	lhu	a3,2(a3)
   132f6:	cecd                	beqz	a3,133b0 <emul+0x1be>
   132f8:	1008                	addi	a0,sp,32
   132fa:	a3dff0ef          	jal	ra,12d36 <enormlz>
   132fe:	40a48c33          	sub	s8,s1,a0
   13302:	02015783          	lhu	a5,32(sp)
   13306:	03498b93          	addi	s7,s3,52
   1330a:	03898493          	addi	s1,s3,56
   1330e:	02f99a23          	sh	a5,52(s3)
   13312:	02215783          	lhu	a5,34(sp)
   13316:	8a5e                	mv	s4,s7
   13318:	02f99b23          	sh	a5,54(s3)
   1331c:	04e98793          	addi	a5,s3,78
   13320:	00049023          	sh	zero,0(s1)
   13324:	0489                	addi	s1,s1,2
   13326:	fe979de3          	bne	a5,s1,13320 <emul+0x12e>
   1332a:	4a81                	li	s5,0
   1332c:	4b01                	li	s6,0
   1332e:	5cb1                	li	s9,-20
   13330:	015107b3          	add	a5,sp,s5
   13334:	0187d503          	lhu	a0,24(a5) # ffffffffffff8018 <__global_pointer$+0xfffffffffffdae90>
   13338:	c909                	beqz	a0,1334a <emul+0x158>
   1333a:	100c                	addi	a1,sp,32
   1333c:	0090                	addi	a2,sp,64
   1333e:	edeff0ef          	jal	ra,12a1c <m16m>
   13342:	85de                	mv	a1,s7
   13344:	0088                	addi	a0,sp,64
   13346:	e86ff0ef          	jal	ra,129cc <eaddm>
   1334a:	04c9d783          	lhu	a5,76(s3)
   1334e:	855e                	mv	a0,s7
   13350:	1af9                	addi	s5,s5,-2
   13352:	00fb6b33          	or	s6,s6,a5
   13356:	e54ff0ef          	jal	ra,129aa <eshdn6>
   1335a:	fd9a9be3          	bne	s5,s9,13330 <emul+0x13e>
   1335e:	101c                	addi	a5,sp,32
   13360:	000a5703          	lhu	a4,0(s4)
   13364:	0a09                	addi	s4,s4,2
   13366:	0789                	addi	a5,a5,2
   13368:	fee79f23          	sh	a4,-2(a5)
   1336c:	fe9a1ae3          	bne	s4,s1,13360 <emul+0x16e>
   13370:	76f1                	lui	a3,0xffffc
   13372:	9462                	add	s0,s0,s8
   13374:	0689                	addi	a3,a3,2
   13376:	87ce                	mv	a5,s3
   13378:	04000713          	li	a4,64
   1337c:	96a2                	add	a3,a3,s0
   1337e:	4601                	li	a2,0
   13380:	85da                	mv	a1,s6
   13382:	1008                	addi	a0,sp,32
   13384:	b75ff0ef          	jal	ra,12ef8 <emdnorm>
   13388:	00015703          	lhu	a4,0(sp)
   1338c:	02015783          	lhu	a5,32(sp)
   13390:	02f71463          	bne	a4,a5,133b8 <emul+0x1c6>
   13394:	02011023          	sh	zero,32(sp)
   13398:	85ca                	mv	a1,s2
   1339a:	1008                	addi	a0,sp,32
   1339c:	a51ff0ef          	jal	ra,12dec <emovo.isra.6>
   133a0:	b541                	j	13220 <emul+0x2e>
   133a2:	0789                	addi	a5,a5,2
   133a4:	f2e796e3          	bne	a5,a4,132d0 <emul+0xde>
   133a8:	854a                	mv	a0,s2
   133aa:	ca8ff0ef          	jal	ra,12852 <eclear>
   133ae:	bd8d                	j	13220 <emul+0x2e>
   133b0:	0789                	addi	a5,a5,2
   133b2:	f2e79ee3          	bne	a5,a4,132ee <emul+0xfc>
   133b6:	bfcd                	j	133a8 <emul+0x1b6>
   133b8:	57fd                	li	a5,-1
   133ba:	02f11023          	sh	a5,32(sp)
   133be:	bfe9                	j	13398 <emul+0x1a6>

00000000000133c0 <ediv>:
   133c0:	7131                	addi	sp,sp,-192
   133c2:	f922                	sd	s0,176(sp)
   133c4:	f526                	sd	s1,168(sp)
   133c6:	f14a                	sd	s2,160(sp)
   133c8:	e556                	sd	s5,136(sp)
   133ca:	fd06                	sd	ra,184(sp)
   133cc:	ed4e                	sd	s3,152(sp)
   133ce:	e952                	sd	s4,144(sp)
   133d0:	e15a                	sd	s6,128(sp)
   133d2:	fcde                	sd	s7,120(sp)
   133d4:	f8e2                	sd	s8,112(sp)
   133d6:	f4e6                	sd	s9,104(sp)
   133d8:	f0ea                	sd	s10,96(sp)
   133da:	84aa                	mv	s1,a0
   133dc:	842e                	mv	s0,a1
   133de:	8932                	mv	s2,a2
   133e0:	8ab6                	mv	s5,a3
   133e2:	eaeff0ef          	jal	ra,12a90 <eisnan>
   133e6:	c11d                	beqz	a0,1340c <ediv+0x4c>
   133e8:	85ca                	mv	a1,s2
   133ea:	8526                	mv	a0,s1
   133ec:	c76ff0ef          	jal	ra,12862 <emov>
   133f0:	70ea                	ld	ra,184(sp)
   133f2:	744a                	ld	s0,176(sp)
   133f4:	74aa                	ld	s1,168(sp)
   133f6:	790a                	ld	s2,160(sp)
   133f8:	69ea                	ld	s3,152(sp)
   133fa:	6a4a                	ld	s4,144(sp)
   133fc:	6aaa                	ld	s5,136(sp)
   133fe:	6b0a                	ld	s6,128(sp)
   13400:	7be6                	ld	s7,120(sp)
   13402:	7c46                	ld	s8,112(sp)
   13404:	7ca6                	ld	s9,104(sp)
   13406:	7d06                	ld	s10,96(sp)
   13408:	6129                	addi	sp,sp,192
   1340a:	8082                	ret
   1340c:	8522                	mv	a0,s0
   1340e:	e82ff0ef          	jal	ra,12a90 <eisnan>
   13412:	c501                	beqz	a0,1341a <ediv+0x5a>
   13414:	85ca                	mv	a1,s2
   13416:	8522                	mv	a0,s0
   13418:	bfd1                	j	133ec <ediv+0x2c>
   1341a:	69e9                	lui	s3,0x1a
   1341c:	d9898593          	addi	a1,s3,-616 # 19d98 <ezero>
   13420:	8526                	mv	a0,s1
   13422:	f4eff0ef          	jal	ra,12b70 <ecmp>
   13426:	16050763          	beqz	a0,13594 <ediv+0x1d4>
   1342a:	8526                	mv	a0,s1
   1342c:	fe8ff0ef          	jal	ra,12c14 <eisinf>
   13430:	89aa                	mv	s3,a0
   13432:	8522                	mv	a0,s0
   13434:	fe0ff0ef          	jal	ra,12c14 <eisinf>
   13438:	16099963          	bnez	s3,135aa <ediv+0x1ea>
   1343c:	16051c63          	bnez	a0,135b4 <ediv+0x1f4>
   13440:	8526                	mv	a0,s1
   13442:	858a                	mv	a1,sp
   13444:	e92ff0ef          	jal	ra,12ad6 <emovi>
   13448:	8522                	mv	a0,s0
   1344a:	100c                	addi	a1,sp,32
   1344c:	e8aff0ef          	jal	ra,12ad6 <emovi>
   13450:	02215483          	lhu	s1,34(sp)
   13454:	00215403          	lhu	s0,2(sp)
   13458:	ec91                	bnez	s1,13474 <ediv+0xb4>
   1345a:	4781                	li	a5,0
   1345c:	4759                	li	a4,22
   1345e:	1014                	addi	a3,sp,32
   13460:	96be                	add	a3,a3,a5
   13462:	0026d683          	lhu	a3,2(a3) # ffffffffffffc002 <__global_pointer$+0xfffffffffffdee7a>
   13466:	16068763          	beqz	a3,135d4 <ediv+0x214>
   1346a:	1008                	addi	a0,sp,32
   1346c:	8cbff0ef          	jal	ra,12d36 <enormlz>
   13470:	40a004b3          	neg	s1,a0
   13474:	00215783          	lhu	a5,2(sp)
   13478:	8ba2                	mv	s7,s0
   1347a:	ef89                	bnez	a5,13494 <ediv+0xd4>
   1347c:	4759                	li	a4,22
   1347e:	00f106b3          	add	a3,sp,a5
   13482:	0026d683          	lhu	a3,2(a3)
   13486:	14068b63          	beqz	a3,135dc <ediv+0x21c>
   1348a:	850a                	mv	a0,sp
   1348c:	8abff0ef          	jal	ra,12d36 <enormlz>
   13490:	40a40bb3          	sub	s7,s0,a0
   13494:	02015783          	lhu	a5,32(sp)
   13498:	02215703          	lhu	a4,34(sp)
   1349c:	034a8993          	addi	s3,s5,52
   134a0:	02fa9a23          	sh	a5,52(s5)
   134a4:	038a8793          	addi	a5,s5,56
   134a8:	02ea9b23          	sh	a4,54(s5)
   134ac:	8a3e                	mv	s4,a5
   134ae:	04ea8713          	addi	a4,s5,78
   134b2:	0789                	addi	a5,a5,2
   134b4:	fe079f23          	sh	zero,-2(a5)
   134b8:	fee79de3          	bne	a5,a4,134b2 <ediv+0xf2>
   134bc:	1008                	addi	a0,sp,32
   134be:	c10ff0ef          	jal	ra,128ce <eshdn1>
   134c2:	00615c03          	lhu	s8,6(sp)
   134c6:	6b41                	lui	s6,0x10
   134c8:	1b7d                	addi	s6,s6,-1
   134ca:	036c0d33          	mul	s10,s8,s6
   134ce:	01a98c93          	addi	s9,s3,26
   134d2:	02415783          	lhu	a5,36(sp)
   134d6:	02615403          	lhu	s0,38(sp)
   134da:	07c2                	slli	a5,a5,0x10
   134dc:	97a2                	add	a5,a5,s0
   134de:	845a                	mv	s0,s6
   134e0:	00fd6663          	bltu	s10,a5,134ec <ediv+0x12c>
   134e4:	0387d433          	divu	s0,a5,s8
   134e8:	1442                	slli	s0,s0,0x30
   134ea:	9041                	srli	s0,s0,0x30
   134ec:	858a                	mv	a1,sp
   134ee:	8522                	mv	a0,s0
   134f0:	0090                	addi	a2,sp,64
   134f2:	d2aff0ef          	jal	ra,12a1c <m16m>
   134f6:	100c                	addi	a1,sp,32
   134f8:	0088                	addi	a0,sp,64
   134fa:	baaff0ef          	jal	ra,128a4 <ecmpm>
   134fe:	00a05f63          	blez	a0,1351c <ediv+0x15c>
   13502:	008c                	addi	a1,sp,64
   13504:	850a                	mv	a0,sp
   13506:	ceeff0ef          	jal	ra,129f4 <esubm>
   1350a:	100c                	addi	a1,sp,32
   1350c:	0088                	addi	a0,sp,64
   1350e:	b96ff0ef          	jal	ra,128a4 <ecmpm>
   13512:	0ea04163          	bgtz	a0,135f4 <ediv+0x234>
   13516:	347d                	addiw	s0,s0,-1
   13518:	1442                	slli	s0,s0,0x30
   1351a:	9041                	srli	s0,s0,0x30
   1351c:	100c                	addi	a1,sp,32
   1351e:	0088                	addi	a0,sp,64
   13520:	cd4ff0ef          	jal	ra,129f4 <esubm>
   13524:	1008                	addi	a0,sp,32
   13526:	008a1023          	sh	s0,0(s4)
   1352a:	0a09                	addi	s4,s4,2
   1352c:	c62ff0ef          	jal	ra,1298e <eshup6>
   13530:	fb9a11e3          	bne	s4,s9,134d2 <ediv+0x112>
   13534:	4781                	li	a5,0
   13536:	4581                	li	a1,0
   13538:	4759                	li	a4,22
   1353a:	1014                	addi	a3,sp,32
   1353c:	96be                	add	a3,a3,a5
   1353e:	0046d683          	lhu	a3,4(a3)
   13542:	0789                	addi	a5,a5,2
   13544:	8dd5                	or	a1,a1,a3
   13546:	fee79ae3          	bne	a5,a4,1353a <ediv+0x17a>
   1354a:	2581                	sext.w	a1,a1
   1354c:	00b035b3          	snez	a1,a1
   13550:	101c                	addi	a5,sp,32
   13552:	0009d703          	lhu	a4,0(s3)
   13556:	0989                	addi	s3,s3,2
   13558:	0789                	addi	a5,a5,2
   1355a:	fee79f23          	sh	a4,-2(a5)
   1355e:	ff3a1ae3          	bne	s4,s3,13552 <ediv+0x192>
   13562:	6691                	lui	a3,0x4
   13564:	417484b3          	sub	s1,s1,s7
   13568:	16fd                	addi	a3,a3,-1
   1356a:	87d6                	mv	a5,s5
   1356c:	04000713          	li	a4,64
   13570:	96a6                	add	a3,a3,s1
   13572:	4601                	li	a2,0
   13574:	1008                	addi	a0,sp,32
   13576:	983ff0ef          	jal	ra,12ef8 <emdnorm>
   1357a:	00015703          	lhu	a4,0(sp)
   1357e:	02015783          	lhu	a5,32(sp)
   13582:	08f71163          	bne	a4,a5,13604 <ediv+0x244>
   13586:	02011023          	sh	zero,32(sp)
   1358a:	85ca                	mv	a1,s2
   1358c:	1008                	addi	a0,sp,32
   1358e:	85fff0ef          	jal	ra,12dec <emovo.isra.6>
   13592:	bdb9                	j	133f0 <ediv+0x30>
   13594:	d9898593          	addi	a1,s3,-616
   13598:	8522                	mv	a0,s0
   1359a:	dd6ff0ef          	jal	ra,12b70 <ecmp>
   1359e:	e80516e3          	bnez	a0,1342a <ediv+0x6a>
   135a2:	854a                	mv	a0,s2
   135a4:	829ff0ef          	jal	ra,12dcc <enan.constprop.12>
   135a8:	b5a1                	j	133f0 <ediv+0x30>
   135aa:	fd65                	bnez	a0,135a2 <ediv+0x1e2>
   135ac:	854a                	mv	a0,s2
   135ae:	aa4ff0ef          	jal	ra,12852 <eclear>
   135b2:	bd3d                	j	133f0 <ediv+0x30>
   135b4:	8526                	mv	a0,s1
   135b6:	d00ff0ef          	jal	ra,12ab6 <eisneg>
   135ba:	84aa                	mv	s1,a0
   135bc:	8522                	mv	a0,s0
   135be:	cf8ff0ef          	jal	ra,12ab6 <eisneg>
   135c2:	02a48663          	beq	s1,a0,135ee <ediv+0x22e>
   135c6:	77e1                	lui	a5,0xffff8
   135c8:	00f91923          	sh	a5,18(s2)
   135cc:	854a                	mv	a0,s2
   135ce:	e6aff0ef          	jal	ra,12c38 <einfin.isra.2>
   135d2:	bd39                	j	133f0 <ediv+0x30>
   135d4:	0789                	addi	a5,a5,2
   135d6:	e8e794e3          	bne	a5,a4,1345e <ediv+0x9e>
   135da:	bfc9                	j	135ac <ediv+0x1ec>
   135dc:	0789                	addi	a5,a5,2
   135de:	eae790e3          	bne	a5,a4,1347e <ediv+0xbe>
   135e2:	00015703          	lhu	a4,0(sp)
   135e6:	02015783          	lhu	a5,32(sp)
   135ea:	fcf71ee3          	bne	a4,a5,135c6 <ediv+0x206>
   135ee:	00091923          	sh	zero,18(s2)
   135f2:	bfe9                	j	135cc <ediv+0x20c>
   135f4:	3479                	addiw	s0,s0,-2
   135f6:	1442                	slli	s0,s0,0x30
   135f8:	008c                	addi	a1,sp,64
   135fa:	850a                	mv	a0,sp
   135fc:	9041                	srli	s0,s0,0x30
   135fe:	bf6ff0ef          	jal	ra,129f4 <esubm>
   13602:	bf29                	j	1351c <ediv+0x15c>
   13604:	57fd                	li	a5,-1
   13606:	02f11023          	sh	a5,32(sp)
   1360a:	b741                	j	1358a <ediv+0x1ca>

000000000001360c <_ldtoa_r>:
   1360c:	db010113          	addi	sp,sp,-592
   13610:	ffe6                	sd	s9,504(sp)
   13612:	8cbe                	mv	s9,a5
   13614:	09100793          	li	a5,145
   13618:	e0ae                	sd	a1,64(sp)
   1361a:	1782                	slli	a5,a5,0x20
   1361c:	712c                	ld	a1,96(a0)
   1361e:	17fd                	addi	a5,a5,-1
   13620:	24813023          	sd	s0,576(sp)
   13624:	23413023          	sd	s4,544(sp)
   13628:	21513c23          	sd	s5,536(sp)
   1362c:	21713423          	sd	s7,520(sp)
   13630:	24113423          	sd	ra,584(sp)
   13634:	22913c23          	sd	s1,568(sp)
   13638:	23213823          	sd	s2,560(sp)
   1363c:	23313423          	sd	s3,552(sp)
   13640:	21613823          	sd	s6,528(sp)
   13644:	21813023          	sd	s8,512(sp)
   13648:	fbea                	sd	s10,496(sp)
   1364a:	f7ee                	sd	s11,488(sp)
   1364c:	ec46                	sd	a7,24(sp)
   1364e:	e4b2                	sd	a2,72(sp)
   13650:	eb3e                	sd	a5,400(sp)
   13652:	8a2a                	mv	s4,a0
   13654:	8bb6                	mv	s7,a3
   13656:	8aba                	mv	s5,a4
   13658:	8442                	mv	s0,a6
   1365a:	c999                	beqz	a1,13670 <_ldtoa_r+0x64>
   1365c:	5538                	lw	a4,104(a0)
   1365e:	4785                	li	a5,1
   13660:	00e797bb          	sllw	a5,a5,a4
   13664:	c598                	sw	a4,8(a1)
   13666:	c5dc                	sw	a5,12(a1)
   13668:	377000ef          	jal	ra,141de <_Bfree>
   1366c:	060a3023          	sd	zero,96(s4)
   13670:	0088                	addi	a0,sp,64
   13672:	188c                	addi	a1,sp,112
   13674:	fcaff0ef          	jal	ra,12e3e <e113toe.isra.8>
   13678:	1888                	addi	a0,sp,112
   1367a:	c3cff0ef          	jal	ra,12ab6 <eisneg>
   1367e:	cd4d                	beqz	a0,13738 <_ldtoa_r+0x12c>
   13680:	4785                	li	a5,1
   13682:	c01c                	sw	a5,0(s0)
   13684:	478d                	li	a5,3
   13686:	0afb8c63          	beq	s7,a5,1373e <_ldtoa_r+0x132>
   1368a:	4951                	li	s2,20
   1368c:	000b8c63          	beqz	s7,136a4 <_ldtoa_r+0x98>
   13690:	fffa879b          	addiw	a5,s5,-1
   13694:	02a00713          	li	a4,42
   13698:	0007891b          	sext.w	s2,a5
   1369c:	00f75463          	ble	a5,a4,136a4 <_ldtoa_r+0x98>
   136a0:	02a00913          	li	s2,42
   136a4:	19412783          	lw	a5,404(sp)
   136a8:	1888                	addi	a0,sp,112
   136aa:	f03e                	sd	a5,32(sp)
   136ac:	be4ff0ef          	jal	ra,12a90 <eisnan>
   136b0:	842a                	mv	s0,a0
   136b2:	c941                	beqz	a0,13742 <_ldtoa_r+0x136>
   136b4:	0001a5b7          	lui	a1,0x1a
   136b8:	00058593          	mv	a1,a1
   136bc:	0a88                	addi	a0,sp,336
   136be:	6409                	lui	s0,0x2
   136c0:	652010ef          	jal	ra,14d12 <sprintf>
   136c4:	70f40413          	addi	s0,s0,1807 # 270f <main-0xd9a1>
   136c8:	5782                	lw	a5,32(sp)
   136ca:	1888                	addi	a0,sp,112
   136cc:	1a812023          	sw	s0,416(sp)
   136d0:	18f12a23          	sw	a5,404(sp)
   136d4:	d40ff0ef          	jal	ra,12c14 <eisinf>
   136d8:	15010993          	addi	s3,sp,336
   136dc:	e511                	bnez	a0,136e8 <_ldtoa_r+0xdc>
   136de:	1888                	addi	a0,sp,112
   136e0:	bb0ff0ef          	jal	ra,12a90 <eisnan>
   136e4:	6e050e63          	beqz	a0,13de0 <_ldtoa_r+0x7d4>
   136e8:	6789                	lui	a5,0x2
   136ea:	70f7879b          	addiw	a5,a5,1807
   136ee:	00fca023          	sw	a5,0(s9)
   136f2:	87ce                	mv	a5,s3
   136f4:	02000613          	li	a2,32
   136f8:	02d00693          	li	a3,45
   136fc:	0007c703          	lbu	a4,0(a5) # 2000 <main-0xe0b0>
   13700:	72c70463          	beq	a4,a2,13e28 <_ldtoa_r+0x81c>
   13704:	72d70263          	beq	a4,a3,13e28 <_ldtoa_r+0x81c>
   13708:	844e                	mv	s0,s3
   1370a:	0785                	addi	a5,a5,1
   1370c:	fff7c703          	lbu	a4,-1(a5)
   13710:	00140693          	addi	a3,s0,1
   13714:	fee68fa3          	sb	a4,-1(a3) # 3fff <main-0xc0b1>
   13718:	70071b63          	bnez	a4,13e2e <_ldtoa_r+0x822>
   1371c:	4709                	li	a4,2
   1371e:	4785                	li	a5,1
   13720:	00eb8863          	beq	s7,a4,13730 <_ldtoa_r+0x124>
   13724:	1a012783          	lw	a5,416(sp)
   13728:	0127d363          	ble	s2,a5,1372e <_ldtoa_r+0x122>
   1372c:	87ca                	mv	a5,s2
   1372e:	2781                	sext.w	a5,a5
   13730:	03000693          	li	a3,48
   13734:	7060006f          	j	13e3a <_ldtoa_r+0x82e>
   13738:	00042023          	sw	zero,0(s0)
   1373c:	b7a1                	j	13684 <_ldtoa_r+0x78>
   1373e:	87d6                	mv	a5,s5
   13740:	bf91                	j	13694 <_ldtoa_r+0x88>
   13742:	09000793          	li	a5,144
   13746:	090c                	addi	a1,sp,144
   13748:	1888                	addi	a0,sp,112
   1374a:	18f12a23          	sw	a5,404(sp)
   1374e:	914ff0ef          	jal	ra,12862 <emov>
   13752:	0a215783          	lhu	a5,162(sp)
   13756:	e402                	sd	zero,8(sp)
   13758:	0107971b          	slliw	a4,a5,0x10
   1375c:	4107571b          	sraiw	a4,a4,0x10
   13760:	00075a63          	bgez	a4,13774 <_ldtoa_r+0x168>
   13764:	6721                	lui	a4,0x8
   13766:	177d                	addi	a4,a4,-1
   13768:	8ff9                	and	a5,a5,a4
   1376a:	0af11123          	sh	a5,162(sp)
   1376e:	67c1                	lui	a5,0x10
   13770:	17fd                	addi	a5,a5,-1
   13772:	e43e                	sd	a5,8(sp)
   13774:	6b69                	lui	s6,0x1a
   13776:	d98b0513          	addi	a0,s6,-616 # 19d98 <ezero>
   1377a:	190c                	addi	a1,sp,176
   1377c:	0561                	addi	a0,a0,24
   1377e:	8e4ff0ef          	jal	ra,12862 <emov>
   13782:	0a215703          	lhu	a4,162(sp)
   13786:	64e9                	lui	s1,0x1a
   13788:	d98b0993          	addi	s3,s6,-616
   1378c:	db048493          	addi	s1,s1,-592 # 19db0 <eone>
   13790:	74071963          	bnez	a4,13ee2 <_ldtoa_r+0x8d6>
   13794:	091c                	addi	a5,sp,144
   13796:	0a210713          	addi	a4,sp,162
   1379a:	0007d683          	lhu	a3,0(a5) # 10000 <main-0xb0>
   1379e:	e6e1                	bnez	a3,13866 <_ldtoa_r+0x25a>
   137a0:	0789                	addi	a5,a5,2
   137a2:	fef71ce3          	bne	a4,a5,1379a <_ldtoa_r+0x18e>
   137a6:	198c                	addi	a1,sp,240
   137a8:	1908                	addi	a0,sp,176
   137aa:	b2cff0ef          	jal	ra,12ad6 <emovi>
   137ae:	190c                	addi	a1,sp,176
   137b0:	1988                	addi	a0,sp,240
   137b2:	8d6ff0ef          	jal	ra,12888 <emovz>
   137b6:	198c                	addi	a1,sp,240
   137b8:	0908                	addi	a0,sp,144
   137ba:	b1cff0ef          	jal	ra,12ad6 <emovi>
   137be:	090c                	addi	a1,sp,144
   137c0:	1988                	addi	a0,sp,240
   137c2:	8c6ff0ef          	jal	ra,12888 <emovz>
   137c6:	0b10                	addi	a2,sp,400
   137c8:	090c                	addi	a1,sp,144
   137ca:	1908                	addi	a0,sp,176
   137cc:	993ff0ef          	jal	ra,1315e <eiremain>
   137d0:	1dc15483          	lhu	s1,476(sp)
   137d4:	e881                	bnez	s1,137e4 <_ldtoa_r+0x1d8>
   137d6:	d98b0593          	addi	a1,s6,-616
   137da:	0908                	addi	a0,sp,144
   137dc:	b94ff0ef          	jal	ra,12b70 <ecmp>
   137e0:	4c051463          	bnez	a0,13ca8 <_ldtoa_r+0x69c>
   137e4:	67a2                	ld	a5,8(sp)
   137e6:	4e078b63          	beqz	a5,13cdc <_ldtoa_r+0x6d0>
   137ea:	02d00793          	li	a5,45
   137ee:	14f10823          	sb	a5,336(sp)
   137f2:	478d                	li	a5,3
   137f4:	89ca                	mv	s3,s2
   137f6:	00fb9863          	bne	s7,a5,13806 <_ldtoa_r+0x1fa>
   137fa:	008909bb          	addw	s3,s2,s0
   137fe:	02a00793          	li	a5,42
   13802:	6f37cd63          	blt	a5,s3,13efc <_ldtoa_r+0x8f0>
   13806:	47a9                	li	a5,10
   13808:	4cf49d63          	bne	s1,a5,13ce2 <_ldtoa_r+0x6d6>
   1380c:	03100793          	li	a5,49
   13810:	14f108a3          	sb	a5,337(sp)
   13814:	02e00793          	li	a5,46
   13818:	14f10923          	sb	a5,338(sp)
   1381c:	15310c13          	addi	s8,sp,339
   13820:	01305963          	blez	s3,13832 <_ldtoa_r+0x226>
   13824:	03000793          	li	a5,48
   13828:	14f109a3          	sb	a5,339(sp)
   1382c:	39fd                	addiw	s3,s3,-1
   1382e:	15410c13          	addi	s8,sp,340
   13832:	2405                	addiw	s0,s0,1
   13834:	4c09d163          	bgez	s3,13cf6 <_ldtoa_r+0x6ea>
   13838:	0001a5b7          	lui	a1,0x1a
   1383c:	8622                	mv	a2,s0
   1383e:	03058593          	addi	a1,a1,48 # 1a030 <emtens+0x138>
   13842:	8562                	mv	a0,s8
   13844:	4ce010ef          	jal	ra,14d12 <sprintf>
   13848:	b541                	j	136c8 <_ldtoa_r+0xbc>
   1384a:	0001a5b7          	lui	a1,0x1a
   1384e:	01858593          	addi	a1,a1,24 # 1a018 <emtens+0x120>
   13852:	b5ad                	j	136bc <_ldtoa_r+0xb0>
   13854:	0a011783          	lh	a5,160(sp)
   13858:	0007c763          	bltz	a5,13866 <_ldtoa_r+0x25a>
   1385c:	0001a5b7          	lui	a1,0x1a
   13860:	02858593          	addi	a1,a1,40 # 1a028 <emtens+0x130>
   13864:	bda1                	j	136bc <_ldtoa_r+0xb0>
   13866:	090c                	addi	a1,sp,144
   13868:	8526                	mv	a0,s1
   1386a:	b06ff0ef          	jal	ra,12b70 <ecmp>
   1386e:	dd05                	beqz	a0,137a6 <_ldtoa_r+0x19a>
   13870:	32055063          	bgez	a0,13b90 <_ldtoa_r+0x584>
   13874:	098c                	addi	a1,sp,208
   13876:	0908                	addi	a0,sp,144
   13878:	febfe0ef          	jal	ra,12862 <emov>
   1387c:	6791                	lui	a5,0x4
   1387e:	08e7879b          	addiw	a5,a5,142
   13882:	0ef11123          	sh	a5,226(sp)
   13886:	47c1                	li	a5,16
   13888:	e83e                	sd	a5,16(sp)
   1388a:	67a1                	lui	a5,0x8
   1388c:	17fd                	addi	a5,a5,-1
   1388e:	f43e                	sd	a5,40(sp)
   13890:	77f1                	lui	a5,0xffffc
   13892:	2789                	addiw	a5,a5,2
   13894:	4d01                	li	s10,0
   13896:	da3e                	sw	a5,52(sp)
   13898:	67e9                	lui	a5,0x1a
   1389a:	e6878793          	addi	a5,a5,-408 # 19e68 <etens+0xa0>
   1389e:	01a78533          	add	a0,a5,s10
   138a2:	0b14                	addi	a3,sp,400
   138a4:	1910                	addi	a2,sp,176
   138a6:	098c                	addi	a1,sp,208
   138a8:	b19ff0ef          	jal	ra,133c0 <ediv>
   138ac:	08ac                	addi	a1,sp,88
   138ae:	1908                	addi	a0,sp,176
   138b0:	fb3fe0ef          	jal	ra,12862 <emov>
   138b4:	77a2                	ld	a5,40(sp)
   138b6:	06a15c03          	lhu	s8,106(sp)
   138ba:	00fc76b3          	and	a3,s8,a5
   138be:	57d2                	lw	a5,52(sp)
   138c0:	9ebd                	addw	a3,a3,a5
   138c2:	02d04f63          	bgtz	a3,13900 <_ldtoa_r+0x2f4>
   138c6:	1988                	addi	a0,sp,240
   138c8:	f8bfe0ef          	jal	ra,12852 <eclear>
   138cc:	010c1c1b          	slliw	s8,s8,0x10
   138d0:	410c5c1b          	sraiw	s8,s8,0x10
   138d4:	0c0c5063          	bgez	s8,13994 <_ldtoa_r+0x388>
   138d8:	4781                	li	a5,0
   138da:	08b8                	addi	a4,sp,88
   138dc:	973e                	add	a4,a4,a5
   138de:	00075683          	lhu	a3,0(a4) # 8000 <main-0x80b0>
   138e2:	1998                	addi	a4,sp,240
   138e4:	973e                	add	a4,a4,a5
   138e6:	00075703          	lhu	a4,0(a4)
   138ea:	28e68e63          	beq	a3,a4,13b86 <_ldtoa_r+0x57a>
   138ee:	8526                	mv	a0,s1
   138f0:	9a0ff0ef          	jal	ra,12a90 <eisnan>
   138f4:	c135                	beqz	a0,13958 <_ldtoa_r+0x34c>
   138f6:	198c                	addi	a1,sp,240
   138f8:	8526                	mv	a0,s1
   138fa:	f69fe0ef          	jal	ra,12862 <emov>
   138fe:	a859                	j	13994 <_ldtoa_r+0x388>
   13900:	09000793          	li	a5,144
   13904:	40d7873b          	subw	a4,a5,a3
   13908:	198c                	addi	a1,sp,240
   1390a:	08a8                	addi	a0,sp,88
   1390c:	8dba                	mv	s11,a4
   1390e:	fc3a                	sd	a4,56(sp)
   13910:	f53fe0ef          	jal	ra,12862 <emov>
   13914:	7762                	ld	a4,56(sp)
   13916:	06e05f63          	blez	a4,13994 <_ldtoa_r+0x388>
   1391a:	199c                	addi	a5,sp,240
   1391c:	463d                	li	a2,15
   1391e:	02e64863          	blt	a2,a4,1394e <_ldtoa_r+0x342>
   13922:	004dd61b          	srliw	a2,s11,0x4
   13926:	02061713          	slli	a4,a2,0x20
   1392a:	199c                	addi	a5,sp,240
   1392c:	837d                	srli	a4,a4,0x1f
   1392e:	973e                	add	a4,a4,a5
   13930:	57c1                	li	a5,-16
   13932:	02c787bb          	mulw	a5,a5,a2
   13936:	00075683          	lhu	a3,0(a4)
   1393a:	01b787bb          	addw	a5,a5,s11
   1393e:	0786                	slli	a5,a5,0x1
   13940:	97ce                	add	a5,a5,s3
   13942:	1387d783          	lhu	a5,312(a5)
   13946:	8ff5                	and	a5,a5,a3
   13948:	00f71023          	sh	a5,0(a4)
   1394c:	b741                	j	138cc <_ldtoa_r+0x2c0>
   1394e:	00079023          	sh	zero,0(a5)
   13952:	3741                	addiw	a4,a4,-16
   13954:	0789                	addi	a5,a5,2
   13956:	b7e1                	j	1391e <_ldtoa_r+0x312>
   13958:	1988                	addi	a0,sp,240
   1395a:	936ff0ef          	jal	ra,12a90 <eisnan>
   1395e:	c501                	beqz	a0,13966 <_ldtoa_r+0x35a>
   13960:	198c                	addi	a1,sp,240
   13962:	852e                	mv	a0,a1
   13964:	bf59                	j	138fa <_ldtoa_r+0x2ee>
   13966:	8526                	mv	a0,s1
   13968:	aacff0ef          	jal	ra,12c14 <eisinf>
   1396c:	8daa                	mv	s11,a0
   1396e:	1988                	addi	a0,sp,240
   13970:	aa4ff0ef          	jal	ra,12c14 <eisinf>
   13974:	8c2a                	mv	s8,a0
   13976:	0e0d8963          	beqz	s11,13a68 <_ldtoa_r+0x45c>
   1397a:	c961                	beqz	a0,13a4a <_ldtoa_r+0x43e>
   1397c:	8526                	mv	a0,s1
   1397e:	938ff0ef          	jal	ra,12ab6 <eisneg>
   13982:	8c2a                	mv	s8,a0
   13984:	1988                	addi	a0,sp,240
   13986:	930ff0ef          	jal	ra,12ab6 <eisneg>
   1398a:	0cac1063          	bne	s8,a0,13a4a <_ldtoa_r+0x43e>
   1398e:	1988                	addi	a0,sp,240
   13990:	c3cff0ef          	jal	ra,12dcc <enan.constprop.12>
   13994:	4781                	li	a5,0
   13996:	1918                	addi	a4,sp,176
   13998:	973e                	add	a4,a4,a5
   1399a:	00075683          	lhu	a3,0(a4)
   1399e:	1998                	addi	a4,sp,240
   139a0:	973e                	add	a4,a4,a5
   139a2:	00075703          	lhu	a4,0(a4)
   139a6:	00e69c63          	bne	a3,a4,139be <_ldtoa_r+0x3b2>
   139aa:	0789                	addi	a5,a5,2
   139ac:	4749                	li	a4,18
   139ae:	fee794e3          	bne	a5,a4,13996 <_ldtoa_r+0x38a>
   139b2:	098c                	addi	a1,sp,208
   139b4:	1908                	addi	a0,sp,176
   139b6:	eadfe0ef          	jal	ra,12862 <emov>
   139ba:	47c2                	lw	a5,16(sp)
   139bc:	9c3d                	addw	s0,s0,a5
   139be:	67c2                	ld	a5,16(sp)
   139c0:	0d51                	addi	s10,s10,20
   139c2:	8385                	srli	a5,a5,0x1
   139c4:	e83e                	sd	a5,16(sp)
   139c6:	06400793          	li	a5,100
   139ca:	ecfd17e3          	bne	s10,a5,13898 <_ldtoa_r+0x28c>
   139ce:	0e215783          	lhu	a5,226(sp)
   139d2:	0a215703          	lhu	a4,162(sp)
   139d6:	090c                	addi	a1,sp,144
   139d8:	0988                	addi	a0,sp,208
   139da:	9fb9                	addw	a5,a5,a4
   139dc:	7771                	lui	a4,0xffffc
   139de:	f727071b          	addiw	a4,a4,-142
   139e2:	9fb9                	addw	a5,a5,a4
   139e4:	0ef11123          	sh	a5,226(sp)
   139e8:	e7bfe0ef          	jal	ra,12862 <emov>
   139ec:	8526                	mv	a0,s1
   139ee:	190c                	addi	a1,sp,176
   139f0:	e73fe0ef          	jal	ra,12862 <emov>
   139f4:	4481                	li	s1,0
   139f6:	6d05                	lui	s10,0x1
   139f8:	12098993          	addi	s3,s3,288
   139fc:	10400d93          	li	s11,260
   13a00:	67e9                	lui	a5,0x1a
   13a02:	dc878793          	addi	a5,a5,-568 # 19dc8 <etens>
   13a06:	098c                	addi	a1,sp,208
   13a08:	854e                	mv	a0,s3
   13a0a:	00f48c33          	add	s8,s1,a5
   13a0e:	962ff0ef          	jal	ra,12b70 <ecmp>
   13a12:	d8a04ae3          	bgtz	a0,137a6 <_ldtoa_r+0x19a>
   13a16:	098c                	addi	a1,sp,208
   13a18:	8562                	mv	a0,s8
   13a1a:	956ff0ef          	jal	ra,12b70 <ecmp>
   13a1e:	02a04063          	bgtz	a0,13a3e <_ldtoa_r+0x432>
   13a22:	0990                	addi	a2,sp,208
   13a24:	85b2                	mv	a1,a2
   13a26:	0b14                	addi	a3,sp,400
   13a28:	8562                	mv	a0,s8
   13a2a:	997ff0ef          	jal	ra,133c0 <ediv>
   13a2e:	1910                	addi	a2,sp,176
   13a30:	0b14                	addi	a3,sp,400
   13a32:	85b2                	mv	a1,a2
   13a34:	8562                	mv	a0,s8
   13a36:	fbcff0ef          	jal	ra,131f2 <emul>
   13a3a:	008d043b          	addw	s0,s10,s0
   13a3e:	04d1                	addi	s1,s1,20
   13a40:	001d5d13          	srli	s10,s10,0x1
   13a44:	fbb49ee3          	bne	s1,s11,13a00 <_ldtoa_r+0x3f4>
   13a48:	bbb9                	j	137a6 <_ldtoa_r+0x19a>
   13a4a:	8526                	mv	a0,s1
   13a4c:	198c                	addi	a1,sp,240
   13a4e:	e15fe0ef          	jal	ra,12862 <emov>
   13a52:	1988                	addi	a0,sp,240
   13a54:	83cff0ef          	jal	ra,12a90 <eisnan>
   13a58:	fd15                	bnez	a0,13994 <_ldtoa_r+0x388>
   13a5a:	10215783          	lhu	a5,258(sp)
   13a5e:	7761                	lui	a4,0xffff8
   13a60:	8fb9                	xor	a5,a5,a4
   13a62:	10f11123          	sh	a5,258(sp)
   13a66:	b73d                	j	13994 <_ldtoa_r+0x388>
   13a68:	ee051ce3          	bnez	a0,13960 <_ldtoa_r+0x354>
   13a6c:	0a0c                	addi	a1,sp,272
   13a6e:	8526                	mv	a0,s1
   13a70:	866ff0ef          	jal	ra,12ad6 <emovi>
   13a74:	1a0c                	addi	a1,sp,304
   13a76:	1988                	addi	a0,sp,240
   13a78:	85eff0ef          	jal	ra,12ad6 <emovi>
   13a7c:	11015703          	lhu	a4,272(sp)
   13a80:	13215d83          	lhu	s11,306(sp)
   13a84:	11215783          	lhu	a5,274(sp)
   13a88:	fff74713          	not	a4,a4
   13a8c:	1742                	slli	a4,a4,0x30
   13a8e:	9341                	srli	a4,a4,0x30
   13a90:	10e11823          	sh	a4,272(sp)
   13a94:	41b787b3          	sub	a5,a5,s11
   13a98:	06f05363          	blez	a5,13afe <_ldtoa_r+0x4f2>
   13a9c:	0a8c                	addi	a1,sp,336
   13a9e:	1a08                	addi	a0,sp,304
   13aa0:	fc3e                	sd	a5,56(sp)
   13aa2:	de7fe0ef          	jal	ra,12888 <emovz>
   13aa6:	1a0c                	addi	a1,sp,304
   13aa8:	0a08                	addi	a0,sp,272
   13aaa:	ddffe0ef          	jal	ra,12888 <emovz>
   13aae:	0a0c                	addi	a1,sp,272
   13ab0:	0a88                	addi	a0,sp,336
   13ab2:	dd7fe0ef          	jal	ra,12888 <emovz>
   13ab6:	77e2                	ld	a5,56(sp)
   13ab8:	13215d83          	lhu	s11,306(sp)
   13abc:	40f007b3          	neg	a5,a5
   13ac0:	f6f00713          	li	a4,-145
   13ac4:	06e7c763          	blt	a5,a4,13b32 <_ldtoa_r+0x526>
   13ac8:	85be                	mv	a1,a5
   13aca:	0a08                	addi	a0,sp,272
   13acc:	98aff0ef          	jal	ra,12c56 <eshift.part.3>
   13ad0:	882a                	mv	a6,a0
   13ad2:	11015703          	lhu	a4,272(sp)
   13ad6:	13015783          	lhu	a5,304(sp)
   13ada:	fc42                	sd	a6,56(sp)
   13adc:	1a0c                	addi	a1,sp,304
   13ade:	0a08                	addi	a0,sp,272
   13ae0:	08f71f63          	bne	a4,a5,13b7e <_ldtoa_r+0x572>
   13ae4:	ee9fe0ef          	jal	ra,129cc <eaddm>
   13ae8:	7862                	ld	a6,56(sp)
   13aea:	0b1c                	addi	a5,sp,400
   13aec:	04000713          	li	a4,64
   13af0:	86ee                	mv	a3,s11
   13af2:	8662                	mv	a2,s8
   13af4:	85c2                	mv	a1,a6
   13af6:	1a08                	addi	a0,sp,304
   13af8:	c00ff0ef          	jal	ra,12ef8 <emdnorm>
   13afc:	a81d                	j	13b32 <_ldtoa_r+0x526>
   13afe:	f3e9                	bnez	a5,13ac0 <_ldtoa_r+0x4b4>
   13b00:	1a0c                	addi	a1,sp,304
   13b02:	0a08                	addi	a0,sp,272
   13b04:	fc3a                	sd	a4,56(sp)
   13b06:	d9ffe0ef          	jal	ra,128a4 <ecmpm>
   13b0a:	e929                	bnez	a0,13b5c <_ldtoa_r+0x550>
   13b0c:	13015783          	lhu	a5,304(sp)
   13b10:	7762                	ld	a4,56(sp)
   13b12:	00e78663          	beq	a5,a4,13b1e <_ldtoa_r+0x512>
   13b16:	1988                	addi	a0,sp,240
   13b18:	d3bfe0ef          	jal	ra,12852 <eclear>
   13b1c:	bda5                	j	13994 <_ldtoa_r+0x388>
   13b1e:	000d9f63          	bnez	s11,13b3c <_ldtoa_r+0x530>
   13b22:	13611703          	lh	a4,310(sp)
   13b26:	4781                	li	a5,0
   13b28:	00074b63          	bltz	a4,13b3e <_ldtoa_r+0x532>
   13b2c:	1a08                	addi	a0,sp,304
   13b2e:	dd9fe0ef          	jal	ra,12906 <eshup1>
   13b32:	198c                	addi	a1,sp,240
   13b34:	1a08                	addi	a0,sp,304
   13b36:	ab6ff0ef          	jal	ra,12dec <emovo.isra.6>
   13b3a:	bda9                	j	13994 <_ldtoa_r+0x388>
   13b3c:	4781                	li	a5,0
   13b3e:	4759                	li	a4,22
   13b40:	1a14                	addi	a3,sp,304
   13b42:	00f68633          	add	a2,a3,a5
   13b46:	00265603          	lhu	a2,2(a2)
   13b4a:	c609                	beqz	a2,13b54 <_ldtoa_r+0x548>
   13b4c:	0d85                	addi	s11,s11,1
   13b4e:	13b11923          	sh	s11,306(sp)
   13b52:	b7c5                	j	13b32 <_ldtoa_r+0x526>
   13b54:	0789                	addi	a5,a5,2
   13b56:	fee795e3          	bne	a5,a4,13b40 <_ldtoa_r+0x534>
   13b5a:	bfd5                	j	13b4e <_ldtoa_r+0x542>
   13b5c:	4801                	li	a6,0
   13b5e:	f6a05ae3          	blez	a0,13ad2 <_ldtoa_r+0x4c6>
   13b62:	0a8c                	addi	a1,sp,336
   13b64:	1a08                	addi	a0,sp,304
   13b66:	d23fe0ef          	jal	ra,12888 <emovz>
   13b6a:	1a0c                	addi	a1,sp,304
   13b6c:	0a08                	addi	a0,sp,272
   13b6e:	d1bfe0ef          	jal	ra,12888 <emovz>
   13b72:	0a0c                	addi	a1,sp,272
   13b74:	0a88                	addi	a0,sp,336
   13b76:	d13fe0ef          	jal	ra,12888 <emovz>
   13b7a:	8862                	mv	a6,s8
   13b7c:	bf99                	j	13ad2 <_ldtoa_r+0x4c6>
   13b7e:	e77fe0ef          	jal	ra,129f4 <esubm>
   13b82:	4c05                	li	s8,1
   13b84:	b795                	j	13ae8 <_ldtoa_r+0x4dc>
   13b86:	0789                	addi	a5,a5,2
   13b88:	4749                	li	a4,18
   13b8a:	d4e798e3          	bne	a5,a4,138da <_ldtoa_r+0x2ce>
   13b8e:	b519                	j	13994 <_ldtoa_r+0x388>
   13b90:	0a215783          	lhu	a5,162(sp)
   13b94:	12098c13          	addi	s8,s3,288
   13b98:	cfad                	beqz	a5,13c12 <_ldtoa_r+0x606>
   13b9a:	198c                	addi	a1,sp,240
   13b9c:	0908                	addi	a0,sp,144
   13b9e:	6c11                	lui	s8,0x4
   13ba0:	f37fe0ef          	jal	ra,12ad6 <emovi>
   13ba4:	1c79                	addi	s8,s8,-2
   13ba6:	fd500d13          	li	s10,-43
   13baa:	10815783          	lhu	a5,264(sp)
   13bae:	8b9d                	andi	a5,a5,7
   13bb0:	e7a9                	bnez	a5,13bfa <_ldtoa_r+0x5ee>
   13bb2:	098c                	addi	a1,sp,208
   13bb4:	1988                	addi	a0,sp,240
   13bb6:	cd3fe0ef          	jal	ra,12888 <emovz>
   13bba:	0988                	addi	a0,sp,208
   13bbc:	d13fe0ef          	jal	ra,128ce <eshdn1>
   13bc0:	0988                	addi	a0,sp,208
   13bc2:	d0dfe0ef          	jal	ra,128ce <eshdn1>
   13bc6:	098c                	addi	a1,sp,208
   13bc8:	1988                	addi	a0,sp,240
   13bca:	e03fe0ef          	jal	ra,129cc <eaddm>
   13bce:	0d215783          	lhu	a5,210(sp)
   13bd2:	278d                	addiw	a5,a5,3
   13bd4:	0cf11923          	sh	a5,210(sp)
   13bd8:	0d415783          	lhu	a5,212(sp)
   13bdc:	efdd                	bnez	a5,13c9a <_ldtoa_r+0x68e>
   13bde:	0e815783          	lhu	a5,232(sp)
   13be2:	ef81                	bnez	a5,13bfa <_ldtoa_r+0x5ee>
   13be4:	0d215783          	lhu	a5,210(sp)
   13be8:	00fc6963          	bltu	s8,a5,13bfa <_ldtoa_r+0x5ee>
   13bec:	198c                	addi	a1,sp,240
   13bee:	0988                	addi	a0,sp,208
   13bf0:	347d                	addiw	s0,s0,-1
   13bf2:	c97fe0ef          	jal	ra,12888 <emovz>
   13bf6:	fba41ae3          	bne	s0,s10,13baa <_ldtoa_r+0x59e>
   13bfa:	090c                	addi	a1,sp,144
   13bfc:	1988                	addi	a0,sp,240
   13bfe:	9eeff0ef          	jal	ra,12dec <emovo.isra.6>
   13c02:	a821                	j	13c1a <_ldtoa_r+0x60e>
   13c04:	0910                	addi	a2,sp,144
   13c06:	0b14                	addi	a3,sp,400
   13c08:	85b2                	mv	a1,a2
   13c0a:	8562                	mv	a0,s8
   13c0c:	de6ff0ef          	jal	ra,131f2 <emul>
   13c10:	347d                	addiw	s0,s0,-1
   13c12:	0a011783          	lh	a5,160(sp)
   13c16:	fe07d7e3          	bgez	a5,13c04 <_ldtoa_r+0x5f8>
   13c1a:	198c                	addi	a1,sp,240
   13c1c:	0908                	addi	a0,sp,144
   13c1e:	c45fe0ef          	jal	ra,12862 <emov>
   13c22:	190c                	addi	a1,sp,176
   13c24:	8526                	mv	a0,s1
   13c26:	c3dfe0ef          	jal	ra,12862 <emov>
   13c2a:	16098793          	addi	a5,s3,352
   13c2e:	4d01                	li	s10,0
   13c30:	7c7d                	lui	s8,0xfffff
   13c32:	e83e                	sd	a5,16(sp)
   13c34:	4d89                	li	s11,2
   13c36:	67e9                	lui	a5,0x1a
   13c38:	dc878793          	addi	a5,a5,-568 # 19dc8 <etens>
   13c3c:	01a789b3          	add	s3,a5,s10
   13c40:	67c2                	ld	a5,16(sp)
   13c42:	198c                	addi	a1,sp,240
   13c44:	8526                	mv	a0,s1
   13c46:	01a78733          	add	a4,a5,s10
   13c4a:	f43a                	sd	a4,40(sp)
   13c4c:	f25fe0ef          	jal	ra,12b70 <ecmp>
   13c50:	7722                	ld	a4,40(sp)
   13c52:	02a05d63          	blez	a0,13c8c <_ldtoa_r+0x680>
   13c56:	198c                	addi	a1,sp,240
   13c58:	853a                	mv	a0,a4
   13c5a:	f17fe0ef          	jal	ra,12b70 <ecmp>
   13c5e:	02054063          	bltz	a0,13c7e <_ldtoa_r+0x672>
   13c62:	1990                	addi	a2,sp,240
   13c64:	85b2                	mv	a1,a2
   13c66:	0b14                	addi	a3,sp,400
   13c68:	854e                	mv	a0,s3
   13c6a:	d88ff0ef          	jal	ra,131f2 <emul>
   13c6e:	1910                	addi	a2,sp,176
   13c70:	0b14                	addi	a3,sp,400
   13c72:	85b2                	mv	a1,a2
   13c74:	854e                	mv	a0,s3
   13c76:	d7cff0ef          	jal	ra,131f2 <emul>
   13c7a:	008c043b          	addw	s0,s8,s0
   13c7e:	0d51                	addi	s10,s10,20
   13c80:	10400793          	li	a5,260
   13c84:	03bc4c3b          	divw	s8,s8,s11
   13c88:	fafd17e3          	bne	s10,a5,13c36 <_ldtoa_r+0x62a>
   13c8c:	1910                	addi	a2,sp,176
   13c8e:	0b14                	addi	a3,sp,400
   13c90:	85a6                	mv	a1,s1
   13c92:	8532                	mv	a0,a2
   13c94:	f2cff0ef          	jal	ra,133c0 <ediv>
   13c98:	b639                	j	137a6 <_ldtoa_r+0x19a>
   13c9a:	0988                	addi	a0,sp,208
   13c9c:	c33fe0ef          	jal	ra,128ce <eshdn1>
   13ca0:	0d215783          	lhu	a5,210(sp)
   13ca4:	2785                	addiw	a5,a5,1
   13ca6:	b73d                	j	13bd4 <_ldtoa_r+0x5c8>
   13ca8:	0908                	addi	a0,sp,144
   13caa:	c5dfe0ef          	jal	ra,12906 <eshup1>
   13cae:	098c                	addi	a1,sp,208
   13cb0:	0908                	addi	a0,sp,144
   13cb2:	bd7fe0ef          	jal	ra,12888 <emovz>
   13cb6:	0988                	addi	a0,sp,208
   13cb8:	c4ffe0ef          	jal	ra,12906 <eshup1>
   13cbc:	0988                	addi	a0,sp,208
   13cbe:	c49fe0ef          	jal	ra,12906 <eshup1>
   13cc2:	090c                	addi	a1,sp,144
   13cc4:	0988                	addi	a0,sp,208
   13cc6:	d07fe0ef          	jal	ra,129cc <eaddm>
   13cca:	0b10                	addi	a2,sp,400
   13ccc:	090c                	addi	a1,sp,144
   13cce:	1908                	addi	a0,sp,176
   13cd0:	c8eff0ef          	jal	ra,1315e <eiremain>
   13cd4:	347d                	addiw	s0,s0,-1
   13cd6:	1dc15483          	lhu	s1,476(sp)
   13cda:	bced                	j	137d4 <_ldtoa_r+0x1c8>
   13cdc:	02000793          	li	a5,32
   13ce0:	b639                	j	137ee <_ldtoa_r+0x1e2>
   13ce2:	0304849b          	addiw	s1,s1,48
   13ce6:	02e00793          	li	a5,46
   13cea:	149108a3          	sb	s1,337(sp)
   13cee:	14f10923          	sb	a5,338(sp)
   13cf2:	15310c13          	addi	s8,sp,339
   13cf6:	84e2                	mv	s1,s8
   13cf8:	418487bb          	subw	a5,s1,s8
   13cfc:	04f9d063          	ble	a5,s3,13d3c <_ldtoa_r+0x730>
   13d00:	1dc15783          	lhu	a5,476(sp)
   13d04:	4711                	li	a4,4
   13d06:	fff48c13          	addi	s8,s1,-1
   13d0a:	b2f757e3          	ble	a5,a4,13838 <_ldtoa_r+0x22c>
   13d0e:	4715                	li	a4,5
   13d10:	06e78463          	beq	a5,a4,13d78 <_ldtoa_r+0x76c>
   13d14:	87e2                	mv	a5,s8
   13d16:	02e00613          	li	a2,46
   13d1a:	03800593          	li	a1,56
   13d1e:	03000693          	li	a3,48
   13d22:	17fd                	addi	a5,a5,-1
   13d24:	0007c703          	lbu	a4,0(a5)
   13d28:	07f77713          	andi	a4,a4,127
   13d2c:	0809d163          	bgez	s3,13dae <_ldtoa_r+0x7a2>
   13d30:	03100713          	li	a4,49
   13d34:	00e78023          	sb	a4,0(a5)
   13d38:	2405                	addiw	s0,s0,1
   13d3a:	bcfd                	j	13838 <_ldtoa_r+0x22c>
   13d3c:	0908                	addi	a0,sp,144
   13d3e:	bc9fe0ef          	jal	ra,12906 <eshup1>
   13d42:	098c                	addi	a1,sp,208
   13d44:	0908                	addi	a0,sp,144
   13d46:	b43fe0ef          	jal	ra,12888 <emovz>
   13d4a:	0988                	addi	a0,sp,208
   13d4c:	bbbfe0ef          	jal	ra,12906 <eshup1>
   13d50:	0988                	addi	a0,sp,208
   13d52:	bb5fe0ef          	jal	ra,12906 <eshup1>
   13d56:	090c                	addi	a1,sp,144
   13d58:	0988                	addi	a0,sp,208
   13d5a:	c73fe0ef          	jal	ra,129cc <eaddm>
   13d5e:	0b10                	addi	a2,sp,400
   13d60:	090c                	addi	a1,sp,144
   13d62:	1908                	addi	a0,sp,176
   13d64:	bfaff0ef          	jal	ra,1315e <eiremain>
   13d68:	1dc14783          	lbu	a5,476(sp)
   13d6c:	0485                	addi	s1,s1,1
   13d6e:	0307879b          	addiw	a5,a5,48
   13d72:	fef48fa3          	sb	a5,-1(s1)
   13d76:	b749                	j	13cf8 <_ldtoa_r+0x6ec>
   13d78:	190c                	addi	a1,sp,176
   13d7a:	0908                	addi	a0,sp,144
   13d7c:	870ff0ef          	jal	ra,12dec <emovo.isra.6>
   13d80:	d98b0593          	addi	a1,s6,-616
   13d84:	1908                	addi	a0,sp,176
   13d86:	debfe0ef          	jal	ra,12b70 <ecmp>
   13d8a:	f549                	bnez	a0,13d14 <_ldtoa_r+0x708>
   13d8c:	aa09c6e3          	bltz	s3,13838 <_ldtoa_r+0x22c>
   13d90:	ffe4c783          	lbu	a5,-2(s1)
   13d94:	fd278793          	addi	a5,a5,-46
   13d98:	0017b793          	seqz	a5,a5
   13d9c:	fff7c793          	not	a5,a5
   13da0:	97e2                	add	a5,a5,s8
   13da2:	0007c783          	lbu	a5,0(a5)
   13da6:	8b85                	andi	a5,a5,1
   13da8:	a80788e3          	beqz	a5,13838 <_ldtoa_r+0x22c>
   13dac:	b7a5                	j	13d14 <_ldtoa_r+0x708>
   13dae:	02c71063          	bne	a4,a2,13dce <_ldtoa_r+0x7c2>
   13db2:	fff7c703          	lbu	a4,-1(a5)
   13db6:	03800693          	li	a3,56
   13dba:	00e6e663          	bltu	a3,a4,13dc6 <_ldtoa_r+0x7ba>
   13dbe:	2705                	addiw	a4,a4,1
   13dc0:	fee78fa3          	sb	a4,-1(a5)
   13dc4:	bc95                	j	13838 <_ldtoa_r+0x22c>
   13dc6:	2405                	addiw	s0,s0,1
   13dc8:	03100713          	li	a4,49
   13dcc:	bfd5                	j	13dc0 <_ldtoa_r+0x7b4>
   13dce:	00e5e663          	bltu	a1,a4,13dda <_ldtoa_r+0x7ce>
   13dd2:	2705                	addiw	a4,a4,1
   13dd4:	00e78023          	sb	a4,0(a5)
   13dd8:	b485                	j	13838 <_ldtoa_r+0x22c>
   13dda:	00d78023          	sb	a3,0(a5)
   13dde:	b791                	j	13d22 <_ldtoa_r+0x716>
   13de0:	2405                	addiw	s0,s0,1
   13de2:	008ca023          	sw	s0,0(s9)
   13de6:	87ce                	mv	a5,s3
   13de8:	02e00693          	li	a3,46
   13dec:	0007c703          	lbu	a4,0(a5)
   13df0:	e701                	bnez	a4,13df8 <_ldtoa_r+0x7ec>
   13df2:	04500713          	li	a4,69
   13df6:	a839                	j	13e14 <_ldtoa_r+0x808>
   13df8:	00d70963          	beq	a4,a3,13e0a <_ldtoa_r+0x7fe>
   13dfc:	0785                	addi	a5,a5,1
   13dfe:	b7fd                	j	13dec <_ldtoa_r+0x7e0>
   13e00:	0017c703          	lbu	a4,1(a5)
   13e04:	0785                	addi	a5,a5,1
   13e06:	fee78fa3          	sb	a4,-1(a5)
   13e0a:	0007c703          	lbu	a4,0(a5)
   13e0e:	fb6d                	bnez	a4,13e00 <_ldtoa_r+0x7f4>
   13e10:	b7cd                	j	13df2 <_ldtoa_r+0x7e6>
   13e12:	17fd                	addi	a5,a5,-1
   13e14:	0007c683          	lbu	a3,0(a5)
   13e18:	00e68463          	beq	a3,a4,13e20 <_ldtoa_r+0x814>
   13e1c:	fef9ebe3          	bltu	s3,a5,13e12 <_ldtoa_r+0x806>
   13e20:	00078023          	sb	zero,0(a5)
   13e24:	8cfff06f          	j	136f2 <_ldtoa_r+0xe6>
   13e28:	0785                	addi	a5,a5,1
   13e2a:	8d3ff06f          	j	136fc <_ldtoa_r+0xf0>
   13e2e:	8436                	mv	s0,a3
   13e30:	8dbff06f          	j	1370a <_ldtoa_r+0xfe>
   13e34:	147d                	addi	s0,s0,-1
   13e36:	00040023          	sb	zero,0(s0)
   13e3a:	fff44703          	lbu	a4,-1(s0)
   13e3e:	00d71663          	bne	a4,a3,13e4a <_ldtoa_r+0x83e>
   13e42:	41340733          	sub	a4,s0,s3
   13e46:	fee7c7e3          	blt	a5,a4,13e34 <_ldtoa_r+0x828>
   13e4a:	478d                	li	a5,3
   13e4c:	0cfb9963          	bne	s7,a5,13f1e <_ldtoa_r+0x912>
   13e50:	1a012783          	lw	a5,416(sp)
   13e54:	0127893b          	addw	s2,a5,s2
   13e58:	00095763          	bgez	s2,13e66 <_ldtoa_r+0x85a>
   13e5c:	14010823          	sb	zero,336(sp)
   13e60:	000ca023          	sw	zero,0(s9)
   13e64:	844e                	mv	s0,s3
   13e66:	000ca783          	lw	a5,0(s9)
   13e6a:	01578abb          	addw	s5,a5,s5
   13e6e:	2a8d                	addiw	s5,s5,3
   13e70:	060a2423          	sw	zero,104(s4)
   13e74:	4791                	li	a5,4
   13e76:	01c78713          	addi	a4,a5,28
   13e7a:	068a2583          	lw	a1,104(s4)
   13e7e:	04eafc63          	bleu	a4,s5,13ed6 <_ldtoa_r+0x8ca>
   13e82:	8552                	mv	a0,s4
   13e84:	2f6000ef          	jal	ra,1417a <_Balloc>
   13e88:	06aa3023          	sd	a0,96(s4)
   13e8c:	85ce                	mv	a1,s3
   13e8e:	84aa                	mv	s1,a0
   13e90:	078010ef          	jal	ra,14f08 <strcpy>
   13e94:	67e2                	ld	a5,24(sp)
   13e96:	c789                	beqz	a5,13ea0 <_ldtoa_r+0x894>
   13e98:	41340433          	sub	s0,s0,s3
   13e9c:	9426                	add	s0,s0,s1
   13e9e:	e380                	sd	s0,0(a5)
   13ea0:	24813083          	ld	ra,584(sp)
   13ea4:	24013403          	ld	s0,576(sp)
   13ea8:	8526                	mv	a0,s1
   13eaa:	23013903          	ld	s2,560(sp)
   13eae:	23813483          	ld	s1,568(sp)
   13eb2:	22813983          	ld	s3,552(sp)
   13eb6:	22013a03          	ld	s4,544(sp)
   13eba:	21813a83          	ld	s5,536(sp)
   13ebe:	21013b03          	ld	s6,528(sp)
   13ec2:	20813b83          	ld	s7,520(sp)
   13ec6:	20013c03          	ld	s8,512(sp)
   13eca:	7cfe                	ld	s9,504(sp)
   13ecc:	7d5e                	ld	s10,496(sp)
   13ece:	7dbe                	ld	s11,488(sp)
   13ed0:	25010113          	addi	sp,sp,592
   13ed4:	8082                	ret
   13ed6:	2585                	addiw	a1,a1,1
   13ed8:	06ba2423          	sw	a1,104(s4)
   13edc:	0017979b          	slliw	a5,a5,0x1
   13ee0:	bf59                	j	13e76 <_ldtoa_r+0x86a>
   13ee2:	67a1                	lui	a5,0x8
   13ee4:	17fd                	addi	a5,a5,-1
   13ee6:	96f717e3          	bne	a4,a5,13854 <_ldtoa_r+0x248>
   13eea:	67a2                	ld	a5,8(sp)
   13eec:	94078fe3          	beqz	a5,1384a <_ldtoa_r+0x23e>
   13ef0:	0001a5b7          	lui	a1,0x1a
   13ef4:	00858593          	addi	a1,a1,8 # 1a008 <emtens+0x110>
   13ef8:	fc4ff06f          	j	136bc <_ldtoa_r+0xb0>
   13efc:	47a9                	li	a5,10
   13efe:	02a00993          	li	s3,42
   13f02:	def490e3          	bne	s1,a5,13ce2 <_ldtoa_r+0x6d6>
   13f06:	03100793          	li	a5,49
   13f0a:	14f108a3          	sb	a5,337(sp)
   13f0e:	02e00793          	li	a5,46
   13f12:	14f10923          	sb	a5,338(sp)
   13f16:	02a00993          	li	s3,42
   13f1a:	90bff06f          	j	13824 <_ldtoa_r+0x218>
   13f1e:	2aa5                	addiw	s5,s5,9
   13f20:	bf81                	j	13e70 <_ldtoa_r+0x864>

0000000000013f22 <_ldcheck>:
   13f22:	611c                	ld	a5,0(a0)
   13f24:	7139                	addi	sp,sp,-64
   13f26:	080c                	addi	a1,sp,16
   13f28:	e03e                	sd	a5,0(sp)
   13f2a:	651c                	ld	a5,8(a0)
   13f2c:	850a                	mv	a0,sp
   13f2e:	fc06                	sd	ra,56(sp)
   13f30:	e43e                	sd	a5,8(sp)
   13f32:	f0dfe0ef          	jal	ra,12e3e <e113toe.isra.8>
   13f36:	02215783          	lhu	a5,34(sp)
   13f3a:	4501                	li	a0,0
   13f3c:	fff7c793          	not	a5,a5
   13f40:	03179713          	slli	a4,a5,0x31
   13f44:	e719                	bnez	a4,13f52 <_ldcheck+0x30>
   13f46:	0808                	addi	a0,sp,16
   13f48:	b49fe0ef          	jal	ra,12a90 <eisnan>
   13f4c:	00153513          	seqz	a0,a0
   13f50:	0505                	addi	a0,a0,1
   13f52:	70e2                	ld	ra,56(sp)
   13f54:	6121                	addi	sp,sp,64
   13f56:	8082                	ret

0000000000013f58 <__localeconv_l>:
   13f58:	10050513          	addi	a0,a0,256
   13f5c:	8082                	ret

0000000000013f5e <_localeconv_r>:
   13f5e:	8301b783          	ld	a5,-2000(gp) # 1c9b8 <_impure_ptr>
   13f62:	67a8                	ld	a0,72(a5)
   13f64:	e501                	bnez	a0,13f6c <_localeconv_r+0xe>
   13f66:	6571                	lui	a0,0x1c
   13f68:	7e050513          	addi	a0,a0,2016 # 1c7e0 <__global_locale>
   13f6c:	10050513          	addi	a0,a0,256
   13f70:	8082                	ret

0000000000013f72 <localeconv>:
   13f72:	8301b783          	ld	a5,-2000(gp) # 1c9b8 <_impure_ptr>
   13f76:	67a8                	ld	a0,72(a5)
   13f78:	e501                	bnez	a0,13f80 <localeconv+0xe>
   13f7a:	6571                	lui	a0,0x1c
   13f7c:	7e050513          	addi	a0,a0,2016 # 1c7e0 <__global_locale>
   13f80:	10050513          	addi	a0,a0,256
   13f84:	8082                	ret

0000000000013f86 <_setlocale_r>:
   13f86:	1101                	addi	sp,sp,-32
   13f88:	e426                	sd	s1,8(sp)
   13f8a:	ec06                	sd	ra,24(sp)
   13f8c:	e822                	sd	s0,16(sp)
   13f8e:	0001a4b7          	lui	s1,0x1a
   13f92:	ca0d                	beqz	a2,13fc4 <_setlocale_r+0x3e>
   13f94:	0001a5b7          	lui	a1,0x1a
   13f98:	04058593          	addi	a1,a1,64 # 1a040 <emtens+0x148>
   13f9c:	8532                	mv	a0,a2
   13f9e:	8432                	mv	s0,a2
   13fa0:	67f000ef          	jal	ra,14e1e <strcmp>
   13fa4:	c105                	beqz	a0,13fc4 <_setlocale_r+0x3e>
   13fa6:	03848593          	addi	a1,s1,56 # 1a038 <emtens+0x140>
   13faa:	8522                	mv	a0,s0
   13fac:	673000ef          	jal	ra,14e1e <strcmp>
   13fb0:	c911                	beqz	a0,13fc4 <_setlocale_r+0x3e>
   13fb2:	0001a5b7          	lui	a1,0x1a
   13fb6:	d8858593          	addi	a1,a1,-632 # 19d88 <zeroes.4441+0x90>
   13fba:	8522                	mv	a0,s0
   13fbc:	663000ef          	jal	ra,14e1e <strcmp>
   13fc0:	4781                	li	a5,0
   13fc2:	e119                	bnez	a0,13fc8 <_setlocale_r+0x42>
   13fc4:	03848793          	addi	a5,s1,56
   13fc8:	60e2                	ld	ra,24(sp)
   13fca:	6442                	ld	s0,16(sp)
   13fcc:	64a2                	ld	s1,8(sp)
   13fce:	853e                	mv	a0,a5
   13fd0:	6105                	addi	sp,sp,32
   13fd2:	8082                	ret

0000000000013fd4 <__locale_mb_cur_max>:
   13fd4:	8301b783          	ld	a5,-2000(gp) # 1c9b8 <_impure_ptr>
   13fd8:	67bc                	ld	a5,72(a5)
   13fda:	e781                	bnez	a5,13fe2 <__locale_mb_cur_max+0xe>
   13fdc:	67f1                	lui	a5,0x1c
   13fde:	7e078793          	addi	a5,a5,2016 # 1c7e0 <__global_locale>
   13fe2:	1607c503          	lbu	a0,352(a5)
   13fe6:	8082                	ret

0000000000013fe8 <__locale_ctype_ptr_l>:
   13fe8:	7d68                	ld	a0,248(a0)
   13fea:	8082                	ret

0000000000013fec <__locale_ctype_ptr>:
   13fec:	8301b783          	ld	a5,-2000(gp) # 1c9b8 <_impure_ptr>
   13ff0:	67bc                	ld	a5,72(a5)
   13ff2:	e781                	bnez	a5,13ffa <__locale_ctype_ptr+0xe>
   13ff4:	67f1                	lui	a5,0x1c
   13ff6:	7e078793          	addi	a5,a5,2016 # 1c7e0 <__global_locale>
   13ffa:	7fe8                	ld	a0,248(a5)
   13ffc:	8082                	ret

0000000000013ffe <setlocale>:
   13ffe:	862e                	mv	a2,a1
   14000:	85aa                	mv	a1,a0
   14002:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   14006:	f81ff06f          	j	13f86 <_setlocale_r>

000000000001400a <__swhatbuf_r>:
   1400a:	7135                	addi	sp,sp,-160
   1400c:	e526                	sd	s1,136(sp)
   1400e:	84ae                	mv	s1,a1
   14010:	01259583          	lh	a1,18(a1)
   14014:	e922                	sd	s0,144(sp)
   14016:	ed06                	sd	ra,152(sp)
   14018:	8432                	mv	s0,a2
   1401a:	0005dc63          	bgez	a1,14032 <__swhatbuf_r+0x28>
   1401e:	0104d783          	lhu	a5,16(s1)
   14022:	0006a023          	sw	zero,0(a3)
   14026:	0807f793          	andi	a5,a5,128
   1402a:	eb95                	bnez	a5,1405e <__swhatbuf_r+0x54>
   1402c:	40000793          	li	a5,1024
   14030:	a80d                	j	14062 <__swhatbuf_r+0x58>
   14032:	0830                	addi	a2,sp,24
   14034:	e436                	sd	a3,8(sp)
   14036:	0f2030ef          	jal	ra,17128 <_fstat_r>
   1403a:	66a2                	ld	a3,8(sp)
   1403c:	fe0541e3          	bltz	a0,1401e <__swhatbuf_r+0x14>
   14040:	47f2                	lw	a5,28(sp)
   14042:	673d                	lui	a4,0xf
   14044:	6505                	lui	a0,0x1
   14046:	8ff9                	and	a5,a5,a4
   14048:	6709                	lui	a4,0x2
   1404a:	8f99                	sub	a5,a5,a4
   1404c:	0017b793          	seqz	a5,a5
   14050:	c29c                	sw	a5,0(a3)
   14052:	40000793          	li	a5,1024
   14056:	e01c                	sd	a5,0(s0)
   14058:	80050513          	addi	a0,a0,-2048 # 800 <main-0xf8b0>
   1405c:	a029                	j	14066 <__swhatbuf_r+0x5c>
   1405e:	04000793          	li	a5,64
   14062:	e01c                	sd	a5,0(s0)
   14064:	4501                	li	a0,0
   14066:	60ea                	ld	ra,152(sp)
   14068:	644a                	ld	s0,144(sp)
   1406a:	64aa                	ld	s1,136(sp)
   1406c:	610d                	addi	sp,sp,160
   1406e:	8082                	ret

0000000000014070 <__smakebuf_r>:
   14070:	0105d783          	lhu	a5,16(a1)
   14074:	7179                	addi	sp,sp,-48
   14076:	f022                	sd	s0,32(sp)
   14078:	f406                	sd	ra,40(sp)
   1407a:	ec26                	sd	s1,24(sp)
   1407c:	e84a                	sd	s2,16(sp)
   1407e:	8b89                	andi	a5,a5,2
   14080:	842e                	mv	s0,a1
   14082:	cf89                	beqz	a5,1409c <__smakebuf_r+0x2c>
   14084:	07740793          	addi	a5,s0,119
   14088:	e01c                	sd	a5,0(s0)
   1408a:	ec1c                	sd	a5,24(s0)
   1408c:	4785                	li	a5,1
   1408e:	d01c                	sw	a5,32(s0)
   14090:	70a2                	ld	ra,40(sp)
   14092:	7402                	ld	s0,32(sp)
   14094:	64e2                	ld	s1,24(sp)
   14096:	6942                	ld	s2,16(sp)
   14098:	6145                	addi	sp,sp,48
   1409a:	8082                	ret
   1409c:	0054                	addi	a3,sp,4
   1409e:	0030                	addi	a2,sp,8
   140a0:	84aa                	mv	s1,a0
   140a2:	f69ff0ef          	jal	ra,1400a <__swhatbuf_r>
   140a6:	65a2                	ld	a1,8(sp)
   140a8:	892a                	mv	s2,a0
   140aa:	8526                	mv	a0,s1
   140ac:	a96fc0ef          	jal	ra,10342 <_malloc_r>
   140b0:	ed01                	bnez	a0,140c8 <__smakebuf_r+0x58>
   140b2:	01041783          	lh	a5,16(s0)
   140b6:	2007f713          	andi	a4,a5,512
   140ba:	fb79                	bnez	a4,14090 <__smakebuf_r+0x20>
   140bc:	9bf1                	andi	a5,a5,-4
   140be:	0027e793          	ori	a5,a5,2
   140c2:	00f41823          	sh	a5,16(s0)
   140c6:	bf7d                	j	14084 <__smakebuf_r+0x14>
   140c8:	000127b7          	lui	a5,0x12
   140cc:	33878793          	addi	a5,a5,824 # 12338 <_cleanup_r>
   140d0:	ecbc                	sd	a5,88(s1)
   140d2:	01045783          	lhu	a5,16(s0)
   140d6:	e008                	sd	a0,0(s0)
   140d8:	ec08                	sd	a0,24(s0)
   140da:	0807e793          	ori	a5,a5,128
   140de:	00f41823          	sh	a5,16(s0)
   140e2:	67a2                	ld	a5,8(sp)
   140e4:	d01c                	sw	a5,32(s0)
   140e6:	4792                	lw	a5,4(sp)
   140e8:	cf91                	beqz	a5,14104 <__smakebuf_r+0x94>
   140ea:	01241583          	lh	a1,18(s0)
   140ee:	8526                	mv	a0,s1
   140f0:	350030ef          	jal	ra,17440 <_isatty_r>
   140f4:	c901                	beqz	a0,14104 <__smakebuf_r+0x94>
   140f6:	01045783          	lhu	a5,16(s0)
   140fa:	9bf1                	andi	a5,a5,-4
   140fc:	0017e793          	ori	a5,a5,1
   14100:	00f41823          	sh	a5,16(s0)
   14104:	01045783          	lhu	a5,16(s0)
   14108:	00f96933          	or	s2,s2,a5
   1410c:	01241823          	sh	s2,16(s0)
   14110:	b741                	j	14090 <__smakebuf_r+0x20>

0000000000014112 <_mbtowc_r>:
   14112:	8301b783          	ld	a5,-2000(gp) # 1c9b8 <_impure_ptr>
   14116:	67bc                	ld	a5,72(a5)
   14118:	e781                	bnez	a5,14120 <_mbtowc_r+0xe>
   1411a:	67f1                	lui	a5,0x1c
   1411c:	7e078793          	addi	a5,a5,2016 # 1c7e0 <__global_locale>
   14120:	0e87b303          	ld	t1,232(a5)
   14124:	8302                	jr	t1

0000000000014126 <__ascii_mbtowc>:
   14126:	e185                	bnez	a1,14146 <__ascii_mbtowc+0x20>
   14128:	1141                	addi	sp,sp,-16
   1412a:	006c                	addi	a1,sp,12
   1412c:	4501                	li	a0,0
   1412e:	ca11                	beqz	a2,14142 <__ascii_mbtowc+0x1c>
   14130:	5579                	li	a0,-2
   14132:	ca81                	beqz	a3,14142 <__ascii_mbtowc+0x1c>
   14134:	00064783          	lbu	a5,0(a2)
   14138:	c19c                	sw	a5,0(a1)
   1413a:	00064503          	lbu	a0,0(a2)
   1413e:	00a03533          	snez	a0,a0
   14142:	0141                	addi	sp,sp,16
   14144:	8082                	ret
   14146:	4501                	li	a0,0
   14148:	ca19                	beqz	a2,1415e <__ascii_mbtowc+0x38>
   1414a:	5579                	li	a0,-2
   1414c:	ca89                	beqz	a3,1415e <__ascii_mbtowc+0x38>
   1414e:	00064783          	lbu	a5,0(a2)
   14152:	c19c                	sw	a5,0(a1)
   14154:	00064503          	lbu	a0,0(a2)
   14158:	00a03533          	snez	a0,a0
   1415c:	8082                	ret
   1415e:	8082                	ret

0000000000014160 <memchr>:
   14160:	0ff5f593          	andi	a1,a1,255
   14164:	962a                	add	a2,a2,a0
   14166:	00c51463          	bne	a0,a2,1416e <memchr+0xe>
   1416a:	4501                	li	a0,0
   1416c:	8082                	ret
   1416e:	00054783          	lbu	a5,0(a0)
   14172:	feb78de3          	beq	a5,a1,1416c <memchr+0xc>
   14176:	0505                	addi	a0,a0,1
   14178:	b7fd                	j	14166 <memchr+0x6>

000000000001417a <_Balloc>:
   1417a:	7d3c                	ld	a5,120(a0)
   1417c:	1101                	addi	sp,sp,-32
   1417e:	e426                	sd	s1,8(sp)
   14180:	e04a                	sd	s2,0(sp)
   14182:	ec06                	sd	ra,24(sp)
   14184:	e822                	sd	s0,16(sp)
   14186:	84aa                	mv	s1,a0
   14188:	892e                	mv	s2,a1
   1418a:	c79d                	beqz	a5,141b8 <_Balloc+0x3e>
   1418c:	7cb8                	ld	a4,120(s1)
   1418e:	00391793          	slli	a5,s2,0x3
   14192:	97ba                	add	a5,a5,a4
   14194:	6388                	ld	a0,0(a5)
   14196:	ed1d                	bnez	a0,141d4 <_Balloc+0x5a>
   14198:	4405                	li	s0,1
   1419a:	0124143b          	sllw	s0,s0,s2
   1419e:	fff4061b          	addiw	a2,s0,-1
   141a2:	0621                	addi	a2,a2,8
   141a4:	060a                	slli	a2,a2,0x2
   141a6:	4585                	li	a1,1
   141a8:	8526                	mv	a0,s1
   141aa:	533020ef          	jal	ra,16edc <_calloc_r>
   141ae:	cd01                	beqz	a0,141c6 <_Balloc+0x4c>
   141b0:	01252423          	sw	s2,8(a0)
   141b4:	c540                	sw	s0,12(a0)
   141b6:	a00d                	j	141d8 <_Balloc+0x5e>
   141b8:	04100613          	li	a2,65
   141bc:	45a1                	li	a1,8
   141be:	51f020ef          	jal	ra,16edc <_calloc_r>
   141c2:	fca8                	sd	a0,120(s1)
   141c4:	f561                	bnez	a0,1418c <_Balloc+0x12>
   141c6:	4501                	li	a0,0
   141c8:	60e2                	ld	ra,24(sp)
   141ca:	6442                	ld	s0,16(sp)
   141cc:	64a2                	ld	s1,8(sp)
   141ce:	6902                	ld	s2,0(sp)
   141d0:	6105                	addi	sp,sp,32
   141d2:	8082                	ret
   141d4:	6118                	ld	a4,0(a0)
   141d6:	e398                	sd	a4,0(a5)
   141d8:	00053823          	sd	zero,16(a0)
   141dc:	b7f5                	j	141c8 <_Balloc+0x4e>

00000000000141de <_Bfree>:
   141de:	c989                	beqz	a1,141f0 <_Bfree+0x12>
   141e0:	459c                	lw	a5,8(a1)
   141e2:	00379713          	slli	a4,a5,0x3
   141e6:	7d3c                	ld	a5,120(a0)
   141e8:	97ba                	add	a5,a5,a4
   141ea:	6398                	ld	a4,0(a5)
   141ec:	e198                	sd	a4,0(a1)
   141ee:	e38c                	sd	a1,0(a5)
   141f0:	8082                	ret

00000000000141f2 <__multadd>:
   141f2:	7139                	addi	sp,sp,-64
   141f4:	ec4e                	sd	s3,24(sp)
   141f6:	89aa                	mv	s3,a0
   141f8:	6541                	lui	a0,0x10
   141fa:	f822                	sd	s0,48(sp)
   141fc:	f426                	sd	s1,40(sp)
   141fe:	842e                	mv	s0,a1
   14200:	49c4                	lw	s1,20(a1)
   14202:	fc06                	sd	ra,56(sp)
   14204:	f04a                	sd	s2,32(sp)
   14206:	05e1                	addi	a1,a1,24
   14208:	4801                	li	a6,0
   1420a:	157d                	addi	a0,a0,-1
   1420c:	419c                	lw	a5,0(a1)
   1420e:	0591                	addi	a1,a1,4
   14210:	2805                	addiw	a6,a6,1
   14212:	00a7f733          	and	a4,a5,a0
   14216:	02c7073b          	mulw	a4,a4,a2
   1421a:	0107d79b          	srliw	a5,a5,0x10
   1421e:	02c787bb          	mulw	a5,a5,a2
   14222:	9f35                	addw	a4,a4,a3
   14224:	0107569b          	srliw	a3,a4,0x10
   14228:	8f69                	and	a4,a4,a0
   1422a:	9fb5                	addw	a5,a5,a3
   1422c:	0107d69b          	srliw	a3,a5,0x10
   14230:	0107979b          	slliw	a5,a5,0x10
   14234:	9fb9                	addw	a5,a5,a4
   14236:	fef5ae23          	sw	a5,-4(a1)
   1423a:	2681                	sext.w	a3,a3
   1423c:	fc9848e3          	blt	a6,s1,1420c <__multadd+0x1a>
   14240:	c2a1                	beqz	a3,14280 <__multadd+0x8e>
   14242:	445c                	lw	a5,12(s0)
   14244:	02f4c763          	blt	s1,a5,14272 <__multadd+0x80>
   14248:	440c                	lw	a1,8(s0)
   1424a:	854e                	mv	a0,s3
   1424c:	e436                	sd	a3,8(sp)
   1424e:	2585                	addiw	a1,a1,1
   14250:	f2bff0ef          	jal	ra,1417a <_Balloc>
   14254:	4850                	lw	a2,20(s0)
   14256:	01040593          	addi	a1,s0,16
   1425a:	892a                	mv	s2,a0
   1425c:	0609                	addi	a2,a2,2
   1425e:	060a                	slli	a2,a2,0x2
   14260:	0541                	addi	a0,a0,16
   14262:	23a030ef          	jal	ra,1749c <memcpy>
   14266:	85a2                	mv	a1,s0
   14268:	854e                	mv	a0,s3
   1426a:	f75ff0ef          	jal	ra,141de <_Bfree>
   1426e:	66a2                	ld	a3,8(sp)
   14270:	844a                	mv	s0,s2
   14272:	00448793          	addi	a5,s1,4
   14276:	078a                	slli	a5,a5,0x2
   14278:	97a2                	add	a5,a5,s0
   1427a:	c794                	sw	a3,8(a5)
   1427c:	2485                	addiw	s1,s1,1
   1427e:	c844                	sw	s1,20(s0)
   14280:	8522                	mv	a0,s0
   14282:	70e2                	ld	ra,56(sp)
   14284:	7442                	ld	s0,48(sp)
   14286:	74a2                	ld	s1,40(sp)
   14288:	7902                	ld	s2,32(sp)
   1428a:	69e2                	ld	s3,24(sp)
   1428c:	6121                	addi	sp,sp,64
   1428e:	8082                	ret

0000000000014290 <__s2b>:
   14290:	715d                	addi	sp,sp,-80
   14292:	47a5                	li	a5,9
   14294:	f44e                	sd	s3,40(sp)
   14296:	89b6                	mv	s3,a3
   14298:	26a1                	addiw	a3,a3,8
   1429a:	e0a2                	sd	s0,64(sp)
   1429c:	f84a                	sd	s2,48(sp)
   1429e:	ec56                	sd	s5,24(sp)
   142a0:	842e                	mv	s0,a1
   142a2:	02f6c6bb          	divw	a3,a3,a5
   142a6:	e486                	sd	ra,72(sp)
   142a8:	fc26                	sd	s1,56(sp)
   142aa:	f052                	sd	s4,32(sp)
   142ac:	892a                	mv	s2,a0
   142ae:	8ab2                	mv	s5,a2
   142b0:	4785                	li	a5,1
   142b2:	4581                	li	a1,0
   142b4:	04d7ce63          	blt	a5,a3,14310 <__s2b+0x80>
   142b8:	854a                	mv	a0,s2
   142ba:	e43a                	sd	a4,8(sp)
   142bc:	ebfff0ef          	jal	ra,1417a <_Balloc>
   142c0:	6722                	ld	a4,8(sp)
   142c2:	4785                	li	a5,1
   142c4:	c95c                	sw	a5,20(a0)
   142c6:	cd18                	sw	a4,24(a0)
   142c8:	47a5                	li	a5,9
   142ca:	0557d763          	ble	s5,a5,14318 <__s2b+0x88>
   142ce:	0425                	addi	s0,s0,9
   142d0:	8a22                	mv	s4,s0
   142d2:	44a5                	li	s1,9
   142d4:	0a05                	addi	s4,s4,1
   142d6:	fffa4683          	lbu	a3,-1(s4)
   142da:	85aa                	mv	a1,a0
   142dc:	4629                	li	a2,10
   142de:	fd06869b          	addiw	a3,a3,-48
   142e2:	854a                	mv	a0,s2
   142e4:	2485                	addiw	s1,s1,1
   142e6:	f0dff0ef          	jal	ra,141f2 <__multadd>
   142ea:	fe9a95e3          	bne	s5,s1,142d4 <__s2b+0x44>
   142ee:	ff64879b          	addiw	a5,s1,-10
   142f2:	1782                	slli	a5,a5,0x20
   142f4:	9381                	srli	a5,a5,0x20
   142f6:	943e                	add	s0,s0,a5
   142f8:	0409                	addi	s0,s0,2
   142fa:	0334c263          	blt	s1,s3,1431e <__s2b+0x8e>
   142fe:	60a6                	ld	ra,72(sp)
   14300:	6406                	ld	s0,64(sp)
   14302:	74e2                	ld	s1,56(sp)
   14304:	7942                	ld	s2,48(sp)
   14306:	79a2                	ld	s3,40(sp)
   14308:	7a02                	ld	s4,32(sp)
   1430a:	6ae2                	ld	s5,24(sp)
   1430c:	6161                	addi	sp,sp,80
   1430e:	8082                	ret
   14310:	0017979b          	slliw	a5,a5,0x1
   14314:	2585                	addiw	a1,a1,1
   14316:	bf79                	j	142b4 <__s2b+0x24>
   14318:	0429                	addi	s0,s0,10
   1431a:	44a5                	li	s1,9
   1431c:	bff9                	j	142fa <__s2b+0x6a>
   1431e:	00044683          	lbu	a3,0(s0)
   14322:	85aa                	mv	a1,a0
   14324:	4629                	li	a2,10
   14326:	fd06869b          	addiw	a3,a3,-48
   1432a:	854a                	mv	a0,s2
   1432c:	ec7ff0ef          	jal	ra,141f2 <__multadd>
   14330:	2485                	addiw	s1,s1,1
   14332:	0405                	addi	s0,s0,1
   14334:	b7d9                	j	142fa <__s2b+0x6a>

0000000000014336 <__hi0bits>:
   14336:	7741                	lui	a4,0xffff0
   14338:	8f69                	and	a4,a4,a0
   1433a:	87aa                	mv	a5,a0
   1433c:	4501                	li	a0,0
   1433e:	e701                	bnez	a4,14346 <__hi0bits+0x10>
   14340:	0107979b          	slliw	a5,a5,0x10
   14344:	4541                	li	a0,16
   14346:	ff000737          	lui	a4,0xff000
   1434a:	8f7d                	and	a4,a4,a5
   1434c:	e701                	bnez	a4,14354 <__hi0bits+0x1e>
   1434e:	2521                	addiw	a0,a0,8
   14350:	0087979b          	slliw	a5,a5,0x8
   14354:	f0000737          	lui	a4,0xf0000
   14358:	8f7d                	and	a4,a4,a5
   1435a:	e701                	bnez	a4,14362 <__hi0bits+0x2c>
   1435c:	2511                	addiw	a0,a0,4
   1435e:	0047979b          	slliw	a5,a5,0x4
   14362:	c0000737          	lui	a4,0xc0000
   14366:	8f7d                	and	a4,a4,a5
   14368:	e701                	bnez	a4,14370 <__hi0bits+0x3a>
   1436a:	2509                	addiw	a0,a0,2
   1436c:	0027979b          	slliw	a5,a5,0x2
   14370:	0007ca63          	bltz	a5,14384 <__hi0bits+0x4e>
   14374:	02179713          	slli	a4,a5,0x21
   14378:	00075463          	bgez	a4,14380 <__hi0bits+0x4a>
   1437c:	2505                	addiw	a0,a0,1
   1437e:	8082                	ret
   14380:	02000513          	li	a0,32
   14384:	8082                	ret

0000000000014386 <__lo0bits>:
   14386:	411c                	lw	a5,0(a0)
   14388:	0077f713          	andi	a4,a5,7
   1438c:	86be                	mv	a3,a5
   1438e:	c31d                	beqz	a4,143b4 <__lo0bits+0x2e>
   14390:	0017f613          	andi	a2,a5,1
   14394:	4701                	li	a4,0
   14396:	ea01                	bnez	a2,143a6 <__lo0bits+0x20>
   14398:	0026f713          	andi	a4,a3,2
   1439c:	c719                	beqz	a4,143aa <__lo0bits+0x24>
   1439e:	0017d79b          	srliw	a5,a5,0x1
   143a2:	c11c                	sw	a5,0(a0)
   143a4:	4705                	li	a4,1
   143a6:	853a                	mv	a0,a4
   143a8:	8082                	ret
   143aa:	0027d79b          	srliw	a5,a5,0x2
   143ae:	c11c                	sw	a5,0(a0)
   143b0:	4709                	li	a4,2
   143b2:	bfd5                	j	143a6 <__lo0bits+0x20>
   143b4:	03079693          	slli	a3,a5,0x30
   143b8:	92c1                	srli	a3,a3,0x30
   143ba:	4701                	li	a4,0
   143bc:	e689                	bnez	a3,143c6 <__lo0bits+0x40>
   143be:	0107d79b          	srliw	a5,a5,0x10
   143c2:	2781                	sext.w	a5,a5
   143c4:	4741                	li	a4,16
   143c6:	0ff7f693          	andi	a3,a5,255
   143ca:	e689                	bnez	a3,143d4 <__lo0bits+0x4e>
   143cc:	0087d79b          	srliw	a5,a5,0x8
   143d0:	2721                	addiw	a4,a4,8
   143d2:	2781                	sext.w	a5,a5
   143d4:	00f7f693          	andi	a3,a5,15
   143d8:	e689                	bnez	a3,143e2 <__lo0bits+0x5c>
   143da:	0047d79b          	srliw	a5,a5,0x4
   143de:	2711                	addiw	a4,a4,4
   143e0:	2781                	sext.w	a5,a5
   143e2:	0037f693          	andi	a3,a5,3
   143e6:	e689                	bnez	a3,143f0 <__lo0bits+0x6a>
   143e8:	0027d79b          	srliw	a5,a5,0x2
   143ec:	2709                	addiw	a4,a4,2
   143ee:	2781                	sext.w	a5,a5
   143f0:	0017f693          	andi	a3,a5,1
   143f4:	e691                	bnez	a3,14400 <__lo0bits+0x7a>
   143f6:	0017d79b          	srliw	a5,a5,0x1
   143fa:	2781                	sext.w	a5,a5
   143fc:	c781                	beqz	a5,14404 <__lo0bits+0x7e>
   143fe:	2705                	addiw	a4,a4,1
   14400:	c11c                	sw	a5,0(a0)
   14402:	b755                	j	143a6 <__lo0bits+0x20>
   14404:	02000713          	li	a4,32
   14408:	bf79                	j	143a6 <__lo0bits+0x20>

000000000001440a <__i2b>:
   1440a:	1141                	addi	sp,sp,-16
   1440c:	e022                	sd	s0,0(sp)
   1440e:	842e                	mv	s0,a1
   14410:	4585                	li	a1,1
   14412:	e406                	sd	ra,8(sp)
   14414:	d67ff0ef          	jal	ra,1417a <_Balloc>
   14418:	cd00                	sw	s0,24(a0)
   1441a:	60a2                	ld	ra,8(sp)
   1441c:	6402                	ld	s0,0(sp)
   1441e:	4705                	li	a4,1
   14420:	c958                	sw	a4,20(a0)
   14422:	0141                	addi	sp,sp,16
   14424:	8082                	ret

0000000000014426 <__multiply>:
   14426:	49d8                	lw	a4,20(a1)
   14428:	4a5c                	lw	a5,20(a2)
   1442a:	7139                	addi	sp,sp,-64
   1442c:	f426                	sd	s1,40(sp)
   1442e:	fc06                	sd	ra,56(sp)
   14430:	f822                	sd	s0,48(sp)
   14432:	f04a                	sd	s2,32(sp)
   14434:	ec4e                	sd	s3,24(sp)
   14436:	84ae                	mv	s1,a1
   14438:	00f75463          	ble	a5,a4,14440 <__multiply+0x1a>
   1443c:	84b2                	mv	s1,a2
   1443e:	862e                	mv	a2,a1
   14440:	0144a983          	lw	s3,20(s1)
   14444:	01462903          	lw	s2,20(a2)
   14448:	44dc                	lw	a5,12(s1)
   1444a:	448c                	lw	a1,8(s1)
   1444c:	0129843b          	addw	s0,s3,s2
   14450:	0087d363          	ble	s0,a5,14456 <__multiply+0x30>
   14454:	2585                	addiw	a1,a1,1
   14456:	e432                	sd	a2,8(sp)
   14458:	d23ff0ef          	jal	ra,1417a <_Balloc>
   1445c:	6622                	ld	a2,8(sp)
   1445e:	01850813          	addi	a6,a0,24 # 10018 <main-0x98>
   14462:	00241313          	slli	t1,s0,0x2
   14466:	9342                	add	t1,t1,a6
   14468:	87c2                	mv	a5,a6
   1446a:	0267ed63          	bltu	a5,t1,144a4 <__multiply+0x7e>
   1446e:	01848593          	addi	a1,s1,24
   14472:	00299893          	slli	a7,s3,0x2
   14476:	0661                	addi	a2,a2,24
   14478:	00291e13          	slli	t3,s2,0x2
   1447c:	66c1                	lui	a3,0x10
   1447e:	98ae                	add	a7,a7,a1
   14480:	9e32                	add	t3,t3,a2
   14482:	16fd                	addi	a3,a3,-1
   14484:	03c66463          	bltu	a2,t3,144ac <__multiply+0x86>
   14488:	00805663          	blez	s0,14494 <__multiply+0x6e>
   1448c:	1371                	addi	t1,t1,-4
   1448e:	00032783          	lw	a5,0(t1) # 10000 <main-0xb0>
   14492:	cbf5                	beqz	a5,14586 <__multiply+0x160>
   14494:	c940                	sw	s0,20(a0)
   14496:	70e2                	ld	ra,56(sp)
   14498:	7442                	ld	s0,48(sp)
   1449a:	74a2                	ld	s1,40(sp)
   1449c:	7902                	ld	s2,32(sp)
   1449e:	69e2                	ld	s3,24(sp)
   144a0:	6121                	addi	sp,sp,64
   144a2:	8082                	ret
   144a4:	0007a023          	sw	zero,0(a5)
   144a8:	0791                	addi	a5,a5,4
   144aa:	b7c1                	j	1446a <__multiply+0x44>
   144ac:	00062f83          	lw	t6,0(a2)
   144b0:	01f6ffb3          	and	t6,a3,t6
   144b4:	040f8f63          	beqz	t6,14512 <__multiply+0xec>
   144b8:	82c2                	mv	t0,a6
   144ba:	83ae                	mv	t2,a1
   144bc:	4f01                	li	t5,0
   144be:	0003a703          	lw	a4,0(t2)
   144c2:	0002a483          	lw	s1,0(t0) # 108b2 <memset+0x90>
   144c6:	0391                	addi	t2,t2,4
   144c8:	00d77eb3          	and	t4,a4,a3
   144cc:	03fe8ebb          	mulw	t4,t4,t6
   144d0:	00d4f7b3          	and	a5,s1,a3
   144d4:	0104d49b          	srliw	s1,s1,0x10
   144d8:	00fe8ebb          	addw	t4,t4,a5
   144dc:	0107579b          	srliw	a5,a4,0x10
   144e0:	03f787bb          	mulw	a5,a5,t6
   144e4:	01ee8ebb          	addw	t4,t4,t5
   144e8:	010ed71b          	srliw	a4,t4,0x10
   144ec:	01d6feb3          	and	t4,a3,t4
   144f0:	9fa5                	addw	a5,a5,s1
   144f2:	9fb9                	addw	a5,a5,a4
   144f4:	0107df1b          	srliw	t5,a5,0x10
   144f8:	0107979b          	slliw	a5,a5,0x10
   144fc:	00428713          	addi	a4,t0,4
   14500:	00fee7b3          	or	a5,t4,a5
   14504:	fef72e23          	sw	a5,-4(a4) # ffffffffbffffffc <__global_pointer$+0xffffffffbffe2e74>
   14508:	2f01                	sext.w	t5,t5
   1450a:	0713ea63          	bltu	t2,a7,1457e <__multiply+0x158>
   1450e:	01e2a223          	sw	t5,4(t0)
   14512:	00265283          	lhu	t0,2(a2)
   14516:	06028163          	beqz	t0,14578 <__multiply+0x152>
   1451a:	00082e83          	lw	t4,0(a6)
   1451e:	8f42                	mv	t5,a6
   14520:	8fae                	mv	t6,a1
   14522:	4781                	li	a5,0
   14524:	000fa703          	lw	a4,0(t6)
   14528:	002f5383          	lhu	t2,2(t5)
   1452c:	00defeb3          	and	t4,t4,a3
   14530:	8f75                	and	a4,a4,a3
   14532:	0257073b          	mulw	a4,a4,t0
   14536:	0f91                	addi	t6,t6,4
   14538:	0077073b          	addw	a4,a4,t2
   1453c:	9f3d                	addw	a4,a4,a5
   1453e:	0107179b          	slliw	a5,a4,0x10
   14542:	00feeeb3          	or	t4,t4,a5
   14546:	004f0393          	addi	t2,t5,4
   1454a:	ffd3ae23          	sw	t4,-4(t2)
   1454e:	ffefd783          	lhu	a5,-2(t6)
   14552:	004f2e83          	lw	t4,4(t5)
   14556:	0107571b          	srliw	a4,a4,0x10
   1455a:	025787bb          	mulw	a5,a5,t0
   1455e:	00defeb3          	and	t4,t4,a3
   14562:	01d787bb          	addw	a5,a5,t4
   14566:	00e78ebb          	addw	t4,a5,a4
   1456a:	010ed79b          	srliw	a5,t4,0x10
   1456e:	2781                	sext.w	a5,a5
   14570:	011fe963          	bltu	t6,a7,14582 <__multiply+0x15c>
   14574:	01df2223          	sw	t4,4(t5)
   14578:	0611                	addi	a2,a2,4
   1457a:	0811                	addi	a6,a6,4
   1457c:	b721                	j	14484 <__multiply+0x5e>
   1457e:	82ba                	mv	t0,a4
   14580:	bf3d                	j	144be <__multiply+0x98>
   14582:	8f1e                	mv	t5,t2
   14584:	b745                	j	14524 <__multiply+0xfe>
   14586:	347d                	addiw	s0,s0,-1
   14588:	b701                	j	14488 <__multiply+0x62>

000000000001458a <__pow5mult>:
   1458a:	7179                	addi	sp,sp,-48
   1458c:	ec26                	sd	s1,24(sp)
   1458e:	e84a                	sd	s2,16(sp)
   14590:	e44e                	sd	s3,8(sp)
   14592:	f406                	sd	ra,40(sp)
   14594:	f022                	sd	s0,32(sp)
   14596:	e052                	sd	s4,0(sp)
   14598:	00367793          	andi	a5,a2,3
   1459c:	892a                	mv	s2,a0
   1459e:	84b2                	mv	s1,a2
   145a0:	89ae                	mv	s3,a1
   145a2:	cf81                	beqz	a5,145ba <__pow5mult+0x30>
   145a4:	37fd                	addiw	a5,a5,-1
   145a6:	6769                	lui	a4,0x1a
   145a8:	05070713          	addi	a4,a4,80 # 1a050 <p05.3264>
   145ac:	078a                	slli	a5,a5,0x2
   145ae:	97ba                	add	a5,a5,a4
   145b0:	4390                	lw	a2,0(a5)
   145b2:	4681                	li	a3,0
   145b4:	c3fff0ef          	jal	ra,141f2 <__multadd>
   145b8:	89aa                	mv	s3,a0
   145ba:	8489                	srai	s1,s1,0x2
   145bc:	c8b1                	beqz	s1,14610 <__pow5mult+0x86>
   145be:	07093403          	ld	s0,112(s2)
   145c2:	e819                	bnez	s0,145d8 <__pow5mult+0x4e>
   145c4:	27100593          	li	a1,625
   145c8:	854a                	mv	a0,s2
   145ca:	e41ff0ef          	jal	ra,1440a <__i2b>
   145ce:	06a93823          	sd	a0,112(s2)
   145d2:	842a                	mv	s0,a0
   145d4:	00053023          	sd	zero,0(a0)
   145d8:	0014f793          	andi	a5,s1,1
   145dc:	cf81                	beqz	a5,145f4 <__pow5mult+0x6a>
   145de:	85ce                	mv	a1,s3
   145e0:	8622                	mv	a2,s0
   145e2:	854a                	mv	a0,s2
   145e4:	e43ff0ef          	jal	ra,14426 <__multiply>
   145e8:	8a2a                	mv	s4,a0
   145ea:	85ce                	mv	a1,s3
   145ec:	854a                	mv	a0,s2
   145ee:	bf1ff0ef          	jal	ra,141de <_Bfree>
   145f2:	89d2                	mv	s3,s4
   145f4:	8485                	srai	s1,s1,0x1
   145f6:	cc89                	beqz	s1,14610 <__pow5mult+0x86>
   145f8:	6008                	ld	a0,0(s0)
   145fa:	e909                	bnez	a0,1460c <__pow5mult+0x82>
   145fc:	8622                	mv	a2,s0
   145fe:	85a2                	mv	a1,s0
   14600:	854a                	mv	a0,s2
   14602:	e25ff0ef          	jal	ra,14426 <__multiply>
   14606:	e008                	sd	a0,0(s0)
   14608:	00053023          	sd	zero,0(a0)
   1460c:	842a                	mv	s0,a0
   1460e:	b7e9                	j	145d8 <__pow5mult+0x4e>
   14610:	70a2                	ld	ra,40(sp)
   14612:	7402                	ld	s0,32(sp)
   14614:	854e                	mv	a0,s3
   14616:	64e2                	ld	s1,24(sp)
   14618:	6942                	ld	s2,16(sp)
   1461a:	69a2                	ld	s3,8(sp)
   1461c:	6a02                	ld	s4,0(sp)
   1461e:	6145                	addi	sp,sp,48
   14620:	8082                	ret

0000000000014622 <__lshift>:
   14622:	715d                	addi	sp,sp,-80
   14624:	fc26                	sd	s1,56(sp)
   14626:	84ae                	mv	s1,a1
   14628:	f44e                	sd	s3,40(sp)
   1462a:	0144a983          	lw	s3,20(s1)
   1462e:	e85a                	sd	s6,16(sp)
   14630:	458c                	lw	a1,8(a1)
   14632:	40565b1b          	sraiw	s6,a2,0x5
   14636:	44dc                	lw	a5,12(s1)
   14638:	016989bb          	addw	s3,s3,s6
   1463c:	e0a2                	sd	s0,64(sp)
   1463e:	f84a                	sd	s2,48(sp)
   14640:	ec56                	sd	s5,24(sp)
   14642:	e486                	sd	ra,72(sp)
   14644:	f052                	sd	s4,32(sp)
   14646:	8aaa                	mv	s5,a0
   14648:	845a                	mv	s0,s6
   1464a:	0019891b          	addiw	s2,s3,1
   1464e:	0927c463          	blt	a5,s2,146d6 <__lshift+0xb4>
   14652:	8556                	mv	a0,s5
   14654:	e432                	sd	a2,8(sp)
   14656:	b25ff0ef          	jal	ra,1417a <_Balloc>
   1465a:	6622                	ld	a2,8(sp)
   1465c:	01850793          	addi	a5,a0,24
   14660:	8a2a                	mv	s4,a0
   14662:	86be                	mv	a3,a5
   14664:	4701                	li	a4,0
   14666:	0691                	addi	a3,a3,4
   14668:	07674b63          	blt	a4,s6,146de <__lshift+0xbc>
   1466c:	000b5363          	bgez	s6,14672 <__lshift+0x50>
   14670:	4401                	li	s0,0
   14672:	48d4                	lw	a3,20(s1)
   14674:	040a                	slli	s0,s0,0x2
   14676:	943e                	add	s0,s0,a5
   14678:	068a                	slli	a3,a3,0x2
   1467a:	01848793          	addi	a5,s1,24
   1467e:	8a7d                	andi	a2,a2,31
   14680:	96be                	add	a3,a3,a5
   14682:	c625                	beqz	a2,146ea <__lshift+0xc8>
   14684:	02000593          	li	a1,32
   14688:	9d91                	subw	a1,a1,a2
   1468a:	4701                	li	a4,0
   1468c:	4388                	lw	a0,0(a5)
   1468e:	00440813          	addi	a6,s0,4
   14692:	0791                	addi	a5,a5,4
   14694:	00c5153b          	sllw	a0,a0,a2
   14698:	8f49                	or	a4,a4,a0
   1469a:	fee82e23          	sw	a4,-4(a6)
   1469e:	ffc7a703          	lw	a4,-4(a5)
   146a2:	00b7573b          	srlw	a4,a4,a1
   146a6:	04d7e063          	bltu	a5,a3,146e6 <__lshift+0xc4>
   146aa:	c058                	sw	a4,4(s0)
   146ac:	c319                	beqz	a4,146b2 <__lshift+0x90>
   146ae:	0029891b          	addiw	s2,s3,2
   146b2:	397d                	addiw	s2,s2,-1
   146b4:	012a2a23          	sw	s2,20(s4)
   146b8:	8556                	mv	a0,s5
   146ba:	85a6                	mv	a1,s1
   146bc:	b23ff0ef          	jal	ra,141de <_Bfree>
   146c0:	60a6                	ld	ra,72(sp)
   146c2:	6406                	ld	s0,64(sp)
   146c4:	8552                	mv	a0,s4
   146c6:	74e2                	ld	s1,56(sp)
   146c8:	7942                	ld	s2,48(sp)
   146ca:	79a2                	ld	s3,40(sp)
   146cc:	7a02                	ld	s4,32(sp)
   146ce:	6ae2                	ld	s5,24(sp)
   146d0:	6b42                	ld	s6,16(sp)
   146d2:	6161                	addi	sp,sp,80
   146d4:	8082                	ret
   146d6:	2585                	addiw	a1,a1,1
   146d8:	0017979b          	slliw	a5,a5,0x1
   146dc:	bf8d                	j	1464e <__lshift+0x2c>
   146de:	fe06ae23          	sw	zero,-4(a3) # fffc <main-0xb4>
   146e2:	2705                	addiw	a4,a4,1
   146e4:	b749                	j	14666 <__lshift+0x44>
   146e6:	8442                	mv	s0,a6
   146e8:	b755                	j	1468c <__lshift+0x6a>
   146ea:	0791                	addi	a5,a5,4
   146ec:	ffc7a703          	lw	a4,-4(a5)
   146f0:	0411                	addi	s0,s0,4
   146f2:	fee42e23          	sw	a4,-4(s0)
   146f6:	fed7eae3          	bltu	a5,a3,146ea <__lshift+0xc8>
   146fa:	bf65                	j	146b2 <__lshift+0x90>

00000000000146fc <__mcmp>:
   146fc:	495c                	lw	a5,20(a0)
   146fe:	49d8                	lw	a4,20(a1)
   14700:	9f99                	subw	a5,a5,a4
   14702:	e38d                	bnez	a5,14724 <__mcmp+0x28>
   14704:	070a                	slli	a4,a4,0x2
   14706:	0561                	addi	a0,a0,24
   14708:	05e1                	addi	a1,a1,24
   1470a:	00e506b3          	add	a3,a0,a4
   1470e:	95ba                	add	a1,a1,a4
   14710:	16f1                	addi	a3,a3,-4
   14712:	15f1                	addi	a1,a1,-4
   14714:	4290                	lw	a2,0(a3)
   14716:	4198                	lw	a4,0(a1)
   14718:	00e60863          	beq	a2,a4,14728 <__mcmp+0x2c>
   1471c:	57fd                	li	a5,-1
   1471e:	00e66363          	bltu	a2,a4,14724 <__mcmp+0x28>
   14722:	4785                	li	a5,1
   14724:	853e                	mv	a0,a5
   14726:	8082                	ret
   14728:	fed564e3          	bltu	a0,a3,14710 <__mcmp+0x14>
   1472c:	bfe5                	j	14724 <__mcmp+0x28>

000000000001472e <__mdiff>:
   1472e:	7179                	addi	sp,sp,-48
   14730:	ec26                	sd	s1,24(sp)
   14732:	84ae                	mv	s1,a1
   14734:	e44e                	sd	s3,8(sp)
   14736:	85b2                	mv	a1,a2
   14738:	89aa                	mv	s3,a0
   1473a:	8526                	mv	a0,s1
   1473c:	f022                	sd	s0,32(sp)
   1473e:	f406                	sd	ra,40(sp)
   14740:	e84a                	sd	s2,16(sp)
   14742:	8432                	mv	s0,a2
   14744:	fb9ff0ef          	jal	ra,146fc <__mcmp>
   14748:	e105                	bnez	a0,14768 <__mdiff+0x3a>
   1474a:	4581                	li	a1,0
   1474c:	854e                	mv	a0,s3
   1474e:	a2dff0ef          	jal	ra,1417a <_Balloc>
   14752:	4785                	li	a5,1
   14754:	c95c                	sw	a5,20(a0)
   14756:	00052c23          	sw	zero,24(a0)
   1475a:	70a2                	ld	ra,40(sp)
   1475c:	7402                	ld	s0,32(sp)
   1475e:	64e2                	ld	s1,24(sp)
   14760:	6942                	ld	s2,16(sp)
   14762:	69a2                	ld	s3,8(sp)
   14764:	6145                	addi	sp,sp,48
   14766:	8082                	ret
   14768:	4905                	li	s2,1
   1476a:	00054663          	bltz	a0,14776 <__mdiff+0x48>
   1476e:	87a2                	mv	a5,s0
   14770:	4901                	li	s2,0
   14772:	8426                	mv	s0,s1
   14774:	84be                	mv	s1,a5
   14776:	440c                	lw	a1,8(s0)
   14778:	854e                	mv	a0,s3
   1477a:	a01ff0ef          	jal	ra,1417a <_Balloc>
   1477e:	01442303          	lw	t1,20(s0)
   14782:	0144a883          	lw	a7,20(s1)
   14786:	01840613          	addi	a2,s0,24
   1478a:	00231e13          	slli	t3,t1,0x2
   1478e:	01848813          	addi	a6,s1,24
   14792:	088a                	slli	a7,a7,0x2
   14794:	6f41                	lui	t5,0x10
   14796:	01252823          	sw	s2,16(a0)
   1479a:	9e32                	add	t3,t3,a2
   1479c:	98c2                	add	a7,a7,a6
   1479e:	01850693          	addi	a3,a0,24
   147a2:	4f81                	li	t6,0
   147a4:	1f7d                	addi	t5,t5,-1
   147a6:	4218                	lw	a4,0(a2)
   147a8:	00082783          	lw	a5,0(a6)
   147ac:	0691                	addi	a3,a3,4
   147ae:	01e775b3          	and	a1,a4,t5
   147b2:	01f585bb          	addw	a1,a1,t6
   147b6:	01e7feb3          	and	t4,a5,t5
   147ba:	41d58ebb          	subw	t4,a1,t4
   147be:	0107571b          	srliw	a4,a4,0x10
   147c2:	0107d79b          	srliw	a5,a5,0x10
   147c6:	40f707bb          	subw	a5,a4,a5
   147ca:	410ed59b          	sraiw	a1,t4,0x10
   147ce:	9fad                	addw	a5,a5,a1
   147d0:	4107df9b          	sraiw	t6,a5,0x10
   147d4:	01eef733          	and	a4,t4,t5
   147d8:	0107979b          	slliw	a5,a5,0x10
   147dc:	8fd9                	or	a5,a5,a4
   147de:	0811                	addi	a6,a6,4
   147e0:	fef6ae23          	sw	a5,-4(a3)
   147e4:	0611                	addi	a2,a2,4
   147e6:	fd1860e3          	bltu	a6,a7,147a6 <__mdiff+0x78>
   147ea:	68c1                	lui	a7,0x10
   147ec:	18fd                	addi	a7,a7,-1
   147ee:	01c66863          	bltu	a2,t3,147fe <__mdiff+0xd0>
   147f2:	16f1                	addi	a3,a3,-4
   147f4:	429c                	lw	a5,0(a3)
   147f6:	cb9d                	beqz	a5,1482c <__mdiff+0xfe>
   147f8:	00652a23          	sw	t1,20(a0)
   147fc:	bfb9                	j	1475a <__mdiff+0x2c>
   147fe:	4218                	lw	a4,0(a2)
   14800:	0691                	addi	a3,a3,4
   14802:	0611                	addi	a2,a2,4
   14804:	011775b3          	and	a1,a4,a7
   14808:	01f5883b          	addw	a6,a1,t6
   1480c:	0107571b          	srliw	a4,a4,0x10
   14810:	4108559b          	sraiw	a1,a6,0x10
   14814:	00b707bb          	addw	a5,a4,a1
   14818:	4107df9b          	sraiw	t6,a5,0x10
   1481c:	01187733          	and	a4,a6,a7
   14820:	0107979b          	slliw	a5,a5,0x10
   14824:	8fd9                	or	a5,a5,a4
   14826:	fef6ae23          	sw	a5,-4(a3)
   1482a:	b7d1                	j	147ee <__mdiff+0xc0>
   1482c:	337d                	addiw	t1,t1,-1
   1482e:	b7d1                	j	147f2 <__mdiff+0xc4>

0000000000014830 <__ulp>:
   14830:	e20507d3          	fmv.x.d	a5,fa0
   14834:	7ff00737          	lui	a4,0x7ff00
   14838:	9381                	srli	a5,a5,0x20
   1483a:	8f7d                	and	a4,a4,a5
   1483c:	fcc007b7          	lui	a5,0xfcc00
   14840:	9fb9                	addw	a5,a5,a4
   14842:	0007871b          	sext.w	a4,a5
   14846:	00e05763          	blez	a4,14854 <__ulp+0x24>
   1484a:	02079713          	slli	a4,a5,0x20
   1484e:	f2070553          	fmv.d.x	fa0,a4
   14852:	8082                	ret
   14854:	40f007bb          	negw	a5,a5
   14858:	4147d79b          	sraiw	a5,a5,0x14
   1485c:	474d                	li	a4,19
   1485e:	00f74763          	blt	a4,a5,1486c <__ulp+0x3c>
   14862:	00080737          	lui	a4,0x80
   14866:	40f757bb          	sraw	a5,a4,a5
   1486a:	b7c5                	j	1484a <__ulp+0x1a>
   1486c:	37b1                	addiw	a5,a5,-20
   1486e:	4679                	li	a2,30
   14870:	4701                	li	a4,0
   14872:	4685                	li	a3,1
   14874:	00f64663          	blt	a2,a5,14880 <__ulp+0x50>
   14878:	fff7c793          	not	a5,a5
   1487c:	00f696bb          	sllw	a3,a3,a5
   14880:	57fd                	li	a5,-1
   14882:	1682                	slli	a3,a3,0x20
   14884:	1782                	slli	a5,a5,0x20
   14886:	9281                	srli	a3,a3,0x20
   14888:	8ff9                	and	a5,a5,a4
   1488a:	00d7e733          	or	a4,a5,a3
   1488e:	b7c1                	j	1484e <__ulp+0x1e>

0000000000014890 <__b2d>:
   14890:	7139                	addi	sp,sp,-64
   14892:	f426                	sd	s1,40(sp)
   14894:	4944                	lw	s1,20(a0)
   14896:	ec4e                	sd	s3,24(sp)
   14898:	01850993          	addi	s3,a0,24
   1489c:	048a                	slli	s1,s1,0x2
   1489e:	94ce                	add	s1,s1,s3
   148a0:	f822                	sd	s0,48(sp)
   148a2:	ffc4a403          	lw	s0,-4(s1)
   148a6:	f04a                	sd	s2,32(sp)
   148a8:	e42e                	sd	a1,8(sp)
   148aa:	8522                	mv	a0,s0
   148ac:	fc06                	sd	ra,56(sp)
   148ae:	a89ff0ef          	jal	ra,14336 <__hi0bits>
   148b2:	65a2                	ld	a1,8(sp)
   148b4:	02000793          	li	a5,32
   148b8:	9f89                	subw	a5,a5,a0
   148ba:	c19c                	sw	a5,0(a1)
   148bc:	47a9                	li	a5,10
   148be:	ffc48913          	addi	s2,s1,-4
   148c2:	04a7c763          	blt	a5,a0,14910 <__b2d+0x80>
   148c6:	46ad                	li	a3,11
   148c8:	40a6863b          	subw	a2,a3,a0
   148cc:	00c4573b          	srlw	a4,s0,a2
   148d0:	3ff007b7          	lui	a5,0x3ff00
   148d4:	8f5d                	or	a4,a4,a5
   148d6:	1702                	slli	a4,a4,0x20
   148d8:	4681                	li	a3,0
   148da:	0129f463          	bleu	s2,s3,148e2 <__b2d+0x52>
   148de:	ff84a683          	lw	a3,-8(s1)
   148e2:	0155079b          	addiw	a5,a0,21
   148e6:	00f417bb          	sllw	a5,s0,a5
   148ea:	00c6d6bb          	srlw	a3,a3,a2
   148ee:	8fd5                	or	a5,a5,a3
   148f0:	547d                	li	s0,-1
   148f2:	1782                	slli	a5,a5,0x20
   148f4:	1402                	slli	s0,s0,0x20
   148f6:	9381                	srli	a5,a5,0x20
   148f8:	8c79                	and	s0,s0,a4
   148fa:	00f46733          	or	a4,s0,a5
   148fe:	70e2                	ld	ra,56(sp)
   14900:	7442                	ld	s0,48(sp)
   14902:	74a2                	ld	s1,40(sp)
   14904:	7902                	ld	s2,32(sp)
   14906:	69e2                	ld	s3,24(sp)
   14908:	f2070553          	fmv.d.x	fa0,a4
   1490c:	6121                	addi	sp,sp,64
   1490e:	8082                	ret
   14910:	4681                	li	a3,0
   14912:	0129f663          	bleu	s2,s3,1491e <__b2d+0x8e>
   14916:	ff84a683          	lw	a3,-8(s1)
   1491a:	ff848913          	addi	s2,s1,-8
   1491e:	ff55079b          	addiw	a5,a0,-11
   14922:	853e                	mv	a0,a5
   14924:	c3a9                	beqz	a5,14966 <__b2d+0xd6>
   14926:	02000793          	li	a5,32
   1492a:	40a7863b          	subw	a2,a5,a0
   1492e:	00a4143b          	sllw	s0,s0,a0
   14932:	3ff007b7          	lui	a5,0x3ff00
   14936:	8c5d                	or	s0,s0,a5
   14938:	00c6d7bb          	srlw	a5,a3,a2
   1493c:	8c5d                	or	s0,s0,a5
   1493e:	02041713          	slli	a4,s0,0x20
   14942:	4781                	li	a5,0
   14944:	0129f463          	bleu	s2,s3,1494c <__b2d+0xbc>
   14948:	ffc92783          	lw	a5,-4(s2)
   1494c:	00a696bb          	sllw	a3,a3,a0
   14950:	00c7d7bb          	srlw	a5,a5,a2
   14954:	8edd                	or	a3,a3,a5
   14956:	547d                	li	s0,-1
   14958:	1682                	slli	a3,a3,0x20
   1495a:	1402                	slli	s0,s0,0x20
   1495c:	9281                	srli	a3,a3,0x20
   1495e:	8c79                	and	s0,s0,a4
   14960:	00d46733          	or	a4,s0,a3
   14964:	bf69                	j	148fe <__b2d+0x6e>
   14966:	3ff007b7          	lui	a5,0x3ff00
   1496a:	02069713          	slli	a4,a3,0x20
   1496e:	8c5d                	or	s0,s0,a5
   14970:	9301                	srli	a4,a4,0x20
   14972:	1402                	slli	s0,s0,0x20
   14974:	8f41                	or	a4,a4,s0
   14976:	b761                	j	148fe <__b2d+0x6e>

0000000000014978 <__d2b>:
   14978:	7139                	addi	sp,sp,-64
   1497a:	f822                	sd	s0,48(sp)
   1497c:	e852                	sd	s4,16(sp)
   1497e:	e2050453          	fmv.x.d	s0,fa0
   14982:	8a2e                	mv	s4,a1
   14984:	4585                	li	a1,1
   14986:	f426                	sd	s1,40(sp)
   14988:	f04a                	sd	s2,32(sp)
   1498a:	ec4e                	sd	s3,24(sp)
   1498c:	fc06                	sd	ra,56(sp)
   1498e:	8932                	mv	s2,a2
   14990:	feaff0ef          	jal	ra,1417a <_Balloc>
   14994:	001007b7          	lui	a5,0x100
   14998:	42045493          	srai	s1,s0,0x20
   1499c:	17fd                	addi	a5,a5,-1
   1499e:	8fe5                	and	a5,a5,s1
   149a0:	0144d49b          	srliw	s1,s1,0x14
   149a4:	7ff4f493          	andi	s1,s1,2047
   149a8:	89aa                	mv	s3,a0
   149aa:	e0bd                	bnez	s1,14a10 <__d2b+0x98>
   149ac:	c63e                	sw	a5,12(sp)
   149ae:	2401                	sext.w	s0,s0
   149b0:	c43d                	beqz	s0,14a1e <__d2b+0xa6>
   149b2:	0028                	addi	a0,sp,8
   149b4:	c422                	sw	s0,8(sp)
   149b6:	9d1ff0ef          	jal	ra,14386 <__lo0bits>
   149ba:	46a2                	lw	a3,8(sp)
   149bc:	cd31                	beqz	a0,14a18 <__d2b+0xa0>
   149be:	4732                	lw	a4,12(sp)
   149c0:	02000793          	li	a5,32
   149c4:	9f89                	subw	a5,a5,a0
   149c6:	00f717bb          	sllw	a5,a4,a5
   149ca:	8fd5                	or	a5,a5,a3
   149cc:	00a7573b          	srlw	a4,a4,a0
   149d0:	00f9ac23          	sw	a5,24(s3)
   149d4:	c63a                	sw	a4,12(sp)
   149d6:	4432                	lw	s0,12(sp)
   149d8:	0089ae23          	sw	s0,28(s3)
   149dc:	00803433          	snez	s0,s0
   149e0:	0405                	addi	s0,s0,1
   149e2:	0089aa23          	sw	s0,20(s3)
   149e6:	c8a9                	beqz	s1,14a38 <__d2b+0xc0>
   149e8:	bcd4849b          	addiw	s1,s1,-1075
   149ec:	9ca9                	addw	s1,s1,a0
   149ee:	03500793          	li	a5,53
   149f2:	009a2023          	sw	s1,0(s4)
   149f6:	40a7853b          	subw	a0,a5,a0
   149fa:	00a92023          	sw	a0,0(s2)
   149fe:	70e2                	ld	ra,56(sp)
   14a00:	7442                	ld	s0,48(sp)
   14a02:	854e                	mv	a0,s3
   14a04:	74a2                	ld	s1,40(sp)
   14a06:	7902                	ld	s2,32(sp)
   14a08:	69e2                	ld	s3,24(sp)
   14a0a:	6a42                	ld	s4,16(sp)
   14a0c:	6121                	addi	sp,sp,64
   14a0e:	8082                	ret
   14a10:	00100737          	lui	a4,0x100
   14a14:	8fd9                	or	a5,a5,a4
   14a16:	bf59                	j	149ac <__d2b+0x34>
   14a18:	00d9ac23          	sw	a3,24(s3)
   14a1c:	bf6d                	j	149d6 <__d2b+0x5e>
   14a1e:	0068                	addi	a0,sp,12
   14a20:	967ff0ef          	jal	ra,14386 <__lo0bits>
   14a24:	47b2                	lw	a5,12(sp)
   14a26:	0205051b          	addiw	a0,a0,32
   14a2a:	4405                	li	s0,1
   14a2c:	00f9ac23          	sw	a5,24(s3)
   14a30:	4785                	li	a5,1
   14a32:	00f9aa23          	sw	a5,20(s3)
   14a36:	bf45                	j	149e6 <__d2b+0x6e>
   14a38:	bce5051b          	addiw	a0,a0,-1074
   14a3c:	00241793          	slli	a5,s0,0x2
   14a40:	00aa2023          	sw	a0,0(s4)
   14a44:	97ce                	add	a5,a5,s3
   14a46:	4bc8                	lw	a0,20(a5)
   14a48:	0054141b          	slliw	s0,s0,0x5
   14a4c:	8ebff0ef          	jal	ra,14336 <__hi0bits>
   14a50:	9c09                	subw	s0,s0,a0
   14a52:	00892023          	sw	s0,0(s2)
   14a56:	b765                	j	149fe <__d2b+0x86>

0000000000014a58 <__ratio>:
   14a58:	7139                	addi	sp,sp,-64
   14a5a:	f04a                	sd	s2,32(sp)
   14a5c:	892e                	mv	s2,a1
   14a5e:	002c                	addi	a1,sp,8
   14a60:	fc06                	sd	ra,56(sp)
   14a62:	f426                	sd	s1,40(sp)
   14a64:	ec4e                	sd	s3,24(sp)
   14a66:	f822                	sd	s0,48(sp)
   14a68:	89aa                	mv	s3,a0
   14a6a:	e27ff0ef          	jal	ra,14890 <__b2d>
   14a6e:	006c                	addi	a1,sp,12
   14a70:	854a                	mv	a0,s2
   14a72:	e20504d3          	fmv.x.d	s1,fa0
   14a76:	e1bff0ef          	jal	ra,14890 <__b2d>
   14a7a:	01492683          	lw	a3,20(s2)
   14a7e:	0149a783          	lw	a5,20(s3)
   14a82:	45b2                	lw	a1,12(sp)
   14a84:	e2050653          	fmv.x.d	a2,fa0
   14a88:	9f95                	subw	a5,a5,a3
   14a8a:	46a2                	lw	a3,8(sp)
   14a8c:	0057979b          	slliw	a5,a5,0x5
   14a90:	9e8d                	subw	a3,a3,a1
   14a92:	9ebd                	addw	a3,a3,a5
   14a94:	87b6                	mv	a5,a3
   14a96:	02d05a63          	blez	a3,14aca <__ratio+0x72>
   14a9a:	0146979b          	slliw	a5,a3,0x14
   14a9e:	547d                	li	s0,-1
   14aa0:	0204d693          	srli	a3,s1,0x20
   14aa4:	9fb5                	addw	a5,a5,a3
   14aa6:	9001                	srli	s0,s0,0x20
   14aa8:	1782                	slli	a5,a5,0x20
   14aaa:	8c65                	and	s0,s0,s1
   14aac:	8732                	mv	a4,a2
   14aae:	8c5d                	or	s0,s0,a5
   14ab0:	f20407d3          	fmv.d.x	fa5,s0
   14ab4:	70e2                	ld	ra,56(sp)
   14ab6:	7442                	ld	s0,48(sp)
   14ab8:	f2070753          	fmv.d.x	fa4,a4
   14abc:	74a2                	ld	s1,40(sp)
   14abe:	7902                	ld	s2,32(sp)
   14ac0:	69e2                	ld	s3,24(sp)
   14ac2:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   14ac6:	6121                	addi	sp,sp,64
   14ac8:	8082                	ret
   14aca:	fff006b7          	lui	a3,0xfff00
   14ace:	02f687bb          	mulw	a5,a3,a5
   14ad2:	02065713          	srli	a4,a2,0x20
   14ad6:	8426                	mv	s0,s1
   14ad8:	9fb9                	addw	a5,a5,a4
   14ada:	577d                	li	a4,-1
   14adc:	9301                	srli	a4,a4,0x20
   14ade:	1782                	slli	a5,a5,0x20
   14ae0:	8f71                	and	a4,a4,a2
   14ae2:	8f5d                	or	a4,a4,a5
   14ae4:	b7f1                	j	14ab0 <__ratio+0x58>

0000000000014ae6 <_mprec_log10>:
   14ae6:	47dd                	li	a5,23
   14ae8:	00a7c963          	blt	a5,a0,14afa <_mprec_log10+0x14>
   14aec:	67e9                	lui	a5,0x1a
   14aee:	05078793          	addi	a5,a5,80 # 1a050 <p05.3264>
   14af2:	050e                	slli	a0,a0,0x3
   14af4:	953e                	add	a0,a0,a5
   14af6:	2908                	fld	fa0,16(a0)
   14af8:	8082                	ret
   14afa:	0001d7b7          	lui	a5,0x1d
   14afe:	9887b507          	fld	fa0,-1656(a5) # 1c988 <__TMC_END__>
   14b02:	0001d7b7          	lui	a5,0x1d
   14b06:	9907b787          	fld	fa5,-1648(a5) # 1c990 <__TMC_END__+0x8>
   14b0a:	357d                	addiw	a0,a0,-1
   14b0c:	12f57553          	fmul.d	fa0,fa0,fa5
   14b10:	fd6d                	bnez	a0,14b0a <_mprec_log10+0x24>
   14b12:	8082                	ret

0000000000014b14 <__copybits>:
   14b14:	fff5879b          	addiw	a5,a1,-1
   14b18:	4a58                	lw	a4,20(a2)
   14b1a:	4057d79b          	sraiw	a5,a5,0x5
   14b1e:	0785                	addi	a5,a5,1
   14b20:	078a                	slli	a5,a5,0x2
   14b22:	01860693          	addi	a3,a2,24
   14b26:	070a                	slli	a4,a4,0x2
   14b28:	97aa                	add	a5,a5,a0
   14b2a:	9736                	add	a4,a4,a3
   14b2c:	00e6e563          	bltu	a3,a4,14b36 <__copybits+0x22>
   14b30:	00f56a63          	bltu	a0,a5,14b44 <__copybits+0x30>
   14b34:	8082                	ret
   14b36:	0691                	addi	a3,a3,4
   14b38:	ffc6a603          	lw	a2,-4(a3) # ffffffffffeffffc <__global_pointer$+0xffffffffffee2e74>
   14b3c:	0511                	addi	a0,a0,4
   14b3e:	fec52e23          	sw	a2,-4(a0)
   14b42:	b7ed                	j	14b2c <__copybits+0x18>
   14b44:	0511                	addi	a0,a0,4
   14b46:	fe052e23          	sw	zero,-4(a0)
   14b4a:	b7dd                	j	14b30 <__copybits+0x1c>

0000000000014b4c <__any_on>:
   14b4c:	4954                	lw	a3,20(a0)
   14b4e:	4055d793          	srai	a5,a1,0x5
   14b52:	01850713          	addi	a4,a0,24
   14b56:	02f6c763          	blt	a3,a5,14b84 <__any_on+0x38>
   14b5a:	00d7df63          	ble	a3,a5,14b78 <__any_on+0x2c>
   14b5e:	89fd                	andi	a1,a1,31
   14b60:	cd81                	beqz	a1,14b78 <__any_on+0x2c>
   14b62:	00279693          	slli	a3,a5,0x2
   14b66:	96ba                	add	a3,a3,a4
   14b68:	4290                	lw	a2,0(a3)
   14b6a:	4505                	li	a0,1
   14b6c:	00b656bb          	srlw	a3,a2,a1
   14b70:	00b695bb          	sllw	a1,a3,a1
   14b74:	00c59e63          	bne	a1,a2,14b90 <__any_on+0x44>
   14b78:	078a                	slli	a5,a5,0x2
   14b7a:	97ba                	add	a5,a5,a4
   14b7c:	00f76663          	bltu	a4,a5,14b88 <__any_on+0x3c>
   14b80:	4501                	li	a0,0
   14b82:	8082                	ret
   14b84:	87b6                	mv	a5,a3
   14b86:	bfcd                	j	14b78 <__any_on+0x2c>
   14b88:	17f1                	addi	a5,a5,-4
   14b8a:	4394                	lw	a3,0(a5)
   14b8c:	dae5                	beqz	a3,14b7c <__any_on+0x30>
   14b8e:	4505                	li	a0,1
   14b90:	8082                	ret

0000000000014b92 <cleanup_glue>:
   14b92:	1101                	addi	sp,sp,-32
   14b94:	e822                	sd	s0,16(sp)
   14b96:	842e                	mv	s0,a1
   14b98:	618c                	ld	a1,0(a1)
   14b9a:	e426                	sd	s1,8(sp)
   14b9c:	ec06                	sd	ra,24(sp)
   14b9e:	84aa                	mv	s1,a0
   14ba0:	c199                	beqz	a1,14ba6 <cleanup_glue+0x14>
   14ba2:	ff1ff0ef          	jal	ra,14b92 <cleanup_glue>
   14ba6:	85a2                	mv	a1,s0
   14ba8:	6442                	ld	s0,16(sp)
   14baa:	60e2                	ld	ra,24(sp)
   14bac:	8526                	mv	a0,s1
   14bae:	64a2                	ld	s1,8(sp)
   14bb0:	6105                	addi	sp,sp,32
   14bb2:	a1dfd06f          	j	125ce <_free_r>

0000000000014bb6 <_reclaim_reent>:
   14bb6:	8301b783          	ld	a5,-2000(gp) # 1c9b8 <_impure_ptr>
   14bba:	0aa78063          	beq	a5,a0,14c5a <_reclaim_reent+0xa4>
   14bbe:	7d3c                	ld	a5,120(a0)
   14bc0:	7179                	addi	sp,sp,-48
   14bc2:	f022                	sd	s0,32(sp)
   14bc4:	ec26                	sd	s1,24(sp)
   14bc6:	e84a                	sd	s2,16(sp)
   14bc8:	f406                	sd	ra,40(sp)
   14bca:	e44e                	sd	s3,8(sp)
   14bcc:	842a                	mv	s0,a0
   14bce:	4481                	li	s1,0
   14bd0:	20000913          	li	s2,512
   14bd4:	eb85                	bnez	a5,14c04 <_reclaim_reent+0x4e>
   14bd6:	702c                	ld	a1,96(s0)
   14bd8:	c581                	beqz	a1,14be0 <_reclaim_reent+0x2a>
   14bda:	8522                	mv	a0,s0
   14bdc:	9f3fd0ef          	jal	ra,125ce <_free_r>
   14be0:	1f843583          	ld	a1,504(s0)
   14be4:	cd95                	beqz	a1,14c20 <_reclaim_reent+0x6a>
   14be6:	20040493          	addi	s1,s0,512
   14bea:	02958b63          	beq	a1,s1,14c20 <_reclaim_reent+0x6a>
   14bee:	0005b903          	ld	s2,0(a1)
   14bf2:	8522                	mv	a0,s0
   14bf4:	9dbfd0ef          	jal	ra,125ce <_free_r>
   14bf8:	85ca                	mv	a1,s2
   14bfa:	bfc5                	j	14bea <_reclaim_reent+0x34>
   14bfc:	95a6                	add	a1,a1,s1
   14bfe:	618c                	ld	a1,0(a1)
   14c00:	e989                	bnez	a1,14c12 <_reclaim_reent+0x5c>
   14c02:	04a1                	addi	s1,s1,8
   14c04:	7c2c                	ld	a1,120(s0)
   14c06:	ff249be3          	bne	s1,s2,14bfc <_reclaim_reent+0x46>
   14c0a:	8522                	mv	a0,s0
   14c0c:	9c3fd0ef          	jal	ra,125ce <_free_r>
   14c10:	b7d9                	j	14bd6 <_reclaim_reent+0x20>
   14c12:	0005b983          	ld	s3,0(a1)
   14c16:	8522                	mv	a0,s0
   14c18:	9b7fd0ef          	jal	ra,125ce <_free_r>
   14c1c:	85ce                	mv	a1,s3
   14c1e:	b7cd                	j	14c00 <_reclaim_reent+0x4a>
   14c20:	644c                	ld	a1,136(s0)
   14c22:	c581                	beqz	a1,14c2a <_reclaim_reent+0x74>
   14c24:	8522                	mv	a0,s0
   14c26:	9a9fd0ef          	jal	ra,125ce <_free_r>
   14c2a:	483c                	lw	a5,80(s0)
   14c2c:	c385                	beqz	a5,14c4c <_reclaim_reent+0x96>
   14c2e:	6c3c                	ld	a5,88(s0)
   14c30:	8522                	mv	a0,s0
   14c32:	9782                	jalr	a5
   14c34:	52043583          	ld	a1,1312(s0)
   14c38:	c991                	beqz	a1,14c4c <_reclaim_reent+0x96>
   14c3a:	8522                	mv	a0,s0
   14c3c:	7402                	ld	s0,32(sp)
   14c3e:	70a2                	ld	ra,40(sp)
   14c40:	64e2                	ld	s1,24(sp)
   14c42:	6942                	ld	s2,16(sp)
   14c44:	69a2                	ld	s3,8(sp)
   14c46:	6145                	addi	sp,sp,48
   14c48:	f4bff06f          	j	14b92 <cleanup_glue>
   14c4c:	70a2                	ld	ra,40(sp)
   14c4e:	7402                	ld	s0,32(sp)
   14c50:	64e2                	ld	s1,24(sp)
   14c52:	6942                	ld	s2,16(sp)
   14c54:	69a2                	ld	s3,8(sp)
   14c56:	6145                	addi	sp,sp,48
   14c58:	8082                	ret
   14c5a:	8082                	ret

0000000000014c5c <frexp>:
   14c5c:	e20507d3          	fmv.x.d	a5,fa0
   14c60:	80000637          	lui	a2,0x80000
   14c64:	fff64613          	not	a2,a2
   14c68:	4207d713          	srai	a4,a5,0x20
   14c6c:	00c776b3          	and	a3,a4,a2
   14c70:	00052023          	sw	zero,0(a0)
   14c74:	7ff005b7          	lui	a1,0x7ff00
   14c78:	04b6dc63          	ble	a1,a3,14cd0 <frexp+0x74>
   14c7c:	00f6e5b3          	or	a1,a3,a5
   14c80:	2581                	sext.w	a1,a1
   14c82:	c5b9                	beqz	a1,14cd0 <frexp+0x74>
   14c84:	001005b7          	lui	a1,0x100
   14c88:	02b6d163          	ble	a1,a3,14caa <frexp+0x4e>
   14c8c:	0001d737          	lui	a4,0x1d
   14c90:	99873787          	fld	fa5,-1640(a4) # 1c998 <__TMC_END__+0x10>
   14c94:	12f577d3          	fmul.d	fa5,fa0,fa5
   14c98:	e20787d3          	fmv.x.d	a5,fa5
   14c9c:	4207d713          	srai	a4,a5,0x20
   14ca0:	00c776b3          	and	a3,a4,a2
   14ca4:	fca00613          	li	a2,-54
   14ca8:	c110                	sw	a2,0(a0)
   14caa:	4110                	lw	a2,0(a0)
   14cac:	4146d69b          	sraiw	a3,a3,0x14
   14cb0:	c026869b          	addiw	a3,a3,-1022
   14cb4:	9eb1                	addw	a3,a3,a2
   14cb6:	c114                	sw	a3,0(a0)
   14cb8:	801006b7          	lui	a3,0x80100
   14cbc:	16fd                	addi	a3,a3,-1
   14cbe:	8f75                	and	a4,a4,a3
   14cc0:	3fe006b7          	lui	a3,0x3fe00
   14cc4:	8f55                	or	a4,a4,a3
   14cc6:	56fd                	li	a3,-1
   14cc8:	9281                	srli	a3,a3,0x20
   14cca:	1702                	slli	a4,a4,0x20
   14ccc:	8ff5                	and	a5,a5,a3
   14cce:	8fd9                	or	a5,a5,a4
   14cd0:	f2078553          	fmv.d.x	fa0,a5
   14cd4:	8082                	ret

0000000000014cd6 <_sprintf_r>:
   14cd6:	7111                	addi	sp,sp,-256
   14cd8:	f5be                	sd	a5,232(sp)
   14cda:	800007b7          	lui	a5,0x80000
   14cde:	fff7c793          	not	a5,a5
   14ce2:	d83e                	sw	a5,48(sp)
   14ce4:	ce3e                	sw	a5,28(sp)
   14ce6:	77c1                	lui	a5,0xffff0
   14ce8:	edb6                	sd	a3,216(sp)
   14cea:	e82e                	sd	a1,16(sp)
   14cec:	f42e                	sd	a1,40(sp)
   14cee:	2087879b          	addiw	a5,a5,520
   14cf2:	09b4                	addi	a3,sp,216
   14cf4:	080c                	addi	a1,sp,16
   14cf6:	e586                	sd	ra,200(sp)
   14cf8:	d03e                	sw	a5,32(sp)
   14cfa:	f1ba                	sd	a4,224(sp)
   14cfc:	f9c2                	sd	a6,240(sp)
   14cfe:	fdc6                	sd	a7,248(sp)
   14d00:	e436                	sd	a3,8(sp)
   14d02:	25a000ef          	jal	ra,14f5c <_svfprintf_r>
   14d06:	67c2                	ld	a5,16(sp)
   14d08:	00078023          	sb	zero,0(a5) # ffffffffffff0000 <__global_pointer$+0xfffffffffffd2e78>
   14d0c:	60ae                	ld	ra,200(sp)
   14d0e:	6111                	addi	sp,sp,256
   14d10:	8082                	ret

0000000000014d12 <sprintf>:
   14d12:	7111                	addi	sp,sp,-256
   14d14:	f5be                	sd	a5,232(sp)
   14d16:	800007b7          	lui	a5,0x80000
   14d1a:	fff7c793          	not	a5,a5
   14d1e:	d83e                	sw	a5,48(sp)
   14d20:	ce3e                	sw	a5,28(sp)
   14d22:	77c1                	lui	a5,0xffff0
   14d24:	2087879b          	addiw	a5,a5,520
   14d28:	d03e                	sw	a5,32(sp)
   14d2a:	e82a                	sd	a0,16(sp)
   14d2c:	f42a                	sd	a0,40(sp)
   14d2e:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   14d32:	e9b2                	sd	a2,208(sp)
   14d34:	edb6                	sd	a3,216(sp)
   14d36:	862e                	mv	a2,a1
   14d38:	0994                	addi	a3,sp,208
   14d3a:	080c                	addi	a1,sp,16
   14d3c:	e586                	sd	ra,200(sp)
   14d3e:	f1ba                	sd	a4,224(sp)
   14d40:	f9c2                	sd	a6,240(sp)
   14d42:	fdc6                	sd	a7,248(sp)
   14d44:	e436                	sd	a3,8(sp)
   14d46:	216000ef          	jal	ra,14f5c <_svfprintf_r>
   14d4a:	67c2                	ld	a5,16(sp)
   14d4c:	00078023          	sb	zero,0(a5) # ffffffffffff0000 <__global_pointer$+0xfffffffffffd2e78>
   14d50:	60ae                	ld	ra,200(sp)
   14d52:	6111                	addi	sp,sp,256
   14d54:	8082                	ret

0000000000014d56 <__sread>:
   14d56:	1141                	addi	sp,sp,-16
   14d58:	e022                	sd	s0,0(sp)
   14d5a:	842e                	mv	s0,a1
   14d5c:	01259583          	lh	a1,18(a1) # 100012 <__global_pointer$+0xe2e8a>
   14d60:	e406                	sd	ra,8(sp)
   14d62:	037020ef          	jal	ra,17598 <_read_r>
   14d66:	00054963          	bltz	a0,14d78 <__sread+0x22>
   14d6a:	685c                	ld	a5,144(s0)
   14d6c:	97aa                	add	a5,a5,a0
   14d6e:	e85c                	sd	a5,144(s0)
   14d70:	60a2                	ld	ra,8(sp)
   14d72:	6402                	ld	s0,0(sp)
   14d74:	0141                	addi	sp,sp,16
   14d76:	8082                	ret
   14d78:	01045783          	lhu	a5,16(s0)
   14d7c:	777d                	lui	a4,0xfffff
   14d7e:	177d                	addi	a4,a4,-1
   14d80:	8ff9                	and	a5,a5,a4
   14d82:	00f41823          	sh	a5,16(s0)
   14d86:	b7ed                	j	14d70 <__sread+0x1a>

0000000000014d88 <__seofread>:
   14d88:	4501                	li	a0,0
   14d8a:	8082                	ret

0000000000014d8c <__swrite>:
   14d8c:	0105d783          	lhu	a5,16(a1)
   14d90:	7179                	addi	sp,sp,-48
   14d92:	f022                	sd	s0,32(sp)
   14d94:	ec26                	sd	s1,24(sp)
   14d96:	e84a                	sd	s2,16(sp)
   14d98:	e44e                	sd	s3,8(sp)
   14d9a:	f406                	sd	ra,40(sp)
   14d9c:	1007f793          	andi	a5,a5,256
   14da0:	84aa                	mv	s1,a0
   14da2:	842e                	mv	s0,a1
   14da4:	8932                	mv	s2,a2
   14da6:	89b6                	mv	s3,a3
   14da8:	c799                	beqz	a5,14db6 <__swrite+0x2a>
   14daa:	01259583          	lh	a1,18(a1)
   14dae:	4689                	li	a3,2
   14db0:	4601                	li	a2,0
   14db2:	6ba020ef          	jal	ra,1746c <_lseek_r>
   14db6:	01045783          	lhu	a5,16(s0)
   14dba:	777d                	lui	a4,0xfffff
   14dbc:	177d                	addi	a4,a4,-1
   14dbe:	8ff9                	and	a5,a5,a4
   14dc0:	00f41823          	sh	a5,16(s0)
   14dc4:	01241583          	lh	a1,18(s0)
   14dc8:	7402                	ld	s0,32(sp)
   14dca:	70a2                	ld	ra,40(sp)
   14dcc:	86ce                	mv	a3,s3
   14dce:	864a                	mv	a2,s2
   14dd0:	69a2                	ld	s3,8(sp)
   14dd2:	6942                	ld	s2,16(sp)
   14dd4:	8526                	mv	a0,s1
   14dd6:	64e2                	ld	s1,24(sp)
   14dd8:	6145                	addi	sp,sp,48
   14dda:	0d20206f          	j	16eac <_write_r>

0000000000014dde <__sseek>:
   14dde:	1141                	addi	sp,sp,-16
   14de0:	e022                	sd	s0,0(sp)
   14de2:	842e                	mv	s0,a1
   14de4:	01259583          	lh	a1,18(a1)
   14de8:	e406                	sd	ra,8(sp)
   14dea:	682020ef          	jal	ra,1746c <_lseek_r>
   14dee:	57fd                	li	a5,-1
   14df0:	01045703          	lhu	a4,16(s0)
   14df4:	00f51b63          	bne	a0,a5,14e0a <__sseek+0x2c>
   14df8:	77fd                	lui	a5,0xfffff
   14dfa:	17fd                	addi	a5,a5,-1
   14dfc:	8ff9                	and	a5,a5,a4
   14dfe:	00f41823          	sh	a5,16(s0)
   14e02:	60a2                	ld	ra,8(sp)
   14e04:	6402                	ld	s0,0(sp)
   14e06:	0141                	addi	sp,sp,16
   14e08:	8082                	ret
   14e0a:	6785                	lui	a5,0x1
   14e0c:	8fd9                	or	a5,a5,a4
   14e0e:	00f41823          	sh	a5,16(s0)
   14e12:	e848                	sd	a0,144(s0)
   14e14:	b7fd                	j	14e02 <__sseek+0x24>

0000000000014e16 <__sclose>:
   14e16:	01259583          	lh	a1,18(a1)
   14e1a:	13e0206f          	j	16f58 <_close_r>

0000000000014e1e <strcmp>:
   14e1e:	00b56733          	or	a4,a0,a1
   14e22:	53fd                	li	t2,-1
   14e24:	8b1d                	andi	a4,a4,7
   14e26:	eb4d                	bnez	a4,14ed8 <strcmp+0xba>
   14e28:	00008797          	auipc	a5,0x8
   14e2c:	b787b783          	ld	a5,-1160(a5) # 1c9a0 <mask>
   14e30:	6110                	ld	a2,0(a0)
   14e32:	6194                	ld	a3,0(a1)
   14e34:	00f672b3          	and	t0,a2,a5
   14e38:	00f66333          	or	t1,a2,a5
   14e3c:	92be                	add	t0,t0,a5
   14e3e:	0062e2b3          	or	t0,t0,t1
   14e42:	0a729963          	bne	t0,t2,14ef4 <strcmp+0xd6>
   14e46:	02d61e63          	bne	a2,a3,14e82 <strcmp+0x64>
   14e4a:	6510                	ld	a2,8(a0)
   14e4c:	6594                	ld	a3,8(a1)
   14e4e:	00f672b3          	and	t0,a2,a5
   14e52:	00f66333          	or	t1,a2,a5
   14e56:	92be                	add	t0,t0,a5
   14e58:	0062e2b3          	or	t0,t0,t1
   14e5c:	08729a63          	bne	t0,t2,14ef0 <strcmp+0xd2>
   14e60:	02d61163          	bne	a2,a3,14e82 <strcmp+0x64>
   14e64:	6910                	ld	a2,16(a0)
   14e66:	6994                	ld	a3,16(a1)
   14e68:	00f672b3          	and	t0,a2,a5
   14e6c:	00f66333          	or	t1,a2,a5
   14e70:	92be                	add	t0,t0,a5
   14e72:	0062e2b3          	or	t0,t0,t1
   14e76:	08729363          	bne	t0,t2,14efc <strcmp+0xde>
   14e7a:	0561                	addi	a0,a0,24
   14e7c:	05e1                	addi	a1,a1,24
   14e7e:	fad609e3          	beq	a2,a3,14e30 <strcmp+0x12>
   14e82:	03061713          	slli	a4,a2,0x30
   14e86:	03069793          	slli	a5,a3,0x30
   14e8a:	02f71863          	bne	a4,a5,14eba <strcmp+0x9c>
   14e8e:	02061713          	slli	a4,a2,0x20
   14e92:	02069793          	slli	a5,a3,0x20
   14e96:	02f71263          	bne	a4,a5,14eba <strcmp+0x9c>
   14e9a:	01061713          	slli	a4,a2,0x10
   14e9e:	01069793          	slli	a5,a3,0x10
   14ea2:	00f71c63          	bne	a4,a5,14eba <strcmp+0x9c>
   14ea6:	03065713          	srli	a4,a2,0x30
   14eaa:	0306d793          	srli	a5,a3,0x30
   14eae:	40f70533          	sub	a0,a4,a5
   14eb2:	0ff57593          	andi	a1,a0,255
   14eb6:	e991                	bnez	a1,14eca <strcmp+0xac>
   14eb8:	8082                	ret
   14eba:	9341                	srli	a4,a4,0x30
   14ebc:	93c1                	srli	a5,a5,0x30
   14ebe:	40f70533          	sub	a0,a4,a5
   14ec2:	0ff57593          	andi	a1,a0,255
   14ec6:	e191                	bnez	a1,14eca <strcmp+0xac>
   14ec8:	8082                	ret
   14eca:	0ff77713          	andi	a4,a4,255
   14ece:	0ff7f793          	andi	a5,a5,255
   14ed2:	40f70533          	sub	a0,a4,a5
   14ed6:	8082                	ret
   14ed8:	00054603          	lbu	a2,0(a0)
   14edc:	0005c683          	lbu	a3,0(a1)
   14ee0:	0505                	addi	a0,a0,1
   14ee2:	0585                	addi	a1,a1,1
   14ee4:	00d61363          	bne	a2,a3,14eea <strcmp+0xcc>
   14ee8:	fa65                	bnez	a2,14ed8 <strcmp+0xba>
   14eea:	40d60533          	sub	a0,a2,a3
   14eee:	8082                	ret
   14ef0:	0521                	addi	a0,a0,8
   14ef2:	05a1                	addi	a1,a1,8
   14ef4:	fed612e3          	bne	a2,a3,14ed8 <strcmp+0xba>
   14ef8:	4501                	li	a0,0
   14efa:	8082                	ret
   14efc:	0541                	addi	a0,a0,16
   14efe:	05c1                	addi	a1,a1,16
   14f00:	fcd61ce3          	bne	a2,a3,14ed8 <strcmp+0xba>
   14f04:	4501                	li	a0,0
   14f06:	8082                	ret

0000000000014f08 <strcpy>:
   14f08:	87aa                	mv	a5,a0
   14f0a:	0005c703          	lbu	a4,0(a1)
   14f0e:	0785                	addi	a5,a5,1
   14f10:	0585                	addi	a1,a1,1
   14f12:	fee78fa3          	sb	a4,-1(a5)
   14f16:	fb75                	bnez	a4,14f0a <strcpy+0x2>
   14f18:	8082                	ret

0000000000014f1a <strlen>:
   14f1a:	87aa                	mv	a5,a0
   14f1c:	0785                	addi	a5,a5,1
   14f1e:	fff7c703          	lbu	a4,-1(a5)
   14f22:	ff6d                	bnez	a4,14f1c <strlen+0x2>
   14f24:	40a78533          	sub	a0,a5,a0
   14f28:	157d                	addi	a0,a0,-1
   14f2a:	8082                	ret

0000000000014f2c <strncpy>:
   14f2c:	872a                	mv	a4,a0
   14f2e:	e211                	bnez	a2,14f32 <strncpy+0x6>
   14f30:	8082                	ret
   14f32:	0585                	addi	a1,a1,1
   14f34:	fff5c683          	lbu	a3,-1(a1)
   14f38:	00170793          	addi	a5,a4,1 # fffffffffffff001 <__global_pointer$+0xfffffffffffe1e79>
   14f3c:	fff60813          	addi	a6,a2,-1 # ffffffff7fffffff <__global_pointer$+0xffffffff7ffe2e77>
   14f40:	fed78fa3          	sb	a3,-1(a5)
   14f44:	e689                	bnez	a3,14f4e <strncpy+0x22>
   14f46:	9732                	add	a4,a4,a2
   14f48:	00e79663          	bne	a5,a4,14f54 <strncpy+0x28>
   14f4c:	8082                	ret
   14f4e:	873e                	mv	a4,a5
   14f50:	8642                	mv	a2,a6
   14f52:	bff1                	j	14f2e <strncpy+0x2>
   14f54:	0785                	addi	a5,a5,1
   14f56:	fe078fa3          	sb	zero,-1(a5)
   14f5a:	b7fd                	j	14f48 <strncpy+0x1c>

0000000000014f5c <_svfprintf_r>:
   14f5c:	d9010113          	addi	sp,sp,-624
   14f60:	26113423          	sd	ra,616(sp)
   14f64:	24913c23          	sd	s1,600(sp)
   14f68:	25213823          	sd	s2,592(sp)
   14f6c:	25313423          	sd	s3,584(sp)
   14f70:	23713423          	sd	s7,552(sp)
   14f74:	89ae                	mv	s3,a1
   14f76:	84b2                	mv	s1,a2
   14f78:	8bb6                	mv	s7,a3
   14f7a:	26813023          	sd	s0,608(sp)
   14f7e:	25413023          	sd	s4,576(sp)
   14f82:	23513c23          	sd	s5,568(sp)
   14f86:	23613823          	sd	s6,560(sp)
   14f8a:	23813023          	sd	s8,544(sp)
   14f8e:	21913c23          	sd	s9,536(sp)
   14f92:	21a13823          	sd	s10,528(sp)
   14f96:	21b13423          	sd	s11,520(sp)
   14f9a:	892a                	mv	s2,a0
   14f9c:	fc3fe0ef          	jal	ra,13f5e <_localeconv_r>
   14fa0:	611c                	ld	a5,0(a0)
   14fa2:	853e                	mv	a0,a5
   14fa4:	e4be                	sd	a5,72(sp)
   14fa6:	f75ff0ef          	jal	ra,14f1a <strlen>
   14faa:	0109d783          	lhu	a5,16(s3)
   14fae:	ec2a                	sd	a0,24(sp)
   14fb0:	f982                	sd	zero,240(sp)
   14fb2:	fd82                	sd	zero,248(sp)
   14fb4:	0807f793          	andi	a5,a5,128
   14fb8:	cb85                	beqz	a5,14fe8 <_svfprintf_r+0x8c>
   14fba:	0189b783          	ld	a5,24(s3)
   14fbe:	e78d                	bnez	a5,14fe8 <_svfprintf_r+0x8c>
   14fc0:	04000593          	li	a1,64
   14fc4:	854a                	mv	a0,s2
   14fc6:	b7cfb0ef          	jal	ra,10342 <_malloc_r>
   14fca:	00a9b023          	sd	a0,0(s3)
   14fce:	00a9bc23          	sd	a0,24(s3)
   14fd2:	e519                	bnez	a0,14fe0 <_svfprintf_r+0x84>
   14fd4:	47b1                	li	a5,12
   14fd6:	00f92023          	sw	a5,0(s2)
   14fda:	57fd                	li	a5,-1
   14fdc:	f43e                	sd	a5,40(sp)
   14fde:	a3cd                	j	155c0 <_svfprintf_r+0x664>
   14fe0:	04000793          	li	a5,64
   14fe4:	02f9a023          	sw	a5,32(s3)
   14fe8:	67e9                	lui	a5,0x1a
   14fea:	17878793          	addi	a5,a5,376 # 1a178 <__mprec_bigtens+0x28>
   14fee:	ed3e                	sd	a5,152(sp)
   14ff0:	0001a7b7          	lui	a5,0x1a
   14ff4:	d187b783          	ld	a5,-744(a5) # 19d18 <zeroes.4441+0x20>
   14ff8:	18010a93          	addi	s5,sp,384
   14ffc:	e256                	sd	s5,256(sp)
   14ffe:	f13e                	sd	a5,160(sp)
   15000:	0001a7b7          	lui	a5,0x1a
   15004:	d287b783          	ld	a5,-728(a5) # 19d28 <zeroes.4441+0x30>
   15008:	ea02                	sd	zero,272(sp)
   1500a:	10012423          	sw	zero,264(sp)
   1500e:	f53e                	sd	a5,168(sp)
   15010:	0001a7b7          	lui	a5,0x1a
   15014:	d387b783          	ld	a5,-712(a5) # 19d38 <zeroes.4441+0x40>
   15018:	4a01                	li	s4,0
   1501a:	8cd6                	mv	s9,s5
   1501c:	f082                	sd	zero,96(sp)
   1501e:	ec82                	sd	zero,88(sp)
   15020:	e002                	sd	zero,0(sp)
   15022:	e082                	sd	zero,64(sp)
   15024:	e882                	sd	zero,80(sp)
   15026:	f402                	sd	zero,40(sp)
   15028:	e93e                	sd	a5,144(sp)
   1502a:	8426                	mv	s0,s1
   1502c:	02500713          	li	a4,37
   15030:	00044783          	lbu	a5,0(s0)
   15034:	c399                	beqz	a5,1503a <_svfprintf_r+0xde>
   15036:	08e79663          	bne	a5,a4,150c2 <_svfprintf_r+0x166>
   1503a:	40940b3b          	subw	s6,s0,s1
   1503e:	020b0f63          	beqz	s6,1507c <_svfprintf_r+0x120>
   15042:	67d2                	ld	a5,272(sp)
   15044:	009cb023          	sd	s1,0(s9)
   15048:	016cb423          	sd	s6,8(s9)
   1504c:	97da                	add	a5,a5,s6
   1504e:	ea3e                	sd	a5,272(sp)
   15050:	10812783          	lw	a5,264(sp)
   15054:	0cc1                	addi	s9,s9,16
   15056:	0017871b          	addiw	a4,a5,1
   1505a:	10e12423          	sw	a4,264(sp)
   1505e:	479d                	li	a5,7
   15060:	00e7da63          	ble	a4,a5,15074 <_svfprintf_r+0x118>
   15064:	0210                	addi	a2,sp,256
   15066:	85ce                	mv	a1,s3
   15068:	854a                	mv	a0,s2
   1506a:	129020ef          	jal	ra,17992 <__ssprint_r>
   1506e:	54051363          	bnez	a0,155b4 <_svfprintf_r+0x658>
   15072:	8cd6                	mv	s9,s5
   15074:	57a2                	lw	a5,40(sp)
   15076:	016787bb          	addw	a5,a5,s6
   1507a:	f43e                	sd	a5,40(sp)
   1507c:	00044783          	lbu	a5,0(s0)
   15080:	e399                	bnez	a5,15086 <_svfprintf_r+0x12a>
   15082:	43e0106f          	j	164c0 <_svfprintf_r+0x1564>
   15086:	00140793          	addi	a5,s0,1
   1508a:	0c0107a3          	sb	zero,207(sp)
   1508e:	5dfd                	li	s11,-1
   15090:	f002                	sd	zero,32(sp)
   15092:	4401                	li	s0,0
   15094:	05a00d13          	li	s10,90
   15098:	4c29                	li	s8,10
   1509a:	0007cb03          	lbu	s6,0(a5)
   1509e:	00178713          	addi	a4,a5,1
   150a2:	e83a                	sd	a4,16(sp)
   150a4:	46a5                	li	a3,9
   150a6:	02a00613          	li	a2,42
   150aa:	fe0b079b          	addiw	a5,s6,-32
   150ae:	0007871b          	sext.w	a4,a5
   150b2:	3eed65e3          	bltu	s10,a4,15c9c <_svfprintf_r+0xd40>
   150b6:	676a                	ld	a4,152(sp)
   150b8:	1782                	slli	a5,a5,0x20
   150ba:	83f9                	srli	a5,a5,0x1e
   150bc:	97ba                	add	a5,a5,a4
   150be:	439c                	lw	a5,0(a5)
   150c0:	8782                	jr	a5
   150c2:	0405                	addi	s0,s0,1
   150c4:	b7b5                	j	15030 <_svfprintf_r+0xd4>
   150c6:	0001a7b7          	lui	a5,0x1a
   150ca:	d7878793          	addi	a5,a5,-648 # 19d78 <zeroes.4441+0x80>
   150ce:	f0be                	sd	a5,96(sp)
   150d0:	008b8793          	addi	a5,s7,8
   150d4:	f83e                	sd	a5,48(sp)
   150d6:	02047793          	andi	a5,s0,32
   150da:	28078ae3          	beqz	a5,15b6e <_svfprintf_r+0xc12>
   150de:	000bbb83          	ld	s7,0(s7)
   150e2:	00147793          	andi	a5,s0,1
   150e6:	cf81                	beqz	a5,150fe <_svfprintf_r+0x1a2>
   150e8:	000b8b63          	beqz	s7,150fe <_svfprintf_r+0x1a2>
   150ec:	03000793          	li	a5,48
   150f0:	00246413          	ori	s0,s0,2
   150f4:	0cf10823          	sb	a5,208(sp)
   150f8:	0d6108a3          	sb	s6,209(sp)
   150fc:	2401                	sext.w	s0,s0
   150fe:	bff47413          	andi	s0,s0,-1025
   15102:	2401                	sext.w	s0,s0
   15104:	4789                	li	a5,2
   15106:	1650006f          	j	15a6a <_svfprintf_r+0xb0e>
   1510a:	854a                	mv	a0,s2
   1510c:	e53fe0ef          	jal	ra,13f5e <_localeconv_r>
   15110:	651c                	ld	a5,8(a0)
   15112:	853e                	mv	a0,a5
   15114:	e8be                	sd	a5,80(sp)
   15116:	e05ff0ef          	jal	ra,14f1a <strlen>
   1511a:	e0aa                	sd	a0,64(sp)
   1511c:	854a                	mv	a0,s2
   1511e:	e41fe0ef          	jal	ra,13f5e <_localeconv_r>
   15122:	691c                	ld	a5,16(a0)
   15124:	e03e                	sd	a5,0(sp)
   15126:	6786                	ld	a5,64(sp)
   15128:	c38d                	beqz	a5,1514a <_svfprintf_r+0x1ee>
   1512a:	6782                	ld	a5,0(sp)
   1512c:	cf99                	beqz	a5,1514a <_svfprintf_r+0x1ee>
   1512e:	0007c783          	lbu	a5,0(a5)
   15132:	cf81                	beqz	a5,1514a <_svfprintf_r+0x1ee>
   15134:	40046413          	ori	s0,s0,1024
   15138:	2401                	sext.w	s0,s0
   1513a:	a801                	j	1514a <_svfprintf_r+0x1ee>
   1513c:	0cf14783          	lbu	a5,207(sp)
   15140:	e789                	bnez	a5,1514a <_svfprintf_r+0x1ee>
   15142:	02000793          	li	a5,32
   15146:	0cf107a3          	sb	a5,207(sp)
   1514a:	67c2                	ld	a5,16(sp)
   1514c:	b7b9                	j	1509a <_svfprintf_r+0x13e>
   1514e:	00146413          	ori	s0,s0,1
   15152:	b7dd                	j	15138 <_svfprintf_r+0x1dc>
   15154:	000ba783          	lw	a5,0(s7)
   15158:	0ba1                	addi	s7,s7,8
   1515a:	f03e                	sd	a5,32(sp)
   1515c:	fe07d7e3          	bgez	a5,1514a <_svfprintf_r+0x1ee>
   15160:	5782                	lw	a5,32(sp)
   15162:	40f007bb          	negw	a5,a5
   15166:	f03e                	sd	a5,32(sp)
   15168:	00446413          	ori	s0,s0,4
   1516c:	b7f1                	j	15138 <_svfprintf_r+0x1dc>
   1516e:	02b00793          	li	a5,43
   15172:	bfd1                	j	15146 <_svfprintf_r+0x1ea>
   15174:	6742                	ld	a4,16(sp)
   15176:	67c2                	ld	a5,16(sp)
   15178:	00074b03          	lbu	s6,0(a4)
   1517c:	0785                	addi	a5,a5,1
   1517e:	02cb1c63          	bne	s6,a2,151b6 <_svfprintf_r+0x25a>
   15182:	000bae03          	lw	t3,0(s7)
   15186:	008b8713          	addi	a4,s7,8
   1518a:	000e5363          	bgez	t3,15190 <_svfprintf_r+0x234>
   1518e:	5e7d                	li	t3,-1
   15190:	000e0d9b          	sext.w	s11,t3
   15194:	8bba                	mv	s7,a4
   15196:	e83e                	sd	a5,16(sp)
   15198:	bf4d                	j	1514a <_svfprintf_r+0x1ee>
   1519a:	03bc0e3b          	mulw	t3,s8,s11
   1519e:	0785                	addi	a5,a5,1
   151a0:	fff7cb03          	lbu	s6,-1(a5)
   151a4:	00ee0dbb          	addw	s11,t3,a4
   151a8:	fd0b059b          	addiw	a1,s6,-48
   151ac:	872e                	mv	a4,a1
   151ae:	feb6f6e3          	bleu	a1,a3,1519a <_svfprintf_r+0x23e>
   151b2:	e83e                	sd	a5,16(sp)
   151b4:	bddd                	j	150aa <_svfprintf_r+0x14e>
   151b6:	4d81                	li	s11,0
   151b8:	bfc5                	j	151a8 <_svfprintf_r+0x24c>
   151ba:	08046413          	ori	s0,s0,128
   151be:	bfad                	j	15138 <_svfprintf_r+0x1dc>
   151c0:	67c2                	ld	a5,16(sp)
   151c2:	f002                	sd	zero,32(sp)
   151c4:	5702                	lw	a4,32(sp)
   151c6:	fd0b0b1b          	addiw	s6,s6,-48
   151ca:	0785                	addi	a5,a5,1
   151cc:	02ec073b          	mulw	a4,s8,a4
   151d0:	00eb073b          	addw	a4,s6,a4
   151d4:	fff7cb03          	lbu	s6,-1(a5)
   151d8:	f03a                	sd	a4,32(sp)
   151da:	fd0b071b          	addiw	a4,s6,-48
   151de:	fee6f3e3          	bleu	a4,a3,151c4 <_svfprintf_r+0x268>
   151e2:	bfc1                	j	151b2 <_svfprintf_r+0x256>
   151e4:	00846413          	ori	s0,s0,8
   151e8:	bf81                	j	15138 <_svfprintf_r+0x1dc>
   151ea:	67c2                	ld	a5,16(sp)
   151ec:	0007c703          	lbu	a4,0(a5)
   151f0:	06800793          	li	a5,104
   151f4:	00f71863          	bne	a4,a5,15204 <_svfprintf_r+0x2a8>
   151f8:	67c2                	ld	a5,16(sp)
   151fa:	20046413          	ori	s0,s0,512
   151fe:	0785                	addi	a5,a5,1
   15200:	e83e                	sd	a5,16(sp)
   15202:	bf1d                	j	15138 <_svfprintf_r+0x1dc>
   15204:	04046413          	ori	s0,s0,64
   15208:	bf05                	j	15138 <_svfprintf_r+0x1dc>
   1520a:	67c2                	ld	a5,16(sp)
   1520c:	0007c703          	lbu	a4,0(a5)
   15210:	06c00793          	li	a5,108
   15214:	00f71863          	bne	a4,a5,15224 <_svfprintf_r+0x2c8>
   15218:	67c2                	ld	a5,16(sp)
   1521a:	0785                	addi	a5,a5,1
   1521c:	e83e                	sd	a5,16(sp)
   1521e:	02046413          	ori	s0,s0,32
   15222:	bf19                	j	15138 <_svfprintf_r+0x1dc>
   15224:	01046413          	ori	s0,s0,16
   15228:	bf01                	j	15138 <_svfprintf_r+0x1dc>
   1522a:	008b8793          	addi	a5,s7,8
   1522e:	f83e                	sd	a5,48(sp)
   15230:	000ba783          	lw	a5,0(s7)
   15234:	0c0107a3          	sb	zero,207(sp)
   15238:	10f10c23          	sb	a5,280(sp)
   1523c:	4b81                	li	s7,0
   1523e:	4d85                	li	s11,1
   15240:	4701                	li	a4,0
   15242:	e402                	sd	zero,8(sp)
   15244:	4c01                	li	s8,0
   15246:	4d01                	li	s10,0
   15248:	0a24                	addi	s1,sp,280
   1524a:	86ba                	mv	a3,a4
   1524c:	01b75363          	ble	s11,a4,15252 <_svfprintf_r+0x2f6>
   15250:	86ee                	mv	a3,s11
   15252:	0cf14603          	lbu	a2,207(sp)
   15256:	0006879b          	sext.w	a5,a3
   1525a:	fc3e                	sd	a5,56(sp)
   1525c:	c601                	beqz	a2,15264 <_svfprintf_r+0x308>
   1525e:	0016879b          	addiw	a5,a3,1
   15262:	fc3e                	sd	a5,56(sp)
   15264:	00247693          	andi	a3,s0,2
   15268:	0006879b          	sext.w	a5,a3
   1526c:	f4be                	sd	a5,104(sp)
   1526e:	c781                	beqz	a5,15276 <_svfprintf_r+0x31a>
   15270:	57e2                	lw	a5,56(sp)
   15272:	2789                	addiw	a5,a5,2
   15274:	fc3e                	sd	a5,56(sp)
   15276:	08447793          	andi	a5,s0,132
   1527a:	f8be                	sd	a5,112(sp)
   1527c:	efa9                	bnez	a5,152d6 <_svfprintf_r+0x37a>
   1527e:	5782                	lw	a5,32(sp)
   15280:	56e2                	lw	a3,56(sp)
   15282:	40d786bb          	subw	a3,a5,a3
   15286:	04d05863          	blez	a3,152d6 <_svfprintf_r+0x37a>
   1528a:	6869                	lui	a6,0x1a
   1528c:	48c1                	li	a7,16
   1528e:	2e880813          	addi	a6,a6,744 # 1a2e8 <blanks.4425>
   15292:	4e9d                	li	t4,7
   15294:	10812583          	lw	a1,264(sp)
   15298:	010cb023          	sd	a6,0(s9)
   1529c:	6652                	ld	a2,272(sp)
   1529e:	0015851b          	addiw	a0,a1,1
   152a2:	85aa                	mv	a1,a0
   152a4:	010c8f13          	addi	t5,s9,16
   152a8:	20d8c3e3          	blt	a7,a3,15cae <_svfprintf_r+0xd52>
   152ac:	00dcb423          	sd	a3,8(s9)
   152b0:	96b2                	add	a3,a3,a2
   152b2:	ea36                	sd	a3,272(sp)
   152b4:	10a12423          	sw	a0,264(sp)
   152b8:	469d                	li	a3,7
   152ba:	8cfa                	mv	s9,t5
   152bc:	00a6dd63          	ble	a0,a3,152d6 <_svfprintf_r+0x37a>
   152c0:	0210                	addi	a2,sp,256
   152c2:	85ce                	mv	a1,s3
   152c4:	854a                	mv	a0,s2
   152c6:	fcba                	sd	a4,120(sp)
   152c8:	6ca020ef          	jal	ra,17992 <__ssprint_r>
   152cc:	c119                	beqz	a0,152d2 <_svfprintf_r+0x376>
   152ce:	1b40106f          	j	16482 <_svfprintf_r+0x1526>
   152d2:	7766                	ld	a4,120(sp)
   152d4:	8cd6                	mv	s9,s5
   152d6:	0cf14683          	lbu	a3,207(sp)
   152da:	c2a1                	beqz	a3,1531a <_svfprintf_r+0x3be>
   152dc:	0cf10693          	addi	a3,sp,207
   152e0:	00dcb023          	sd	a3,0(s9)
   152e4:	4685                	li	a3,1
   152e6:	00dcb423          	sd	a3,8(s9)
   152ea:	66d2                	ld	a3,272(sp)
   152ec:	0cc1                	addi	s9,s9,16
   152ee:	0685                	addi	a3,a3,1
   152f0:	ea36                	sd	a3,272(sp)
   152f2:	10812683          	lw	a3,264(sp)
   152f6:	0016861b          	addiw	a2,a3,1
   152fa:	10c12423          	sw	a2,264(sp)
   152fe:	469d                	li	a3,7
   15300:	00c6dd63          	ble	a2,a3,1531a <_svfprintf_r+0x3be>
   15304:	0210                	addi	a2,sp,256
   15306:	85ce                	mv	a1,s3
   15308:	854a                	mv	a0,s2
   1530a:	fcba                	sd	a4,120(sp)
   1530c:	686020ef          	jal	ra,17992 <__ssprint_r>
   15310:	c119                	beqz	a0,15316 <_svfprintf_r+0x3ba>
   15312:	1700106f          	j	16482 <_svfprintf_r+0x1526>
   15316:	7766                	ld	a4,120(sp)
   15318:	8cd6                	mv	s9,s5
   1531a:	77a6                	ld	a5,104(sp)
   1531c:	cf9d                	beqz	a5,1535a <_svfprintf_r+0x3fe>
   1531e:	0994                	addi	a3,sp,208
   15320:	00dcb023          	sd	a3,0(s9)
   15324:	4689                	li	a3,2
   15326:	00dcb423          	sd	a3,8(s9)
   1532a:	66d2                	ld	a3,272(sp)
   1532c:	0cc1                	addi	s9,s9,16
   1532e:	0689                	addi	a3,a3,2
   15330:	ea36                	sd	a3,272(sp)
   15332:	10812683          	lw	a3,264(sp)
   15336:	0016861b          	addiw	a2,a3,1
   1533a:	10c12423          	sw	a2,264(sp)
   1533e:	469d                	li	a3,7
   15340:	00c6dd63          	ble	a2,a3,1535a <_svfprintf_r+0x3fe>
   15344:	0210                	addi	a2,sp,256
   15346:	85ce                	mv	a1,s3
   15348:	854a                	mv	a0,s2
   1534a:	f4ba                	sd	a4,104(sp)
   1534c:	646020ef          	jal	ra,17992 <__ssprint_r>
   15350:	c119                	beqz	a0,15356 <_svfprintf_r+0x3fa>
   15352:	1300106f          	j	16482 <_svfprintf_r+0x1526>
   15356:	7726                	ld	a4,104(sp)
   15358:	8cd6                	mv	s9,s5
   1535a:	77c6                	ld	a5,112(sp)
   1535c:	08000693          	li	a3,128
   15360:	04d79e63          	bne	a5,a3,153bc <_svfprintf_r+0x460>
   15364:	5782                	lw	a5,32(sp)
   15366:	56e2                	lw	a3,56(sp)
   15368:	40d786bb          	subw	a3,a5,a3
   1536c:	04d05863          	blez	a3,153bc <_svfprintf_r+0x460>
   15370:	6869                	lui	a6,0x1a
   15372:	48c1                	li	a7,16
   15374:	2f880813          	addi	a6,a6,760 # 1a2f8 <zeroes.4426>
   15378:	4e9d                	li	t4,7
   1537a:	10812583          	lw	a1,264(sp)
   1537e:	010cb023          	sd	a6,0(s9)
   15382:	6652                	ld	a2,272(sp)
   15384:	0015851b          	addiw	a0,a1,1
   15388:	85aa                	mv	a1,a0
   1538a:	010c8f13          	addi	t5,s9,16
   1538e:	14d8cee3          	blt	a7,a3,15cea <_svfprintf_r+0xd8e>
   15392:	00dcb423          	sd	a3,8(s9)
   15396:	96b2                	add	a3,a3,a2
   15398:	ea36                	sd	a3,272(sp)
   1539a:	10a12423          	sw	a0,264(sp)
   1539e:	469d                	li	a3,7
   153a0:	8cfa                	mv	s9,t5
   153a2:	00a6dd63          	ble	a0,a3,153bc <_svfprintf_r+0x460>
   153a6:	0210                	addi	a2,sp,256
   153a8:	85ce                	mv	a1,s3
   153aa:	854a                	mv	a0,s2
   153ac:	f4ba                	sd	a4,104(sp)
   153ae:	5e4020ef          	jal	ra,17992 <__ssprint_r>
   153b2:	c119                	beqz	a0,153b8 <_svfprintf_r+0x45c>
   153b4:	0ce0106f          	j	16482 <_svfprintf_r+0x1526>
   153b8:	7726                	ld	a4,104(sp)
   153ba:	8cd6                	mv	s9,s5
   153bc:	41b7073b          	subw	a4,a4,s11
   153c0:	04e05663          	blez	a4,1540c <_svfprintf_r+0x4b0>
   153c4:	6869                	lui	a6,0x1a
   153c6:	48c1                	li	a7,16
   153c8:	2f880813          	addi	a6,a6,760 # 1a2f8 <zeroes.4426>
   153cc:	4e9d                	li	t4,7
   153ce:	10812603          	lw	a2,264(sp)
   153d2:	010cb023          	sd	a6,0(s9)
   153d6:	66d2                	ld	a3,272(sp)
   153d8:	0016059b          	addiw	a1,a2,1
   153dc:	862e                	mv	a2,a1
   153de:	010c8513          	addi	a0,s9,16
   153e2:	14e8c2e3          	blt	a7,a4,15d26 <_svfprintf_r+0xdca>
   153e6:	00ecb423          	sd	a4,8(s9)
   153ea:	9736                	add	a4,a4,a3
   153ec:	ea3a                	sd	a4,272(sp)
   153ee:	10b12423          	sw	a1,264(sp)
   153f2:	471d                	li	a4,7
   153f4:	8caa                	mv	s9,a0
   153f6:	00b75b63          	ble	a1,a4,1540c <_svfprintf_r+0x4b0>
   153fa:	0210                	addi	a2,sp,256
   153fc:	85ce                	mv	a1,s3
   153fe:	854a                	mv	a0,s2
   15400:	592020ef          	jal	ra,17992 <__ssprint_r>
   15404:	c119                	beqz	a0,1540a <_svfprintf_r+0x4ae>
   15406:	07c0106f          	j	16482 <_svfprintf_r+0x1526>
   1540a:	8cd6                	mv	s9,s5
   1540c:	10047693          	andi	a3,s0,256
   15410:	6752                	ld	a4,272(sp)
   15412:	140696e3          	bnez	a3,15d5e <_svfprintf_r+0xe02>
   15416:	10812783          	lw	a5,264(sp)
   1541a:	00ed8e33          	add	t3,s11,a4
   1541e:	009cb023          	sd	s1,0(s9)
   15422:	0017871b          	addiw	a4,a5,1
   15426:	01bcb423          	sd	s11,8(s9)
   1542a:	ea72                	sd	t3,272(sp)
   1542c:	10e12423          	sw	a4,264(sp)
   15430:	479d                	li	a5,7
   15432:	0cc1                	addi	s9,s9,16
   15434:	20e7d1e3          	ble	a4,a5,15e36 <_svfprintf_r+0xeda>
   15438:	0210                	addi	a2,sp,256
   1543a:	85ce                	mv	a1,s3
   1543c:	854a                	mv	a0,s2
   1543e:	554020ef          	jal	ra,17992 <__ssprint_r>
   15442:	c119                	beqz	a0,15448 <_svfprintf_r+0x4ec>
   15444:	03e0106f          	j	16482 <_svfprintf_r+0x1526>
   15448:	8cd6                	mv	s9,s5
   1544a:	1ed0006f          	j	15e36 <_svfprintf_r+0xeda>
   1544e:	01046413          	ori	s0,s0,16
   15452:	2401                	sext.w	s0,s0
   15454:	008b8793          	addi	a5,s7,8
   15458:	f83e                	sd	a5,48(sp)
   1545a:	02047793          	andi	a5,s0,32
   1545e:	cb85                	beqz	a5,1548e <_svfprintf_r+0x532>
   15460:	000bbb83          	ld	s7,0(s7)
   15464:	000bd863          	bgez	s7,15474 <_svfprintf_r+0x518>
   15468:	02d00793          	li	a5,45
   1546c:	41700bb3          	neg	s7,s7
   15470:	0cf107a3          	sb	a5,207(sp)
   15474:	57fd                	li	a5,-1
   15476:	72fd9663          	bne	s11,a5,15ba2 <_svfprintf_r+0xc46>
   1547a:	47a5                	li	a5,9
   1547c:	7977e163          	bltu	a5,s7,15bfe <_svfprintf_r+0xca2>
   15480:	030b8b9b          	addiw	s7,s7,48
   15484:	17710da3          	sb	s7,379(sp)
   15488:	17b10493          	addi	s1,sp,379
   1548c:	afa1                	j	15be4 <_svfprintf_r+0xc88>
   1548e:	01047793          	andi	a5,s0,16
   15492:	f7f9                	bnez	a5,15460 <_svfprintf_r+0x504>
   15494:	04047793          	andi	a5,s0,64
   15498:	c781                	beqz	a5,154a0 <_svfprintf_r+0x544>
   1549a:	000b9b83          	lh	s7,0(s7)
   1549e:	b7d9                	j	15464 <_svfprintf_r+0x508>
   154a0:	20047793          	andi	a5,s0,512
   154a4:	c781                	beqz	a5,154ac <_svfprintf_r+0x550>
   154a6:	000b8b83          	lb	s7,0(s7)
   154aa:	bf6d                	j	15464 <_svfprintf_r+0x508>
   154ac:	000bab83          	lw	s7,0(s7)
   154b0:	bf55                	j	15464 <_svfprintf_r+0x508>
   154b2:	00847793          	andi	a5,s0,8
   154b6:	cfb9                	beqz	a5,15514 <_svfprintf_r+0x5b8>
   154b8:	0bbd                	addi	s7,s7,15
   154ba:	ff0bfb93          	andi	s7,s7,-16
   154be:	010b8793          	addi	a5,s7,16
   154c2:	f83e                	sd	a5,48(sp)
   154c4:	000bb783          	ld	a5,0(s7)
   154c8:	f9be                	sd	a5,240(sp)
   154ca:	008bb783          	ld	a5,8(s7)
   154ce:	fdbe                	sd	a5,248(sp)
   154d0:	1988                	addi	a0,sp,240
   154d2:	a51fe0ef          	jal	ra,13f22 <_ldcheck>
   154d6:	cdaa                	sw	a0,216(sp)
   154d8:	4789                	li	a5,2
   154da:	04f51c63          	bne	a0,a5,15532 <_svfprintf_r+0x5d6>
   154de:	754e                	ld	a0,240(sp)
   154e0:	75ee                	ld	a1,248(sp)
   154e2:	4601                	li	a2,0
   154e4:	4681                	li	a3,0
   154e6:	2ca030ef          	jal	ra,187b0 <__letf2>
   154ea:	00055663          	bgez	a0,154f6 <_svfprintf_r+0x59a>
   154ee:	02d00793          	li	a5,45
   154f2:	0cf107a3          	sb	a5,207(sp)
   154f6:	04700793          	li	a5,71
   154fa:	0367c763          	blt	a5,s6,15528 <_svfprintf_r+0x5cc>
   154fe:	0001a4b7          	lui	s1,0x1a
   15502:	d4048493          	addi	s1,s1,-704 # 19d40 <zeroes.4441+0x48>
   15506:	f7f47413          	andi	s0,s0,-129
   1550a:	2401                	sext.w	s0,s0
   1550c:	4b81                	li	s7,0
   1550e:	4d8d                	li	s11,3
   15510:	4701                	li	a4,0
   15512:	adf9                	j	15bf0 <_svfprintf_r+0xc94>
   15514:	000bb507          	fld	fa0,0(s7)
   15518:	008b8793          	addi	a5,s7,8
   1551c:	f83e                	sd	a5,48(sp)
   1551e:	2bc040ef          	jal	ra,197da <__extenddftf2>
   15522:	f9aa                	sd	a0,240(sp)
   15524:	fdae                	sd	a1,248(sp)
   15526:	b76d                	j	154d0 <_svfprintf_r+0x574>
   15528:	0001a4b7          	lui	s1,0x1a
   1552c:	d4848493          	addi	s1,s1,-696 # 19d48 <zeroes.4441+0x50>
   15530:	bfd9                	j	15506 <_svfprintf_r+0x5aa>
   15532:	4785                	li	a5,1
   15534:	02f51763          	bne	a0,a5,15562 <_svfprintf_r+0x606>
   15538:	77ee                	ld	a5,248(sp)
   1553a:	0007d663          	bgez	a5,15546 <_svfprintf_r+0x5ea>
   1553e:	02d00793          	li	a5,45
   15542:	0cf107a3          	sb	a5,207(sp)
   15546:	04700793          	li	a5,71
   1554a:	0167c763          	blt	a5,s6,15558 <_svfprintf_r+0x5fc>
   1554e:	0001a4b7          	lui	s1,0x1a
   15552:	d5048493          	addi	s1,s1,-688 # 19d50 <zeroes.4441+0x58>
   15556:	bf45                	j	15506 <_svfprintf_r+0x5aa>
   15558:	0001a4b7          	lui	s1,0x1a
   1555c:	d5848493          	addi	s1,s1,-680 # 19d58 <zeroes.4441+0x60>
   15560:	b75d                	j	15506 <_svfprintf_r+0x5aa>
   15562:	fdfb7c13          	andi	s8,s6,-33
   15566:	04100793          	li	a5,65
   1556a:	08fc1963          	bne	s8,a5,155fc <_svfprintf_r+0x6a0>
   1556e:	03000793          	li	a5,48
   15572:	0cf10823          	sb	a5,208(sp)
   15576:	06100713          	li	a4,97
   1557a:	05800793          	li	a5,88
   1557e:	00eb1463          	bne	s6,a4,15586 <_svfprintf_r+0x62a>
   15582:	07800793          	li	a5,120
   15586:	0cf108a3          	sb	a5,209(sp)
   1558a:	00246413          	ori	s0,s0,2
   1558e:	06300793          	li	a5,99
   15592:	2401                	sext.w	s0,s0
   15594:	19b7d863          	ble	s11,a5,15724 <_svfprintf_r+0x7c8>
   15598:	001d859b          	addiw	a1,s11,1
   1559c:	854a                	mv	a0,s2
   1559e:	da5fa0ef          	jal	ra,10342 <_malloc_r>
   155a2:	84aa                	mv	s1,a0
   155a4:	18051363          	bnez	a0,1572a <_svfprintf_r+0x7ce>
   155a8:	0109d783          	lhu	a5,16(s3)
   155ac:	0407e793          	ori	a5,a5,64
   155b0:	00f99823          	sh	a5,16(s3)
   155b4:	0109d783          	lhu	a5,16(s3)
   155b8:	0407f793          	andi	a5,a5,64
   155bc:	a0079fe3          	bnez	a5,14fda <_svfprintf_r+0x7e>
   155c0:	26813083          	ld	ra,616(sp)
   155c4:	26013403          	ld	s0,608(sp)
   155c8:	7522                	ld	a0,40(sp)
   155ca:	25813483          	ld	s1,600(sp)
   155ce:	25013903          	ld	s2,592(sp)
   155d2:	24813983          	ld	s3,584(sp)
   155d6:	24013a03          	ld	s4,576(sp)
   155da:	23813a83          	ld	s5,568(sp)
   155de:	23013b03          	ld	s6,560(sp)
   155e2:	22813b83          	ld	s7,552(sp)
   155e6:	22013c03          	ld	s8,544(sp)
   155ea:	21813c83          	ld	s9,536(sp)
   155ee:	21013d03          	ld	s10,528(sp)
   155f2:	20813d83          	ld	s11,520(sp)
   155f6:	27010113          	addi	sp,sp,624
   155fa:	8082                	ret
   155fc:	57fd                	li	a5,-1
   155fe:	12fd8863          	beq	s11,a5,1572e <_svfprintf_r+0x7d2>
   15602:	04700793          	li	a5,71
   15606:	4b81                	li	s7,0
   15608:	00fc1463          	bne	s8,a5,15610 <_svfprintf_r+0x6b4>
   1560c:	120d8463          	beqz	s11,15734 <_svfprintf_r+0x7d8>
   15610:	10046793          	ori	a5,s0,256
   15614:	7a6e                	ld	s4,248(sp)
   15616:	2781                	sext.w	a5,a5
   15618:	fc3e                	sd	a5,56(sp)
   1561a:	fc82                	sd	zero,120(sp)
   1561c:	7ece                	ld	t4,240(sp)
   1561e:	000a5963          	bgez	s4,15630 <_svfprintf_r+0x6d4>
   15622:	57fd                	li	a5,-1
   15624:	17fe                	slli	a5,a5,0x3f
   15626:	00fa4a33          	xor	s4,s4,a5
   1562a:	02d00793          	li	a5,45
   1562e:	fcbe                	sd	a5,120(sp)
   15630:	04100793          	li	a5,65
   15634:	22fc1363          	bne	s8,a5,1585a <_svfprintf_r+0x8fe>
   15638:	8576                	mv	a0,t4
   1563a:	85d2                	mv	a1,s4
   1563c:	282040ef          	jal	ra,198be <__trunctfdf2>
   15640:	09a8                	addi	a0,sp,216
   15642:	e1aff0ef          	jal	ra,14c5c <frexp>
   15646:	194040ef          	jal	ra,197da <__extenddftf2>
   1564a:	768a                	ld	a3,160(sp)
   1564c:	4601                	li	a2,0
   1564e:	226030ef          	jal	ra,18874 <__multf3>
   15652:	4601                	li	a2,0
   15654:	4681                	li	a3,0
   15656:	e12a                	sd	a0,128(sp)
   15658:	e52e                	sd	a1,136(sp)
   1565a:	7ef020ef          	jal	ra,18648 <__eqtf2>
   1565e:	e119                	bnez	a0,15664 <_svfprintf_r+0x708>
   15660:	4785                	li	a5,1
   15662:	cdbe                	sw	a5,216(sp)
   15664:	06100793          	li	a5,97
   15668:	0cfb1963          	bne	s6,a5,1573a <_svfprintf_r+0x7de>
   1566c:	0001a7b7          	lui	a5,0x1a
   15670:	d6078793          	addi	a5,a5,-672 # 19d60 <zeroes.4441+0x68>
   15674:	e43e                	sd	a5,8(sp)
   15676:	fffd871b          	addiw	a4,s11,-1
   1567a:	8a26                	mv	s4,s1
   1567c:	76aa                	ld	a3,168(sp)
   1567e:	650a                	ld	a0,128(sp)
   15680:	65aa                	ld	a1,136(sp)
   15682:	4601                	li	a2,0
   15684:	f93a                	sd	a4,176(sp)
   15686:	1ee030ef          	jal	ra,18874 <__multf3>
   1568a:	8d2a                	mv	s10,a0
   1568c:	f4ae                	sd	a1,104(sp)
   1568e:	03c040ef          	jal	ra,196ca <__fixtfsi>
   15692:	0005079b          	sext.w	a5,a0
   15696:	f8be                	sd	a5,112(sp)
   15698:	0c4040ef          	jal	ra,1975c <__floatsitf>
   1569c:	77a6                	ld	a5,104(sp)
   1569e:	86ae                	mv	a3,a1
   156a0:	862a                	mv	a2,a0
   156a2:	85be                	mv	a1,a5
   156a4:	856a                	mv	a0,s10
   156a6:	015030ef          	jal	ra,18eba <__subtf3>
   156aa:	67a2                	ld	a5,8(sp)
   156ac:	7746                	ld	a4,112(sp)
   156ae:	0a05                	addi	s4,s4,1
   156b0:	e12a                	sd	a0,128(sp)
   156b2:	00e786b3          	add	a3,a5,a4
   156b6:	774a                	ld	a4,176(sp)
   156b8:	0006c683          	lbu	a3,0(a3) # 3fe00000 <__global_pointer$+0x3fde2e78>
   156bc:	e52e                	sd	a1,136(sp)
   156be:	0007079b          	sext.w	a5,a4
   156c2:	f4be                	sd	a5,104(sp)
   156c4:	feda0fa3          	sb	a3,-1(s4)
   156c8:	57fd                	li	a5,-1
   156ca:	88aa                	mv	a7,a0
   156cc:	8d2e                	mv	s10,a1
   156ce:	06f70b63          	beq	a4,a5,15744 <_svfprintf_r+0x7e8>
   156d2:	377d                	addiw	a4,a4,-1
   156d4:	4601                	li	a2,0
   156d6:	4681                	li	a3,0
   156d8:	f93a                	sd	a4,176(sp)
   156da:	fd2a                	sd	a0,184(sp)
   156dc:	76d020ef          	jal	ra,18648 <__eqtf2>
   156e0:	774a                	ld	a4,176(sp)
   156e2:	78ea                	ld	a7,184(sp)
   156e4:	fd41                	bnez	a0,1567c <_svfprintf_r+0x720>
   156e6:	66ca                	ld	a3,144(sp)
   156e8:	4601                	li	a2,0
   156ea:	8546                	mv	a0,a7
   156ec:	85ea                	mv	a1,s10
   156ee:	e146                	sd	a7,128(sp)
   156f0:	7fd020ef          	jal	ra,186ec <__getf2>
   156f4:	04a04b63          	bgtz	a0,1574a <_svfprintf_r+0x7ee>
   156f8:	688a                	ld	a7,128(sp)
   156fa:	66ca                	ld	a3,144(sp)
   156fc:	4601                	li	a2,0
   156fe:	8546                	mv	a0,a7
   15700:	85ea                	mv	a1,s10
   15702:	747020ef          	jal	ra,18648 <__eqtf2>
   15706:	e509                	bnez	a0,15710 <_svfprintf_r+0x7b4>
   15708:	77c6                	ld	a5,112(sp)
   1570a:	0017f713          	andi	a4,a5,1
   1570e:	ef15                	bnez	a4,1574a <_svfprintf_r+0x7ee>
   15710:	5726                	lw	a4,104(sp)
   15712:	03000693          	li	a3,48
   15716:	06074163          	bltz	a4,15778 <_svfprintf_r+0x81c>
   1571a:	0a05                	addi	s4,s4,1
   1571c:	feda0fa3          	sb	a3,-1(s4)
   15720:	377d                	addiw	a4,a4,-1
   15722:	bfd5                	j	15716 <_svfprintf_r+0x7ba>
   15724:	4b81                	li	s7,0
   15726:	0a24                	addi	s1,sp,280
   15728:	b5e5                	j	15610 <_svfprintf_r+0x6b4>
   1572a:	8baa                	mv	s7,a0
   1572c:	b5d5                	j	15610 <_svfprintf_r+0x6b4>
   1572e:	4b81                	li	s7,0
   15730:	4d99                	li	s11,6
   15732:	bdf9                	j	15610 <_svfprintf_r+0x6b4>
   15734:	8bee                	mv	s7,s11
   15736:	4d85                	li	s11,1
   15738:	bde1                	j	15610 <_svfprintf_r+0x6b4>
   1573a:	0001a7b7          	lui	a5,0x1a
   1573e:	d7878793          	addi	a5,a5,-648 # 19d78 <zeroes.4441+0x80>
   15742:	bf0d                	j	15674 <_svfprintf_r+0x718>
   15744:	57fd                	li	a5,-1
   15746:	f4be                	sd	a5,104(sp)
   15748:	bf79                	j	156e6 <_svfprintf_r+0x78a>
   1574a:	67a2                	ld	a5,8(sp)
   1574c:	f5d2                	sd	s4,232(sp)
   1574e:	03000593          	li	a1,48
   15752:	00f7c603          	lbu	a2,15(a5)
   15756:	76ae                	ld	a3,232(sp)
   15758:	fff68713          	addi	a4,a3,-1
   1575c:	f5ba                	sd	a4,232(sp)
   1575e:	fff6c703          	lbu	a4,-1(a3)
   15762:	0ec70563          	beq	a4,a2,1584c <_svfprintf_r+0x8f0>
   15766:	03900613          	li	a2,57
   1576a:	0ec71463          	bne	a4,a2,15852 <_svfprintf_r+0x8f6>
   1576e:	67a2                	ld	a5,8(sp)
   15770:	00a7c703          	lbu	a4,10(a5)
   15774:	fee68fa3          	sb	a4,-1(a3)
   15778:	04700713          	li	a4,71
   1577c:	409a0a3b          	subw	s4,s4,s1
   15780:	4d6e                	lw	s10,216(sp)
   15782:	18ec1463          	bne	s8,a4,1590a <_svfprintf_r+0x9ae>
   15786:	5775                	li	a4,-3
   15788:	00ed4463          	blt	s10,a4,15790 <_svfprintf_r+0x834>
   1578c:	1fadd463          	ble	s10,s11,15974 <_svfprintf_r+0xa18>
   15790:	3b79                	addiw	s6,s6,-2
   15792:	fffd069b          	addiw	a3,s10,-1
   15796:	cdb6                	sw	a3,216(sp)
   15798:	fdfb7613          	andi	a2,s6,-33
   1579c:	04100513          	li	a0,65
   157a0:	0ffb7713          	andi	a4,s6,255
   157a4:	4581                	li	a1,0
   157a6:	00a61663          	bne	a2,a0,157b2 <_svfprintf_r+0x856>
   157aa:	273d                	addiw	a4,a4,15
   157ac:	0ff77713          	andi	a4,a4,255
   157b0:	4585                	li	a1,1
   157b2:	0ee10023          	sb	a4,224(sp)
   157b6:	02b00793          	li	a5,43
   157ba:	0006d763          	bgez	a3,157c8 <_svfprintf_r+0x86c>
   157be:	4685                	li	a3,1
   157c0:	41a686bb          	subw	a3,a3,s10
   157c4:	02d00793          	li	a5,45
   157c8:	0ef100a3          	sb	a5,225(sp)
   157cc:	47a5                	li	a5,9
   157ce:	16d7da63          	ble	a3,a5,15942 <_svfprintf_r+0x9e6>
   157d2:	0ef10713          	addi	a4,sp,239
   157d6:	853a                	mv	a0,a4
   157d8:	45a9                	li	a1,10
   157da:	4825                	li	a6,9
   157dc:	02b6e7bb          	remw	a5,a3,a1
   157e0:	fff70613          	addi	a2,a4,-1
   157e4:	02b6c6bb          	divw	a3,a3,a1
   157e8:	0307879b          	addiw	a5,a5,48
   157ec:	fef70fa3          	sb	a5,-1(a4)
   157f0:	14d84063          	blt	a6,a3,15930 <_svfprintf_r+0x9d4>
   157f4:	0306879b          	addiw	a5,a3,48
   157f8:	fef60fa3          	sb	a5,-1(a2)
   157fc:	1779                	addi	a4,a4,-2
   157fe:	0e210613          	addi	a2,sp,226
   15802:	12a76963          	bltu	a4,a0,15934 <_svfprintf_r+0x9d8>
   15806:	119c                	addi	a5,sp,224
   15808:	40f607bb          	subw	a5,a2,a5
   1580c:	ecbe                	sd	a5,88(sp)
   1580e:	47e6                	lw	a5,88(sp)
   15810:	4705                	li	a4,1
   15812:	01478dbb          	addw	s11,a5,s4
   15816:	87ee                	mv	a5,s11
   15818:	01474563          	blt	a4,s4,15822 <_svfprintf_r+0x8c6>
   1581c:	00147713          	andi	a4,s0,1
   15820:	c701                	beqz	a4,15828 <_svfprintf_r+0x8cc>
   15822:	4762                	lw	a4,24(sp)
   15824:	00e78dbb          	addw	s11,a5,a4
   15828:	bff47413          	andi	s0,s0,-1025
   1582c:	2401                	sext.w	s0,s0
   1582e:	10046793          	ori	a5,s0,256
   15832:	fc3e                	sd	a5,56(sp)
   15834:	e402                	sd	zero,8(sp)
   15836:	4c01                	li	s8,0
   15838:	4d01                	li	s10,0
   1583a:	77e6                	ld	a5,120(sp)
   1583c:	c789                	beqz	a5,15846 <_svfprintf_r+0x8ea>
   1583e:	02d00713          	li	a4,45
   15842:	0ce107a3          	sb	a4,207(sp)
   15846:	7462                	ld	s0,56(sp)
   15848:	4701                	li	a4,0
   1584a:	b401                	j	1524a <_svfprintf_r+0x2ee>
   1584c:	feb68fa3          	sb	a1,-1(a3)
   15850:	b719                	j	15756 <_svfprintf_r+0x7fa>
   15852:	2705                	addiw	a4,a4,1
   15854:	0ff77713          	andi	a4,a4,255
   15858:	bf31                	j	15774 <_svfprintf_r+0x818>
   1585a:	04600793          	li	a5,70
   1585e:	00fc0b63          	beq	s8,a5,15874 <_svfprintf_r+0x918>
   15862:	04500793          	li	a5,69
   15866:	8d6e                	mv	s10,s11
   15868:	00fc1463          	bne	s8,a5,15870 <_svfprintf_r+0x914>
   1586c:	001d8d1b          	addiw	s10,s11,1
   15870:	4689                	li	a3,2
   15872:	a019                	j	15878 <_svfprintf_r+0x91c>
   15874:	8d6e                	mv	s10,s11
   15876:	468d                	li	a3,3
   15878:	09bc                	addi	a5,sp,216
   1587a:	85f6                	mv	a1,t4
   1587c:	0e810893          	addi	a7,sp,232
   15880:	0dc10813          	addi	a6,sp,220
   15884:	876a                	mv	a4,s10
   15886:	8652                	mv	a2,s4
   15888:	854a                	mv	a0,s2
   1588a:	e476                	sd	t4,8(sp)
   1588c:	d81fd0ef          	jal	ra,1360c <_ldtoa_r>
   15890:	04700793          	li	a5,71
   15894:	84aa                	mv	s1,a0
   15896:	6ea2                	ld	t4,8(sp)
   15898:	00fc1563          	bne	s8,a5,158a2 <_svfprintf_r+0x946>
   1589c:	00147793          	andi	a5,s0,1
   158a0:	cbb1                	beqz	a5,158f4 <_svfprintf_r+0x998>
   158a2:	04600713          	li	a4,70
   158a6:	01a487b3          	add	a5,s1,s10
   158aa:	02ec1963          	bne	s8,a4,158dc <_svfprintf_r+0x980>
   158ae:	0004c683          	lbu	a3,0(s1)
   158b2:	03000713          	li	a4,48
   158b6:	02e69163          	bne	a3,a4,158d8 <_svfprintf_r+0x97c>
   158ba:	8576                	mv	a0,t4
   158bc:	4601                	li	a2,0
   158be:	4681                	li	a3,0
   158c0:	85d2                	mv	a1,s4
   158c2:	f4be                	sd	a5,104(sp)
   158c4:	e476                	sd	t4,8(sp)
   158c6:	583020ef          	jal	ra,18648 <__eqtf2>
   158ca:	6ea2                	ld	t4,8(sp)
   158cc:	77a6                	ld	a5,104(sp)
   158ce:	c509                	beqz	a0,158d8 <_svfprintf_r+0x97c>
   158d0:	4705                	li	a4,1
   158d2:	41a70d3b          	subw	s10,a4,s10
   158d6:	cdea                	sw	s10,216(sp)
   158d8:	476e                	lw	a4,216(sp)
   158da:	97ba                	add	a5,a5,a4
   158dc:	4681                	li	a3,0
   158de:	4601                	li	a2,0
   158e0:	8576                	mv	a0,t4
   158e2:	85d2                	mv	a1,s4
   158e4:	e43e                	sd	a5,8(sp)
   158e6:	563020ef          	jal	ra,18648 <__eqtf2>
   158ea:	67a2                	ld	a5,8(sp)
   158ec:	03000693          	li	a3,48
   158f0:	e909                	bnez	a0,15902 <_svfprintf_r+0x9a6>
   158f2:	f5be                	sd	a5,232(sp)
   158f4:	7a2e                	ld	s4,232(sp)
   158f6:	b549                	j	15778 <_svfprintf_r+0x81c>
   158f8:	00170613          	addi	a2,a4,1
   158fc:	f5b2                	sd	a2,232(sp)
   158fe:	00d70023          	sb	a3,0(a4)
   15902:	772e                	ld	a4,232(sp)
   15904:	fef76ae3          	bltu	a4,a5,158f8 <_svfprintf_r+0x99c>
   15908:	b7f5                	j	158f4 <_svfprintf_r+0x998>
   1590a:	04600713          	li	a4,70
   1590e:	e8ec12e3          	bne	s8,a4,15792 <_svfprintf_r+0x836>
   15912:	05a05863          	blez	s10,15962 <_svfprintf_r+0xa06>
   15916:	000d9563          	bnez	s11,15920 <_svfprintf_r+0x9c4>
   1591a:	00147713          	andi	a4,s0,1
   1591e:	cf59                	beqz	a4,159bc <_svfprintf_r+0xa60>
   15920:	47e2                	lw	a5,24(sp)
   15922:	01a7873b          	addw	a4,a5,s10
   15926:	01b70dbb          	addw	s11,a4,s11
   1592a:	06600b13          	li	s6,102
   1592e:	a895                	j	159a2 <_svfprintf_r+0xa46>
   15930:	8732                	mv	a4,a2
   15932:	b56d                	j	157dc <_svfprintf_r+0x880>
   15934:	0705                	addi	a4,a4,1
   15936:	fff74783          	lbu	a5,-1(a4)
   1593a:	0605                	addi	a2,a2,1
   1593c:	fef60fa3          	sb	a5,-1(a2)
   15940:	b5c9                	j	15802 <_svfprintf_r+0x8a6>
   15942:	0e210713          	addi	a4,sp,226
   15946:	e599                	bnez	a1,15954 <_svfprintf_r+0x9f8>
   15948:	03000793          	li	a5,48
   1594c:	0ef10123          	sb	a5,226(sp)
   15950:	0e310713          	addi	a4,sp,227
   15954:	0306879b          	addiw	a5,a3,48
   15958:	00170613          	addi	a2,a4,1
   1595c:	00f70023          	sb	a5,0(a4)
   15960:	b55d                	j	15806 <_svfprintf_r+0x8aa>
   15962:	000d9563          	bnez	s11,1596c <_svfprintf_r+0xa10>
   15966:	00147713          	andi	a4,s0,1
   1596a:	cb39                	beqz	a4,159c0 <_svfprintf_r+0xa64>
   1596c:	47e2                	lw	a5,24(sp)
   1596e:	0017871b          	addiw	a4,a5,1
   15972:	bf55                	j	15926 <_svfprintf_r+0x9ca>
   15974:	014d4c63          	blt	s10,s4,1598c <_svfprintf_r+0xa30>
   15978:	00147713          	andi	a4,s0,1
   1597c:	8dea                	mv	s11,s10
   1597e:	c701                	beqz	a4,15986 <_svfprintf_r+0xa2a>
   15980:	47e2                	lw	a5,24(sp)
   15982:	01a78dbb          	addw	s11,a5,s10
   15986:	06700b13          	li	s6,103
   1598a:	a821                	j	159a2 <_svfprintf_r+0xa46>
   1598c:	47e2                	lw	a5,24(sp)
   1598e:	06700b13          	li	s6,103
   15992:	01478dbb          	addw	s11,a5,s4
   15996:	01a04663          	bgtz	s10,159a2 <_svfprintf_r+0xa46>
   1599a:	41ad8e3b          	subw	t3,s11,s10
   1599e:	001e0d9b          	addiw	s11,t3,1
   159a2:	40047413          	andi	s0,s0,1024
   159a6:	00040c1b          	sext.w	s8,s0
   159aa:	e402                	sd	zero,8(sp)
   159ac:	e80c07e3          	beqz	s8,1583a <_svfprintf_r+0x8de>
   159b0:	4c01                	li	s8,0
   159b2:	e9a054e3          	blez	s10,1583a <_svfprintf_r+0x8de>
   159b6:	0ff00693          	li	a3,255
   159ba:	a01d                	j	159e0 <_svfprintf_r+0xa84>
   159bc:	8dea                	mv	s11,s10
   159be:	b7b5                	j	1592a <_svfprintf_r+0x9ce>
   159c0:	06600b13          	li	s6,102
   159c4:	4d85                	li	s11,1
   159c6:	bff1                	j	159a2 <_svfprintf_r+0xa46>
   159c8:	2701                	sext.w	a4,a4
   159ca:	03a75063          	ble	s10,a4,159ea <_svfprintf_r+0xa8e>
   159ce:	6782                	ld	a5,0(sp)
   159d0:	40ed0d3b          	subw	s10,s10,a4
   159d4:	0017c703          	lbu	a4,1(a5)
   159d8:	c315                	beqz	a4,159fc <_svfprintf_r+0xaa0>
   159da:	0785                	addi	a5,a5,1
   159dc:	2c05                	addiw	s8,s8,1
   159de:	e03e                	sd	a5,0(sp)
   159e0:	6782                	ld	a5,0(sp)
   159e2:	0007c703          	lbu	a4,0(a5)
   159e6:	fed711e3          	bne	a4,a3,159c8 <_svfprintf_r+0xa6c>
   159ea:	47a2                	lw	a5,8(sp)
   159ec:	00fc073b          	addw	a4,s8,a5
   159f0:	4786                	lw	a5,64(sp)
   159f2:	02f7073b          	mulw	a4,a4,a5
   159f6:	01b70dbb          	addw	s11,a4,s11
   159fa:	b581                	j	1583a <_svfprintf_r+0x8de>
   159fc:	47a2                	lw	a5,8(sp)
   159fe:	2785                	addiw	a5,a5,1
   15a00:	e43e                	sd	a5,8(sp)
   15a02:	bff9                	j	159e0 <_svfprintf_r+0xa84>
   15a04:	008b8713          	addi	a4,s7,8
   15a08:	f83a                	sd	a4,48(sp)
   15a0a:	02047713          	andi	a4,s0,32
   15a0e:	000bb783          	ld	a5,0(s7)
   15a12:	c719                	beqz	a4,15a20 <_svfprintf_r+0xac4>
   15a14:	7722                	ld	a4,40(sp)
   15a16:	e398                	sd	a4,0(a5)
   15a18:	7bc2                	ld	s7,48(sp)
   15a1a:	64c2                	ld	s1,16(sp)
   15a1c:	e0eff06f          	j	1502a <_svfprintf_r+0xce>
   15a20:	01047713          	andi	a4,s0,16
   15a24:	fb65                	bnez	a4,15a14 <_svfprintf_r+0xab8>
   15a26:	04047713          	andi	a4,s0,64
   15a2a:	c711                	beqz	a4,15a36 <_svfprintf_r+0xada>
   15a2c:	02815703          	lhu	a4,40(sp)
   15a30:	00e79023          	sh	a4,0(a5)
   15a34:	b7d5                	j	15a18 <_svfprintf_r+0xabc>
   15a36:	20047413          	andi	s0,s0,512
   15a3a:	c411                	beqz	s0,15a46 <_svfprintf_r+0xaea>
   15a3c:	02814703          	lbu	a4,40(sp)
   15a40:	00e78023          	sb	a4,0(a5)
   15a44:	bfd1                	j	15a18 <_svfprintf_r+0xabc>
   15a46:	5722                	lw	a4,40(sp)
   15a48:	c398                	sw	a4,0(a5)
   15a4a:	b7f9                	j	15a18 <_svfprintf_r+0xabc>
   15a4c:	01046413          	ori	s0,s0,16
   15a50:	2401                	sext.w	s0,s0
   15a52:	008b8793          	addi	a5,s7,8
   15a56:	f83e                	sd	a5,48(sp)
   15a58:	02047793          	andi	a5,s0,32
   15a5c:	cb85                	beqz	a5,15a8c <_svfprintf_r+0xb30>
   15a5e:	000bbb83          	ld	s7,0(s7)
   15a62:	bff47413          	andi	s0,s0,-1025
   15a66:	2401                	sext.w	s0,s0
   15a68:	4781                	li	a5,0
   15a6a:	0c0107a3          	sb	zero,207(sp)
   15a6e:	577d                	li	a4,-1
   15a70:	12ed8c63          	beq	s11,a4,15ba8 <_svfprintf_r+0xc4c>
   15a74:	8722                	mv	a4,s0
   15a76:	f7f47413          	andi	s0,s0,-129
   15a7a:	2401                	sext.w	s0,s0
   15a7c:	120b9663          	bnez	s7,15ba8 <_svfprintf_r+0xc4c>
   15a80:	200d8463          	beqz	s11,15c88 <_svfprintf_r+0xd2c>
   15a84:	4705                	li	a4,1
   15a86:	12e79463          	bne	a5,a4,15bae <_svfprintf_r+0xc52>
   15a8a:	badd                	j	15480 <_svfprintf_r+0x524>
   15a8c:	01047793          	andi	a5,s0,16
   15a90:	f7f9                	bnez	a5,15a5e <_svfprintf_r+0xb02>
   15a92:	04047793          	andi	a5,s0,64
   15a96:	000bab83          	lw	s7,0(s7)
   15a9a:	c789                	beqz	a5,15aa4 <_svfprintf_r+0xb48>
   15a9c:	1bc2                	slli	s7,s7,0x30
   15a9e:	030bdb93          	srli	s7,s7,0x30
   15aa2:	b7c1                	j	15a62 <_svfprintf_r+0xb06>
   15aa4:	20047793          	andi	a5,s0,512
   15aa8:	c781                	beqz	a5,15ab0 <_svfprintf_r+0xb54>
   15aaa:	0ffbfb93          	andi	s7,s7,255
   15aae:	bf55                	j	15a62 <_svfprintf_r+0xb06>
   15ab0:	1b82                	slli	s7,s7,0x20
   15ab2:	020bdb93          	srli	s7,s7,0x20
   15ab6:	b775                	j	15a62 <_svfprintf_r+0xb06>
   15ab8:	008b8793          	addi	a5,s7,8
   15abc:	f83e                	sd	a5,48(sp)
   15abe:	77e1                	lui	a5,0xffff8
   15ac0:	8307c793          	xori	a5,a5,-2000
   15ac4:	0cf11823          	sh	a5,208(sp)
   15ac8:	0001a7b7          	lui	a5,0x1a
   15acc:	d6078793          	addi	a5,a5,-672 # 19d60 <zeroes.4441+0x68>
   15ad0:	00246413          	ori	s0,s0,2
   15ad4:	f0be                	sd	a5,96(sp)
   15ad6:	000bbb83          	ld	s7,0(s7)
   15ada:	2401                	sext.w	s0,s0
   15adc:	4789                	li	a5,2
   15ade:	07800b13          	li	s6,120
   15ae2:	b761                	j	15a6a <_svfprintf_r+0xb0e>
   15ae4:	008b8793          	addi	a5,s7,8
   15ae8:	f83e                	sd	a5,48(sp)
   15aea:	0c0107a3          	sb	zero,207(sp)
   15aee:	57fd                	li	a5,-1
   15af0:	000bb483          	ld	s1,0(s7)
   15af4:	00fd8e63          	beq	s11,a5,15b10 <_svfprintf_r+0xbb4>
   15af8:	866e                	mv	a2,s11
   15afa:	4581                	li	a1,0
   15afc:	8526                	mv	a0,s1
   15afe:	e62fe0ef          	jal	ra,14160 <memchr>
   15b02:	8baa                	mv	s7,a0
   15b04:	a00506e3          	beqz	a0,15510 <_svfprintf_r+0x5b4>
   15b08:	40950dbb          	subw	s11,a0,s1
   15b0c:	4b81                	li	s7,0
   15b0e:	b409                	j	15510 <_svfprintf_r+0x5b4>
   15b10:	8526                	mv	a0,s1
   15b12:	c08ff0ef          	jal	ra,14f1a <strlen>
   15b16:	00050d9b          	sext.w	s11,a0
   15b1a:	bfcd                	j	15b0c <_svfprintf_r+0xbb0>
   15b1c:	01046413          	ori	s0,s0,16
   15b20:	2401                	sext.w	s0,s0
   15b22:	008b8793          	addi	a5,s7,8
   15b26:	f83e                	sd	a5,48(sp)
   15b28:	02047793          	andi	a5,s0,32
   15b2c:	c789                	beqz	a5,15b36 <_svfprintf_r+0xbda>
   15b2e:	000bbb83          	ld	s7,0(s7)
   15b32:	4785                	li	a5,1
   15b34:	bf1d                	j	15a6a <_svfprintf_r+0xb0e>
   15b36:	01047793          	andi	a5,s0,16
   15b3a:	fbf5                	bnez	a5,15b2e <_svfprintf_r+0xbd2>
   15b3c:	04047793          	andi	a5,s0,64
   15b40:	000bab83          	lw	s7,0(s7)
   15b44:	c789                	beqz	a5,15b4e <_svfprintf_r+0xbf2>
   15b46:	1bc2                	slli	s7,s7,0x30
   15b48:	030bdb93          	srli	s7,s7,0x30
   15b4c:	b7dd                	j	15b32 <_svfprintf_r+0xbd6>
   15b4e:	20047793          	andi	a5,s0,512
   15b52:	c781                	beqz	a5,15b5a <_svfprintf_r+0xbfe>
   15b54:	0ffbfb93          	andi	s7,s7,255
   15b58:	bfe9                	j	15b32 <_svfprintf_r+0xbd6>
   15b5a:	1b82                	slli	s7,s7,0x20
   15b5c:	020bdb93          	srli	s7,s7,0x20
   15b60:	bfc9                	j	15b32 <_svfprintf_r+0xbd6>
   15b62:	0001a7b7          	lui	a5,0x1a
   15b66:	d6078793          	addi	a5,a5,-672 # 19d60 <zeroes.4441+0x68>
   15b6a:	d64ff06f          	j	150ce <_svfprintf_r+0x172>
   15b6e:	01047793          	andi	a5,s0,16
   15b72:	d6079663          	bnez	a5,150de <_svfprintf_r+0x182>
   15b76:	04047793          	andi	a5,s0,64
   15b7a:	000bab83          	lw	s7,0(s7)
   15b7e:	c791                	beqz	a5,15b8a <_svfprintf_r+0xc2e>
   15b80:	1bc2                	slli	s7,s7,0x30
   15b82:	030bdb93          	srli	s7,s7,0x30
   15b86:	d5cff06f          	j	150e2 <_svfprintf_r+0x186>
   15b8a:	20047793          	andi	a5,s0,512
   15b8e:	c789                	beqz	a5,15b98 <_svfprintf_r+0xc3c>
   15b90:	0ffbfb93          	andi	s7,s7,255
   15b94:	d4eff06f          	j	150e2 <_svfprintf_r+0x186>
   15b98:	1b82                	slli	s7,s7,0x20
   15b9a:	020bdb93          	srli	s7,s7,0x20
   15b9e:	d44ff06f          	j	150e2 <_svfprintf_r+0x186>
   15ba2:	8722                	mv	a4,s0
   15ba4:	4785                	li	a5,1
   15ba6:	bdc1                	j	15a76 <_svfprintf_r+0xb1a>
   15ba8:	4705                	li	a4,1
   15baa:	8ce788e3          	beq	a5,a4,1547a <_svfprintf_r+0x51e>
   15bae:	4709                	li	a4,2
   15bb0:	0ae78d63          	beq	a5,a4,15c6a <_svfprintf_r+0xd0e>
   15bb4:	1afc                	addi	a5,sp,380
   15bb6:	007bf713          	andi	a4,s7,7
   15bba:	03070713          	addi	a4,a4,48
   15bbe:	fee78fa3          	sb	a4,-1(a5)
   15bc2:	003bdb93          	srli	s7,s7,0x3
   15bc6:	fff78493          	addi	s1,a5,-1
   15bca:	020b9863          	bnez	s7,15bfa <_svfprintf_r+0xc9e>
   15bce:	00147693          	andi	a3,s0,1
   15bd2:	ca89                	beqz	a3,15be4 <_svfprintf_r+0xc88>
   15bd4:	03000693          	li	a3,48
   15bd8:	00d70663          	beq	a4,a3,15be4 <_svfprintf_r+0xc88>
   15bdc:	fed48fa3          	sb	a3,-1(s1)
   15be0:	ffe78493          	addi	s1,a5,-2
   15be4:	17c10e13          	addi	t3,sp,380
   15be8:	876e                	mv	a4,s11
   15bea:	4b81                	li	s7,0
   15bec:	409e0dbb          	subw	s11,t3,s1
   15bf0:	e402                	sd	zero,8(sp)
   15bf2:	4c01                	li	s8,0
   15bf4:	4d01                	li	s10,0
   15bf6:	e54ff06f          	j	1524a <_svfprintf_r+0x2ee>
   15bfa:	87a6                	mv	a5,s1
   15bfc:	bf6d                	j	15bb6 <_svfprintf_r+0xc5a>
   15bfe:	40047c13          	andi	s8,s0,1024
   15c02:	4a01                	li	s4,0
   15c04:	1afc                	addi	a5,sp,380
   15c06:	4d29                	li	s10,10
   15c08:	2c01                	sext.w	s8,s8
   15c0a:	0ff00693          	li	a3,255
   15c0e:	4825                	li	a6,9
   15c10:	03abf733          	remu	a4,s7,s10
   15c14:	fff78493          	addi	s1,a5,-1
   15c18:	2a05                	addiw	s4,s4,1
   15c1a:	0307071b          	addiw	a4,a4,48
   15c1e:	fee78fa3          	sb	a4,-1(a5)
   15c22:	020c0e63          	beqz	s8,15c5e <_svfprintf_r+0xd02>
   15c26:	6782                	ld	a5,0(sp)
   15c28:	0007c783          	lbu	a5,0(a5)
   15c2c:	02fa1963          	bne	s4,a5,15c5e <_svfprintf_r+0xd02>
   15c30:	02d78763          	beq	a5,a3,15c5e <_svfprintf_r+0xd02>
   15c34:	03787563          	bleu	s7,a6,15c5e <_svfprintf_r+0xd02>
   15c38:	6786                	ld	a5,64(sp)
   15c3a:	65c6                	ld	a1,80(sp)
   15c3c:	fc42                	sd	a6,56(sp)
   15c3e:	8c9d                	sub	s1,s1,a5
   15c40:	863e                	mv	a2,a5
   15c42:	8526                	mv	a0,s1
   15c44:	e436                	sd	a3,8(sp)
   15c46:	ae6ff0ef          	jal	ra,14f2c <strncpy>
   15c4a:	6782                	ld	a5,0(sp)
   15c4c:	4a01                	li	s4,0
   15c4e:	66a2                	ld	a3,8(sp)
   15c50:	0017c783          	lbu	a5,1(a5)
   15c54:	7862                	ld	a6,56(sp)
   15c56:	c781                	beqz	a5,15c5e <_svfprintf_r+0xd02>
   15c58:	6782                	ld	a5,0(sp)
   15c5a:	0785                	addi	a5,a5,1
   15c5c:	e03e                	sd	a5,0(sp)
   15c5e:	03abdbb3          	divu	s7,s7,s10
   15c62:	f80b81e3          	beqz	s7,15be4 <_svfprintf_r+0xc88>
   15c66:	87a6                	mv	a5,s1
   15c68:	b765                	j	15c10 <_svfprintf_r+0xcb4>
   15c6a:	1ae4                	addi	s1,sp,380
   15c6c:	7706                	ld	a4,96(sp)
   15c6e:	00fbf793          	andi	a5,s7,15
   15c72:	14fd                	addi	s1,s1,-1
   15c74:	97ba                	add	a5,a5,a4
   15c76:	0007c783          	lbu	a5,0(a5)
   15c7a:	004bdb93          	srli	s7,s7,0x4
   15c7e:	00f48023          	sb	a5,0(s1)
   15c82:	fe0b95e3          	bnez	s7,15c6c <_svfprintf_r+0xd10>
   15c86:	bfb9                	j	15be4 <_svfprintf_r+0xc88>
   15c88:	1ae4                	addi	s1,sp,380
   15c8a:	ffa9                	bnez	a5,15be4 <_svfprintf_r+0xc88>
   15c8c:	8b05                	andi	a4,a4,1
   15c8e:	db39                	beqz	a4,15be4 <_svfprintf_r+0xc88>
   15c90:	03000793          	li	a5,48
   15c94:	16f10da3          	sb	a5,379(sp)
   15c98:	ff0ff06f          	j	15488 <_svfprintf_r+0x52c>
   15c9c:	020b02e3          	beqz	s6,164c0 <_svfprintf_r+0x1564>
   15ca0:	11610c23          	sb	s6,280(sp)
   15ca4:	0c0107a3          	sb	zero,207(sp)
   15ca8:	f85e                	sd	s7,48(sp)
   15caa:	d92ff06f          	j	1523c <_svfprintf_r+0x2e0>
   15cae:	0641                	addi	a2,a2,16
   15cb0:	011cb423          	sd	a7,8(s9)
   15cb4:	ea32                	sd	a2,272(sp)
   15cb6:	10b12423          	sw	a1,264(sp)
   15cba:	02aed463          	ble	a0,t4,15ce2 <_svfprintf_r+0xd86>
   15cbe:	0210                	addi	a2,sp,256
   15cc0:	85ce                	mv	a1,s3
   15cc2:	854a                	mv	a0,s2
   15cc4:	fd76                	sd	t4,184(sp)
   15cc6:	f942                	sd	a6,176(sp)
   15cc8:	e546                	sd	a7,136(sp)
   15cca:	e13a                	sd	a4,128(sp)
   15ccc:	fcb6                	sd	a3,120(sp)
   15cce:	4c5010ef          	jal	ra,17992 <__ssprint_r>
   15cd2:	7a051863          	bnez	a0,16482 <_svfprintf_r+0x1526>
   15cd6:	7eea                	ld	t4,184(sp)
   15cd8:	784a                	ld	a6,176(sp)
   15cda:	68aa                	ld	a7,136(sp)
   15cdc:	670a                	ld	a4,128(sp)
   15cde:	76e6                	ld	a3,120(sp)
   15ce0:	8f56                	mv	t5,s5
   15ce2:	36c1                	addiw	a3,a3,-16
   15ce4:	8cfa                	mv	s9,t5
   15ce6:	daeff06f          	j	15294 <_svfprintf_r+0x338>
   15cea:	0641                	addi	a2,a2,16
   15cec:	011cb423          	sd	a7,8(s9)
   15cf0:	ea32                	sd	a2,272(sp)
   15cf2:	10b12423          	sw	a1,264(sp)
   15cf6:	02aed463          	ble	a0,t4,15d1e <_svfprintf_r+0xdc2>
   15cfa:	0210                	addi	a2,sp,256
   15cfc:	85ce                	mv	a1,s3
   15cfe:	854a                	mv	a0,s2
   15d00:	e576                	sd	t4,136(sp)
   15d02:	e142                	sd	a6,128(sp)
   15d04:	fcc6                	sd	a7,120(sp)
   15d06:	f8ba                	sd	a4,112(sp)
   15d08:	f4b6                	sd	a3,104(sp)
   15d0a:	489010ef          	jal	ra,17992 <__ssprint_r>
   15d0e:	76051a63          	bnez	a0,16482 <_svfprintf_r+0x1526>
   15d12:	6eaa                	ld	t4,136(sp)
   15d14:	680a                	ld	a6,128(sp)
   15d16:	78e6                	ld	a7,120(sp)
   15d18:	7746                	ld	a4,112(sp)
   15d1a:	76a6                	ld	a3,104(sp)
   15d1c:	8f56                	mv	t5,s5
   15d1e:	36c1                	addiw	a3,a3,-16
   15d20:	8cfa                	mv	s9,t5
   15d22:	e58ff06f          	j	1537a <_svfprintf_r+0x41e>
   15d26:	06c1                	addi	a3,a3,16
   15d28:	011cb423          	sd	a7,8(s9)
   15d2c:	ea36                	sd	a3,272(sp)
   15d2e:	10c12423          	sw	a2,264(sp)
   15d32:	02bed263          	ble	a1,t4,15d56 <_svfprintf_r+0xdfa>
   15d36:	0210                	addi	a2,sp,256
   15d38:	85ce                	mv	a1,s3
   15d3a:	854a                	mv	a0,s2
   15d3c:	e176                	sd	t4,128(sp)
   15d3e:	fcc2                	sd	a6,120(sp)
   15d40:	f8c6                	sd	a7,112(sp)
   15d42:	f4ba                	sd	a4,104(sp)
   15d44:	44f010ef          	jal	ra,17992 <__ssprint_r>
   15d48:	72051d63          	bnez	a0,16482 <_svfprintf_r+0x1526>
   15d4c:	6e8a                	ld	t4,128(sp)
   15d4e:	7866                	ld	a6,120(sp)
   15d50:	78c6                	ld	a7,112(sp)
   15d52:	7726                	ld	a4,104(sp)
   15d54:	8556                	mv	a0,s5
   15d56:	3741                	addiw	a4,a4,-16
   15d58:	8caa                	mv	s9,a0
   15d5a:	e74ff06f          	j	153ce <_svfprintf_r+0x472>
   15d5e:	06500693          	li	a3,101
   15d62:	5766df63          	ble	s6,a3,162e0 <_svfprintf_r+0x1384>
   15d66:	754e                	ld	a0,240(sp)
   15d68:	75ee                	ld	a1,248(sp)
   15d6a:	4601                	li	a2,0
   15d6c:	4681                	li	a3,0
   15d6e:	f4ba                	sd	a4,104(sp)
   15d70:	0d9020ef          	jal	ra,18648 <__eqtf2>
   15d74:	7726                	ld	a4,104(sp)
   15d76:	10051e63          	bnez	a0,15e92 <_svfprintf_r+0xf36>
   15d7a:	0001a7b7          	lui	a5,0x1a
   15d7e:	d9078793          	addi	a5,a5,-624 # 19d90 <zeroes.4441+0x98>
   15d82:	00fcb023          	sd	a5,0(s9)
   15d86:	4785                	li	a5,1
   15d88:	00fcb423          	sd	a5,8(s9)
   15d8c:	10812783          	lw	a5,264(sp)
   15d90:	0705                	addi	a4,a4,1
   15d92:	ea3a                	sd	a4,272(sp)
   15d94:	0017871b          	addiw	a4,a5,1
   15d98:	10e12423          	sw	a4,264(sp)
   15d9c:	479d                	li	a5,7
   15d9e:	0cc1                	addi	s9,s9,16
   15da0:	00e7da63          	ble	a4,a5,15db4 <_svfprintf_r+0xe58>
   15da4:	0210                	addi	a2,sp,256
   15da6:	85ce                	mv	a1,s3
   15da8:	854a                	mv	a0,s2
   15daa:	3e9010ef          	jal	ra,17992 <__ssprint_r>
   15dae:	6c051a63          	bnez	a0,16482 <_svfprintf_r+0x1526>
   15db2:	8cd6                	mv	s9,s5
   15db4:	47ee                	lw	a5,216(sp)
   15db6:	0147c563          	blt	a5,s4,15dc0 <_svfprintf_r+0xe64>
   15dba:	00147793          	andi	a5,s0,1
   15dbe:	cfa5                	beqz	a5,15e36 <_svfprintf_r+0xeda>
   15dc0:	67a6                	ld	a5,72(sp)
   15dc2:	6762                	ld	a4,24(sp)
   15dc4:	0cc1                	addi	s9,s9,16
   15dc6:	fefcb823          	sd	a5,-16(s9)
   15dca:	67e2                	ld	a5,24(sp)
   15dcc:	fefcbc23          	sd	a5,-8(s9)
   15dd0:	67d2                	ld	a5,272(sp)
   15dd2:	97ba                	add	a5,a5,a4
   15dd4:	ea3e                	sd	a5,272(sp)
   15dd6:	10812783          	lw	a5,264(sp)
   15dda:	0017871b          	addiw	a4,a5,1
   15dde:	10e12423          	sw	a4,264(sp)
   15de2:	479d                	li	a5,7
   15de4:	00e7da63          	ble	a4,a5,15df8 <_svfprintf_r+0xe9c>
   15de8:	0210                	addi	a2,sp,256
   15dea:	85ce                	mv	a1,s3
   15dec:	854a                	mv	a0,s2
   15dee:	3a5010ef          	jal	ra,17992 <__ssprint_r>
   15df2:	68051863          	bnez	a0,16482 <_svfprintf_r+0x1526>
   15df6:	8cd6                	mv	s9,s5
   15df8:	fffa049b          	addiw	s1,s4,-1
   15dfc:	02905d63          	blez	s1,15e36 <_svfprintf_r+0xeda>
   15e00:	6b69                	lui	s6,0x1a
   15e02:	4c41                	li	s8,16
   15e04:	2f8b0b13          	addi	s6,s6,760 # 1a2f8 <zeroes.4426>
   15e08:	4d1d                	li	s10,7
   15e0a:	10812703          	lw	a4,264(sp)
   15e0e:	016cb023          	sd	s6,0(s9)
   15e12:	67d2                	ld	a5,272(sp)
   15e14:	0017069b          	addiw	a3,a4,1
   15e18:	8736                	mv	a4,a3
   15e1a:	010c8613          	addi	a2,s9,16
   15e1e:	049c4763          	blt	s8,s1,15e6c <_svfprintf_r+0xf10>
   15e22:	009cb423          	sd	s1,8(s9)
   15e26:	94be                	add	s1,s1,a5
   15e28:	ea26                	sd	s1,272(sp)
   15e2a:	10d12423          	sw	a3,264(sp)
   15e2e:	479d                	li	a5,7
   15e30:	8cb2                	mv	s9,a2
   15e32:	e0d7c363          	blt	a5,a3,15438 <_svfprintf_r+0x4dc>
   15e36:	8811                	andi	s0,s0,4
   15e38:	60041063          	bnez	s0,16438 <_svfprintf_r+0x14dc>
   15e3c:	7702                	ld	a4,32(sp)
   15e3e:	76e2                	ld	a3,56(sp)
   15e40:	5782                	lw	a5,32(sp)
   15e42:	00d75363          	ble	a3,a4,15e48 <_svfprintf_r+0xeec>
   15e46:	57e2                	lw	a5,56(sp)
   15e48:	5722                	lw	a4,40(sp)
   15e4a:	9fb9                	addw	a5,a5,a4
   15e4c:	f43e                	sd	a5,40(sp)
   15e4e:	67d2                	ld	a5,272(sp)
   15e50:	cb81                	beqz	a5,15e60 <_svfprintf_r+0xf04>
   15e52:	0210                	addi	a2,sp,256
   15e54:	85ce                	mv	a1,s3
   15e56:	854a                	mv	a0,s2
   15e58:	33b010ef          	jal	ra,17992 <__ssprint_r>
   15e5c:	62051363          	bnez	a0,16482 <_svfprintf_r+0x1526>
   15e60:	10012423          	sw	zero,264(sp)
   15e64:	640b9963          	bnez	s7,164b6 <_svfprintf_r+0x155a>
   15e68:	8cd6                	mv	s9,s5
   15e6a:	b67d                	j	15a18 <_svfprintf_r+0xabc>
   15e6c:	07c1                	addi	a5,a5,16
   15e6e:	018cb423          	sd	s8,8(s9)
   15e72:	ea3e                	sd	a5,272(sp)
   15e74:	10e12423          	sw	a4,264(sp)
   15e78:	00dd5a63          	ble	a3,s10,15e8c <_svfprintf_r+0xf30>
   15e7c:	0210                	addi	a2,sp,256
   15e7e:	85ce                	mv	a1,s3
   15e80:	854a                	mv	a0,s2
   15e82:	311010ef          	jal	ra,17992 <__ssprint_r>
   15e86:	5e051e63          	bnez	a0,16482 <_svfprintf_r+0x1526>
   15e8a:	8656                	mv	a2,s5
   15e8c:	34c1                	addiw	s1,s1,-16
   15e8e:	8cb2                	mv	s9,a2
   15e90:	bfad                	j	15e0a <_svfprintf_r+0xeae>
   15e92:	46ee                	lw	a3,216(sp)
   15e94:	12d04163          	bgtz	a3,15fb6 <_svfprintf_r+0x105a>
   15e98:	0001a7b7          	lui	a5,0x1a
   15e9c:	d9078793          	addi	a5,a5,-624 # 19d90 <zeroes.4441+0x98>
   15ea0:	00fcb023          	sd	a5,0(s9)
   15ea4:	4785                	li	a5,1
   15ea6:	00fcb423          	sd	a5,8(s9)
   15eaa:	10812783          	lw	a5,264(sp)
   15eae:	0705                	addi	a4,a4,1
   15eb0:	ea3a                	sd	a4,272(sp)
   15eb2:	0017871b          	addiw	a4,a5,1
   15eb6:	10e12423          	sw	a4,264(sp)
   15eba:	479d                	li	a5,7
   15ebc:	0cc1                	addi	s9,s9,16
   15ebe:	00e7da63          	ble	a4,a5,15ed2 <_svfprintf_r+0xf76>
   15ec2:	0210                	addi	a2,sp,256
   15ec4:	85ce                	mv	a1,s3
   15ec6:	854a                	mv	a0,s2
   15ec8:	2cb010ef          	jal	ra,17992 <__ssprint_r>
   15ecc:	5a051b63          	bnez	a0,16482 <_svfprintf_r+0x1526>
   15ed0:	8cd6                	mv	s9,s5
   15ed2:	47ee                	lw	a5,216(sp)
   15ed4:	e791                	bnez	a5,15ee0 <_svfprintf_r+0xf84>
   15ed6:	000a1563          	bnez	s4,15ee0 <_svfprintf_r+0xf84>
   15eda:	00147793          	andi	a5,s0,1
   15ede:	dfa1                	beqz	a5,15e36 <_svfprintf_r+0xeda>
   15ee0:	67a6                	ld	a5,72(sp)
   15ee2:	6762                	ld	a4,24(sp)
   15ee4:	010c8313          	addi	t1,s9,16
   15ee8:	00fcb023          	sd	a5,0(s9)
   15eec:	67e2                	ld	a5,24(sp)
   15eee:	00fcb423          	sd	a5,8(s9)
   15ef2:	67d2                	ld	a5,272(sp)
   15ef4:	97ba                	add	a5,a5,a4
   15ef6:	ea3e                	sd	a5,272(sp)
   15ef8:	10812783          	lw	a5,264(sp)
   15efc:	0017871b          	addiw	a4,a5,1
   15f00:	10e12423          	sw	a4,264(sp)
   15f04:	479d                	li	a5,7
   15f06:	00e7da63          	ble	a4,a5,15f1a <_svfprintf_r+0xfbe>
   15f0a:	0210                	addi	a2,sp,256
   15f0c:	85ce                	mv	a1,s3
   15f0e:	854a                	mv	a0,s2
   15f10:	283010ef          	jal	ra,17992 <__ssprint_r>
   15f14:	56051763          	bnez	a0,16482 <_svfprintf_r+0x1526>
   15f18:	8356                	mv	t1,s5
   15f1a:	4b6e                	lw	s6,216(sp)
   15f1c:	040b5663          	bgez	s6,15f68 <_svfprintf_r+0x100c>
   15f20:	6c69                	lui	s8,0x1a
   15f22:	41600b3b          	negw	s6,s6
   15f26:	879a                	mv	a5,t1
   15f28:	4d41                	li	s10,16
   15f2a:	2f8c0c13          	addi	s8,s8,760 # 1a2f8 <zeroes.4426>
   15f2e:	4c9d                	li	s9,7
   15f30:	10812683          	lw	a3,264(sp)
   15f34:	0187b023          	sd	s8,0(a5)
   15f38:	6752                	ld	a4,272(sp)
   15f3a:	0016861b          	addiw	a2,a3,1
   15f3e:	86b2                	mv	a3,a2
   15f40:	0341                	addi	t1,t1,16
   15f42:	056d4763          	blt	s10,s6,15f90 <_svfprintf_r+0x1034>
   15f46:	0167b423          	sd	s6,8(a5)
   15f4a:	9b3a                	add	s6,s6,a4
   15f4c:	ea5a                	sd	s6,272(sp)
   15f4e:	10c12423          	sw	a2,264(sp)
   15f52:	479d                	li	a5,7
   15f54:	00c7da63          	ble	a2,a5,15f68 <_svfprintf_r+0x100c>
   15f58:	0210                	addi	a2,sp,256
   15f5a:	85ce                	mv	a1,s3
   15f5c:	854a                	mv	a0,s2
   15f5e:	235010ef          	jal	ra,17992 <__ssprint_r>
   15f62:	52051063          	bnez	a0,16482 <_svfprintf_r+0x1526>
   15f66:	8356                	mv	t1,s5
   15f68:	67d2                	ld	a5,272(sp)
   15f6a:	00933023          	sd	s1,0(t1)
   15f6e:	01433423          	sd	s4,8(t1)
   15f72:	97d2                	add	a5,a5,s4
   15f74:	ea3e                	sd	a5,272(sp)
   15f76:	10812783          	lw	a5,264(sp)
   15f7a:	01030c93          	addi	s9,t1,16
   15f7e:	0017871b          	addiw	a4,a5,1
   15f82:	10e12423          	sw	a4,264(sp)
   15f86:	479d                	li	a5,7
   15f88:	eae7d7e3          	ble	a4,a5,15e36 <_svfprintf_r+0xeda>
   15f8c:	cacff06f          	j	15438 <_svfprintf_r+0x4dc>
   15f90:	0741                	addi	a4,a4,16
   15f92:	01a7b423          	sd	s10,8(a5)
   15f96:	ea3a                	sd	a4,272(sp)
   15f98:	10d12423          	sw	a3,264(sp)
   15f9c:	00ccda63          	ble	a2,s9,15fb0 <_svfprintf_r+0x1054>
   15fa0:	0210                	addi	a2,sp,256
   15fa2:	85ce                	mv	a1,s3
   15fa4:	854a                	mv	a0,s2
   15fa6:	1ed010ef          	jal	ra,17992 <__ssprint_r>
   15faa:	4c051c63          	bnez	a0,16482 <_svfprintf_r+0x1526>
   15fae:	8356                	mv	t1,s5
   15fb0:	3b41                	addiw	s6,s6,-16
   15fb2:	879a                	mv	a5,t1
   15fb4:	bfb5                	j	15f30 <_svfprintf_r+0xfd4>
   15fb6:	000d0b1b          	sext.w	s6,s10
   15fba:	01aa5463          	ble	s10,s4,15fc2 <_svfprintf_r+0x1066>
   15fbe:	000a0b1b          	sext.w	s6,s4
   15fc2:	03605a63          	blez	s6,15ff6 <_svfprintf_r+0x109a>
   15fc6:	975a                	add	a4,a4,s6
   15fc8:	ea3a                	sd	a4,272(sp)
   15fca:	10812703          	lw	a4,264(sp)
   15fce:	009cb023          	sd	s1,0(s9)
   15fd2:	016cb423          	sd	s6,8(s9)
   15fd6:	0017069b          	addiw	a3,a4,1
   15fda:	10d12423          	sw	a3,264(sp)
   15fde:	471d                	li	a4,7
   15fe0:	0cc1                	addi	s9,s9,16
   15fe2:	00d75a63          	ble	a3,a4,15ff6 <_svfprintf_r+0x109a>
   15fe6:	0210                	addi	a2,sp,256
   15fe8:	85ce                	mv	a1,s3
   15fea:	854a                	mv	a0,s2
   15fec:	1a7010ef          	jal	ra,17992 <__ssprint_r>
   15ff0:	48051963          	bnez	a0,16482 <_svfprintf_r+0x1526>
   15ff4:	8cd6                	mv	s9,s5
   15ff6:	875a                	mv	a4,s6
   15ff8:	000b5363          	bgez	s6,15ffe <_svfprintf_r+0x10a2>
   15ffc:	4701                	li	a4,0
   15ffe:	40ed0b3b          	subw	s6,s10,a4
   16002:	05605563          	blez	s6,1604c <_svfprintf_r+0x10f0>
   16006:	66e9                	lui	a3,0x1a
   16008:	4841                	li	a6,16
   1600a:	2f868d93          	addi	s11,a3,760 # 1a2f8 <zeroes.4426>
   1600e:	489d                	li	a7,7
   16010:	10812603          	lw	a2,264(sp)
   16014:	01bcb023          	sd	s11,0(s9)
   16018:	6752                	ld	a4,272(sp)
   1601a:	0016059b          	addiw	a1,a2,1
   1601e:	862e                	mv	a2,a1
   16020:	010c8513          	addi	a0,s9,16
   16024:	15684263          	blt	a6,s6,16168 <_svfprintf_r+0x120c>
   16028:	016cb423          	sd	s6,8(s9)
   1602c:	9b3a                	add	s6,s6,a4
   1602e:	ea5a                	sd	s6,272(sp)
   16030:	10b12423          	sw	a1,264(sp)
   16034:	471d                	li	a4,7
   16036:	8caa                	mv	s9,a0
   16038:	00b75a63          	ble	a1,a4,1604c <_svfprintf_r+0x10f0>
   1603c:	0210                	addi	a2,sp,256
   1603e:	85ce                	mv	a1,s3
   16040:	854a                	mv	a0,s2
   16042:	151010ef          	jal	ra,17992 <__ssprint_r>
   16046:	42051e63          	bnez	a0,16482 <_svfprintf_r+0x1526>
   1604a:	8cd6                	mv	s9,s5
   1604c:	40047793          	andi	a5,s0,1024
   16050:	01a48b33          	add	s6,s1,s10
   16054:	c39d                	beqz	a5,1607a <_svfprintf_r+0x111e>
   16056:	014487b3          	add	a5,s1,s4
   1605a:	f4be                	sd	a5,104(sp)
   1605c:	67e9                	lui	a5,0x1a
   1605e:	2f878793          	addi	a5,a5,760 # 1a2f8 <zeroes.4426>
   16062:	4d9d                	li	s11,7
   16064:	8d3e                	mv	s10,a5
   16066:	67a2                	ld	a5,8(sp)
   16068:	120c1763          	bnez	s8,16196 <_svfprintf_r+0x123a>
   1606c:	12079663          	bnez	a5,16198 <_svfprintf_r+0x123c>
   16070:	014487b3          	add	a5,s1,s4
   16074:	0167f363          	bleu	s6,a5,1607a <_svfprintf_r+0x111e>
   16078:	8b3e                	mv	s6,a5
   1607a:	47ee                	lw	a5,216(sp)
   1607c:	0147c563          	blt	a5,s4,16086 <_svfprintf_r+0x112a>
   16080:	00147793          	andi	a5,s0,1
   16084:	cf8d                	beqz	a5,160be <_svfprintf_r+0x1162>
   16086:	67a6                	ld	a5,72(sp)
   16088:	6762                	ld	a4,24(sp)
   1608a:	0cc1                	addi	s9,s9,16
   1608c:	fefcb823          	sd	a5,-16(s9)
   16090:	67e2                	ld	a5,24(sp)
   16092:	fefcbc23          	sd	a5,-8(s9)
   16096:	67d2                	ld	a5,272(sp)
   16098:	97ba                	add	a5,a5,a4
   1609a:	ea3e                	sd	a5,272(sp)
   1609c:	10812783          	lw	a5,264(sp)
   160a0:	0017871b          	addiw	a4,a5,1
   160a4:	10e12423          	sw	a4,264(sp)
   160a8:	479d                	li	a5,7
   160aa:	00e7da63          	ble	a4,a5,160be <_svfprintf_r+0x1162>
   160ae:	0210                	addi	a2,sp,256
   160b0:	85ce                	mv	a1,s3
   160b2:	854a                	mv	a0,s2
   160b4:	0df010ef          	jal	ra,17992 <__ssprint_r>
   160b8:	3c051563          	bnez	a0,16482 <_svfprintf_r+0x1526>
   160bc:	8cd6                	mv	s9,s5
   160be:	4c6e                	lw	s8,216(sp)
   160c0:	94d2                	add	s1,s1,s4
   160c2:	416484bb          	subw	s1,s1,s6
   160c6:	418a07bb          	subw	a5,s4,s8
   160ca:	8c3e                	mv	s8,a5
   160cc:	00f4d463          	ble	a5,s1,160d4 <_svfprintf_r+0x1178>
   160d0:	00048c1b          	sext.w	s8,s1
   160d4:	03805b63          	blez	s8,1610a <_svfprintf_r+0x11ae>
   160d8:	67d2                	ld	a5,272(sp)
   160da:	016cb023          	sd	s6,0(s9)
   160de:	018cb423          	sd	s8,8(s9)
   160e2:	97e2                	add	a5,a5,s8
   160e4:	ea3e                	sd	a5,272(sp)
   160e6:	10812783          	lw	a5,264(sp)
   160ea:	0cc1                	addi	s9,s9,16
   160ec:	0017871b          	addiw	a4,a5,1
   160f0:	10e12423          	sw	a4,264(sp)
   160f4:	479d                	li	a5,7
   160f6:	00e7da63          	ble	a4,a5,1610a <_svfprintf_r+0x11ae>
   160fa:	0210                	addi	a2,sp,256
   160fc:	85ce                	mv	a1,s3
   160fe:	854a                	mv	a0,s2
   16100:	093010ef          	jal	ra,17992 <__ssprint_r>
   16104:	36051f63          	bnez	a0,16482 <_svfprintf_r+0x1526>
   16108:	8cd6                	mv	s9,s5
   1610a:	87e2                	mv	a5,s8
   1610c:	000c5363          	bgez	s8,16112 <_svfprintf_r+0x11b6>
   16110:	4781                	li	a5,0
   16112:	44ee                	lw	s1,216(sp)
   16114:	409a04bb          	subw	s1,s4,s1
   16118:	9c9d                	subw	s1,s1,a5
   1611a:	d0905ee3          	blez	s1,15e36 <_svfprintf_r+0xeda>
   1611e:	6b69                	lui	s6,0x1a
   16120:	4c41                	li	s8,16
   16122:	2f8b0b13          	addi	s6,s6,760 # 1a2f8 <zeroes.4426>
   16126:	4d1d                	li	s10,7
   16128:	10812703          	lw	a4,264(sp)
   1612c:	016cb023          	sd	s6,0(s9)
   16130:	67d2                	ld	a5,272(sp)
   16132:	0017069b          	addiw	a3,a4,1
   16136:	8736                	mv	a4,a3
   16138:	010c8613          	addi	a2,s9,16
   1613c:	169c4f63          	blt	s8,s1,162ba <_svfprintf_r+0x135e>
   16140:	009cb423          	sd	s1,8(s9)
   16144:	94be                	add	s1,s1,a5
   16146:	ea26                	sd	s1,272(sp)
   16148:	10d12423          	sw	a3,264(sp)
   1614c:	479d                	li	a5,7
   1614e:	8cb2                	mv	s9,a2
   16150:	ced7d3e3          	ble	a3,a5,15e36 <_svfprintf_r+0xeda>
   16154:	0210                	addi	a2,sp,256
   16156:	85ce                	mv	a1,s3
   16158:	854a                	mv	a0,s2
   1615a:	039010ef          	jal	ra,17992 <__ssprint_r>
   1615e:	32051263          	bnez	a0,16482 <_svfprintf_r+0x1526>
   16162:	18010c93          	addi	s9,sp,384
   16166:	b9c1                	j	15e36 <_svfprintf_r+0xeda>
   16168:	0741                	addi	a4,a4,16
   1616a:	010cb423          	sd	a6,8(s9)
   1616e:	ea3a                	sd	a4,272(sp)
   16170:	10c12423          	sw	a2,264(sp)
   16174:	00b8de63          	ble	a1,a7,16190 <_svfprintf_r+0x1234>
   16178:	0210                	addi	a2,sp,256
   1617a:	85ce                	mv	a1,s3
   1617c:	854a                	mv	a0,s2
   1617e:	f8c6                	sd	a7,112(sp)
   16180:	f4c2                	sd	a6,104(sp)
   16182:	011010ef          	jal	ra,17992 <__ssprint_r>
   16186:	2e051e63          	bnez	a0,16482 <_svfprintf_r+0x1526>
   1618a:	78c6                	ld	a7,112(sp)
   1618c:	7826                	ld	a6,104(sp)
   1618e:	8556                	mv	a0,s5
   16190:	3b41                	addiw	s6,s6,-16
   16192:	8caa                	mv	s9,a0
   16194:	bdb5                	j	16010 <_svfprintf_r+0x10b4>
   16196:	c7d5                	beqz	a5,16242 <_svfprintf_r+0x12e6>
   16198:	47a2                	lw	a5,8(sp)
   1619a:	37fd                	addiw	a5,a5,-1
   1619c:	e43e                	sd	a5,8(sp)
   1619e:	67c6                	ld	a5,80(sp)
   161a0:	6706                	ld	a4,64(sp)
   161a2:	0cc1                	addi	s9,s9,16
   161a4:	fefcb823          	sd	a5,-16(s9)
   161a8:	6786                	ld	a5,64(sp)
   161aa:	fefcbc23          	sd	a5,-8(s9)
   161ae:	67d2                	ld	a5,272(sp)
   161b0:	97ba                	add	a5,a5,a4
   161b2:	ea3e                	sd	a5,272(sp)
   161b4:	10812783          	lw	a5,264(sp)
   161b8:	0017871b          	addiw	a4,a5,1
   161bc:	10e12423          	sw	a4,264(sp)
   161c0:	00edda63          	ble	a4,s11,161d4 <_svfprintf_r+0x1278>
   161c4:	0210                	addi	a2,sp,256
   161c6:	85ce                	mv	a1,s3
   161c8:	854a                	mv	a0,s2
   161ca:	7c8010ef          	jal	ra,17992 <__ssprint_r>
   161ce:	2a051a63          	bnez	a0,16482 <_svfprintf_r+0x1526>
   161d2:	8cd6                	mv	s9,s5
   161d4:	6702                	ld	a4,0(sp)
   161d6:	57a6                	lw	a5,104(sp)
   161d8:	00074703          	lbu	a4,0(a4)
   161dc:	416787bb          	subw	a5,a5,s6
   161e0:	00e7d463          	ble	a4,a5,161e8 <_svfprintf_r+0x128c>
   161e4:	0007871b          	sext.w	a4,a5
   161e8:	02e05d63          	blez	a4,16222 <_svfprintf_r+0x12c6>
   161ec:	67d2                	ld	a5,272(sp)
   161ee:	016cb023          	sd	s6,0(s9)
   161f2:	00ecb423          	sd	a4,8(s9)
   161f6:	97ba                	add	a5,a5,a4
   161f8:	ea3e                	sd	a5,272(sp)
   161fa:	10812783          	lw	a5,264(sp)
   161fe:	0cc1                	addi	s9,s9,16
   16200:	0017869b          	addiw	a3,a5,1
   16204:	10d12423          	sw	a3,264(sp)
   16208:	00dddd63          	ble	a3,s11,16222 <_svfprintf_r+0x12c6>
   1620c:	0210                	addi	a2,sp,256
   1620e:	85ce                	mv	a1,s3
   16210:	854a                	mv	a0,s2
   16212:	f8ba                	sd	a4,112(sp)
   16214:	77e010ef          	jal	ra,17992 <__ssprint_r>
   16218:	26051563          	bnez	a0,16482 <_svfprintf_r+0x1526>
   1621c:	7746                	ld	a4,112(sp)
   1621e:	18010c93          	addi	s9,sp,384
   16222:	86ba                	mv	a3,a4
   16224:	00075363          	bgez	a4,1622a <_svfprintf_r+0x12ce>
   16228:	4681                	li	a3,0
   1622a:	6782                	ld	a5,0(sp)
   1622c:	4841                	li	a6,16
   1622e:	0007c783          	lbu	a5,0(a5)
   16232:	9f95                	subw	a5,a5,a3
   16234:	04f04463          	bgtz	a5,1627c <_svfprintf_r+0x1320>
   16238:	6782                	ld	a5,0(sp)
   1623a:	0007c783          	lbu	a5,0(a5)
   1623e:	9b3e                	add	s6,s6,a5
   16240:	b51d                	j	16066 <_svfprintf_r+0x110a>
   16242:	6782                	ld	a5,0(sp)
   16244:	3c7d                	addiw	s8,s8,-1
   16246:	17fd                	addi	a5,a5,-1
   16248:	e03e                	sd	a5,0(sp)
   1624a:	bf91                	j	1619e <_svfprintf_r+0x1242>
   1624c:	0741                	addi	a4,a4,16
   1624e:	01acb023          	sd	s10,0(s9)
   16252:	010cb423          	sd	a6,8(s9)
   16256:	ea3a                	sd	a4,272(sp)
   16258:	10d12423          	sw	a3,264(sp)
   1625c:	00cdde63          	ble	a2,s11,16278 <_svfprintf_r+0x131c>
   16260:	0210                	addi	a2,sp,256
   16262:	85ce                	mv	a1,s3
   16264:	854a                	mv	a0,s2
   16266:	fcc2                	sd	a6,120(sp)
   16268:	f8be                	sd	a5,112(sp)
   1626a:	728010ef          	jal	ra,17992 <__ssprint_r>
   1626e:	20051a63          	bnez	a0,16482 <_svfprintf_r+0x1526>
   16272:	7866                	ld	a6,120(sp)
   16274:	77c6                	ld	a5,112(sp)
   16276:	030c                	addi	a1,sp,384
   16278:	37c1                	addiw	a5,a5,-16
   1627a:	8cae                	mv	s9,a1
   1627c:	10812683          	lw	a3,264(sp)
   16280:	6752                	ld	a4,272(sp)
   16282:	010c8593          	addi	a1,s9,16
   16286:	0016861b          	addiw	a2,a3,1
   1628a:	86b2                	mv	a3,a2
   1628c:	fcf840e3          	blt	a6,a5,1624c <_svfprintf_r+0x12f0>
   16290:	00fcb423          	sd	a5,8(s9)
   16294:	97ba                	add	a5,a5,a4
   16296:	01acb023          	sd	s10,0(s9)
   1629a:	ea3e                	sd	a5,272(sp)
   1629c:	10c12423          	sw	a2,264(sp)
   162a0:	8cae                	mv	s9,a1
   162a2:	f8cddbe3          	ble	a2,s11,16238 <_svfprintf_r+0x12dc>
   162a6:	0210                	addi	a2,sp,256
   162a8:	85ce                	mv	a1,s3
   162aa:	854a                	mv	a0,s2
   162ac:	6e6010ef          	jal	ra,17992 <__ssprint_r>
   162b0:	1c051963          	bnez	a0,16482 <_svfprintf_r+0x1526>
   162b4:	18010c93          	addi	s9,sp,384
   162b8:	b741                	j	16238 <_svfprintf_r+0x12dc>
   162ba:	07c1                	addi	a5,a5,16
   162bc:	018cb423          	sd	s8,8(s9)
   162c0:	ea3e                	sd	a5,272(sp)
   162c2:	10e12423          	sw	a4,264(sp)
   162c6:	00dd5a63          	ble	a3,s10,162da <_svfprintf_r+0x137e>
   162ca:	0210                	addi	a2,sp,256
   162cc:	85ce                	mv	a1,s3
   162ce:	854a                	mv	a0,s2
   162d0:	6c2010ef          	jal	ra,17992 <__ssprint_r>
   162d4:	1a051763          	bnez	a0,16482 <_svfprintf_r+0x1526>
   162d8:	0310                	addi	a2,sp,384
   162da:	34c1                	addiw	s1,s1,-16
   162dc:	8cb2                	mv	s9,a2
   162de:	b5a9                	j	16128 <_svfprintf_r+0x11cc>
   162e0:	10812783          	lw	a5,264(sp)
   162e4:	4605                	li	a2,1
   162e6:	009cb023          	sd	s1,0(s9)
   162ea:	0017869b          	addiw	a3,a5,1
   162ee:	0705                	addi	a4,a4,1
   162f0:	87b6                	mv	a5,a3
   162f2:	010c8c13          	addi	s8,s9,16
   162f6:	01464663          	blt	a2,s4,16302 <_svfprintf_r+0x13a6>
   162fa:	00147593          	andi	a1,s0,1
   162fe:	12058663          	beqz	a1,1642a <_svfprintf_r+0x14ce>
   16302:	4605                	li	a2,1
   16304:	10f12423          	sw	a5,264(sp)
   16308:	00ccb423          	sd	a2,8(s9)
   1630c:	ea3a                	sd	a4,272(sp)
   1630e:	479d                	li	a5,7
   16310:	00d7da63          	ble	a3,a5,16324 <_svfprintf_r+0x13c8>
   16314:	0210                	addi	a2,sp,256
   16316:	85ce                	mv	a1,s3
   16318:	854a                	mv	a0,s2
   1631a:	678010ef          	jal	ra,17992 <__ssprint_r>
   1631e:	16051263          	bnez	a0,16482 <_svfprintf_r+0x1526>
   16322:	8c56                	mv	s8,s5
   16324:	67a6                	ld	a5,72(sp)
   16326:	6762                	ld	a4,24(sp)
   16328:	0c41                	addi	s8,s8,16
   1632a:	fefc3823          	sd	a5,-16(s8)
   1632e:	67e2                	ld	a5,24(sp)
   16330:	fefc3c23          	sd	a5,-8(s8)
   16334:	67d2                	ld	a5,272(sp)
   16336:	97ba                	add	a5,a5,a4
   16338:	ea3e                	sd	a5,272(sp)
   1633a:	10812783          	lw	a5,264(sp)
   1633e:	0017871b          	addiw	a4,a5,1
   16342:	10e12423          	sw	a4,264(sp)
   16346:	479d                	li	a5,7
   16348:	00e7da63          	ble	a4,a5,1635c <_svfprintf_r+0x1400>
   1634c:	0210                	addi	a2,sp,256
   1634e:	85ce                	mv	a1,s3
   16350:	854a                	mv	a0,s2
   16352:	640010ef          	jal	ra,17992 <__ssprint_r>
   16356:	12051663          	bnez	a0,16482 <_svfprintf_r+0x1526>
   1635a:	8c56                	mv	s8,s5
   1635c:	754e                	ld	a0,240(sp)
   1635e:	75ee                	ld	a1,248(sp)
   16360:	4601                	li	a2,0
   16362:	4681                	li	a3,0
   16364:	fffa0b1b          	addiw	s6,s4,-1
   16368:	2e0020ef          	jal	ra,18648 <__eqtf2>
   1636c:	c12d                	beqz	a0,163ce <_svfprintf_r+0x1472>
   1636e:	10812703          	lw	a4,264(sp)
   16372:	67d2                	ld	a5,272(sp)
   16374:	0485                	addi	s1,s1,1
   16376:	0017069b          	addiw	a3,a4,1
   1637a:	97da                	add	a5,a5,s6
   1637c:	009c3023          	sd	s1,0(s8)
   16380:	016c3423          	sd	s6,8(s8)
   16384:	ea3e                	sd	a5,272(sp)
   16386:	10d12423          	sw	a3,264(sp)
   1638a:	479d                	li	a5,7
   1638c:	0c41                	addi	s8,s8,16
   1638e:	00d7d963          	ble	a3,a5,163a0 <_svfprintf_r+0x1444>
   16392:	0210                	addi	a2,sp,256
   16394:	85ce                	mv	a1,s3
   16396:	854a                	mv	a0,s2
   16398:	5fa010ef          	jal	ra,17992 <__ssprint_r>
   1639c:	e17d                	bnez	a0,16482 <_svfprintf_r+0x1526>
   1639e:	8c56                	mv	s8,s5
   163a0:	119c                	addi	a5,sp,224
   163a2:	00fc3023          	sd	a5,0(s8)
   163a6:	67e6                	ld	a5,88(sp)
   163a8:	6766                	ld	a4,88(sp)
   163aa:	010c0c93          	addi	s9,s8,16
   163ae:	00fc3423          	sd	a5,8(s8)
   163b2:	67d2                	ld	a5,272(sp)
   163b4:	97ba                	add	a5,a5,a4
   163b6:	ea3e                	sd	a5,272(sp)
   163b8:	10812783          	lw	a5,264(sp)
   163bc:	0017871b          	addiw	a4,a5,1
   163c0:	10e12423          	sw	a4,264(sp)
   163c4:	479d                	li	a5,7
   163c6:	a6e7d8e3          	ble	a4,a5,15e36 <_svfprintf_r+0xeda>
   163ca:	86eff06f          	j	15438 <_svfprintf_r+0x4dc>
   163ce:	fd6059e3          	blez	s6,163a0 <_svfprintf_r+0x1444>
   163d2:	64e9                	lui	s1,0x1a
   163d4:	4d41                	li	s10,16
   163d6:	2f848493          	addi	s1,s1,760 # 1a2f8 <zeroes.4426>
   163da:	4c9d                	li	s9,7
   163dc:	10812703          	lw	a4,264(sp)
   163e0:	009c3023          	sd	s1,0(s8)
   163e4:	67d2                	ld	a5,272(sp)
   163e6:	0017069b          	addiw	a3,a4,1
   163ea:	8736                	mv	a4,a3
   163ec:	010c0613          	addi	a2,s8,16
   163f0:	016d4b63          	blt	s10,s6,16406 <_svfprintf_r+0x14aa>
   163f4:	97da                	add	a5,a5,s6
   163f6:	016c3423          	sd	s6,8(s8)
   163fa:	ea3e                	sd	a5,272(sp)
   163fc:	10d12423          	sw	a3,264(sp)
   16400:	479d                	li	a5,7
   16402:	8c32                	mv	s8,a2
   16404:	b769                	j	1638e <_svfprintf_r+0x1432>
   16406:	07c1                	addi	a5,a5,16
   16408:	01ac3423          	sd	s10,8(s8)
   1640c:	ea3e                	sd	a5,272(sp)
   1640e:	10e12423          	sw	a4,264(sp)
   16412:	00dcd963          	ble	a3,s9,16424 <_svfprintf_r+0x14c8>
   16416:	0210                	addi	a2,sp,256
   16418:	85ce                	mv	a1,s3
   1641a:	854a                	mv	a0,s2
   1641c:	576010ef          	jal	ra,17992 <__ssprint_r>
   16420:	e12d                	bnez	a0,16482 <_svfprintf_r+0x1526>
   16422:	8656                	mv	a2,s5
   16424:	3b41                	addiw	s6,s6,-16
   16426:	8c32                	mv	s8,a2
   16428:	bf55                	j	163dc <_svfprintf_r+0x1480>
   1642a:	00ccb423          	sd	a2,8(s9)
   1642e:	ea3a                	sd	a4,272(sp)
   16430:	10d12423          	sw	a3,264(sp)
   16434:	479d                	li	a5,7
   16436:	bfa1                	j	1638e <_svfprintf_r+0x1432>
   16438:	5782                	lw	a5,32(sp)
   1643a:	5762                	lw	a4,56(sp)
   1643c:	40e7843b          	subw	s0,a5,a4
   16440:	9e805ee3          	blez	s0,15e3c <_svfprintf_r+0xee0>
   16444:	64e9                	lui	s1,0x1a
   16446:	4b41                	li	s6,16
   16448:	2e848493          	addi	s1,s1,744 # 1a2e8 <blanks.4425>
   1644c:	4c1d                	li	s8,7
   1644e:	10812703          	lw	a4,264(sp)
   16452:	009cb023          	sd	s1,0(s9)
   16456:	67d2                	ld	a5,272(sp)
   16458:	0017069b          	addiw	a3,a4,1
   1645c:	8736                	mv	a4,a3
   1645e:	028b4a63          	blt	s6,s0,16492 <_svfprintf_r+0x1536>
   16462:	008cb423          	sd	s0,8(s9)
   16466:	943e                	add	s0,s0,a5
   16468:	ea22                	sd	s0,272(sp)
   1646a:	10d12423          	sw	a3,264(sp)
   1646e:	479d                	li	a5,7
   16470:	9cd7d6e3          	ble	a3,a5,15e3c <_svfprintf_r+0xee0>
   16474:	0210                	addi	a2,sp,256
   16476:	85ce                	mv	a1,s3
   16478:	854a                	mv	a0,s2
   1647a:	518010ef          	jal	ra,17992 <__ssprint_r>
   1647e:	9a050fe3          	beqz	a0,15e3c <_svfprintf_r+0xee0>
   16482:	920b8963          	beqz	s7,155b4 <_svfprintf_r+0x658>
   16486:	85de                	mv	a1,s7
   16488:	854a                	mv	a0,s2
   1648a:	944fc0ef          	jal	ra,125ce <_free_r>
   1648e:	926ff06f          	j	155b4 <_svfprintf_r+0x658>
   16492:	07c1                	addi	a5,a5,16
   16494:	016cb423          	sd	s6,8(s9)
   16498:	ea3e                	sd	a5,272(sp)
   1649a:	10e12423          	sw	a4,264(sp)
   1649e:	0cc1                	addi	s9,s9,16
   164a0:	00dc5963          	ble	a3,s8,164b2 <_svfprintf_r+0x1556>
   164a4:	0210                	addi	a2,sp,256
   164a6:	85ce                	mv	a1,s3
   164a8:	854a                	mv	a0,s2
   164aa:	4e8010ef          	jal	ra,17992 <__ssprint_r>
   164ae:	f971                	bnez	a0,16482 <_svfprintf_r+0x1526>
   164b0:	8cd6                	mv	s9,s5
   164b2:	3441                	addiw	s0,s0,-16
   164b4:	bf69                	j	1644e <_svfprintf_r+0x14f2>
   164b6:	85de                	mv	a1,s7
   164b8:	854a                	mv	a0,s2
   164ba:	914fc0ef          	jal	ra,125ce <_free_r>
   164be:	b26d                	j	15e68 <_svfprintf_r+0xf0c>
   164c0:	67d2                	ld	a5,272(sp)
   164c2:	8e078963          	beqz	a5,155b4 <_svfprintf_r+0x658>
   164c6:	0210                	addi	a2,sp,256
   164c8:	85ce                	mv	a1,s3
   164ca:	854a                	mv	a0,s2
   164cc:	4c6010ef          	jal	ra,17992 <__ssprint_r>
   164d0:	8e4ff06f          	j	155b4 <_svfprintf_r+0x658>

00000000000164d4 <__sprint_r>:
   164d4:	6a1c                	ld	a5,16(a2)
   164d6:	715d                	addi	sp,sp,-80
   164d8:	e0a2                	sd	s0,64(sp)
   164da:	e486                	sd	ra,72(sp)
   164dc:	fc26                	sd	s1,56(sp)
   164de:	f84a                	sd	s2,48(sp)
   164e0:	f44e                	sd	s3,40(sp)
   164e2:	f052                	sd	s4,32(sp)
   164e4:	ec56                	sd	s5,24(sp)
   164e6:	e85a                	sd	s6,16(sp)
   164e8:	e45e                	sd	s7,8(sp)
   164ea:	8432                	mv	s0,a2
   164ec:	ef99                	bnez	a5,1650a <__sprint_r+0x36>
   164ee:	00062423          	sw	zero,8(a2)
   164f2:	4501                	li	a0,0
   164f4:	60a6                	ld	ra,72(sp)
   164f6:	6406                	ld	s0,64(sp)
   164f8:	74e2                	ld	s1,56(sp)
   164fa:	7942                	ld	s2,48(sp)
   164fc:	79a2                	ld	s3,40(sp)
   164fe:	7a02                	ld	s4,32(sp)
   16500:	6ae2                	ld	s5,24(sp)
   16502:	6b42                	ld	s6,16(sp)
   16504:	6ba2                	ld	s7,8(sp)
   16506:	6161                	addi	sp,sp,80
   16508:	8082                	ret
   1650a:	0ac5a783          	lw	a5,172(a1)
   1650e:	89ae                	mv	s3,a1
   16510:	03279713          	slli	a4,a5,0x32
   16514:	04075a63          	bgez	a4,16568 <__sprint_r+0x94>
   16518:	00063903          	ld	s2,0(a2)
   1651c:	8a2a                	mv	s4,a0
   1651e:	5bfd                	li	s7,-1
   16520:	681c                	ld	a5,16(s0)
   16522:	e799                	bnez	a5,16530 <__sprint_r+0x5c>
   16524:	4501                	li	a0,0
   16526:	00043823          	sd	zero,16(s0)
   1652a:	00042423          	sw	zero,8(s0)
   1652e:	b7d9                	j	164f4 <__sprint_r+0x20>
   16530:	00893483          	ld	s1,8(s2)
   16534:	00093b03          	ld	s6,0(s2)
   16538:	4a81                	li	s5,0
   1653a:	8089                	srli	s1,s1,0x2
   1653c:	2481                	sext.w	s1,s1
   1653e:	009ac963          	blt	s5,s1,16550 <__sprint_r+0x7c>
   16542:	681c                	ld	a5,16(s0)
   16544:	048a                	slli	s1,s1,0x2
   16546:	0941                	addi	s2,s2,16
   16548:	409784b3          	sub	s1,a5,s1
   1654c:	e804                	sd	s1,16(s0)
   1654e:	bfc9                	j	16520 <__sprint_r+0x4c>
   16550:	000b2583          	lw	a1,0(s6)
   16554:	864e                	mv	a2,s3
   16556:	8552                	mv	a0,s4
   16558:	37d000ef          	jal	ra,170d4 <_fputwc_r>
   1655c:	2501                	sext.w	a0,a0
   1655e:	0b11                	addi	s6,s6,4
   16560:	01750763          	beq	a0,s7,1656e <__sprint_r+0x9a>
   16564:	2a85                	addiw	s5,s5,1
   16566:	bfe1                	j	1653e <__sprint_r+0x6a>
   16568:	3ef000ef          	jal	ra,17156 <__sfvwrite_r>
   1656c:	bf6d                	j	16526 <__sprint_r+0x52>
   1656e:	557d                	li	a0,-1
   16570:	bf5d                	j	16526 <__sprint_r+0x52>

0000000000016572 <_vfiprintf_r>:
   16572:	7141                	addi	sp,sp,-496
   16574:	efa6                	sd	s1,472(sp)
   16576:	ebca                	sd	s2,464(sp)
   16578:	e7ce                	sd	s3,456(sp)
   1657a:	e3d2                	sd	s4,448(sp)
   1657c:	f786                	sd	ra,488(sp)
   1657e:	f3a2                	sd	s0,480(sp)
   16580:	ff56                	sd	s5,440(sp)
   16582:	fb5a                	sd	s6,432(sp)
   16584:	f75e                	sd	s7,424(sp)
   16586:	f362                	sd	s8,416(sp)
   16588:	ef66                	sd	s9,408(sp)
   1658a:	eb6a                	sd	s10,400(sp)
   1658c:	e76e                	sd	s11,392(sp)
   1658e:	892a                	mv	s2,a0
   16590:	84ae                	mv	s1,a1
   16592:	89b2                	mv	s3,a2
   16594:	8a36                	mv	s4,a3
   16596:	c509                	beqz	a0,165a0 <_vfiprintf_r+0x2e>
   16598:	493c                	lw	a5,80(a0)
   1659a:	e399                	bnez	a5,165a0 <_vfiprintf_r+0x2e>
   1659c:	e63fb0ef          	jal	ra,123fe <__sinit>
   165a0:	01049783          	lh	a5,16(s1)
   165a4:	03279713          	slli	a4,a5,0x32
   165a8:	00074d63          	bltz	a4,165c2 <_vfiprintf_r+0x50>
   165ac:	6689                	lui	a3,0x2
   165ae:	0ac4a703          	lw	a4,172(s1)
   165b2:	8fd5                	or	a5,a5,a3
   165b4:	00f49823          	sh	a5,16(s1)
   165b8:	77f9                	lui	a5,0xffffe
   165ba:	17fd                	addi	a5,a5,-1
   165bc:	8ff9                	and	a5,a5,a4
   165be:	0af4a623          	sw	a5,172(s1)
   165c2:	0104d783          	lhu	a5,16(s1)
   165c6:	8ba1                	andi	a5,a5,8
   165c8:	c7a1                	beqz	a5,16610 <_vfiprintf_r+0x9e>
   165ca:	6c9c                	ld	a5,24(s1)
   165cc:	c3b1                	beqz	a5,16610 <_vfiprintf_r+0x9e>
   165ce:	0104d783          	lhu	a5,16(s1)
   165d2:	4729                	li	a4,10
   165d4:	8be9                	andi	a5,a5,26
   165d6:	04e79463          	bne	a5,a4,1661e <_vfiprintf_r+0xac>
   165da:	01249783          	lh	a5,18(s1)
   165de:	0407c063          	bltz	a5,1661e <_vfiprintf_r+0xac>
   165e2:	86d2                	mv	a3,s4
   165e4:	864e                	mv	a2,s3
   165e6:	85a6                	mv	a1,s1
   165e8:	854a                	mv	a0,s2
   165ea:	001000ef          	jal	ra,16dea <__sbprintf>
   165ee:	8baa                	mv	s7,a0
   165f0:	70be                	ld	ra,488(sp)
   165f2:	741e                	ld	s0,480(sp)
   165f4:	855e                	mv	a0,s7
   165f6:	64fe                	ld	s1,472(sp)
   165f8:	695e                	ld	s2,464(sp)
   165fa:	69be                	ld	s3,456(sp)
   165fc:	6a1e                	ld	s4,448(sp)
   165fe:	7afa                	ld	s5,440(sp)
   16600:	7b5a                	ld	s6,432(sp)
   16602:	7bba                	ld	s7,424(sp)
   16604:	7c1a                	ld	s8,416(sp)
   16606:	6cfa                	ld	s9,408(sp)
   16608:	6d5a                	ld	s10,400(sp)
   1660a:	6dba                	ld	s11,392(sp)
   1660c:	617d                	addi	sp,sp,496
   1660e:	8082                	ret
   16610:	85a6                	mv	a1,s1
   16612:	854a                	mv	a0,s2
   16614:	985fb0ef          	jal	ra,11f98 <__swsetup_r>
   16618:	d95d                	beqz	a0,165ce <_vfiprintf_r+0x5c>
   1661a:	5bfd                	li	s7,-1
   1661c:	bfd1                	j	165f0 <_vfiprintf_r+0x7e>
   1661e:	67e9                	lui	a5,0x1a
   16620:	30878793          	addi	a5,a5,776 # 1a308 <zeroes.4426+0x10>
   16624:	e8be                	sd	a5,80(sp)
   16626:	67e9                	lui	a5,0x1a
   16628:	48878793          	addi	a5,a5,1160 # 1a488 <zeroes.4417>
   1662c:	f43e                	sd	a5,40(sp)
   1662e:	67e9                	lui	a5,0x1a
   16630:	10010b13          	addi	s6,sp,256
   16634:	47878793          	addi	a5,a5,1144 # 1a478 <blanks.4416>
   16638:	e15a                	sd	s6,128(sp)
   1663a:	e902                	sd	zero,144(sp)
   1663c:	c502                	sw	zero,136(sp)
   1663e:	8dda                	mv	s11,s6
   16640:	f002                	sd	zero,32(sp)
   16642:	e802                	sd	zero,16(sp)
   16644:	ec02                	sd	zero,24(sp)
   16646:	fc02                	sd	zero,56(sp)
   16648:	4b81                	li	s7,0
   1664a:	f83e                	sd	a5,48(sp)
   1664c:	844e                	mv	s0,s3
   1664e:	02500693          	li	a3,37
   16652:	00044783          	lbu	a5,0(s0)
   16656:	c399                	beqz	a5,1665c <_vfiprintf_r+0xea>
   16658:	06d79e63          	bne	a5,a3,166d4 <_vfiprintf_r+0x162>
   1665c:	41340abb          	subw	s5,s0,s3
   16660:	020a8b63          	beqz	s5,16696 <_vfiprintf_r+0x124>
   16664:	67ca                	ld	a5,144(sp)
   16666:	013db023          	sd	s3,0(s11)
   1666a:	015db423          	sd	s5,8(s11)
   1666e:	97d6                	add	a5,a5,s5
   16670:	e93e                	sd	a5,144(sp)
   16672:	47aa                	lw	a5,136(sp)
   16674:	0dc1                	addi	s11,s11,16
   16676:	0017869b          	addiw	a3,a5,1
   1667a:	c536                	sw	a3,136(sp)
   1667c:	479d                	li	a5,7
   1667e:	00d7da63          	ble	a3,a5,16692 <_vfiprintf_r+0x120>
   16682:	0110                	addi	a2,sp,128
   16684:	85a6                	mv	a1,s1
   16686:	854a                	mv	a0,s2
   16688:	e4dff0ef          	jal	ra,164d4 <__sprint_r>
   1668c:	70051663          	bnez	a0,16d98 <_vfiprintf_r+0x826>
   16690:	8dda                	mv	s11,s6
   16692:	015b8bbb          	addw	s7,s7,s5
   16696:	00044783          	lbu	a5,0(s0)
   1669a:	72078963          	beqz	a5,16dcc <_vfiprintf_r+0x85a>
   1669e:	00140693          	addi	a3,s0,1
   166a2:	06010ba3          	sb	zero,119(sp)
   166a6:	547d                	li	s0,-1
   166a8:	4a81                	li	s5,0
   166aa:	4d01                	li	s10,0
   166ac:	05a00c93          	li	s9,90
   166b0:	4c29                	li	s8,10
   166b2:	00168993          	addi	s3,a3,1 # 2001 <main-0xe0af>
   166b6:	0006c683          	lbu	a3,0(a3)
   166ba:	4525                	li	a0,9
   166bc:	02a00813          	li	a6,42
   166c0:	fe06861b          	addiw	a2,a3,-32
   166c4:	60cce263          	bltu	s9,a2,16cc8 <_vfiprintf_r+0x756>
   166c8:	67c6                	ld	a5,80(sp)
   166ca:	1602                	slli	a2,a2,0x20
   166cc:	8279                	srli	a2,a2,0x1e
   166ce:	963e                	add	a2,a2,a5
   166d0:	4210                	lw	a2,0(a2)
   166d2:	8602                	jr	a2
   166d4:	0405                	addi	s0,s0,1
   166d6:	bfb5                	j	16652 <_vfiprintf_r+0xe0>
   166d8:	0001a637          	lui	a2,0x1a
   166dc:	d7860793          	addi	a5,a2,-648 # 19d78 <zeroes.4441+0x80>
   166e0:	f03e                	sd	a5,32(sp)
   166e2:	008a0793          	addi	a5,s4,8
   166e6:	e43e                	sd	a5,8(sp)
   166e8:	020d7613          	andi	a2,s10,32
   166ec:	4e060663          	beqz	a2,16bd8 <_vfiprintf_r+0x666>
   166f0:	000a3a03          	ld	s4,0(s4)
   166f4:	001d7613          	andi	a2,s10,1
   166f8:	ca19                	beqz	a2,1670e <_vfiprintf_r+0x19c>
   166fa:	000a0a63          	beqz	s4,1670e <_vfiprintf_r+0x19c>
   166fe:	03000613          	li	a2,48
   16702:	06c10c23          	sb	a2,120(sp)
   16706:	06d10ca3          	sb	a3,121(sp)
   1670a:	002d6d13          	ori	s10,s10,2
   1670e:	bffd7d13          	andi	s10,s10,-1025
   16712:	a4ad                	j	1697c <_vfiprintf_r+0x40a>
   16714:	854a                	mv	a0,s2
   16716:	849fd0ef          	jal	ra,13f5e <_localeconv_r>
   1671a:	651c                	ld	a5,8(a0)
   1671c:	853e                	mv	a0,a5
   1671e:	fc3e                	sd	a5,56(sp)
   16720:	ffafe0ef          	jal	ra,14f1a <strlen>
   16724:	ec2a                	sd	a0,24(sp)
   16726:	854a                	mv	a0,s2
   16728:	837fd0ef          	jal	ra,13f5e <_localeconv_r>
   1672c:	691c                	ld	a5,16(a0)
   1672e:	e83e                	sd	a5,16(sp)
   16730:	67e2                	ld	a5,24(sp)
   16732:	cb81                	beqz	a5,16742 <_vfiprintf_r+0x1d0>
   16734:	67c2                	ld	a5,16(sp)
   16736:	c791                	beqz	a5,16742 <_vfiprintf_r+0x1d0>
   16738:	0007c683          	lbu	a3,0(a5)
   1673c:	c299                	beqz	a3,16742 <_vfiprintf_r+0x1d0>
   1673e:	400d6d13          	ori	s10,s10,1024
   16742:	86ce                	mv	a3,s3
   16744:	b7bd                	j	166b2 <_vfiprintf_r+0x140>
   16746:	07714683          	lbu	a3,119(sp)
   1674a:	fee5                	bnez	a3,16742 <_vfiprintf_r+0x1d0>
   1674c:	02000693          	li	a3,32
   16750:	06d10ba3          	sb	a3,119(sp)
   16754:	b7fd                	j	16742 <_vfiprintf_r+0x1d0>
   16756:	001d6d13          	ori	s10,s10,1
   1675a:	b7e5                	j	16742 <_vfiprintf_r+0x1d0>
   1675c:	000a2a83          	lw	s5,0(s4)
   16760:	0a21                	addi	s4,s4,8
   16762:	fe0ad0e3          	bgez	s5,16742 <_vfiprintf_r+0x1d0>
   16766:	41500abb          	negw	s5,s5
   1676a:	004d6d13          	ori	s10,s10,4
   1676e:	bfd1                	j	16742 <_vfiprintf_r+0x1d0>
   16770:	02b00693          	li	a3,43
   16774:	bff1                	j	16750 <_vfiprintf_r+0x1de>
   16776:	0009c683          	lbu	a3,0(s3)
   1677a:	00198613          	addi	a2,s3,1
   1677e:	03069963          	bne	a3,a6,167b0 <_vfiprintf_r+0x23e>
   16782:	000a2403          	lw	s0,0(s4)
   16786:	008a0693          	addi	a3,s4,8
   1678a:	00045363          	bgez	s0,16790 <_vfiprintf_r+0x21e>
   1678e:	547d                	li	s0,-1
   16790:	2401                	sext.w	s0,s0
   16792:	8a36                	mv	s4,a3
   16794:	89b2                	mv	s3,a2
   16796:	b775                	j	16742 <_vfiprintf_r+0x1d0>
   16798:	028c043b          	mulw	s0,s8,s0
   1679c:	0605                	addi	a2,a2,1
   1679e:	fff64683          	lbu	a3,-1(a2)
   167a2:	9c2d                	addw	s0,s0,a1
   167a4:	fd06859b          	addiw	a1,a3,-48
   167a8:	feb578e3          	bleu	a1,a0,16798 <_vfiprintf_r+0x226>
   167ac:	89b2                	mv	s3,a2
   167ae:	bf09                	j	166c0 <_vfiprintf_r+0x14e>
   167b0:	4401                	li	s0,0
   167b2:	bfcd                	j	167a4 <_vfiprintf_r+0x232>
   167b4:	080d6d13          	ori	s10,s10,128
   167b8:	b769                	j	16742 <_vfiprintf_r+0x1d0>
   167ba:	864e                	mv	a2,s3
   167bc:	4a81                	li	s5,0
   167be:	035c0abb          	mulw	s5,s8,s5
   167c2:	fd06869b          	addiw	a3,a3,-48
   167c6:	0605                	addi	a2,a2,1
   167c8:	01568abb          	addw	s5,a3,s5
   167cc:	fff64683          	lbu	a3,-1(a2)
   167d0:	fd06859b          	addiw	a1,a3,-48
   167d4:	feb575e3          	bleu	a1,a0,167be <_vfiprintf_r+0x24c>
   167d8:	bfd1                	j	167ac <_vfiprintf_r+0x23a>
   167da:	0009c603          	lbu	a2,0(s3)
   167de:	06800693          	li	a3,104
   167e2:	00d61663          	bne	a2,a3,167ee <_vfiprintf_r+0x27c>
   167e6:	0985                	addi	s3,s3,1
   167e8:	200d6d13          	ori	s10,s10,512
   167ec:	bf99                	j	16742 <_vfiprintf_r+0x1d0>
   167ee:	040d6d13          	ori	s10,s10,64
   167f2:	bf81                	j	16742 <_vfiprintf_r+0x1d0>
   167f4:	0009c603          	lbu	a2,0(s3)
   167f8:	06c00693          	li	a3,108
   167fc:	00d61663          	bne	a2,a3,16808 <_vfiprintf_r+0x296>
   16800:	0985                	addi	s3,s3,1
   16802:	020d6d13          	ori	s10,s10,32
   16806:	bf35                	j	16742 <_vfiprintf_r+0x1d0>
   16808:	010d6d13          	ori	s10,s10,16
   1680c:	bf1d                	j	16742 <_vfiprintf_r+0x1d0>
   1680e:	000a2683          	lw	a3,0(s4)
   16812:	008a0793          	addi	a5,s4,8
   16816:	e43e                	sd	a5,8(sp)
   16818:	08d10c23          	sb	a3,152(sp)
   1681c:	06010ba3          	sb	zero,119(sp)
   16820:	4405                	li	s0,1
   16822:	4a01                	li	s4,0
   16824:	09810c13          	addi	s8,sp,152
   16828:	aabd                	j	169a6 <_vfiprintf_r+0x434>
   1682a:	010d6d13          	ori	s10,s10,16
   1682e:	008a0793          	addi	a5,s4,8
   16832:	e43e                	sd	a5,8(sp)
   16834:	020d7693          	andi	a3,s10,32
   16838:	ca85                	beqz	a3,16868 <_vfiprintf_r+0x2f6>
   1683a:	000a3a03          	ld	s4,0(s4)
   1683e:	000a5863          	bgez	s4,1684e <_vfiprintf_r+0x2dc>
   16842:	02d00693          	li	a3,45
   16846:	41400a33          	neg	s4,s4
   1684a:	06d10ba3          	sb	a3,119(sp)
   1684e:	56fd                	li	a3,-1
   16850:	3ad41b63          	bne	s0,a3,16c06 <_vfiprintf_r+0x694>
   16854:	46a5                	li	a3,9
   16856:	3d46e563          	bltu	a3,s4,16c20 <_vfiprintf_r+0x6ae>
   1685a:	030a0a1b          	addiw	s4,s4,48
   1685e:	0f410da3          	sb	s4,251(sp)
   16862:	0fb10c13          	addi	s8,sp,251
   16866:	a87d                	j	16924 <_vfiprintf_r+0x3b2>
   16868:	010d7693          	andi	a3,s10,16
   1686c:	f6f9                	bnez	a3,1683a <_vfiprintf_r+0x2c8>
   1686e:	040d7693          	andi	a3,s10,64
   16872:	c681                	beqz	a3,1687a <_vfiprintf_r+0x308>
   16874:	000a1a03          	lh	s4,0(s4)
   16878:	b7d9                	j	1683e <_vfiprintf_r+0x2cc>
   1687a:	200d7693          	andi	a3,s10,512
   1687e:	c681                	beqz	a3,16886 <_vfiprintf_r+0x314>
   16880:	000a0a03          	lb	s4,0(s4)
   16884:	bf6d                	j	1683e <_vfiprintf_r+0x2cc>
   16886:	000a2a03          	lw	s4,0(s4)
   1688a:	bf55                	j	1683e <_vfiprintf_r+0x2cc>
   1688c:	020d7613          	andi	a2,s10,32
   16890:	000a3683          	ld	a3,0(s4)
   16894:	0a21                	addi	s4,s4,8
   16896:	c601                	beqz	a2,1689e <_vfiprintf_r+0x32c>
   16898:	0176b023          	sd	s7,0(a3)
   1689c:	bb45                	j	1664c <_vfiprintf_r+0xda>
   1689e:	010d7613          	andi	a2,s10,16
   168a2:	fa7d                	bnez	a2,16898 <_vfiprintf_r+0x326>
   168a4:	040d7613          	andi	a2,s10,64
   168a8:	c601                	beqz	a2,168b0 <_vfiprintf_r+0x33e>
   168aa:	01769023          	sh	s7,0(a3)
   168ae:	bb79                	j	1664c <_vfiprintf_r+0xda>
   168b0:	200d7793          	andi	a5,s10,512
   168b4:	c781                	beqz	a5,168bc <_vfiprintf_r+0x34a>
   168b6:	01768023          	sb	s7,0(a3)
   168ba:	bb49                	j	1664c <_vfiprintf_r+0xda>
   168bc:	0176a023          	sw	s7,0(a3)
   168c0:	b371                	j	1664c <_vfiprintf_r+0xda>
   168c2:	010d6d13          	ori	s10,s10,16
   168c6:	008a0793          	addi	a5,s4,8
   168ca:	e43e                	sd	a5,8(sp)
   168cc:	020d7693          	andi	a3,s10,32
   168d0:	ceb9                	beqz	a3,1692e <_vfiprintf_r+0x3bc>
   168d2:	000a3a03          	ld	s4,0(s4)
   168d6:	bffd7d13          	andi	s10,s10,-1025
   168da:	4601                	li	a2,0
   168dc:	06010ba3          	sb	zero,119(sp)
   168e0:	56fd                	li	a3,-1
   168e2:	85ea                	mv	a1,s10
   168e4:	32d41363          	bne	s0,a3,16c0a <_vfiprintf_r+0x698>
   168e8:	4685                	li	a3,1
   168ea:	f6d605e3          	beq	a2,a3,16854 <_vfiprintf_r+0x2e2>
   168ee:	4689                	li	a3,2
   168f0:	3ad60063          	beq	a2,a3,16c90 <_vfiprintf_r+0x71e>
   168f4:	19f0                	addi	a2,sp,252
   168f6:	007a7593          	andi	a1,s4,7
   168fa:	03058593          	addi	a1,a1,48
   168fe:	feb60fa3          	sb	a1,-1(a2)
   16902:	003a5a13          	srli	s4,s4,0x3
   16906:	fff60c13          	addi	s8,a2,-1
   1690a:	300a1963          	bnez	s4,16c1c <_vfiprintf_r+0x6aa>
   1690e:	001d7513          	andi	a0,s10,1
   16912:	c909                	beqz	a0,16924 <_vfiprintf_r+0x3b2>
   16914:	03000513          	li	a0,48
   16918:	00a58663          	beq	a1,a0,16924 <_vfiprintf_r+0x3b2>
   1691c:	feac0fa3          	sb	a0,-1(s8)
   16920:	ffe60c13          	addi	s8,a2,-2
   16924:	8a22                	mv	s4,s0
   16926:	19e0                	addi	s0,sp,252
   16928:	4184043b          	subw	s0,s0,s8
   1692c:	a8ad                	j	169a6 <_vfiprintf_r+0x434>
   1692e:	010d7693          	andi	a3,s10,16
   16932:	f2c5                	bnez	a3,168d2 <_vfiprintf_r+0x360>
   16934:	040d7693          	andi	a3,s10,64
   16938:	000a2a03          	lw	s4,0(s4)
   1693c:	c689                	beqz	a3,16946 <_vfiprintf_r+0x3d4>
   1693e:	1a42                	slli	s4,s4,0x30
   16940:	030a5a13          	srli	s4,s4,0x30
   16944:	bf49                	j	168d6 <_vfiprintf_r+0x364>
   16946:	200d7693          	andi	a3,s10,512
   1694a:	c681                	beqz	a3,16952 <_vfiprintf_r+0x3e0>
   1694c:	0ffa7a13          	andi	s4,s4,255
   16950:	b759                	j	168d6 <_vfiprintf_r+0x364>
   16952:	1a02                	slli	s4,s4,0x20
   16954:	020a5a13          	srli	s4,s4,0x20
   16958:	bfbd                	j	168d6 <_vfiprintf_r+0x364>
   1695a:	76e1                	lui	a3,0xffff8
   1695c:	8306c693          	xori	a3,a3,-2000
   16960:	008a0793          	addi	a5,s4,8
   16964:	06d11c23          	sh	a3,120(sp)
   16968:	000a3a03          	ld	s4,0(s4)
   1696c:	0001a6b7          	lui	a3,0x1a
   16970:	e43e                	sd	a5,8(sp)
   16972:	d6068793          	addi	a5,a3,-672 # 19d60 <zeroes.4441+0x68>
   16976:	002d6d13          	ori	s10,s10,2
   1697a:	f03e                	sd	a5,32(sp)
   1697c:	4609                	li	a2,2
   1697e:	bfb9                	j	168dc <_vfiprintf_r+0x36a>
   16980:	008a0793          	addi	a5,s4,8
   16984:	e43e                	sd	a5,8(sp)
   16986:	06010ba3          	sb	zero,119(sp)
   1698a:	567d                	li	a2,-1
   1698c:	000a3c03          	ld	s8,0(s4)
   16990:	1ec40663          	beq	s0,a2,16b7c <_vfiprintf_r+0x60a>
   16994:	8622                	mv	a2,s0
   16996:	4581                	li	a1,0
   16998:	8562                	mv	a0,s8
   1699a:	fc6fd0ef          	jal	ra,14160 <memchr>
   1699e:	4a01                	li	s4,0
   169a0:	c119                	beqz	a0,169a6 <_vfiprintf_r+0x434>
   169a2:	4185043b          	subw	s0,a0,s8
   169a6:	8652                	mv	a2,s4
   169a8:	008a5363          	ble	s0,s4,169ae <_vfiprintf_r+0x43c>
   169ac:	8622                	mv	a2,s0
   169ae:	07714583          	lbu	a1,119(sp)
   169b2:	00060c9b          	sext.w	s9,a2
   169b6:	c199                	beqz	a1,169bc <_vfiprintf_r+0x44a>
   169b8:	00160c9b          	addiw	s9,a2,1
   169bc:	002d7613          	andi	a2,s10,2
   169c0:	0006079b          	sext.w	a5,a2
   169c4:	e0be                	sd	a5,64(sp)
   169c6:	c391                	beqz	a5,169ca <_vfiprintf_r+0x458>
   169c8:	2c89                	addiw	s9,s9,2
   169ca:	084d7793          	andi	a5,s10,132
   169ce:	e4be                	sd	a5,72(sp)
   169d0:	e7a1                	bnez	a5,16a18 <_vfiprintf_r+0x4a6>
   169d2:	419a883b          	subw	a6,s5,s9
   169d6:	05005163          	blez	a6,16a18 <_vfiprintf_r+0x4a6>
   169da:	4341                	li	t1,16
   169dc:	4e1d                	li	t3,7
   169de:	45aa                	lw	a1,136(sp)
   169e0:	77c2                	ld	a5,48(sp)
   169e2:	664a                	ld	a2,144(sp)
   169e4:	0015851b          	addiw	a0,a1,1
   169e8:	00fdb023          	sd	a5,0(s11)
   169ec:	85aa                	mv	a1,a0
   169ee:	010d8893          	addi	a7,s11,16
   169f2:	2f034363          	blt	t1,a6,16cd8 <_vfiprintf_r+0x766>
   169f6:	010db423          	sd	a6,8(s11)
   169fa:	9832                	add	a6,a6,a2
   169fc:	e942                	sd	a6,144(sp)
   169fe:	c52a                	sw	a0,136(sp)
   16a00:	461d                	li	a2,7
   16a02:	8dc6                	mv	s11,a7
   16a04:	00a65a63          	ble	a0,a2,16a18 <_vfiprintf_r+0x4a6>
   16a08:	0110                	addi	a2,sp,128
   16a0a:	85a6                	mv	a1,s1
   16a0c:	854a                	mv	a0,s2
   16a0e:	ac7ff0ef          	jal	ra,164d4 <__sprint_r>
   16a12:	38051363          	bnez	a0,16d98 <_vfiprintf_r+0x826>
   16a16:	8dda                	mv	s11,s6
   16a18:	07714603          	lbu	a2,119(sp)
   16a1c:	ca1d                	beqz	a2,16a52 <_vfiprintf_r+0x4e0>
   16a1e:	07710593          	addi	a1,sp,119
   16a22:	00bdb023          	sd	a1,0(s11)
   16a26:	4585                	li	a1,1
   16a28:	462a                	lw	a2,136(sp)
   16a2a:	00bdb423          	sd	a1,8(s11)
   16a2e:	65ca                	ld	a1,144(sp)
   16a30:	0016051b          	addiw	a0,a2,1
   16a34:	c52a                	sw	a0,136(sp)
   16a36:	0585                	addi	a1,a1,1
   16a38:	e92e                	sd	a1,144(sp)
   16a3a:	461d                	li	a2,7
   16a3c:	0dc1                	addi	s11,s11,16
   16a3e:	00a65a63          	ble	a0,a2,16a52 <_vfiprintf_r+0x4e0>
   16a42:	0110                	addi	a2,sp,128
   16a44:	85a6                	mv	a1,s1
   16a46:	854a                	mv	a0,s2
   16a48:	a8dff0ef          	jal	ra,164d4 <__sprint_r>
   16a4c:	34051663          	bnez	a0,16d98 <_vfiprintf_r+0x826>
   16a50:	8dda                	mv	s11,s6
   16a52:	6786                	ld	a5,64(sp)
   16a54:	cb95                	beqz	a5,16a88 <_vfiprintf_r+0x516>
   16a56:	18ac                	addi	a1,sp,120
   16a58:	00bdb023          	sd	a1,0(s11)
   16a5c:	4589                	li	a1,2
   16a5e:	462a                	lw	a2,136(sp)
   16a60:	00bdb423          	sd	a1,8(s11)
   16a64:	65ca                	ld	a1,144(sp)
   16a66:	0016051b          	addiw	a0,a2,1
   16a6a:	c52a                	sw	a0,136(sp)
   16a6c:	0589                	addi	a1,a1,2
   16a6e:	e92e                	sd	a1,144(sp)
   16a70:	461d                	li	a2,7
   16a72:	0dc1                	addi	s11,s11,16
   16a74:	00a65a63          	ble	a0,a2,16a88 <_vfiprintf_r+0x516>
   16a78:	0110                	addi	a2,sp,128
   16a7a:	85a6                	mv	a1,s1
   16a7c:	854a                	mv	a0,s2
   16a7e:	a57ff0ef          	jal	ra,164d4 <__sprint_r>
   16a82:	30051b63          	bnez	a0,16d98 <_vfiprintf_r+0x826>
   16a86:	8dda                	mv	s11,s6
   16a88:	67a6                	ld	a5,72(sp)
   16a8a:	08000613          	li	a2,128
   16a8e:	04c79563          	bne	a5,a2,16ad8 <_vfiprintf_r+0x566>
   16a92:	419a883b          	subw	a6,s5,s9
   16a96:	05005163          	blez	a6,16ad8 <_vfiprintf_r+0x566>
   16a9a:	4341                	li	t1,16
   16a9c:	4e1d                	li	t3,7
   16a9e:	45aa                	lw	a1,136(sp)
   16aa0:	77a2                	ld	a5,40(sp)
   16aa2:	664a                	ld	a2,144(sp)
   16aa4:	0015851b          	addiw	a0,a1,1
   16aa8:	00fdb023          	sd	a5,0(s11)
   16aac:	85aa                	mv	a1,a0
   16aae:	010d8893          	addi	a7,s11,16
   16ab2:	25034a63          	blt	t1,a6,16d06 <_vfiprintf_r+0x794>
   16ab6:	010db423          	sd	a6,8(s11)
   16aba:	9832                	add	a6,a6,a2
   16abc:	e942                	sd	a6,144(sp)
   16abe:	c52a                	sw	a0,136(sp)
   16ac0:	461d                	li	a2,7
   16ac2:	8dc6                	mv	s11,a7
   16ac4:	00a65a63          	ble	a0,a2,16ad8 <_vfiprintf_r+0x566>
   16ac8:	0110                	addi	a2,sp,128
   16aca:	85a6                	mv	a1,s1
   16acc:	854a                	mv	a0,s2
   16ace:	a07ff0ef          	jal	ra,164d4 <__sprint_r>
   16ad2:	2c051363          	bnez	a0,16d98 <_vfiprintf_r+0x826>
   16ad6:	8dda                	mv	s11,s6
   16ad8:	408a0a3b          	subw	s4,s4,s0
   16adc:	05405163          	blez	s4,16b1e <_vfiprintf_r+0x5ac>
   16ae0:	48c1                	li	a7,16
   16ae2:	431d                	li	t1,7
   16ae4:	45aa                	lw	a1,136(sp)
   16ae6:	77a2                	ld	a5,40(sp)
   16ae8:	664a                	ld	a2,144(sp)
   16aea:	0015851b          	addiw	a0,a1,1
   16aee:	00fdb023          	sd	a5,0(s11)
   16af2:	85aa                	mv	a1,a0
   16af4:	010d8813          	addi	a6,s11,16
   16af8:	2348ce63          	blt	a7,s4,16d34 <_vfiprintf_r+0x7c2>
   16afc:	014db423          	sd	s4,8(s11)
   16b00:	9a32                	add	s4,s4,a2
   16b02:	e952                	sd	s4,144(sp)
   16b04:	c52a                	sw	a0,136(sp)
   16b06:	461d                	li	a2,7
   16b08:	8dc2                	mv	s11,a6
   16b0a:	00a65a63          	ble	a0,a2,16b1e <_vfiprintf_r+0x5ac>
   16b0e:	0110                	addi	a2,sp,128
   16b10:	85a6                	mv	a1,s1
   16b12:	854a                	mv	a0,s2
   16b14:	9c1ff0ef          	jal	ra,164d4 <__sprint_r>
   16b18:	28051063          	bnez	a0,16d98 <_vfiprintf_r+0x826>
   16b1c:	8dda                	mv	s11,s6
   16b1e:	66ca                	ld	a3,144(sp)
   16b20:	008db423          	sd	s0,8(s11)
   16b24:	018db023          	sd	s8,0(s11)
   16b28:	9436                	add	s0,s0,a3
   16b2a:	46aa                	lw	a3,136(sp)
   16b2c:	e922                	sd	s0,144(sp)
   16b2e:	010d8713          	addi	a4,s11,16
   16b32:	0016861b          	addiw	a2,a3,1
   16b36:	c532                	sw	a2,136(sp)
   16b38:	469d                	li	a3,7
   16b3a:	00c6da63          	ble	a2,a3,16b4e <_vfiprintf_r+0x5dc>
   16b3e:	0110                	addi	a2,sp,128
   16b40:	85a6                	mv	a1,s1
   16b42:	854a                	mv	a0,s2
   16b44:	991ff0ef          	jal	ra,164d4 <__sprint_r>
   16b48:	24051863          	bnez	a0,16d98 <_vfiprintf_r+0x826>
   16b4c:	875a                	mv	a4,s6
   16b4e:	004d7793          	andi	a5,s10,4
   16b52:	20079663          	bnez	a5,16d5e <_vfiprintf_r+0x7ec>
   16b56:	87d6                	mv	a5,s5
   16b58:	019ad363          	ble	s9,s5,16b5e <_vfiprintf_r+0x5ec>
   16b5c:	87e6                	mv	a5,s9
   16b5e:	01778bbb          	addw	s7,a5,s7
   16b62:	67ca                	ld	a5,144(sp)
   16b64:	cb81                	beqz	a5,16b74 <_vfiprintf_r+0x602>
   16b66:	0110                	addi	a2,sp,128
   16b68:	85a6                	mv	a1,s1
   16b6a:	854a                	mv	a0,s2
   16b6c:	969ff0ef          	jal	ra,164d4 <__sprint_r>
   16b70:	22051463          	bnez	a0,16d98 <_vfiprintf_r+0x826>
   16b74:	c502                	sw	zero,136(sp)
   16b76:	6a22                	ld	s4,8(sp)
   16b78:	8dda                	mv	s11,s6
   16b7a:	bcc9                	j	1664c <_vfiprintf_r+0xda>
   16b7c:	8562                	mv	a0,s8
   16b7e:	b9cfe0ef          	jal	ra,14f1a <strlen>
   16b82:	0005041b          	sext.w	s0,a0
   16b86:	4a01                	li	s4,0
   16b88:	bd39                	j	169a6 <_vfiprintf_r+0x434>
   16b8a:	010d6d13          	ori	s10,s10,16
   16b8e:	008a0793          	addi	a5,s4,8
   16b92:	e43e                	sd	a5,8(sp)
   16b94:	020d7693          	andi	a3,s10,32
   16b98:	c689                	beqz	a3,16ba2 <_vfiprintf_r+0x630>
   16b9a:	000a3a03          	ld	s4,0(s4)
   16b9e:	4605                	li	a2,1
   16ba0:	bb35                	j	168dc <_vfiprintf_r+0x36a>
   16ba2:	010d7693          	andi	a3,s10,16
   16ba6:	faf5                	bnez	a3,16b9a <_vfiprintf_r+0x628>
   16ba8:	040d7693          	andi	a3,s10,64
   16bac:	000a2a03          	lw	s4,0(s4)
   16bb0:	c689                	beqz	a3,16bba <_vfiprintf_r+0x648>
   16bb2:	1a42                	slli	s4,s4,0x30
   16bb4:	030a5a13          	srli	s4,s4,0x30
   16bb8:	b7dd                	j	16b9e <_vfiprintf_r+0x62c>
   16bba:	200d7693          	andi	a3,s10,512
   16bbe:	c681                	beqz	a3,16bc6 <_vfiprintf_r+0x654>
   16bc0:	0ffa7a13          	andi	s4,s4,255
   16bc4:	bfe9                	j	16b9e <_vfiprintf_r+0x62c>
   16bc6:	1a02                	slli	s4,s4,0x20
   16bc8:	020a5a13          	srli	s4,s4,0x20
   16bcc:	bfc9                	j	16b9e <_vfiprintf_r+0x62c>
   16bce:	0001a637          	lui	a2,0x1a
   16bd2:	d6060793          	addi	a5,a2,-672 # 19d60 <zeroes.4441+0x68>
   16bd6:	b629                	j	166e0 <_vfiprintf_r+0x16e>
   16bd8:	010d7613          	andi	a2,s10,16
   16bdc:	b0061ae3          	bnez	a2,166f0 <_vfiprintf_r+0x17e>
   16be0:	040d7613          	andi	a2,s10,64
   16be4:	000a2a03          	lw	s4,0(s4)
   16be8:	c609                	beqz	a2,16bf2 <_vfiprintf_r+0x680>
   16bea:	1a42                	slli	s4,s4,0x30
   16bec:	030a5a13          	srli	s4,s4,0x30
   16bf0:	b611                	j	166f4 <_vfiprintf_r+0x182>
   16bf2:	200d7613          	andi	a2,s10,512
   16bf6:	c601                	beqz	a2,16bfe <_vfiprintf_r+0x68c>
   16bf8:	0ffa7a13          	andi	s4,s4,255
   16bfc:	bce5                	j	166f4 <_vfiprintf_r+0x182>
   16bfe:	1a02                	slli	s4,s4,0x20
   16c00:	020a5a13          	srli	s4,s4,0x20
   16c04:	bcc5                	j	166f4 <_vfiprintf_r+0x182>
   16c06:	85ea                	mv	a1,s10
   16c08:	4605                	li	a2,1
   16c0a:	f7fd7d13          	andi	s10,s10,-129
   16c0e:	cc0a1de3          	bnez	s4,168e8 <_vfiprintf_r+0x376>
   16c12:	cc59                	beqz	s0,16cb0 <_vfiprintf_r+0x73e>
   16c14:	4685                	li	a3,1
   16c16:	ccd61ce3          	bne	a2,a3,168ee <_vfiprintf_r+0x37c>
   16c1a:	b181                	j	1685a <_vfiprintf_r+0x2e8>
   16c1c:	8662                	mv	a2,s8
   16c1e:	b9e1                	j	168f6 <_vfiprintf_r+0x384>
   16c20:	400d7c93          	andi	s9,s10,1024
   16c24:	4601                	li	a2,0
   16c26:	19ec                	addi	a1,sp,252
   16c28:	4829                	li	a6,10
   16c2a:	2c81                	sext.w	s9,s9
   16c2c:	0ff00893          	li	a7,255
   16c30:	4325                	li	t1,9
   16c32:	030a7533          	remu	a0,s4,a6
   16c36:	fff58c13          	addi	s8,a1,-1
   16c3a:	2605                	addiw	a2,a2,1
   16c3c:	0305051b          	addiw	a0,a0,48
   16c40:	fea58fa3          	sb	a0,-1(a1)
   16c44:	040c8063          	beqz	s9,16c84 <_vfiprintf_r+0x712>
   16c48:	67c2                	ld	a5,16(sp)
   16c4a:	0007c583          	lbu	a1,0(a5)
   16c4e:	02c59b63          	bne	a1,a2,16c84 <_vfiprintf_r+0x712>
   16c52:	03158963          	beq	a1,a7,16c84 <_vfiprintf_r+0x712>
   16c56:	03437763          	bleu	s4,t1,16c84 <_vfiprintf_r+0x712>
   16c5a:	67e2                	ld	a5,24(sp)
   16c5c:	75e2                	ld	a1,56(sp)
   16c5e:	ec9a                	sd	t1,88(sp)
   16c60:	40fc0c33          	sub	s8,s8,a5
   16c64:	863e                	mv	a2,a5
   16c66:	8562                	mv	a0,s8
   16c68:	e4c6                	sd	a7,72(sp)
   16c6a:	e0c2                	sd	a6,64(sp)
   16c6c:	ac0fe0ef          	jal	ra,14f2c <strncpy>
   16c70:	67c2                	ld	a5,16(sp)
   16c72:	4601                	li	a2,0
   16c74:	6806                	ld	a6,64(sp)
   16c76:	0017c583          	lbu	a1,1(a5)
   16c7a:	68a6                	ld	a7,72(sp)
   16c7c:	6366                	ld	t1,88(sp)
   16c7e:	c199                	beqz	a1,16c84 <_vfiprintf_r+0x712>
   16c80:	0785                	addi	a5,a5,1
   16c82:	e83e                	sd	a5,16(sp)
   16c84:	030a5a33          	divu	s4,s4,a6
   16c88:	c80a0ee3          	beqz	s4,16924 <_vfiprintf_r+0x3b2>
   16c8c:	85e2                	mv	a1,s8
   16c8e:	b755                	j	16c32 <_vfiprintf_r+0x6c0>
   16c90:	0fc10c13          	addi	s8,sp,252
   16c94:	7782                	ld	a5,32(sp)
   16c96:	00fa7613          	andi	a2,s4,15
   16c9a:	1c7d                	addi	s8,s8,-1
   16c9c:	963e                	add	a2,a2,a5
   16c9e:	00064603          	lbu	a2,0(a2)
   16ca2:	004a5a13          	srli	s4,s4,0x4
   16ca6:	00cc0023          	sb	a2,0(s8)
   16caa:	fe0a15e3          	bnez	s4,16c94 <_vfiprintf_r+0x722>
   16cae:	b99d                	j	16924 <_vfiprintf_r+0x3b2>
   16cb0:	0fc10c13          	addi	s8,sp,252
   16cb4:	c60618e3          	bnez	a2,16924 <_vfiprintf_r+0x3b2>
   16cb8:	8985                	andi	a1,a1,1
   16cba:	c60585e3          	beqz	a1,16924 <_vfiprintf_r+0x3b2>
   16cbe:	03000693          	li	a3,48
   16cc2:	0ed10da3          	sb	a3,251(sp)
   16cc6:	be71                	j	16862 <_vfiprintf_r+0x2f0>
   16cc8:	10068263          	beqz	a3,16dcc <_vfiprintf_r+0x85a>
   16ccc:	08d10c23          	sb	a3,152(sp)
   16cd0:	06010ba3          	sb	zero,119(sp)
   16cd4:	e452                	sd	s4,8(sp)
   16cd6:	b6a9                	j	16820 <_vfiprintf_r+0x2ae>
   16cd8:	0641                	addi	a2,a2,16
   16cda:	006db423          	sd	t1,8(s11)
   16cde:	e932                	sd	a2,144(sp)
   16ce0:	c52e                	sw	a1,136(sp)
   16ce2:	00ae5f63          	ble	a0,t3,16d00 <_vfiprintf_r+0x78e>
   16ce6:	0110                	addi	a2,sp,128
   16ce8:	85a6                	mv	a1,s1
   16cea:	854a                	mv	a0,s2
   16cec:	f4f2                	sd	t3,104(sp)
   16cee:	f09a                	sd	t1,96(sp)
   16cf0:	ecc2                	sd	a6,88(sp)
   16cf2:	fe2ff0ef          	jal	ra,164d4 <__sprint_r>
   16cf6:	e14d                	bnez	a0,16d98 <_vfiprintf_r+0x826>
   16cf8:	7e26                	ld	t3,104(sp)
   16cfa:	7306                	ld	t1,96(sp)
   16cfc:	6866                	ld	a6,88(sp)
   16cfe:	88da                	mv	a7,s6
   16d00:	3841                	addiw	a6,a6,-16
   16d02:	8dc6                	mv	s11,a7
   16d04:	b9e9                	j	169de <_vfiprintf_r+0x46c>
   16d06:	0641                	addi	a2,a2,16
   16d08:	006db423          	sd	t1,8(s11)
   16d0c:	e932                	sd	a2,144(sp)
   16d0e:	c52e                	sw	a1,136(sp)
   16d10:	00ae5f63          	ble	a0,t3,16d2e <_vfiprintf_r+0x7bc>
   16d14:	0110                	addi	a2,sp,128
   16d16:	85a6                	mv	a1,s1
   16d18:	854a                	mv	a0,s2
   16d1a:	ecf2                	sd	t3,88(sp)
   16d1c:	e49a                	sd	t1,72(sp)
   16d1e:	e0c2                	sd	a6,64(sp)
   16d20:	fb4ff0ef          	jal	ra,164d4 <__sprint_r>
   16d24:	e935                	bnez	a0,16d98 <_vfiprintf_r+0x826>
   16d26:	6e66                	ld	t3,88(sp)
   16d28:	6326                	ld	t1,72(sp)
   16d2a:	6806                	ld	a6,64(sp)
   16d2c:	88da                	mv	a7,s6
   16d2e:	3841                	addiw	a6,a6,-16
   16d30:	8dc6                	mv	s11,a7
   16d32:	b3b5                	j	16a9e <_vfiprintf_r+0x52c>
   16d34:	0641                	addi	a2,a2,16
   16d36:	011db423          	sd	a7,8(s11)
   16d3a:	e932                	sd	a2,144(sp)
   16d3c:	c52e                	sw	a1,136(sp)
   16d3e:	00a35d63          	ble	a0,t1,16d58 <_vfiprintf_r+0x7e6>
   16d42:	0110                	addi	a2,sp,128
   16d44:	85a6                	mv	a1,s1
   16d46:	854a                	mv	a0,s2
   16d48:	e49a                	sd	t1,72(sp)
   16d4a:	e0c6                	sd	a7,64(sp)
   16d4c:	f88ff0ef          	jal	ra,164d4 <__sprint_r>
   16d50:	e521                	bnez	a0,16d98 <_vfiprintf_r+0x826>
   16d52:	6326                	ld	t1,72(sp)
   16d54:	6886                	ld	a7,64(sp)
   16d56:	885a                	mv	a6,s6
   16d58:	3a41                	addiw	s4,s4,-16
   16d5a:	8dc2                	mv	s11,a6
   16d5c:	b361                	j	16ae4 <_vfiprintf_r+0x572>
   16d5e:	419a843b          	subw	s0,s5,s9
   16d62:	de805ae3          	blez	s0,16b56 <_vfiprintf_r+0x5e4>
   16d66:	4a41                	li	s4,16
   16d68:	4d1d                	li	s10,7
   16d6a:	46aa                	lw	a3,136(sp)
   16d6c:	67ca                	ld	a5,144(sp)
   16d6e:	0016861b          	addiw	a2,a3,1
   16d72:	86b2                	mv	a3,a2
   16d74:	028a4963          	blt	s4,s0,16da6 <_vfiprintf_r+0x834>
   16d78:	76c2                	ld	a3,48(sp)
   16d7a:	e700                	sd	s0,8(a4)
   16d7c:	943e                	add	s0,s0,a5
   16d7e:	e314                	sd	a3,0(a4)
   16d80:	e922                	sd	s0,144(sp)
   16d82:	c532                	sw	a2,136(sp)
   16d84:	479d                	li	a5,7
   16d86:	dcc7d8e3          	ble	a2,a5,16b56 <_vfiprintf_r+0x5e4>
   16d8a:	0110                	addi	a2,sp,128
   16d8c:	85a6                	mv	a1,s1
   16d8e:	854a                	mv	a0,s2
   16d90:	f44ff0ef          	jal	ra,164d4 <__sprint_r>
   16d94:	dc0501e3          	beqz	a0,16b56 <_vfiprintf_r+0x5e4>
   16d98:	0104d783          	lhu	a5,16(s1)
   16d9c:	0407f793          	andi	a5,a5,64
   16da0:	840788e3          	beqz	a5,165f0 <_vfiprintf_r+0x7e>
   16da4:	b89d                	j	1661a <_vfiprintf_r+0xa8>
   16da6:	75c2                	ld	a1,48(sp)
   16da8:	07c1                	addi	a5,a5,16
   16daa:	01473423          	sd	s4,8(a4)
   16dae:	e30c                	sd	a1,0(a4)
   16db0:	e93e                	sd	a5,144(sp)
   16db2:	c536                	sw	a3,136(sp)
   16db4:	0741                	addi	a4,a4,16
   16db6:	00cd5963          	ble	a2,s10,16dc8 <_vfiprintf_r+0x856>
   16dba:	0110                	addi	a2,sp,128
   16dbc:	85a6                	mv	a1,s1
   16dbe:	854a                	mv	a0,s2
   16dc0:	f14ff0ef          	jal	ra,164d4 <__sprint_r>
   16dc4:	f971                	bnez	a0,16d98 <_vfiprintf_r+0x826>
   16dc6:	875a                	mv	a4,s6
   16dc8:	3441                	addiw	s0,s0,-16
   16dca:	b745                	j	16d6a <_vfiprintf_r+0x7f8>
   16dcc:	67ca                	ld	a5,144(sp)
   16dce:	d7e9                	beqz	a5,16d98 <_vfiprintf_r+0x826>
   16dd0:	0110                	addi	a2,sp,128
   16dd2:	85a6                	mv	a1,s1
   16dd4:	854a                	mv	a0,s2
   16dd6:	efeff0ef          	jal	ra,164d4 <__sprint_r>
   16dda:	bf7d                	j	16d98 <_vfiprintf_r+0x826>

0000000000016ddc <vfiprintf>:
   16ddc:	86b2                	mv	a3,a2
   16dde:	862e                	mv	a2,a1
   16de0:	85aa                	mv	a1,a0
   16de2:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   16de6:	f8cff06f          	j	16572 <_vfiprintf_r>

0000000000016dea <__sbprintf>:
   16dea:	0105d783          	lhu	a5,16(a1)
   16dee:	b3010113          	addi	sp,sp,-1232
   16df2:	4c813023          	sd	s0,1216(sp)
   16df6:	9bf5                	andi	a5,a5,-3
   16df8:	00f11823          	sh	a5,16(sp)
   16dfc:	0ac5a783          	lw	a5,172(a1)
   16e00:	842e                	mv	s0,a1
   16e02:	4a913c23          	sd	s1,1208(sp)
   16e06:	d73e                	sw	a5,172(sp)
   16e08:	0125d783          	lhu	a5,18(a1)
   16e0c:	4b213823          	sd	s2,1200(sp)
   16e10:	4c113423          	sd	ra,1224(sp)
   16e14:	00f11923          	sh	a5,18(sp)
   16e18:	799c                	ld	a5,48(a1)
   16e1a:	892a                	mv	s2,a0
   16e1c:	d402                	sw	zero,40(sp)
   16e1e:	f83e                	sd	a5,48(sp)
   16e20:	61bc                	ld	a5,64(a1)
   16e22:	858a                	mv	a1,sp
   16e24:	e0be                	sd	a5,64(sp)
   16e26:	191c                	addi	a5,sp,176
   16e28:	e03e                	sd	a5,0(sp)
   16e2a:	ec3e                	sd	a5,24(sp)
   16e2c:	40000793          	li	a5,1024
   16e30:	c63e                	sw	a5,12(sp)
   16e32:	d03e                	sw	a5,32(sp)
   16e34:	f3eff0ef          	jal	ra,16572 <_vfiprintf_r>
   16e38:	84aa                	mv	s1,a0
   16e3a:	00054863          	bltz	a0,16e4a <__sbprintf+0x60>
   16e3e:	858a                	mv	a1,sp
   16e40:	854a                	mv	a0,s2
   16e42:	ca4fb0ef          	jal	ra,122e6 <_fflush_r>
   16e46:	c111                	beqz	a0,16e4a <__sbprintf+0x60>
   16e48:	54fd                	li	s1,-1
   16e4a:	01015783          	lhu	a5,16(sp)
   16e4e:	0407f793          	andi	a5,a5,64
   16e52:	c799                	beqz	a5,16e60 <__sbprintf+0x76>
   16e54:	01045783          	lhu	a5,16(s0)
   16e58:	0407e793          	ori	a5,a5,64
   16e5c:	00f41823          	sh	a5,16(s0)
   16e60:	4c813083          	ld	ra,1224(sp)
   16e64:	4c013403          	ld	s0,1216(sp)
   16e68:	8526                	mv	a0,s1
   16e6a:	4b013903          	ld	s2,1200(sp)
   16e6e:	4b813483          	ld	s1,1208(sp)
   16e72:	4d010113          	addi	sp,sp,1232
   16e76:	8082                	ret

0000000000016e78 <_wctomb_r>:
   16e78:	8301b783          	ld	a5,-2000(gp) # 1c9b8 <_impure_ptr>
   16e7c:	67bc                	ld	a5,72(a5)
   16e7e:	e781                	bnez	a5,16e86 <_wctomb_r+0xe>
   16e80:	67f1                	lui	a5,0x1c
   16e82:	7e078793          	addi	a5,a5,2016 # 1c7e0 <__global_locale>
   16e86:	0e07b303          	ld	t1,224(a5)
   16e8a:	8302                	jr	t1

0000000000016e8c <__ascii_wctomb>:
   16e8c:	cd91                	beqz	a1,16ea8 <__ascii_wctomb+0x1c>
   16e8e:	0ff00793          	li	a5,255
   16e92:	00c7f763          	bleu	a2,a5,16ea0 <__ascii_wctomb+0x14>
   16e96:	08a00793          	li	a5,138
   16e9a:	c11c                	sw	a5,0(a0)
   16e9c:	557d                	li	a0,-1
   16e9e:	8082                	ret
   16ea0:	00c58023          	sb	a2,0(a1)
   16ea4:	4505                	li	a0,1
   16ea6:	8082                	ret
   16ea8:	4501                	li	a0,0
   16eaa:	8082                	ret

0000000000016eac <_write_r>:
   16eac:	1101                	addi	sp,sp,-32
   16eae:	e822                	sd	s0,16(sp)
   16eb0:	e426                	sd	s1,8(sp)
   16eb2:	84aa                	mv	s1,a0
   16eb4:	852e                	mv	a0,a1
   16eb6:	85b2                	mv	a1,a2
   16eb8:	8636                	mv	a2,a3
   16eba:	ec06                	sd	ra,24(sp)
   16ebc:	8e01a023          	sw	zero,-1824(gp) # 1ca68 <errno>
   16ec0:	710010ef          	jal	ra,185d0 <_write>
   16ec4:	57fd                	li	a5,-1
   16ec6:	00f51663          	bne	a0,a5,16ed2 <_write_r+0x26>
   16eca:	8e01a783          	lw	a5,-1824(gp) # 1ca68 <errno>
   16ece:	c391                	beqz	a5,16ed2 <_write_r+0x26>
   16ed0:	c09c                	sw	a5,0(s1)
   16ed2:	60e2                	ld	ra,24(sp)
   16ed4:	6442                	ld	s0,16(sp)
   16ed6:	64a2                	ld	s1,8(sp)
   16ed8:	6105                	addi	sp,sp,32
   16eda:	8082                	ret

0000000000016edc <_calloc_r>:
   16edc:	02c585b3          	mul	a1,a1,a2
   16ee0:	1141                	addi	sp,sp,-16
   16ee2:	e022                	sd	s0,0(sp)
   16ee4:	e406                	sd	ra,8(sp)
   16ee6:	c5cf90ef          	jal	ra,10342 <_malloc_r>
   16eea:	842a                	mv	s0,a0
   16eec:	cd15                	beqz	a0,16f28 <_calloc_r+0x4c>
   16eee:	ff853603          	ld	a2,-8(a0)
   16ef2:	04800713          	li	a4,72
   16ef6:	9a71                	andi	a2,a2,-4
   16ef8:	1661                	addi	a2,a2,-8
   16efa:	04c76b63          	bltu	a4,a2,16f50 <_calloc_r+0x74>
   16efe:	02700693          	li	a3,39
   16f02:	87aa                	mv	a5,a0
   16f04:	00c6fc63          	bleu	a2,a3,16f1c <_calloc_r+0x40>
   16f08:	00053023          	sd	zero,0(a0)
   16f0c:	00053423          	sd	zero,8(a0)
   16f10:	03700793          	li	a5,55
   16f14:	00c7ef63          	bltu	a5,a2,16f32 <_calloc_r+0x56>
   16f18:	01050793          	addi	a5,a0,16
   16f1c:	0007b023          	sd	zero,0(a5)
   16f20:	0007b423          	sd	zero,8(a5)
   16f24:	0007b823          	sd	zero,16(a5)
   16f28:	8522                	mv	a0,s0
   16f2a:	60a2                	ld	ra,8(sp)
   16f2c:	6402                	ld	s0,0(sp)
   16f2e:	0141                	addi	sp,sp,16
   16f30:	8082                	ret
   16f32:	00053823          	sd	zero,16(a0)
   16f36:	00053c23          	sd	zero,24(a0)
   16f3a:	02050793          	addi	a5,a0,32
   16f3e:	fce61fe3          	bne	a2,a4,16f1c <_calloc_r+0x40>
   16f42:	02053023          	sd	zero,32(a0)
   16f46:	03050793          	addi	a5,a0,48
   16f4a:	02053423          	sd	zero,40(a0)
   16f4e:	b7f9                	j	16f1c <_calloc_r+0x40>
   16f50:	4581                	li	a1,0
   16f52:	8d1f90ef          	jal	ra,10822 <memset>
   16f56:	bfc9                	j	16f28 <_calloc_r+0x4c>

0000000000016f58 <_close_r>:
   16f58:	1101                	addi	sp,sp,-32
   16f5a:	e822                	sd	s0,16(sp)
   16f5c:	e426                	sd	s1,8(sp)
   16f5e:	84aa                	mv	s1,a0
   16f60:	852e                	mv	a0,a1
   16f62:	ec06                	sd	ra,24(sp)
   16f64:	8e01a023          	sw	zero,-1824(gp) # 1ca68 <errno>
   16f68:	4c0010ef          	jal	ra,18428 <_close>
   16f6c:	57fd                	li	a5,-1
   16f6e:	00f51663          	bne	a0,a5,16f7a <_close_r+0x22>
   16f72:	8e01a783          	lw	a5,-1824(gp) # 1ca68 <errno>
   16f76:	c391                	beqz	a5,16f7a <_close_r+0x22>
   16f78:	c09c                	sw	a5,0(s1)
   16f7a:	60e2                	ld	ra,24(sp)
   16f7c:	6442                	ld	s0,16(sp)
   16f7e:	64a2                	ld	s1,8(sp)
   16f80:	6105                	addi	sp,sp,32
   16f82:	8082                	ret

0000000000016f84 <_fclose_r>:
   16f84:	1101                	addi	sp,sp,-32
   16f86:	ec06                	sd	ra,24(sp)
   16f88:	e822                	sd	s0,16(sp)
   16f8a:	e426                	sd	s1,8(sp)
   16f8c:	e04a                	sd	s2,0(sp)
   16f8e:	e989                	bnez	a1,16fa0 <_fclose_r+0x1c>
   16f90:	4901                	li	s2,0
   16f92:	60e2                	ld	ra,24(sp)
   16f94:	6442                	ld	s0,16(sp)
   16f96:	854a                	mv	a0,s2
   16f98:	64a2                	ld	s1,8(sp)
   16f9a:	6902                	ld	s2,0(sp)
   16f9c:	6105                	addi	sp,sp,32
   16f9e:	8082                	ret
   16fa0:	84aa                	mv	s1,a0
   16fa2:	842e                	mv	s0,a1
   16fa4:	c509                	beqz	a0,16fae <_fclose_r+0x2a>
   16fa6:	493c                	lw	a5,80(a0)
   16fa8:	e399                	bnez	a5,16fae <_fclose_r+0x2a>
   16faa:	c54fb0ef          	jal	ra,123fe <__sinit>
   16fae:	01041783          	lh	a5,16(s0)
   16fb2:	dff9                	beqz	a5,16f90 <_fclose_r+0xc>
   16fb4:	85a2                	mv	a1,s0
   16fb6:	8526                	mv	a0,s1
   16fb8:	9ccfb0ef          	jal	ra,12184 <__sflush_r>
   16fbc:	683c                	ld	a5,80(s0)
   16fbe:	892a                	mv	s2,a0
   16fc0:	c799                	beqz	a5,16fce <_fclose_r+0x4a>
   16fc2:	780c                	ld	a1,48(s0)
   16fc4:	8526                	mv	a0,s1
   16fc6:	9782                	jalr	a5
   16fc8:	00055363          	bgez	a0,16fce <_fclose_r+0x4a>
   16fcc:	597d                	li	s2,-1
   16fce:	01045783          	lhu	a5,16(s0)
   16fd2:	0807f793          	andi	a5,a5,128
   16fd6:	c789                	beqz	a5,16fe0 <_fclose_r+0x5c>
   16fd8:	6c0c                	ld	a1,24(s0)
   16fda:	8526                	mv	a0,s1
   16fdc:	df2fb0ef          	jal	ra,125ce <_free_r>
   16fe0:	6c2c                	ld	a1,88(s0)
   16fe2:	c991                	beqz	a1,16ff6 <_fclose_r+0x72>
   16fe4:	07440793          	addi	a5,s0,116
   16fe8:	00f58563          	beq	a1,a5,16ff2 <_fclose_r+0x6e>
   16fec:	8526                	mv	a0,s1
   16fee:	de0fb0ef          	jal	ra,125ce <_free_r>
   16ff2:	04043c23          	sd	zero,88(s0)
   16ff6:	7c2c                	ld	a1,120(s0)
   16ff8:	c591                	beqz	a1,17004 <_fclose_r+0x80>
   16ffa:	8526                	mv	a0,s1
   16ffc:	dd2fb0ef          	jal	ra,125ce <_free_r>
   17000:	06043c23          	sd	zero,120(s0)
   17004:	ce8fb0ef          	jal	ra,124ec <__sfp_lock_acquire>
   17008:	00041823          	sh	zero,16(s0)
   1700c:	ce2fb0ef          	jal	ra,124ee <__sfp_lock_release>
   17010:	b749                	j	16f92 <_fclose_r+0xe>

0000000000017012 <fclose>:
   17012:	85aa                	mv	a1,a0
   17014:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   17018:	f6dff06f          	j	16f84 <_fclose_r>

000000000001701c <__fputwc>:
   1701c:	715d                	addi	sp,sp,-80
   1701e:	e0a2                	sd	s0,64(sp)
   17020:	fc26                	sd	s1,56(sp)
   17022:	f052                	sd	s4,32(sp)
   17024:	e486                	sd	ra,72(sp)
   17026:	f84a                	sd	s2,48(sp)
   17028:	f44e                	sd	s3,40(sp)
   1702a:	ec56                	sd	s5,24(sp)
   1702c:	e85a                	sd	s6,16(sp)
   1702e:	8a2a                	mv	s4,a0
   17030:	84ae                	mv	s1,a1
   17032:	8432                	mv	s0,a2
   17034:	fa1fc0ef          	jal	ra,13fd4 <__locale_mb_cur_max>
   17038:	4785                	li	a5,1
   1703a:	02f51c63          	bne	a0,a5,17072 <__fputwc+0x56>
   1703e:	fff4879b          	addiw	a5,s1,-1
   17042:	0fe00713          	li	a4,254
   17046:	02f76663          	bltu	a4,a5,17072 <__fputwc+0x56>
   1704a:	00910423          	sb	s1,8(sp)
   1704e:	4985                	li	s3,1
   17050:	4901                	li	s2,0
   17052:	5afd                	li	s5,-1
   17054:	4b29                	li	s6,10
   17056:	05391163          	bne	s2,s3,17098 <__fputwc+0x7c>
   1705a:	0004851b          	sext.w	a0,s1
   1705e:	60a6                	ld	ra,72(sp)
   17060:	6406                	ld	s0,64(sp)
   17062:	74e2                	ld	s1,56(sp)
   17064:	7942                	ld	s2,48(sp)
   17066:	79a2                	ld	s3,40(sp)
   17068:	7a02                	ld	s4,32(sp)
   1706a:	6ae2                	ld	s5,24(sp)
   1706c:	6b42                	ld	s6,16(sp)
   1706e:	6161                	addi	sp,sp,80
   17070:	8082                	ret
   17072:	0a440693          	addi	a3,s0,164
   17076:	8626                	mv	a2,s1
   17078:	002c                	addi	a1,sp,8
   1707a:	8552                	mv	a0,s4
   1707c:	34e010ef          	jal	ra,183ca <_wcrtomb_r>
   17080:	57fd                	li	a5,-1
   17082:	89aa                	mv	s3,a0
   17084:	fcf516e3          	bne	a0,a5,17050 <__fputwc+0x34>
   17088:	01045783          	lhu	a5,16(s0)
   1708c:	0407e793          	ori	a5,a5,64
   17090:	00f41823          	sh	a5,16(s0)
   17094:	557d                	li	a0,-1
   17096:	b7e1                	j	1705e <__fputwc+0x42>
   17098:	003c                	addi	a5,sp,8
   1709a:	97ca                	add	a5,a5,s2
   1709c:	0007c583          	lbu	a1,0(a5)
   170a0:	445c                	lw	a5,12(s0)
   170a2:	fff7871b          	addiw	a4,a5,-1
   170a6:	c458                	sw	a4,12(s0)
   170a8:	00075763          	bgez	a4,170b6 <__fputwc+0x9a>
   170ac:	541c                	lw	a5,40(s0)
   170ae:	00f74c63          	blt	a4,a5,170c6 <__fputwc+0xaa>
   170b2:	01658a63          	beq	a1,s6,170c6 <__fputwc+0xaa>
   170b6:	601c                	ld	a5,0(s0)
   170b8:	00178713          	addi	a4,a5,1
   170bc:	e018                	sd	a4,0(s0)
   170be:	00b78023          	sb	a1,0(a5)
   170c2:	0905                	addi	s2,s2,1
   170c4:	bf49                	j	17056 <__fputwc+0x3a>
   170c6:	8622                	mv	a2,s0
   170c8:	8552                	mv	a0,s4
   170ca:	238010ef          	jal	ra,18302 <__swbuf_r>
   170ce:	ff551ae3          	bne	a0,s5,170c2 <__fputwc+0xa6>
   170d2:	b7c9                	j	17094 <__fputwc+0x78>

00000000000170d4 <_fputwc_r>:
   170d4:	01061783          	lh	a5,16(a2)
   170d8:	03279713          	slli	a4,a5,0x32
   170dc:	00074c63          	bltz	a4,170f4 <_fputwc_r+0x20>
   170e0:	0ac62703          	lw	a4,172(a2)
   170e4:	6689                	lui	a3,0x2
   170e6:	8fd5                	or	a5,a5,a3
   170e8:	00f61823          	sh	a5,16(a2)
   170ec:	6789                	lui	a5,0x2
   170ee:	8fd9                	or	a5,a5,a4
   170f0:	0af62623          	sw	a5,172(a2)
   170f4:	f29ff06f          	j	1701c <__fputwc>

00000000000170f8 <fputwc>:
   170f8:	7179                	addi	sp,sp,-48
   170fa:	f022                	sd	s0,32(sp)
   170fc:	8301b403          	ld	s0,-2000(gp) # 1c9b8 <_impure_ptr>
   17100:	ec26                	sd	s1,24(sp)
   17102:	f406                	sd	ra,40(sp)
   17104:	84aa                	mv	s1,a0
   17106:	862e                	mv	a2,a1
   17108:	c801                	beqz	s0,17118 <fputwc+0x20>
   1710a:	483c                	lw	a5,80(s0)
   1710c:	e791                	bnez	a5,17118 <fputwc+0x20>
   1710e:	8522                	mv	a0,s0
   17110:	e42e                	sd	a1,8(sp)
   17112:	aecfb0ef          	jal	ra,123fe <__sinit>
   17116:	6622                	ld	a2,8(sp)
   17118:	8522                	mv	a0,s0
   1711a:	7402                	ld	s0,32(sp)
   1711c:	70a2                	ld	ra,40(sp)
   1711e:	85a6                	mv	a1,s1
   17120:	64e2                	ld	s1,24(sp)
   17122:	6145                	addi	sp,sp,48
   17124:	fb1ff06f          	j	170d4 <_fputwc_r>

0000000000017128 <_fstat_r>:
   17128:	1101                	addi	sp,sp,-32
   1712a:	e822                	sd	s0,16(sp)
   1712c:	e426                	sd	s1,8(sp)
   1712e:	84aa                	mv	s1,a0
   17130:	852e                	mv	a0,a1
   17132:	85b2                	mv	a1,a2
   17134:	ec06                	sd	ra,24(sp)
   17136:	8e01a023          	sw	zero,-1824(gp) # 1ca68 <errno>
   1713a:	350010ef          	jal	ra,1848a <_fstat>
   1713e:	57fd                	li	a5,-1
   17140:	00f51663          	bne	a0,a5,1714c <_fstat_r+0x24>
   17144:	8e01a783          	lw	a5,-1824(gp) # 1ca68 <errno>
   17148:	c391                	beqz	a5,1714c <_fstat_r+0x24>
   1714a:	c09c                	sw	a5,0(s1)
   1714c:	60e2                	ld	ra,24(sp)
   1714e:	6442                	ld	s0,16(sp)
   17150:	64a2                	ld	s1,8(sp)
   17152:	6105                	addi	sp,sp,32
   17154:	8082                	ret

0000000000017156 <__sfvwrite_r>:
   17156:	6a1c                	ld	a5,16(a2)
   17158:	e781                	bnez	a5,17160 <__sfvwrite_r+0xa>
   1715a:	4781                	li	a5,0
   1715c:	853e                	mv	a0,a5
   1715e:	8082                	ret
   17160:	0105d783          	lhu	a5,16(a1)
   17164:	7119                	addi	sp,sp,-128
   17166:	f8a2                	sd	s0,112(sp)
   17168:	f0ca                	sd	s2,96(sp)
   1716a:	e8d2                	sd	s4,80(sp)
   1716c:	fc86                	sd	ra,120(sp)
   1716e:	f4a6                	sd	s1,104(sp)
   17170:	ecce                	sd	s3,88(sp)
   17172:	e4d6                	sd	s5,72(sp)
   17174:	e0da                	sd	s6,64(sp)
   17176:	fc5e                	sd	s7,56(sp)
   17178:	f862                	sd	s8,48(sp)
   1717a:	f466                	sd	s9,40(sp)
   1717c:	f06a                	sd	s10,32(sp)
   1717e:	ec6e                	sd	s11,24(sp)
   17180:	8ba1                	andi	a5,a5,8
   17182:	8a32                	mv	s4,a2
   17184:	842e                	mv	s0,a1
   17186:	892a                	mv	s2,a0
   17188:	cfd1                	beqz	a5,17224 <__sfvwrite_r+0xce>
   1718a:	6d9c                	ld	a5,24(a1)
   1718c:	cfc1                	beqz	a5,17224 <__sfvwrite_r+0xce>
   1718e:	01045783          	lhu	a5,16(s0)
   17192:	000a3983          	ld	s3,0(s4)
   17196:	0027f713          	andi	a4,a5,2
   1719a:	0e071863          	bnez	a4,1728a <__sfvwrite_r+0x134>
   1719e:	8b85                	andi	a5,a5,1
   171a0:	4a81                	li	s5,0
   171a2:	16078463          	beqz	a5,1730a <__sfvwrite_r+0x1b4>
   171a6:	4501                	li	a0,0
   171a8:	4b81                	li	s7,0
   171aa:	4b01                	li	s6,0
   171ac:	240b0863          	beqz	s6,173fc <__sfvwrite_r+0x2a6>
   171b0:	e919                	bnez	a0,171c6 <__sfvwrite_r+0x70>
   171b2:	865a                	mv	a2,s6
   171b4:	45a9                	li	a1,10
   171b6:	855e                	mv	a0,s7
   171b8:	fa9fc0ef          	jal	ra,14160 <memchr>
   171bc:	24050763          	beqz	a0,1740a <__sfvwrite_r+0x2b4>
   171c0:	0505                	addi	a0,a0,1
   171c2:	41750abb          	subw	s5,a0,s7
   171c6:	8c56                	mv	s8,s5
   171c8:	015b7363          	bleu	s5,s6,171ce <__sfvwrite_r+0x78>
   171cc:	8c5a                	mv	s8,s6
   171ce:	6008                	ld	a0,0(s0)
   171d0:	6c1c                	ld	a5,24(s0)
   171d2:	5014                	lw	a3,32(s0)
   171d4:	22a7fe63          	bleu	a0,a5,17410 <__sfvwrite_r+0x2ba>
   171d8:	4444                	lw	s1,12(s0)
   171da:	9cb5                	addw	s1,s1,a3
   171dc:	2384da63          	ble	s8,s1,17410 <__sfvwrite_r+0x2ba>
   171e0:	85de                	mv	a1,s7
   171e2:	8626                	mv	a2,s1
   171e4:	376000ef          	jal	ra,1755a <memmove>
   171e8:	601c                	ld	a5,0(s0)
   171ea:	85a2                	mv	a1,s0
   171ec:	854a                	mv	a0,s2
   171ee:	97a6                	add	a5,a5,s1
   171f0:	e01c                	sd	a5,0(s0)
   171f2:	8f4fb0ef          	jal	ra,122e6 <_fflush_r>
   171f6:	10051263          	bnez	a0,172fa <__sfvwrite_r+0x1a4>
   171fa:	409a8abb          	subw	s5,s5,s1
   171fe:	4505                	li	a0,1
   17200:	000a9763          	bnez	s5,1720e <__sfvwrite_r+0xb8>
   17204:	85a2                	mv	a1,s0
   17206:	854a                	mv	a0,s2
   17208:	8defb0ef          	jal	ra,122e6 <_fflush_r>
   1720c:	e57d                	bnez	a0,172fa <__sfvwrite_r+0x1a4>
   1720e:	010a3783          	ld	a5,16(s4)
   17212:	9ba6                	add	s7,s7,s1
   17214:	409b0b33          	sub	s6,s6,s1
   17218:	409784b3          	sub	s1,a5,s1
   1721c:	009a3823          	sd	s1,16(s4)
   17220:	f4d1                	bnez	s1,171ac <__sfvwrite_r+0x56>
   17222:	a099                	j	17268 <__sfvwrite_r+0x112>
   17224:	85a2                	mv	a1,s0
   17226:	854a                	mv	a0,s2
   17228:	d71fa0ef          	jal	ra,11f98 <__swsetup_r>
   1722c:	57fd                	li	a5,-1
   1722e:	d125                	beqz	a0,1718e <__sfvwrite_r+0x38>
   17230:	a82d                	j	1726a <__sfvwrite_r+0x114>
   17232:	0009ba83          	ld	s5,0(s3)
   17236:	0089b483          	ld	s1,8(s3)
   1723a:	09c1                	addi	s3,s3,16
   1723c:	d8fd                	beqz	s1,17232 <__sfvwrite_r+0xdc>
   1723e:	86a6                	mv	a3,s1
   17240:	009b7363          	bleu	s1,s6,17246 <__sfvwrite_r+0xf0>
   17244:	86da                	mv	a3,s6
   17246:	603c                	ld	a5,64(s0)
   17248:	780c                	ld	a1,48(s0)
   1724a:	2681                	sext.w	a3,a3
   1724c:	8656                	mv	a2,s5
   1724e:	854a                	mv	a0,s2
   17250:	9782                	jalr	a5
   17252:	0aa05463          	blez	a0,172fa <__sfvwrite_r+0x1a4>
   17256:	010a3783          	ld	a5,16(s4)
   1725a:	9aaa                	add	s5,s5,a0
   1725c:	8c89                	sub	s1,s1,a0
   1725e:	40a78533          	sub	a0,a5,a0
   17262:	00aa3823          	sd	a0,16(s4)
   17266:	f979                	bnez	a0,1723c <__sfvwrite_r+0xe6>
   17268:	4781                	li	a5,0
   1726a:	70e6                	ld	ra,120(sp)
   1726c:	7446                	ld	s0,112(sp)
   1726e:	74a6                	ld	s1,104(sp)
   17270:	7906                	ld	s2,96(sp)
   17272:	69e6                	ld	s3,88(sp)
   17274:	6a46                	ld	s4,80(sp)
   17276:	6aa6                	ld	s5,72(sp)
   17278:	6b06                	ld	s6,64(sp)
   1727a:	7be2                	ld	s7,56(sp)
   1727c:	7c42                	ld	s8,48(sp)
   1727e:	7ca2                	ld	s9,40(sp)
   17280:	7d02                	ld	s10,32(sp)
   17282:	6de2                	ld	s11,24(sp)
   17284:	853e                	mv	a0,a5
   17286:	6109                	addi	sp,sp,128
   17288:	8082                	ret
   1728a:	80000b37          	lui	s6,0x80000
   1728e:	4a81                	li	s5,0
   17290:	4481                	li	s1,0
   17292:	c00b4b13          	xori	s6,s6,-1024
   17296:	b75d                	j	1723c <__sfvwrite_r+0xe6>
   17298:	0009ba83          	ld	s5,0(s3)
   1729c:	0089bd03          	ld	s10,8(s3)
   172a0:	09c1                	addi	s3,s3,16
   172a2:	4444                	lw	s1,12(s0)
   172a4:	87a6                	mv	a5,s1
   172a6:	fe0d09e3          	beqz	s10,17298 <__sfvwrite_r+0x142>
   172aa:	01045703          	lhu	a4,16(s0)
   172ae:	6008                	ld	a0,0(s0)
   172b0:	20077693          	andi	a3,a4,512
   172b4:	0e068863          	beqz	a3,173a4 <__sfvwrite_r+0x24e>
   172b8:	089d6963          	bltu	s10,s1,1734a <__sfvwrite_r+0x1f4>
   172bc:	48077693          	andi	a3,a4,1152
   172c0:	c6c9                	beqz	a3,1734a <__sfvwrite_r+0x1f4>
   172c2:	5004                	lw	s1,32(s0)
   172c4:	6c0c                	ld	a1,24(s0)
   172c6:	029c04bb          	mulw	s1,s8,s1
   172ca:	8d0d                	sub	a0,a0,a1
   172cc:	00050d9b          	sext.w	s11,a0
   172d0:	001d8793          	addi	a5,s11,1
   172d4:	97ea                	add	a5,a5,s10
   172d6:	0394c4bb          	divw	s1,s1,s9
   172da:	00f4f563          	bleu	a5,s1,172e4 <__sfvwrite_r+0x18e>
   172de:	2505                	addiw	a0,a0,1
   172e0:	01a504bb          	addw	s1,a0,s10
   172e4:	40077713          	andi	a4,a4,1024
   172e8:	cf49                	beqz	a4,17382 <__sfvwrite_r+0x22c>
   172ea:	85a6                	mv	a1,s1
   172ec:	854a                	mv	a0,s2
   172ee:	854f90ef          	jal	ra,10342 <_malloc_r>
   172f2:	e515                	bnez	a0,1731e <__sfvwrite_r+0x1c8>
   172f4:	47b1                	li	a5,12
   172f6:	00f92023          	sw	a5,0(s2)
   172fa:	01045783          	lhu	a5,16(s0)
   172fe:	0407e793          	ori	a5,a5,64
   17302:	00f41823          	sh	a5,16(s0)
   17306:	57fd                	li	a5,-1
   17308:	b78d                	j	1726a <__sfvwrite_r+0x114>
   1730a:	80000b37          	lui	s6,0x80000
   1730e:	ffeb4b93          	xori	s7,s6,-2
   17312:	4d01                	li	s10,0
   17314:	fffb4b13          	not	s6,s6
   17318:	4c0d                	li	s8,3
   1731a:	4c89                	li	s9,2
   1731c:	b759                	j	172a2 <__sfvwrite_r+0x14c>
   1731e:	6c0c                	ld	a1,24(s0)
   17320:	866e                	mv	a2,s11
   17322:	e42a                	sd	a0,8(sp)
   17324:	178000ef          	jal	ra,1749c <memcpy>
   17328:	01045703          	lhu	a4,16(s0)
   1732c:	67a2                	ld	a5,8(sp)
   1732e:	b7f77713          	andi	a4,a4,-1153
   17332:	08076713          	ori	a4,a4,128
   17336:	00e41823          	sh	a4,16(s0)
   1733a:	ec1c                	sd	a5,24(s0)
   1733c:	d004                	sw	s1,32(s0)
   1733e:	97ee                	add	a5,a5,s11
   17340:	41b484bb          	subw	s1,s1,s11
   17344:	e01c                	sd	a5,0(s0)
   17346:	c444                	sw	s1,12(s0)
   17348:	87ea                	mv	a5,s10
   1734a:	84ea                	mv	s1,s10
   1734c:	00fd7363          	bleu	a5,s10,17352 <__sfvwrite_r+0x1fc>
   17350:	87ea                	mv	a5,s10
   17352:	6008                	ld	a0,0(s0)
   17354:	863e                	mv	a2,a5
   17356:	85d6                	mv	a1,s5
   17358:	e43e                	sd	a5,8(sp)
   1735a:	200000ef          	jal	ra,1755a <memmove>
   1735e:	4458                	lw	a4,12(s0)
   17360:	67a2                	ld	a5,8(sp)
   17362:	9f1d                	subw	a4,a4,a5
   17364:	c458                	sw	a4,12(s0)
   17366:	6018                	ld	a4,0(s0)
   17368:	97ba                	add	a5,a5,a4
   1736a:	e01c                	sd	a5,0(s0)
   1736c:	010a3783          	ld	a5,16(s4)
   17370:	9aa6                	add	s5,s5,s1
   17372:	409d0d33          	sub	s10,s10,s1
   17376:	409784b3          	sub	s1,a5,s1
   1737a:	009a3823          	sd	s1,16(s4)
   1737e:	f095                	bnez	s1,172a2 <__sfvwrite_r+0x14c>
   17380:	b5e5                	j	17268 <__sfvwrite_r+0x112>
   17382:	8626                	mv	a2,s1
   17384:	854a                	mv	a0,s2
   17386:	242000ef          	jal	ra,175c8 <_realloc_r>
   1738a:	87aa                	mv	a5,a0
   1738c:	f55d                	bnez	a0,1733a <__sfvwrite_r+0x1e4>
   1738e:	6c0c                	ld	a1,24(s0)
   17390:	854a                	mv	a0,s2
   17392:	a3cfb0ef          	jal	ra,125ce <_free_r>
   17396:	01045783          	lhu	a5,16(s0)
   1739a:	f7f7f793          	andi	a5,a5,-129
   1739e:	00f41823          	sh	a5,16(s0)
   173a2:	bf89                	j	172f4 <__sfvwrite_r+0x19e>
   173a4:	6c1c                	ld	a5,24(s0)
   173a6:	00a7e563          	bltu	a5,a0,173b0 <__sfvwrite_r+0x25a>
   173aa:	5014                	lw	a3,32(s0)
   173ac:	02dd7763          	bleu	a3,s10,173da <__sfvwrite_r+0x284>
   173b0:	009d7363          	bleu	s1,s10,173b6 <__sfvwrite_r+0x260>
   173b4:	84ea                	mv	s1,s10
   173b6:	8626                	mv	a2,s1
   173b8:	85d6                	mv	a1,s5
   173ba:	1a0000ef          	jal	ra,1755a <memmove>
   173be:	445c                	lw	a5,12(s0)
   173c0:	4097873b          	subw	a4,a5,s1
   173c4:	601c                	ld	a5,0(s0)
   173c6:	c458                	sw	a4,12(s0)
   173c8:	97a6                	add	a5,a5,s1
   173ca:	e01c                	sd	a5,0(s0)
   173cc:	f345                	bnez	a4,1736c <__sfvwrite_r+0x216>
   173ce:	85a2                	mv	a1,s0
   173d0:	854a                	mv	a0,s2
   173d2:	f15fa0ef          	jal	ra,122e6 <_fflush_r>
   173d6:	d959                	beqz	a0,1736c <__sfvwrite_r+0x216>
   173d8:	b70d                	j	172fa <__sfvwrite_r+0x1a4>
   173da:	87da                	mv	a5,s6
   173dc:	01abe363          	bltu	s7,s10,173e2 <__sfvwrite_r+0x28c>
   173e0:	87ea                	mv	a5,s10
   173e2:	02d7c7bb          	divw	a5,a5,a3
   173e6:	6038                	ld	a4,64(s0)
   173e8:	780c                	ld	a1,48(s0)
   173ea:	8656                	mv	a2,s5
   173ec:	854a                	mv	a0,s2
   173ee:	02d786bb          	mulw	a3,a5,a3
   173f2:	9702                	jalr	a4
   173f4:	84aa                	mv	s1,a0
   173f6:	f6a04be3          	bgtz	a0,1736c <__sfvwrite_r+0x216>
   173fa:	b701                	j	172fa <__sfvwrite_r+0x1a4>
   173fc:	0009bb83          	ld	s7,0(s3)
   17400:	0089bb03          	ld	s6,8(s3)
   17404:	4501                	li	a0,0
   17406:	09c1                	addi	s3,s3,16
   17408:	b355                	j	171ac <__sfvwrite_r+0x56>
   1740a:	001b0a9b          	addiw	s5,s6,1
   1740e:	bb65                	j	171c6 <__sfvwrite_r+0x70>
   17410:	00dc4b63          	blt	s8,a3,17426 <__sfvwrite_r+0x2d0>
   17414:	603c                	ld	a5,64(s0)
   17416:	780c                	ld	a1,48(s0)
   17418:	865e                	mv	a2,s7
   1741a:	854a                	mv	a0,s2
   1741c:	9782                	jalr	a5
   1741e:	84aa                	mv	s1,a0
   17420:	dca04de3          	bgtz	a0,171fa <__sfvwrite_r+0xa4>
   17424:	bdd9                	j	172fa <__sfvwrite_r+0x1a4>
   17426:	8662                	mv	a2,s8
   17428:	85de                	mv	a1,s7
   1742a:	130000ef          	jal	ra,1755a <memmove>
   1742e:	445c                	lw	a5,12(s0)
   17430:	84e2                	mv	s1,s8
   17432:	418787bb          	subw	a5,a5,s8
   17436:	c45c                	sw	a5,12(s0)
   17438:	601c                	ld	a5,0(s0)
   1743a:	97e2                	add	a5,a5,s8
   1743c:	e01c                	sd	a5,0(s0)
   1743e:	bb75                	j	171fa <__sfvwrite_r+0xa4>

0000000000017440 <_isatty_r>:
   17440:	1101                	addi	sp,sp,-32
   17442:	e822                	sd	s0,16(sp)
   17444:	e426                	sd	s1,8(sp)
   17446:	84aa                	mv	s1,a0
   17448:	852e                	mv	a0,a1
   1744a:	ec06                	sd	ra,24(sp)
   1744c:	8e01a023          	sw	zero,-1824(gp) # 1ca68 <errno>
   17450:	07e010ef          	jal	ra,184ce <_isatty>
   17454:	57fd                	li	a5,-1
   17456:	00f51663          	bne	a0,a5,17462 <_isatty_r+0x22>
   1745a:	8e01a783          	lw	a5,-1824(gp) # 1ca68 <errno>
   1745e:	c391                	beqz	a5,17462 <_isatty_r+0x22>
   17460:	c09c                	sw	a5,0(s1)
   17462:	60e2                	ld	ra,24(sp)
   17464:	6442                	ld	s0,16(sp)
   17466:	64a2                	ld	s1,8(sp)
   17468:	6105                	addi	sp,sp,32
   1746a:	8082                	ret

000000000001746c <_lseek_r>:
   1746c:	1101                	addi	sp,sp,-32
   1746e:	e822                	sd	s0,16(sp)
   17470:	e426                	sd	s1,8(sp)
   17472:	84aa                	mv	s1,a0
   17474:	852e                	mv	a0,a1
   17476:	85b2                	mv	a1,a2
   17478:	8636                	mv	a2,a3
   1747a:	ec06                	sd	ra,24(sp)
   1747c:	8e01a023          	sw	zero,-1824(gp) # 1ca68 <errno>
   17480:	06c010ef          	jal	ra,184ec <_lseek>
   17484:	57fd                	li	a5,-1
   17486:	00f51663          	bne	a0,a5,17492 <_lseek_r+0x26>
   1748a:	8e01a783          	lw	a5,-1824(gp) # 1ca68 <errno>
   1748e:	c391                	beqz	a5,17492 <_lseek_r+0x26>
   17490:	c09c                	sw	a5,0(s1)
   17492:	60e2                	ld	ra,24(sp)
   17494:	6442                	ld	s0,16(sp)
   17496:	64a2                	ld	s1,8(sp)
   17498:	6105                	addi	sp,sp,32
   1749a:	8082                	ret

000000000001749c <memcpy>:
   1749c:	00a5c7b3          	xor	a5,a1,a0
   174a0:	8b9d                	andi	a5,a5,7
   174a2:	00c50733          	add	a4,a0,a2
   174a6:	e781                	bnez	a5,174ae <memcpy+0x12>
   174a8:	479d                	li	a5,7
   174aa:	00c7ef63          	bltu	a5,a2,174c8 <memcpy+0x2c>
   174ae:	87aa                	mv	a5,a0
   174b0:	00e56963          	bltu	a0,a4,174c2 <memcpy+0x26>
   174b4:	8082                	ret
   174b6:	0005c683          	lbu	a3,0(a1)
   174ba:	0785                	addi	a5,a5,1
   174bc:	0585                	addi	a1,a1,1
   174be:	fed78fa3          	sb	a3,-1(a5) # 1fff <main-0xe0b1>
   174c2:	fee7eae3          	bltu	a5,a4,174b6 <memcpy+0x1a>
   174c6:	8082                	ret
   174c8:	00757793          	andi	a5,a0,7
   174cc:	ebbd                	bnez	a5,17542 <memcpy+0xa6>
   174ce:	87aa                	mv	a5,a0
   174d0:	ff877693          	andi	a3,a4,-8
   174d4:	fc068613          	addi	a2,a3,-64 # 1fc0 <main-0xe0f0>
   174d8:	06c7fc63          	bleu	a2,a5,17550 <memcpy+0xb4>
   174dc:	0005b383          	ld	t2,0(a1)
   174e0:	0085b283          	ld	t0,8(a1)
   174e4:	0105bf83          	ld	t6,16(a1)
   174e8:	0185bf03          	ld	t5,24(a1)
   174ec:	0205be83          	ld	t4,32(a1)
   174f0:	0285be03          	ld	t3,40(a1)
   174f4:	0305b303          	ld	t1,48(a1)
   174f8:	0385b883          	ld	a7,56(a1)
   174fc:	04858593          	addi	a1,a1,72
   17500:	04878793          	addi	a5,a5,72
   17504:	ff85b803          	ld	a6,-8(a1)
   17508:	fa77bc23          	sd	t2,-72(a5)
   1750c:	fc57b023          	sd	t0,-64(a5)
   17510:	fdf7b423          	sd	t6,-56(a5)
   17514:	fde7b823          	sd	t5,-48(a5)
   17518:	fdd7bc23          	sd	t4,-40(a5)
   1751c:	ffc7b023          	sd	t3,-32(a5)
   17520:	fe67b423          	sd	t1,-24(a5)
   17524:	ff17b823          	sd	a7,-16(a5)
   17528:	ff07bc23          	sd	a6,-8(a5)
   1752c:	b775                	j	174d8 <memcpy+0x3c>
   1752e:	0005c683          	lbu	a3,0(a1)
   17532:	0785                	addi	a5,a5,1
   17534:	0585                	addi	a1,a1,1
   17536:	fed78fa3          	sb	a3,-1(a5)
   1753a:	0077f693          	andi	a3,a5,7
   1753e:	fae5                	bnez	a3,1752e <memcpy+0x92>
   17540:	bf41                	j	174d0 <memcpy+0x34>
   17542:	87aa                	mv	a5,a0
   17544:	bfdd                	j	1753a <memcpy+0x9e>
   17546:	6190                	ld	a2,0(a1)
   17548:	07a1                	addi	a5,a5,8
   1754a:	05a1                	addi	a1,a1,8
   1754c:	fec7bc23          	sd	a2,-8(a5)
   17550:	fed7ebe3          	bltu	a5,a3,17546 <memcpy+0xaa>
   17554:	f6e7e7e3          	bltu	a5,a4,174c2 <memcpy+0x26>
   17558:	8082                	ret

000000000001755a <memmove>:
   1755a:	00c50733          	add	a4,a0,a2
   1755e:	00a5e663          	bltu	a1,a0,1756a <memmove+0x10>
   17562:	87aa                	mv	a5,a0
   17564:	02e79363          	bne	a5,a4,1758a <memmove+0x30>
   17568:	8082                	ret
   1756a:	00c587b3          	add	a5,a1,a2
   1756e:	8e1d                	sub	a2,a2,a5
   17570:	fef579e3          	bleu	a5,a0,17562 <memmove+0x8>
   17574:	00c786b3          	add	a3,a5,a2
   17578:	e291                	bnez	a3,1757c <memmove+0x22>
   1757a:	8082                	ret
   1757c:	17fd                	addi	a5,a5,-1
   1757e:	0007c683          	lbu	a3,0(a5)
   17582:	177d                	addi	a4,a4,-1
   17584:	00d70023          	sb	a3,0(a4)
   17588:	b7f5                	j	17574 <memmove+0x1a>
   1758a:	0585                	addi	a1,a1,1
   1758c:	fff5c683          	lbu	a3,-1(a1)
   17590:	0785                	addi	a5,a5,1
   17592:	fed78fa3          	sb	a3,-1(a5)
   17596:	b7f9                	j	17564 <memmove+0xa>

0000000000017598 <_read_r>:
   17598:	1101                	addi	sp,sp,-32
   1759a:	e822                	sd	s0,16(sp)
   1759c:	e426                	sd	s1,8(sp)
   1759e:	84aa                	mv	s1,a0
   175a0:	852e                	mv	a0,a1
   175a2:	85b2                	mv	a1,a2
   175a4:	8636                	mv	a2,a3
   175a6:	ec06                	sd	ra,24(sp)
   175a8:	8e01a023          	sw	zero,-1824(gp) # 1ca68 <errno>
   175ac:	771000ef          	jal	ra,1851c <_read>
   175b0:	57fd                	li	a5,-1
   175b2:	00f51663          	bne	a0,a5,175be <_read_r+0x26>
   175b6:	8e01a783          	lw	a5,-1824(gp) # 1ca68 <errno>
   175ba:	c391                	beqz	a5,175be <_read_r+0x26>
   175bc:	c09c                	sw	a5,0(s1)
   175be:	60e2                	ld	ra,24(sp)
   175c0:	6442                	ld	s0,16(sp)
   175c2:	64a2                	ld	s1,8(sp)
   175c4:	6105                	addi	sp,sp,32
   175c6:	8082                	ret

00000000000175c8 <_realloc_r>:
   175c8:	711d                	addi	sp,sp,-96
   175ca:	e8a2                	sd	s0,80(sp)
   175cc:	ec86                	sd	ra,88(sp)
   175ce:	842e                	mv	s0,a1
   175d0:	e4a6                	sd	s1,72(sp)
   175d2:	e0ca                	sd	s2,64(sp)
   175d4:	fc4e                	sd	s3,56(sp)
   175d6:	f852                	sd	s4,48(sp)
   175d8:	f456                	sd	s5,40(sp)
   175da:	f05a                	sd	s6,32(sp)
   175dc:	ec5e                	sd	s7,24(sp)
   175de:	e862                	sd	s8,16(sp)
   175e0:	85b2                	mv	a1,a2
   175e2:	ec11                	bnez	s0,175fe <_realloc_r+0x36>
   175e4:	6446                	ld	s0,80(sp)
   175e6:	60e6                	ld	ra,88(sp)
   175e8:	64a6                	ld	s1,72(sp)
   175ea:	6906                	ld	s2,64(sp)
   175ec:	79e2                	ld	s3,56(sp)
   175ee:	7a42                	ld	s4,48(sp)
   175f0:	7aa2                	ld	s5,40(sp)
   175f2:	7b02                	ld	s6,32(sp)
   175f4:	6be2                	ld	s7,24(sp)
   175f6:	6c42                	ld	s8,16(sp)
   175f8:	6125                	addi	sp,sp,96
   175fa:	d49f806f          	j	10342 <_malloc_r>
   175fe:	8aaa                	mv	s5,a0
   17600:	e432                	sd	a2,8(sp)
   17602:	acaf90ef          	jal	ra,108cc <__malloc_lock>
   17606:	65a2                	ld	a1,8(sp)
   17608:	ff843683          	ld	a3,-8(s0)
   1760c:	02e00793          	li	a5,46
   17610:	01758993          	addi	s3,a1,23
   17614:	ff040b93          	addi	s7,s0,-16
   17618:	ffc6f913          	andi	s2,a3,-4
   1761c:	0337fb63          	bleu	s3,a5,17652 <_realloc_r+0x8a>
   17620:	800007b7          	lui	a5,0x80000
   17624:	ff09fb13          	andi	s6,s3,-16
   17628:	fff7c793          	not	a5,a5
   1762c:	0367f563          	bleu	s6,a5,17656 <_realloc_r+0x8e>
   17630:	47b1                	li	a5,12
   17632:	00faa023          	sw	a5,0(s5)
   17636:	4a01                	li	s4,0
   17638:	60e6                	ld	ra,88(sp)
   1763a:	6446                	ld	s0,80(sp)
   1763c:	8552                	mv	a0,s4
   1763e:	64a6                	ld	s1,72(sp)
   17640:	6906                	ld	s2,64(sp)
   17642:	79e2                	ld	s3,56(sp)
   17644:	7a42                	ld	s4,48(sp)
   17646:	7aa2                	ld	s5,40(sp)
   17648:	7b02                	ld	s6,32(sp)
   1764a:	6be2                	ld	s7,24(sp)
   1764c:	6c42                	ld	s8,16(sp)
   1764e:	6125                	addi	sp,sp,96
   17650:	8082                	ret
   17652:	02000b13          	li	s6,32
   17656:	fcbb6de3          	bltu	s6,a1,17630 <_realloc_r+0x68>
   1765a:	33695163          	ble	s6,s2,1797c <_realloc_r+0x3b4>
   1765e:	6c71                	lui	s8,0x1c
   17660:	fd0c0713          	addi	a4,s8,-48 # 1bfd0 <__malloc_av_>
   17664:	6b10                	ld	a2,16(a4)
   17666:	012b87b3          	add	a5,s7,s2
   1766a:	6798                	ld	a4,8(a5)
   1766c:	fd0c0c13          	addi	s8,s8,-48
   17670:	00f60863          	beq	a2,a5,17680 <_realloc_r+0xb8>
   17674:	ffe77513          	andi	a0,a4,-2
   17678:	953e                	add	a0,a0,a5
   1767a:	6508                	ld	a0,8(a0)
   1767c:	8905                	andi	a0,a0,1
   1767e:	e559                	bnez	a0,1770c <_realloc_r+0x144>
   17680:	9b71                	andi	a4,a4,-4
   17682:	00e909b3          	add	s3,s2,a4
   17686:	02f61c63          	bne	a2,a5,176be <_realloc_r+0xf6>
   1768a:	020b0513          	addi	a0,s6,32 # ffffffff80000020 <__global_pointer$+0xffffffff7ffe2e98>
   1768e:	08a9c163          	blt	s3,a0,17710 <_realloc_r+0x148>
   17692:	9bda                	add	s7,s7,s6
   17694:	416989b3          	sub	s3,s3,s6
   17698:	017c3823          	sd	s7,16(s8)
   1769c:	0019e993          	ori	s3,s3,1
   176a0:	013bb423          	sd	s3,8(s7)
   176a4:	ff843983          	ld	s3,-8(s0)
   176a8:	8556                	mv	a0,s5
   176aa:	8a22                	mv	s4,s0
   176ac:	0019f993          	andi	s3,s3,1
   176b0:	0169e9b3          	or	s3,s3,s6
   176b4:	ff343c23          	sd	s3,-8(s0)
   176b8:	a16f90ef          	jal	ra,108ce <__malloc_unlock>
   176bc:	bfb5                	j	17638 <_realloc_r+0x70>
   176be:	0569c963          	blt	s3,s6,17710 <_realloc_r+0x148>
   176c2:	6f98                	ld	a4,24(a5)
   176c4:	6b9c                	ld	a5,16(a5)
   176c6:	ef98                	sd	a4,24(a5)
   176c8:	eb1c                	sd	a5,16(a4)
   176ca:	008bb703          	ld	a4,8(s7)
   176ce:	416986b3          	sub	a3,s3,s6
   176d2:	467d                	li	a2,31
   176d4:	8b05                	andi	a4,a4,1
   176d6:	013b87b3          	add	a5,s7,s3
   176da:	2ad67363          	bleu	a3,a2,17980 <_realloc_r+0x3b8>
   176de:	00eb69b3          	or	s3,s6,a4
   176e2:	013bb423          	sd	s3,8(s7)
   176e6:	016b85b3          	add	a1,s7,s6
   176ea:	0016e693          	ori	a3,a3,1
   176ee:	e594                	sd	a3,8(a1)
   176f0:	6798                	ld	a4,8(a5)
   176f2:	05c1                	addi	a1,a1,16
   176f4:	8556                	mv	a0,s5
   176f6:	00176713          	ori	a4,a4,1
   176fa:	e798                	sd	a4,8(a5)
   176fc:	ed3fa0ef          	jal	ra,125ce <_free_r>
   17700:	8556                	mv	a0,s5
   17702:	9ccf90ef          	jal	ra,108ce <__malloc_unlock>
   17706:	010b8a13          	addi	s4,s7,16
   1770a:	b73d                	j	17638 <_realloc_r+0x70>
   1770c:	4701                	li	a4,0
   1770e:	4781                	li	a5,0
   17710:	8a85                	andi	a3,a3,1
   17712:	1c069563          	bnez	a3,178dc <_realloc_r+0x314>
   17716:	ff043483          	ld	s1,-16(s0)
   1771a:	409b84b3          	sub	s1,s7,s1
   1771e:	0084ba03          	ld	s4,8(s1)
   17722:	ffca7a13          	andi	s4,s4,-4
   17726:	9a4a                	add	s4,s4,s2
   17728:	12078c63          	beqz	a5,17860 <_realloc_r+0x298>
   1772c:	014709b3          	add	s3,a4,s4
   17730:	0af61663          	bne	a2,a5,177dc <_realloc_r+0x214>
   17734:	020b0793          	addi	a5,s6,32
   17738:	12f9c463          	blt	s3,a5,17860 <_realloc_r+0x298>
   1773c:	6898                	ld	a4,16(s1)
   1773e:	6c9c                	ld	a5,24(s1)
   17740:	ff890613          	addi	a2,s2,-8
   17744:	01048a13          	addi	s4,s1,16
   17748:	ef1c                	sd	a5,24(a4)
   1774a:	eb98                	sd	a4,16(a5)
   1774c:	04800713          	li	a4,72
   17750:	08c76163          	bltu	a4,a2,177d2 <_realloc_r+0x20a>
   17754:	02700693          	li	a3,39
   17758:	87d2                	mv	a5,s4
   1775a:	00c6fd63          	bleu	a2,a3,17774 <_realloc_r+0x1ac>
   1775e:	601c                	ld	a5,0(s0)
   17760:	e89c                	sd	a5,16(s1)
   17762:	641c                	ld	a5,8(s0)
   17764:	ec9c                	sd	a5,24(s1)
   17766:	03700793          	li	a5,55
   1776a:	02c7ef63          	bltu	a5,a2,177a8 <_realloc_r+0x1e0>
   1776e:	0441                	addi	s0,s0,16
   17770:	02048793          	addi	a5,s1,32
   17774:	6018                	ld	a4,0(s0)
   17776:	e398                	sd	a4,0(a5)
   17778:	6418                	ld	a4,8(s0)
   1777a:	e798                	sd	a4,8(a5)
   1777c:	6818                	ld	a4,16(s0)
   1777e:	eb98                	sd	a4,16(a5)
   17780:	016487b3          	add	a5,s1,s6
   17784:	416989b3          	sub	s3,s3,s6
   17788:	00fc3823          	sd	a5,16(s8)
   1778c:	0019e993          	ori	s3,s3,1
   17790:	0137b423          	sd	s3,8(a5) # ffffffff80000008 <__global_pointer$+0xffffffff7ffe2e80>
   17794:	649c                	ld	a5,8(s1)
   17796:	8b85                	andi	a5,a5,1
   17798:	0167e9b3          	or	s3,a5,s6
   1779c:	0134b423          	sd	s3,8(s1)
   177a0:	8556                	mv	a0,s5
   177a2:	92cf90ef          	jal	ra,108ce <__malloc_unlock>
   177a6:	bd49                	j	17638 <_realloc_r+0x70>
   177a8:	681c                	ld	a5,16(s0)
   177aa:	f09c                	sd	a5,32(s1)
   177ac:	6c1c                	ld	a5,24(s0)
   177ae:	f49c                	sd	a5,40(s1)
   177b0:	00e60763          	beq	a2,a4,177be <_realloc_r+0x1f6>
   177b4:	02040413          	addi	s0,s0,32
   177b8:	03048793          	addi	a5,s1,48
   177bc:	bf65                	j	17774 <_realloc_r+0x1ac>
   177be:	701c                	ld	a5,32(s0)
   177c0:	03040413          	addi	s0,s0,48
   177c4:	f89c                	sd	a5,48(s1)
   177c6:	ff843703          	ld	a4,-8(s0)
   177ca:	04048793          	addi	a5,s1,64
   177ce:	fc98                	sd	a4,56(s1)
   177d0:	b755                	j	17774 <_realloc_r+0x1ac>
   177d2:	85a2                	mv	a1,s0
   177d4:	8552                	mv	a0,s4
   177d6:	d85ff0ef          	jal	ra,1755a <memmove>
   177da:	b75d                	j	17780 <_realloc_r+0x1b8>
   177dc:	0969c263          	blt	s3,s6,17860 <_realloc_r+0x298>
   177e0:	6f98                	ld	a4,24(a5)
   177e2:	6b9c                	ld	a5,16(a5)
   177e4:	ff890613          	addi	a2,s2,-8
   177e8:	01048513          	addi	a0,s1,16
   177ec:	ef98                	sd	a4,24(a5)
   177ee:	eb1c                	sd	a5,16(a4)
   177f0:	6898                	ld	a4,16(s1)
   177f2:	6c9c                	ld	a5,24(s1)
   177f4:	ef1c                	sd	a5,24(a4)
   177f6:	eb98                	sd	a4,16(a5)
   177f8:	04800793          	li	a5,72
   177fc:	04c7ee63          	bltu	a5,a2,17858 <_realloc_r+0x290>
   17800:	02700713          	li	a4,39
   17804:	00c77d63          	bleu	a2,a4,1781e <_realloc_r+0x256>
   17808:	6018                	ld	a4,0(s0)
   1780a:	e898                	sd	a4,16(s1)
   1780c:	6418                	ld	a4,8(s0)
   1780e:	ec98                	sd	a4,24(s1)
   17810:	03700713          	li	a4,55
   17814:	00c76d63          	bltu	a4,a2,1782e <_realloc_r+0x266>
   17818:	0441                	addi	s0,s0,16
   1781a:	02048513          	addi	a0,s1,32
   1781e:	601c                	ld	a5,0(s0)
   17820:	e11c                	sd	a5,0(a0)
   17822:	641c                	ld	a5,8(s0)
   17824:	e51c                	sd	a5,8(a0)
   17826:	681c                	ld	a5,16(s0)
   17828:	e91c                	sd	a5,16(a0)
   1782a:	8ba6                	mv	s7,s1
   1782c:	bd79                	j	176ca <_realloc_r+0x102>
   1782e:	6818                	ld	a4,16(s0)
   17830:	f098                	sd	a4,32(s1)
   17832:	6c18                	ld	a4,24(s0)
   17834:	f498                	sd	a4,40(s1)
   17836:	00f60763          	beq	a2,a5,17844 <_realloc_r+0x27c>
   1783a:	02040413          	addi	s0,s0,32
   1783e:	03048513          	addi	a0,s1,48
   17842:	bff1                	j	1781e <_realloc_r+0x256>
   17844:	701c                	ld	a5,32(s0)
   17846:	04048513          	addi	a0,s1,64
   1784a:	03040413          	addi	s0,s0,48
   1784e:	f89c                	sd	a5,48(s1)
   17850:	ff843783          	ld	a5,-8(s0)
   17854:	fc9c                	sd	a5,56(s1)
   17856:	b7e1                	j	1781e <_realloc_r+0x256>
   17858:	85a2                	mv	a1,s0
   1785a:	d01ff0ef          	jal	ra,1755a <memmove>
   1785e:	b7f1                	j	1782a <_realloc_r+0x262>
   17860:	076a4e63          	blt	s4,s6,178dc <_realloc_r+0x314>
   17864:	6c9c                	ld	a5,24(s1)
   17866:	6898                	ld	a4,16(s1)
   17868:	ff890613          	addi	a2,s2,-8
   1786c:	01048513          	addi	a0,s1,16
   17870:	ef1c                	sd	a5,24(a4)
   17872:	eb98                	sd	a4,16(a5)
   17874:	04800793          	li	a5,72
   17878:	04c7ee63          	bltu	a5,a2,178d4 <_realloc_r+0x30c>
   1787c:	02700713          	li	a4,39
   17880:	00c77d63          	bleu	a2,a4,1789a <_realloc_r+0x2d2>
   17884:	6018                	ld	a4,0(s0)
   17886:	e898                	sd	a4,16(s1)
   17888:	6418                	ld	a4,8(s0)
   1788a:	ec98                	sd	a4,24(s1)
   1788c:	03700713          	li	a4,55
   17890:	00c76d63          	bltu	a4,a2,178aa <_realloc_r+0x2e2>
   17894:	0441                	addi	s0,s0,16
   17896:	02048513          	addi	a0,s1,32
   1789a:	601c                	ld	a5,0(s0)
   1789c:	e11c                	sd	a5,0(a0)
   1789e:	641c                	ld	a5,8(s0)
   178a0:	e51c                	sd	a5,8(a0)
   178a2:	681c                	ld	a5,16(s0)
   178a4:	e91c                	sd	a5,16(a0)
   178a6:	89d2                	mv	s3,s4
   178a8:	b749                	j	1782a <_realloc_r+0x262>
   178aa:	6818                	ld	a4,16(s0)
   178ac:	f098                	sd	a4,32(s1)
   178ae:	6c18                	ld	a4,24(s0)
   178b0:	f498                	sd	a4,40(s1)
   178b2:	00f60763          	beq	a2,a5,178c0 <_realloc_r+0x2f8>
   178b6:	02040413          	addi	s0,s0,32
   178ba:	03048513          	addi	a0,s1,48
   178be:	bff1                	j	1789a <_realloc_r+0x2d2>
   178c0:	701c                	ld	a5,32(s0)
   178c2:	04048513          	addi	a0,s1,64
   178c6:	03040413          	addi	s0,s0,48
   178ca:	f89c                	sd	a5,48(s1)
   178cc:	ff843783          	ld	a5,-8(s0)
   178d0:	fc9c                	sd	a5,56(s1)
   178d2:	b7e1                	j	1789a <_realloc_r+0x2d2>
   178d4:	85a2                	mv	a1,s0
   178d6:	c85ff0ef          	jal	ra,1755a <memmove>
   178da:	b7f1                	j	178a6 <_realloc_r+0x2de>
   178dc:	8556                	mv	a0,s5
   178de:	a65f80ef          	jal	ra,10342 <_malloc_r>
   178e2:	8a2a                	mv	s4,a0
   178e4:	ea050ee3          	beqz	a0,177a0 <_realloc_r+0x1d8>
   178e8:	ff843783          	ld	a5,-8(s0)
   178ec:	ff050713          	addi	a4,a0,-16
   178f0:	9bf9                	andi	a5,a5,-2
   178f2:	97de                	add	a5,a5,s7
   178f4:	00e79863          	bne	a5,a4,17904 <_realloc_r+0x33c>
   178f8:	ff853983          	ld	s3,-8(a0)
   178fc:	ffc9f993          	andi	s3,s3,-4
   17900:	99ca                	add	s3,s3,s2
   17902:	b3e1                	j	176ca <_realloc_r+0x102>
   17904:	ff890613          	addi	a2,s2,-8
   17908:	04800793          	li	a5,72
   1790c:	06c7e463          	bltu	a5,a2,17974 <_realloc_r+0x3ac>
   17910:	02700713          	li	a4,39
   17914:	04c77d63          	bleu	a2,a4,1796e <_realloc_r+0x3a6>
   17918:	6018                	ld	a4,0(s0)
   1791a:	e118                	sd	a4,0(a0)
   1791c:	6418                	ld	a4,8(s0)
   1791e:	e518                	sd	a4,8(a0)
   17920:	03700713          	li	a4,55
   17924:	02c76163          	bltu	a4,a2,17946 <_realloc_r+0x37e>
   17928:	01040713          	addi	a4,s0,16
   1792c:	01050793          	addi	a5,a0,16
   17930:	6314                	ld	a3,0(a4)
   17932:	e394                	sd	a3,0(a5)
   17934:	6714                	ld	a3,8(a4)
   17936:	e794                	sd	a3,8(a5)
   17938:	6b18                	ld	a4,16(a4)
   1793a:	eb98                	sd	a4,16(a5)
   1793c:	85a2                	mv	a1,s0
   1793e:	8556                	mv	a0,s5
   17940:	c8ffa0ef          	jal	ra,125ce <_free_r>
   17944:	bdb1                	j	177a0 <_realloc_r+0x1d8>
   17946:	6818                	ld	a4,16(s0)
   17948:	e918                	sd	a4,16(a0)
   1794a:	6c18                	ld	a4,24(s0)
   1794c:	ed18                	sd	a4,24(a0)
   1794e:	00f60763          	beq	a2,a5,1795c <_realloc_r+0x394>
   17952:	02040713          	addi	a4,s0,32
   17956:	02050793          	addi	a5,a0,32
   1795a:	bfd9                	j	17930 <_realloc_r+0x368>
   1795c:	701c                	ld	a5,32(s0)
   1795e:	03040713          	addi	a4,s0,48
   17962:	f11c                	sd	a5,32(a0)
   17964:	7414                	ld	a3,40(s0)
   17966:	03050793          	addi	a5,a0,48
   1796a:	f514                	sd	a3,40(a0)
   1796c:	b7d1                	j	17930 <_realloc_r+0x368>
   1796e:	87aa                	mv	a5,a0
   17970:	8722                	mv	a4,s0
   17972:	bf7d                	j	17930 <_realloc_r+0x368>
   17974:	85a2                	mv	a1,s0
   17976:	be5ff0ef          	jal	ra,1755a <memmove>
   1797a:	b7c9                	j	1793c <_realloc_r+0x374>
   1797c:	89ca                	mv	s3,s2
   1797e:	b3b1                	j	176ca <_realloc_r+0x102>
   17980:	00e9e9b3          	or	s3,s3,a4
   17984:	013bb423          	sd	s3,8(s7)
   17988:	6798                	ld	a4,8(a5)
   1798a:	00176713          	ori	a4,a4,1
   1798e:	e798                	sd	a4,8(a5)
   17990:	bb85                	j	17700 <_realloc_r+0x138>

0000000000017992 <__ssprint_r>:
   17992:	6a1c                	ld	a5,16(a2)
   17994:	711d                	addi	sp,sp,-96
   17996:	fc4e                	sd	s3,56(sp)
   17998:	ec86                	sd	ra,88(sp)
   1799a:	e8a2                	sd	s0,80(sp)
   1799c:	e4a6                	sd	s1,72(sp)
   1799e:	e0ca                	sd	s2,64(sp)
   179a0:	f852                	sd	s4,48(sp)
   179a2:	f456                	sd	s5,40(sp)
   179a4:	f05a                	sd	s6,32(sp)
   179a6:	ec5e                	sd	s7,24(sp)
   179a8:	e862                	sd	s8,16(sp)
   179aa:	e466                	sd	s9,8(sp)
   179ac:	e06a                	sd	s10,0(sp)
   179ae:	89b2                	mv	s3,a2
   179b0:	c7fd                	beqz	a5,17a9e <__ssprint_r+0x10c>
   179b2:	00063b03          	ld	s6,0(a2)
   179b6:	8a2a                	mv	s4,a0
   179b8:	842e                	mv	s0,a1
   179ba:	4a81                	li	s5,0
   179bc:	4901                	li	s2,0
   179be:	4b8d                	li	s7,3
   179c0:	4c09                	li	s8,2
   179c2:	06090663          	beqz	s2,17a2e <__ssprint_r+0x9c>
   179c6:	00c42d03          	lw	s10,12(s0)
   179ca:	09a96f63          	bltu	s2,s10,17a68 <__ssprint_r+0xd6>
   179ce:	01045703          	lhu	a4,16(s0)
   179d2:	48077793          	andi	a5,a4,1152
   179d6:	cbc9                	beqz	a5,17a68 <__ssprint_r+0xd6>
   179d8:	5004                	lw	s1,32(s0)
   179da:	6c0c                	ld	a1,24(s0)
   179dc:	601c                	ld	a5,0(s0)
   179de:	029b84bb          	mulw	s1,s7,s1
   179e2:	8f8d                	sub	a5,a5,a1
   179e4:	00078c9b          	sext.w	s9,a5
   179e8:	001c8693          	addi	a3,s9,1
   179ec:	96ca                	add	a3,a3,s2
   179ee:	0384c4bb          	divw	s1,s1,s8
   179f2:	00d4f663          	bleu	a3,s1,179fe <__ssprint_r+0x6c>
   179f6:	0017849b          	addiw	s1,a5,1
   179fa:	012484bb          	addw	s1,s1,s2
   179fe:	40077713          	andi	a4,a4,1024
   17a02:	cf5d                	beqz	a4,17ac0 <__ssprint_r+0x12e>
   17a04:	85a6                	mv	a1,s1
   17a06:	8552                	mv	a0,s4
   17a08:	93bf80ef          	jal	ra,10342 <_malloc_r>
   17a0c:	8d2a                	mv	s10,a0
   17a0e:	e515                	bnez	a0,17a3a <__ssprint_r+0xa8>
   17a10:	47b1                	li	a5,12
   17a12:	00fa2023          	sw	a5,0(s4)
   17a16:	01045783          	lhu	a5,16(s0)
   17a1a:	557d                	li	a0,-1
   17a1c:	0407e793          	ori	a5,a5,64
   17a20:	00f41823          	sh	a5,16(s0)
   17a24:	0009b823          	sd	zero,16(s3)
   17a28:	0009a423          	sw	zero,8(s3)
   17a2c:	a8a5                	j	17aa4 <__ssprint_r+0x112>
   17a2e:	000b3a83          	ld	s5,0(s6)
   17a32:	008b3903          	ld	s2,8(s6)
   17a36:	0b41                	addi	s6,s6,16
   17a38:	b769                	j	179c2 <__ssprint_r+0x30>
   17a3a:	6c0c                	ld	a1,24(s0)
   17a3c:	8666                	mv	a2,s9
   17a3e:	a5fff0ef          	jal	ra,1749c <memcpy>
   17a42:	01045783          	lhu	a5,16(s0)
   17a46:	b7f7f793          	andi	a5,a5,-1153
   17a4a:	0807e793          	ori	a5,a5,128
   17a4e:	00f41823          	sh	a5,16(s0)
   17a52:	01a43c23          	sd	s10,24(s0)
   17a56:	d004                	sw	s1,32(s0)
   17a58:	9d66                	add	s10,s10,s9
   17a5a:	419484bb          	subw	s1,s1,s9
   17a5e:	01a43023          	sd	s10,0(s0)
   17a62:	c444                	sw	s1,12(s0)
   17a64:	00090d1b          	sext.w	s10,s2
   17a68:	0009049b          	sext.w	s1,s2
   17a6c:	01a97363          	bleu	s10,s2,17a72 <__ssprint_r+0xe0>
   17a70:	8d26                	mv	s10,s1
   17a72:	6008                	ld	a0,0(s0)
   17a74:	866a                	mv	a2,s10
   17a76:	85d6                	mv	a1,s5
   17a78:	ae3ff0ef          	jal	ra,1755a <memmove>
   17a7c:	445c                	lw	a5,12(s0)
   17a7e:	9aa6                	add	s5,s5,s1
   17a80:	40990933          	sub	s2,s2,s1
   17a84:	41a787bb          	subw	a5,a5,s10
   17a88:	c45c                	sw	a5,12(s0)
   17a8a:	601c                	ld	a5,0(s0)
   17a8c:	9d3e                	add	s10,s10,a5
   17a8e:	0109b783          	ld	a5,16(s3)
   17a92:	01a43023          	sd	s10,0(s0)
   17a96:	8f85                	sub	a5,a5,s1
   17a98:	00f9b823          	sd	a5,16(s3)
   17a9c:	f39d                	bnez	a5,179c2 <__ssprint_r+0x30>
   17a9e:	0009a423          	sw	zero,8(s3)
   17aa2:	4501                	li	a0,0
   17aa4:	60e6                	ld	ra,88(sp)
   17aa6:	6446                	ld	s0,80(sp)
   17aa8:	64a6                	ld	s1,72(sp)
   17aaa:	6906                	ld	s2,64(sp)
   17aac:	79e2                	ld	s3,56(sp)
   17aae:	7a42                	ld	s4,48(sp)
   17ab0:	7aa2                	ld	s5,40(sp)
   17ab2:	7b02                	ld	s6,32(sp)
   17ab4:	6be2                	ld	s7,24(sp)
   17ab6:	6c42                	ld	s8,16(sp)
   17ab8:	6ca2                	ld	s9,8(sp)
   17aba:	6d02                	ld	s10,0(sp)
   17abc:	6125                	addi	sp,sp,96
   17abe:	8082                	ret
   17ac0:	8626                	mv	a2,s1
   17ac2:	8552                	mv	a0,s4
   17ac4:	b05ff0ef          	jal	ra,175c8 <_realloc_r>
   17ac8:	8d2a                	mv	s10,a0
   17aca:	f541                	bnez	a0,17a52 <__ssprint_r+0xc0>
   17acc:	6c0c                	ld	a1,24(s0)
   17ace:	8552                	mv	a0,s4
   17ad0:	afffa0ef          	jal	ra,125ce <_free_r>
   17ad4:	bf35                	j	17a10 <__ssprint_r+0x7e>

0000000000017ad6 <_svfiprintf_r>:
   17ad6:	0105d783          	lhu	a5,16(a1)
   17ada:	7141                	addi	sp,sp,-496
   17adc:	efa6                	sd	s1,472(sp)
   17ade:	ebca                	sd	s2,464(sp)
   17ae0:	e7ce                	sd	s3,456(sp)
   17ae2:	ff56                	sd	s5,440(sp)
   17ae4:	f786                	sd	ra,488(sp)
   17ae6:	f3a2                	sd	s0,480(sp)
   17ae8:	e3d2                	sd	s4,448(sp)
   17aea:	fb5a                	sd	s6,432(sp)
   17aec:	f75e                	sd	s7,424(sp)
   17aee:	f362                	sd	s8,416(sp)
   17af0:	ef66                	sd	s9,408(sp)
   17af2:	eb6a                	sd	s10,400(sp)
   17af4:	e76e                	sd	s11,392(sp)
   17af6:	0807f793          	andi	a5,a5,128
   17afa:	892a                	mv	s2,a0
   17afc:	84ae                	mv	s1,a1
   17afe:	8ab2                	mv	s5,a2
   17b00:	89b6                	mv	s3,a3
   17b02:	c395                	beqz	a5,17b26 <_svfiprintf_r+0x50>
   17b04:	6d9c                	ld	a5,24(a1)
   17b06:	e385                	bnez	a5,17b26 <_svfiprintf_r+0x50>
   17b08:	04000593          	li	a1,64
   17b0c:	837f80ef          	jal	ra,10342 <_malloc_r>
   17b10:	e088                	sd	a0,0(s1)
   17b12:	ec88                	sd	a0,24(s1)
   17b14:	e511                	bnez	a0,17b20 <_svfiprintf_r+0x4a>
   17b16:	47b1                	li	a5,12
   17b18:	00f92023          	sw	a5,0(s2)
   17b1c:	5bfd                	li	s7,-1
   17b1e:	a779                	j	182ac <_svfiprintf_r+0x7d6>
   17b20:	04000793          	li	a5,64
   17b24:	d09c                	sw	a5,32(s1)
   17b26:	67e9                	lui	a5,0x1a
   17b28:	5a078793          	addi	a5,a5,1440 # 1a5a0 <_ctype_+0x108>
   17b2c:	e8be                	sd	a5,80(sp)
   17b2e:	67e9                	lui	a5,0x1a
   17b30:	72078793          	addi	a5,a5,1824 # 1a720 <zeroes.4403>
   17b34:	f43e                	sd	a5,40(sp)
   17b36:	67e9                	lui	a5,0x1a
   17b38:	10010b13          	addi	s6,sp,256
   17b3c:	71078793          	addi	a5,a5,1808 # 1a710 <blanks.4402>
   17b40:	e15a                	sd	s6,128(sp)
   17b42:	e902                	sd	zero,144(sp)
   17b44:	c502                	sw	zero,136(sp)
   17b46:	8dda                	mv	s11,s6
   17b48:	f002                	sd	zero,32(sp)
   17b4a:	e802                	sd	zero,16(sp)
   17b4c:	ec02                	sd	zero,24(sp)
   17b4e:	fc02                	sd	zero,56(sp)
   17b50:	4b81                	li	s7,0
   17b52:	f83e                	sd	a5,48(sp)
   17b54:	8456                	mv	s0,s5
   17b56:	02500693          	li	a3,37
   17b5a:	00044783          	lbu	a5,0(s0)
   17b5e:	c399                	beqz	a5,17b64 <_svfiprintf_r+0x8e>
   17b60:	06d79e63          	bne	a5,a3,17bdc <_svfiprintf_r+0x106>
   17b64:	41540a3b          	subw	s4,s0,s5
   17b68:	020a0b63          	beqz	s4,17b9e <_svfiprintf_r+0xc8>
   17b6c:	67ca                	ld	a5,144(sp)
   17b6e:	015db023          	sd	s5,0(s11)
   17b72:	014db423          	sd	s4,8(s11)
   17b76:	97d2                	add	a5,a5,s4
   17b78:	e93e                	sd	a5,144(sp)
   17b7a:	47aa                	lw	a5,136(sp)
   17b7c:	0dc1                	addi	s11,s11,16
   17b7e:	0017869b          	addiw	a3,a5,1
   17b82:	c536                	sw	a3,136(sp)
   17b84:	479d                	li	a5,7
   17b86:	00d7da63          	ble	a3,a5,17b9a <_svfiprintf_r+0xc4>
   17b8a:	0110                	addi	a2,sp,128
   17b8c:	85a6                	mv	a1,s1
   17b8e:	854a                	mv	a0,s2
   17b90:	e03ff0ef          	jal	ra,17992 <__ssprint_r>
   17b94:	70051663          	bnez	a0,182a0 <_svfiprintf_r+0x7ca>
   17b98:	8dda                	mv	s11,s6
   17b9a:	014b8bbb          	addw	s7,s7,s4
   17b9e:	00044783          	lbu	a5,0(s0)
   17ba2:	74078863          	beqz	a5,182f2 <_svfiprintf_r+0x81c>
   17ba6:	00140693          	addi	a3,s0,1
   17baa:	06010ba3          	sb	zero,119(sp)
   17bae:	547d                	li	s0,-1
   17bb0:	4a01                	li	s4,0
   17bb2:	4d01                	li	s10,0
   17bb4:	05a00c93          	li	s9,90
   17bb8:	4c29                	li	s8,10
   17bba:	00168a93          	addi	s5,a3,1
   17bbe:	0006c683          	lbu	a3,0(a3)
   17bc2:	4525                	li	a0,9
   17bc4:	02a00813          	li	a6,42
   17bc8:	fe06861b          	addiw	a2,a3,-32
   17bcc:	60cce263          	bltu	s9,a2,181d0 <_svfiprintf_r+0x6fa>
   17bd0:	67c6                	ld	a5,80(sp)
   17bd2:	1602                	slli	a2,a2,0x20
   17bd4:	8279                	srli	a2,a2,0x1e
   17bd6:	963e                	add	a2,a2,a5
   17bd8:	4210                	lw	a2,0(a2)
   17bda:	8602                	jr	a2
   17bdc:	0405                	addi	s0,s0,1
   17bde:	bfb5                	j	17b5a <_svfiprintf_r+0x84>
   17be0:	0001a637          	lui	a2,0x1a
   17be4:	d7860793          	addi	a5,a2,-648 # 19d78 <zeroes.4441+0x80>
   17be8:	f03e                	sd	a5,32(sp)
   17bea:	00898793          	addi	a5,s3,8
   17bee:	e43e                	sd	a5,8(sp)
   17bf0:	020d7613          	andi	a2,s10,32
   17bf4:	4e060663          	beqz	a2,180e0 <_svfiprintf_r+0x60a>
   17bf8:	0009b983          	ld	s3,0(s3)
   17bfc:	001d7613          	andi	a2,s10,1
   17c00:	ca19                	beqz	a2,17c16 <_svfiprintf_r+0x140>
   17c02:	00098a63          	beqz	s3,17c16 <_svfiprintf_r+0x140>
   17c06:	03000613          	li	a2,48
   17c0a:	06c10c23          	sb	a2,120(sp)
   17c0e:	06d10ca3          	sb	a3,121(sp)
   17c12:	002d6d13          	ori	s10,s10,2
   17c16:	bffd7d13          	andi	s10,s10,-1025
   17c1a:	a4ad                	j	17e84 <_svfiprintf_r+0x3ae>
   17c1c:	854a                	mv	a0,s2
   17c1e:	b40fc0ef          	jal	ra,13f5e <_localeconv_r>
   17c22:	651c                	ld	a5,8(a0)
   17c24:	853e                	mv	a0,a5
   17c26:	fc3e                	sd	a5,56(sp)
   17c28:	af2fd0ef          	jal	ra,14f1a <strlen>
   17c2c:	ec2a                	sd	a0,24(sp)
   17c2e:	854a                	mv	a0,s2
   17c30:	b2efc0ef          	jal	ra,13f5e <_localeconv_r>
   17c34:	691c                	ld	a5,16(a0)
   17c36:	e83e                	sd	a5,16(sp)
   17c38:	67e2                	ld	a5,24(sp)
   17c3a:	cb81                	beqz	a5,17c4a <_svfiprintf_r+0x174>
   17c3c:	67c2                	ld	a5,16(sp)
   17c3e:	c791                	beqz	a5,17c4a <_svfiprintf_r+0x174>
   17c40:	0007c683          	lbu	a3,0(a5)
   17c44:	c299                	beqz	a3,17c4a <_svfiprintf_r+0x174>
   17c46:	400d6d13          	ori	s10,s10,1024
   17c4a:	86d6                	mv	a3,s5
   17c4c:	b7bd                	j	17bba <_svfiprintf_r+0xe4>
   17c4e:	07714683          	lbu	a3,119(sp)
   17c52:	fee5                	bnez	a3,17c4a <_svfiprintf_r+0x174>
   17c54:	02000693          	li	a3,32
   17c58:	06d10ba3          	sb	a3,119(sp)
   17c5c:	b7fd                	j	17c4a <_svfiprintf_r+0x174>
   17c5e:	001d6d13          	ori	s10,s10,1
   17c62:	b7e5                	j	17c4a <_svfiprintf_r+0x174>
   17c64:	0009aa03          	lw	s4,0(s3)
   17c68:	09a1                	addi	s3,s3,8
   17c6a:	fe0a50e3          	bgez	s4,17c4a <_svfiprintf_r+0x174>
   17c6e:	41400a3b          	negw	s4,s4
   17c72:	004d6d13          	ori	s10,s10,4
   17c76:	bfd1                	j	17c4a <_svfiprintf_r+0x174>
   17c78:	02b00693          	li	a3,43
   17c7c:	bff1                	j	17c58 <_svfiprintf_r+0x182>
   17c7e:	000ac683          	lbu	a3,0(s5)
   17c82:	001a8613          	addi	a2,s5,1
   17c86:	03069963          	bne	a3,a6,17cb8 <_svfiprintf_r+0x1e2>
   17c8a:	0009a403          	lw	s0,0(s3)
   17c8e:	00898693          	addi	a3,s3,8
   17c92:	00045363          	bgez	s0,17c98 <_svfiprintf_r+0x1c2>
   17c96:	547d                	li	s0,-1
   17c98:	2401                	sext.w	s0,s0
   17c9a:	89b6                	mv	s3,a3
   17c9c:	8ab2                	mv	s5,a2
   17c9e:	b775                	j	17c4a <_svfiprintf_r+0x174>
   17ca0:	028c043b          	mulw	s0,s8,s0
   17ca4:	0605                	addi	a2,a2,1
   17ca6:	fff64683          	lbu	a3,-1(a2)
   17caa:	9c2d                	addw	s0,s0,a1
   17cac:	fd06859b          	addiw	a1,a3,-48
   17cb0:	feb578e3          	bleu	a1,a0,17ca0 <_svfiprintf_r+0x1ca>
   17cb4:	8ab2                	mv	s5,a2
   17cb6:	bf09                	j	17bc8 <_svfiprintf_r+0xf2>
   17cb8:	4401                	li	s0,0
   17cba:	bfcd                	j	17cac <_svfiprintf_r+0x1d6>
   17cbc:	080d6d13          	ori	s10,s10,128
   17cc0:	b769                	j	17c4a <_svfiprintf_r+0x174>
   17cc2:	8656                	mv	a2,s5
   17cc4:	4a01                	li	s4,0
   17cc6:	034c0a3b          	mulw	s4,s8,s4
   17cca:	fd06869b          	addiw	a3,a3,-48
   17cce:	0605                	addi	a2,a2,1
   17cd0:	01468a3b          	addw	s4,a3,s4
   17cd4:	fff64683          	lbu	a3,-1(a2)
   17cd8:	fd06859b          	addiw	a1,a3,-48
   17cdc:	feb575e3          	bleu	a1,a0,17cc6 <_svfiprintf_r+0x1f0>
   17ce0:	bfd1                	j	17cb4 <_svfiprintf_r+0x1de>
   17ce2:	000ac603          	lbu	a2,0(s5)
   17ce6:	06800693          	li	a3,104
   17cea:	00d61663          	bne	a2,a3,17cf6 <_svfiprintf_r+0x220>
   17cee:	0a85                	addi	s5,s5,1
   17cf0:	200d6d13          	ori	s10,s10,512
   17cf4:	bf99                	j	17c4a <_svfiprintf_r+0x174>
   17cf6:	040d6d13          	ori	s10,s10,64
   17cfa:	bf81                	j	17c4a <_svfiprintf_r+0x174>
   17cfc:	000ac603          	lbu	a2,0(s5)
   17d00:	06c00693          	li	a3,108
   17d04:	00d61663          	bne	a2,a3,17d10 <_svfiprintf_r+0x23a>
   17d08:	0a85                	addi	s5,s5,1
   17d0a:	020d6d13          	ori	s10,s10,32
   17d0e:	bf35                	j	17c4a <_svfiprintf_r+0x174>
   17d10:	010d6d13          	ori	s10,s10,16
   17d14:	bf1d                	j	17c4a <_svfiprintf_r+0x174>
   17d16:	0009a683          	lw	a3,0(s3)
   17d1a:	00898793          	addi	a5,s3,8
   17d1e:	e43e                	sd	a5,8(sp)
   17d20:	08d10c23          	sb	a3,152(sp)
   17d24:	06010ba3          	sb	zero,119(sp)
   17d28:	4405                	li	s0,1
   17d2a:	4981                	li	s3,0
   17d2c:	09810c13          	addi	s8,sp,152
   17d30:	aabd                	j	17eae <_svfiprintf_r+0x3d8>
   17d32:	010d6d13          	ori	s10,s10,16
   17d36:	00898793          	addi	a5,s3,8
   17d3a:	e43e                	sd	a5,8(sp)
   17d3c:	020d7693          	andi	a3,s10,32
   17d40:	ca85                	beqz	a3,17d70 <_svfiprintf_r+0x29a>
   17d42:	0009b983          	ld	s3,0(s3)
   17d46:	0009d863          	bgez	s3,17d56 <_svfiprintf_r+0x280>
   17d4a:	02d00693          	li	a3,45
   17d4e:	413009b3          	neg	s3,s3
   17d52:	06d10ba3          	sb	a3,119(sp)
   17d56:	56fd                	li	a3,-1
   17d58:	3ad41b63          	bne	s0,a3,1810e <_svfiprintf_r+0x638>
   17d5c:	46a5                	li	a3,9
   17d5e:	3d36e563          	bltu	a3,s3,18128 <_svfiprintf_r+0x652>
   17d62:	0309899b          	addiw	s3,s3,48
   17d66:	0f310da3          	sb	s3,251(sp)
   17d6a:	0fb10c13          	addi	s8,sp,251
   17d6e:	a87d                	j	17e2c <_svfiprintf_r+0x356>
   17d70:	010d7693          	andi	a3,s10,16
   17d74:	f6f9                	bnez	a3,17d42 <_svfiprintf_r+0x26c>
   17d76:	040d7693          	andi	a3,s10,64
   17d7a:	c681                	beqz	a3,17d82 <_svfiprintf_r+0x2ac>
   17d7c:	00099983          	lh	s3,0(s3)
   17d80:	b7d9                	j	17d46 <_svfiprintf_r+0x270>
   17d82:	200d7693          	andi	a3,s10,512
   17d86:	c681                	beqz	a3,17d8e <_svfiprintf_r+0x2b8>
   17d88:	00098983          	lb	s3,0(s3)
   17d8c:	bf6d                	j	17d46 <_svfiprintf_r+0x270>
   17d8e:	0009a983          	lw	s3,0(s3)
   17d92:	bf55                	j	17d46 <_svfiprintf_r+0x270>
   17d94:	020d7613          	andi	a2,s10,32
   17d98:	0009b683          	ld	a3,0(s3)
   17d9c:	09a1                	addi	s3,s3,8
   17d9e:	c601                	beqz	a2,17da6 <_svfiprintf_r+0x2d0>
   17da0:	0176b023          	sd	s7,0(a3)
   17da4:	bb45                	j	17b54 <_svfiprintf_r+0x7e>
   17da6:	010d7613          	andi	a2,s10,16
   17daa:	fa7d                	bnez	a2,17da0 <_svfiprintf_r+0x2ca>
   17dac:	040d7613          	andi	a2,s10,64
   17db0:	c601                	beqz	a2,17db8 <_svfiprintf_r+0x2e2>
   17db2:	01769023          	sh	s7,0(a3)
   17db6:	bb79                	j	17b54 <_svfiprintf_r+0x7e>
   17db8:	200d7793          	andi	a5,s10,512
   17dbc:	c781                	beqz	a5,17dc4 <_svfiprintf_r+0x2ee>
   17dbe:	01768023          	sb	s7,0(a3)
   17dc2:	bb49                	j	17b54 <_svfiprintf_r+0x7e>
   17dc4:	0176a023          	sw	s7,0(a3)
   17dc8:	b371                	j	17b54 <_svfiprintf_r+0x7e>
   17dca:	010d6d13          	ori	s10,s10,16
   17dce:	00898793          	addi	a5,s3,8
   17dd2:	e43e                	sd	a5,8(sp)
   17dd4:	020d7693          	andi	a3,s10,32
   17dd8:	ceb9                	beqz	a3,17e36 <_svfiprintf_r+0x360>
   17dda:	0009b983          	ld	s3,0(s3)
   17dde:	bffd7d13          	andi	s10,s10,-1025
   17de2:	4601                	li	a2,0
   17de4:	06010ba3          	sb	zero,119(sp)
   17de8:	56fd                	li	a3,-1
   17dea:	85ea                	mv	a1,s10
   17dec:	32d41363          	bne	s0,a3,18112 <_svfiprintf_r+0x63c>
   17df0:	4685                	li	a3,1
   17df2:	f6d605e3          	beq	a2,a3,17d5c <_svfiprintf_r+0x286>
   17df6:	4689                	li	a3,2
   17df8:	3ad60063          	beq	a2,a3,18198 <_svfiprintf_r+0x6c2>
   17dfc:	19f0                	addi	a2,sp,252
   17dfe:	0079f593          	andi	a1,s3,7
   17e02:	03058593          	addi	a1,a1,48
   17e06:	feb60fa3          	sb	a1,-1(a2)
   17e0a:	0039d993          	srli	s3,s3,0x3
   17e0e:	fff60c13          	addi	s8,a2,-1
   17e12:	30099963          	bnez	s3,18124 <_svfiprintf_r+0x64e>
   17e16:	001d7513          	andi	a0,s10,1
   17e1a:	c909                	beqz	a0,17e2c <_svfiprintf_r+0x356>
   17e1c:	03000513          	li	a0,48
   17e20:	00a58663          	beq	a1,a0,17e2c <_svfiprintf_r+0x356>
   17e24:	feac0fa3          	sb	a0,-1(s8)
   17e28:	ffe60c13          	addi	s8,a2,-2
   17e2c:	89a2                	mv	s3,s0
   17e2e:	19e0                	addi	s0,sp,252
   17e30:	4184043b          	subw	s0,s0,s8
   17e34:	a8ad                	j	17eae <_svfiprintf_r+0x3d8>
   17e36:	010d7693          	andi	a3,s10,16
   17e3a:	f2c5                	bnez	a3,17dda <_svfiprintf_r+0x304>
   17e3c:	040d7693          	andi	a3,s10,64
   17e40:	0009a983          	lw	s3,0(s3)
   17e44:	c689                	beqz	a3,17e4e <_svfiprintf_r+0x378>
   17e46:	19c2                	slli	s3,s3,0x30
   17e48:	0309d993          	srli	s3,s3,0x30
   17e4c:	bf49                	j	17dde <_svfiprintf_r+0x308>
   17e4e:	200d7693          	andi	a3,s10,512
   17e52:	c681                	beqz	a3,17e5a <_svfiprintf_r+0x384>
   17e54:	0ff9f993          	andi	s3,s3,255
   17e58:	b759                	j	17dde <_svfiprintf_r+0x308>
   17e5a:	1982                	slli	s3,s3,0x20
   17e5c:	0209d993          	srli	s3,s3,0x20
   17e60:	bfbd                	j	17dde <_svfiprintf_r+0x308>
   17e62:	76e1                	lui	a3,0xffff8
   17e64:	8306c693          	xori	a3,a3,-2000
   17e68:	00898793          	addi	a5,s3,8
   17e6c:	06d11c23          	sh	a3,120(sp)
   17e70:	0009b983          	ld	s3,0(s3)
   17e74:	0001a6b7          	lui	a3,0x1a
   17e78:	e43e                	sd	a5,8(sp)
   17e7a:	d6068793          	addi	a5,a3,-672 # 19d60 <zeroes.4441+0x68>
   17e7e:	002d6d13          	ori	s10,s10,2
   17e82:	f03e                	sd	a5,32(sp)
   17e84:	4609                	li	a2,2
   17e86:	bfb9                	j	17de4 <_svfiprintf_r+0x30e>
   17e88:	00898793          	addi	a5,s3,8
   17e8c:	e43e                	sd	a5,8(sp)
   17e8e:	06010ba3          	sb	zero,119(sp)
   17e92:	567d                	li	a2,-1
   17e94:	0009bc03          	ld	s8,0(s3)
   17e98:	1ec40663          	beq	s0,a2,18084 <_svfiprintf_r+0x5ae>
   17e9c:	8622                	mv	a2,s0
   17e9e:	4581                	li	a1,0
   17ea0:	8562                	mv	a0,s8
   17ea2:	abefc0ef          	jal	ra,14160 <memchr>
   17ea6:	4981                	li	s3,0
   17ea8:	c119                	beqz	a0,17eae <_svfiprintf_r+0x3d8>
   17eaa:	4185043b          	subw	s0,a0,s8
   17eae:	864e                	mv	a2,s3
   17eb0:	0089d363          	ble	s0,s3,17eb6 <_svfiprintf_r+0x3e0>
   17eb4:	8622                	mv	a2,s0
   17eb6:	07714583          	lbu	a1,119(sp)
   17eba:	00060c9b          	sext.w	s9,a2
   17ebe:	c199                	beqz	a1,17ec4 <_svfiprintf_r+0x3ee>
   17ec0:	00160c9b          	addiw	s9,a2,1
   17ec4:	002d7613          	andi	a2,s10,2
   17ec8:	0006079b          	sext.w	a5,a2
   17ecc:	e0be                	sd	a5,64(sp)
   17ece:	c391                	beqz	a5,17ed2 <_svfiprintf_r+0x3fc>
   17ed0:	2c89                	addiw	s9,s9,2
   17ed2:	084d7793          	andi	a5,s10,132
   17ed6:	e4be                	sd	a5,72(sp)
   17ed8:	e7a1                	bnez	a5,17f20 <_svfiprintf_r+0x44a>
   17eda:	419a083b          	subw	a6,s4,s9
   17ede:	05005163          	blez	a6,17f20 <_svfiprintf_r+0x44a>
   17ee2:	4341                	li	t1,16
   17ee4:	4e1d                	li	t3,7
   17ee6:	45aa                	lw	a1,136(sp)
   17ee8:	77c2                	ld	a5,48(sp)
   17eea:	664a                	ld	a2,144(sp)
   17eec:	0015851b          	addiw	a0,a1,1
   17ef0:	00fdb023          	sd	a5,0(s11)
   17ef4:	85aa                	mv	a1,a0
   17ef6:	010d8893          	addi	a7,s11,16
   17efa:	2f034363          	blt	t1,a6,181e0 <_svfiprintf_r+0x70a>
   17efe:	010db423          	sd	a6,8(s11)
   17f02:	9832                	add	a6,a6,a2
   17f04:	e942                	sd	a6,144(sp)
   17f06:	c52a                	sw	a0,136(sp)
   17f08:	461d                	li	a2,7
   17f0a:	8dc6                	mv	s11,a7
   17f0c:	00a65a63          	ble	a0,a2,17f20 <_svfiprintf_r+0x44a>
   17f10:	0110                	addi	a2,sp,128
   17f12:	85a6                	mv	a1,s1
   17f14:	854a                	mv	a0,s2
   17f16:	a7dff0ef          	jal	ra,17992 <__ssprint_r>
   17f1a:	38051363          	bnez	a0,182a0 <_svfiprintf_r+0x7ca>
   17f1e:	8dda                	mv	s11,s6
   17f20:	07714603          	lbu	a2,119(sp)
   17f24:	ca1d                	beqz	a2,17f5a <_svfiprintf_r+0x484>
   17f26:	07710593          	addi	a1,sp,119
   17f2a:	00bdb023          	sd	a1,0(s11)
   17f2e:	4585                	li	a1,1
   17f30:	462a                	lw	a2,136(sp)
   17f32:	00bdb423          	sd	a1,8(s11)
   17f36:	65ca                	ld	a1,144(sp)
   17f38:	0016051b          	addiw	a0,a2,1
   17f3c:	c52a                	sw	a0,136(sp)
   17f3e:	0585                	addi	a1,a1,1
   17f40:	e92e                	sd	a1,144(sp)
   17f42:	461d                	li	a2,7
   17f44:	0dc1                	addi	s11,s11,16
   17f46:	00a65a63          	ble	a0,a2,17f5a <_svfiprintf_r+0x484>
   17f4a:	0110                	addi	a2,sp,128
   17f4c:	85a6                	mv	a1,s1
   17f4e:	854a                	mv	a0,s2
   17f50:	a43ff0ef          	jal	ra,17992 <__ssprint_r>
   17f54:	34051663          	bnez	a0,182a0 <_svfiprintf_r+0x7ca>
   17f58:	8dda                	mv	s11,s6
   17f5a:	6786                	ld	a5,64(sp)
   17f5c:	cb95                	beqz	a5,17f90 <_svfiprintf_r+0x4ba>
   17f5e:	18ac                	addi	a1,sp,120
   17f60:	00bdb023          	sd	a1,0(s11)
   17f64:	4589                	li	a1,2
   17f66:	462a                	lw	a2,136(sp)
   17f68:	00bdb423          	sd	a1,8(s11)
   17f6c:	65ca                	ld	a1,144(sp)
   17f6e:	0016051b          	addiw	a0,a2,1
   17f72:	c52a                	sw	a0,136(sp)
   17f74:	0589                	addi	a1,a1,2
   17f76:	e92e                	sd	a1,144(sp)
   17f78:	461d                	li	a2,7
   17f7a:	0dc1                	addi	s11,s11,16
   17f7c:	00a65a63          	ble	a0,a2,17f90 <_svfiprintf_r+0x4ba>
   17f80:	0110                	addi	a2,sp,128
   17f82:	85a6                	mv	a1,s1
   17f84:	854a                	mv	a0,s2
   17f86:	a0dff0ef          	jal	ra,17992 <__ssprint_r>
   17f8a:	30051b63          	bnez	a0,182a0 <_svfiprintf_r+0x7ca>
   17f8e:	8dda                	mv	s11,s6
   17f90:	67a6                	ld	a5,72(sp)
   17f92:	08000613          	li	a2,128
   17f96:	04c79563          	bne	a5,a2,17fe0 <_svfiprintf_r+0x50a>
   17f9a:	419a083b          	subw	a6,s4,s9
   17f9e:	05005163          	blez	a6,17fe0 <_svfiprintf_r+0x50a>
   17fa2:	4341                	li	t1,16
   17fa4:	4e1d                	li	t3,7
   17fa6:	45aa                	lw	a1,136(sp)
   17fa8:	77a2                	ld	a5,40(sp)
   17faa:	664a                	ld	a2,144(sp)
   17fac:	0015851b          	addiw	a0,a1,1
   17fb0:	00fdb023          	sd	a5,0(s11)
   17fb4:	85aa                	mv	a1,a0
   17fb6:	010d8893          	addi	a7,s11,16
   17fba:	25034a63          	blt	t1,a6,1820e <_svfiprintf_r+0x738>
   17fbe:	010db423          	sd	a6,8(s11)
   17fc2:	9832                	add	a6,a6,a2
   17fc4:	e942                	sd	a6,144(sp)
   17fc6:	c52a                	sw	a0,136(sp)
   17fc8:	461d                	li	a2,7
   17fca:	8dc6                	mv	s11,a7
   17fcc:	00a65a63          	ble	a0,a2,17fe0 <_svfiprintf_r+0x50a>
   17fd0:	0110                	addi	a2,sp,128
   17fd2:	85a6                	mv	a1,s1
   17fd4:	854a                	mv	a0,s2
   17fd6:	9bdff0ef          	jal	ra,17992 <__ssprint_r>
   17fda:	2c051363          	bnez	a0,182a0 <_svfiprintf_r+0x7ca>
   17fde:	8dda                	mv	s11,s6
   17fe0:	408989bb          	subw	s3,s3,s0
   17fe4:	05305163          	blez	s3,18026 <_svfiprintf_r+0x550>
   17fe8:	48c1                	li	a7,16
   17fea:	431d                	li	t1,7
   17fec:	45aa                	lw	a1,136(sp)
   17fee:	77a2                	ld	a5,40(sp)
   17ff0:	664a                	ld	a2,144(sp)
   17ff2:	0015851b          	addiw	a0,a1,1
   17ff6:	00fdb023          	sd	a5,0(s11)
   17ffa:	85aa                	mv	a1,a0
   17ffc:	010d8813          	addi	a6,s11,16
   18000:	2338ce63          	blt	a7,s3,1823c <_svfiprintf_r+0x766>
   18004:	013db423          	sd	s3,8(s11)
   18008:	99b2                	add	s3,s3,a2
   1800a:	e94e                	sd	s3,144(sp)
   1800c:	c52a                	sw	a0,136(sp)
   1800e:	461d                	li	a2,7
   18010:	8dc2                	mv	s11,a6
   18012:	00a65a63          	ble	a0,a2,18026 <_svfiprintf_r+0x550>
   18016:	0110                	addi	a2,sp,128
   18018:	85a6                	mv	a1,s1
   1801a:	854a                	mv	a0,s2
   1801c:	977ff0ef          	jal	ra,17992 <__ssprint_r>
   18020:	28051063          	bnez	a0,182a0 <_svfiprintf_r+0x7ca>
   18024:	8dda                	mv	s11,s6
   18026:	66ca                	ld	a3,144(sp)
   18028:	008db423          	sd	s0,8(s11)
   1802c:	018db023          	sd	s8,0(s11)
   18030:	9436                	add	s0,s0,a3
   18032:	46aa                	lw	a3,136(sp)
   18034:	e922                	sd	s0,144(sp)
   18036:	010d8713          	addi	a4,s11,16
   1803a:	0016861b          	addiw	a2,a3,1
   1803e:	c532                	sw	a2,136(sp)
   18040:	469d                	li	a3,7
   18042:	00c6da63          	ble	a2,a3,18056 <_svfiprintf_r+0x580>
   18046:	0110                	addi	a2,sp,128
   18048:	85a6                	mv	a1,s1
   1804a:	854a                	mv	a0,s2
   1804c:	947ff0ef          	jal	ra,17992 <__ssprint_r>
   18050:	24051863          	bnez	a0,182a0 <_svfiprintf_r+0x7ca>
   18054:	875a                	mv	a4,s6
   18056:	004d7793          	andi	a5,s10,4
   1805a:	20079663          	bnez	a5,18266 <_svfiprintf_r+0x790>
   1805e:	87d2                	mv	a5,s4
   18060:	019a5363          	ble	s9,s4,18066 <_svfiprintf_r+0x590>
   18064:	87e6                	mv	a5,s9
   18066:	01778bbb          	addw	s7,a5,s7
   1806a:	67ca                	ld	a5,144(sp)
   1806c:	cb81                	beqz	a5,1807c <_svfiprintf_r+0x5a6>
   1806e:	0110                	addi	a2,sp,128
   18070:	85a6                	mv	a1,s1
   18072:	854a                	mv	a0,s2
   18074:	91fff0ef          	jal	ra,17992 <__ssprint_r>
   18078:	22051463          	bnez	a0,182a0 <_svfiprintf_r+0x7ca>
   1807c:	c502                	sw	zero,136(sp)
   1807e:	69a2                	ld	s3,8(sp)
   18080:	8dda                	mv	s11,s6
   18082:	bcc9                	j	17b54 <_svfiprintf_r+0x7e>
   18084:	8562                	mv	a0,s8
   18086:	e95fc0ef          	jal	ra,14f1a <strlen>
   1808a:	0005041b          	sext.w	s0,a0
   1808e:	4981                	li	s3,0
   18090:	bd39                	j	17eae <_svfiprintf_r+0x3d8>
   18092:	010d6d13          	ori	s10,s10,16
   18096:	00898793          	addi	a5,s3,8
   1809a:	e43e                	sd	a5,8(sp)
   1809c:	020d7693          	andi	a3,s10,32
   180a0:	c689                	beqz	a3,180aa <_svfiprintf_r+0x5d4>
   180a2:	0009b983          	ld	s3,0(s3)
   180a6:	4605                	li	a2,1
   180a8:	bb35                	j	17de4 <_svfiprintf_r+0x30e>
   180aa:	010d7693          	andi	a3,s10,16
   180ae:	faf5                	bnez	a3,180a2 <_svfiprintf_r+0x5cc>
   180b0:	040d7693          	andi	a3,s10,64
   180b4:	0009a983          	lw	s3,0(s3)
   180b8:	c689                	beqz	a3,180c2 <_svfiprintf_r+0x5ec>
   180ba:	19c2                	slli	s3,s3,0x30
   180bc:	0309d993          	srli	s3,s3,0x30
   180c0:	b7dd                	j	180a6 <_svfiprintf_r+0x5d0>
   180c2:	200d7693          	andi	a3,s10,512
   180c6:	c681                	beqz	a3,180ce <_svfiprintf_r+0x5f8>
   180c8:	0ff9f993          	andi	s3,s3,255
   180cc:	bfe9                	j	180a6 <_svfiprintf_r+0x5d0>
   180ce:	1982                	slli	s3,s3,0x20
   180d0:	0209d993          	srli	s3,s3,0x20
   180d4:	bfc9                	j	180a6 <_svfiprintf_r+0x5d0>
   180d6:	0001a637          	lui	a2,0x1a
   180da:	d6060793          	addi	a5,a2,-672 # 19d60 <zeroes.4441+0x68>
   180de:	b629                	j	17be8 <_svfiprintf_r+0x112>
   180e0:	010d7613          	andi	a2,s10,16
   180e4:	b0061ae3          	bnez	a2,17bf8 <_svfiprintf_r+0x122>
   180e8:	040d7613          	andi	a2,s10,64
   180ec:	0009a983          	lw	s3,0(s3)
   180f0:	c609                	beqz	a2,180fa <_svfiprintf_r+0x624>
   180f2:	19c2                	slli	s3,s3,0x30
   180f4:	0309d993          	srli	s3,s3,0x30
   180f8:	b611                	j	17bfc <_svfiprintf_r+0x126>
   180fa:	200d7613          	andi	a2,s10,512
   180fe:	c601                	beqz	a2,18106 <_svfiprintf_r+0x630>
   18100:	0ff9f993          	andi	s3,s3,255
   18104:	bce5                	j	17bfc <_svfiprintf_r+0x126>
   18106:	1982                	slli	s3,s3,0x20
   18108:	0209d993          	srli	s3,s3,0x20
   1810c:	bcc5                	j	17bfc <_svfiprintf_r+0x126>
   1810e:	85ea                	mv	a1,s10
   18110:	4605                	li	a2,1
   18112:	f7fd7d13          	andi	s10,s10,-129
   18116:	cc099de3          	bnez	s3,17df0 <_svfiprintf_r+0x31a>
   1811a:	cc59                	beqz	s0,181b8 <_svfiprintf_r+0x6e2>
   1811c:	4685                	li	a3,1
   1811e:	ccd61ce3          	bne	a2,a3,17df6 <_svfiprintf_r+0x320>
   18122:	b181                	j	17d62 <_svfiprintf_r+0x28c>
   18124:	8662                	mv	a2,s8
   18126:	b9e1                	j	17dfe <_svfiprintf_r+0x328>
   18128:	400d7c93          	andi	s9,s10,1024
   1812c:	4601                	li	a2,0
   1812e:	19ec                	addi	a1,sp,252
   18130:	4829                	li	a6,10
   18132:	2c81                	sext.w	s9,s9
   18134:	0ff00893          	li	a7,255
   18138:	4325                	li	t1,9
   1813a:	0309f533          	remu	a0,s3,a6
   1813e:	fff58c13          	addi	s8,a1,-1
   18142:	2605                	addiw	a2,a2,1
   18144:	0305051b          	addiw	a0,a0,48
   18148:	fea58fa3          	sb	a0,-1(a1)
   1814c:	040c8063          	beqz	s9,1818c <_svfiprintf_r+0x6b6>
   18150:	67c2                	ld	a5,16(sp)
   18152:	0007c583          	lbu	a1,0(a5)
   18156:	02c59b63          	bne	a1,a2,1818c <_svfiprintf_r+0x6b6>
   1815a:	03158963          	beq	a1,a7,1818c <_svfiprintf_r+0x6b6>
   1815e:	03337763          	bleu	s3,t1,1818c <_svfiprintf_r+0x6b6>
   18162:	67e2                	ld	a5,24(sp)
   18164:	75e2                	ld	a1,56(sp)
   18166:	ec9a                	sd	t1,88(sp)
   18168:	40fc0c33          	sub	s8,s8,a5
   1816c:	863e                	mv	a2,a5
   1816e:	8562                	mv	a0,s8
   18170:	e4c6                	sd	a7,72(sp)
   18172:	e0c2                	sd	a6,64(sp)
   18174:	db9fc0ef          	jal	ra,14f2c <strncpy>
   18178:	67c2                	ld	a5,16(sp)
   1817a:	4601                	li	a2,0
   1817c:	6806                	ld	a6,64(sp)
   1817e:	0017c583          	lbu	a1,1(a5)
   18182:	68a6                	ld	a7,72(sp)
   18184:	6366                	ld	t1,88(sp)
   18186:	c199                	beqz	a1,1818c <_svfiprintf_r+0x6b6>
   18188:	0785                	addi	a5,a5,1
   1818a:	e83e                	sd	a5,16(sp)
   1818c:	0309d9b3          	divu	s3,s3,a6
   18190:	c8098ee3          	beqz	s3,17e2c <_svfiprintf_r+0x356>
   18194:	85e2                	mv	a1,s8
   18196:	b755                	j	1813a <_svfiprintf_r+0x664>
   18198:	0fc10c13          	addi	s8,sp,252
   1819c:	7782                	ld	a5,32(sp)
   1819e:	00f9f613          	andi	a2,s3,15
   181a2:	1c7d                	addi	s8,s8,-1
   181a4:	963e                	add	a2,a2,a5
   181a6:	00064603          	lbu	a2,0(a2)
   181aa:	0049d993          	srli	s3,s3,0x4
   181ae:	00cc0023          	sb	a2,0(s8)
   181b2:	fe0995e3          	bnez	s3,1819c <_svfiprintf_r+0x6c6>
   181b6:	b99d                	j	17e2c <_svfiprintf_r+0x356>
   181b8:	0fc10c13          	addi	s8,sp,252
   181bc:	c60618e3          	bnez	a2,17e2c <_svfiprintf_r+0x356>
   181c0:	8985                	andi	a1,a1,1
   181c2:	c60585e3          	beqz	a1,17e2c <_svfiprintf_r+0x356>
   181c6:	03000693          	li	a3,48
   181ca:	0ed10da3          	sb	a3,251(sp)
   181ce:	be71                	j	17d6a <_svfiprintf_r+0x294>
   181d0:	12068163          	beqz	a3,182f2 <_svfiprintf_r+0x81c>
   181d4:	08d10c23          	sb	a3,152(sp)
   181d8:	06010ba3          	sb	zero,119(sp)
   181dc:	e44e                	sd	s3,8(sp)
   181de:	b6a9                	j	17d28 <_svfiprintf_r+0x252>
   181e0:	0641                	addi	a2,a2,16
   181e2:	006db423          	sd	t1,8(s11)
   181e6:	e932                	sd	a2,144(sp)
   181e8:	c52e                	sw	a1,136(sp)
   181ea:	00ae5f63          	ble	a0,t3,18208 <_svfiprintf_r+0x732>
   181ee:	0110                	addi	a2,sp,128
   181f0:	85a6                	mv	a1,s1
   181f2:	854a                	mv	a0,s2
   181f4:	f4f2                	sd	t3,104(sp)
   181f6:	f09a                	sd	t1,96(sp)
   181f8:	ecc2                	sd	a6,88(sp)
   181fa:	f98ff0ef          	jal	ra,17992 <__ssprint_r>
   181fe:	e14d                	bnez	a0,182a0 <_svfiprintf_r+0x7ca>
   18200:	7e26                	ld	t3,104(sp)
   18202:	7306                	ld	t1,96(sp)
   18204:	6866                	ld	a6,88(sp)
   18206:	88da                	mv	a7,s6
   18208:	3841                	addiw	a6,a6,-16
   1820a:	8dc6                	mv	s11,a7
   1820c:	b9e9                	j	17ee6 <_svfiprintf_r+0x410>
   1820e:	0641                	addi	a2,a2,16
   18210:	006db423          	sd	t1,8(s11)
   18214:	e932                	sd	a2,144(sp)
   18216:	c52e                	sw	a1,136(sp)
   18218:	00ae5f63          	ble	a0,t3,18236 <_svfiprintf_r+0x760>
   1821c:	0110                	addi	a2,sp,128
   1821e:	85a6                	mv	a1,s1
   18220:	854a                	mv	a0,s2
   18222:	ecf2                	sd	t3,88(sp)
   18224:	e49a                	sd	t1,72(sp)
   18226:	e0c2                	sd	a6,64(sp)
   18228:	f6aff0ef          	jal	ra,17992 <__ssprint_r>
   1822c:	e935                	bnez	a0,182a0 <_svfiprintf_r+0x7ca>
   1822e:	6e66                	ld	t3,88(sp)
   18230:	6326                	ld	t1,72(sp)
   18232:	6806                	ld	a6,64(sp)
   18234:	88da                	mv	a7,s6
   18236:	3841                	addiw	a6,a6,-16
   18238:	8dc6                	mv	s11,a7
   1823a:	b3b5                	j	17fa6 <_svfiprintf_r+0x4d0>
   1823c:	0641                	addi	a2,a2,16
   1823e:	011db423          	sd	a7,8(s11)
   18242:	e932                	sd	a2,144(sp)
   18244:	c52e                	sw	a1,136(sp)
   18246:	00a35d63          	ble	a0,t1,18260 <_svfiprintf_r+0x78a>
   1824a:	0110                	addi	a2,sp,128
   1824c:	85a6                	mv	a1,s1
   1824e:	854a                	mv	a0,s2
   18250:	e49a                	sd	t1,72(sp)
   18252:	e0c6                	sd	a7,64(sp)
   18254:	f3eff0ef          	jal	ra,17992 <__ssprint_r>
   18258:	e521                	bnez	a0,182a0 <_svfiprintf_r+0x7ca>
   1825a:	6326                	ld	t1,72(sp)
   1825c:	6886                	ld	a7,64(sp)
   1825e:	885a                	mv	a6,s6
   18260:	39c1                	addiw	s3,s3,-16
   18262:	8dc2                	mv	s11,a6
   18264:	b361                	j	17fec <_svfiprintf_r+0x516>
   18266:	419a043b          	subw	s0,s4,s9
   1826a:	de805ae3          	blez	s0,1805e <_svfiprintf_r+0x588>
   1826e:	49c1                	li	s3,16
   18270:	4d1d                	li	s10,7
   18272:	46aa                	lw	a3,136(sp)
   18274:	67ca                	ld	a5,144(sp)
   18276:	0016861b          	addiw	a2,a3,1
   1827a:	86b2                	mv	a3,a2
   1827c:	0489c863          	blt	s3,s0,182cc <_svfiprintf_r+0x7f6>
   18280:	76c2                	ld	a3,48(sp)
   18282:	e700                	sd	s0,8(a4)
   18284:	943e                	add	s0,s0,a5
   18286:	e314                	sd	a3,0(a4)
   18288:	e922                	sd	s0,144(sp)
   1828a:	c532                	sw	a2,136(sp)
   1828c:	479d                	li	a5,7
   1828e:	dcc7d8e3          	ble	a2,a5,1805e <_svfiprintf_r+0x588>
   18292:	0110                	addi	a2,sp,128
   18294:	85a6                	mv	a1,s1
   18296:	854a                	mv	a0,s2
   18298:	efaff0ef          	jal	ra,17992 <__ssprint_r>
   1829c:	dc0501e3          	beqz	a0,1805e <_svfiprintf_r+0x588>
   182a0:	0104d783          	lhu	a5,16(s1)
   182a4:	0407f793          	andi	a5,a5,64
   182a8:	86079ae3          	bnez	a5,17b1c <_svfiprintf_r+0x46>
   182ac:	70be                	ld	ra,488(sp)
   182ae:	741e                	ld	s0,480(sp)
   182b0:	855e                	mv	a0,s7
   182b2:	64fe                	ld	s1,472(sp)
   182b4:	695e                	ld	s2,464(sp)
   182b6:	69be                	ld	s3,456(sp)
   182b8:	6a1e                	ld	s4,448(sp)
   182ba:	7afa                	ld	s5,440(sp)
   182bc:	7b5a                	ld	s6,432(sp)
   182be:	7bba                	ld	s7,424(sp)
   182c0:	7c1a                	ld	s8,416(sp)
   182c2:	6cfa                	ld	s9,408(sp)
   182c4:	6d5a                	ld	s10,400(sp)
   182c6:	6dba                	ld	s11,392(sp)
   182c8:	617d                	addi	sp,sp,496
   182ca:	8082                	ret
   182cc:	75c2                	ld	a1,48(sp)
   182ce:	07c1                	addi	a5,a5,16
   182d0:	01373423          	sd	s3,8(a4)
   182d4:	e30c                	sd	a1,0(a4)
   182d6:	e93e                	sd	a5,144(sp)
   182d8:	c536                	sw	a3,136(sp)
   182da:	0741                	addi	a4,a4,16
   182dc:	00cd5963          	ble	a2,s10,182ee <_svfiprintf_r+0x818>
   182e0:	0110                	addi	a2,sp,128
   182e2:	85a6                	mv	a1,s1
   182e4:	854a                	mv	a0,s2
   182e6:	eacff0ef          	jal	ra,17992 <__ssprint_r>
   182ea:	f95d                	bnez	a0,182a0 <_svfiprintf_r+0x7ca>
   182ec:	875a                	mv	a4,s6
   182ee:	3441                	addiw	s0,s0,-16
   182f0:	b749                	j	18272 <_svfiprintf_r+0x79c>
   182f2:	67ca                	ld	a5,144(sp)
   182f4:	d7d5                	beqz	a5,182a0 <_svfiprintf_r+0x7ca>
   182f6:	0110                	addi	a2,sp,128
   182f8:	85a6                	mv	a1,s1
   182fa:	854a                	mv	a0,s2
   182fc:	e96ff0ef          	jal	ra,17992 <__ssprint_r>
   18300:	b745                	j	182a0 <_svfiprintf_r+0x7ca>

0000000000018302 <__swbuf_r>:
   18302:	7179                	addi	sp,sp,-48
   18304:	f022                	sd	s0,32(sp)
   18306:	ec26                	sd	s1,24(sp)
   18308:	e84a                	sd	s2,16(sp)
   1830a:	f406                	sd	ra,40(sp)
   1830c:	e44e                	sd	s3,8(sp)
   1830e:	892a                	mv	s2,a0
   18310:	84ae                	mv	s1,a1
   18312:	8432                	mv	s0,a2
   18314:	c509                	beqz	a0,1831e <__swbuf_r+0x1c>
   18316:	493c                	lw	a5,80(a0)
   18318:	e399                	bnez	a5,1831e <__swbuf_r+0x1c>
   1831a:	8e4fa0ef          	jal	ra,123fe <__sinit>
   1831e:	541c                	lw	a5,40(s0)
   18320:	c45c                	sw	a5,12(s0)
   18322:	01045783          	lhu	a5,16(s0)
   18326:	8ba1                	andi	a5,a5,8
   18328:	c3ad                	beqz	a5,1838a <__swbuf_r+0x88>
   1832a:	6c1c                	ld	a5,24(s0)
   1832c:	cfb9                	beqz	a5,1838a <__swbuf_r+0x88>
   1832e:	01041783          	lh	a5,16(s0)
   18332:	0ff4f993          	andi	s3,s1,255
   18336:	84ce                	mv	s1,s3
   18338:	03279713          	slli	a4,a5,0x32
   1833c:	06075563          	bgez	a4,183a6 <__swbuf_r+0xa4>
   18340:	6c1c                	ld	a5,24(s0)
   18342:	6008                	ld	a0,0(s0)
   18344:	9d1d                	subw	a0,a0,a5
   18346:	501c                	lw	a5,32(s0)
   18348:	00f54763          	blt	a0,a5,18356 <__swbuf_r+0x54>
   1834c:	85a2                	mv	a1,s0
   1834e:	854a                	mv	a0,s2
   18350:	f97f90ef          	jal	ra,122e6 <_fflush_r>
   18354:	e121                	bnez	a0,18394 <__swbuf_r+0x92>
   18356:	445c                	lw	a5,12(s0)
   18358:	2505                	addiw	a0,a0,1
   1835a:	37fd                	addiw	a5,a5,-1
   1835c:	c45c                	sw	a5,12(s0)
   1835e:	601c                	ld	a5,0(s0)
   18360:	00178713          	addi	a4,a5,1
   18364:	e018                	sd	a4,0(s0)
   18366:	01378023          	sb	s3,0(a5)
   1836a:	501c                	lw	a5,32(s0)
   1836c:	00a78963          	beq	a5,a0,1837e <__swbuf_r+0x7c>
   18370:	01045783          	lhu	a5,16(s0)
   18374:	8b85                	andi	a5,a5,1
   18376:	c385                	beqz	a5,18396 <__swbuf_r+0x94>
   18378:	47a9                	li	a5,10
   1837a:	00f49e63          	bne	s1,a5,18396 <__swbuf_r+0x94>
   1837e:	85a2                	mv	a1,s0
   18380:	854a                	mv	a0,s2
   18382:	f65f90ef          	jal	ra,122e6 <_fflush_r>
   18386:	c901                	beqz	a0,18396 <__swbuf_r+0x94>
   18388:	a031                	j	18394 <__swbuf_r+0x92>
   1838a:	85a2                	mv	a1,s0
   1838c:	854a                	mv	a0,s2
   1838e:	c0bf90ef          	jal	ra,11f98 <__swsetup_r>
   18392:	dd51                	beqz	a0,1832e <__swbuf_r+0x2c>
   18394:	54fd                	li	s1,-1
   18396:	70a2                	ld	ra,40(sp)
   18398:	7402                	ld	s0,32(sp)
   1839a:	8526                	mv	a0,s1
   1839c:	6942                	ld	s2,16(sp)
   1839e:	64e2                	ld	s1,24(sp)
   183a0:	69a2                	ld	s3,8(sp)
   183a2:	6145                	addi	sp,sp,48
   183a4:	8082                	ret
   183a6:	6709                	lui	a4,0x2
   183a8:	8fd9                	or	a5,a5,a4
   183aa:	00f41823          	sh	a5,16(s0)
   183ae:	0ac42783          	lw	a5,172(s0)
   183b2:	7779                	lui	a4,0xffffe
   183b4:	177d                	addi	a4,a4,-1
   183b6:	8ff9                	and	a5,a5,a4
   183b8:	0af42623          	sw	a5,172(s0)
   183bc:	b751                	j	18340 <__swbuf_r+0x3e>

00000000000183be <__swbuf>:
   183be:	862e                	mv	a2,a1
   183c0:	85aa                	mv	a1,a0
   183c2:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   183c6:	f3dff06f          	j	18302 <__swbuf_r>

00000000000183ca <_wcrtomb_r>:
   183ca:	8301b783          	ld	a5,-2000(gp) # 1c9b8 <_impure_ptr>
   183ce:	7179                	addi	sp,sp,-48
   183d0:	f022                	sd	s0,32(sp)
   183d2:	ec26                	sd	s1,24(sp)
   183d4:	f406                	sd	ra,40(sp)
   183d6:	842a                	mv	s0,a0
   183d8:	84b6                	mv	s1,a3
   183da:	67bc                	ld	a5,72(a5)
   183dc:	e985                	bnez	a1,1840c <_wcrtomb_r+0x42>
   183de:	e781                	bnez	a5,183e6 <_wcrtomb_r+0x1c>
   183e0:	67f1                	lui	a5,0x1c
   183e2:	7e078793          	addi	a5,a5,2016 # 1c7e0 <__global_locale>
   183e6:	73fc                	ld	a5,224(a5)
   183e8:	86a6                	mv	a3,s1
   183ea:	4601                	li	a2,0
   183ec:	858a                	mv	a1,sp
   183ee:	8522                	mv	a0,s0
   183f0:	9782                	jalr	a5
   183f2:	57fd                	li	a5,-1
   183f4:	00f51763          	bne	a0,a5,18402 <_wcrtomb_r+0x38>
   183f8:	0004a023          	sw	zero,0(s1)
   183fc:	08a00793          	li	a5,138
   18400:	c01c                	sw	a5,0(s0)
   18402:	70a2                	ld	ra,40(sp)
   18404:	7402                	ld	s0,32(sp)
   18406:	64e2                	ld	s1,24(sp)
   18408:	6145                	addi	sp,sp,48
   1840a:	8082                	ret
   1840c:	e781                	bnez	a5,18414 <_wcrtomb_r+0x4a>
   1840e:	67f1                	lui	a5,0x1c
   18410:	7e078793          	addi	a5,a5,2016 # 1c7e0 <__global_locale>
   18414:	73fc                	ld	a5,224(a5)
   18416:	86a6                	mv	a3,s1
   18418:	bfd9                	j	183ee <_wcrtomb_r+0x24>

000000000001841a <wcrtomb>:
   1841a:	86b2                	mv	a3,a2
   1841c:	862e                	mv	a2,a1
   1841e:	85aa                	mv	a1,a0
   18420:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   18424:	fa7ff06f          	j	183ca <_wcrtomb_r>

0000000000018428 <_close>:
   18428:	1141                	addi	sp,sp,-16
   1842a:	e406                	sd	ra,8(sp)
   1842c:	e022                	sd	s0,0(sp)
   1842e:	4581                	li	a1,0
   18430:	4601                	li	a2,0
   18432:	4681                	li	a3,0
   18434:	4701                	li	a4,0
   18436:	4781                	li	a5,0
   18438:	03900893          	li	a7,57
   1843c:	00000073          	ecall
   18440:	842a                	mv	s0,a0
   18442:	00055863          	bgez	a0,18452 <_close+0x2a>
   18446:	4080043b          	negw	s0,s0
   1844a:	1f8000ef          	jal	ra,18642 <__errno>
   1844e:	c100                	sw	s0,0(a0)
   18450:	547d                	li	s0,-1
   18452:	0004051b          	sext.w	a0,s0
   18456:	60a2                	ld	ra,8(sp)
   18458:	6402                	ld	s0,0(sp)
   1845a:	0141                	addi	sp,sp,16
   1845c:	8082                	ret

000000000001845e <_exit>:
   1845e:	4581                	li	a1,0
   18460:	4601                	li	a2,0
   18462:	4681                	li	a3,0
   18464:	4701                	li	a4,0
   18466:	4781                	li	a5,0
   18468:	05d00893          	li	a7,93
   1846c:	00000073          	ecall
   18470:	00055c63          	bgez	a0,18488 <_exit+0x2a>
   18474:	1141                	addi	sp,sp,-16
   18476:	e022                	sd	s0,0(sp)
   18478:	842a                	mv	s0,a0
   1847a:	e406                	sd	ra,8(sp)
   1847c:	4080043b          	negw	s0,s0
   18480:	1c2000ef          	jal	ra,18642 <__errno>
   18484:	c100                	sw	s0,0(a0)
   18486:	a001                	j	18486 <_exit+0x28>
   18488:	a001                	j	18488 <_exit+0x2a>

000000000001848a <_fstat>:
   1848a:	7135                	addi	sp,sp,-160
   1848c:	e526                	sd	s1,136(sp)
   1848e:	ed06                	sd	ra,152(sp)
   18490:	84ae                	mv	s1,a1
   18492:	e922                	sd	s0,144(sp)
   18494:	858a                	mv	a1,sp
   18496:	4601                	li	a2,0
   18498:	4681                	li	a3,0
   1849a:	4701                	li	a4,0
   1849c:	4781                	li	a5,0
   1849e:	05000893          	li	a7,80
   184a2:	00000073          	ecall
   184a6:	842a                	mv	s0,a0
   184a8:	00055863          	bgez	a0,184b8 <_fstat+0x2e>
   184ac:	4080043b          	negw	s0,s0
   184b0:	192000ef          	jal	ra,18642 <__errno>
   184b4:	c100                	sw	s0,0(a0)
   184b6:	547d                	li	s0,-1
   184b8:	8526                	mv	a0,s1
   184ba:	858a                	mv	a1,sp
   184bc:	144000ef          	jal	ra,18600 <_conv_stat>
   184c0:	0004051b          	sext.w	a0,s0
   184c4:	60ea                	ld	ra,152(sp)
   184c6:	644a                	ld	s0,144(sp)
   184c8:	64aa                	ld	s1,136(sp)
   184ca:	610d                	addi	sp,sp,160
   184cc:	8082                	ret

00000000000184ce <_isatty>:
   184ce:	7119                	addi	sp,sp,-128
   184d0:	002c                	addi	a1,sp,8
   184d2:	fc86                	sd	ra,120(sp)
   184d4:	fb7ff0ef          	jal	ra,1848a <_fstat>
   184d8:	57fd                	li	a5,-1
   184da:	00f50663          	beq	a0,a5,184e6 <_isatty+0x18>
   184de:	4532                	lw	a0,12(sp)
   184e0:	40d5551b          	sraiw	a0,a0,0xd
   184e4:	8905                	andi	a0,a0,1
   184e6:	70e6                	ld	ra,120(sp)
   184e8:	6109                	addi	sp,sp,128
   184ea:	8082                	ret

00000000000184ec <_lseek>:
   184ec:	1141                	addi	sp,sp,-16
   184ee:	e406                	sd	ra,8(sp)
   184f0:	e022                	sd	s0,0(sp)
   184f2:	4681                	li	a3,0
   184f4:	4701                	li	a4,0
   184f6:	4781                	li	a5,0
   184f8:	03e00893          	li	a7,62
   184fc:	00000073          	ecall
   18500:	842a                	mv	s0,a0
   18502:	00055863          	bgez	a0,18512 <_lseek+0x26>
   18506:	4080043b          	negw	s0,s0
   1850a:	138000ef          	jal	ra,18642 <__errno>
   1850e:	c100                	sw	s0,0(a0)
   18510:	547d                	li	s0,-1
   18512:	8522                	mv	a0,s0
   18514:	60a2                	ld	ra,8(sp)
   18516:	6402                	ld	s0,0(sp)
   18518:	0141                	addi	sp,sp,16
   1851a:	8082                	ret

000000000001851c <_read>:
   1851c:	1141                	addi	sp,sp,-16
   1851e:	e406                	sd	ra,8(sp)
   18520:	e022                	sd	s0,0(sp)
   18522:	4681                	li	a3,0
   18524:	4701                	li	a4,0
   18526:	4781                	li	a5,0
   18528:	03f00893          	li	a7,63
   1852c:	00000073          	ecall
   18530:	842a                	mv	s0,a0
   18532:	00055863          	bgez	a0,18542 <_read+0x26>
   18536:	4080043b          	negw	s0,s0
   1853a:	108000ef          	jal	ra,18642 <__errno>
   1853e:	c100                	sw	s0,0(a0)
   18540:	547d                	li	s0,-1
   18542:	8522                	mv	a0,s0
   18544:	60a2                	ld	ra,8(sp)
   18546:	6402                	ld	s0,0(sp)
   18548:	0141                	addi	sp,sp,16
   1854a:	8082                	ret

000000000001854c <_sbrk>:
   1854c:	1101                	addi	sp,sp,-32
   1854e:	e822                	sd	s0,16(sp)
   18550:	8681b783          	ld	a5,-1944(gp) # 1c9f0 <heap_end.2510>
   18554:	e04a                	sd	s2,0(sp)
   18556:	ec06                	sd	ra,24(sp)
   18558:	e426                	sd	s1,8(sp)
   1855a:	892a                	mv	s2,a0
   1855c:	eb9d                	bnez	a5,18592 <_sbrk+0x46>
   1855e:	4501                	li	a0,0
   18560:	4581                	li	a1,0
   18562:	4601                	li	a2,0
   18564:	4681                	li	a3,0
   18566:	4701                	li	a4,0
   18568:	0d600893          	li	a7,214
   1856c:	00000073          	ecall
   18570:	84aa                	mv	s1,a0
   18572:	00055e63          	bgez	a0,1858e <_sbrk+0x42>
   18576:	0cc000ef          	jal	ra,18642 <__errno>
   1857a:	409004bb          	negw	s1,s1
   1857e:	c104                	sw	s1,0(a0)
   18580:	557d                	li	a0,-1
   18582:	60e2                	ld	ra,24(sp)
   18584:	6442                	ld	s0,16(sp)
   18586:	64a2                	ld	s1,8(sp)
   18588:	6902                	ld	s2,0(sp)
   1858a:	6105                	addi	sp,sp,32
   1858c:	8082                	ret
   1858e:	86a1b423          	sd	a0,-1944(gp) # 1c9f0 <heap_end.2510>
   18592:	8681b503          	ld	a0,-1944(gp) # 1c9f0 <heap_end.2510>
   18596:	4581                	li	a1,0
   18598:	4601                	li	a2,0
   1859a:	954a                	add	a0,a0,s2
   1859c:	4681                	li	a3,0
   1859e:	4701                	li	a4,0
   185a0:	4781                	li	a5,0
   185a2:	0d600893          	li	a7,214
   185a6:	00000073          	ecall
   185aa:	84aa                	mv	s1,a0
   185ac:	00055863          	bgez	a0,185bc <_sbrk+0x70>
   185b0:	409004bb          	negw	s1,s1
   185b4:	08e000ef          	jal	ra,18642 <__errno>
   185b8:	c104                	sw	s1,0(a0)
   185ba:	54fd                	li	s1,-1
   185bc:	8681b783          	ld	a5,-1944(gp) # 1c9f0 <heap_end.2510>
   185c0:	557d                	li	a0,-1
   185c2:	993e                	add	s2,s2,a5
   185c4:	fb249fe3          	bne	s1,s2,18582 <_sbrk+0x36>
   185c8:	8691b423          	sd	s1,-1944(gp) # 1c9f0 <heap_end.2510>
   185cc:	853e                	mv	a0,a5
   185ce:	bf55                	j	18582 <_sbrk+0x36>

00000000000185d0 <_write>:
   185d0:	1141                	addi	sp,sp,-16
   185d2:	e406                	sd	ra,8(sp)
   185d4:	e022                	sd	s0,0(sp)
   185d6:	4681                	li	a3,0
   185d8:	4701                	li	a4,0
   185da:	4781                	li	a5,0
   185dc:	04000893          	li	a7,64
   185e0:	00000073          	ecall
   185e4:	842a                	mv	s0,a0
   185e6:	00055863          	bgez	a0,185f6 <_write+0x26>
   185ea:	4080043b          	negw	s0,s0
   185ee:	054000ef          	jal	ra,18642 <__errno>
   185f2:	c100                	sw	s0,0(a0)
   185f4:	547d                	li	s0,-1
   185f6:	8522                	mv	a0,s0
   185f8:	60a2                	ld	ra,8(sp)
   185fa:	6402                	ld	s0,0(sp)
   185fc:	0141                	addi	sp,sp,16
   185fe:	8082                	ret

0000000000018600 <_conv_stat>:
   18600:	619c                	ld	a5,0(a1)
   18602:	00f51023          	sh	a5,0(a0)
   18606:	659c                	ld	a5,8(a1)
   18608:	00f51123          	sh	a5,2(a0)
   1860c:	499c                	lw	a5,16(a1)
   1860e:	c15c                	sw	a5,4(a0)
   18610:	49dc                	lw	a5,20(a1)
   18612:	00f51423          	sh	a5,8(a0)
   18616:	4d9c                	lw	a5,24(a1)
   18618:	00f51523          	sh	a5,10(a0)
   1861c:	4ddc                	lw	a5,28(a1)
   1861e:	00f51623          	sh	a5,12(a0)
   18622:	719c                	ld	a5,32(a1)
   18624:	00f51723          	sh	a5,14(a0)
   18628:	799c                	ld	a5,48(a1)
   1862a:	e91c                	sd	a5,16(a0)
   1862c:	61bc                	ld	a5,64(a1)
   1862e:	e93c                	sd	a5,80(a0)
   18630:	5d9c                	lw	a5,56(a1)
   18632:	e53c                	sd	a5,72(a0)
   18634:	65bc                	ld	a5,72(a1)
   18636:	ed1c                	sd	a5,24(a0)
   18638:	6dbc                	ld	a5,88(a1)
   1863a:	f51c                	sd	a5,40(a0)
   1863c:	75bc                	ld	a5,104(a1)
   1863e:	fd1c                	sd	a5,56(a0)
   18640:	8082                	ret

0000000000018642 <__errno>:
   18642:	8301b503          	ld	a0,-2000(gp) # 1c9b8 <_impure_ptr>
   18646:	8082                	ret

0000000000018648 <__eqtf2>:
   18648:	1141                	addi	sp,sp,-16
   1864a:	002027f3          	frrm	a5
   1864e:	6721                	lui	a4,0x8
   18650:	0305d893          	srli	a7,a1,0x30
   18654:	177d                	addi	a4,a4,-1
   18656:	57fd                	li	a5,-1
   18658:	83c1                	srli	a5,a5,0x10
   1865a:	0306d313          	srli	t1,a3,0x30
   1865e:	00e8f8b3          	and	a7,a7,a4
   18662:	00f5f833          	and	a6,a1,a5
   18666:	00e37333          	and	t1,t1,a4
   1866a:	8ff5                	and	a5,a5,a3
   1866c:	91fd                	srli	a1,a1,0x3f
   1866e:	92fd                	srli	a3,a3,0x3f
   18670:	00e89963          	bne	a7,a4,18682 <__eqtf2+0x3a>
   18674:	00a86733          	or	a4,a6,a0
   18678:	ef11                	bnez	a4,18694 <__eqtf2+0x4c>
   1867a:	4705                	li	a4,1
   1867c:	07131063          	bne	t1,a7,186dc <__eqtf2+0x94>
   18680:	a019                	j	18686 <__eqtf2+0x3e>
   18682:	02e31e63          	bne	t1,a4,186be <__eqtf2+0x76>
   18686:	00c7e733          	or	a4,a5,a2
   1868a:	cb15                	beqz	a4,186be <__eqtf2+0x76>
   1868c:	6721                	lui	a4,0x8
   1868e:	177d                	addi	a4,a4,-1
   18690:	00e89e63          	bne	a7,a4,186ac <__eqtf2+0x64>
   18694:	00a86533          	or	a0,a6,a0
   18698:	c509                	beqz	a0,186a2 <__eqtf2+0x5a>
   1869a:	02f85813          	srli	a6,a6,0x2f
   1869e:	04080363          	beqz	a6,186e4 <__eqtf2+0x9c>
   186a2:	6721                	lui	a4,0x8
   186a4:	177d                	addi	a4,a4,-1
   186a6:	4505                	li	a0,1
   186a8:	00e31963          	bne	t1,a4,186ba <__eqtf2+0x72>
   186ac:	8e5d                	or	a2,a2,a5
   186ae:	4505                	li	a0,1
   186b0:	c609                	beqz	a2,186ba <__eqtf2+0x72>
   186b2:	02f51713          	slli	a4,a0,0x2f
   186b6:	8ff9                	and	a5,a5,a4
   186b8:	c795                	beqz	a5,186e4 <__eqtf2+0x9c>
   186ba:	0141                	addi	sp,sp,16
   186bc:	8082                	ret
   186be:	4705                	li	a4,1
   186c0:	00689e63          	bne	a7,t1,186dc <__eqtf2+0x94>
   186c4:	00f81c63          	bne	a6,a5,186dc <__eqtf2+0x94>
   186c8:	00c51a63          	bne	a0,a2,186dc <__eqtf2+0x94>
   186cc:	00d58a63          	beq	a1,a3,186e0 <__eqtf2+0x98>
   186d0:	00089663          	bnez	a7,186dc <__eqtf2+0x94>
   186d4:	00a86533          	or	a0,a6,a0
   186d8:	00a03733          	snez	a4,a0
   186dc:	853a                	mv	a0,a4
   186de:	bff1                	j	186ba <__eqtf2+0x72>
   186e0:	4701                	li	a4,0
   186e2:	bfed                	j	186dc <__eqtf2+0x94>
   186e4:	00186073          	csrsi	fflags,16
   186e8:	4505                	li	a0,1
   186ea:	bfc1                	j	186ba <__eqtf2+0x72>

00000000000186ec <__getf2>:
   186ec:	1141                	addi	sp,sp,-16
   186ee:	002027f3          	frrm	a5
   186f2:	68a1                	lui	a7,0x8
   186f4:	0305d713          	srli	a4,a1,0x30
   186f8:	18fd                	addi	a7,a7,-1
   186fa:	57fd                	li	a5,-1
   186fc:	83c1                	srli	a5,a5,0x10
   186fe:	0306d813          	srli	a6,a3,0x30
   18702:	01177733          	and	a4,a4,a7
   18706:	00f5f333          	and	t1,a1,a5
   1870a:	01187833          	and	a6,a6,a7
   1870e:	8ff5                	and	a5,a5,a3
   18710:	91fd                	srli	a1,a1,0x3f
   18712:	92fd                	srli	a3,a3,0x3f
   18714:	01171a63          	bne	a4,a7,18728 <__getf2+0x3c>
   18718:	00a368b3          	or	a7,t1,a0
   1871c:	08088463          	beqz	a7,187a4 <__getf2+0xb8>
   18720:	00186073          	csrsi	fflags,16
   18724:	57f9                	li	a5,-2
   18726:	a089                	j	18768 <__getf2+0x7c>
   18728:	01181c63          	bne	a6,a7,18740 <__getf2+0x54>
   1872c:	00c7e8b3          	or	a7,a5,a2
   18730:	fe0898e3          	bnez	a7,18720 <__getf2+0x34>
   18734:	e31d                	bnez	a4,1875a <__getf2+0x6e>
   18736:	00a368b3          	or	a7,t1,a0
   1873a:	0018b893          	seqz	a7,a7
   1873e:	a821                	j	18756 <__getf2+0x6a>
   18740:	e725                	bnez	a4,187a8 <__getf2+0xbc>
   18742:	00a368b3          	or	a7,t1,a0
   18746:	0018b893          	seqz	a7,a7
   1874a:	00081663          	bnez	a6,18756 <__getf2+0x6a>
   1874e:	00c7ee33          	or	t3,a5,a2
   18752:	040e0563          	beqz	t3,1879c <__getf2+0xb0>
   18756:	00089c63          	bnez	a7,1876e <__getf2+0x82>
   1875a:	00d59463          	bne	a1,a3,18762 <__getf2+0x76>
   1875e:	00e85c63          	ble	a4,a6,18776 <__getf2+0x8a>
   18762:	4785                	li	a5,1
   18764:	c191                	beqz	a1,18768 <__getf2+0x7c>
   18766:	57fd                	li	a5,-1
   18768:	853e                	mv	a0,a5
   1876a:	0141                	addi	sp,sp,16
   1876c:	8082                	ret
   1876e:	57fd                	li	a5,-1
   18770:	dee5                	beqz	a3,18768 <__getf2+0x7c>
   18772:	4785                	li	a5,1
   18774:	bfd5                	j	18768 <__getf2+0x7c>
   18776:	01075563          	ble	a6,a4,18780 <__getf2+0x94>
   1877a:	57fd                	li	a5,-1
   1877c:	f9fd                	bnez	a1,18772 <__getf2+0x86>
   1877e:	b7ed                	j	18768 <__getf2+0x7c>
   18780:	fe67e1e3          	bltu	a5,t1,18762 <__getf2+0x76>
   18784:	00f31863          	bne	t1,a5,18794 <__getf2+0xa8>
   18788:	fca66de3          	bltu	a2,a0,18762 <__getf2+0x76>
   1878c:	4781                	li	a5,0
   1878e:	fcc57de3          	bleu	a2,a0,18768 <__getf2+0x7c>
   18792:	b7e5                	j	1877a <__getf2+0x8e>
   18794:	fef363e3          	bltu	t1,a5,1877a <__getf2+0x8e>
   18798:	4781                	li	a5,0
   1879a:	b7f9                	j	18768 <__getf2+0x7c>
   1879c:	4781                	li	a5,0
   1879e:	fc0895e3          	bnez	a7,18768 <__getf2+0x7c>
   187a2:	b7c1                	j	18762 <__getf2+0x76>
   187a4:	f8e804e3          	beq	a6,a4,1872c <__getf2+0x40>
   187a8:	4881                	li	a7,0
   187aa:	fa0802e3          	beqz	a6,1874e <__getf2+0x62>
   187ae:	b775                	j	1875a <__getf2+0x6e>

00000000000187b0 <__letf2>:
   187b0:	1141                	addi	sp,sp,-16
   187b2:	002027f3          	frrm	a5
   187b6:	68a1                	lui	a7,0x8
   187b8:	0305d713          	srli	a4,a1,0x30
   187bc:	18fd                	addi	a7,a7,-1
   187be:	57fd                	li	a5,-1
   187c0:	83c1                	srli	a5,a5,0x10
   187c2:	0306d813          	srli	a6,a3,0x30
   187c6:	01177733          	and	a4,a4,a7
   187ca:	00f5f333          	and	t1,a1,a5
   187ce:	01187833          	and	a6,a6,a7
   187d2:	8ff5                	and	a5,a5,a3
   187d4:	91fd                	srli	a1,a1,0x3f
   187d6:	92fd                	srli	a3,a3,0x3f
   187d8:	01171a63          	bne	a4,a7,187ec <__letf2+0x3c>
   187dc:	00a368b3          	or	a7,t1,a0
   187e0:	08088463          	beqz	a7,18868 <__letf2+0xb8>
   187e4:	00186073          	csrsi	fflags,16
   187e8:	4789                	li	a5,2
   187ea:	a089                	j	1882c <__letf2+0x7c>
   187ec:	01181c63          	bne	a6,a7,18804 <__letf2+0x54>
   187f0:	00c7e8b3          	or	a7,a5,a2
   187f4:	fe0898e3          	bnez	a7,187e4 <__letf2+0x34>
   187f8:	e31d                	bnez	a4,1881e <__letf2+0x6e>
   187fa:	00a368b3          	or	a7,t1,a0
   187fe:	0018b893          	seqz	a7,a7
   18802:	a821                	j	1881a <__letf2+0x6a>
   18804:	e725                	bnez	a4,1886c <__letf2+0xbc>
   18806:	00a368b3          	or	a7,t1,a0
   1880a:	0018b893          	seqz	a7,a7
   1880e:	00081663          	bnez	a6,1881a <__letf2+0x6a>
   18812:	00c7ee33          	or	t3,a5,a2
   18816:	040e0563          	beqz	t3,18860 <__letf2+0xb0>
   1881a:	00089c63          	bnez	a7,18832 <__letf2+0x82>
   1881e:	00d59463          	bne	a1,a3,18826 <__letf2+0x76>
   18822:	00e85c63          	ble	a4,a6,1883a <__letf2+0x8a>
   18826:	4785                	li	a5,1
   18828:	c191                	beqz	a1,1882c <__letf2+0x7c>
   1882a:	57fd                	li	a5,-1
   1882c:	853e                	mv	a0,a5
   1882e:	0141                	addi	sp,sp,16
   18830:	8082                	ret
   18832:	57fd                	li	a5,-1
   18834:	dee5                	beqz	a3,1882c <__letf2+0x7c>
   18836:	4785                	li	a5,1
   18838:	bfd5                	j	1882c <__letf2+0x7c>
   1883a:	01075563          	ble	a6,a4,18844 <__letf2+0x94>
   1883e:	57fd                	li	a5,-1
   18840:	f9fd                	bnez	a1,18836 <__letf2+0x86>
   18842:	b7ed                	j	1882c <__letf2+0x7c>
   18844:	fe67e1e3          	bltu	a5,t1,18826 <__letf2+0x76>
   18848:	00f31863          	bne	t1,a5,18858 <__letf2+0xa8>
   1884c:	fca66de3          	bltu	a2,a0,18826 <__letf2+0x76>
   18850:	4781                	li	a5,0
   18852:	fcc57de3          	bleu	a2,a0,1882c <__letf2+0x7c>
   18856:	b7e5                	j	1883e <__letf2+0x8e>
   18858:	fef363e3          	bltu	t1,a5,1883e <__letf2+0x8e>
   1885c:	4781                	li	a5,0
   1885e:	b7f9                	j	1882c <__letf2+0x7c>
   18860:	4781                	li	a5,0
   18862:	fc0895e3          	bnez	a7,1882c <__letf2+0x7c>
   18866:	b7c1                	j	18826 <__letf2+0x76>
   18868:	f8e804e3          	beq	a6,a4,187f0 <__letf2+0x40>
   1886c:	4881                	li	a7,0
   1886e:	fa0802e3          	beqz	a6,18812 <__letf2+0x62>
   18872:	b775                	j	1881e <__letf2+0x6e>

0000000000018874 <__multf3>:
   18874:	7159                	addi	sp,sp,-112
   18876:	f85a                	sd	s6,48(sp)
   18878:	ec66                	sd	s9,24(sp)
   1887a:	f486                	sd	ra,104(sp)
   1887c:	f0a2                	sd	s0,96(sp)
   1887e:	eca6                	sd	s1,88(sp)
   18880:	e8ca                	sd	s2,80(sp)
   18882:	e4ce                	sd	s3,72(sp)
   18884:	e0d2                	sd	s4,64(sp)
   18886:	fc56                	sd	s5,56(sp)
   18888:	f45e                	sd	s7,40(sp)
   1888a:	f062                	sd	s8,32(sp)
   1888c:	8cb2                	mv	s9,a2
   1888e:	8b36                	mv	s6,a3
   18890:	00202af3          	frrm	s5
   18894:	57fd                	li	a5,-1
   18896:	83c1                	srli	a5,a5,0x10
   18898:	00f5f933          	and	s2,a1,a5
   1889c:	67a1                	lui	a5,0x8
   1889e:	0305da13          	srli	s4,a1,0x30
   188a2:	17fd                	addi	a5,a5,-1
   188a4:	00fa76b3          	and	a3,s4,a5
   188a8:	00068a1b          	sext.w	s4,a3
   188ac:	2a81                	sext.w	s5,s5
   188ae:	03f5db93          	srli	s7,a1,0x3f
   188b2:	020a0663          	beqz	s4,188de <__multf3+0x6a>
   188b6:	842a                	mv	s0,a0
   188b8:	08fa0463          	beq	s4,a5,18940 <__multf3+0xcc>
   188bc:	4585                	li	a1,1
   188be:	03d55613          	srli	a2,a0,0x3d
   188c2:	15ce                	slli	a1,a1,0x33
   188c4:	7a71                	lui	s4,0xffffc
   188c6:	00391793          	slli	a5,s2,0x3
   188ca:	8e4d                	or	a2,a2,a1
   188cc:	0a05                	addi	s4,s4,1
   188ce:	00f66933          	or	s2,a2,a5
   188d2:	00351413          	slli	s0,a0,0x3
   188d6:	9a36                	add	s4,s4,a3
   188d8:	4c01                	li	s8,0
   188da:	4481                	li	s1,0
   188dc:	a89d                	j	18952 <__multf3+0xde>
   188de:	00a967b3          	or	a5,s2,a0
   188e2:	84aa                	mv	s1,a0
   188e4:	cfe1                	beqz	a5,189bc <__multf3+0x148>
   188e6:	04090163          	beqz	s2,18928 <__multf3+0xb4>
   188ea:	854a                	mv	a0,s2
   188ec:	214010ef          	jal	ra,19b00 <__clzdi2>
   188f0:	2501                	sext.w	a0,a0
   188f2:	ff150793          	addi	a5,a0,-15
   188f6:	03c00713          	li	a4,60
   188fa:	0007861b          	sext.w	a2,a5
   188fe:	02f74b63          	blt	a4,a5,18934 <__multf3+0xc0>
   18902:	03d00593          	li	a1,61
   18906:	0036041b          	addiw	s0,a2,3
   1890a:	40c5863b          	subw	a2,a1,a2
   1890e:	008917b3          	sll	a5,s2,s0
   18912:	00c4d633          	srl	a2,s1,a2
   18916:	00f66933          	or	s2,a2,a5
   1891a:	00849433          	sll	s0,s1,s0
   1891e:	7a71                	lui	s4,0xffffc
   18920:	0a45                	addi	s4,s4,17
   18922:	40aa0a33          	sub	s4,s4,a0
   18926:	bf4d                	j	188d8 <__multf3+0x64>
   18928:	1d8010ef          	jal	ra,19b00 <__clzdi2>
   1892c:	2501                	sext.w	a0,a0
   1892e:	04050513          	addi	a0,a0,64
   18932:	b7c1                	j	188f2 <__multf3+0x7e>
   18934:	fc36079b          	addiw	a5,a2,-61
   18938:	00f49933          	sll	s2,s1,a5
   1893c:	4401                	li	s0,0
   1893e:	b7c5                	j	1891e <__multf3+0xaa>
   18940:	00a967b3          	or	a5,s2,a0
   18944:	c3c9                	beqz	a5,189c6 <__multf3+0x152>
   18946:	01091793          	slli	a5,s2,0x10
   1894a:	4c0d                	li	s8,3
   1894c:	44c1                	li	s1,16
   1894e:	f807c6e3          	bltz	a5,188da <__multf3+0x66>
   18952:	6621                	lui	a2,0x8
   18954:	030b5513          	srli	a0,s6,0x30
   18958:	167d                	addi	a2,a2,-1
   1895a:	59fd                	li	s3,-1
   1895c:	00c577b3          	and	a5,a0,a2
   18960:	e45a                	sd	s6,8(sp)
   18962:	0109d993          	srli	s3,s3,0x10
   18966:	0007851b          	sext.w	a0,a5
   1896a:	013b79b3          	and	s3,s6,s3
   1896e:	8766                	mv	a4,s9
   18970:	03fb5b13          	srli	s6,s6,0x3f
   18974:	cd29                	beqz	a0,189ce <__multf3+0x15a>
   18976:	0ac50d63          	beq	a0,a2,18a30 <__multf3+0x1bc>
   1897a:	4605                	li	a2,1
   1897c:	03dcd693          	srli	a3,s9,0x3d
   18980:	164e                	slli	a2,a2,0x33
   18982:	7571                	lui	a0,0xffffc
   18984:	098e                	slli	s3,s3,0x3
   18986:	8ed1                	or	a3,a3,a2
   18988:	0505                	addi	a0,a0,1
   1898a:	0136e9b3          	or	s3,a3,s3
   1898e:	003c9713          	slli	a4,s9,0x3
   18992:	953e                	add	a0,a0,a5
   18994:	4681                	li	a3,0
   18996:	002c1793          	slli	a5,s8,0x2
   1899a:	8fd5                	or	a5,a5,a3
   1899c:	9a2a                	add	s4,s4,a0
   1899e:	17fd                	addi	a5,a5,-1
   189a0:	4639                	li	a2,14
   189a2:	016bc833          	xor	a6,s7,s6
   189a6:	001a0893          	addi	a7,s4,1 # ffffffffffffc001 <__global_pointer$+0xfffffffffffdee79>
   189aa:	0cf66963          	bltu	a2,a5,18a7c <__multf3+0x208>
   189ae:	6669                	lui	a2,0x1a
   189b0:	078a                	slli	a5,a5,0x2
   189b2:	73060613          	addi	a2,a2,1840 # 1a730 <zeroes.4403+0x10>
   189b6:	97b2                	add	a5,a5,a2
   189b8:	439c                	lw	a5,0(a5)
   189ba:	8782                	jr	a5
   189bc:	4901                	li	s2,0
   189be:	4401                	li	s0,0
   189c0:	4a01                	li	s4,0
   189c2:	4c05                	li	s8,1
   189c4:	bf19                	j	188da <__multf3+0x66>
   189c6:	4901                	li	s2,0
   189c8:	4401                	li	s0,0
   189ca:	4c09                	li	s8,2
   189cc:	b739                	j	188da <__multf3+0x66>
   189ce:	0199e7b3          	or	a5,s3,s9
   189d2:	cbad                	beqz	a5,18a44 <__multf3+0x1d0>
   189d4:	04098163          	beqz	s3,18a16 <__multf3+0x1a2>
   189d8:	854e                	mv	a0,s3
   189da:	126010ef          	jal	ra,19b00 <__clzdi2>
   189de:	2501                	sext.w	a0,a0
   189e0:	ff150713          	addi	a4,a0,-15 # ffffffffffffbff1 <__global_pointer$+0xfffffffffffdee69>
   189e4:	03c00693          	li	a3,60
   189e8:	0007079b          	sext.w	a5,a4
   189ec:	02e6cc63          	blt	a3,a4,18a24 <__multf3+0x1b0>
   189f0:	03d00693          	li	a3,61
   189f4:	0037871b          	addiw	a4,a5,3
   189f8:	40f687bb          	subw	a5,a3,a5
   189fc:	00e999b3          	sll	s3,s3,a4
   18a00:	00fcd7b3          	srl	a5,s9,a5
   18a04:	0137e9b3          	or	s3,a5,s3
   18a08:	00ec9733          	sll	a4,s9,a4
   18a0c:	77f1                	lui	a5,0xffffc
   18a0e:	07c5                	addi	a5,a5,17
   18a10:	40a78533          	sub	a0,a5,a0
   18a14:	b741                	j	18994 <__multf3+0x120>
   18a16:	8566                	mv	a0,s9
   18a18:	0e8010ef          	jal	ra,19b00 <__clzdi2>
   18a1c:	2501                	sext.w	a0,a0
   18a1e:	04050513          	addi	a0,a0,64
   18a22:	bf7d                	j	189e0 <__multf3+0x16c>
   18a24:	fc37899b          	addiw	s3,a5,-61
   18a28:	013c99b3          	sll	s3,s9,s3
   18a2c:	4701                	li	a4,0
   18a2e:	bff9                	j	18a0c <__multf3+0x198>
   18a30:	0199e7b3          	or	a5,s3,s9
   18a34:	cf89                	beqz	a5,18a4e <__multf3+0x1da>
   18a36:	01099793          	slli	a5,s3,0x10
   18a3a:	468d                	li	a3,3
   18a3c:	f407cde3          	bltz	a5,18996 <__multf3+0x122>
   18a40:	44c1                	li	s1,16
   18a42:	bf91                	j	18996 <__multf3+0x122>
   18a44:	4981                	li	s3,0
   18a46:	4701                	li	a4,0
   18a48:	4501                	li	a0,0
   18a4a:	4685                	li	a3,1
   18a4c:	b7a9                	j	18996 <__multf3+0x122>
   18a4e:	4981                	li	s3,0
   18a50:	4701                	li	a4,0
   18a52:	4689                	li	a3,2
   18a54:	b789                	j	18996 <__multf3+0x122>
   18a56:	4785                	li	a5,1
   18a58:	02f79913          	slli	s2,a5,0x2f
   18a5c:	4401                	li	s0,0
   18a5e:	4801                	li	a6,0
   18a60:	4c0d                	li	s8,3
   18a62:	4789                	li	a5,2
   18a64:	44fc0663          	beq	s8,a5,18eb0 <__multf3+0x63c>
   18a68:	478d                	li	a5,3
   18a6a:	42fc0263          	beq	s8,a5,18e8e <__multf3+0x61a>
   18a6e:	4785                	li	a5,1
   18a70:	1afc1d63          	bne	s8,a5,18c2a <__multf3+0x3b6>
   18a74:	4701                	li	a4,0
   18a76:	4501                	li	a0,0
   18a78:	4781                	li	a5,0
   18a7a:	ac25                	j	18cb2 <__multf3+0x43e>
   18a7c:	57fd                	li	a5,-1
   18a7e:	9381                	srli	a5,a5,0x20
   18a80:	00890333          	add	t1,s2,s0
   18a84:	01370e33          	add	t3,a4,s3
   18a88:	02045e93          	srli	t4,s0,0x20
   18a8c:	02075693          	srli	a3,a4,0x20
   18a90:	00833f33          	sltu	t5,t1,s0
   18a94:	00ee3fb3          	sltu	t6,t3,a4
   18a98:	8c7d                	and	s0,s0,a5
   18a9a:	8f7d                	and	a4,a4,a5
   18a9c:	028705b3          	mul	a1,a4,s0
   18aa0:	000f029b          	sext.w	t0,t5
   18aa4:	000f839b          	sext.w	t2,t6
   18aa8:	02ee8733          	mul	a4,t4,a4
   18aac:	02de87b3          	mul	a5,t4,a3
   18ab0:	028686b3          	mul	a3,a3,s0
   18ab4:	0205d413          	srli	s0,a1,0x20
   18ab8:	96ba                	add	a3,a3,a4
   18aba:	9436                	add	s0,s0,a3
   18abc:	00e47563          	bleu	a4,s0,18ac6 <__multf3+0x252>
   18ac0:	4705                	li	a4,1
   18ac2:	1702                	slli	a4,a4,0x20
   18ac4:	97ba                	add	a5,a5,a4
   18ac6:	577d                	li	a4,-1
   18ac8:	9301                	srli	a4,a4,0x20
   18aca:	02045e93          	srli	t4,s0,0x20
   18ace:	00e47633          	and	a2,s0,a4
   18ad2:	8df9                	and	a1,a1,a4
   18ad4:	02035513          	srli	a0,t1,0x20
   18ad8:	020e5693          	srli	a3,t3,0x20
   18adc:	9ebe                	add	t4,t4,a5
   18ade:	00e377b3          	and	a5,t1,a4
   18ae2:	00ee7733          	and	a4,t3,a4
   18ae6:	02e78433          	mul	s0,a5,a4
   18aea:	1602                	slli	a2,a2,0x20
   18aec:	962e                	add	a2,a2,a1
   18aee:	02e50733          	mul	a4,a0,a4
   18af2:	02d50bb3          	mul	s7,a0,a3
   18af6:	02f686b3          	mul	a3,a3,a5
   18afa:	02045793          	srli	a5,s0,0x20
   18afe:	96ba                	add	a3,a3,a4
   18b00:	97b6                	add	a5,a5,a3
   18b02:	00e7f563          	bleu	a4,a5,18b0c <__multf3+0x298>
   18b06:	4705                	li	a4,1
   18b08:	1702                	slli	a4,a4,0x20
   18b0a:	9bba                	add	s7,s7,a4
   18b0c:	557d                	li	a0,-1
   18b0e:	9101                	srli	a0,a0,0x20
   18b10:	0207db13          	srli	s6,a5,0x20
   18b14:	8fe9                	and	a5,a5,a0
   18b16:	1782                	slli	a5,a5,0x20
   18b18:	8c69                	and	s0,s0,a0
   18b1a:	02095693          	srli	a3,s2,0x20
   18b1e:	0209d593          	srli	a1,s3,0x20
   18b22:	943e                	add	s0,s0,a5
   18b24:	00a9f9b3          	and	s3,s3,a0
   18b28:	00a977b3          	and	a5,s2,a0
   18b2c:	03378533          	mul	a0,a5,s3
   18b30:	033689b3          	mul	s3,a3,s3
   18b34:	02055913          	srli	s2,a0,0x20
   18b38:	02b686b3          	mul	a3,a3,a1
   18b3c:	02f585b3          	mul	a1,a1,a5
   18b40:	95ce                	add	a1,a1,s3
   18b42:	992e                	add	s2,s2,a1
   18b44:	01397563          	bleu	s3,s2,18b4e <__multf3+0x2da>
   18b48:	4785                	li	a5,1
   18b4a:	1782                	slli	a5,a5,0x20
   18b4c:	96be                	add	a3,a3,a5
   18b4e:	577d                	li	a4,-1
   18b50:	02095793          	srli	a5,s2,0x20
   18b54:	9301                	srli	a4,a4,0x20
   18b56:	8d79                	and	a0,a0,a4
   18b58:	96be                	add	a3,a3,a5
   18b5a:	00e977b3          	and	a5,s2,a4
   18b5e:	01d40733          	add	a4,s0,t4
   18b62:	01d735b3          	sltu	a1,a4,t4
   18b66:	1782                	slli	a5,a5,0x20
   18b68:	97aa                	add	a5,a5,a0
   18b6a:	407003bb          	negw	t2,t2
   18b6e:	00bb0533          	add	a0,s6,a1
   18b72:	955e                	add	a0,a0,s7
   18b74:	405002bb          	negw	t0,t0
   18b78:	00737333          	and	t1,t1,t2
   18b7c:	932a                	add	t1,t1,a0
   18b7e:	005e7e33          	and	t3,t3,t0
   18b82:	00b535b3          	sltu	a1,a0,a1
   18b86:	01ff7f33          	and	t5,t5,t6
   18b8a:	9e1a                	add	t3,t3,t1
   18b8c:	00a33533          	sltu	a0,t1,a0
   18b90:	95fa                	add	a1,a1,t5
   18b92:	95aa                	add	a1,a1,a0
   18b94:	006e3333          	sltu	t1,t3,t1
   18b98:	40c70f33          	sub	t5,a4,a2
   18b9c:	41de0533          	sub	a0,t3,t4
   18ba0:	959a                	add	a1,a1,t1
   18ba2:	01e73333          	sltu	t1,a4,t5
   18ba6:	00ae3933          	sltu	s2,t3,a0
   18baa:	4281                	li	t0,0
   18bac:	40650533          	sub	a0,a0,t1
   18bb0:	01e77663          	bleu	t5,a4,18bbc <__multf3+0x348>
   18bb4:	41ce8e33          	sub	t3,t4,t3
   18bb8:	001e3293          	seqz	t0,t3
   18bbc:	40ff0333          	sub	t1,t5,a5
   18bc0:	95b6                	add	a1,a1,a3
   18bc2:	006f3433          	sltu	s0,t5,t1
   18bc6:	40d506b3          	sub	a3,a0,a3
   18bca:	0122ee33          	or	t3,t0,s2
   18bce:	00d53533          	sltu	a0,a0,a3
   18bd2:	40878433          	sub	s0,a5,s0
   18bd6:	4901                	li	s2,0
   18bd8:	006f7463          	bleu	t1,t5,18be0 <__multf3+0x36c>
   18bdc:	0016b913          	seqz	s2,a3
   18be0:	96a2                	add	a3,a3,s0
   18be2:	00f6b7b3          	sltu	a5,a3,a5
   18be6:	97ae                	add	a5,a5,a1
   18be8:	00a96533          	or	a0,s2,a0
   18bec:	41c787b3          	sub	a5,a5,t3
   18bf0:	8f89                	sub	a5,a5,a0
   18bf2:	00d31413          	slli	s0,t1,0xd
   18bf6:	07b6                	slli	a5,a5,0xd
   18bf8:	0336d713          	srli	a4,a3,0x33
   18bfc:	8c51                	or	s0,s0,a2
   18bfe:	00e7e933          	or	s2,a5,a4
   18c02:	00803433          	snez	s0,s0
   18c06:	03335513          	srli	a0,t1,0x33
   18c0a:	8c49                	or	s0,s0,a0
   18c0c:	06b6                	slli	a3,a3,0xd
   18c0e:	00b91793          	slli	a5,s2,0xb
   18c12:	8c55                	or	s0,s0,a3
   18c14:	0607d063          	bgez	a5,18c74 <__multf3+0x400>
   18c18:	00145793          	srli	a5,s0,0x1
   18c1c:	8805                	andi	s0,s0,1
   18c1e:	03f91513          	slli	a0,s2,0x3f
   18c22:	8c5d                	or	s0,s0,a5
   18c24:	8c49                	or	s0,s0,a0
   18c26:	00195913          	srli	s2,s2,0x1
   18c2a:	6791                	lui	a5,0x4
   18c2c:	17fd                	addi	a5,a5,-1
   18c2e:	97c6                	add	a5,a5,a7
   18c30:	10f05463          	blez	a5,18d38 <__multf3+0x4c4>
   18c34:	00747713          	andi	a4,s0,7
   18c38:	c739                	beqz	a4,18c86 <__multf3+0x412>
   18c3a:	4709                	li	a4,2
   18c3c:	0014e493          	ori	s1,s1,1
   18c40:	04ea8163          	beq	s5,a4,18c82 <__multf3+0x40e>
   18c44:	470d                	li	a4,3
   18c46:	02ea8963          	beq	s5,a4,18c78 <__multf3+0x404>
   18c4a:	020a9e63          	bnez	s5,18c86 <__multf3+0x412>
   18c4e:	00f47713          	andi	a4,s0,15
   18c52:	4691                	li	a3,4
   18c54:	02d70963          	beq	a4,a3,18c86 <__multf3+0x412>
   18c58:	00440713          	addi	a4,s0,4
   18c5c:	00873433          	sltu	s0,a4,s0
   18c60:	9922                	add	s2,s2,s0
   18c62:	843a                	mv	s0,a4
   18c64:	a00d                	j	18c86 <__multf3+0x412>
   18c66:	885e                	mv	a6,s7
   18c68:	bbed                	j	18a62 <__multf3+0x1ee>
   18c6a:	885a                	mv	a6,s6
   18c6c:	894e                	mv	s2,s3
   18c6e:	843a                	mv	s0,a4
   18c70:	8c36                	mv	s8,a3
   18c72:	bbc5                	j	18a62 <__multf3+0x1ee>
   18c74:	88d2                	mv	a7,s4
   18c76:	bf55                	j	18c2a <__multf3+0x3b6>
   18c78:	00081763          	bnez	a6,18c86 <__multf3+0x412>
   18c7c:	00840713          	addi	a4,s0,8
   18c80:	bff1                	j	18c5c <__multf3+0x3e8>
   18c82:	fe081de3          	bnez	a6,18c7c <__multf3+0x408>
   18c86:	00b91713          	slli	a4,s2,0xb
   18c8a:	00075963          	bgez	a4,18c9c <__multf3+0x428>
   18c8e:	57fd                	li	a5,-1
   18c90:	17d2                	slli	a5,a5,0x34
   18c92:	17fd                	addi	a5,a5,-1
   18c94:	00f97933          	and	s2,s2,a5
   18c98:	6791                	lui	a5,0x4
   18c9a:	97c6                	add	a5,a5,a7
   18c9c:	6721                	lui	a4,0x8
   18c9e:	ffe70693          	addi	a3,a4,-2 # 7ffe <main-0x80b2>
   18ca2:	06f6c163          	blt	a3,a5,18d04 <__multf3+0x490>
   18ca6:	800d                	srli	s0,s0,0x3
   18ca8:	03d91513          	slli	a0,s2,0x3d
   18cac:	8d41                	or	a0,a0,s0
   18cae:	00395713          	srli	a4,s2,0x3
   18cb2:	56fd                	li	a3,-1
   18cb4:	65a2                	ld	a1,8(sp)
   18cb6:	0106d613          	srli	a2,a3,0x10
   18cba:	8f71                	and	a4,a4,a2
   18cbc:	03069613          	slli	a2,a3,0x30
   18cc0:	8df1                	and	a1,a1,a2
   18cc2:	8f4d                	or	a4,a4,a1
   18cc4:	6621                	lui	a2,0x8
   18cc6:	f80015b7          	lui	a1,0xf8001
   18cca:	167d                	addi	a2,a2,-1
   18ccc:	1592                	slli	a1,a1,0x24
   18cce:	8ff1                	and	a5,a5,a2
   18cd0:	15fd                	addi	a1,a1,-1
   18cd2:	8df9                	and	a1,a1,a4
   18cd4:	17c2                	slli	a5,a5,0x30
   18cd6:	8fcd                	or	a5,a5,a1
   18cd8:	0016d593          	srli	a1,a3,0x1
   18cdc:	187e                	slli	a6,a6,0x3f
   18cde:	8dfd                	and	a1,a1,a5
   18ce0:	0105e5b3          	or	a1,a1,a6
   18ce4:	c099                	beqz	s1,18cea <__multf3+0x476>
   18ce6:	0014a073          	csrs	fflags,s1
   18cea:	70a6                	ld	ra,104(sp)
   18cec:	7406                	ld	s0,96(sp)
   18cee:	64e6                	ld	s1,88(sp)
   18cf0:	6946                	ld	s2,80(sp)
   18cf2:	69a6                	ld	s3,72(sp)
   18cf4:	6a06                	ld	s4,64(sp)
   18cf6:	7ae2                	ld	s5,56(sp)
   18cf8:	7b42                	ld	s6,48(sp)
   18cfa:	7ba2                	ld	s7,40(sp)
   18cfc:	7c02                	ld	s8,32(sp)
   18cfe:	6ce2                	ld	s9,24(sp)
   18d00:	6165                	addi	sp,sp,112
   18d02:	8082                	ret
   18d04:	4789                	li	a5,2
   18d06:	02fa8363          	beq	s5,a5,18d2c <__multf3+0x4b8>
   18d0a:	460d                	li	a2,3
   18d0c:	fff70793          	addi	a5,a4,-1
   18d10:	00ca8663          	beq	s5,a2,18d1c <__multf3+0x4a8>
   18d14:	000a9663          	bnez	s5,18d20 <__multf3+0x4ac>
   18d18:	4501                	li	a0,0
   18d1a:	a029                	j	18d24 <__multf3+0x4b0>
   18d1c:	fe080ee3          	beqz	a6,18d18 <__multf3+0x4a4>
   18d20:	557d                	li	a0,-1
   18d22:	87b6                	mv	a5,a3
   18d24:	0054e493          	ori	s1,s1,5
   18d28:	872a                	mv	a4,a0
   18d2a:	b761                	j	18cb2 <__multf3+0x43e>
   18d2c:	fe080ae3          	beqz	a6,18d20 <__multf3+0x4ac>
   18d30:	4501                	li	a0,0
   18d32:	fff70793          	addi	a5,a4,-1
   18d36:	b7fd                	j	18d24 <__multf3+0x4b0>
   18d38:	4585                	li	a1,1
   18d3a:	e7b1                	bnez	a5,18d86 <__multf3+0x512>
   18d3c:	00747713          	andi	a4,s0,7
   18d40:	86ca                	mv	a3,s2
   18d42:	cf0d                	beqz	a4,18d7c <__multf3+0x508>
   18d44:	4709                	li	a4,2
   18d46:	0014e493          	ori	s1,s1,1
   18d4a:	02ea8763          	beq	s5,a4,18d78 <__multf3+0x504>
   18d4e:	470d                	li	a4,3
   18d50:	00ea8f63          	beq	s5,a4,18d6e <__multf3+0x4fa>
   18d54:	020a9463          	bnez	s5,18d7c <__multf3+0x508>
   18d58:	00f47713          	andi	a4,s0,15
   18d5c:	4611                	li	a2,4
   18d5e:	00c70f63          	beq	a4,a2,18d7c <__multf3+0x508>
   18d62:	ffc43693          	sltiu	a3,s0,-4
   18d66:	0016c693          	xori	a3,a3,1
   18d6a:	96ca                	add	a3,a3,s2
   18d6c:	a801                	j	18d7c <__multf3+0x508>
   18d6e:	00081763          	bnez	a6,18d7c <__multf3+0x508>
   18d72:	ff843693          	sltiu	a3,s0,-8
   18d76:	bfc5                	j	18d66 <__multf3+0x4f2>
   18d78:	fe081de3          	bnez	a6,18d72 <__multf3+0x4fe>
   18d7c:	92d1                	srli	a3,a3,0x34
   18d7e:	0016c693          	xori	a3,a3,1
   18d82:	0016f593          	andi	a1,a3,1
   18d86:	4705                	li	a4,1
   18d88:	8f1d                	sub	a4,a4,a5
   18d8a:	07400793          	li	a5,116
   18d8e:	0ce7c363          	blt	a5,a4,18e54 <__multf3+0x5e0>
   18d92:	03f00793          	li	a5,63
   18d96:	0007069b          	sext.w	a3,a4
   18d9a:	04e7ca63          	blt	a5,a4,18dee <__multf3+0x57a>
   18d9e:	04000513          	li	a0,64
   18da2:	9d15                	subw	a0,a0,a3
   18da4:	00d457b3          	srl	a5,s0,a3
   18da8:	00a91633          	sll	a2,s2,a0
   18dac:	00a41433          	sll	s0,s0,a0
   18db0:	8e5d                	or	a2,a2,a5
   18db2:	00803433          	snez	s0,s0
   18db6:	8c51                	or	s0,s0,a2
   18db8:	00d957b3          	srl	a5,s2,a3
   18dbc:	00747713          	andi	a4,s0,7
   18dc0:	c325                	beqz	a4,18e20 <__multf3+0x5ac>
   18dc2:	4709                	li	a4,2
   18dc4:	0014e493          	ori	s1,s1,1
   18dc8:	04ea8a63          	beq	s5,a4,18e1c <__multf3+0x5a8>
   18dcc:	470d                	li	a4,3
   18dce:	04ea8263          	beq	s5,a4,18e12 <__multf3+0x59e>
   18dd2:	040a9763          	bnez	s5,18e20 <__multf3+0x5ac>
   18dd6:	00f47713          	andi	a4,s0,15
   18dda:	4691                	li	a3,4
   18ddc:	04d70263          	beq	a4,a3,18e20 <__multf3+0x5ac>
   18de0:	00440713          	addi	a4,s0,4
   18de4:	00873433          	sltu	s0,a4,s0
   18de8:	97a2                	add	a5,a5,s0
   18dea:	843a                	mv	s0,a4
   18dec:	a815                	j	18e20 <__multf3+0x5ac>
   18dee:	04000513          	li	a0,64
   18df2:	00d95633          	srl	a2,s2,a3
   18df6:	4781                	li	a5,0
   18df8:	00a70763          	beq	a4,a0,18e06 <__multf3+0x592>
   18dfc:	08000793          	li	a5,128
   18e00:	9f95                	subw	a5,a5,a3
   18e02:	00f917b3          	sll	a5,s2,a5
   18e06:	8c5d                	or	s0,s0,a5
   18e08:	00803433          	snez	s0,s0
   18e0c:	8c51                	or	s0,s0,a2
   18e0e:	4781                	li	a5,0
   18e10:	b775                	j	18dbc <__multf3+0x548>
   18e12:	00081763          	bnez	a6,18e20 <__multf3+0x5ac>
   18e16:	00840713          	addi	a4,s0,8
   18e1a:	b7e9                	j	18de4 <__multf3+0x570>
   18e1c:	fe081de3          	bnez	a6,18e16 <__multf3+0x5a2>
   18e20:	00c79713          	slli	a4,a5,0xc
   18e24:	02075063          	bgez	a4,18e44 <__multf3+0x5d0>
   18e28:	0014e493          	ori	s1,s1,1
   18e2c:	4701                	li	a4,0
   18e2e:	4501                	li	a0,0
   18e30:	4785                	li	a5,1
   18e32:	e80580e3          	beqz	a1,18cb2 <__multf3+0x43e>
   18e36:	0014f693          	andi	a3,s1,1
   18e3a:	e6068ce3          	beqz	a3,18cb2 <__multf3+0x43e>
   18e3e:	0024e493          	ori	s1,s1,2
   18e42:	bd85                	j	18cb2 <__multf3+0x43e>
   18e44:	03d79513          	slli	a0,a5,0x3d
   18e48:	800d                	srli	s0,s0,0x3
   18e4a:	0037d713          	srli	a4,a5,0x3
   18e4e:	8d41                	or	a0,a0,s0
   18e50:	4781                	li	a5,0
   18e52:	b7c5                	j	18e32 <__multf3+0x5be>
   18e54:	01246533          	or	a0,s0,s2
   18e58:	c11d                	beqz	a0,18e7e <__multf3+0x60a>
   18e5a:	4789                	li	a5,2
   18e5c:	0014e493          	ori	s1,s1,1
   18e60:	02fa8363          	beq	s5,a5,18e86 <__multf3+0x612>
   18e64:	478d                	li	a5,3
   18e66:	00fa8763          	beq	s5,a5,18e74 <__multf3+0x600>
   18e6a:	4415                	li	s0,5
   18e6c:	000a8763          	beqz	s5,18e7a <__multf3+0x606>
   18e70:	4405                	li	s0,1
   18e72:	a021                	j	18e7a <__multf3+0x606>
   18e74:	4425                	li	s0,9
   18e76:	fe081de3          	bnez	a6,18e70 <__multf3+0x5fc>
   18e7a:	00345513          	srli	a0,s0,0x3
   18e7e:	0024e493          	ori	s1,s1,2
   18e82:	4701                	li	a4,0
   18e84:	bed5                	j	18a78 <__multf3+0x204>
   18e86:	4425                	li	s0,9
   18e88:	fe0819e3          	bnez	a6,18e7a <__multf3+0x606>
   18e8c:	b7d5                	j	18e70 <__multf3+0x5fc>
   18e8e:	4785                	li	a5,1
   18e90:	02f79713          	slli	a4,a5,0x2f
   18e94:	67a1                	lui	a5,0x8
   18e96:	4501                	li	a0,0
   18e98:	17fd                	addi	a5,a5,-1
   18e9a:	4801                	li	a6,0
   18e9c:	bd19                	j	18cb2 <__multf3+0x43e>
   18e9e:	4785                	li	a5,1
   18ea0:	02f79713          	slli	a4,a5,0x2f
   18ea4:	67a1                	lui	a5,0x8
   18ea6:	4501                	li	a0,0
   18ea8:	17fd                	addi	a5,a5,-1
   18eaa:	4801                	li	a6,0
   18eac:	44c1                	li	s1,16
   18eae:	b511                	j	18cb2 <__multf3+0x43e>
   18eb0:	67a1                	lui	a5,0x8
   18eb2:	4701                	li	a4,0
   18eb4:	4501                	li	a0,0
   18eb6:	17fd                	addi	a5,a5,-1
   18eb8:	bbed                	j	18cb2 <__multf3+0x43e>

0000000000018eba <__subtf3>:
   18eba:	7139                	addi	sp,sp,-64
   18ebc:	fc06                	sd	ra,56(sp)
   18ebe:	f822                	sd	s0,48(sp)
   18ec0:	f426                	sd	s1,40(sp)
   18ec2:	f04a                	sd	s2,32(sp)
   18ec4:	ec4e                	sd	s3,24(sp)
   18ec6:	e852                	sd	s4,16(sp)
   18ec8:	00202973          	frrm	s2
   18ecc:	53fd                	li	t2,-1
   18ece:	0103d393          	srli	t2,t2,0x10
   18ed2:	62a1                	lui	t0,0x8
   18ed4:	0305df13          	srli	t5,a1,0x30
   18ed8:	12fd                	addi	t0,t0,-1
   18eda:	0306d893          	srli	a7,a3,0x30
   18ede:	03f5d493          	srli	s1,a1,0x3f
   18ee2:	e436                	sd	a3,8(sp)
   18ee4:	0075f5b3          	and	a1,a1,t2
   18ee8:	03f6de93          	srli	t4,a3,0x3f
   18eec:	0076f6b3          	and	a3,a3,t2
   18ef0:	03d55713          	srli	a4,a0,0x3d
   18ef4:	005f7f33          	and	t5,t5,t0
   18ef8:	058e                	slli	a1,a1,0x3
   18efa:	00351313          	slli	t1,a0,0x3
   18efe:	0058f8b3          	and	a7,a7,t0
   18f02:	068e                	slli	a3,a3,0x3
   18f04:	03d65513          	srli	a0,a2,0x3d
   18f08:	2901                	sext.w	s2,s2
   18f0a:	89fa                	mv	s3,t5
   18f0c:	00b76e33          	or	t3,a4,a1
   18f10:	8fc6                	mv	t6,a7
   18f12:	8ec9                	or	a3,a3,a0
   18f14:	00361793          	slli	a5,a2,0x3
   18f18:	00589563          	bne	a7,t0,18f22 <__subtf3+0x68>
   18f1c:	00f6e733          	or	a4,a3,a5
   18f20:	e319                	bnez	a4,18f26 <__subtf3+0x6c>
   18f22:	001ece93          	xori	t4,t4,1
   18f26:	411f073b          	subw	a4,t5,a7
   18f2a:	65a1                	lui	a1,0x8
   18f2c:	0007081b          	sext.w	a6,a4
   18f30:	fff58613          	addi	a2,a1,-1 # 7fff <main-0x80b1>
   18f34:	389e9163          	bne	t4,s1,192b6 <__subtf3+0x3fc>
   18f38:	0f005663          	blez	a6,19024 <__subtf3+0x16a>
   18f3c:	06089f63          	bnez	a7,18fba <__subtf3+0x100>
   18f40:	00f6e5b3          	or	a1,a3,a5
   18f44:	e591                	bnez	a1,18f50 <__subtf3+0x96>
   18f46:	04cf0f63          	beq	t5,a2,18fa4 <__subtf3+0xea>
   18f4a:	86f2                	mv	a3,t3
   18f4c:	8ffa                	mv	t6,t5
   18f4e:	ade1                	j	19626 <__subtf3+0x76c>
   18f50:	fff7081b          	addiw	a6,a4,-1
   18f54:	04081663          	bnez	a6,18fa0 <__subtf3+0xe6>
   18f58:	979a                	add	a5,a5,t1
   18f5a:	0067b333          	sltu	t1,a5,t1
   18f5e:	96f2                	add	a3,a3,t3
   18f60:	969a                	add	a3,a3,t1
   18f62:	8ffa                	mv	t6,t5
   18f64:	833e                	mv	t1,a5
   18f66:	00c69793          	slli	a5,a3,0xc
   18f6a:	6a07de63          	bgez	a5,19626 <__subtf3+0x76c>
   18f6e:	6721                	lui	a4,0x8
   18f70:	001f8993          	addi	s3,t6,1
   18f74:	fff70793          	addi	a5,a4,-1 # 7fff <main-0x80b1>
   18f78:	30f98b63          	beq	s3,a5,1928e <__subtf3+0x3d4>
   18f7c:	55fd                	li	a1,-1
   18f7e:	15ce                	slli	a1,a1,0x33
   18f80:	15fd                	addi	a1,a1,-1
   18f82:	00135793          	srli	a5,t1,0x1
   18f86:	8df5                	and	a1,a1,a3
   18f88:	00137313          	andi	t1,t1,1
   18f8c:	03f59693          	slli	a3,a1,0x3f
   18f90:	0067e333          	or	t1,a5,t1
   18f94:	0066e7b3          	or	a5,a3,t1
   18f98:	0015d693          	srli	a3,a1,0x1
   18f9c:	4801                	li	a6,0
   18f9e:	ac79                	j	1923c <__subtf3+0x382>
   18fa0:	02cf1263          	bne	t5,a2,18fc4 <__subtf3+0x10a>
   18fa4:	006e67b3          	or	a5,t3,t1
   18fa8:	6c078263          	beqz	a5,1966c <__subtf3+0x7b2>
   18fac:	00de1793          	slli	a5,t3,0xd
   18fb0:	86f2                	mv	a3,t3
   18fb2:	6a07df63          	bgez	a5,19670 <__subtf3+0x7b6>
   18fb6:	879a                	mv	a5,t1
   18fb8:	b7d5                	j	18f9c <__subtf3+0xe2>
   18fba:	fecf05e3          	beq	t5,a2,18fa4 <__subtf3+0xea>
   18fbe:	4705                	li	a4,1
   18fc0:	174e                	slli	a4,a4,0x33
   18fc2:	8ed9                	or	a3,a3,a4
   18fc4:	07400713          	li	a4,116
   18fc8:	05074a63          	blt	a4,a6,1901c <__subtf3+0x162>
   18fcc:	03f00713          	li	a4,63
   18fd0:	03074363          	blt	a4,a6,18ff6 <__subtf3+0x13c>
   18fd4:	04000613          	li	a2,64
   18fd8:	4106063b          	subw	a2,a2,a6
   18fdc:	00c69733          	sll	a4,a3,a2
   18fe0:	0107d5b3          	srl	a1,a5,a6
   18fe4:	00c797b3          	sll	a5,a5,a2
   18fe8:	8f4d                	or	a4,a4,a1
   18fea:	00f037b3          	snez	a5,a5
   18fee:	8fd9                	or	a5,a5,a4
   18ff0:	0106d6b3          	srl	a3,a3,a6
   18ff4:	b795                	j	18f58 <__subtf3+0x9e>
   18ff6:	04000593          	li	a1,64
   18ffa:	0106d733          	srl	a4,a3,a6
   18ffe:	4601                	li	a2,0
   19000:	00b80863          	beq	a6,a1,19010 <__subtf3+0x156>
   19004:	08000613          	li	a2,128
   19008:	4106083b          	subw	a6,a2,a6
   1900c:	01069633          	sll	a2,a3,a6
   19010:	8fd1                	or	a5,a5,a2
   19012:	00f037b3          	snez	a5,a5
   19016:	8fd9                	or	a5,a5,a4
   19018:	4681                	li	a3,0
   1901a:	bf3d                	j	18f58 <__subtf3+0x9e>
   1901c:	8edd                	or	a3,a3,a5
   1901e:	00d037b3          	snez	a5,a3
   19022:	bfdd                	j	19018 <__subtf3+0x15e>
   19024:	0c080463          	beqz	a6,190ec <__subtf3+0x232>
   19028:	060f1f63          	bnez	t5,190a6 <__subtf3+0x1ec>
   1902c:	006e65b3          	or	a1,t3,t1
   19030:	e185                	bnez	a1,19050 <__subtf3+0x196>
   19032:	833e                	mv	t1,a5
   19034:	5ec89963          	bne	a7,a2,19626 <__subtf3+0x76c>
   19038:	00f6e733          	or	a4,a3,a5
   1903c:	62070363          	beqz	a4,19662 <__subtf3+0x7a8>
   19040:	00d69713          	slli	a4,a3,0xd
   19044:	89c6                	mv	s3,a7
   19046:	4801                	li	a6,0
   19048:	1e074a63          	bltz	a4,1923c <__subtf3+0x382>
   1904c:	4741                	li	a4,16
   1904e:	a0c5                	j	1912e <__subtf3+0x274>
   19050:	55fd                	li	a1,-1
   19052:	00b81863          	bne	a6,a1,19062 <__subtf3+0x1a8>
   19056:	933e                	add	t1,t1,a5
   19058:	96f2                	add	a3,a3,t3
   1905a:	00f337b3          	sltu	a5,t1,a5
   1905e:	96be                	add	a3,a3,a5
   19060:	b719                	j	18f66 <__subtf3+0xac>
   19062:	fff74713          	not	a4,a4
   19066:	fcc889e3          	beq	a7,a2,19038 <__subtf3+0x17e>
   1906a:	07400613          	li	a2,116
   1906e:	06e64a63          	blt	a2,a4,190e2 <__subtf3+0x228>
   19072:	03f00613          	li	a2,63
   19076:	04e64163          	blt	a2,a4,190b8 <__subtf3+0x1fe>
   1907a:	04000513          	li	a0,64
   1907e:	9d19                	subw	a0,a0,a4
   19080:	00e35633          	srl	a2,t1,a4
   19084:	00ae1433          	sll	s0,t3,a0
   19088:	00a31333          	sll	t1,t1,a0
   1908c:	8c51                	or	s0,s0,a2
   1908e:	00603333          	snez	t1,t1
   19092:	00646333          	or	t1,s0,t1
   19096:	00ee5733          	srl	a4,t3,a4
   1909a:	933e                	add	t1,t1,a5
   1909c:	9736                	add	a4,a4,a3
   1909e:	00f336b3          	sltu	a3,t1,a5
   190a2:	96ba                	add	a3,a3,a4
   190a4:	b5c9                	j	18f66 <__subtf3+0xac>
   190a6:	f8c889e3          	beq	a7,a2,19038 <__subtf3+0x17e>
   190aa:	4605                	li	a2,1
   190ac:	164e                	slli	a2,a2,0x33
   190ae:	40e0073b          	negw	a4,a4
   190b2:	00ce6e33          	or	t3,t3,a2
   190b6:	bf55                	j	1906a <__subtf3+0x1b0>
   190b8:	04000613          	li	a2,64
   190bc:	00ee5433          	srl	s0,t3,a4
   190c0:	4501                	li	a0,0
   190c2:	00c70863          	beq	a4,a2,190d2 <__subtf3+0x218>
   190c6:	08000513          	li	a0,128
   190ca:	40e5073b          	subw	a4,a0,a4
   190ce:	00ee1533          	sll	a0,t3,a4
   190d2:	00656333          	or	t1,a0,t1
   190d6:	00603333          	snez	t1,t1
   190da:	00646333          	or	t1,s0,t1
   190de:	4701                	li	a4,0
   190e0:	bf6d                	j	1909a <__subtf3+0x1e0>
   190e2:	006e6733          	or	a4,t3,t1
   190e6:	00e03333          	snez	t1,a4
   190ea:	bfd5                	j	190de <__subtf3+0x224>
   190ec:	001f0f93          	addi	t6,t5,1 # 10001 <main-0xaf>
   190f0:	00cff733          	and	a4,t6,a2
   190f4:	4e85                	li	t4,1
   190f6:	12eec363          	blt	t4,a4,1921c <__subtf3+0x362>
   190fa:	006e65b3          	or	a1,t3,t1
   190fe:	040f1463          	bnez	t5,19146 <__subtf3+0x28c>
   19102:	52058a63          	beqz	a1,19636 <__subtf3+0x77c>
   19106:	00f6e733          	or	a4,a3,a5
   1910a:	52070a63          	beqz	a4,1963e <__subtf3+0x784>
   1910e:	979a                	add	a5,a5,t1
   19110:	96f2                	add	a3,a3,t3
   19112:	0067b333          	sltu	t1,a5,t1
   19116:	969a                	add	a3,a3,t1
   19118:	1ece                	slli	t4,t4,0x33
   1911a:	01d6feb3          	and	t4,a3,t4
   1911e:	500e8c63          	beqz	t4,19636 <__subtf3+0x77c>
   19122:	577d                	li	a4,-1
   19124:	174e                	slli	a4,a4,0x33
   19126:	177d                	addi	a4,a4,-1
   19128:	8ef9                	and	a3,a3,a4
   1912a:	4985                	li	s3,1
   1912c:	4701                	li	a4,0
   1912e:	0077f613          	andi	a2,a5,7
   19132:	12061263          	bnez	a2,19256 <__subtf3+0x39c>
   19136:	04080863          	beqz	a6,19186 <__subtf3+0x2cc>
   1913a:	00177613          	andi	a2,a4,1
   1913e:	c621                	beqz	a2,19186 <__subtf3+0x2cc>
   19140:	00276713          	ori	a4,a4,2
   19144:	a089                	j	19186 <__subtf3+0x2cc>
   19146:	0ccf1663          	bne	t5,a2,19212 <__subtf3+0x358>
   1914a:	56058d63          	beqz	a1,196c4 <__subtf3+0x80a>
   1914e:	032e9713          	slli	a4,t4,0x32
   19152:	00ee7733          	and	a4,t3,a4
   19156:	00173713          	seqz	a4,a4
   1915a:	0712                	slli	a4,a4,0x4
   1915c:	01e89c63          	bne	a7,t5,19174 <__subtf3+0x2ba>
   19160:	00f6e633          	or	a2,a3,a5
   19164:	c611                	beqz	a2,19170 <__subtf3+0x2b6>
   19166:	00d69613          	slli	a2,a3,0xd
   1916a:	00064363          	bltz	a2,19170 <__subtf3+0x2b6>
   1916e:	4741                	li	a4,16
   19170:	3c058663          	beqz	a1,1953c <__subtf3+0x682>
   19174:	8edd                	or	a3,a3,a5
   19176:	3c068163          	beqz	a3,19538 <__subtf3+0x67e>
   1917a:	4685                	li	a3,1
   1917c:	69a1                	lui	s3,0x8
   1917e:	16ca                	slli	a3,a3,0x32
   19180:	4781                	li	a5,0
   19182:	19fd                	addi	s3,s3,-1
   19184:	4481                	li	s1,0
   19186:	00c69613          	slli	a2,a3,0xc
   1918a:	00065c63          	bgez	a2,191a2 <__subtf3+0x2e8>
   1918e:	6621                	lui	a2,0x8
   19190:	0985                	addi	s3,s3,1
   19192:	fff60593          	addi	a1,a2,-1 # 7fff <main-0x80b1>
   19196:	50b98063          	beq	s3,a1,19696 <__subtf3+0x7dc>
   1919a:	567d                	li	a2,-1
   1919c:	164e                	slli	a2,a2,0x33
   1919e:	167d                	addi	a2,a2,-1
   191a0:	8ef1                	and	a3,a3,a2
   191a2:	838d                	srli	a5,a5,0x3
   191a4:	03d69513          	slli	a0,a3,0x3d
   191a8:	8d5d                	or	a0,a0,a5
   191aa:	67a1                	lui	a5,0x8
   191ac:	17fd                	addi	a5,a5,-1
   191ae:	828d                	srli	a3,a3,0x3
   191b0:	00f99963          	bne	s3,a5,191c2 <__subtf3+0x308>
   191b4:	8d55                	or	a0,a0,a3
   191b6:	4681                	li	a3,0
   191b8:	c509                	beqz	a0,191c2 <__subtf3+0x308>
   191ba:	4685                	li	a3,1
   191bc:	16be                	slli	a3,a3,0x2f
   191be:	4501                	li	a0,0
   191c0:	4481                	li	s1,0
   191c2:	58fd                	li	a7,-1
   191c4:	0108d813          	srli	a6,a7,0x10
   191c8:	0106f833          	and	a6,a3,a6
   191cc:	66a2                	ld	a3,8(sp)
   191ce:	03089593          	slli	a1,a7,0x30
   191d2:	0018d893          	srli	a7,a7,0x1
   191d6:	8df5                	and	a1,a1,a3
   191d8:	0105e6b3          	or	a3,a1,a6
   191dc:	65a1                	lui	a1,0x8
   191de:	15fd                	addi	a1,a1,-1
   191e0:	00b9f9b3          	and	s3,s3,a1
   191e4:	f80015b7          	lui	a1,0xf8001
   191e8:	1592                	slli	a1,a1,0x24
   191ea:	15fd                	addi	a1,a1,-1
   191ec:	19c2                	slli	s3,s3,0x30
   191ee:	8df5                	and	a1,a1,a3
   191f0:	0135e5b3          	or	a1,a1,s3
   191f4:	14fe                	slli	s1,s1,0x3f
   191f6:	0115f5b3          	and	a1,a1,a7
   191fa:	8dc5                	or	a1,a1,s1
   191fc:	c319                	beqz	a4,19202 <__subtf3+0x348>
   191fe:	00172073          	csrs	fflags,a4
   19202:	70e2                	ld	ra,56(sp)
   19204:	7442                	ld	s0,48(sp)
   19206:	74a2                	ld	s1,40(sp)
   19208:	7902                	ld	s2,32(sp)
   1920a:	69e2                	ld	s3,24(sp)
   1920c:	6a42                	ld	s4,16(sp)
   1920e:	6121                	addi	sp,sp,64
   19210:	8082                	ret
   19212:	4701                	li	a4,0
   19214:	f4c89ee3          	bne	a7,a2,19170 <__subtf3+0x2b6>
   19218:	4701                	li	a4,0
   1921a:	b799                	j	19160 <__subtf3+0x2a6>
   1921c:	02cf8263          	beq	t6,a2,19240 <__subtf3+0x386>
   19220:	979a                	add	a5,a5,t1
   19222:	00de0733          	add	a4,t3,a3
   19226:	0067b6b3          	sltu	a3,a5,t1
   1922a:	00d70333          	add	t1,a4,a3
   1922e:	03f31693          	slli	a3,t1,0x3f
   19232:	8385                	srli	a5,a5,0x1
   19234:	8fd5                	or	a5,a5,a3
   19236:	89fe                	mv	s3,t6
   19238:	00135693          	srli	a3,t1,0x1
   1923c:	4701                	li	a4,0
   1923e:	bdc5                	j	1912e <__subtf3+0x274>
   19240:	04090563          	beqz	s2,1928a <__subtf3+0x3d0>
   19244:	478d                	li	a5,3
   19246:	02f91e63          	bne	s2,a5,19282 <__subtf3+0x3c8>
   1924a:	c0a1                	beqz	s1,1928a <__subtf3+0x3d0>
   1924c:	56fd                	li	a3,-1
   1924e:	57fd                	li	a5,-1
   19250:	ffe58993          	addi	s3,a1,-2 # fffffffff8000ffe <__global_pointer$+0xfffffffff7fe3e76>
   19254:	4715                	li	a4,5
   19256:	4609                	li	a2,2
   19258:	00176713          	ori	a4,a4,1
   1925c:	42c90a63          	beq	s2,a2,19690 <__subtf3+0x7d6>
   19260:	460d                	li	a2,3
   19262:	42c90263          	beq	s2,a2,19686 <__subtf3+0x7cc>
   19266:	ec0918e3          	bnez	s2,19136 <__subtf3+0x27c>
   1926a:	00f7f613          	andi	a2,a5,15
   1926e:	4591                	li	a1,4
   19270:	ecb603e3          	beq	a2,a1,19136 <__subtf3+0x27c>
   19274:	00478593          	addi	a1,a5,4 # 8004 <main-0x80ac>
   19278:	00f5b7b3          	sltu	a5,a1,a5
   1927c:	96be                	add	a3,a3,a5
   1927e:	87ae                	mv	a5,a1
   19280:	bd5d                	j	19136 <__subtf3+0x27c>
   19282:	4789                	li	a5,2
   19284:	fcf914e3          	bne	s2,a5,1924c <__subtf3+0x392>
   19288:	d0f1                	beqz	s1,1924c <__subtf3+0x392>
   1928a:	89fe                	mv	s3,t6
   1928c:	a00d                	j	192ae <__subtf3+0x3f4>
   1928e:	02090063          	beqz	s2,192ae <__subtf3+0x3f4>
   19292:	478d                	li	a5,3
   19294:	00f91963          	bne	s2,a5,192a6 <__subtf3+0x3ec>
   19298:	c899                	beqz	s1,192ae <__subtf3+0x3f4>
   1929a:	56fd                	li	a3,-1
   1929c:	57fd                	li	a5,-1
   1929e:	ffe70993          	addi	s3,a4,-2
   192a2:	4801                	li	a6,0
   192a4:	bf45                	j	19254 <__subtf3+0x39a>
   192a6:	4789                	li	a5,2
   192a8:	fef919e3          	bne	s2,a5,1929a <__subtf3+0x3e0>
   192ac:	d4fd                	beqz	s1,1929a <__subtf3+0x3e0>
   192ae:	4681                	li	a3,0
   192b0:	4781                	li	a5,0
   192b2:	4715                	li	a4,5
   192b4:	bdc9                	j	19186 <__subtf3+0x2cc>
   192b6:	0b005863          	blez	a6,19366 <__subtf3+0x4ac>
   192ba:	06089963          	bnez	a7,1932c <__subtf3+0x472>
   192be:	00f6e5b3          	or	a1,a3,a5
   192c2:	c80582e3          	beqz	a1,18f46 <__subtf3+0x8c>
   192c6:	fff7081b          	addiw	a6,a4,-1
   192ca:	02081663          	bnez	a6,192f6 <__subtf3+0x43c>
   192ce:	40f307b3          	sub	a5,t1,a5
   192d2:	00f33333          	sltu	t1,t1,a5
   192d6:	40de06b3          	sub	a3,t3,a3
   192da:	406686b3          	sub	a3,a3,t1
   192de:	8ffa                	mv	t6,t5
   192e0:	833e                	mv	t1,a5
   192e2:	00c69793          	slli	a5,a3,0xc
   192e6:	3407d063          	bgez	a5,19626 <__subtf3+0x76c>
   192ea:	547d                	li	s0,-1
   192ec:	8035                	srli	s0,s0,0xd
   192ee:	8c75                	and	s0,s0,a3
   192f0:	8a1a                	mv	s4,t1
   192f2:	89fe                	mv	s3,t6
   192f4:	ac95                	j	19568 <__subtf3+0x6ae>
   192f6:	cacf07e3          	beq	t5,a2,18fa4 <__subtf3+0xea>
   192fa:	07400713          	li	a4,116
   192fe:	07074063          	blt	a4,a6,1935e <__subtf3+0x4a4>
   19302:	03f00713          	li	a4,63
   19306:	03074963          	blt	a4,a6,19338 <__subtf3+0x47e>
   1930a:	04000613          	li	a2,64
   1930e:	4106063b          	subw	a2,a2,a6
   19312:	00c69733          	sll	a4,a3,a2
   19316:	0107d5b3          	srl	a1,a5,a6
   1931a:	00c797b3          	sll	a5,a5,a2
   1931e:	8f4d                	or	a4,a4,a1
   19320:	00f037b3          	snez	a5,a5
   19324:	8fd9                	or	a5,a5,a4
   19326:	0106d6b3          	srl	a3,a3,a6
   1932a:	b755                	j	192ce <__subtf3+0x414>
   1932c:	c6cf0ce3          	beq	t5,a2,18fa4 <__subtf3+0xea>
   19330:	4705                	li	a4,1
   19332:	174e                	slli	a4,a4,0x33
   19334:	8ed9                	or	a3,a3,a4
   19336:	b7d1                	j	192fa <__subtf3+0x440>
   19338:	04000593          	li	a1,64
   1933c:	0106d733          	srl	a4,a3,a6
   19340:	4601                	li	a2,0
   19342:	00b80863          	beq	a6,a1,19352 <__subtf3+0x498>
   19346:	08000613          	li	a2,128
   1934a:	4106083b          	subw	a6,a2,a6
   1934e:	01069633          	sll	a2,a3,a6
   19352:	8fd1                	or	a5,a5,a2
   19354:	00f037b3          	snez	a5,a5
   19358:	8fd9                	or	a5,a5,a4
   1935a:	4681                	li	a3,0
   1935c:	bf8d                	j	192ce <__subtf3+0x414>
   1935e:	8edd                	or	a3,a3,a5
   19360:	00d037b3          	snez	a5,a3
   19364:	bfdd                	j	1935a <__subtf3+0x4a0>
   19366:	0c080663          	beqz	a6,19432 <__subtf3+0x578>
   1936a:	080f1163          	bnez	t5,193ec <__subtf3+0x532>
   1936e:	006e65b3          	or	a1,t3,t1
   19372:	ed81                	bnez	a1,1938a <__subtf3+0x4d0>
   19374:	2ac89e63          	bne	a7,a2,19630 <__subtf3+0x776>
   19378:	00f6e733          	or	a4,a3,a5
   1937c:	2e070d63          	beqz	a4,19676 <__subtf3+0x7bc>
   19380:	00d69713          	slli	a4,a3,0xd
   19384:	89c6                	mv	s3,a7
   19386:	84f6                	mv	s1,t4
   19388:	b97d                	j	19046 <__subtf3+0x18c>
   1938a:	55fd                	li	a1,-1
   1938c:	00b81b63          	bne	a6,a1,193a2 <__subtf3+0x4e8>
   19390:	40678333          	sub	t1,a5,t1
   19394:	41c686b3          	sub	a3,a3,t3
   19398:	0067b7b3          	sltu	a5,a5,t1
   1939c:	8e9d                	sub	a3,a3,a5
   1939e:	84f6                	mv	s1,t4
   193a0:	b789                	j	192e2 <__subtf3+0x428>
   193a2:	fff74713          	not	a4,a4
   193a6:	fcc889e3          	beq	a7,a2,19378 <__subtf3+0x4be>
   193aa:	07400613          	li	a2,116
   193ae:	06e64d63          	blt	a2,a4,19428 <__subtf3+0x56e>
   193b2:	03f00613          	li	a2,63
   193b6:	04e64463          	blt	a2,a4,193fe <__subtf3+0x544>
   193ba:	04000513          	li	a0,64
   193be:	9d19                	subw	a0,a0,a4
   193c0:	00e35633          	srl	a2,t1,a4
   193c4:	00ae1433          	sll	s0,t3,a0
   193c8:	00a31333          	sll	t1,t1,a0
   193cc:	8c51                	or	s0,s0,a2
   193ce:	00603333          	snez	t1,t1
   193d2:	00646333          	or	t1,s0,t1
   193d6:	00ee5733          	srl	a4,t3,a4
   193da:	40678333          	sub	t1,a5,t1
   193de:	40e68733          	sub	a4,a3,a4
   193e2:	0067b6b3          	sltu	a3,a5,t1
   193e6:	40d706b3          	sub	a3,a4,a3
   193ea:	bf55                	j	1939e <__subtf3+0x4e4>
   193ec:	f8c886e3          	beq	a7,a2,19378 <__subtf3+0x4be>
   193f0:	4605                	li	a2,1
   193f2:	164e                	slli	a2,a2,0x33
   193f4:	40e0073b          	negw	a4,a4
   193f8:	00ce6e33          	or	t3,t3,a2
   193fc:	b77d                	j	193aa <__subtf3+0x4f0>
   193fe:	04000613          	li	a2,64
   19402:	00ee5433          	srl	s0,t3,a4
   19406:	4501                	li	a0,0
   19408:	00c70863          	beq	a4,a2,19418 <__subtf3+0x55e>
   1940c:	08000513          	li	a0,128
   19410:	40e5073b          	subw	a4,a0,a4
   19414:	00ee1533          	sll	a0,t3,a4
   19418:	00656333          	or	t1,a0,t1
   1941c:	00603333          	snez	t1,t1
   19420:	00646333          	or	t1,s0,t1
   19424:	4701                	li	a4,0
   19426:	bf55                	j	193da <__subtf3+0x520>
   19428:	006e6733          	or	a4,t3,t1
   1942c:	00e03333          	snez	t1,a4
   19430:	bfd5                	j	19424 <__subtf3+0x56a>
   19432:	001f0713          	addi	a4,t5,1
   19436:	8f71                	and	a4,a4,a2
   19438:	4585                	li	a1,1
   1943a:	10e5c463          	blt	a1,a4,19542 <__subtf3+0x688>
   1943e:	006e6fb3          	or	t6,t3,t1
   19442:	00f6e533          	or	a0,a3,a5
   19446:	0a0f1463          	bnez	t5,194ee <__subtf3+0x634>
   1944a:	060f9363          	bnez	t6,194b0 <__subtf3+0x5f6>
   1944e:	1e051663          	bnez	a0,1963a <__subtf3+0x780>
   19452:	ffe90493          	addi	s1,s2,-2
   19456:	0014b493          	seqz	s1,s1
   1945a:	4681                	li	a3,0
   1945c:	4301                	li	t1,0
   1945e:	00d367b3          	or	a5,t1,a3
   19462:	20078f63          	beqz	a5,19680 <__subtf3+0x7c6>
   19466:	03f35793          	srli	a5,t1,0x3f
   1946a:	00169813          	slli	a6,a3,0x1
   1946e:	983e                	add	a6,a6,a5
   19470:	00131793          	slli	a5,t1,0x1
   19474:	0077f613          	andi	a2,a5,7
   19478:	4701                	li	a4,0
   1947a:	c215                	beqz	a2,1949e <__subtf3+0x5e4>
   1947c:	4709                	li	a4,2
   1947e:	1ce90e63          	beq	s2,a4,1965a <__subtf3+0x7a0>
   19482:	470d                	li	a4,3
   19484:	1ce90263          	beq	s2,a4,19648 <__subtf3+0x78e>
   19488:	4705                	li	a4,1
   1948a:	00091a63          	bnez	s2,1949e <__subtf3+0x5e4>
   1948e:	00f7f613          	andi	a2,a5,15
   19492:	4591                	li	a1,4
   19494:	4705                	li	a4,1
   19496:	ffc7b793          	sltiu	a5,a5,-4
   1949a:	1ab61c63          	bne	a2,a1,19652 <__subtf3+0x798>
   1949e:	03485813          	srli	a6,a6,0x34
   194a2:	00184813          	xori	a6,a6,1
   194a6:	00187813          	andi	a6,a6,1
   194aa:	879a                	mv	a5,t1
   194ac:	4981                	li	s3,0
   194ae:	b141                	j	1912e <__subtf3+0x274>
   194b0:	18050763          	beqz	a0,1963e <__subtf3+0x784>
   194b4:	40f30633          	sub	a2,t1,a5
   194b8:	40de0733          	sub	a4,t3,a3
   194bc:	00c33533          	sltu	a0,t1,a2
   194c0:	8f09                	sub	a4,a4,a0
   194c2:	15ce                	slli	a1,a1,0x33
   194c4:	8df9                	and	a1,a1,a4
   194c6:	c991                	beqz	a1,194da <__subtf3+0x620>
   194c8:	40678333          	sub	t1,a5,t1
   194cc:	41c686b3          	sub	a3,a3,t3
   194d0:	0067b7b3          	sltu	a5,a5,t1
   194d4:	8e9d                	sub	a3,a3,a5
   194d6:	84f6                	mv	s1,t4
   194d8:	b759                	j	1945e <__subtf3+0x5a4>
   194da:	00e66333          	or	t1,a2,a4
   194de:	16031263          	bnez	t1,19642 <__subtf3+0x788>
   194e2:	ffe90493          	addi	s1,s2,-2
   194e6:	0014b493          	seqz	s1,s1
   194ea:	4681                	li	a3,0
   194ec:	bf8d                	j	1945e <__subtf3+0x5a4>
   194ee:	02cf1e63          	bne	t5,a2,1952a <__subtf3+0x670>
   194f2:	1c0f8563          	beqz	t6,196bc <__subtf3+0x802>
   194f6:	15ca                	slli	a1,a1,0x32
   194f8:	00be75b3          	and	a1,t3,a1
   194fc:	0015b713          	seqz	a4,a1
   19500:	0712                	slli	a4,a4,0x4
   19502:	03e89963          	bne	a7,t5,19534 <__subtf3+0x67a>
   19506:	c511                	beqz	a0,19512 <__subtf3+0x658>
   19508:	00d69613          	slli	a2,a3,0xd
   1950c:	00064363          	bltz	a2,19512 <__subtf3+0x658>
   19510:	4741                	li	a4,16
   19512:	020f9163          	bnez	t6,19534 <__subtf3+0x67a>
   19516:	84f6                	mv	s1,t4
   19518:	e115                	bnez	a0,1953c <__subtf3+0x682>
   1951a:	4685                	li	a3,1
   1951c:	69a1                	lui	s3,0x8
   1951e:	4781                	li	a5,0
   19520:	16ca                	slli	a3,a3,0x32
   19522:	19fd                	addi	s3,s3,-1
   19524:	4481                	li	s1,0
   19526:	4741                	li	a4,16
   19528:	b9b9                	j	19186 <__subtf3+0x2cc>
   1952a:	4701                	li	a4,0
   1952c:	fec893e3          	bne	a7,a2,19512 <__subtf3+0x658>
   19530:	4701                	li	a4,0
   19532:	bfd1                	j	19506 <__subtf3+0x64c>
   19534:	c40513e3          	bnez	a0,1917a <__subtf3+0x2c0>
   19538:	86f2                	mv	a3,t3
   1953a:	879a                	mv	a5,t1
   1953c:	69a1                	lui	s3,0x8
   1953e:	19fd                	addi	s3,s3,-1
   19540:	b6fd                	j	1912e <__subtf3+0x274>
   19542:	40f30a33          	sub	s4,t1,a5
   19546:	40de0433          	sub	s0,t3,a3
   1954a:	01433733          	sltu	a4,t1,s4
   1954e:	8c19                	sub	s0,s0,a4
   19550:	15ce                	slli	a1,a1,0x33
   19552:	8de1                	and	a1,a1,s0
   19554:	cdb5                	beqz	a1,195d0 <__subtf3+0x716>
   19556:	40678a33          	sub	s4,a5,t1
   1955a:	41c68733          	sub	a4,a3,t3
   1955e:	0147b6b3          	sltu	a3,a5,s4
   19562:	40d70433          	sub	s0,a4,a3
   19566:	84f6                	mv	s1,t4
   19568:	c82d                	beqz	s0,195da <__subtf3+0x720>
   1956a:	8522                	mv	a0,s0
   1956c:	594000ef          	jal	ra,19b00 <__clzdi2>
   19570:	2501                	sext.w	a0,a0
   19572:	ff450f9b          	addiw	t6,a0,-12
   19576:	03f00793          	li	a5,63
   1957a:	877e                	mv	a4,t6
   1957c:	07f7c563          	blt	a5,t6,195e6 <__subtf3+0x72c>
   19580:	04000693          	li	a3,64
   19584:	41f686bb          	subw	a3,a3,t6
   19588:	01f41433          	sll	s0,s0,t6
   1958c:	00da56b3          	srl	a3,s4,a3
   19590:	8c55                	or	s0,s0,a3
   19592:	01fa1333          	sll	t1,s4,t6
   19596:	093fc263          	blt	t6,s3,1961a <__subtf3+0x760>
   1959a:	413709bb          	subw	s3,a4,s3
   1959e:	2985                	addiw	s3,s3,1
   195a0:	0009869b          	sext.w	a3,s3
   195a4:	03f00793          	li	a5,63
   195a8:	04d7c563          	blt	a5,a3,195f2 <__subtf3+0x738>
   195ac:	04000513          	li	a0,64
   195b0:	4135053b          	subw	a0,a0,s3
   195b4:	00d35733          	srl	a4,t1,a3
   195b8:	00a417b3          	sll	a5,s0,a0
   195bc:	00a31333          	sll	t1,t1,a0
   195c0:	8fd9                	or	a5,a5,a4
   195c2:	00603333          	snez	t1,t1
   195c6:	0067e333          	or	t1,a5,t1
   195ca:	00d456b3          	srl	a3,s0,a3
   195ce:	bd41                	j	1945e <__subtf3+0x5a4>
   195d0:	008a6333          	or	t1,s4,s0
   195d4:	f8031ae3          	bnez	t1,19568 <__subtf3+0x6ae>
   195d8:	b729                	j	194e2 <__subtf3+0x628>
   195da:	8552                	mv	a0,s4
   195dc:	524000ef          	jal	ra,19b00 <__clzdi2>
   195e0:	0405051b          	addiw	a0,a0,64
   195e4:	b779                	j	19572 <__subtf3+0x6b8>
   195e6:	fb45041b          	addiw	s0,a0,-76
   195ea:	008a1433          	sll	s0,s4,s0
   195ee:	4301                	li	t1,0
   195f0:	b75d                	j	19596 <__subtf3+0x6dc>
   195f2:	04000713          	li	a4,64
   195f6:	013457b3          	srl	a5,s0,s3
   195fa:	4501                	li	a0,0
   195fc:	00e68863          	beq	a3,a4,1960c <__subtf3+0x752>
   19600:	08000513          	li	a0,128
   19604:	4135053b          	subw	a0,a0,s3
   19608:	00a41533          	sll	a0,s0,a0
   1960c:	00a36333          	or	t1,t1,a0
   19610:	006036b3          	snez	a3,t1
   19614:	00d7e333          	or	t1,a5,a3
   19618:	bdc9                	j	194ea <__subtf3+0x630>
   1961a:	56fd                	li	a3,-1
   1961c:	16ce                	slli	a3,a3,0x33
   1961e:	16fd                	addi	a3,a3,-1
   19620:	41f98fb3          	sub	t6,s3,t6
   19624:	8ee1                	and	a3,a3,s0
   19626:	e20f8ce3          	beqz	t6,1945e <__subtf3+0x5a4>
   1962a:	879a                	mv	a5,t1
   1962c:	89fe                	mv	s3,t6
   1962e:	b2bd                	j	18f9c <__subtf3+0xe2>
   19630:	833e                	mv	t1,a5
   19632:	84f6                	mv	s1,t4
   19634:	bfcd                	j	19626 <__subtf3+0x76c>
   19636:	833e                	mv	t1,a5
   19638:	b51d                	j	1945e <__subtf3+0x5a4>
   1963a:	833e                	mv	t1,a5
   1963c:	bd69                	j	194d6 <__subtf3+0x61c>
   1963e:	86f2                	mv	a3,t3
   19640:	bd39                	j	1945e <__subtf3+0x5a4>
   19642:	86ba                	mv	a3,a4
   19644:	8332                	mv	t1,a2
   19646:	bd21                	j	1945e <__subtf3+0x5a4>
   19648:	4705                	li	a4,1
   1964a:	e4049ae3          	bnez	s1,1949e <__subtf3+0x5e4>
   1964e:	ff87b793          	sltiu	a5,a5,-8
   19652:	0017c793          	xori	a5,a5,1
   19656:	983e                	add	a6,a6,a5
   19658:	b599                	j	1949e <__subtf3+0x5e4>
   1965a:	4705                	li	a4,1
   1965c:	e40481e3          	beqz	s1,1949e <__subtf3+0x5e4>
   19660:	b7fd                	j	1964e <__subtf3+0x794>
   19662:	4681                	li	a3,0
   19664:	4781                	li	a5,0
   19666:	89c6                	mv	s3,a7
   19668:	4701                	li	a4,0
   1966a:	be31                	j	19186 <__subtf3+0x2cc>
   1966c:	4681                	li	a3,0
   1966e:	bfed                	j	19668 <__subtf3+0x7ae>
   19670:	879a                	mv	a5,t1
   19672:	4801                	li	a6,0
   19674:	bae1                	j	1904c <__subtf3+0x192>
   19676:	4681                	li	a3,0
   19678:	4781                	li	a5,0
   1967a:	89c6                	mv	s3,a7
   1967c:	84f6                	mv	s1,t4
   1967e:	b7ed                	j	19668 <__subtf3+0x7ae>
   19680:	4681                	li	a3,0
   19682:	4981                	li	s3,0
   19684:	b7d5                	j	19668 <__subtf3+0x7ae>
   19686:	aa0498e3          	bnez	s1,19136 <__subtf3+0x27c>
   1968a:	00878593          	addi	a1,a5,8
   1968e:	b6ed                	j	19278 <__subtf3+0x3be>
   19690:	aa0483e3          	beqz	s1,19136 <__subtf3+0x27c>
   19694:	bfdd                	j	1968a <__subtf3+0x7d0>
   19696:	4781                	li	a5,0
   19698:	00090e63          	beqz	s2,196b4 <__subtf3+0x7fa>
   1969c:	468d                	li	a3,3
   1969e:	00d91763          	bne	s2,a3,196ac <__subtf3+0x7f2>
   196a2:	c889                	beqz	s1,196b4 <__subtf3+0x7fa>
   196a4:	57fd                	li	a5,-1
   196a6:	ffe60993          	addi	s3,a2,-2
   196aa:	a029                	j	196b4 <__subtf3+0x7fa>
   196ac:	4689                	li	a3,2
   196ae:	fed91be3          	bne	s2,a3,196a4 <__subtf3+0x7ea>
   196b2:	d8ed                	beqz	s1,196a4 <__subtf3+0x7ea>
   196b4:	00576713          	ori	a4,a4,5
   196b8:	86be                	mv	a3,a5
   196ba:	b4e5                	j	191a2 <__subtf3+0x2e8>
   196bc:	4701                	li	a4,0
   196be:	e5e89ce3          	bne	a7,t5,19516 <__subtf3+0x65c>
   196c2:	b5bd                	j	19530 <__subtf3+0x676>
   196c4:	b7e89ce3          	bne	a7,t5,1923c <__subtf3+0x382>
   196c8:	be81                	j	19218 <__subtf3+0x35e>

00000000000196ca <__fixtfsi>:
   196ca:	1141                	addi	sp,sp,-16
   196cc:	002027f3          	frrm	a5
   196d0:	57fd                	li	a5,-1
   196d2:	00159613          	slli	a2,a1,0x1
   196d6:	6811                	lui	a6,0x4
   196d8:	83c1                	srli	a5,a5,0x10
   196da:	9245                	srli	a2,a2,0x31
   196dc:	ffe80713          	addi	a4,a6,-2 # 3ffe <main-0xc0b2>
   196e0:	8fed                	and	a5,a5,a1
   196e2:	00c74963          	blt	a4,a2,196f4 <__fixtfsi+0x2a>
   196e6:	e62d                	bnez	a2,19750 <__fixtfsi+0x86>
   196e8:	8fc9                	or	a5,a5,a0
   196ea:	4681                	li	a3,0
   196ec:	eb95                	bnez	a5,19720 <__fixtfsi+0x56>
   196ee:	8536                	mv	a0,a3
   196f0:	0141                	addi	sp,sp,16
   196f2:	8082                	ret
   196f4:	01d80713          	addi	a4,a6,29
   196f8:	91fd                	srli	a1,a1,0x3f
   196fa:	02c75563          	ble	a2,a4,19724 <__fixtfsi+0x5a>
   196fe:	800006b7          	lui	a3,0x80000
   19702:	fff6c693          	not	a3,a3
   19706:	9ead                	addw	a3,a3,a1
   19708:	c5b1                	beqz	a1,19754 <__fixtfsi+0x8a>
   1970a:	0879                	addi	a6,a6,30
   1970c:	45c1                	li	a1,16
   1970e:	05061463          	bne	a2,a6,19756 <__fixtfsi+0x8c>
   19712:	0117d713          	srli	a4,a5,0x11
   19716:	e321                	bnez	a4,19756 <__fixtfsi+0x8c>
   19718:	02f79713          	slli	a4,a5,0x2f
   1971c:	8f49                	or	a4,a4,a0
   1971e:	db61                	beqz	a4,196ee <__fixtfsi+0x24>
   19720:	4585                	li	a1,1
   19722:	a815                	j	19756 <__fixtfsi+0x8c>
   19724:	4705                	li	a4,1
   19726:	1742                	slli	a4,a4,0x30
   19728:	2601                	sext.w	a2,a2
   1972a:	8fd9                	or	a5,a5,a4
   1972c:	01160713          	addi	a4,a2,17
   19730:	00e79733          	sll	a4,a5,a4
   19734:	8f49                	or	a4,a4,a0
   19736:	6511                	lui	a0,0x4
   19738:	02f5051b          	addiw	a0,a0,47
   1973c:	40c5063b          	subw	a2,a0,a2
   19740:	00c7d7b3          	srl	a5,a5,a2
   19744:	0007869b          	sext.w	a3,a5
   19748:	d9f9                	beqz	a1,1971e <__fixtfsi+0x54>
   1974a:	40d006bb          	negw	a3,a3
   1974e:	bfc1                	j	1971e <__fixtfsi+0x54>
   19750:	4681                	li	a3,0
   19752:	b7f9                	j	19720 <__fixtfsi+0x56>
   19754:	45c1                	li	a1,16
   19756:	0015a073          	csrs	fflags,a1
   1975a:	bf51                	j	196ee <__fixtfsi+0x24>

000000000001975c <__floatsitf>:
   1975c:	7179                	addi	sp,sp,-48
   1975e:	f406                	sd	ra,40(sp)
   19760:	f022                	sd	s0,32(sp)
   19762:	ec26                	sd	s1,24(sp)
   19764:	c53d                	beqz	a0,197d2 <__floatsitf+0x76>
   19766:	0005079b          	sext.w	a5,a0
   1976a:	03f55493          	srli	s1,a0,0x3f
   1976e:	00055463          	bgez	a0,19776 <__floatsitf+0x1a>
   19772:	40f007bb          	negw	a5,a5
   19776:	02079413          	slli	s0,a5,0x20
   1977a:	9001                	srli	s0,s0,0x20
   1977c:	8522                	mv	a0,s0
   1977e:	382000ef          	jal	ra,19b00 <__clzdi2>
   19782:	6691                	lui	a3,0x4
   19784:	03e6879b          	addiw	a5,a3,62
   19788:	40a7873b          	subw	a4,a5,a0
   1978c:	02f6879b          	addiw	a5,a3,47
   19790:	9f99                	subw	a5,a5,a4
   19792:	00f417b3          	sll	a5,s0,a5
   19796:	56fd                	li	a3,-1
   19798:	0106d413          	srli	s0,a3,0x10
   1979c:	8fe1                	and	a5,a5,s0
   1979e:	6422                	ld	s0,8(sp)
   197a0:	03069613          	slli	a2,a3,0x30
   197a4:	65a1                	lui	a1,0x8
   197a6:	8c71                	and	s0,s0,a2
   197a8:	8fc1                	or	a5,a5,s0
   197aa:	f8001437          	lui	s0,0xf8001
   197ae:	15fd                	addi	a1,a1,-1
   197b0:	1412                	slli	s0,s0,0x24
   197b2:	8f6d                	and	a4,a4,a1
   197b4:	147d                	addi	s0,s0,-1
   197b6:	8fe1                	and	a5,a5,s0
   197b8:	70a2                	ld	ra,40(sp)
   197ba:	7402                	ld	s0,32(sp)
   197bc:	1742                	slli	a4,a4,0x30
   197be:	8fd9                	or	a5,a5,a4
   197c0:	8285                	srli	a3,a3,0x1
   197c2:	03f49593          	slli	a1,s1,0x3f
   197c6:	8ff5                	and	a5,a5,a3
   197c8:	64e2                	ld	s1,24(sp)
   197ca:	4501                	li	a0,0
   197cc:	8ddd                	or	a1,a1,a5
   197ce:	6145                	addi	sp,sp,48
   197d0:	8082                	ret
   197d2:	4781                	li	a5,0
   197d4:	4701                	li	a4,0
   197d6:	4481                	li	s1,0
   197d8:	bf7d                	j	19796 <__floatsitf+0x3a>

00000000000197da <__extenddftf2>:
   197da:	7179                	addi	sp,sp,-48
   197dc:	ec26                	sd	s1,24(sp)
   197de:	f406                	sd	ra,40(sp)
   197e0:	f022                	sd	s0,32(sp)
   197e2:	e20504d3          	fmv.x.d	s1,fa0
   197e6:	002027f3          	frrm	a5
   197ea:	0344d513          	srli	a0,s1,0x34
   197ee:	7ff57513          	andi	a0,a0,2047
   197f2:	547d                	li	s0,-1
   197f4:	00150793          	addi	a5,a0,1 # 4001 <main-0xc0af>
   197f8:	8031                	srli	s0,s0,0xc
   197fa:	7ff7f793          	andi	a5,a5,2047
   197fe:	4685                	li	a3,1
   19800:	8c65                	and	s0,s0,s1
   19802:	90fd                	srli	s1,s1,0x3f
   19804:	00f6db63          	ble	a5,a3,1981a <__extenddftf2+0x40>
   19808:	6791                	lui	a5,0x4
   1980a:	c0078793          	addi	a5,a5,-1024 # 3c00 <main-0xc4b0>
   1980e:	00445713          	srli	a4,s0,0x4
   19812:	953e                	add	a0,a0,a5
   19814:	1472                	slli	s0,s0,0x3c
   19816:	4781                	li	a5,0
   19818:	a8b1                	j	19874 <__extenddftf2+0x9a>
   1981a:	ed1d                	bnez	a0,19858 <__extenddftf2+0x7e>
   1981c:	4701                	li	a4,0
   1981e:	dc65                	beqz	s0,19816 <__extenddftf2+0x3c>
   19820:	8522                	mv	a0,s0
   19822:	2de000ef          	jal	ra,19b00 <__clzdi2>
   19826:	0005071b          	sext.w	a4,a0
   1982a:	47b9                	li	a5,14
   1982c:	02e7c063          	blt	a5,a4,1984c <__extenddftf2+0x72>
   19830:	473d                	li	a4,15
   19832:	9f09                	subw	a4,a4,a0
   19834:	0315079b          	addiw	a5,a0,49
   19838:	00e45733          	srl	a4,s0,a4
   1983c:	00f41433          	sll	s0,s0,a5
   19840:	6791                	lui	a5,0x4
   19842:	c0c7879b          	addiw	a5,a5,-1012
   19846:	40a7853b          	subw	a0,a5,a0
   1984a:	b7f1                	j	19816 <__extenddftf2+0x3c>
   1984c:	ff15071b          	addiw	a4,a0,-15
   19850:	00e41733          	sll	a4,s0,a4
   19854:	4401                	li	s0,0
   19856:	b7ed                	j	19840 <__extenddftf2+0x66>
   19858:	cc39                	beqz	s0,198b6 <__extenddftf2+0xdc>
   1985a:	03369793          	slli	a5,a3,0x33
   1985e:	8fe1                	and	a5,a5,s0
   19860:	00445713          	srli	a4,s0,0x4
   19864:	0017b793          	seqz	a5,a5
   19868:	16be                	slli	a3,a3,0x2f
   1986a:	6521                	lui	a0,0x8
   1986c:	0792                	slli	a5,a5,0x4
   1986e:	8f55                	or	a4,a4,a3
   19870:	1472                	slli	s0,s0,0x3c
   19872:	157d                	addi	a0,a0,-1
   19874:	56fd                	li	a3,-1
   19876:	65a2                	ld	a1,8(sp)
   19878:	0106d613          	srli	a2,a3,0x10
   1987c:	8f71                	and	a4,a4,a2
   1987e:	03069613          	slli	a2,a3,0x30
   19882:	8df1                	and	a1,a1,a2
   19884:	8f4d                	or	a4,a4,a1
   19886:	6621                	lui	a2,0x8
   19888:	f80015b7          	lui	a1,0xf8001
   1988c:	167d                	addi	a2,a2,-1
   1988e:	1592                	slli	a1,a1,0x24
   19890:	8d71                	and	a0,a0,a2
   19892:	15fd                	addi	a1,a1,-1
   19894:	8df9                	and	a1,a1,a4
   19896:	1542                	slli	a0,a0,0x30
   19898:	8d4d                	or	a0,a0,a1
   1989a:	0016d593          	srli	a1,a3,0x1
   1989e:	14fe                	slli	s1,s1,0x3f
   198a0:	8de9                	and	a1,a1,a0
   198a2:	8dc5                	or	a1,a1,s1
   198a4:	c399                	beqz	a5,198aa <__extenddftf2+0xd0>
   198a6:	0017a073          	csrs	fflags,a5
   198aa:	8522                	mv	a0,s0
   198ac:	70a2                	ld	ra,40(sp)
   198ae:	7402                	ld	s0,32(sp)
   198b0:	64e2                	ld	s1,24(sp)
   198b2:	6145                	addi	sp,sp,48
   198b4:	8082                	ret
   198b6:	6521                	lui	a0,0x8
   198b8:	4701                	li	a4,0
   198ba:	157d                	addi	a0,a0,-1
   198bc:	bfa9                	j	19816 <__extenddftf2+0x3c>

00000000000198be <__trunctfdf2>:
   198be:	1141                	addi	sp,sp,-16
   198c0:	002028f3          	frrm	a7
   198c4:	57fd                	li	a5,-1
   198c6:	83c1                	srli	a5,a5,0x10
   198c8:	6321                	lui	t1,0x8
   198ca:	0305d713          	srli	a4,a1,0x30
   198ce:	137d                	addi	t1,t1,-1
   198d0:	03f5d813          	srli	a6,a1,0x3f
   198d4:	8dfd                	and	a1,a1,a5
   198d6:	00359793          	slli	a5,a1,0x3
   198da:	00677733          	and	a4,a4,t1
   198de:	03d55593          	srli	a1,a0,0x3d
   198e2:	8ddd                	or	a1,a1,a5
   198e4:	00170793          	addi	a5,a4,1
   198e8:	0067f7b3          	and	a5,a5,t1
   198ec:	4605                	li	a2,1
   198ee:	2881                	sext.w	a7,a7
   198f0:	00351e93          	slli	t4,a0,0x3
   198f4:	18f65163          	ble	a5,a2,19a76 <__trunctfdf2+0x1b8>
   198f8:	77f1                	lui	a5,0xffffc
   198fa:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__global_pointer$+0xfffffffffffdf278>
   198fe:	973e                	add	a4,a4,a5
   19900:	7fe00793          	li	a5,2046
   19904:	0ae7d063          	ble	a4,a5,199a4 <__trunctfdf2+0xe6>
   19908:	04088263          	beqz	a7,1994c <__trunctfdf2+0x8e>
   1990c:	478d                	li	a5,3
   1990e:	02f89a63          	bne	a7,a5,19942 <__trunctfdf2+0x84>
   19912:	02080d63          	beqz	a6,1994c <__trunctfdf2+0x8e>
   19916:	57fd                	li	a5,-1
   19918:	7fe00713          	li	a4,2046
   1991c:	4681                	li	a3,0
   1991e:	4e15                	li	t3,5
   19920:	4609                	li	a2,2
   19922:	001e6e13          	ori	t3,t3,1
   19926:	1ac88663          	beq	a7,a2,19ad2 <__trunctfdf2+0x214>
   1992a:	460d                	li	a2,3
   1992c:	18c88f63          	beq	a7,a2,19aca <__trunctfdf2+0x20c>
   19930:	12089a63          	bnez	a7,19a64 <__trunctfdf2+0x1a6>
   19934:	00f7f613          	andi	a2,a5,15
   19938:	4591                	li	a1,4
   1993a:	12b60563          	beq	a2,a1,19a64 <__trunctfdf2+0x1a6>
   1993e:	0791                	addi	a5,a5,4
   19940:	a215                	j	19a64 <__trunctfdf2+0x1a6>
   19942:	4789                	li	a5,2
   19944:	fcf899e3          	bne	a7,a5,19916 <__trunctfdf2+0x58>
   19948:	fc0807e3          	beqz	a6,19916 <__trunctfdf2+0x58>
   1994c:	4781                	li	a5,0
   1994e:	7ff00713          	li	a4,2047
   19952:	4e15                	li	t3,5
   19954:	00879693          	slli	a3,a5,0x8
   19958:	0006db63          	bgez	a3,1996e <__trunctfdf2+0xb0>
   1995c:	0705                	addi	a4,a4,1
   1995e:	7ff00693          	li	a3,2047
   19962:	16d70b63          	beq	a4,a3,19ad8 <__trunctfdf2+0x21a>
   19966:	55fd                	li	a1,-1
   19968:	15de                	slli	a1,a1,0x37
   1996a:	15fd                	addi	a1,a1,-1
   1996c:	8fed                	and	a5,a5,a1
   1996e:	7ff00693          	li	a3,2047
   19972:	838d                	srli	a5,a5,0x3
   19974:	00d71663          	bne	a4,a3,19980 <__trunctfdf2+0xc2>
   19978:	c781                	beqz	a5,19980 <__trunctfdf2+0xc2>
   1997a:	4785                	li	a5,1
   1997c:	17ce                	slli	a5,a5,0x33
   1997e:	4801                	li	a6,0
   19980:	56fd                	li	a3,-1
   19982:	82b1                	srli	a3,a3,0xc
   19984:	7ff77713          	andi	a4,a4,2047
   19988:	8ff5                	and	a5,a5,a3
   1998a:	1752                	slli	a4,a4,0x34
   1998c:	03f81693          	slli	a3,a6,0x3f
   19990:	8fd9                	or	a5,a5,a4
   19992:	8fd5                	or	a5,a5,a3
   19994:	000e0463          	beqz	t3,1999c <__trunctfdf2+0xde>
   19998:	001e2073          	csrs	fflags,t3
   1999c:	f2078553          	fmv.d.x	fa0,a5
   199a0:	0141                	addi	sp,sp,16
   199a2:	8082                	ret
   199a4:	0ae04163          	bgtz	a4,19a46 <__trunctfdf2+0x188>
   199a8:	fcc00793          	li	a5,-52
   199ac:	10f74063          	blt	a4,a5,19aac <__trunctfdf2+0x1ee>
   199b0:	164e                	slli	a2,a2,0x33
   199b2:	8dd1                	or	a1,a1,a2
   199b4:	03d00613          	li	a2,61
   199b8:	8e19                	sub	a2,a2,a4
   199ba:	03f00793          	li	a5,63
   199be:	2701                	sext.w	a4,a4
   199c0:	06c7c063          	blt	a5,a2,19a20 <__trunctfdf2+0x162>
   199c4:	0037061b          	addiw	a2,a4,3
   199c8:	03d00793          	li	a5,61
   199cc:	9f99                	subw	a5,a5,a4
   199ce:	00ce96b3          	sll	a3,t4,a2
   199d2:	00fed7b3          	srl	a5,t4,a5
   199d6:	00d036b3          	snez	a3,a3
   199da:	8fd5                	or	a5,a5,a3
   199dc:	00c595b3          	sll	a1,a1,a2
   199e0:	8fcd                	or	a5,a5,a1
   199e2:	4701                	li	a4,0
   199e4:	c3ed                	beqz	a5,19ac6 <__trunctfdf2+0x208>
   199e6:	00179713          	slli	a4,a5,0x1
   199ea:	00777693          	andi	a3,a4,7
   199ee:	4e01                	li	t3,0
   199f0:	c28d                	beqz	a3,19a12 <__trunctfdf2+0x154>
   199f2:	4689                	li	a3,2
   199f4:	0cd88363          	beq	a7,a3,19aba <__trunctfdf2+0x1fc>
   199f8:	468d                	li	a3,3
   199fa:	0ad88b63          	beq	a7,a3,19ab0 <__trunctfdf2+0x1f2>
   199fe:	4e05                	li	t3,1
   19a00:	00089963          	bnez	a7,19a12 <__trunctfdf2+0x154>
   19a04:	00f77693          	andi	a3,a4,15
   19a08:	4611                	li	a2,4
   19a0a:	4e05                	li	t3,1
   19a0c:	00c68363          	beq	a3,a2,19a12 <__trunctfdf2+0x154>
   19a10:	0711                	addi	a4,a4,4
   19a12:	03875693          	srli	a3,a4,0x38
   19a16:	0016c693          	xori	a3,a3,1
   19a1a:	8a85                	andi	a3,a3,1
   19a1c:	4701                	li	a4,0
   19a1e:	a83d                	j	19a5c <__trunctfdf2+0x19e>
   19a20:	57f5                	li	a5,-3
   19a22:	9f99                	subw	a5,a5,a4
   19a24:	04000513          	li	a0,64
   19a28:	00f5d7b3          	srl	a5,a1,a5
   19a2c:	4681                	li	a3,0
   19a2e:	00a60663          	beq	a2,a0,19a3a <__trunctfdf2+0x17c>
   19a32:	0437071b          	addiw	a4,a4,67
   19a36:	00e596b3          	sll	a3,a1,a4
   19a3a:	01d6e6b3          	or	a3,a3,t4
   19a3e:	00d036b3          	snez	a3,a3
   19a42:	8fd5                	or	a5,a5,a3
   19a44:	bf79                	j	199e2 <__trunctfdf2+0x124>
   19a46:	051e                	slli	a0,a0,0x7
   19a48:	03ced693          	srli	a3,t4,0x3c
   19a4c:	00a03533          	snez	a0,a0
   19a50:	8d55                	or	a0,a0,a3
   19a52:	0592                	slli	a1,a1,0x4
   19a54:	00a5e7b3          	or	a5,a1,a0
   19a58:	4681                	li	a3,0
   19a5a:	4e01                	li	t3,0
   19a5c:	0077f613          	andi	a2,a5,7
   19a60:	ec0610e3          	bnez	a2,19920 <__trunctfdf2+0x62>
   19a64:	ee0688e3          	beqz	a3,19954 <__trunctfdf2+0x96>
   19a68:	001e7693          	andi	a3,t3,1
   19a6c:	ee0684e3          	beqz	a3,19954 <__trunctfdf2+0x96>
   19a70:	002e6e13          	ori	t3,t3,2
   19a74:	b5c5                	j	19954 <__trunctfdf2+0x96>
   19a76:	01d5e7b3          	or	a5,a1,t4
   19a7a:	e701                	bnez	a4,19a82 <__trunctfdf2+0x1c4>
   19a7c:	00f037b3          	snez	a5,a5
   19a80:	b78d                	j	199e2 <__trunctfdf2+0x124>
   19a82:	c3a1                	beqz	a5,19ac2 <__trunctfdf2+0x204>
   19a84:	4e01                	li	t3,0
   19a86:	00671763          	bne	a4,t1,19a94 <__trunctfdf2+0x1d6>
   19a8a:	164a                	slli	a2,a2,0x32
   19a8c:	8e6d                	and	a2,a2,a1
   19a8e:	00163e13          	seqz	t3,a2
   19a92:	0e12                	slli	t3,t3,0x4
   19a94:	03ced513          	srli	a0,t4,0x3c
   19a98:	0592                	slli	a1,a1,0x4
   19a9a:	8dc9                	or	a1,a1,a0
   19a9c:	4785                	li	a5,1
   19a9e:	99e1                	andi	a1,a1,-8
   19aa0:	17da                	slli	a5,a5,0x36
   19aa2:	8fcd                	or	a5,a5,a1
   19aa4:	7ff00713          	li	a4,2047
   19aa8:	4681                	li	a3,0
   19aaa:	bf4d                	j	19a5c <__trunctfdf2+0x19e>
   19aac:	4785                	li	a5,1
   19aae:	bf25                	j	199e6 <__trunctfdf2+0x128>
   19ab0:	4e05                	li	t3,1
   19ab2:	f60810e3          	bnez	a6,19a12 <__trunctfdf2+0x154>
   19ab6:	0721                	addi	a4,a4,8
   19ab8:	bfa9                	j	19a12 <__trunctfdf2+0x154>
   19aba:	4e05                	li	t3,1
   19abc:	f4080be3          	beqz	a6,19a12 <__trunctfdf2+0x154>
   19ac0:	bfdd                	j	19ab6 <__trunctfdf2+0x1f8>
   19ac2:	7ff00713          	li	a4,2047
   19ac6:	4e01                	li	t3,0
   19ac8:	b571                	j	19954 <__trunctfdf2+0x96>
   19aca:	f8081de3          	bnez	a6,19a64 <__trunctfdf2+0x1a6>
   19ace:	07a1                	addi	a5,a5,8
   19ad0:	bf51                	j	19a64 <__trunctfdf2+0x1a6>
   19ad2:	f80809e3          	beqz	a6,19a64 <__trunctfdf2+0x1a6>
   19ad6:	bfe5                	j	19ace <__trunctfdf2+0x210>
   19ad8:	4781                	li	a5,0
   19ada:	02088063          	beqz	a7,19afa <__trunctfdf2+0x23c>
   19ade:	468d                	li	a3,3
   19ae0:	00d89863          	bne	a7,a3,19af0 <__trunctfdf2+0x232>
   19ae4:	00080b63          	beqz	a6,19afa <__trunctfdf2+0x23c>
   19ae8:	57fd                	li	a5,-1
   19aea:	7fe00713          	li	a4,2046
   19aee:	a031                	j	19afa <__trunctfdf2+0x23c>
   19af0:	4689                	li	a3,2
   19af2:	fed89be3          	bne	a7,a3,19ae8 <__trunctfdf2+0x22a>
   19af6:	fe0809e3          	beqz	a6,19ae8 <__trunctfdf2+0x22a>
   19afa:	005e6e13          	ori	t3,t3,5
   19afe:	bd85                	j	1996e <__trunctfdf2+0xb0>

0000000000019b00 <__clzdi2>:
   19b00:	03800793          	li	a5,56
   19b04:	00f55733          	srl	a4,a0,a5
   19b08:	0ff77713          	andi	a4,a4,255
   19b0c:	e319                	bnez	a4,19b12 <__clzdi2+0x12>
   19b0e:	17e1                	addi	a5,a5,-8
   19b10:	fbf5                	bnez	a5,19b04 <__clzdi2+0x4>
   19b12:	04000713          	li	a4,64
   19b16:	8f1d                	sub	a4,a4,a5
   19b18:	00f557b3          	srl	a5,a0,a5
   19b1c:	6569                	lui	a0,0x1a
   19b1e:	77050513          	addi	a0,a0,1904 # 1a770 <__clz_tab>
   19b22:	97aa                	add	a5,a5,a0
   19b24:	0007c503          	lbu	a0,0(a5)
   19b28:	40a7053b          	subw	a0,a4,a0
   19b2c:	8082                	ret
