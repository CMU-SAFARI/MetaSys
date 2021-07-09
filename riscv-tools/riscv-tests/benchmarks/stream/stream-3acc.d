
stream-3acc.out:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <main>:
   100b0:	1101                	addi	sp,sp,-32
   100b2:	00100537          	lui	a0,0x100
   100b6:	ec06                	sd	ra,24(sp)
   100b8:	e822                	sd	s0,16(sp)
   100ba:	e426                	sd	s1,8(sp)
   100bc:	e04a                	sd	s2,0(sp)
   100be:	2c6000ef          	jal	ra,10384 <malloc>
   100c2:	84aa                	mv	s1,a0
   100c4:	00100537          	lui	a0,0x100
   100c8:	2bc000ef          	jal	ra,10384 <malloc>
   100cc:	892a                	mv	s2,a0
   100ce:	00100537          	lui	a0,0x100
   100d2:	2b2000ef          	jal	ra,10384 <malloc>
   100d6:	882a                	mv	a6,a0
   100d8:	8426                	mv	s0,s1
   100da:	87ca                	mv	a5,s2
   100dc:	85ca                	mv	a1,s2
   100de:	8626                	mv	a2,s1
   100e0:	4701                	li	a4,0
   100e2:	000408b7          	lui	a7,0x40
   100e6:	0007069b          	sext.w	a3,a4
   100ea:	c214                	sw	a3,0(a2)
   100ec:	c194                	sw	a3,0(a1)
   100ee:	c114                	sw	a3,0(a0)
   100f0:	2711                	addiw	a4,a4,4
   100f2:	0641                	addi	a2,a2,16
   100f4:	05c1                	addi	a1,a1,16
   100f6:	0541                	addi	a0,a0,16
   100f8:	ff1717e3          	bne	a4,a7,100e6 <main+0x36>
   100fc:	c0502573          	csrr	a0,hpmcounter5
   10100:	0005059b          	sext.w	a1,a0
   10104:	c0402573          	csrr	a0,hpmcounter4
   10108:	0005061b          	sext.w	a2,a0
   1010c:	c0002e73          	rdcycle	t3
   10110:	c0202373          	rdinstret	t1
   10114:	000808b7          	lui	a7,0x80
   10118:	98ca                	add	a7,a7,s2
   1011a:	86a6                	mv	a3,s1
   1011c:	4398                	lw	a4,0(a5)
   1011e:	00082503          	lw	a0,0(a6)
   10122:	07c1                	addi	a5,a5,16
   10124:	0841                	addi	a6,a6,16
   10126:	9f29                	addw	a4,a4,a0
   10128:	c298                	sw	a4,0(a3)
   1012a:	06c1                	addi	a3,a3,16
   1012c:	ff1798e3          	bne	a5,a7,1011c <main+0x6c>
   10130:	c00027f3          	rdcycle	a5
   10134:	8a818913          	addi	s2,gp,-1880 # 1ca90 <counters>
   10138:	41c787b3          	sub	a5,a5,t3
   1013c:	00f93023          	sd	a5,0(s2)
   10140:	c02027f3          	rdinstret	a5
   10144:	406787b3          	sub	a5,a5,t1
   10148:	00f93423          	sd	a5,8(s2)
   1014c:	c0502573          	csrr	a0,hpmcounter5
   10150:	87aa                	mv	a5,a0
   10152:	c0402573          	csrr	a0,hpmcounter4
   10156:	40c5063b          	subw	a2,a0,a2
   1015a:	0001a537          	lui	a0,0x1a
   1015e:	40b785bb          	subw	a1,a5,a1
   10162:	4681                	li	a3,0
   10164:	b9050513          	addi	a0,a0,-1136 # 19b90 <__clzdi2+0x3a>
   10168:	7e0000ef          	jal	ra,10948 <printf>
   1016c:	00893603          	ld	a2,8(s2)
   10170:	00093583          	ld	a1,0(s2)
   10174:	0001a537          	lui	a0,0x1a
   10178:	bb850513          	addi	a0,a0,-1096 # 19bb8 <__clzdi2+0x62>
   1017c:	7cc000ef          	jal	ra,10948 <printf>
   10180:	000807b7          	lui	a5,0x80
   10184:	94be                	add	s1,s1,a5
   10186:	0001a937          	lui	s2,0x1a
   1018a:	400c                	lw	a1,0(s0)
   1018c:	bd890513          	addi	a0,s2,-1064 # 19bd8 <__clzdi2+0x82>
   10190:	0441                	addi	s0,s0,16
   10192:	7b6000ef          	jal	ra,10948 <printf>
   10196:	fe849ae3          	bne	s1,s0,1018a <main+0xda>
   1019a:	60e2                	ld	ra,24(sp)
   1019c:	6442                	ld	s0,16(sp)
   1019e:	64a2                	ld	s1,8(sp)
   101a0:	6902                	ld	s2,0(sp)
   101a2:	4501                	li	a0,0
   101a4:	6105                	addi	sp,sp,32
   101a6:	8082                	ret

00000000000101a8 <_start>:
   101a8:	0000d197          	auipc	gp,0xd
   101ac:	04018193          	addi	gp,gp,64 # 1d1e8 <__global_pointer$>
   101b0:	84818513          	addi	a0,gp,-1976 # 1ca30 <_edata>
   101b4:	8e818613          	addi	a2,gp,-1816 # 1cad0 <_end>
   101b8:	8e09                	sub	a2,a2,a0
   101ba:	4581                	li	a1,0
   101bc:	6bc000ef          	jal	ra,10878 <memset>
   101c0:	00000517          	auipc	a0,0x0
   101c4:	11a50513          	addi	a0,a0,282 # 102da <__libc_fini_array>
   101c8:	0e8000ef          	jal	ra,102b0 <atexit>
   101cc:	156000ef          	jal	ra,10322 <__libc_init_array>
   101d0:	4502                	lw	a0,0(sp)
   101d2:	002c                	addi	a1,sp,8
   101d4:	4601                	li	a2,0
   101d6:	edbff0ef          	jal	ra,100b0 <main>
   101da:	0e20006f          	j	102bc <exit>

00000000000101de <_fini>:
   101de:	8082                	ret

00000000000101e0 <deregister_tm_clones>:
   101e0:	6575                	lui	a0,0x1d
   101e2:	67f5                	lui	a5,0x1d
   101e4:	9e850713          	addi	a4,a0,-1560 # 1c9e8 <__TMC_END__>
   101e8:	9e878793          	addi	a5,a5,-1560 # 1c9e8 <__TMC_END__>
   101ec:	00e78b63          	beq	a5,a4,10202 <deregister_tm_clones+0x22>
   101f0:	00000337          	lui	t1,0x0
   101f4:	00030313          	mv	t1,t1
   101f8:	00030563          	beqz	t1,10202 <deregister_tm_clones+0x22>
   101fc:	9e850513          	addi	a0,a0,-1560
   10200:	8302                	jr	t1
   10202:	8082                	ret

0000000000010204 <register_tm_clones>:
   10204:	67f5                	lui	a5,0x1d
   10206:	6575                	lui	a0,0x1d
   10208:	9e878593          	addi	a1,a5,-1560 # 1c9e8 <__TMC_END__>
   1020c:	9e850793          	addi	a5,a0,-1560 # 1c9e8 <__TMC_END__>
   10210:	8d9d                	sub	a1,a1,a5
   10212:	858d                	srai	a1,a1,0x3
   10214:	4789                	li	a5,2
   10216:	02f5c5b3          	div	a1,a1,a5
   1021a:	c991                	beqz	a1,1022e <register_tm_clones+0x2a>
   1021c:	00000337          	lui	t1,0x0
   10220:	00030313          	mv	t1,t1
   10224:	00030563          	beqz	t1,1022e <register_tm_clones+0x2a>
   10228:	9e850513          	addi	a0,a0,-1560
   1022c:	8302                	jr	t1
   1022e:	8082                	ret

0000000000010230 <__do_global_dtors_aux>:
   10230:	8701c703          	lbu	a4,-1936(gp) # 1ca58 <completed.5212>
   10234:	eb15                	bnez	a4,10268 <__do_global_dtors_aux+0x38>
   10236:	1141                	addi	sp,sp,-16
   10238:	e022                	sd	s0,0(sp)
   1023a:	e406                	sd	ra,8(sp)
   1023c:	843e                	mv	s0,a5
   1023e:	fa3ff0ef          	jal	ra,101e0 <deregister_tm_clones>
   10242:	000007b7          	lui	a5,0x0
   10246:	00078793          	mv	a5,a5
   1024a:	cb81                	beqz	a5,1025a <__do_global_dtors_aux+0x2a>
   1024c:	6571                	lui	a0,0x1c
   1024e:	8d050513          	addi	a0,a0,-1840 # 1b8d0 <__EH_FRAME_BEGIN__>
   10252:	ffff0097          	auipc	ra,0xffff0
   10256:	dae080e7          	jalr	-594(ra) # 0 <main-0x100b0>
   1025a:	4785                	li	a5,1
   1025c:	86f18823          	sb	a5,-1936(gp) # 1ca58 <completed.5212>
   10260:	60a2                	ld	ra,8(sp)
   10262:	6402                	ld	s0,0(sp)
   10264:	0141                	addi	sp,sp,16
   10266:	8082                	ret
   10268:	8082                	ret

000000000001026a <frame_dummy>:
   1026a:	000007b7          	lui	a5,0x0
   1026e:	00078793          	mv	a5,a5
   10272:	cf91                	beqz	a5,1028e <frame_dummy+0x24>
   10274:	6571                	lui	a0,0x1c
   10276:	1141                	addi	sp,sp,-16
   10278:	87818593          	addi	a1,gp,-1928 # 1ca60 <object.5217>
   1027c:	8d050513          	addi	a0,a0,-1840 # 1b8d0 <__EH_FRAME_BEGIN__>
   10280:	e406                	sd	ra,8(sp)
   10282:	ffff0097          	auipc	ra,0xffff0
   10286:	d7e080e7          	jalr	-642(ra) # 0 <main-0x100b0>
   1028a:	60a2                	ld	ra,8(sp)
   1028c:	0141                	addi	sp,sp,16
   1028e:	f77ff06f          	j	10204 <register_tm_clones>

0000000000010292 <setStats>:
   10292:	c0002773          	rdcycle	a4
   10296:	8a818793          	addi	a5,gp,-1880 # 1ca90 <counters>
   1029a:	e119                	bnez	a0,102a0 <setStats+0xe>
   1029c:	6394                	ld	a3,0(a5)
   1029e:	8f15                	sub	a4,a4,a3
   102a0:	e398                	sd	a4,0(a5)
   102a2:	c0202773          	rdinstret	a4
   102a6:	e119                	bnez	a0,102ac <setStats+0x1a>
   102a8:	6794                	ld	a3,8(a5)
   102aa:	8f15                	sub	a4,a4,a3
   102ac:	e798                	sd	a4,8(a5)
   102ae:	8082                	ret

00000000000102b0 <atexit>:
   102b0:	85aa                	mv	a1,a0
   102b2:	4681                	li	a3,0
   102b4:	4601                	li	a2,0
   102b6:	4501                	li	a0,0
   102b8:	6110106f          	j	120c8 <__register_exitproc>

00000000000102bc <exit>:
   102bc:	1141                	addi	sp,sp,-16
   102be:	4581                	li	a1,0
   102c0:	e022                	sd	s0,0(sp)
   102c2:	e406                	sd	ra,8(sp)
   102c4:	842a                	mv	s0,a0
   102c6:	667010ef          	jal	ra,1212c <__call_exitprocs>
   102ca:	8281b503          	ld	a0,-2008(gp) # 1ca10 <_global_impure_ptr>
   102ce:	6d3c                	ld	a5,88(a0)
   102d0:	c391                	beqz	a5,102d4 <exit+0x18>
   102d2:	9782                	jalr	a5
   102d4:	8522                	mv	a0,s0
   102d6:	1de080ef          	jal	ra,184b4 <_exit>

00000000000102da <__libc_fini_array>:
   102da:	7179                	addi	sp,sp,-48
   102dc:	67f1                	lui	a5,0x1c
   102de:	6771                	lui	a4,0x1c
   102e0:	f022                	sd	s0,32(sp)
   102e2:	8e070713          	addi	a4,a4,-1824 # 1b8e0 <__init_array_end>
   102e6:	8e878413          	addi	s0,a5,-1816 # 1b8e8 <__fini_array_end>
   102ea:	8c19                	sub	s0,s0,a4
   102ec:	ec26                	sd	s1,24(sp)
   102ee:	e84a                	sd	s2,16(sp)
   102f0:	e44e                	sd	s3,8(sp)
   102f2:	f406                	sd	ra,40(sp)
   102f4:	840d                	srai	s0,s0,0x3
   102f6:	4481                	li	s1,0
   102f8:	8e878913          	addi	s2,a5,-1816
   102fc:	59e1                	li	s3,-8
   102fe:	00941a63          	bne	s0,s1,10312 <__libc_fini_array+0x38>
   10302:	7402                	ld	s0,32(sp)
   10304:	70a2                	ld	ra,40(sp)
   10306:	64e2                	ld	s1,24(sp)
   10308:	6942                	ld	s2,16(sp)
   1030a:	69a2                	ld	s3,8(sp)
   1030c:	6145                	addi	sp,sp,48
   1030e:	ed1ff06f          	j	101de <_fini>
   10312:	033487b3          	mul	a5,s1,s3
   10316:	0485                	addi	s1,s1,1
   10318:	97ca                	add	a5,a5,s2
   1031a:	ff87b783          	ld	a5,-8(a5)
   1031e:	9782                	jalr	a5
   10320:	bff9                	j	102fe <__libc_fini_array+0x24>

0000000000010322 <__libc_init_array>:
   10322:	1101                	addi	sp,sp,-32
   10324:	e822                	sd	s0,16(sp)
   10326:	e426                	sd	s1,8(sp)
   10328:	6471                	lui	s0,0x1c
   1032a:	64f1                	lui	s1,0x1c
   1032c:	8d448793          	addi	a5,s1,-1836 # 1b8d4 <__preinit_array_end>
   10330:	8d440413          	addi	s0,s0,-1836 # 1b8d4 <__preinit_array_end>
   10334:	8c1d                	sub	s0,s0,a5
   10336:	e04a                	sd	s2,0(sp)
   10338:	ec06                	sd	ra,24(sp)
   1033a:	840d                	srai	s0,s0,0x3
   1033c:	8d448493          	addi	s1,s1,-1836
   10340:	4901                	li	s2,0
   10342:	02891763          	bne	s2,s0,10370 <__libc_init_array+0x4e>
   10346:	64f1                	lui	s1,0x1c
   10348:	e97ff0ef          	jal	ra,101de <_fini>
   1034c:	6471                	lui	s0,0x1c
   1034e:	8d848793          	addi	a5,s1,-1832 # 1b8d8 <__frame_dummy_init_array_entry>
   10352:	8e040413          	addi	s0,s0,-1824 # 1b8e0 <__init_array_end>
   10356:	8c1d                	sub	s0,s0,a5
   10358:	840d                	srai	s0,s0,0x3
   1035a:	8d848493          	addi	s1,s1,-1832
   1035e:	4901                	li	s2,0
   10360:	00891d63          	bne	s2,s0,1037a <__libc_init_array+0x58>
   10364:	60e2                	ld	ra,24(sp)
   10366:	6442                	ld	s0,16(sp)
   10368:	64a2                	ld	s1,8(sp)
   1036a:	6902                	ld	s2,0(sp)
   1036c:	6105                	addi	sp,sp,32
   1036e:	8082                	ret
   10370:	609c                	ld	a5,0(s1)
   10372:	0905                	addi	s2,s2,1
   10374:	04a1                	addi	s1,s1,8
   10376:	9782                	jalr	a5
   10378:	b7e9                	j	10342 <__libc_init_array+0x20>
   1037a:	609c                	ld	a5,0(s1)
   1037c:	0905                	addi	s2,s2,1
   1037e:	04a1                	addi	s1,s1,8
   10380:	9782                	jalr	a5
   10382:	bff9                	j	10360 <__libc_init_array+0x3e>

0000000000010384 <malloc>:
   10384:	85aa                	mv	a1,a0
   10386:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   1038a:	00e0006f          	j	10398 <_malloc_r>

000000000001038e <free>:
   1038e:	85aa                	mv	a1,a0
   10390:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   10394:	2900206f          	j	12624 <_free_r>

0000000000010398 <_malloc_r>:
   10398:	715d                	addi	sp,sp,-80
   1039a:	fc26                	sd	s1,56(sp)
   1039c:	f84a                	sd	s2,48(sp)
   1039e:	e486                	sd	ra,72(sp)
   103a0:	e0a2                	sd	s0,64(sp)
   103a2:	f44e                	sd	s3,40(sp)
   103a4:	f052                	sd	s4,32(sp)
   103a6:	ec56                	sd	s5,24(sp)
   103a8:	e85a                	sd	s6,16(sp)
   103aa:	e45e                	sd	s7,8(sp)
   103ac:	e062                	sd	s8,0(sp)
   103ae:	01758493          	addi	s1,a1,23
   103b2:	02e00793          	li	a5,46
   103b6:	892a                	mv	s2,a0
   103b8:	4a97f763          	bleu	s1,a5,10866 <_malloc_r+0x4ce>
   103bc:	800007b7          	lui	a5,0x80000
   103c0:	98c1                	andi	s1,s1,-16
   103c2:	fff7c793          	not	a5,a5
   103c6:	0097e463          	bltu	a5,s1,103ce <_malloc_r+0x36>
   103ca:	02b4f263          	bleu	a1,s1,103ee <_malloc_r+0x56>
   103ce:	47b1                	li	a5,12
   103d0:	00f92023          	sw	a5,0(s2)
   103d4:	4501                	li	a0,0
   103d6:	60a6                	ld	ra,72(sp)
   103d8:	6406                	ld	s0,64(sp)
   103da:	74e2                	ld	s1,56(sp)
   103dc:	7942                	ld	s2,48(sp)
   103de:	79a2                	ld	s3,40(sp)
   103e0:	7a02                	ld	s4,32(sp)
   103e2:	6ae2                	ld	s5,24(sp)
   103e4:	6b42                	ld	s6,16(sp)
   103e6:	6ba2                	ld	s7,8(sp)
   103e8:	6c02                	ld	s8,0(sp)
   103ea:	6161                	addi	sp,sp,80
   103ec:	8082                	ret
   103ee:	534000ef          	jal	ra,10922 <__malloc_lock>
   103f2:	1f700793          	li	a5,503
   103f6:	0497e863          	bltu	a5,s1,10446 <_malloc_r+0xae>
   103fa:	0034d793          	srli	a5,s1,0x3
   103fe:	2781                	sext.w	a5,a5
   10400:	0017871b          	addiw	a4,a5,1
   10404:	0017171b          	slliw	a4,a4,0x1
   10408:	66f1                	lui	a3,0x1c
   1040a:	03068693          	addi	a3,a3,48 # 1c030 <__malloc_av_>
   1040e:	070e                	slli	a4,a4,0x3
   10410:	9736                	add	a4,a4,a3
   10412:	6700                	ld	s0,8(a4)
   10414:	ff070693          	addi	a3,a4,-16
   10418:	00d41663          	bne	s0,a3,10424 <_malloc_r+0x8c>
   1041c:	6f00                	ld	s0,24(a4)
   1041e:	2789                	addiw	a5,a5,2
   10420:	06870663          	beq	a4,s0,1048c <_malloc_r+0xf4>
   10424:	641c                	ld	a5,8(s0)
   10426:	6c18                	ld	a4,24(s0)
   10428:	6814                	ld	a3,16(s0)
   1042a:	9bf1                	andi	a5,a5,-4
   1042c:	97a2                	add	a5,a5,s0
   1042e:	ee98                	sd	a4,24(a3)
   10430:	eb14                	sd	a3,16(a4)
   10432:	6798                	ld	a4,8(a5)
   10434:	00176713          	ori	a4,a4,1
   10438:	e798                	sd	a4,8(a5)
   1043a:	854a                	mv	a0,s2
   1043c:	4e8000ef          	jal	ra,10924 <__malloc_unlock>
   10440:	01040513          	addi	a0,s0,16
   10444:	bf49                	j	103d6 <_malloc_r+0x3e>
   10446:	0094d713          	srli	a4,s1,0x9
   1044a:	03f00793          	li	a5,63
   1044e:	cb01                	beqz	a4,1045e <_malloc_r+0xc6>
   10450:	4791                	li	a5,4
   10452:	08e7e063          	bltu	a5,a4,104d2 <_malloc_r+0x13a>
   10456:	0064d793          	srli	a5,s1,0x6
   1045a:	0387879b          	addiw	a5,a5,56
   1045e:	0017871b          	addiw	a4,a5,1
   10462:	0017171b          	slliw	a4,a4,0x1
   10466:	66f1                	lui	a3,0x1c
   10468:	070e                	slli	a4,a4,0x3
   1046a:	03068693          	addi	a3,a3,48 # 1c030 <__malloc_av_>
   1046e:	9736                	add	a4,a4,a3
   10470:	6700                	ld	s0,8(a4)
   10472:	ff070593          	addi	a1,a4,-16
   10476:	457d                	li	a0,31
   10478:	00b40963          	beq	s0,a1,1048a <_malloc_r+0xf2>
   1047c:	6418                	ld	a4,8(s0)
   1047e:	9b71                	andi	a4,a4,-4
   10480:	40970633          	sub	a2,a4,s1
   10484:	08c55a63          	ble	a2,a0,10518 <_malloc_r+0x180>
   10488:	37fd                	addiw	a5,a5,-1
   1048a:	2785                	addiw	a5,a5,1
   1048c:	69f1                	lui	s3,0x1c
   1048e:	03098693          	addi	a3,s3,48 # 1c030 <__malloc_av_>
   10492:	7280                	ld	s0,32(a3)
   10494:	65f1                	lui	a1,0x1c
   10496:	04058613          	addi	a2,a1,64 # 1c040 <__malloc_av_+0x10>
   1049a:	03098993          	addi	s3,s3,48
   1049e:	04058593          	addi	a1,a1,64
   104a2:	0cc40c63          	beq	s0,a2,1057a <_malloc_r+0x1e2>
   104a6:	6418                	ld	a4,8(s0)
   104a8:	487d                	li	a6,31
   104aa:	9b71                	andi	a4,a4,-4
   104ac:	40970533          	sub	a0,a4,s1
   104b0:	06a85f63          	ble	a0,a6,1052e <_malloc_r+0x196>
   104b4:	009407b3          	add	a5,s0,s1
   104b8:	0014e493          	ori	s1,s1,1
   104bc:	e404                	sd	s1,8(s0)
   104be:	f69c                	sd	a5,40(a3)
   104c0:	f29c                	sd	a5,32(a3)
   104c2:	00156693          	ori	a3,a0,1
   104c6:	ef90                	sd	a2,24(a5)
   104c8:	eb90                	sd	a2,16(a5)
   104ca:	e794                	sd	a3,8(a5)
   104cc:	9722                	add	a4,a4,s0
   104ce:	e308                	sd	a0,0(a4)
   104d0:	b7ad                	j	1043a <_malloc_r+0xa2>
   104d2:	47d1                	li	a5,20
   104d4:	00e7e563          	bltu	a5,a4,104de <_malloc_r+0x146>
   104d8:	05b7079b          	addiw	a5,a4,91
   104dc:	b749                	j	1045e <_malloc_r+0xc6>
   104de:	05400793          	li	a5,84
   104e2:	00e7e763          	bltu	a5,a4,104f0 <_malloc_r+0x158>
   104e6:	00c4d793          	srli	a5,s1,0xc
   104ea:	06e7879b          	addiw	a5,a5,110
   104ee:	bf85                	j	1045e <_malloc_r+0xc6>
   104f0:	15400793          	li	a5,340
   104f4:	00e7e763          	bltu	a5,a4,10502 <_malloc_r+0x16a>
   104f8:	00f4d793          	srli	a5,s1,0xf
   104fc:	0777879b          	addiw	a5,a5,119
   10500:	bfb9                	j	1045e <_malloc_r+0xc6>
   10502:	55400693          	li	a3,1364
   10506:	07e00793          	li	a5,126
   1050a:	f4e6eae3          	bltu	a3,a4,1045e <_malloc_r+0xc6>
   1050e:	0124d793          	srli	a5,s1,0x12
   10512:	07c7879b          	addiw	a5,a5,124
   10516:	b7a1                	j	1045e <_malloc_r+0xc6>
   10518:	6c14                	ld	a3,24(s0)
   1051a:	00064863          	bltz	a2,1052a <_malloc_r+0x192>
   1051e:	681c                	ld	a5,16(s0)
   10520:	ef94                	sd	a3,24(a5)
   10522:	ea9c                	sd	a5,16(a3)
   10524:	00e407b3          	add	a5,s0,a4
   10528:	b729                	j	10432 <_malloc_r+0x9a>
   1052a:	8436                	mv	s0,a3
   1052c:	b7b1                	j	10478 <_malloc_r+0xe0>
   1052e:	f690                	sd	a2,40(a3)
   10530:	f290                	sd	a2,32(a3)
   10532:	00054863          	bltz	a0,10542 <_malloc_r+0x1aa>
   10536:	9722                	add	a4,a4,s0
   10538:	671c                	ld	a5,8(a4)
   1053a:	0017e793          	ori	a5,a5,1
   1053e:	e71c                	sd	a5,8(a4)
   10540:	bded                	j	1043a <_malloc_r+0xa2>
   10542:	1ff00693          	li	a3,511
   10546:	12e6e863          	bltu	a3,a4,10676 <_malloc_r+0x2de>
   1054a:	830d                	srli	a4,a4,0x3
   1054c:	2701                	sext.w	a4,a4
   1054e:	4027561b          	sraiw	a2,a4,0x2
   10552:	4685                	li	a3,1
   10554:	00c696b3          	sll	a3,a3,a2
   10558:	2705                	addiw	a4,a4,1
   1055a:	0089b603          	ld	a2,8(s3)
   1055e:	0017171b          	slliw	a4,a4,0x1
   10562:	070e                	slli	a4,a4,0x3
   10564:	8ed1                	or	a3,a3,a2
   10566:	974e                	add	a4,a4,s3
   10568:	00d9b423          	sd	a3,8(s3)
   1056c:	6314                	ld	a3,0(a4)
   1056e:	ff070613          	addi	a2,a4,-16
   10572:	ec10                	sd	a2,24(s0)
   10574:	e814                	sd	a3,16(s0)
   10576:	e300                	sd	s0,0(a4)
   10578:	ee80                	sd	s0,24(a3)
   1057a:	4027d71b          	sraiw	a4,a5,0x2
   1057e:	4305                	li	t1,1
   10580:	00e31333          	sll	t1,t1,a4
   10584:	0089b703          	ld	a4,8(s3)
   10588:	06676063          	bltu	a4,t1,105e8 <_malloc_r+0x250>
   1058c:	006776b3          	and	a3,a4,t1
   10590:	e699                	bnez	a3,1059e <_malloc_r+0x206>
   10592:	9bf1                	andi	a5,a5,-4
   10594:	0306                	slli	t1,t1,0x1
   10596:	006776b3          	and	a3,a4,t1
   1059a:	2791                	addiw	a5,a5,4
   1059c:	dee5                	beqz	a3,10594 <_malloc_r+0x1fc>
   1059e:	4e7d                	li	t3,31
   105a0:	0017871b          	addiw	a4,a5,1
   105a4:	0017171b          	slliw	a4,a4,0x1
   105a8:	070e                	slli	a4,a4,0x3
   105aa:	1741                	addi	a4,a4,-16
   105ac:	974e                	add	a4,a4,s3
   105ae:	883a                	mv	a6,a4
   105b0:	853e                	mv	a0,a5
   105b2:	01883403          	ld	s0,24(a6)
   105b6:	15041f63          	bne	s0,a6,10714 <_malloc_r+0x37c>
   105ba:	2505                	addiw	a0,a0,1
   105bc:	00357693          	andi	a3,a0,3
   105c0:	0841                	addi	a6,a6,16
   105c2:	fae5                	bnez	a3,105b2 <_malloc_r+0x21a>
   105c4:	0037f693          	andi	a3,a5,3
   105c8:	18069f63          	bnez	a3,10766 <_malloc_r+0x3ce>
   105cc:	0089b703          	ld	a4,8(s3)
   105d0:	fff34793          	not	a5,t1
   105d4:	8ff9                	and	a5,a5,a4
   105d6:	00f9b423          	sd	a5,8(s3)
   105da:	0089b683          	ld	a3,8(s3)
   105de:	0306                	slli	t1,t1,0x1
   105e0:	0066e463          	bltu	a3,t1,105e8 <_malloc_r+0x250>
   105e4:	18031e63          	bnez	t1,10780 <_malloc_r+0x3e8>
   105e8:	0109bb03          	ld	s6,16(s3)
   105ec:	008b3403          	ld	s0,8(s6)
   105f0:	ffc47a13          	andi	s4,s0,-4
   105f4:	009a6763          	bltu	s4,s1,10602 <_malloc_r+0x26a>
   105f8:	409a07b3          	sub	a5,s4,s1
   105fc:	477d                	li	a4,31
   105fe:	24f74863          	blt	a4,a5,1084e <_malloc_r+0x4b6>
   10602:	8581b403          	ld	s0,-1960(gp) # 1ca40 <__malloc_top_pad>
   10606:	8381b703          	ld	a4,-1992(gp) # 1ca20 <__malloc_sbrk_base>
   1060a:	57fd                	li	a5,-1
   1060c:	9426                	add	s0,s0,s1
   1060e:	16f71b63          	bne	a4,a5,10784 <_malloc_r+0x3ec>
   10612:	02040413          	addi	s0,s0,32
   10616:	85a2                	mv	a1,s0
   10618:	854a                	mv	a0,s2
   1061a:	358000ef          	jal	ra,10972 <_sbrk_r>
   1061e:	57fd                	li	a5,-1
   10620:	8aaa                	mv	s5,a0
   10622:	1cf50b63          	beq	a0,a5,107f8 <_malloc_r+0x460>
   10626:	014b07b3          	add	a5,s6,s4
   1062a:	00f57463          	bleu	a5,a0,10632 <_malloc_r+0x29a>
   1062e:	1d3b1563          	bne	s6,s3,107f8 <_malloc_r+0x460>
   10632:	8b818693          	addi	a3,gp,-1864 # 1caa0 <__malloc_current_mallinfo>
   10636:	4298                	lw	a4,0(a3)
   10638:	8b818b93          	addi	s7,gp,-1864 # 1caa0 <__malloc_current_mallinfo>
   1063c:	9f21                	addw	a4,a4,s0
   1063e:	c298                	sw	a4,0(a3)
   10640:	15579863          	bne	a5,s5,10790 <_malloc_r+0x3f8>
   10644:	03479693          	slli	a3,a5,0x34
   10648:	14069463          	bnez	a3,10790 <_malloc_r+0x3f8>
   1064c:	0109b783          	ld	a5,16(s3)
   10650:	9452                	add	s0,s0,s4
   10652:	00146413          	ori	s0,s0,1
   10656:	e780                	sd	s0,8(a5)
   10658:	000ba783          	lw	a5,0(s7)
   1065c:	8501b683          	ld	a3,-1968(gp) # 1ca38 <__malloc_max_sbrked_mem>
   10660:	00f6f463          	bleu	a5,a3,10668 <_malloc_r+0x2d0>
   10664:	84f1b823          	sd	a5,-1968(gp) # 1ca38 <__malloc_max_sbrked_mem>
   10668:	8481b683          	ld	a3,-1976(gp) # 1ca30 <_edata>
   1066c:	18f6f663          	bleu	a5,a3,107f8 <_malloc_r+0x460>
   10670:	84f1b423          	sd	a5,-1976(gp) # 1ca30 <_edata>
   10674:	a251                	j	107f8 <_malloc_r+0x460>
   10676:	00975613          	srli	a2,a4,0x9
   1067a:	4691                	li	a3,4
   1067c:	04c6e063          	bltu	a3,a2,106bc <_malloc_r+0x324>
   10680:	00675693          	srli	a3,a4,0x6
   10684:	0386869b          	addiw	a3,a3,56
   10688:	0016861b          	addiw	a2,a3,1
   1068c:	0016161b          	slliw	a2,a2,0x1
   10690:	060e                	slli	a2,a2,0x3
   10692:	964e                	add	a2,a2,s3
   10694:	ff060513          	addi	a0,a2,-16
   10698:	6210                	ld	a2,0(a2)
   1069a:	06c51763          	bne	a0,a2,10708 <_malloc_r+0x370>
   1069e:	4705                	li	a4,1
   106a0:	4026d69b          	sraiw	a3,a3,0x2
   106a4:	00d716b3          	sll	a3,a4,a3
   106a8:	0089b703          	ld	a4,8(s3)
   106ac:	8ed9                	or	a3,a3,a4
   106ae:	00d9b423          	sd	a3,8(s3)
   106b2:	ec08                	sd	a0,24(s0)
   106b4:	e810                	sd	a2,16(s0)
   106b6:	e900                	sd	s0,16(a0)
   106b8:	ee00                	sd	s0,24(a2)
   106ba:	b5c1                	j	1057a <_malloc_r+0x1e2>
   106bc:	46d1                	li	a3,20
   106be:	00c6e563          	bltu	a3,a2,106c8 <_malloc_r+0x330>
   106c2:	05b6069b          	addiw	a3,a2,91
   106c6:	b7c9                	j	10688 <_malloc_r+0x2f0>
   106c8:	05400693          	li	a3,84
   106cc:	00c6e763          	bltu	a3,a2,106da <_malloc_r+0x342>
   106d0:	00c75693          	srli	a3,a4,0xc
   106d4:	06e6869b          	addiw	a3,a3,110
   106d8:	bf45                	j	10688 <_malloc_r+0x2f0>
   106da:	15400693          	li	a3,340
   106de:	00c6e763          	bltu	a3,a2,106ec <_malloc_r+0x354>
   106e2:	00f75693          	srli	a3,a4,0xf
   106e6:	0776869b          	addiw	a3,a3,119
   106ea:	bf79                	j	10688 <_malloc_r+0x2f0>
   106ec:	55400513          	li	a0,1364
   106f0:	07e00693          	li	a3,126
   106f4:	f8c56ae3          	bltu	a0,a2,10688 <_malloc_r+0x2f0>
   106f8:	01275693          	srli	a3,a4,0x12
   106fc:	07c6869b          	addiw	a3,a3,124
   10700:	b761                	j	10688 <_malloc_r+0x2f0>
   10702:	6a10                	ld	a2,16(a2)
   10704:	00c50663          	beq	a0,a2,10710 <_malloc_r+0x378>
   10708:	6614                	ld	a3,8(a2)
   1070a:	9af1                	andi	a3,a3,-4
   1070c:	fed76be3          	bltu	a4,a3,10702 <_malloc_r+0x36a>
   10710:	6e08                	ld	a0,24(a2)
   10712:	b745                	j	106b2 <_malloc_r+0x31a>
   10714:	6414                	ld	a3,8(s0)
   10716:	6c10                	ld	a2,24(s0)
   10718:	9af1                	andi	a3,a3,-4
   1071a:	409688b3          	sub	a7,a3,s1
   1071e:	031e5763          	ble	a7,t3,1074c <_malloc_r+0x3b4>
   10722:	6818                	ld	a4,16(s0)
   10724:	009407b3          	add	a5,s0,s1
   10728:	0014e493          	ori	s1,s1,1
   1072c:	e404                	sd	s1,8(s0)
   1072e:	ef10                	sd	a2,24(a4)
   10730:	ea18                	sd	a4,16(a2)
   10732:	02f9b423          	sd	a5,40(s3)
   10736:	02f9b023          	sd	a5,32(s3)
   1073a:	0018e713          	ori	a4,a7,1
   1073e:	ef8c                	sd	a1,24(a5)
   10740:	eb8c                	sd	a1,16(a5)
   10742:	e798                	sd	a4,8(a5)
   10744:	96a2                	add	a3,a3,s0
   10746:	0116b023          	sd	a7,0(a3)
   1074a:	b9c5                	j	1043a <_malloc_r+0xa2>
   1074c:	0008cb63          	bltz	a7,10762 <_malloc_r+0x3ca>
   10750:	96a2                	add	a3,a3,s0
   10752:	669c                	ld	a5,8(a3)
   10754:	0017e793          	ori	a5,a5,1
   10758:	e69c                	sd	a5,8(a3)
   1075a:	681c                	ld	a5,16(s0)
   1075c:	ef90                	sd	a2,24(a5)
   1075e:	ea1c                	sd	a5,16(a2)
   10760:	b9e9                	j	1043a <_malloc_r+0xa2>
   10762:	8432                	mv	s0,a2
   10764:	bd89                	j	105b6 <_malloc_r+0x21e>
   10766:	ff070693          	addi	a3,a4,-16
   1076a:	6318                	ld	a4,0(a4)
   1076c:	37fd                	addiw	a5,a5,-1
   1076e:	e4d70be3          	beq	a4,a3,105c4 <_malloc_r+0x22c>
   10772:	b5a5                	j	105da <_malloc_r+0x242>
   10774:	2791                	addiw	a5,a5,4
   10776:	0306                	slli	t1,t1,0x1
   10778:	0066f733          	and	a4,a3,t1
   1077c:	df65                	beqz	a4,10774 <_malloc_r+0x3dc>
   1077e:	b50d                	j	105a0 <_malloc_r+0x208>
   10780:	87aa                	mv	a5,a0
   10782:	bfdd                	j	10778 <_malloc_r+0x3e0>
   10784:	6785                	lui	a5,0x1
   10786:	07fd                	addi	a5,a5,31
   10788:	943e                	add	s0,s0,a5
   1078a:	77fd                	lui	a5,0xfffff
   1078c:	8c7d                	and	s0,s0,a5
   1078e:	b561                	j	10616 <_malloc_r+0x27e>
   10790:	8381b603          	ld	a2,-1992(gp) # 1ca20 <__malloc_sbrk_base>
   10794:	56fd                	li	a3,-1
   10796:	08d61063          	bne	a2,a3,10816 <_malloc_r+0x47e>
   1079a:	8351bc23          	sd	s5,-1992(gp) # 1ca20 <__malloc_sbrk_base>
   1079e:	00faf593          	andi	a1,s5,15
   107a2:	c589                	beqz	a1,107ac <_malloc_r+0x414>
   107a4:	47c1                	li	a5,16
   107a6:	40b785b3          	sub	a1,a5,a1
   107aa:	9aae                	add	s5,s5,a1
   107ac:	6785                	lui	a5,0x1
   107ae:	95be                	add	a1,a1,a5
   107b0:	9456                	add	s0,s0,s5
   107b2:	17fd                	addi	a5,a5,-1
   107b4:	8c7d                	and	s0,s0,a5
   107b6:	40858433          	sub	s0,a1,s0
   107ba:	85a2                	mv	a1,s0
   107bc:	854a                	mv	a0,s2
   107be:	1b4000ef          	jal	ra,10972 <_sbrk_r>
   107c2:	57fd                	li	a5,-1
   107c4:	00f51463          	bne	a0,a5,107cc <_malloc_r+0x434>
   107c8:	8556                	mv	a0,s5
   107ca:	4401                	li	s0,0
   107cc:	000ba783          	lw	a5,0(s7)
   107d0:	41550533          	sub	a0,a0,s5
   107d4:	0159b823          	sd	s5,16(s3)
   107d8:	9fa1                	addw	a5,a5,s0
   107da:	942a                	add	s0,s0,a0
   107dc:	00146413          	ori	s0,s0,1
   107e0:	00fba023          	sw	a5,0(s7)
   107e4:	008ab423          	sd	s0,8(s5)
   107e8:	e73b08e3          	beq	s6,s3,10658 <_malloc_r+0x2c0>
   107ec:	477d                	li	a4,31
   107ee:	03476a63          	bltu	a4,s4,10822 <_malloc_r+0x48a>
   107f2:	4785                	li	a5,1
   107f4:	00fab423          	sd	a5,8(s5)
   107f8:	0109b783          	ld	a5,16(s3)
   107fc:	6798                	ld	a4,8(a5)
   107fe:	9b71                	andi	a4,a4,-4
   10800:	409707b3          	sub	a5,a4,s1
   10804:	00976563          	bltu	a4,s1,1080e <_malloc_r+0x476>
   10808:	477d                	li	a4,31
   1080a:	04f74263          	blt	a4,a5,1084e <_malloc_r+0x4b6>
   1080e:	854a                	mv	a0,s2
   10810:	114000ef          	jal	ra,10924 <__malloc_unlock>
   10814:	b6c1                	j	103d4 <_malloc_r+0x3c>
   10816:	40fa87b3          	sub	a5,s5,a5
   1081a:	9fb9                	addw	a5,a5,a4
   1081c:	00fba023          	sw	a5,0(s7)
   10820:	bfbd                	j	1079e <_malloc_r+0x406>
   10822:	008b3783          	ld	a5,8(s6)
   10826:	fe8a0413          	addi	s0,s4,-24
   1082a:	9841                	andi	s0,s0,-16
   1082c:	8b85                	andi	a5,a5,1
   1082e:	8fc1                	or	a5,a5,s0
   10830:	00fb3423          	sd	a5,8(s6)
   10834:	46a5                	li	a3,9
   10836:	008b07b3          	add	a5,s6,s0
   1083a:	e794                	sd	a3,8(a5)
   1083c:	eb94                	sd	a3,16(a5)
   1083e:	e0877de3          	bleu	s0,a4,10658 <_malloc_r+0x2c0>
   10842:	010b0593          	addi	a1,s6,16
   10846:	854a                	mv	a0,s2
   10848:	5dd010ef          	jal	ra,12624 <_free_r>
   1084c:	b531                	j	10658 <_malloc_r+0x2c0>
   1084e:	0109b403          	ld	s0,16(s3)
   10852:	0014e713          	ori	a4,s1,1
   10856:	0017e793          	ori	a5,a5,1
   1085a:	e418                	sd	a4,8(s0)
   1085c:	94a2                	add	s1,s1,s0
   1085e:	0099b823          	sd	s1,16(s3)
   10862:	e49c                	sd	a5,8(s1)
   10864:	bed9                	j	1043a <_malloc_r+0xa2>
   10866:	02000793          	li	a5,32
   1086a:	b6b7e2e3          	bltu	a5,a1,103ce <_malloc_r+0x36>
   1086e:	0b4000ef          	jal	ra,10922 <__malloc_lock>
   10872:	02000493          	li	s1,32
   10876:	b651                	j	103fa <_malloc_r+0x62>

0000000000010878 <memset>:
   10878:	433d                	li	t1,15
   1087a:	872a                	mv	a4,a0
   1087c:	02c37163          	bleu	a2,t1,1089e <memset+0x26>
   10880:	00f77793          	andi	a5,a4,15
   10884:	e3c1                	bnez	a5,10904 <memset+0x8c>
   10886:	e1bd                	bnez	a1,108ec <memset+0x74>
   10888:	ff067693          	andi	a3,a2,-16
   1088c:	8a3d                	andi	a2,a2,15
   1088e:	96ba                	add	a3,a3,a4
   10890:	e30c                	sd	a1,0(a4)
   10892:	e70c                	sd	a1,8(a4)
   10894:	0741                	addi	a4,a4,16
   10896:	fed76de3          	bltu	a4,a3,10890 <memset+0x18>
   1089a:	e211                	bnez	a2,1089e <memset+0x26>
   1089c:	8082                	ret
   1089e:	40c306b3          	sub	a3,t1,a2
   108a2:	068a                	slli	a3,a3,0x2
   108a4:	00000297          	auipc	t0,0x0
   108a8:	9696                	add	a3,a3,t0
   108aa:	00a68067          	jr	10(a3)
   108ae:	00b70723          	sb	a1,14(a4)
   108b2:	00b706a3          	sb	a1,13(a4)
   108b6:	00b70623          	sb	a1,12(a4)
   108ba:	00b705a3          	sb	a1,11(a4)
   108be:	00b70523          	sb	a1,10(a4)
   108c2:	00b704a3          	sb	a1,9(a4)
   108c6:	00b70423          	sb	a1,8(a4)
   108ca:	00b703a3          	sb	a1,7(a4)
   108ce:	00b70323          	sb	a1,6(a4)
   108d2:	00b702a3          	sb	a1,5(a4)
   108d6:	00b70223          	sb	a1,4(a4)
   108da:	00b701a3          	sb	a1,3(a4)
   108de:	00b70123          	sb	a1,2(a4)
   108e2:	00b700a3          	sb	a1,1(a4)
   108e6:	00b70023          	sb	a1,0(a4)
   108ea:	8082                	ret
   108ec:	0ff5f593          	andi	a1,a1,255
   108f0:	00859693          	slli	a3,a1,0x8
   108f4:	8dd5                	or	a1,a1,a3
   108f6:	01059693          	slli	a3,a1,0x10
   108fa:	8dd5                	or	a1,a1,a3
   108fc:	02059693          	slli	a3,a1,0x20
   10900:	8dd5                	or	a1,a1,a3
   10902:	b759                	j	10888 <memset+0x10>
   10904:	00279693          	slli	a3,a5,0x2
   10908:	00000297          	auipc	t0,0x0
   1090c:	9696                	add	a3,a3,t0
   1090e:	8286                	mv	t0,ra
   10910:	fa2680e7          	jalr	-94(a3)
   10914:	8096                	mv	ra,t0
   10916:	17c1                	addi	a5,a5,-16
   10918:	8f1d                	sub	a4,a4,a5
   1091a:	963e                	add	a2,a2,a5
   1091c:	f8c371e3          	bleu	a2,t1,1089e <memset+0x26>
   10920:	b79d                	j	10886 <memset+0xe>

0000000000010922 <__malloc_lock>:
   10922:	8082                	ret

0000000000010924 <__malloc_unlock>:
   10924:	8082                	ret

0000000000010926 <_printf_r>:
   10926:	715d                	addi	sp,sp,-80
   10928:	f032                	sd	a2,32(sp)
   1092a:	f436                	sd	a3,40(sp)
   1092c:	f83a                	sd	a4,48(sp)
   1092e:	fc3e                	sd	a5,56(sp)
   10930:	e0c2                	sd	a6,64(sp)
   10932:	e4c6                	sd	a7,72(sp)
   10934:	862e                	mv	a2,a1
   10936:	690c                	ld	a1,16(a0)
   10938:	1014                	addi	a3,sp,32
   1093a:	ec06                	sd	ra,24(sp)
   1093c:	e436                	sd	a3,8(sp)
   1093e:	060000ef          	jal	ra,1099e <_vfprintf_r>
   10942:	60e2                	ld	ra,24(sp)
   10944:	6161                	addi	sp,sp,80
   10946:	8082                	ret

0000000000010948 <printf>:
   10948:	711d                	addi	sp,sp,-96
   1094a:	e4be                	sd	a5,72(sp)
   1094c:	8301b783          	ld	a5,-2000(gp) # 1ca18 <_impure_ptr>
   10950:	f832                	sd	a2,48(sp)
   10952:	fc36                	sd	a3,56(sp)
   10954:	f42e                	sd	a1,40(sp)
   10956:	e0ba                	sd	a4,64(sp)
   10958:	e8c2                	sd	a6,80(sp)
   1095a:	ecc6                	sd	a7,88(sp)
   1095c:	6b8c                	ld	a1,16(a5)
   1095e:	1034                	addi	a3,sp,40
   10960:	862a                	mv	a2,a0
   10962:	853e                	mv	a0,a5
   10964:	ec06                	sd	ra,24(sp)
   10966:	e436                	sd	a3,8(sp)
   10968:	036000ef          	jal	ra,1099e <_vfprintf_r>
   1096c:	60e2                	ld	ra,24(sp)
   1096e:	6125                	addi	sp,sp,96
   10970:	8082                	ret

0000000000010972 <_sbrk_r>:
   10972:	1101                	addi	sp,sp,-32
   10974:	e822                	sd	s0,16(sp)
   10976:	e426                	sd	s1,8(sp)
   10978:	84aa                	mv	s1,a0
   1097a:	852e                	mv	a0,a1
   1097c:	ec06                	sd	ra,24(sp)
   1097e:	8e01a023          	sw	zero,-1824(gp) # 1cac8 <errno>
   10982:	421070ef          	jal	ra,185a2 <_sbrk>
   10986:	57fd                	li	a5,-1
   10988:	00f51663          	bne	a0,a5,10994 <_sbrk_r+0x22>
   1098c:	8e01a783          	lw	a5,-1824(gp) # 1cac8 <errno>
   10990:	c391                	beqz	a5,10994 <_sbrk_r+0x22>
   10992:	c09c                	sw	a5,0(s1)
   10994:	60e2                	ld	ra,24(sp)
   10996:	6442                	ld	s0,16(sp)
   10998:	64a2                	ld	s1,8(sp)
   1099a:	6105                	addi	sp,sp,32
   1099c:	8082                	ret

000000000001099e <_vfprintf_r>:
   1099e:	d9010113          	addi	sp,sp,-624
   109a2:	26113423          	sd	ra,616(sp)
   109a6:	24913c23          	sd	s1,600(sp)
   109aa:	25213823          	sd	s2,592(sp)
   109ae:	25313423          	sd	s3,584(sp)
   109b2:	23713423          	sd	s7,552(sp)
   109b6:	892e                	mv	s2,a1
   109b8:	84b2                	mv	s1,a2
   109ba:	8bb6                	mv	s7,a3
   109bc:	26813023          	sd	s0,608(sp)
   109c0:	25413023          	sd	s4,576(sp)
   109c4:	23513c23          	sd	s5,568(sp)
   109c8:	23613823          	sd	s6,560(sp)
   109cc:	23813023          	sd	s8,544(sp)
   109d0:	21913c23          	sd	s9,536(sp)
   109d4:	21a13823          	sd	s10,528(sp)
   109d8:	21b13423          	sd	s11,520(sp)
   109dc:	89aa                	mv	s3,a0
   109de:	5d6030ef          	jal	ra,13fb4 <_localeconv_r>
   109e2:	611c                	ld	a5,0(a0)
   109e4:	853e                	mv	a0,a5
   109e6:	e4be                	sd	a5,72(sp)
   109e8:	588040ef          	jal	ra,14f70 <strlen>
   109ec:	ec2a                	sd	a0,24(sp)
   109ee:	f982                	sd	zero,240(sp)
   109f0:	fd82                	sd	zero,248(sp)
   109f2:	00098863          	beqz	s3,10a02 <_vfprintf_r+0x64>
   109f6:	0509a783          	lw	a5,80(s3)
   109fa:	e781                	bnez	a5,10a02 <_vfprintf_r+0x64>
   109fc:	854e                	mv	a0,s3
   109fe:	257010ef          	jal	ra,12454 <__sinit>
   10a02:	01091783          	lh	a5,16(s2)
   10a06:	03279713          	slli	a4,a5,0x32
   10a0a:	00074d63          	bltz	a4,10a24 <_vfprintf_r+0x86>
   10a0e:	6689                	lui	a3,0x2
   10a10:	0ac92703          	lw	a4,172(s2)
   10a14:	8fd5                	or	a5,a5,a3
   10a16:	00f91823          	sh	a5,16(s2)
   10a1a:	77f9                	lui	a5,0xffffe
   10a1c:	17fd                	addi	a5,a5,-1
   10a1e:	8ff9                	and	a5,a5,a4
   10a20:	0af92623          	sw	a5,172(s2)
   10a24:	01095783          	lhu	a5,16(s2)
   10a28:	8ba1                	andi	a5,a5,8
   10a2a:	c3bd                	beqz	a5,10a90 <_vfprintf_r+0xf2>
   10a2c:	01893783          	ld	a5,24(s2)
   10a30:	c3a5                	beqz	a5,10a90 <_vfprintf_r+0xf2>
   10a32:	01095783          	lhu	a5,16(s2)
   10a36:	4729                	li	a4,10
   10a38:	8be9                	andi	a5,a5,26
   10a3a:	06e79363          	bne	a5,a4,10aa0 <_vfprintf_r+0x102>
   10a3e:	01291783          	lh	a5,18(s2)
   10a42:	0407cf63          	bltz	a5,10aa0 <_vfprintf_r+0x102>
   10a46:	86de                	mv	a3,s7
   10a48:	8626                	mv	a2,s1
   10a4a:	85ca                	mv	a1,s2
   10a4c:	854e                	mv	a0,s3
   10a4e:	512010ef          	jal	ra,11f60 <__sbprintf>
   10a52:	f42a                	sd	a0,40(sp)
   10a54:	26813083          	ld	ra,616(sp)
   10a58:	26013403          	ld	s0,608(sp)
   10a5c:	7522                	ld	a0,40(sp)
   10a5e:	25813483          	ld	s1,600(sp)
   10a62:	25013903          	ld	s2,592(sp)
   10a66:	24813983          	ld	s3,584(sp)
   10a6a:	24013a03          	ld	s4,576(sp)
   10a6e:	23813a83          	ld	s5,568(sp)
   10a72:	23013b03          	ld	s6,560(sp)
   10a76:	22813b83          	ld	s7,552(sp)
   10a7a:	22013c03          	ld	s8,544(sp)
   10a7e:	21813c83          	ld	s9,536(sp)
   10a82:	21013d03          	ld	s10,528(sp)
   10a86:	20813d83          	ld	s11,520(sp)
   10a8a:	27010113          	addi	sp,sp,624
   10a8e:	8082                	ret
   10a90:	85ca                	mv	a1,s2
   10a92:	854e                	mv	a0,s3
   10a94:	55a010ef          	jal	ra,11fee <__swsetup_r>
   10a98:	dd49                	beqz	a0,10a32 <_vfprintf_r+0x94>
   10a9a:	57fd                	li	a5,-1
   10a9c:	f43e                	sd	a5,40(sp)
   10a9e:	bf5d                	j	10a54 <_vfprintf_r+0xb6>
   10aa0:	67e9                	lui	a5,0x1a
   10aa2:	be078793          	addi	a5,a5,-1056 # 19be0 <__clzdi2+0x8a>
   10aa6:	ed3e                	sd	a5,152(sp)
   10aa8:	0001a7b7          	lui	a5,0x1a
   10aac:	d787b783          	ld	a5,-648(a5) # 19d78 <zeroes.4441+0x18>
   10ab0:	18010a93          	addi	s5,sp,384
   10ab4:	e256                	sd	s5,256(sp)
   10ab6:	f13e                	sd	a5,160(sp)
   10ab8:	0001a7b7          	lui	a5,0x1a
   10abc:	d887b783          	ld	a5,-632(a5) # 19d88 <zeroes.4441+0x28>
   10ac0:	ea02                	sd	zero,272(sp)
   10ac2:	10012423          	sw	zero,264(sp)
   10ac6:	f53e                	sd	a5,168(sp)
   10ac8:	0001a7b7          	lui	a5,0x1a
   10acc:	d987b783          	ld	a5,-616(a5) # 19d98 <zeroes.4441+0x38>
   10ad0:	4a01                	li	s4,0
   10ad2:	8cd6                	mv	s9,s5
   10ad4:	f082                	sd	zero,96(sp)
   10ad6:	ec82                	sd	zero,88(sp)
   10ad8:	e002                	sd	zero,0(sp)
   10ada:	e082                	sd	zero,64(sp)
   10adc:	e882                	sd	zero,80(sp)
   10ade:	f402                	sd	zero,40(sp)
   10ae0:	e93e                	sd	a5,144(sp)
   10ae2:	8426                	mv	s0,s1
   10ae4:	02500713          	li	a4,37
   10ae8:	00044783          	lbu	a5,0(s0)
   10aec:	c399                	beqz	a5,10af2 <_vfprintf_r+0x154>
   10aee:	08e79663          	bne	a5,a4,10b7a <_vfprintf_r+0x1dc>
   10af2:	40940b3b          	subw	s6,s0,s1
   10af6:	020b0f63          	beqz	s6,10b34 <_vfprintf_r+0x196>
   10afa:	67d2                	ld	a5,272(sp)
   10afc:	009cb023          	sd	s1,0(s9)
   10b00:	016cb423          	sd	s6,8(s9)
   10b04:	97da                	add	a5,a5,s6
   10b06:	ea3e                	sd	a5,272(sp)
   10b08:	10812783          	lw	a5,264(sp)
   10b0c:	0cc1                	addi	s9,s9,16
   10b0e:	0017871b          	addiw	a4,a5,1
   10b12:	10e12423          	sw	a4,264(sp)
   10b16:	479d                	li	a5,7
   10b18:	00e7da63          	ble	a4,a5,10b2c <_vfprintf_r+0x18e>
   10b1c:	0210                	addi	a2,sp,256
   10b1e:	85ca                	mv	a1,s2
   10b20:	854e                	mv	a0,s3
   10b22:	209050ef          	jal	ra,1652a <__sprint_r>
   10b26:	54051363          	bnez	a0,1106c <_vfprintf_r+0x6ce>
   10b2a:	8cd6                	mv	s9,s5
   10b2c:	57a2                	lw	a5,40(sp)
   10b2e:	016787bb          	addw	a5,a5,s6
   10b32:	f43e                	sd	a5,40(sp)
   10b34:	00044783          	lbu	a5,0(s0)
   10b38:	e399                	bnez	a5,10b3e <_vfprintf_r+0x1a0>
   10b3a:	4040106f          	j	11f3e <_vfprintf_r+0x15a0>
   10b3e:	00140793          	addi	a5,s0,1
   10b42:	0c0107a3          	sb	zero,207(sp)
   10b46:	5dfd                	li	s11,-1
   10b48:	f002                	sd	zero,32(sp)
   10b4a:	4401                	li	s0,0
   10b4c:	05a00d13          	li	s10,90
   10b50:	4c29                	li	s8,10
   10b52:	0007cb03          	lbu	s6,0(a5)
   10b56:	00178713          	addi	a4,a5,1
   10b5a:	e83a                	sd	a4,16(sp)
   10b5c:	46a5                	li	a3,9
   10b5e:	02a00613          	li	a2,42
   10b62:	fe0b079b          	addiw	a5,s6,-32
   10b66:	0007871b          	sext.w	a4,a5
   10b6a:	3aed68e3          	bltu	s10,a4,1171a <_vfprintf_r+0xd7c>
   10b6e:	676a                	ld	a4,152(sp)
   10b70:	1782                	slli	a5,a5,0x20
   10b72:	83f9                	srli	a5,a5,0x1e
   10b74:	97ba                	add	a5,a5,a4
   10b76:	439c                	lw	a5,0(a5)
   10b78:	8782                	jr	a5
   10b7a:	0405                	addi	s0,s0,1
   10b7c:	b7b5                	j	10ae8 <_vfprintf_r+0x14a>
   10b7e:	0001a7b7          	lui	a5,0x1a
   10b82:	dd878793          	addi	a5,a5,-552 # 19dd8 <zeroes.4441+0x78>
   10b86:	f0be                	sd	a5,96(sp)
   10b88:	008b8793          	addi	a5,s7,8
   10b8c:	f83e                	sd	a5,48(sp)
   10b8e:	02047793          	andi	a5,s0,32
   10b92:	24078de3          	beqz	a5,115ec <_vfprintf_r+0xc4e>
   10b96:	000bbb83          	ld	s7,0(s7)
   10b9a:	00147793          	andi	a5,s0,1
   10b9e:	cf81                	beqz	a5,10bb6 <_vfprintf_r+0x218>
   10ba0:	000b8b63          	beqz	s7,10bb6 <_vfprintf_r+0x218>
   10ba4:	03000793          	li	a5,48
   10ba8:	00246413          	ori	s0,s0,2
   10bac:	0cf10823          	sb	a5,208(sp)
   10bb0:	0d6108a3          	sb	s6,209(sp)
   10bb4:	2401                	sext.w	s0,s0
   10bb6:	bff47413          	andi	s0,s0,-1025
   10bba:	2401                	sext.w	s0,s0
   10bbc:	4789                	li	a5,2
   10bbe:	12b0006f          	j	114e8 <_vfprintf_r+0xb4a>
   10bc2:	854e                	mv	a0,s3
   10bc4:	3f0030ef          	jal	ra,13fb4 <_localeconv_r>
   10bc8:	651c                	ld	a5,8(a0)
   10bca:	853e                	mv	a0,a5
   10bcc:	e8be                	sd	a5,80(sp)
   10bce:	3a2040ef          	jal	ra,14f70 <strlen>
   10bd2:	e0aa                	sd	a0,64(sp)
   10bd4:	854e                	mv	a0,s3
   10bd6:	3de030ef          	jal	ra,13fb4 <_localeconv_r>
   10bda:	691c                	ld	a5,16(a0)
   10bdc:	e03e                	sd	a5,0(sp)
   10bde:	6786                	ld	a5,64(sp)
   10be0:	c38d                	beqz	a5,10c02 <_vfprintf_r+0x264>
   10be2:	6782                	ld	a5,0(sp)
   10be4:	cf99                	beqz	a5,10c02 <_vfprintf_r+0x264>
   10be6:	0007c783          	lbu	a5,0(a5)
   10bea:	cf81                	beqz	a5,10c02 <_vfprintf_r+0x264>
   10bec:	40046413          	ori	s0,s0,1024
   10bf0:	2401                	sext.w	s0,s0
   10bf2:	a801                	j	10c02 <_vfprintf_r+0x264>
   10bf4:	0cf14783          	lbu	a5,207(sp)
   10bf8:	e789                	bnez	a5,10c02 <_vfprintf_r+0x264>
   10bfa:	02000793          	li	a5,32
   10bfe:	0cf107a3          	sb	a5,207(sp)
   10c02:	67c2                	ld	a5,16(sp)
   10c04:	b7b9                	j	10b52 <_vfprintf_r+0x1b4>
   10c06:	00146413          	ori	s0,s0,1
   10c0a:	b7dd                	j	10bf0 <_vfprintf_r+0x252>
   10c0c:	000ba783          	lw	a5,0(s7)
   10c10:	0ba1                	addi	s7,s7,8
   10c12:	f03e                	sd	a5,32(sp)
   10c14:	fe07d7e3          	bgez	a5,10c02 <_vfprintf_r+0x264>
   10c18:	5782                	lw	a5,32(sp)
   10c1a:	40f007bb          	negw	a5,a5
   10c1e:	f03e                	sd	a5,32(sp)
   10c20:	00446413          	ori	s0,s0,4
   10c24:	b7f1                	j	10bf0 <_vfprintf_r+0x252>
   10c26:	02b00793          	li	a5,43
   10c2a:	bfd1                	j	10bfe <_vfprintf_r+0x260>
   10c2c:	6742                	ld	a4,16(sp)
   10c2e:	67c2                	ld	a5,16(sp)
   10c30:	00074b03          	lbu	s6,0(a4)
   10c34:	0785                	addi	a5,a5,1
   10c36:	02cb1c63          	bne	s6,a2,10c6e <_vfprintf_r+0x2d0>
   10c3a:	000bae03          	lw	t3,0(s7)
   10c3e:	008b8713          	addi	a4,s7,8
   10c42:	000e5363          	bgez	t3,10c48 <_vfprintf_r+0x2aa>
   10c46:	5e7d                	li	t3,-1
   10c48:	000e0d9b          	sext.w	s11,t3
   10c4c:	8bba                	mv	s7,a4
   10c4e:	e83e                	sd	a5,16(sp)
   10c50:	bf4d                	j	10c02 <_vfprintf_r+0x264>
   10c52:	03bc0e3b          	mulw	t3,s8,s11
   10c56:	0785                	addi	a5,a5,1
   10c58:	fff7cb03          	lbu	s6,-1(a5)
   10c5c:	00ee0dbb          	addw	s11,t3,a4
   10c60:	fd0b059b          	addiw	a1,s6,-48
   10c64:	872e                	mv	a4,a1
   10c66:	feb6f6e3          	bleu	a1,a3,10c52 <_vfprintf_r+0x2b4>
   10c6a:	e83e                	sd	a5,16(sp)
   10c6c:	bddd                	j	10b62 <_vfprintf_r+0x1c4>
   10c6e:	4d81                	li	s11,0
   10c70:	bfc5                	j	10c60 <_vfprintf_r+0x2c2>
   10c72:	08046413          	ori	s0,s0,128
   10c76:	bfad                	j	10bf0 <_vfprintf_r+0x252>
   10c78:	67c2                	ld	a5,16(sp)
   10c7a:	f002                	sd	zero,32(sp)
   10c7c:	5702                	lw	a4,32(sp)
   10c7e:	fd0b0b1b          	addiw	s6,s6,-48
   10c82:	0785                	addi	a5,a5,1
   10c84:	02ec073b          	mulw	a4,s8,a4
   10c88:	00eb073b          	addw	a4,s6,a4
   10c8c:	fff7cb03          	lbu	s6,-1(a5)
   10c90:	f03a                	sd	a4,32(sp)
   10c92:	fd0b071b          	addiw	a4,s6,-48
   10c96:	fee6f3e3          	bleu	a4,a3,10c7c <_vfprintf_r+0x2de>
   10c9a:	bfc1                	j	10c6a <_vfprintf_r+0x2cc>
   10c9c:	00846413          	ori	s0,s0,8
   10ca0:	bf81                	j	10bf0 <_vfprintf_r+0x252>
   10ca2:	67c2                	ld	a5,16(sp)
   10ca4:	0007c703          	lbu	a4,0(a5)
   10ca8:	06800793          	li	a5,104
   10cac:	00f71863          	bne	a4,a5,10cbc <_vfprintf_r+0x31e>
   10cb0:	67c2                	ld	a5,16(sp)
   10cb2:	20046413          	ori	s0,s0,512
   10cb6:	0785                	addi	a5,a5,1
   10cb8:	e83e                	sd	a5,16(sp)
   10cba:	bf1d                	j	10bf0 <_vfprintf_r+0x252>
   10cbc:	04046413          	ori	s0,s0,64
   10cc0:	bf05                	j	10bf0 <_vfprintf_r+0x252>
   10cc2:	67c2                	ld	a5,16(sp)
   10cc4:	0007c703          	lbu	a4,0(a5)
   10cc8:	06c00793          	li	a5,108
   10ccc:	00f71863          	bne	a4,a5,10cdc <_vfprintf_r+0x33e>
   10cd0:	67c2                	ld	a5,16(sp)
   10cd2:	0785                	addi	a5,a5,1
   10cd4:	e83e                	sd	a5,16(sp)
   10cd6:	02046413          	ori	s0,s0,32
   10cda:	bf19                	j	10bf0 <_vfprintf_r+0x252>
   10cdc:	01046413          	ori	s0,s0,16
   10ce0:	bf01                	j	10bf0 <_vfprintf_r+0x252>
   10ce2:	008b8793          	addi	a5,s7,8
   10ce6:	f83e                	sd	a5,48(sp)
   10ce8:	000ba783          	lw	a5,0(s7)
   10cec:	0c0107a3          	sb	zero,207(sp)
   10cf0:	10f10c23          	sb	a5,280(sp)
   10cf4:	4b81                	li	s7,0
   10cf6:	4d85                	li	s11,1
   10cf8:	4701                	li	a4,0
   10cfa:	e402                	sd	zero,8(sp)
   10cfc:	4c01                	li	s8,0
   10cfe:	4d01                	li	s10,0
   10d00:	0a24                	addi	s1,sp,280
   10d02:	86ba                	mv	a3,a4
   10d04:	01b75363          	ble	s11,a4,10d0a <_vfprintf_r+0x36c>
   10d08:	86ee                	mv	a3,s11
   10d0a:	0cf14603          	lbu	a2,207(sp)
   10d0e:	0006879b          	sext.w	a5,a3
   10d12:	fc3e                	sd	a5,56(sp)
   10d14:	c601                	beqz	a2,10d1c <_vfprintf_r+0x37e>
   10d16:	0016879b          	addiw	a5,a3,1
   10d1a:	fc3e                	sd	a5,56(sp)
   10d1c:	00247693          	andi	a3,s0,2
   10d20:	0006879b          	sext.w	a5,a3
   10d24:	f4be                	sd	a5,104(sp)
   10d26:	c781                	beqz	a5,10d2e <_vfprintf_r+0x390>
   10d28:	57e2                	lw	a5,56(sp)
   10d2a:	2789                	addiw	a5,a5,2
   10d2c:	fc3e                	sd	a5,56(sp)
   10d2e:	08447793          	andi	a5,s0,132
   10d32:	f8be                	sd	a5,112(sp)
   10d34:	efa9                	bnez	a5,10d8e <_vfprintf_r+0x3f0>
   10d36:	5782                	lw	a5,32(sp)
   10d38:	56e2                	lw	a3,56(sp)
   10d3a:	40d786bb          	subw	a3,a5,a3
   10d3e:	04d05863          	blez	a3,10d8e <_vfprintf_r+0x3f0>
   10d42:	6869                	lui	a6,0x1a
   10d44:	48c1                	li	a7,16
   10d46:	d5080813          	addi	a6,a6,-688 # 19d50 <blanks.4440>
   10d4a:	4e9d                	li	t4,7
   10d4c:	10812583          	lw	a1,264(sp)
   10d50:	010cb023          	sd	a6,0(s9)
   10d54:	6652                	ld	a2,272(sp)
   10d56:	0015851b          	addiw	a0,a1,1
   10d5a:	85aa                	mv	a1,a0
   10d5c:	010c8f13          	addi	t5,s9,16
   10d60:	1cd8c6e3          	blt	a7,a3,1172c <_vfprintf_r+0xd8e>
   10d64:	00dcb423          	sd	a3,8(s9)
   10d68:	96b2                	add	a3,a3,a2
   10d6a:	ea36                	sd	a3,272(sp)
   10d6c:	10a12423          	sw	a0,264(sp)
   10d70:	469d                	li	a3,7
   10d72:	8cfa                	mv	s9,t5
   10d74:	00a6dd63          	ble	a0,a3,10d8e <_vfprintf_r+0x3f0>
   10d78:	0210                	addi	a2,sp,256
   10d7a:	85ca                	mv	a1,s2
   10d7c:	854e                	mv	a0,s3
   10d7e:	fcba                	sd	a4,120(sp)
   10d80:	7aa050ef          	jal	ra,1652a <__sprint_r>
   10d84:	c119                	beqz	a0,10d8a <_vfprintf_r+0x3ec>
   10d86:	17a0106f          	j	11f00 <_vfprintf_r+0x1562>
   10d8a:	7766                	ld	a4,120(sp)
   10d8c:	8cd6                	mv	s9,s5
   10d8e:	0cf14683          	lbu	a3,207(sp)
   10d92:	c2a1                	beqz	a3,10dd2 <_vfprintf_r+0x434>
   10d94:	0cf10693          	addi	a3,sp,207
   10d98:	00dcb023          	sd	a3,0(s9)
   10d9c:	4685                	li	a3,1
   10d9e:	00dcb423          	sd	a3,8(s9)
   10da2:	66d2                	ld	a3,272(sp)
   10da4:	0cc1                	addi	s9,s9,16
   10da6:	0685                	addi	a3,a3,1
   10da8:	ea36                	sd	a3,272(sp)
   10daa:	10812683          	lw	a3,264(sp)
   10dae:	0016861b          	addiw	a2,a3,1
   10db2:	10c12423          	sw	a2,264(sp)
   10db6:	469d                	li	a3,7
   10db8:	00c6dd63          	ble	a2,a3,10dd2 <_vfprintf_r+0x434>
   10dbc:	0210                	addi	a2,sp,256
   10dbe:	85ca                	mv	a1,s2
   10dc0:	854e                	mv	a0,s3
   10dc2:	fcba                	sd	a4,120(sp)
   10dc4:	766050ef          	jal	ra,1652a <__sprint_r>
   10dc8:	c119                	beqz	a0,10dce <_vfprintf_r+0x430>
   10dca:	1360106f          	j	11f00 <_vfprintf_r+0x1562>
   10dce:	7766                	ld	a4,120(sp)
   10dd0:	8cd6                	mv	s9,s5
   10dd2:	77a6                	ld	a5,104(sp)
   10dd4:	cf9d                	beqz	a5,10e12 <_vfprintf_r+0x474>
   10dd6:	0994                	addi	a3,sp,208
   10dd8:	00dcb023          	sd	a3,0(s9)
   10ddc:	4689                	li	a3,2
   10dde:	00dcb423          	sd	a3,8(s9)
   10de2:	66d2                	ld	a3,272(sp)
   10de4:	0cc1                	addi	s9,s9,16
   10de6:	0689                	addi	a3,a3,2
   10de8:	ea36                	sd	a3,272(sp)
   10dea:	10812683          	lw	a3,264(sp)
   10dee:	0016861b          	addiw	a2,a3,1
   10df2:	10c12423          	sw	a2,264(sp)
   10df6:	469d                	li	a3,7
   10df8:	00c6dd63          	ble	a2,a3,10e12 <_vfprintf_r+0x474>
   10dfc:	0210                	addi	a2,sp,256
   10dfe:	85ca                	mv	a1,s2
   10e00:	854e                	mv	a0,s3
   10e02:	f4ba                	sd	a4,104(sp)
   10e04:	726050ef          	jal	ra,1652a <__sprint_r>
   10e08:	c119                	beqz	a0,10e0e <_vfprintf_r+0x470>
   10e0a:	0f60106f          	j	11f00 <_vfprintf_r+0x1562>
   10e0e:	7726                	ld	a4,104(sp)
   10e10:	8cd6                	mv	s9,s5
   10e12:	77c6                	ld	a5,112(sp)
   10e14:	08000693          	li	a3,128
   10e18:	04d79e63          	bne	a5,a3,10e74 <_vfprintf_r+0x4d6>
   10e1c:	5782                	lw	a5,32(sp)
   10e1e:	56e2                	lw	a3,56(sp)
   10e20:	40d786bb          	subw	a3,a5,a3
   10e24:	04d05863          	blez	a3,10e74 <_vfprintf_r+0x4d6>
   10e28:	6869                	lui	a6,0x1a
   10e2a:	48c1                	li	a7,16
   10e2c:	d6080813          	addi	a6,a6,-672 # 19d60 <zeroes.4441>
   10e30:	4e9d                	li	t4,7
   10e32:	10812583          	lw	a1,264(sp)
   10e36:	010cb023          	sd	a6,0(s9)
   10e3a:	6652                	ld	a2,272(sp)
   10e3c:	0015851b          	addiw	a0,a1,1
   10e40:	85aa                	mv	a1,a0
   10e42:	010c8f13          	addi	t5,s9,16
   10e46:	12d8c1e3          	blt	a7,a3,11768 <_vfprintf_r+0xdca>
   10e4a:	00dcb423          	sd	a3,8(s9)
   10e4e:	96b2                	add	a3,a3,a2
   10e50:	ea36                	sd	a3,272(sp)
   10e52:	10a12423          	sw	a0,264(sp)
   10e56:	469d                	li	a3,7
   10e58:	8cfa                	mv	s9,t5
   10e5a:	00a6dd63          	ble	a0,a3,10e74 <_vfprintf_r+0x4d6>
   10e5e:	0210                	addi	a2,sp,256
   10e60:	85ca                	mv	a1,s2
   10e62:	854e                	mv	a0,s3
   10e64:	f4ba                	sd	a4,104(sp)
   10e66:	6c4050ef          	jal	ra,1652a <__sprint_r>
   10e6a:	c119                	beqz	a0,10e70 <_vfprintf_r+0x4d2>
   10e6c:	0940106f          	j	11f00 <_vfprintf_r+0x1562>
   10e70:	7726                	ld	a4,104(sp)
   10e72:	8cd6                	mv	s9,s5
   10e74:	41b7073b          	subw	a4,a4,s11
   10e78:	04e05663          	blez	a4,10ec4 <_vfprintf_r+0x526>
   10e7c:	6869                	lui	a6,0x1a
   10e7e:	48c1                	li	a7,16
   10e80:	d6080813          	addi	a6,a6,-672 # 19d60 <zeroes.4441>
   10e84:	4e9d                	li	t4,7
   10e86:	10812603          	lw	a2,264(sp)
   10e8a:	010cb023          	sd	a6,0(s9)
   10e8e:	66d2                	ld	a3,272(sp)
   10e90:	0016059b          	addiw	a1,a2,1
   10e94:	862e                	mv	a2,a1
   10e96:	010c8513          	addi	a0,s9,16
   10e9a:	10e8c5e3          	blt	a7,a4,117a4 <_vfprintf_r+0xe06>
   10e9e:	00ecb423          	sd	a4,8(s9)
   10ea2:	9736                	add	a4,a4,a3
   10ea4:	ea3a                	sd	a4,272(sp)
   10ea6:	10b12423          	sw	a1,264(sp)
   10eaa:	471d                	li	a4,7
   10eac:	8caa                	mv	s9,a0
   10eae:	00b75b63          	ble	a1,a4,10ec4 <_vfprintf_r+0x526>
   10eb2:	0210                	addi	a2,sp,256
   10eb4:	85ca                	mv	a1,s2
   10eb6:	854e                	mv	a0,s3
   10eb8:	672050ef          	jal	ra,1652a <__sprint_r>
   10ebc:	c119                	beqz	a0,10ec2 <_vfprintf_r+0x524>
   10ebe:	0420106f          	j	11f00 <_vfprintf_r+0x1562>
   10ec2:	8cd6                	mv	s9,s5
   10ec4:	10047693          	andi	a3,s0,256
   10ec8:	6752                	ld	a4,272(sp)
   10eca:	100699e3          	bnez	a3,117dc <_vfprintf_r+0xe3e>
   10ece:	10812783          	lw	a5,264(sp)
   10ed2:	00ed8e33          	add	t3,s11,a4
   10ed6:	009cb023          	sd	s1,0(s9)
   10eda:	0017871b          	addiw	a4,a5,1
   10ede:	01bcb423          	sd	s11,8(s9)
   10ee2:	ea72                	sd	t3,272(sp)
   10ee4:	10e12423          	sw	a4,264(sp)
   10ee8:	479d                	li	a5,7
   10eea:	0cc1                	addi	s9,s9,16
   10eec:	1ce7d4e3          	ble	a4,a5,118b4 <_vfprintf_r+0xf16>
   10ef0:	0210                	addi	a2,sp,256
   10ef2:	85ca                	mv	a1,s2
   10ef4:	854e                	mv	a0,s3
   10ef6:	634050ef          	jal	ra,1652a <__sprint_r>
   10efa:	c119                	beqz	a0,10f00 <_vfprintf_r+0x562>
   10efc:	0040106f          	j	11f00 <_vfprintf_r+0x1562>
   10f00:	8cd6                	mv	s9,s5
   10f02:	1b30006f          	j	118b4 <_vfprintf_r+0xf16>
   10f06:	01046413          	ori	s0,s0,16
   10f0a:	2401                	sext.w	s0,s0
   10f0c:	008b8793          	addi	a5,s7,8
   10f10:	f83e                	sd	a5,48(sp)
   10f12:	02047793          	andi	a5,s0,32
   10f16:	cb85                	beqz	a5,10f46 <_vfprintf_r+0x5a8>
   10f18:	000bbb83          	ld	s7,0(s7)
   10f1c:	000bd863          	bgez	s7,10f2c <_vfprintf_r+0x58e>
   10f20:	02d00793          	li	a5,45
   10f24:	41700bb3          	neg	s7,s7
   10f28:	0cf107a3          	sb	a5,207(sp)
   10f2c:	57fd                	li	a5,-1
   10f2e:	6efd9963          	bne	s11,a5,11620 <_vfprintf_r+0xc82>
   10f32:	47a5                	li	a5,9
   10f34:	7577e463          	bltu	a5,s7,1167c <_vfprintf_r+0xcde>
   10f38:	030b8b9b          	addiw	s7,s7,48
   10f3c:	17710da3          	sb	s7,379(sp)
   10f40:	17b10493          	addi	s1,sp,379
   10f44:	af39                	j	11662 <_vfprintf_r+0xcc4>
   10f46:	01047793          	andi	a5,s0,16
   10f4a:	f7f9                	bnez	a5,10f18 <_vfprintf_r+0x57a>
   10f4c:	04047793          	andi	a5,s0,64
   10f50:	c781                	beqz	a5,10f58 <_vfprintf_r+0x5ba>
   10f52:	000b9b83          	lh	s7,0(s7)
   10f56:	b7d9                	j	10f1c <_vfprintf_r+0x57e>
   10f58:	20047793          	andi	a5,s0,512
   10f5c:	c781                	beqz	a5,10f64 <_vfprintf_r+0x5c6>
   10f5e:	000b8b83          	lb	s7,0(s7)
   10f62:	bf6d                	j	10f1c <_vfprintf_r+0x57e>
   10f64:	000bab83          	lw	s7,0(s7)
   10f68:	bf55                	j	10f1c <_vfprintf_r+0x57e>
   10f6a:	00847793          	andi	a5,s0,8
   10f6e:	cfb9                	beqz	a5,10fcc <_vfprintf_r+0x62e>
   10f70:	0bbd                	addi	s7,s7,15
   10f72:	ff0bfb93          	andi	s7,s7,-16
   10f76:	010b8793          	addi	a5,s7,16
   10f7a:	f83e                	sd	a5,48(sp)
   10f7c:	000bb783          	ld	a5,0(s7)
   10f80:	f9be                	sd	a5,240(sp)
   10f82:	008bb783          	ld	a5,8(s7)
   10f86:	fdbe                	sd	a5,248(sp)
   10f88:	1988                	addi	a0,sp,240
   10f8a:	7ef020ef          	jal	ra,13f78 <_ldcheck>
   10f8e:	cdaa                	sw	a0,216(sp)
   10f90:	4789                	li	a5,2
   10f92:	04f51c63          	bne	a0,a5,10fea <_vfprintf_r+0x64c>
   10f96:	754e                	ld	a0,240(sp)
   10f98:	75ee                	ld	a1,248(sp)
   10f9a:	4601                	li	a2,0
   10f9c:	4681                	li	a3,0
   10f9e:	069070ef          	jal	ra,18806 <__letf2>
   10fa2:	00055663          	bgez	a0,10fae <_vfprintf_r+0x610>
   10fa6:	02d00793          	li	a5,45
   10faa:	0cf107a3          	sb	a5,207(sp)
   10fae:	04700793          	li	a5,71
   10fb2:	0367c763          	blt	a5,s6,10fe0 <_vfprintf_r+0x642>
   10fb6:	0001a4b7          	lui	s1,0x1a
   10fba:	da048493          	addi	s1,s1,-608 # 19da0 <zeroes.4441+0x40>
   10fbe:	f7f47413          	andi	s0,s0,-129
   10fc2:	2401                	sext.w	s0,s0
   10fc4:	4b81                	li	s7,0
   10fc6:	4d8d                	li	s11,3
   10fc8:	4701                	li	a4,0
   10fca:	a555                	j	1166e <_vfprintf_r+0xcd0>
   10fcc:	000bb507          	fld	fa0,0(s7)
   10fd0:	008b8793          	addi	a5,s7,8
   10fd4:	f83e                	sd	a5,48(sp)
   10fd6:	05b080ef          	jal	ra,19830 <__extenddftf2>
   10fda:	f9aa                	sd	a0,240(sp)
   10fdc:	fdae                	sd	a1,248(sp)
   10fde:	b76d                	j	10f88 <_vfprintf_r+0x5ea>
   10fe0:	0001a4b7          	lui	s1,0x1a
   10fe4:	da848493          	addi	s1,s1,-600 # 19da8 <zeroes.4441+0x48>
   10fe8:	bfd9                	j	10fbe <_vfprintf_r+0x620>
   10fea:	4785                	li	a5,1
   10fec:	02f51763          	bne	a0,a5,1101a <_vfprintf_r+0x67c>
   10ff0:	77ee                	ld	a5,248(sp)
   10ff2:	0007d663          	bgez	a5,10ffe <_vfprintf_r+0x660>
   10ff6:	02d00793          	li	a5,45
   10ffa:	0cf107a3          	sb	a5,207(sp)
   10ffe:	04700793          	li	a5,71
   11002:	0167c763          	blt	a5,s6,11010 <_vfprintf_r+0x672>
   11006:	0001a4b7          	lui	s1,0x1a
   1100a:	db048493          	addi	s1,s1,-592 # 19db0 <zeroes.4441+0x50>
   1100e:	bf45                	j	10fbe <_vfprintf_r+0x620>
   11010:	0001a4b7          	lui	s1,0x1a
   11014:	db848493          	addi	s1,s1,-584 # 19db8 <zeroes.4441+0x58>
   11018:	b75d                	j	10fbe <_vfprintf_r+0x620>
   1101a:	fdfb7c13          	andi	s8,s6,-33
   1101e:	04100793          	li	a5,65
   11022:	04fc1c63          	bne	s8,a5,1107a <_vfprintf_r+0x6dc>
   11026:	03000793          	li	a5,48
   1102a:	0cf10823          	sb	a5,208(sp)
   1102e:	06100713          	li	a4,97
   11032:	05800793          	li	a5,88
   11036:	00eb1463          	bne	s6,a4,1103e <_vfprintf_r+0x6a0>
   1103a:	07800793          	li	a5,120
   1103e:	0cf108a3          	sb	a5,209(sp)
   11042:	00246413          	ori	s0,s0,2
   11046:	06300793          	li	a5,99
   1104a:	2401                	sext.w	s0,s0
   1104c:	15b7db63          	ble	s11,a5,111a2 <_vfprintf_r+0x804>
   11050:	001d859b          	addiw	a1,s11,1
   11054:	854e                	mv	a0,s3
   11056:	b42ff0ef          	jal	ra,10398 <_malloc_r>
   1105a:	84aa                	mv	s1,a0
   1105c:	14051663          	bnez	a0,111a8 <_vfprintf_r+0x80a>
   11060:	01095783          	lhu	a5,16(s2)
   11064:	0407e793          	ori	a5,a5,64
   11068:	00f91823          	sh	a5,16(s2)
   1106c:	01095783          	lhu	a5,16(s2)
   11070:	0407f793          	andi	a5,a5,64
   11074:	9e0780e3          	beqz	a5,10a54 <_vfprintf_r+0xb6>
   11078:	b40d                	j	10a9a <_vfprintf_r+0xfc>
   1107a:	57fd                	li	a5,-1
   1107c:	12fd8863          	beq	s11,a5,111ac <_vfprintf_r+0x80e>
   11080:	04700793          	li	a5,71
   11084:	4b81                	li	s7,0
   11086:	00fc1463          	bne	s8,a5,1108e <_vfprintf_r+0x6f0>
   1108a:	120d8463          	beqz	s11,111b2 <_vfprintf_r+0x814>
   1108e:	10046793          	ori	a5,s0,256
   11092:	7a6e                	ld	s4,248(sp)
   11094:	2781                	sext.w	a5,a5
   11096:	fc3e                	sd	a5,56(sp)
   11098:	fc82                	sd	zero,120(sp)
   1109a:	7ece                	ld	t4,240(sp)
   1109c:	000a5963          	bgez	s4,110ae <_vfprintf_r+0x710>
   110a0:	57fd                	li	a5,-1
   110a2:	17fe                	slli	a5,a5,0x3f
   110a4:	00fa4a33          	xor	s4,s4,a5
   110a8:	02d00793          	li	a5,45
   110ac:	fcbe                	sd	a5,120(sp)
   110ae:	04100793          	li	a5,65
   110b2:	22fc1363          	bne	s8,a5,112d8 <_vfprintf_r+0x93a>
   110b6:	8576                	mv	a0,t4
   110b8:	85d2                	mv	a1,s4
   110ba:	05b080ef          	jal	ra,19914 <__trunctfdf2>
   110be:	09a8                	addi	a0,sp,216
   110c0:	3f3030ef          	jal	ra,14cb2 <frexp>
   110c4:	76c080ef          	jal	ra,19830 <__extenddftf2>
   110c8:	768a                	ld	a3,160(sp)
   110ca:	4601                	li	a2,0
   110cc:	7fe070ef          	jal	ra,188ca <__multf3>
   110d0:	4601                	li	a2,0
   110d2:	4681                	li	a3,0
   110d4:	e12a                	sd	a0,128(sp)
   110d6:	e52e                	sd	a1,136(sp)
   110d8:	5c6070ef          	jal	ra,1869e <__eqtf2>
   110dc:	e119                	bnez	a0,110e2 <_vfprintf_r+0x744>
   110de:	4785                	li	a5,1
   110e0:	cdbe                	sw	a5,216(sp)
   110e2:	06100793          	li	a5,97
   110e6:	0cfb1963          	bne	s6,a5,111b8 <_vfprintf_r+0x81a>
   110ea:	0001a7b7          	lui	a5,0x1a
   110ee:	dc078793          	addi	a5,a5,-576 # 19dc0 <zeroes.4441+0x60>
   110f2:	e43e                	sd	a5,8(sp)
   110f4:	fffd871b          	addiw	a4,s11,-1
   110f8:	8a26                	mv	s4,s1
   110fa:	76aa                	ld	a3,168(sp)
   110fc:	650a                	ld	a0,128(sp)
   110fe:	65aa                	ld	a1,136(sp)
   11100:	4601                	li	a2,0
   11102:	f93a                	sd	a4,176(sp)
   11104:	7c6070ef          	jal	ra,188ca <__multf3>
   11108:	8d2a                	mv	s10,a0
   1110a:	f4ae                	sd	a1,104(sp)
   1110c:	614080ef          	jal	ra,19720 <__fixtfsi>
   11110:	0005079b          	sext.w	a5,a0
   11114:	f8be                	sd	a5,112(sp)
   11116:	69c080ef          	jal	ra,197b2 <__floatsitf>
   1111a:	77a6                	ld	a5,104(sp)
   1111c:	86ae                	mv	a3,a1
   1111e:	862a                	mv	a2,a0
   11120:	85be                	mv	a1,a5
   11122:	856a                	mv	a0,s10
   11124:	5ed070ef          	jal	ra,18f10 <__subtf3>
   11128:	67a2                	ld	a5,8(sp)
   1112a:	7746                	ld	a4,112(sp)
   1112c:	0a05                	addi	s4,s4,1
   1112e:	e12a                	sd	a0,128(sp)
   11130:	00e786b3          	add	a3,a5,a4
   11134:	774a                	ld	a4,176(sp)
   11136:	0006c683          	lbu	a3,0(a3) # 2000 <main-0xe0b0>
   1113a:	e52e                	sd	a1,136(sp)
   1113c:	0007079b          	sext.w	a5,a4
   11140:	f4be                	sd	a5,104(sp)
   11142:	feda0fa3          	sb	a3,-1(s4)
   11146:	57fd                	li	a5,-1
   11148:	88aa                	mv	a7,a0
   1114a:	8d2e                	mv	s10,a1
   1114c:	06f70b63          	beq	a4,a5,111c2 <_vfprintf_r+0x824>
   11150:	377d                	addiw	a4,a4,-1
   11152:	4601                	li	a2,0
   11154:	4681                	li	a3,0
   11156:	f93a                	sd	a4,176(sp)
   11158:	fd2a                	sd	a0,184(sp)
   1115a:	544070ef          	jal	ra,1869e <__eqtf2>
   1115e:	774a                	ld	a4,176(sp)
   11160:	78ea                	ld	a7,184(sp)
   11162:	fd41                	bnez	a0,110fa <_vfprintf_r+0x75c>
   11164:	66ca                	ld	a3,144(sp)
   11166:	4601                	li	a2,0
   11168:	8546                	mv	a0,a7
   1116a:	85ea                	mv	a1,s10
   1116c:	e146                	sd	a7,128(sp)
   1116e:	5d4070ef          	jal	ra,18742 <__getf2>
   11172:	04a04b63          	bgtz	a0,111c8 <_vfprintf_r+0x82a>
   11176:	688a                	ld	a7,128(sp)
   11178:	66ca                	ld	a3,144(sp)
   1117a:	4601                	li	a2,0
   1117c:	8546                	mv	a0,a7
   1117e:	85ea                	mv	a1,s10
   11180:	51e070ef          	jal	ra,1869e <__eqtf2>
   11184:	e509                	bnez	a0,1118e <_vfprintf_r+0x7f0>
   11186:	77c6                	ld	a5,112(sp)
   11188:	0017f713          	andi	a4,a5,1
   1118c:	ef15                	bnez	a4,111c8 <_vfprintf_r+0x82a>
   1118e:	5726                	lw	a4,104(sp)
   11190:	03000693          	li	a3,48
   11194:	06074163          	bltz	a4,111f6 <_vfprintf_r+0x858>
   11198:	0a05                	addi	s4,s4,1
   1119a:	feda0fa3          	sb	a3,-1(s4)
   1119e:	377d                	addiw	a4,a4,-1
   111a0:	bfd5                	j	11194 <_vfprintf_r+0x7f6>
   111a2:	4b81                	li	s7,0
   111a4:	0a24                	addi	s1,sp,280
   111a6:	b5e5                	j	1108e <_vfprintf_r+0x6f0>
   111a8:	8baa                	mv	s7,a0
   111aa:	b5d5                	j	1108e <_vfprintf_r+0x6f0>
   111ac:	4b81                	li	s7,0
   111ae:	4d99                	li	s11,6
   111b0:	bdf9                	j	1108e <_vfprintf_r+0x6f0>
   111b2:	8bee                	mv	s7,s11
   111b4:	4d85                	li	s11,1
   111b6:	bde1                	j	1108e <_vfprintf_r+0x6f0>
   111b8:	0001a7b7          	lui	a5,0x1a
   111bc:	dd878793          	addi	a5,a5,-552 # 19dd8 <zeroes.4441+0x78>
   111c0:	bf0d                	j	110f2 <_vfprintf_r+0x754>
   111c2:	57fd                	li	a5,-1
   111c4:	f4be                	sd	a5,104(sp)
   111c6:	bf79                	j	11164 <_vfprintf_r+0x7c6>
   111c8:	67a2                	ld	a5,8(sp)
   111ca:	f5d2                	sd	s4,232(sp)
   111cc:	03000593          	li	a1,48
   111d0:	00f7c603          	lbu	a2,15(a5)
   111d4:	76ae                	ld	a3,232(sp)
   111d6:	fff68713          	addi	a4,a3,-1
   111da:	f5ba                	sd	a4,232(sp)
   111dc:	fff6c703          	lbu	a4,-1(a3)
   111e0:	0ec70563          	beq	a4,a2,112ca <_vfprintf_r+0x92c>
   111e4:	03900613          	li	a2,57
   111e8:	0ec71463          	bne	a4,a2,112d0 <_vfprintf_r+0x932>
   111ec:	67a2                	ld	a5,8(sp)
   111ee:	00a7c703          	lbu	a4,10(a5)
   111f2:	fee68fa3          	sb	a4,-1(a3)
   111f6:	04700713          	li	a4,71
   111fa:	409a0a3b          	subw	s4,s4,s1
   111fe:	4d6e                	lw	s10,216(sp)
   11200:	18ec1463          	bne	s8,a4,11388 <_vfprintf_r+0x9ea>
   11204:	5775                	li	a4,-3
   11206:	00ed4463          	blt	s10,a4,1120e <_vfprintf_r+0x870>
   1120a:	1fadd463          	ble	s10,s11,113f2 <_vfprintf_r+0xa54>
   1120e:	3b79                	addiw	s6,s6,-2
   11210:	fffd069b          	addiw	a3,s10,-1
   11214:	cdb6                	sw	a3,216(sp)
   11216:	fdfb7613          	andi	a2,s6,-33
   1121a:	04100513          	li	a0,65
   1121e:	0ffb7713          	andi	a4,s6,255
   11222:	4581                	li	a1,0
   11224:	00a61663          	bne	a2,a0,11230 <_vfprintf_r+0x892>
   11228:	273d                	addiw	a4,a4,15
   1122a:	0ff77713          	andi	a4,a4,255
   1122e:	4585                	li	a1,1
   11230:	0ee10023          	sb	a4,224(sp)
   11234:	02b00793          	li	a5,43
   11238:	0006d763          	bgez	a3,11246 <_vfprintf_r+0x8a8>
   1123c:	4685                	li	a3,1
   1123e:	41a686bb          	subw	a3,a3,s10
   11242:	02d00793          	li	a5,45
   11246:	0ef100a3          	sb	a5,225(sp)
   1124a:	47a5                	li	a5,9
   1124c:	16d7da63          	ble	a3,a5,113c0 <_vfprintf_r+0xa22>
   11250:	0ef10713          	addi	a4,sp,239
   11254:	853a                	mv	a0,a4
   11256:	45a9                	li	a1,10
   11258:	4825                	li	a6,9
   1125a:	02b6e7bb          	remw	a5,a3,a1
   1125e:	fff70613          	addi	a2,a4,-1
   11262:	02b6c6bb          	divw	a3,a3,a1
   11266:	0307879b          	addiw	a5,a5,48
   1126a:	fef70fa3          	sb	a5,-1(a4)
   1126e:	14d84063          	blt	a6,a3,113ae <_vfprintf_r+0xa10>
   11272:	0306879b          	addiw	a5,a3,48
   11276:	fef60fa3          	sb	a5,-1(a2)
   1127a:	1779                	addi	a4,a4,-2
   1127c:	0e210613          	addi	a2,sp,226
   11280:	12a76963          	bltu	a4,a0,113b2 <_vfprintf_r+0xa14>
   11284:	119c                	addi	a5,sp,224
   11286:	40f607bb          	subw	a5,a2,a5
   1128a:	ecbe                	sd	a5,88(sp)
   1128c:	47e6                	lw	a5,88(sp)
   1128e:	4705                	li	a4,1
   11290:	01478dbb          	addw	s11,a5,s4
   11294:	87ee                	mv	a5,s11
   11296:	01474563          	blt	a4,s4,112a0 <_vfprintf_r+0x902>
   1129a:	00147713          	andi	a4,s0,1
   1129e:	c701                	beqz	a4,112a6 <_vfprintf_r+0x908>
   112a0:	4762                	lw	a4,24(sp)
   112a2:	00e78dbb          	addw	s11,a5,a4
   112a6:	bff47413          	andi	s0,s0,-1025
   112aa:	2401                	sext.w	s0,s0
   112ac:	10046793          	ori	a5,s0,256
   112b0:	fc3e                	sd	a5,56(sp)
   112b2:	e402                	sd	zero,8(sp)
   112b4:	4c01                	li	s8,0
   112b6:	4d01                	li	s10,0
   112b8:	77e6                	ld	a5,120(sp)
   112ba:	c789                	beqz	a5,112c4 <_vfprintf_r+0x926>
   112bc:	02d00713          	li	a4,45
   112c0:	0ce107a3          	sb	a4,207(sp)
   112c4:	7462                	ld	s0,56(sp)
   112c6:	4701                	li	a4,0
   112c8:	bc2d                	j	10d02 <_vfprintf_r+0x364>
   112ca:	feb68fa3          	sb	a1,-1(a3)
   112ce:	b719                	j	111d4 <_vfprintf_r+0x836>
   112d0:	2705                	addiw	a4,a4,1
   112d2:	0ff77713          	andi	a4,a4,255
   112d6:	bf31                	j	111f2 <_vfprintf_r+0x854>
   112d8:	04600793          	li	a5,70
   112dc:	00fc0b63          	beq	s8,a5,112f2 <_vfprintf_r+0x954>
   112e0:	04500793          	li	a5,69
   112e4:	8d6e                	mv	s10,s11
   112e6:	00fc1463          	bne	s8,a5,112ee <_vfprintf_r+0x950>
   112ea:	001d8d1b          	addiw	s10,s11,1
   112ee:	4689                	li	a3,2
   112f0:	a019                	j	112f6 <_vfprintf_r+0x958>
   112f2:	8d6e                	mv	s10,s11
   112f4:	468d                	li	a3,3
   112f6:	09bc                	addi	a5,sp,216
   112f8:	85f6                	mv	a1,t4
   112fa:	0e810893          	addi	a7,sp,232
   112fe:	0dc10813          	addi	a6,sp,220
   11302:	876a                	mv	a4,s10
   11304:	8652                	mv	a2,s4
   11306:	854e                	mv	a0,s3
   11308:	e476                	sd	t4,8(sp)
   1130a:	358020ef          	jal	ra,13662 <_ldtoa_r>
   1130e:	04700793          	li	a5,71
   11312:	84aa                	mv	s1,a0
   11314:	6ea2                	ld	t4,8(sp)
   11316:	00fc1563          	bne	s8,a5,11320 <_vfprintf_r+0x982>
   1131a:	00147793          	andi	a5,s0,1
   1131e:	cbb1                	beqz	a5,11372 <_vfprintf_r+0x9d4>
   11320:	04600713          	li	a4,70
   11324:	01a487b3          	add	a5,s1,s10
   11328:	02ec1963          	bne	s8,a4,1135a <_vfprintf_r+0x9bc>
   1132c:	0004c683          	lbu	a3,0(s1)
   11330:	03000713          	li	a4,48
   11334:	02e69163          	bne	a3,a4,11356 <_vfprintf_r+0x9b8>
   11338:	8576                	mv	a0,t4
   1133a:	4601                	li	a2,0
   1133c:	4681                	li	a3,0
   1133e:	85d2                	mv	a1,s4
   11340:	f4be                	sd	a5,104(sp)
   11342:	e476                	sd	t4,8(sp)
   11344:	35a070ef          	jal	ra,1869e <__eqtf2>
   11348:	6ea2                	ld	t4,8(sp)
   1134a:	77a6                	ld	a5,104(sp)
   1134c:	c509                	beqz	a0,11356 <_vfprintf_r+0x9b8>
   1134e:	4705                	li	a4,1
   11350:	41a70d3b          	subw	s10,a4,s10
   11354:	cdea                	sw	s10,216(sp)
   11356:	476e                	lw	a4,216(sp)
   11358:	97ba                	add	a5,a5,a4
   1135a:	4681                	li	a3,0
   1135c:	4601                	li	a2,0
   1135e:	8576                	mv	a0,t4
   11360:	85d2                	mv	a1,s4
   11362:	e43e                	sd	a5,8(sp)
   11364:	33a070ef          	jal	ra,1869e <__eqtf2>
   11368:	67a2                	ld	a5,8(sp)
   1136a:	03000693          	li	a3,48
   1136e:	e909                	bnez	a0,11380 <_vfprintf_r+0x9e2>
   11370:	f5be                	sd	a5,232(sp)
   11372:	7a2e                	ld	s4,232(sp)
   11374:	b549                	j	111f6 <_vfprintf_r+0x858>
   11376:	00170613          	addi	a2,a4,1
   1137a:	f5b2                	sd	a2,232(sp)
   1137c:	00d70023          	sb	a3,0(a4)
   11380:	772e                	ld	a4,232(sp)
   11382:	fef76ae3          	bltu	a4,a5,11376 <_vfprintf_r+0x9d8>
   11386:	b7f5                	j	11372 <_vfprintf_r+0x9d4>
   11388:	04600713          	li	a4,70
   1138c:	e8ec12e3          	bne	s8,a4,11210 <_vfprintf_r+0x872>
   11390:	05a05863          	blez	s10,113e0 <_vfprintf_r+0xa42>
   11394:	000d9563          	bnez	s11,1139e <_vfprintf_r+0xa00>
   11398:	00147713          	andi	a4,s0,1
   1139c:	cf59                	beqz	a4,1143a <_vfprintf_r+0xa9c>
   1139e:	47e2                	lw	a5,24(sp)
   113a0:	01a7873b          	addw	a4,a5,s10
   113a4:	01b70dbb          	addw	s11,a4,s11
   113a8:	06600b13          	li	s6,102
   113ac:	a895                	j	11420 <_vfprintf_r+0xa82>
   113ae:	8732                	mv	a4,a2
   113b0:	b56d                	j	1125a <_vfprintf_r+0x8bc>
   113b2:	0705                	addi	a4,a4,1
   113b4:	fff74783          	lbu	a5,-1(a4)
   113b8:	0605                	addi	a2,a2,1
   113ba:	fef60fa3          	sb	a5,-1(a2)
   113be:	b5c9                	j	11280 <_vfprintf_r+0x8e2>
   113c0:	0e210713          	addi	a4,sp,226
   113c4:	e599                	bnez	a1,113d2 <_vfprintf_r+0xa34>
   113c6:	03000793          	li	a5,48
   113ca:	0ef10123          	sb	a5,226(sp)
   113ce:	0e310713          	addi	a4,sp,227
   113d2:	0306879b          	addiw	a5,a3,48
   113d6:	00170613          	addi	a2,a4,1
   113da:	00f70023          	sb	a5,0(a4)
   113de:	b55d                	j	11284 <_vfprintf_r+0x8e6>
   113e0:	000d9563          	bnez	s11,113ea <_vfprintf_r+0xa4c>
   113e4:	00147713          	andi	a4,s0,1
   113e8:	cb39                	beqz	a4,1143e <_vfprintf_r+0xaa0>
   113ea:	47e2                	lw	a5,24(sp)
   113ec:	0017871b          	addiw	a4,a5,1
   113f0:	bf55                	j	113a4 <_vfprintf_r+0xa06>
   113f2:	014d4c63          	blt	s10,s4,1140a <_vfprintf_r+0xa6c>
   113f6:	00147713          	andi	a4,s0,1
   113fa:	8dea                	mv	s11,s10
   113fc:	c701                	beqz	a4,11404 <_vfprintf_r+0xa66>
   113fe:	47e2                	lw	a5,24(sp)
   11400:	01a78dbb          	addw	s11,a5,s10
   11404:	06700b13          	li	s6,103
   11408:	a821                	j	11420 <_vfprintf_r+0xa82>
   1140a:	47e2                	lw	a5,24(sp)
   1140c:	06700b13          	li	s6,103
   11410:	01478dbb          	addw	s11,a5,s4
   11414:	01a04663          	bgtz	s10,11420 <_vfprintf_r+0xa82>
   11418:	41ad8e3b          	subw	t3,s11,s10
   1141c:	001e0d9b          	addiw	s11,t3,1
   11420:	40047413          	andi	s0,s0,1024
   11424:	00040c1b          	sext.w	s8,s0
   11428:	e402                	sd	zero,8(sp)
   1142a:	e80c07e3          	beqz	s8,112b8 <_vfprintf_r+0x91a>
   1142e:	4c01                	li	s8,0
   11430:	e9a054e3          	blez	s10,112b8 <_vfprintf_r+0x91a>
   11434:	0ff00693          	li	a3,255
   11438:	a01d                	j	1145e <_vfprintf_r+0xac0>
   1143a:	8dea                	mv	s11,s10
   1143c:	b7b5                	j	113a8 <_vfprintf_r+0xa0a>
   1143e:	06600b13          	li	s6,102
   11442:	4d85                	li	s11,1
   11444:	bff1                	j	11420 <_vfprintf_r+0xa82>
   11446:	2701                	sext.w	a4,a4
   11448:	03a75063          	ble	s10,a4,11468 <_vfprintf_r+0xaca>
   1144c:	6782                	ld	a5,0(sp)
   1144e:	40ed0d3b          	subw	s10,s10,a4
   11452:	0017c703          	lbu	a4,1(a5)
   11456:	c315                	beqz	a4,1147a <_vfprintf_r+0xadc>
   11458:	0785                	addi	a5,a5,1
   1145a:	2c05                	addiw	s8,s8,1
   1145c:	e03e                	sd	a5,0(sp)
   1145e:	6782                	ld	a5,0(sp)
   11460:	0007c703          	lbu	a4,0(a5)
   11464:	fed711e3          	bne	a4,a3,11446 <_vfprintf_r+0xaa8>
   11468:	47a2                	lw	a5,8(sp)
   1146a:	00fc073b          	addw	a4,s8,a5
   1146e:	4786                	lw	a5,64(sp)
   11470:	02f7073b          	mulw	a4,a4,a5
   11474:	01b70dbb          	addw	s11,a4,s11
   11478:	b581                	j	112b8 <_vfprintf_r+0x91a>
   1147a:	47a2                	lw	a5,8(sp)
   1147c:	2785                	addiw	a5,a5,1
   1147e:	e43e                	sd	a5,8(sp)
   11480:	bff9                	j	1145e <_vfprintf_r+0xac0>
   11482:	008b8713          	addi	a4,s7,8
   11486:	f83a                	sd	a4,48(sp)
   11488:	02047713          	andi	a4,s0,32
   1148c:	000bb783          	ld	a5,0(s7)
   11490:	c719                	beqz	a4,1149e <_vfprintf_r+0xb00>
   11492:	7722                	ld	a4,40(sp)
   11494:	e398                	sd	a4,0(a5)
   11496:	7bc2                	ld	s7,48(sp)
   11498:	64c2                	ld	s1,16(sp)
   1149a:	e48ff06f          	j	10ae2 <_vfprintf_r+0x144>
   1149e:	01047713          	andi	a4,s0,16
   114a2:	fb65                	bnez	a4,11492 <_vfprintf_r+0xaf4>
   114a4:	04047713          	andi	a4,s0,64
   114a8:	c711                	beqz	a4,114b4 <_vfprintf_r+0xb16>
   114aa:	02815703          	lhu	a4,40(sp)
   114ae:	00e79023          	sh	a4,0(a5)
   114b2:	b7d5                	j	11496 <_vfprintf_r+0xaf8>
   114b4:	20047413          	andi	s0,s0,512
   114b8:	c411                	beqz	s0,114c4 <_vfprintf_r+0xb26>
   114ba:	02814703          	lbu	a4,40(sp)
   114be:	00e78023          	sb	a4,0(a5)
   114c2:	bfd1                	j	11496 <_vfprintf_r+0xaf8>
   114c4:	5722                	lw	a4,40(sp)
   114c6:	c398                	sw	a4,0(a5)
   114c8:	b7f9                	j	11496 <_vfprintf_r+0xaf8>
   114ca:	01046413          	ori	s0,s0,16
   114ce:	2401                	sext.w	s0,s0
   114d0:	008b8793          	addi	a5,s7,8
   114d4:	f83e                	sd	a5,48(sp)
   114d6:	02047793          	andi	a5,s0,32
   114da:	cb85                	beqz	a5,1150a <_vfprintf_r+0xb6c>
   114dc:	000bbb83          	ld	s7,0(s7)
   114e0:	bff47413          	andi	s0,s0,-1025
   114e4:	2401                	sext.w	s0,s0
   114e6:	4781                	li	a5,0
   114e8:	0c0107a3          	sb	zero,207(sp)
   114ec:	577d                	li	a4,-1
   114ee:	12ed8c63          	beq	s11,a4,11626 <_vfprintf_r+0xc88>
   114f2:	8722                	mv	a4,s0
   114f4:	f7f47413          	andi	s0,s0,-129
   114f8:	2401                	sext.w	s0,s0
   114fa:	120b9663          	bnez	s7,11626 <_vfprintf_r+0xc88>
   114fe:	200d8463          	beqz	s11,11706 <_vfprintf_r+0xd68>
   11502:	4705                	li	a4,1
   11504:	12e79463          	bne	a5,a4,1162c <_vfprintf_r+0xc8e>
   11508:	bc05                	j	10f38 <_vfprintf_r+0x59a>
   1150a:	01047793          	andi	a5,s0,16
   1150e:	f7f9                	bnez	a5,114dc <_vfprintf_r+0xb3e>
   11510:	04047793          	andi	a5,s0,64
   11514:	000bab83          	lw	s7,0(s7)
   11518:	c789                	beqz	a5,11522 <_vfprintf_r+0xb84>
   1151a:	1bc2                	slli	s7,s7,0x30
   1151c:	030bdb93          	srli	s7,s7,0x30
   11520:	b7c1                	j	114e0 <_vfprintf_r+0xb42>
   11522:	20047793          	andi	a5,s0,512
   11526:	c781                	beqz	a5,1152e <_vfprintf_r+0xb90>
   11528:	0ffbfb93          	andi	s7,s7,255
   1152c:	bf55                	j	114e0 <_vfprintf_r+0xb42>
   1152e:	1b82                	slli	s7,s7,0x20
   11530:	020bdb93          	srli	s7,s7,0x20
   11534:	b775                	j	114e0 <_vfprintf_r+0xb42>
   11536:	008b8793          	addi	a5,s7,8
   1153a:	f83e                	sd	a5,48(sp)
   1153c:	77e1                	lui	a5,0xffff8
   1153e:	8307c793          	xori	a5,a5,-2000
   11542:	0cf11823          	sh	a5,208(sp)
   11546:	0001a7b7          	lui	a5,0x1a
   1154a:	dc078793          	addi	a5,a5,-576 # 19dc0 <zeroes.4441+0x60>
   1154e:	00246413          	ori	s0,s0,2
   11552:	f0be                	sd	a5,96(sp)
   11554:	000bbb83          	ld	s7,0(s7)
   11558:	2401                	sext.w	s0,s0
   1155a:	4789                	li	a5,2
   1155c:	07800b13          	li	s6,120
   11560:	b761                	j	114e8 <_vfprintf_r+0xb4a>
   11562:	008b8793          	addi	a5,s7,8
   11566:	f83e                	sd	a5,48(sp)
   11568:	0c0107a3          	sb	zero,207(sp)
   1156c:	57fd                	li	a5,-1
   1156e:	000bb483          	ld	s1,0(s7)
   11572:	00fd8e63          	beq	s11,a5,1158e <_vfprintf_r+0xbf0>
   11576:	866e                	mv	a2,s11
   11578:	4581                	li	a1,0
   1157a:	8526                	mv	a0,s1
   1157c:	43b020ef          	jal	ra,141b6 <memchr>
   11580:	8baa                	mv	s7,a0
   11582:	a40503e3          	beqz	a0,10fc8 <_vfprintf_r+0x62a>
   11586:	40950dbb          	subw	s11,a0,s1
   1158a:	4b81                	li	s7,0
   1158c:	bc35                	j	10fc8 <_vfprintf_r+0x62a>
   1158e:	8526                	mv	a0,s1
   11590:	1e1030ef          	jal	ra,14f70 <strlen>
   11594:	00050d9b          	sext.w	s11,a0
   11598:	bfcd                	j	1158a <_vfprintf_r+0xbec>
   1159a:	01046413          	ori	s0,s0,16
   1159e:	2401                	sext.w	s0,s0
   115a0:	008b8793          	addi	a5,s7,8
   115a4:	f83e                	sd	a5,48(sp)
   115a6:	02047793          	andi	a5,s0,32
   115aa:	c789                	beqz	a5,115b4 <_vfprintf_r+0xc16>
   115ac:	000bbb83          	ld	s7,0(s7)
   115b0:	4785                	li	a5,1
   115b2:	bf1d                	j	114e8 <_vfprintf_r+0xb4a>
   115b4:	01047793          	andi	a5,s0,16
   115b8:	fbf5                	bnez	a5,115ac <_vfprintf_r+0xc0e>
   115ba:	04047793          	andi	a5,s0,64
   115be:	000bab83          	lw	s7,0(s7)
   115c2:	c789                	beqz	a5,115cc <_vfprintf_r+0xc2e>
   115c4:	1bc2                	slli	s7,s7,0x30
   115c6:	030bdb93          	srli	s7,s7,0x30
   115ca:	b7dd                	j	115b0 <_vfprintf_r+0xc12>
   115cc:	20047793          	andi	a5,s0,512
   115d0:	c781                	beqz	a5,115d8 <_vfprintf_r+0xc3a>
   115d2:	0ffbfb93          	andi	s7,s7,255
   115d6:	bfe9                	j	115b0 <_vfprintf_r+0xc12>
   115d8:	1b82                	slli	s7,s7,0x20
   115da:	020bdb93          	srli	s7,s7,0x20
   115de:	bfc9                	j	115b0 <_vfprintf_r+0xc12>
   115e0:	0001a7b7          	lui	a5,0x1a
   115e4:	dc078793          	addi	a5,a5,-576 # 19dc0 <zeroes.4441+0x60>
   115e8:	d9eff06f          	j	10b86 <_vfprintf_r+0x1e8>
   115ec:	01047793          	andi	a5,s0,16
   115f0:	da079363          	bnez	a5,10b96 <_vfprintf_r+0x1f8>
   115f4:	04047793          	andi	a5,s0,64
   115f8:	000bab83          	lw	s7,0(s7)
   115fc:	c791                	beqz	a5,11608 <_vfprintf_r+0xc6a>
   115fe:	1bc2                	slli	s7,s7,0x30
   11600:	030bdb93          	srli	s7,s7,0x30
   11604:	d96ff06f          	j	10b9a <_vfprintf_r+0x1fc>
   11608:	20047793          	andi	a5,s0,512
   1160c:	c789                	beqz	a5,11616 <_vfprintf_r+0xc78>
   1160e:	0ffbfb93          	andi	s7,s7,255
   11612:	d88ff06f          	j	10b9a <_vfprintf_r+0x1fc>
   11616:	1b82                	slli	s7,s7,0x20
   11618:	020bdb93          	srli	s7,s7,0x20
   1161c:	d7eff06f          	j	10b9a <_vfprintf_r+0x1fc>
   11620:	8722                	mv	a4,s0
   11622:	4785                	li	a5,1
   11624:	bdc1                	j	114f4 <_vfprintf_r+0xb56>
   11626:	4705                	li	a4,1
   11628:	90e785e3          	beq	a5,a4,10f32 <_vfprintf_r+0x594>
   1162c:	4709                	li	a4,2
   1162e:	0ae78d63          	beq	a5,a4,116e8 <_vfprintf_r+0xd4a>
   11632:	1afc                	addi	a5,sp,380
   11634:	007bf713          	andi	a4,s7,7
   11638:	03070713          	addi	a4,a4,48
   1163c:	fee78fa3          	sb	a4,-1(a5)
   11640:	003bdb93          	srli	s7,s7,0x3
   11644:	fff78493          	addi	s1,a5,-1
   11648:	020b9863          	bnez	s7,11678 <_vfprintf_r+0xcda>
   1164c:	00147693          	andi	a3,s0,1
   11650:	ca89                	beqz	a3,11662 <_vfprintf_r+0xcc4>
   11652:	03000693          	li	a3,48
   11656:	00d70663          	beq	a4,a3,11662 <_vfprintf_r+0xcc4>
   1165a:	fed48fa3          	sb	a3,-1(s1)
   1165e:	ffe78493          	addi	s1,a5,-2
   11662:	17c10e13          	addi	t3,sp,380
   11666:	876e                	mv	a4,s11
   11668:	4b81                	li	s7,0
   1166a:	409e0dbb          	subw	s11,t3,s1
   1166e:	e402                	sd	zero,8(sp)
   11670:	4c01                	li	s8,0
   11672:	4d01                	li	s10,0
   11674:	e8eff06f          	j	10d02 <_vfprintf_r+0x364>
   11678:	87a6                	mv	a5,s1
   1167a:	bf6d                	j	11634 <_vfprintf_r+0xc96>
   1167c:	40047c13          	andi	s8,s0,1024
   11680:	4a01                	li	s4,0
   11682:	1afc                	addi	a5,sp,380
   11684:	4d29                	li	s10,10
   11686:	2c01                	sext.w	s8,s8
   11688:	0ff00693          	li	a3,255
   1168c:	4825                	li	a6,9
   1168e:	03abf733          	remu	a4,s7,s10
   11692:	fff78493          	addi	s1,a5,-1
   11696:	2a05                	addiw	s4,s4,1
   11698:	0307071b          	addiw	a4,a4,48
   1169c:	fee78fa3          	sb	a4,-1(a5)
   116a0:	020c0e63          	beqz	s8,116dc <_vfprintf_r+0xd3e>
   116a4:	6782                	ld	a5,0(sp)
   116a6:	0007c783          	lbu	a5,0(a5)
   116aa:	02fa1963          	bne	s4,a5,116dc <_vfprintf_r+0xd3e>
   116ae:	02d78763          	beq	a5,a3,116dc <_vfprintf_r+0xd3e>
   116b2:	03787563          	bleu	s7,a6,116dc <_vfprintf_r+0xd3e>
   116b6:	6786                	ld	a5,64(sp)
   116b8:	65c6                	ld	a1,80(sp)
   116ba:	fc42                	sd	a6,56(sp)
   116bc:	8c9d                	sub	s1,s1,a5
   116be:	863e                	mv	a2,a5
   116c0:	8526                	mv	a0,s1
   116c2:	e436                	sd	a3,8(sp)
   116c4:	0bf030ef          	jal	ra,14f82 <strncpy>
   116c8:	6782                	ld	a5,0(sp)
   116ca:	4a01                	li	s4,0
   116cc:	66a2                	ld	a3,8(sp)
   116ce:	0017c783          	lbu	a5,1(a5)
   116d2:	7862                	ld	a6,56(sp)
   116d4:	c781                	beqz	a5,116dc <_vfprintf_r+0xd3e>
   116d6:	6782                	ld	a5,0(sp)
   116d8:	0785                	addi	a5,a5,1
   116da:	e03e                	sd	a5,0(sp)
   116dc:	03abdbb3          	divu	s7,s7,s10
   116e0:	f80b81e3          	beqz	s7,11662 <_vfprintf_r+0xcc4>
   116e4:	87a6                	mv	a5,s1
   116e6:	b765                	j	1168e <_vfprintf_r+0xcf0>
   116e8:	1ae4                	addi	s1,sp,380
   116ea:	7706                	ld	a4,96(sp)
   116ec:	00fbf793          	andi	a5,s7,15
   116f0:	14fd                	addi	s1,s1,-1
   116f2:	97ba                	add	a5,a5,a4
   116f4:	0007c783          	lbu	a5,0(a5)
   116f8:	004bdb93          	srli	s7,s7,0x4
   116fc:	00f48023          	sb	a5,0(s1)
   11700:	fe0b95e3          	bnez	s7,116ea <_vfprintf_r+0xd4c>
   11704:	bfb9                	j	11662 <_vfprintf_r+0xcc4>
   11706:	1ae4                	addi	s1,sp,380
   11708:	ffa9                	bnez	a5,11662 <_vfprintf_r+0xcc4>
   1170a:	8b05                	andi	a4,a4,1
   1170c:	db39                	beqz	a4,11662 <_vfprintf_r+0xcc4>
   1170e:	03000793          	li	a5,48
   11712:	16f10da3          	sb	a5,379(sp)
   11716:	82bff06f          	j	10f40 <_vfprintf_r+0x5a2>
   1171a:	020b02e3          	beqz	s6,11f3e <_vfprintf_r+0x15a0>
   1171e:	11610c23          	sb	s6,280(sp)
   11722:	0c0107a3          	sb	zero,207(sp)
   11726:	f85e                	sd	s7,48(sp)
   11728:	dccff06f          	j	10cf4 <_vfprintf_r+0x356>
   1172c:	0641                	addi	a2,a2,16
   1172e:	011cb423          	sd	a7,8(s9)
   11732:	ea32                	sd	a2,272(sp)
   11734:	10b12423          	sw	a1,264(sp)
   11738:	02aed463          	ble	a0,t4,11760 <_vfprintf_r+0xdc2>
   1173c:	0210                	addi	a2,sp,256
   1173e:	85ca                	mv	a1,s2
   11740:	854e                	mv	a0,s3
   11742:	fd76                	sd	t4,184(sp)
   11744:	f942                	sd	a6,176(sp)
   11746:	e546                	sd	a7,136(sp)
   11748:	e13a                	sd	a4,128(sp)
   1174a:	fcb6                	sd	a3,120(sp)
   1174c:	5df040ef          	jal	ra,1652a <__sprint_r>
   11750:	7a051863          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11754:	7eea                	ld	t4,184(sp)
   11756:	784a                	ld	a6,176(sp)
   11758:	68aa                	ld	a7,136(sp)
   1175a:	670a                	ld	a4,128(sp)
   1175c:	76e6                	ld	a3,120(sp)
   1175e:	8f56                	mv	t5,s5
   11760:	36c1                	addiw	a3,a3,-16
   11762:	8cfa                	mv	s9,t5
   11764:	de8ff06f          	j	10d4c <_vfprintf_r+0x3ae>
   11768:	0641                	addi	a2,a2,16
   1176a:	011cb423          	sd	a7,8(s9)
   1176e:	ea32                	sd	a2,272(sp)
   11770:	10b12423          	sw	a1,264(sp)
   11774:	02aed463          	ble	a0,t4,1179c <_vfprintf_r+0xdfe>
   11778:	0210                	addi	a2,sp,256
   1177a:	85ca                	mv	a1,s2
   1177c:	854e                	mv	a0,s3
   1177e:	e576                	sd	t4,136(sp)
   11780:	e142                	sd	a6,128(sp)
   11782:	fcc6                	sd	a7,120(sp)
   11784:	f8ba                	sd	a4,112(sp)
   11786:	f4b6                	sd	a3,104(sp)
   11788:	5a3040ef          	jal	ra,1652a <__sprint_r>
   1178c:	76051a63          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11790:	6eaa                	ld	t4,136(sp)
   11792:	680a                	ld	a6,128(sp)
   11794:	78e6                	ld	a7,120(sp)
   11796:	7746                	ld	a4,112(sp)
   11798:	76a6                	ld	a3,104(sp)
   1179a:	8f56                	mv	t5,s5
   1179c:	36c1                	addiw	a3,a3,-16
   1179e:	8cfa                	mv	s9,t5
   117a0:	e92ff06f          	j	10e32 <_vfprintf_r+0x494>
   117a4:	06c1                	addi	a3,a3,16
   117a6:	011cb423          	sd	a7,8(s9)
   117aa:	ea36                	sd	a3,272(sp)
   117ac:	10c12423          	sw	a2,264(sp)
   117b0:	02bed263          	ble	a1,t4,117d4 <_vfprintf_r+0xe36>
   117b4:	0210                	addi	a2,sp,256
   117b6:	85ca                	mv	a1,s2
   117b8:	854e                	mv	a0,s3
   117ba:	e176                	sd	t4,128(sp)
   117bc:	fcc2                	sd	a6,120(sp)
   117be:	f8c6                	sd	a7,112(sp)
   117c0:	f4ba                	sd	a4,104(sp)
   117c2:	569040ef          	jal	ra,1652a <__sprint_r>
   117c6:	72051d63          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   117ca:	6e8a                	ld	t4,128(sp)
   117cc:	7866                	ld	a6,120(sp)
   117ce:	78c6                	ld	a7,112(sp)
   117d0:	7726                	ld	a4,104(sp)
   117d2:	8556                	mv	a0,s5
   117d4:	3741                	addiw	a4,a4,-16
   117d6:	8caa                	mv	s9,a0
   117d8:	eaeff06f          	j	10e86 <_vfprintf_r+0x4e8>
   117dc:	06500693          	li	a3,101
   117e0:	5766df63          	ble	s6,a3,11d5e <_vfprintf_r+0x13c0>
   117e4:	754e                	ld	a0,240(sp)
   117e6:	75ee                	ld	a1,248(sp)
   117e8:	4601                	li	a2,0
   117ea:	4681                	li	a3,0
   117ec:	f4ba                	sd	a4,104(sp)
   117ee:	6b1060ef          	jal	ra,1869e <__eqtf2>
   117f2:	7726                	ld	a4,104(sp)
   117f4:	10051e63          	bnez	a0,11910 <_vfprintf_r+0xf72>
   117f8:	0001a7b7          	lui	a5,0x1a
   117fc:	df078793          	addi	a5,a5,-528 # 19df0 <zeroes.4441+0x90>
   11800:	00fcb023          	sd	a5,0(s9)
   11804:	4785                	li	a5,1
   11806:	00fcb423          	sd	a5,8(s9)
   1180a:	10812783          	lw	a5,264(sp)
   1180e:	0705                	addi	a4,a4,1
   11810:	ea3a                	sd	a4,272(sp)
   11812:	0017871b          	addiw	a4,a5,1
   11816:	10e12423          	sw	a4,264(sp)
   1181a:	479d                	li	a5,7
   1181c:	0cc1                	addi	s9,s9,16
   1181e:	00e7da63          	ble	a4,a5,11832 <_vfprintf_r+0xe94>
   11822:	0210                	addi	a2,sp,256
   11824:	85ca                	mv	a1,s2
   11826:	854e                	mv	a0,s3
   11828:	503040ef          	jal	ra,1652a <__sprint_r>
   1182c:	6c051a63          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11830:	8cd6                	mv	s9,s5
   11832:	47ee                	lw	a5,216(sp)
   11834:	0147c563          	blt	a5,s4,1183e <_vfprintf_r+0xea0>
   11838:	00147793          	andi	a5,s0,1
   1183c:	cfa5                	beqz	a5,118b4 <_vfprintf_r+0xf16>
   1183e:	67a6                	ld	a5,72(sp)
   11840:	6762                	ld	a4,24(sp)
   11842:	0cc1                	addi	s9,s9,16
   11844:	fefcb823          	sd	a5,-16(s9)
   11848:	67e2                	ld	a5,24(sp)
   1184a:	fefcbc23          	sd	a5,-8(s9)
   1184e:	67d2                	ld	a5,272(sp)
   11850:	97ba                	add	a5,a5,a4
   11852:	ea3e                	sd	a5,272(sp)
   11854:	10812783          	lw	a5,264(sp)
   11858:	0017871b          	addiw	a4,a5,1
   1185c:	10e12423          	sw	a4,264(sp)
   11860:	479d                	li	a5,7
   11862:	00e7da63          	ble	a4,a5,11876 <_vfprintf_r+0xed8>
   11866:	0210                	addi	a2,sp,256
   11868:	85ca                	mv	a1,s2
   1186a:	854e                	mv	a0,s3
   1186c:	4bf040ef          	jal	ra,1652a <__sprint_r>
   11870:	68051863          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11874:	8cd6                	mv	s9,s5
   11876:	fffa049b          	addiw	s1,s4,-1
   1187a:	02905d63          	blez	s1,118b4 <_vfprintf_r+0xf16>
   1187e:	6b69                	lui	s6,0x1a
   11880:	4c41                	li	s8,16
   11882:	d60b0b13          	addi	s6,s6,-672 # 19d60 <zeroes.4441>
   11886:	4d1d                	li	s10,7
   11888:	10812703          	lw	a4,264(sp)
   1188c:	016cb023          	sd	s6,0(s9)
   11890:	67d2                	ld	a5,272(sp)
   11892:	0017069b          	addiw	a3,a4,1
   11896:	8736                	mv	a4,a3
   11898:	010c8613          	addi	a2,s9,16
   1189c:	049c4763          	blt	s8,s1,118ea <_vfprintf_r+0xf4c>
   118a0:	009cb423          	sd	s1,8(s9)
   118a4:	94be                	add	s1,s1,a5
   118a6:	ea26                	sd	s1,272(sp)
   118a8:	10d12423          	sw	a3,264(sp)
   118ac:	479d                	li	a5,7
   118ae:	8cb2                	mv	s9,a2
   118b0:	e4d7c063          	blt	a5,a3,10ef0 <_vfprintf_r+0x552>
   118b4:	8811                	andi	s0,s0,4
   118b6:	60041063          	bnez	s0,11eb6 <_vfprintf_r+0x1518>
   118ba:	7702                	ld	a4,32(sp)
   118bc:	76e2                	ld	a3,56(sp)
   118be:	5782                	lw	a5,32(sp)
   118c0:	00d75363          	ble	a3,a4,118c6 <_vfprintf_r+0xf28>
   118c4:	57e2                	lw	a5,56(sp)
   118c6:	5722                	lw	a4,40(sp)
   118c8:	9fb9                	addw	a5,a5,a4
   118ca:	f43e                	sd	a5,40(sp)
   118cc:	67d2                	ld	a5,272(sp)
   118ce:	cb81                	beqz	a5,118de <_vfprintf_r+0xf40>
   118d0:	0210                	addi	a2,sp,256
   118d2:	85ca                	mv	a1,s2
   118d4:	854e                	mv	a0,s3
   118d6:	455040ef          	jal	ra,1652a <__sprint_r>
   118da:	62051363          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   118de:	10012423          	sw	zero,264(sp)
   118e2:	640b9963          	bnez	s7,11f34 <_vfprintf_r+0x1596>
   118e6:	8cd6                	mv	s9,s5
   118e8:	b67d                	j	11496 <_vfprintf_r+0xaf8>
   118ea:	07c1                	addi	a5,a5,16
   118ec:	018cb423          	sd	s8,8(s9)
   118f0:	ea3e                	sd	a5,272(sp)
   118f2:	10e12423          	sw	a4,264(sp)
   118f6:	00dd5a63          	ble	a3,s10,1190a <_vfprintf_r+0xf6c>
   118fa:	0210                	addi	a2,sp,256
   118fc:	85ca                	mv	a1,s2
   118fe:	854e                	mv	a0,s3
   11900:	42b040ef          	jal	ra,1652a <__sprint_r>
   11904:	5e051e63          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11908:	8656                	mv	a2,s5
   1190a:	34c1                	addiw	s1,s1,-16
   1190c:	8cb2                	mv	s9,a2
   1190e:	bfad                	j	11888 <_vfprintf_r+0xeea>
   11910:	46ee                	lw	a3,216(sp)
   11912:	12d04163          	bgtz	a3,11a34 <_vfprintf_r+0x1096>
   11916:	0001a7b7          	lui	a5,0x1a
   1191a:	df078793          	addi	a5,a5,-528 # 19df0 <zeroes.4441+0x90>
   1191e:	00fcb023          	sd	a5,0(s9)
   11922:	4785                	li	a5,1
   11924:	00fcb423          	sd	a5,8(s9)
   11928:	10812783          	lw	a5,264(sp)
   1192c:	0705                	addi	a4,a4,1
   1192e:	ea3a                	sd	a4,272(sp)
   11930:	0017871b          	addiw	a4,a5,1
   11934:	10e12423          	sw	a4,264(sp)
   11938:	479d                	li	a5,7
   1193a:	0cc1                	addi	s9,s9,16
   1193c:	00e7da63          	ble	a4,a5,11950 <_vfprintf_r+0xfb2>
   11940:	0210                	addi	a2,sp,256
   11942:	85ca                	mv	a1,s2
   11944:	854e                	mv	a0,s3
   11946:	3e5040ef          	jal	ra,1652a <__sprint_r>
   1194a:	5a051b63          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   1194e:	8cd6                	mv	s9,s5
   11950:	47ee                	lw	a5,216(sp)
   11952:	e791                	bnez	a5,1195e <_vfprintf_r+0xfc0>
   11954:	000a1563          	bnez	s4,1195e <_vfprintf_r+0xfc0>
   11958:	00147793          	andi	a5,s0,1
   1195c:	dfa1                	beqz	a5,118b4 <_vfprintf_r+0xf16>
   1195e:	67a6                	ld	a5,72(sp)
   11960:	6762                	ld	a4,24(sp)
   11962:	010c8313          	addi	t1,s9,16
   11966:	00fcb023          	sd	a5,0(s9)
   1196a:	67e2                	ld	a5,24(sp)
   1196c:	00fcb423          	sd	a5,8(s9)
   11970:	67d2                	ld	a5,272(sp)
   11972:	97ba                	add	a5,a5,a4
   11974:	ea3e                	sd	a5,272(sp)
   11976:	10812783          	lw	a5,264(sp)
   1197a:	0017871b          	addiw	a4,a5,1
   1197e:	10e12423          	sw	a4,264(sp)
   11982:	479d                	li	a5,7
   11984:	00e7da63          	ble	a4,a5,11998 <_vfprintf_r+0xffa>
   11988:	0210                	addi	a2,sp,256
   1198a:	85ca                	mv	a1,s2
   1198c:	854e                	mv	a0,s3
   1198e:	39d040ef          	jal	ra,1652a <__sprint_r>
   11992:	56051763          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11996:	8356                	mv	t1,s5
   11998:	4b6e                	lw	s6,216(sp)
   1199a:	040b5663          	bgez	s6,119e6 <_vfprintf_r+0x1048>
   1199e:	6c69                	lui	s8,0x1a
   119a0:	41600b3b          	negw	s6,s6
   119a4:	879a                	mv	a5,t1
   119a6:	4d41                	li	s10,16
   119a8:	d60c0c13          	addi	s8,s8,-672 # 19d60 <zeroes.4441>
   119ac:	4c9d                	li	s9,7
   119ae:	10812683          	lw	a3,264(sp)
   119b2:	0187b023          	sd	s8,0(a5)
   119b6:	6752                	ld	a4,272(sp)
   119b8:	0016861b          	addiw	a2,a3,1
   119bc:	86b2                	mv	a3,a2
   119be:	0341                	addi	t1,t1,16
   119c0:	056d4763          	blt	s10,s6,11a0e <_vfprintf_r+0x1070>
   119c4:	0167b423          	sd	s6,8(a5)
   119c8:	9b3a                	add	s6,s6,a4
   119ca:	ea5a                	sd	s6,272(sp)
   119cc:	10c12423          	sw	a2,264(sp)
   119d0:	479d                	li	a5,7
   119d2:	00c7da63          	ble	a2,a5,119e6 <_vfprintf_r+0x1048>
   119d6:	0210                	addi	a2,sp,256
   119d8:	85ca                	mv	a1,s2
   119da:	854e                	mv	a0,s3
   119dc:	34f040ef          	jal	ra,1652a <__sprint_r>
   119e0:	52051063          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   119e4:	8356                	mv	t1,s5
   119e6:	67d2                	ld	a5,272(sp)
   119e8:	00933023          	sd	s1,0(t1) # 0 <main-0x100b0>
   119ec:	01433423          	sd	s4,8(t1)
   119f0:	97d2                	add	a5,a5,s4
   119f2:	ea3e                	sd	a5,272(sp)
   119f4:	10812783          	lw	a5,264(sp)
   119f8:	01030c93          	addi	s9,t1,16
   119fc:	0017871b          	addiw	a4,a5,1
   11a00:	10e12423          	sw	a4,264(sp)
   11a04:	479d                	li	a5,7
   11a06:	eae7d7e3          	ble	a4,a5,118b4 <_vfprintf_r+0xf16>
   11a0a:	ce6ff06f          	j	10ef0 <_vfprintf_r+0x552>
   11a0e:	0741                	addi	a4,a4,16
   11a10:	01a7b423          	sd	s10,8(a5)
   11a14:	ea3a                	sd	a4,272(sp)
   11a16:	10d12423          	sw	a3,264(sp)
   11a1a:	00ccda63          	ble	a2,s9,11a2e <_vfprintf_r+0x1090>
   11a1e:	0210                	addi	a2,sp,256
   11a20:	85ca                	mv	a1,s2
   11a22:	854e                	mv	a0,s3
   11a24:	307040ef          	jal	ra,1652a <__sprint_r>
   11a28:	4c051c63          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11a2c:	8356                	mv	t1,s5
   11a2e:	3b41                	addiw	s6,s6,-16
   11a30:	879a                	mv	a5,t1
   11a32:	bfb5                	j	119ae <_vfprintf_r+0x1010>
   11a34:	000d0b1b          	sext.w	s6,s10
   11a38:	01aa5463          	ble	s10,s4,11a40 <_vfprintf_r+0x10a2>
   11a3c:	000a0b1b          	sext.w	s6,s4
   11a40:	03605a63          	blez	s6,11a74 <_vfprintf_r+0x10d6>
   11a44:	975a                	add	a4,a4,s6
   11a46:	ea3a                	sd	a4,272(sp)
   11a48:	10812703          	lw	a4,264(sp)
   11a4c:	009cb023          	sd	s1,0(s9)
   11a50:	016cb423          	sd	s6,8(s9)
   11a54:	0017069b          	addiw	a3,a4,1
   11a58:	10d12423          	sw	a3,264(sp)
   11a5c:	471d                	li	a4,7
   11a5e:	0cc1                	addi	s9,s9,16
   11a60:	00d75a63          	ble	a3,a4,11a74 <_vfprintf_r+0x10d6>
   11a64:	0210                	addi	a2,sp,256
   11a66:	85ca                	mv	a1,s2
   11a68:	854e                	mv	a0,s3
   11a6a:	2c1040ef          	jal	ra,1652a <__sprint_r>
   11a6e:	48051963          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11a72:	8cd6                	mv	s9,s5
   11a74:	875a                	mv	a4,s6
   11a76:	000b5363          	bgez	s6,11a7c <_vfprintf_r+0x10de>
   11a7a:	4701                	li	a4,0
   11a7c:	40ed0b3b          	subw	s6,s10,a4
   11a80:	05605563          	blez	s6,11aca <_vfprintf_r+0x112c>
   11a84:	66e9                	lui	a3,0x1a
   11a86:	4841                	li	a6,16
   11a88:	d6068d93          	addi	s11,a3,-672 # 19d60 <zeroes.4441>
   11a8c:	489d                	li	a7,7
   11a8e:	10812603          	lw	a2,264(sp)
   11a92:	01bcb023          	sd	s11,0(s9)
   11a96:	6752                	ld	a4,272(sp)
   11a98:	0016059b          	addiw	a1,a2,1
   11a9c:	862e                	mv	a2,a1
   11a9e:	010c8513          	addi	a0,s9,16
   11aa2:	15684263          	blt	a6,s6,11be6 <_vfprintf_r+0x1248>
   11aa6:	016cb423          	sd	s6,8(s9)
   11aaa:	9b3a                	add	s6,s6,a4
   11aac:	ea5a                	sd	s6,272(sp)
   11aae:	10b12423          	sw	a1,264(sp)
   11ab2:	471d                	li	a4,7
   11ab4:	8caa                	mv	s9,a0
   11ab6:	00b75a63          	ble	a1,a4,11aca <_vfprintf_r+0x112c>
   11aba:	0210                	addi	a2,sp,256
   11abc:	85ca                	mv	a1,s2
   11abe:	854e                	mv	a0,s3
   11ac0:	26b040ef          	jal	ra,1652a <__sprint_r>
   11ac4:	42051e63          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11ac8:	8cd6                	mv	s9,s5
   11aca:	40047793          	andi	a5,s0,1024
   11ace:	01a48b33          	add	s6,s1,s10
   11ad2:	c39d                	beqz	a5,11af8 <_vfprintf_r+0x115a>
   11ad4:	014487b3          	add	a5,s1,s4
   11ad8:	f4be                	sd	a5,104(sp)
   11ada:	67e9                	lui	a5,0x1a
   11adc:	d6078793          	addi	a5,a5,-672 # 19d60 <zeroes.4441>
   11ae0:	4d9d                	li	s11,7
   11ae2:	8d3e                	mv	s10,a5
   11ae4:	67a2                	ld	a5,8(sp)
   11ae6:	120c1763          	bnez	s8,11c14 <_vfprintf_r+0x1276>
   11aea:	12079663          	bnez	a5,11c16 <_vfprintf_r+0x1278>
   11aee:	014487b3          	add	a5,s1,s4
   11af2:	0167f363          	bleu	s6,a5,11af8 <_vfprintf_r+0x115a>
   11af6:	8b3e                	mv	s6,a5
   11af8:	47ee                	lw	a5,216(sp)
   11afa:	0147c563          	blt	a5,s4,11b04 <_vfprintf_r+0x1166>
   11afe:	00147793          	andi	a5,s0,1
   11b02:	cf8d                	beqz	a5,11b3c <_vfprintf_r+0x119e>
   11b04:	67a6                	ld	a5,72(sp)
   11b06:	6762                	ld	a4,24(sp)
   11b08:	0cc1                	addi	s9,s9,16
   11b0a:	fefcb823          	sd	a5,-16(s9)
   11b0e:	67e2                	ld	a5,24(sp)
   11b10:	fefcbc23          	sd	a5,-8(s9)
   11b14:	67d2                	ld	a5,272(sp)
   11b16:	97ba                	add	a5,a5,a4
   11b18:	ea3e                	sd	a5,272(sp)
   11b1a:	10812783          	lw	a5,264(sp)
   11b1e:	0017871b          	addiw	a4,a5,1
   11b22:	10e12423          	sw	a4,264(sp)
   11b26:	479d                	li	a5,7
   11b28:	00e7da63          	ble	a4,a5,11b3c <_vfprintf_r+0x119e>
   11b2c:	0210                	addi	a2,sp,256
   11b2e:	85ca                	mv	a1,s2
   11b30:	854e                	mv	a0,s3
   11b32:	1f9040ef          	jal	ra,1652a <__sprint_r>
   11b36:	3c051563          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11b3a:	8cd6                	mv	s9,s5
   11b3c:	4c6e                	lw	s8,216(sp)
   11b3e:	94d2                	add	s1,s1,s4
   11b40:	416484bb          	subw	s1,s1,s6
   11b44:	418a07bb          	subw	a5,s4,s8
   11b48:	8c3e                	mv	s8,a5
   11b4a:	00f4d463          	ble	a5,s1,11b52 <_vfprintf_r+0x11b4>
   11b4e:	00048c1b          	sext.w	s8,s1
   11b52:	03805b63          	blez	s8,11b88 <_vfprintf_r+0x11ea>
   11b56:	67d2                	ld	a5,272(sp)
   11b58:	016cb023          	sd	s6,0(s9)
   11b5c:	018cb423          	sd	s8,8(s9)
   11b60:	97e2                	add	a5,a5,s8
   11b62:	ea3e                	sd	a5,272(sp)
   11b64:	10812783          	lw	a5,264(sp)
   11b68:	0cc1                	addi	s9,s9,16
   11b6a:	0017871b          	addiw	a4,a5,1
   11b6e:	10e12423          	sw	a4,264(sp)
   11b72:	479d                	li	a5,7
   11b74:	00e7da63          	ble	a4,a5,11b88 <_vfprintf_r+0x11ea>
   11b78:	0210                	addi	a2,sp,256
   11b7a:	85ca                	mv	a1,s2
   11b7c:	854e                	mv	a0,s3
   11b7e:	1ad040ef          	jal	ra,1652a <__sprint_r>
   11b82:	36051f63          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11b86:	8cd6                	mv	s9,s5
   11b88:	87e2                	mv	a5,s8
   11b8a:	000c5363          	bgez	s8,11b90 <_vfprintf_r+0x11f2>
   11b8e:	4781                	li	a5,0
   11b90:	44ee                	lw	s1,216(sp)
   11b92:	409a04bb          	subw	s1,s4,s1
   11b96:	9c9d                	subw	s1,s1,a5
   11b98:	d0905ee3          	blez	s1,118b4 <_vfprintf_r+0xf16>
   11b9c:	6b69                	lui	s6,0x1a
   11b9e:	4c41                	li	s8,16
   11ba0:	d60b0b13          	addi	s6,s6,-672 # 19d60 <zeroes.4441>
   11ba4:	4d1d                	li	s10,7
   11ba6:	10812703          	lw	a4,264(sp)
   11baa:	016cb023          	sd	s6,0(s9)
   11bae:	67d2                	ld	a5,272(sp)
   11bb0:	0017069b          	addiw	a3,a4,1
   11bb4:	8736                	mv	a4,a3
   11bb6:	010c8613          	addi	a2,s9,16
   11bba:	169c4f63          	blt	s8,s1,11d38 <_vfprintf_r+0x139a>
   11bbe:	009cb423          	sd	s1,8(s9)
   11bc2:	94be                	add	s1,s1,a5
   11bc4:	ea26                	sd	s1,272(sp)
   11bc6:	10d12423          	sw	a3,264(sp)
   11bca:	479d                	li	a5,7
   11bcc:	8cb2                	mv	s9,a2
   11bce:	ced7d3e3          	ble	a3,a5,118b4 <_vfprintf_r+0xf16>
   11bd2:	0210                	addi	a2,sp,256
   11bd4:	85ca                	mv	a1,s2
   11bd6:	854e                	mv	a0,s3
   11bd8:	153040ef          	jal	ra,1652a <__sprint_r>
   11bdc:	32051263          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11be0:	18010c93          	addi	s9,sp,384
   11be4:	b9c1                	j	118b4 <_vfprintf_r+0xf16>
   11be6:	0741                	addi	a4,a4,16
   11be8:	010cb423          	sd	a6,8(s9)
   11bec:	ea3a                	sd	a4,272(sp)
   11bee:	10c12423          	sw	a2,264(sp)
   11bf2:	00b8de63          	ble	a1,a7,11c0e <_vfprintf_r+0x1270>
   11bf6:	0210                	addi	a2,sp,256
   11bf8:	85ca                	mv	a1,s2
   11bfa:	854e                	mv	a0,s3
   11bfc:	f8c6                	sd	a7,112(sp)
   11bfe:	f4c2                	sd	a6,104(sp)
   11c00:	12b040ef          	jal	ra,1652a <__sprint_r>
   11c04:	2e051e63          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11c08:	78c6                	ld	a7,112(sp)
   11c0a:	7826                	ld	a6,104(sp)
   11c0c:	8556                	mv	a0,s5
   11c0e:	3b41                	addiw	s6,s6,-16
   11c10:	8caa                	mv	s9,a0
   11c12:	bdb5                	j	11a8e <_vfprintf_r+0x10f0>
   11c14:	c7d5                	beqz	a5,11cc0 <_vfprintf_r+0x1322>
   11c16:	47a2                	lw	a5,8(sp)
   11c18:	37fd                	addiw	a5,a5,-1
   11c1a:	e43e                	sd	a5,8(sp)
   11c1c:	67c6                	ld	a5,80(sp)
   11c1e:	6706                	ld	a4,64(sp)
   11c20:	0cc1                	addi	s9,s9,16
   11c22:	fefcb823          	sd	a5,-16(s9)
   11c26:	6786                	ld	a5,64(sp)
   11c28:	fefcbc23          	sd	a5,-8(s9)
   11c2c:	67d2                	ld	a5,272(sp)
   11c2e:	97ba                	add	a5,a5,a4
   11c30:	ea3e                	sd	a5,272(sp)
   11c32:	10812783          	lw	a5,264(sp)
   11c36:	0017871b          	addiw	a4,a5,1
   11c3a:	10e12423          	sw	a4,264(sp)
   11c3e:	00edda63          	ble	a4,s11,11c52 <_vfprintf_r+0x12b4>
   11c42:	0210                	addi	a2,sp,256
   11c44:	85ca                	mv	a1,s2
   11c46:	854e                	mv	a0,s3
   11c48:	0e3040ef          	jal	ra,1652a <__sprint_r>
   11c4c:	2a051a63          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11c50:	8cd6                	mv	s9,s5
   11c52:	6702                	ld	a4,0(sp)
   11c54:	57a6                	lw	a5,104(sp)
   11c56:	00074703          	lbu	a4,0(a4)
   11c5a:	416787bb          	subw	a5,a5,s6
   11c5e:	00e7d463          	ble	a4,a5,11c66 <_vfprintf_r+0x12c8>
   11c62:	0007871b          	sext.w	a4,a5
   11c66:	02e05d63          	blez	a4,11ca0 <_vfprintf_r+0x1302>
   11c6a:	67d2                	ld	a5,272(sp)
   11c6c:	016cb023          	sd	s6,0(s9)
   11c70:	00ecb423          	sd	a4,8(s9)
   11c74:	97ba                	add	a5,a5,a4
   11c76:	ea3e                	sd	a5,272(sp)
   11c78:	10812783          	lw	a5,264(sp)
   11c7c:	0cc1                	addi	s9,s9,16
   11c7e:	0017869b          	addiw	a3,a5,1
   11c82:	10d12423          	sw	a3,264(sp)
   11c86:	00dddd63          	ble	a3,s11,11ca0 <_vfprintf_r+0x1302>
   11c8a:	0210                	addi	a2,sp,256
   11c8c:	85ca                	mv	a1,s2
   11c8e:	854e                	mv	a0,s3
   11c90:	f8ba                	sd	a4,112(sp)
   11c92:	099040ef          	jal	ra,1652a <__sprint_r>
   11c96:	26051563          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11c9a:	7746                	ld	a4,112(sp)
   11c9c:	18010c93          	addi	s9,sp,384
   11ca0:	86ba                	mv	a3,a4
   11ca2:	00075363          	bgez	a4,11ca8 <_vfprintf_r+0x130a>
   11ca6:	4681                	li	a3,0
   11ca8:	6782                	ld	a5,0(sp)
   11caa:	4841                	li	a6,16
   11cac:	0007c783          	lbu	a5,0(a5)
   11cb0:	9f95                	subw	a5,a5,a3
   11cb2:	04f04463          	bgtz	a5,11cfa <_vfprintf_r+0x135c>
   11cb6:	6782                	ld	a5,0(sp)
   11cb8:	0007c783          	lbu	a5,0(a5)
   11cbc:	9b3e                	add	s6,s6,a5
   11cbe:	b51d                	j	11ae4 <_vfprintf_r+0x1146>
   11cc0:	6782                	ld	a5,0(sp)
   11cc2:	3c7d                	addiw	s8,s8,-1
   11cc4:	17fd                	addi	a5,a5,-1
   11cc6:	e03e                	sd	a5,0(sp)
   11cc8:	bf91                	j	11c1c <_vfprintf_r+0x127e>
   11cca:	0741                	addi	a4,a4,16
   11ccc:	01acb023          	sd	s10,0(s9)
   11cd0:	010cb423          	sd	a6,8(s9)
   11cd4:	ea3a                	sd	a4,272(sp)
   11cd6:	10d12423          	sw	a3,264(sp)
   11cda:	00cdde63          	ble	a2,s11,11cf6 <_vfprintf_r+0x1358>
   11cde:	0210                	addi	a2,sp,256
   11ce0:	85ca                	mv	a1,s2
   11ce2:	854e                	mv	a0,s3
   11ce4:	fcc2                	sd	a6,120(sp)
   11ce6:	f8be                	sd	a5,112(sp)
   11ce8:	043040ef          	jal	ra,1652a <__sprint_r>
   11cec:	20051a63          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11cf0:	7866                	ld	a6,120(sp)
   11cf2:	77c6                	ld	a5,112(sp)
   11cf4:	030c                	addi	a1,sp,384
   11cf6:	37c1                	addiw	a5,a5,-16
   11cf8:	8cae                	mv	s9,a1
   11cfa:	10812683          	lw	a3,264(sp)
   11cfe:	6752                	ld	a4,272(sp)
   11d00:	010c8593          	addi	a1,s9,16
   11d04:	0016861b          	addiw	a2,a3,1
   11d08:	86b2                	mv	a3,a2
   11d0a:	fcf840e3          	blt	a6,a5,11cca <_vfprintf_r+0x132c>
   11d0e:	00fcb423          	sd	a5,8(s9)
   11d12:	97ba                	add	a5,a5,a4
   11d14:	01acb023          	sd	s10,0(s9)
   11d18:	ea3e                	sd	a5,272(sp)
   11d1a:	10c12423          	sw	a2,264(sp)
   11d1e:	8cae                	mv	s9,a1
   11d20:	f8cddbe3          	ble	a2,s11,11cb6 <_vfprintf_r+0x1318>
   11d24:	0210                	addi	a2,sp,256
   11d26:	85ca                	mv	a1,s2
   11d28:	854e                	mv	a0,s3
   11d2a:	001040ef          	jal	ra,1652a <__sprint_r>
   11d2e:	1c051963          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11d32:	18010c93          	addi	s9,sp,384
   11d36:	b741                	j	11cb6 <_vfprintf_r+0x1318>
   11d38:	07c1                	addi	a5,a5,16
   11d3a:	018cb423          	sd	s8,8(s9)
   11d3e:	ea3e                	sd	a5,272(sp)
   11d40:	10e12423          	sw	a4,264(sp)
   11d44:	00dd5a63          	ble	a3,s10,11d58 <_vfprintf_r+0x13ba>
   11d48:	0210                	addi	a2,sp,256
   11d4a:	85ca                	mv	a1,s2
   11d4c:	854e                	mv	a0,s3
   11d4e:	7dc040ef          	jal	ra,1652a <__sprint_r>
   11d52:	1a051763          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11d56:	0310                	addi	a2,sp,384
   11d58:	34c1                	addiw	s1,s1,-16
   11d5a:	8cb2                	mv	s9,a2
   11d5c:	b5a9                	j	11ba6 <_vfprintf_r+0x1208>
   11d5e:	10812783          	lw	a5,264(sp)
   11d62:	4605                	li	a2,1
   11d64:	009cb023          	sd	s1,0(s9)
   11d68:	0017869b          	addiw	a3,a5,1
   11d6c:	0705                	addi	a4,a4,1
   11d6e:	87b6                	mv	a5,a3
   11d70:	010c8c13          	addi	s8,s9,16
   11d74:	01464663          	blt	a2,s4,11d80 <_vfprintf_r+0x13e2>
   11d78:	00147593          	andi	a1,s0,1
   11d7c:	12058663          	beqz	a1,11ea8 <_vfprintf_r+0x150a>
   11d80:	4605                	li	a2,1
   11d82:	10f12423          	sw	a5,264(sp)
   11d86:	00ccb423          	sd	a2,8(s9)
   11d8a:	ea3a                	sd	a4,272(sp)
   11d8c:	479d                	li	a5,7
   11d8e:	00d7da63          	ble	a3,a5,11da2 <_vfprintf_r+0x1404>
   11d92:	0210                	addi	a2,sp,256
   11d94:	85ca                	mv	a1,s2
   11d96:	854e                	mv	a0,s3
   11d98:	792040ef          	jal	ra,1652a <__sprint_r>
   11d9c:	16051263          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11da0:	8c56                	mv	s8,s5
   11da2:	67a6                	ld	a5,72(sp)
   11da4:	6762                	ld	a4,24(sp)
   11da6:	0c41                	addi	s8,s8,16
   11da8:	fefc3823          	sd	a5,-16(s8)
   11dac:	67e2                	ld	a5,24(sp)
   11dae:	fefc3c23          	sd	a5,-8(s8)
   11db2:	67d2                	ld	a5,272(sp)
   11db4:	97ba                	add	a5,a5,a4
   11db6:	ea3e                	sd	a5,272(sp)
   11db8:	10812783          	lw	a5,264(sp)
   11dbc:	0017871b          	addiw	a4,a5,1
   11dc0:	10e12423          	sw	a4,264(sp)
   11dc4:	479d                	li	a5,7
   11dc6:	00e7da63          	ble	a4,a5,11dda <_vfprintf_r+0x143c>
   11dca:	0210                	addi	a2,sp,256
   11dcc:	85ca                	mv	a1,s2
   11dce:	854e                	mv	a0,s3
   11dd0:	75a040ef          	jal	ra,1652a <__sprint_r>
   11dd4:	12051663          	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11dd8:	8c56                	mv	s8,s5
   11dda:	754e                	ld	a0,240(sp)
   11ddc:	75ee                	ld	a1,248(sp)
   11dde:	4601                	li	a2,0
   11de0:	4681                	li	a3,0
   11de2:	fffa0b1b          	addiw	s6,s4,-1
   11de6:	0b9060ef          	jal	ra,1869e <__eqtf2>
   11dea:	c12d                	beqz	a0,11e4c <_vfprintf_r+0x14ae>
   11dec:	10812703          	lw	a4,264(sp)
   11df0:	67d2                	ld	a5,272(sp)
   11df2:	0485                	addi	s1,s1,1
   11df4:	0017069b          	addiw	a3,a4,1
   11df8:	97da                	add	a5,a5,s6
   11dfa:	009c3023          	sd	s1,0(s8)
   11dfe:	016c3423          	sd	s6,8(s8)
   11e02:	ea3e                	sd	a5,272(sp)
   11e04:	10d12423          	sw	a3,264(sp)
   11e08:	479d                	li	a5,7
   11e0a:	0c41                	addi	s8,s8,16
   11e0c:	00d7d963          	ble	a3,a5,11e1e <_vfprintf_r+0x1480>
   11e10:	0210                	addi	a2,sp,256
   11e12:	85ca                	mv	a1,s2
   11e14:	854e                	mv	a0,s3
   11e16:	714040ef          	jal	ra,1652a <__sprint_r>
   11e1a:	e17d                	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11e1c:	8c56                	mv	s8,s5
   11e1e:	119c                	addi	a5,sp,224
   11e20:	00fc3023          	sd	a5,0(s8)
   11e24:	67e6                	ld	a5,88(sp)
   11e26:	6766                	ld	a4,88(sp)
   11e28:	010c0c93          	addi	s9,s8,16
   11e2c:	00fc3423          	sd	a5,8(s8)
   11e30:	67d2                	ld	a5,272(sp)
   11e32:	97ba                	add	a5,a5,a4
   11e34:	ea3e                	sd	a5,272(sp)
   11e36:	10812783          	lw	a5,264(sp)
   11e3a:	0017871b          	addiw	a4,a5,1
   11e3e:	10e12423          	sw	a4,264(sp)
   11e42:	479d                	li	a5,7
   11e44:	a6e7d8e3          	ble	a4,a5,118b4 <_vfprintf_r+0xf16>
   11e48:	8a8ff06f          	j	10ef0 <_vfprintf_r+0x552>
   11e4c:	fd6059e3          	blez	s6,11e1e <_vfprintf_r+0x1480>
   11e50:	64e9                	lui	s1,0x1a
   11e52:	4d41                	li	s10,16
   11e54:	d6048493          	addi	s1,s1,-672 # 19d60 <zeroes.4441>
   11e58:	4c9d                	li	s9,7
   11e5a:	10812703          	lw	a4,264(sp)
   11e5e:	009c3023          	sd	s1,0(s8)
   11e62:	67d2                	ld	a5,272(sp)
   11e64:	0017069b          	addiw	a3,a4,1
   11e68:	8736                	mv	a4,a3
   11e6a:	010c0613          	addi	a2,s8,16
   11e6e:	016d4b63          	blt	s10,s6,11e84 <_vfprintf_r+0x14e6>
   11e72:	97da                	add	a5,a5,s6
   11e74:	016c3423          	sd	s6,8(s8)
   11e78:	ea3e                	sd	a5,272(sp)
   11e7a:	10d12423          	sw	a3,264(sp)
   11e7e:	479d                	li	a5,7
   11e80:	8c32                	mv	s8,a2
   11e82:	b769                	j	11e0c <_vfprintf_r+0x146e>
   11e84:	07c1                	addi	a5,a5,16
   11e86:	01ac3423          	sd	s10,8(s8)
   11e8a:	ea3e                	sd	a5,272(sp)
   11e8c:	10e12423          	sw	a4,264(sp)
   11e90:	00dcd963          	ble	a3,s9,11ea2 <_vfprintf_r+0x1504>
   11e94:	0210                	addi	a2,sp,256
   11e96:	85ca                	mv	a1,s2
   11e98:	854e                	mv	a0,s3
   11e9a:	690040ef          	jal	ra,1652a <__sprint_r>
   11e9e:	e12d                	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11ea0:	8656                	mv	a2,s5
   11ea2:	3b41                	addiw	s6,s6,-16
   11ea4:	8c32                	mv	s8,a2
   11ea6:	bf55                	j	11e5a <_vfprintf_r+0x14bc>
   11ea8:	00ccb423          	sd	a2,8(s9)
   11eac:	ea3a                	sd	a4,272(sp)
   11eae:	10d12423          	sw	a3,264(sp)
   11eb2:	479d                	li	a5,7
   11eb4:	bfa1                	j	11e0c <_vfprintf_r+0x146e>
   11eb6:	5782                	lw	a5,32(sp)
   11eb8:	5762                	lw	a4,56(sp)
   11eba:	40e7843b          	subw	s0,a5,a4
   11ebe:	9e805ee3          	blez	s0,118ba <_vfprintf_r+0xf1c>
   11ec2:	64e9                	lui	s1,0x1a
   11ec4:	4b41                	li	s6,16
   11ec6:	d5048493          	addi	s1,s1,-688 # 19d50 <blanks.4440>
   11eca:	4c1d                	li	s8,7
   11ecc:	10812703          	lw	a4,264(sp)
   11ed0:	009cb023          	sd	s1,0(s9)
   11ed4:	67d2                	ld	a5,272(sp)
   11ed6:	0017069b          	addiw	a3,a4,1
   11eda:	8736                	mv	a4,a3
   11edc:	028b4a63          	blt	s6,s0,11f10 <_vfprintf_r+0x1572>
   11ee0:	008cb423          	sd	s0,8(s9)
   11ee4:	943e                	add	s0,s0,a5
   11ee6:	ea22                	sd	s0,272(sp)
   11ee8:	10d12423          	sw	a3,264(sp)
   11eec:	479d                	li	a5,7
   11eee:	9cd7d6e3          	ble	a3,a5,118ba <_vfprintf_r+0xf1c>
   11ef2:	0210                	addi	a2,sp,256
   11ef4:	85ca                	mv	a1,s2
   11ef6:	854e                	mv	a0,s3
   11ef8:	632040ef          	jal	ra,1652a <__sprint_r>
   11efc:	9a050fe3          	beqz	a0,118ba <_vfprintf_r+0xf1c>
   11f00:	960b8663          	beqz	s7,1106c <_vfprintf_r+0x6ce>
   11f04:	85de                	mv	a1,s7
   11f06:	854e                	mv	a0,s3
   11f08:	71c000ef          	jal	ra,12624 <_free_r>
   11f0c:	960ff06f          	j	1106c <_vfprintf_r+0x6ce>
   11f10:	07c1                	addi	a5,a5,16
   11f12:	016cb423          	sd	s6,8(s9)
   11f16:	ea3e                	sd	a5,272(sp)
   11f18:	10e12423          	sw	a4,264(sp)
   11f1c:	0cc1                	addi	s9,s9,16
   11f1e:	00dc5963          	ble	a3,s8,11f30 <_vfprintf_r+0x1592>
   11f22:	0210                	addi	a2,sp,256
   11f24:	85ca                	mv	a1,s2
   11f26:	854e                	mv	a0,s3
   11f28:	602040ef          	jal	ra,1652a <__sprint_r>
   11f2c:	f971                	bnez	a0,11f00 <_vfprintf_r+0x1562>
   11f2e:	8cd6                	mv	s9,s5
   11f30:	3441                	addiw	s0,s0,-16
   11f32:	bf69                	j	11ecc <_vfprintf_r+0x152e>
   11f34:	85de                	mv	a1,s7
   11f36:	854e                	mv	a0,s3
   11f38:	6ec000ef          	jal	ra,12624 <_free_r>
   11f3c:	b26d                	j	118e6 <_vfprintf_r+0xf48>
   11f3e:	67d2                	ld	a5,272(sp)
   11f40:	92078663          	beqz	a5,1106c <_vfprintf_r+0x6ce>
   11f44:	0210                	addi	a2,sp,256
   11f46:	85ca                	mv	a1,s2
   11f48:	854e                	mv	a0,s3
   11f4a:	5e0040ef          	jal	ra,1652a <__sprint_r>
   11f4e:	91eff06f          	j	1106c <_vfprintf_r+0x6ce>

0000000000011f52 <vfprintf>:
   11f52:	86b2                	mv	a3,a2
   11f54:	862e                	mv	a2,a1
   11f56:	85aa                	mv	a1,a0
   11f58:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   11f5c:	a43fe06f          	j	1099e <_vfprintf_r>

0000000000011f60 <__sbprintf>:
   11f60:	0105d783          	lhu	a5,16(a1)
   11f64:	b3010113          	addi	sp,sp,-1232
   11f68:	4c813023          	sd	s0,1216(sp)
   11f6c:	9bf5                	andi	a5,a5,-3
   11f6e:	00f11823          	sh	a5,16(sp)
   11f72:	0ac5a783          	lw	a5,172(a1)
   11f76:	842e                	mv	s0,a1
   11f78:	4a913c23          	sd	s1,1208(sp)
   11f7c:	d73e                	sw	a5,172(sp)
   11f7e:	0125d783          	lhu	a5,18(a1)
   11f82:	4b213823          	sd	s2,1200(sp)
   11f86:	4c113423          	sd	ra,1224(sp)
   11f8a:	00f11923          	sh	a5,18(sp)
   11f8e:	799c                	ld	a5,48(a1)
   11f90:	892a                	mv	s2,a0
   11f92:	d402                	sw	zero,40(sp)
   11f94:	f83e                	sd	a5,48(sp)
   11f96:	61bc                	ld	a5,64(a1)
   11f98:	858a                	mv	a1,sp
   11f9a:	e0be                	sd	a5,64(sp)
   11f9c:	191c                	addi	a5,sp,176
   11f9e:	e03e                	sd	a5,0(sp)
   11fa0:	ec3e                	sd	a5,24(sp)
   11fa2:	40000793          	li	a5,1024
   11fa6:	c63e                	sw	a5,12(sp)
   11fa8:	d03e                	sw	a5,32(sp)
   11faa:	9f5fe0ef          	jal	ra,1099e <_vfprintf_r>
   11fae:	84aa                	mv	s1,a0
   11fb0:	00054863          	bltz	a0,11fc0 <__sbprintf+0x60>
   11fb4:	858a                	mv	a1,sp
   11fb6:	854a                	mv	a0,s2
   11fb8:	384000ef          	jal	ra,1233c <_fflush_r>
   11fbc:	c111                	beqz	a0,11fc0 <__sbprintf+0x60>
   11fbe:	54fd                	li	s1,-1
   11fc0:	01015783          	lhu	a5,16(sp)
   11fc4:	0407f793          	andi	a5,a5,64
   11fc8:	c799                	beqz	a5,11fd6 <__sbprintf+0x76>
   11fca:	01045783          	lhu	a5,16(s0)
   11fce:	0407e793          	ori	a5,a5,64
   11fd2:	00f41823          	sh	a5,16(s0)
   11fd6:	4c813083          	ld	ra,1224(sp)
   11fda:	4c013403          	ld	s0,1216(sp)
   11fde:	8526                	mv	a0,s1
   11fe0:	4b013903          	ld	s2,1200(sp)
   11fe4:	4b813483          	ld	s1,1208(sp)
   11fe8:	4d010113          	addi	sp,sp,1232
   11fec:	8082                	ret

0000000000011fee <__swsetup_r>:
   11fee:	1101                	addi	sp,sp,-32
   11ff0:	e426                	sd	s1,8(sp)
   11ff2:	84aa                	mv	s1,a0
   11ff4:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   11ff8:	e822                	sd	s0,16(sp)
   11ffa:	ec06                	sd	ra,24(sp)
   11ffc:	842e                	mv	s0,a1
   11ffe:	c509                	beqz	a0,12008 <__swsetup_r+0x1a>
   12000:	493c                	lw	a5,80(a0)
   12002:	e399                	bnez	a5,12008 <__swsetup_r+0x1a>
   12004:	450000ef          	jal	ra,12454 <__sinit>
   12008:	01041703          	lh	a4,16(s0)
   1200c:	03071793          	slli	a5,a4,0x30
   12010:	93c1                	srli	a5,a5,0x30
   12012:	0087f693          	andi	a3,a5,8
   12016:	eea9                	bnez	a3,12070 <__swsetup_r+0x82>
   12018:	0107f693          	andi	a3,a5,16
   1201c:	ee89                	bnez	a3,12036 <__swsetup_r+0x48>
   1201e:	47a5                	li	a5,9
   12020:	c09c                	sw	a5,0(s1)
   12022:	04076713          	ori	a4,a4,64
   12026:	00e41823          	sh	a4,16(s0)
   1202a:	557d                	li	a0,-1
   1202c:	60e2                	ld	ra,24(sp)
   1202e:	6442                	ld	s0,16(sp)
   12030:	64a2                	ld	s1,8(sp)
   12032:	6105                	addi	sp,sp,32
   12034:	8082                	ret
   12036:	8b91                	andi	a5,a5,4
   12038:	c795                	beqz	a5,12064 <__swsetup_r+0x76>
   1203a:	6c2c                	ld	a1,88(s0)
   1203c:	c991                	beqz	a1,12050 <__swsetup_r+0x62>
   1203e:	07440793          	addi	a5,s0,116
   12042:	00f58563          	beq	a1,a5,1204c <__swsetup_r+0x5e>
   12046:	8526                	mv	a0,s1
   12048:	5dc000ef          	jal	ra,12624 <_free_r>
   1204c:	04043c23          	sd	zero,88(s0)
   12050:	01045783          	lhu	a5,16(s0)
   12054:	00042423          	sw	zero,8(s0)
   12058:	fdb7f793          	andi	a5,a5,-37
   1205c:	00f41823          	sh	a5,16(s0)
   12060:	6c1c                	ld	a5,24(s0)
   12062:	e01c                	sd	a5,0(s0)
   12064:	01045783          	lhu	a5,16(s0)
   12068:	0087e793          	ori	a5,a5,8
   1206c:	00f41823          	sh	a5,16(s0)
   12070:	6c1c                	ld	a5,24(s0)
   12072:	ef89                	bnez	a5,1208c <__swsetup_r+0x9e>
   12074:	01045783          	lhu	a5,16(s0)
   12078:	20000713          	li	a4,512
   1207c:	2807f793          	andi	a5,a5,640
   12080:	00e78663          	beq	a5,a4,1208c <__swsetup_r+0x9e>
   12084:	85a2                	mv	a1,s0
   12086:	8526                	mv	a0,s1
   12088:	03e020ef          	jal	ra,140c6 <__smakebuf_r>
   1208c:	01045783          	lhu	a5,16(s0)
   12090:	0017f713          	andi	a4,a5,1
   12094:	c705                	beqz	a4,120bc <__swsetup_r+0xce>
   12096:	501c                	lw	a5,32(s0)
   12098:	00042623          	sw	zero,12(s0)
   1209c:	40f007bb          	negw	a5,a5
   120a0:	d41c                	sw	a5,40(s0)
   120a2:	6c1c                	ld	a5,24(s0)
   120a4:	4501                	li	a0,0
   120a6:	f3d9                	bnez	a5,1202c <__swsetup_r+0x3e>
   120a8:	01041783          	lh	a5,16(s0)
   120ac:	0807f713          	andi	a4,a5,128
   120b0:	df35                	beqz	a4,1202c <__swsetup_r+0x3e>
   120b2:	0407e793          	ori	a5,a5,64
   120b6:	00f41823          	sh	a5,16(s0)
   120ba:	bf85                	j	1202a <__swsetup_r+0x3c>
   120bc:	8b89                	andi	a5,a5,2
   120be:	4701                	li	a4,0
   120c0:	e391                	bnez	a5,120c4 <__swsetup_r+0xd6>
   120c2:	5018                	lw	a4,32(s0)
   120c4:	c458                	sw	a4,12(s0)
   120c6:	bff1                	j	120a2 <__swsetup_r+0xb4>

00000000000120c8 <__register_exitproc>:
   120c8:	8281b703          	ld	a4,-2008(gp) # 1ca10 <_global_impure_ptr>
   120cc:	832a                	mv	t1,a0
   120ce:	1f873783          	ld	a5,504(a4)
   120d2:	e789                	bnez	a5,120dc <__register_exitproc+0x14>
   120d4:	20070793          	addi	a5,a4,512
   120d8:	1ef73c23          	sd	a5,504(a4)
   120dc:	4798                	lw	a4,8(a5)
   120de:	487d                	li	a6,31
   120e0:	557d                	li	a0,-1
   120e2:	04e84463          	blt	a6,a4,1212a <__register_exitproc+0x62>
   120e6:	02030a63          	beqz	t1,1211a <__register_exitproc+0x52>
   120ea:	00371813          	slli	a6,a4,0x3
   120ee:	983e                	add	a6,a6,a5
   120f0:	10c83823          	sd	a2,272(a6)
   120f4:	3107a883          	lw	a7,784(a5)
   120f8:	4605                	li	a2,1
   120fa:	00e6163b          	sllw	a2,a2,a4
   120fe:	00c8e8b3          	or	a7,a7,a2
   12102:	3117a823          	sw	a7,784(a5)
   12106:	20d83823          	sd	a3,528(a6)
   1210a:	4689                	li	a3,2
   1210c:	00d31763          	bne	t1,a3,1211a <__register_exitproc+0x52>
   12110:	3147a683          	lw	a3,788(a5)
   12114:	8e55                	or	a2,a2,a3
   12116:	30c7aa23          	sw	a2,788(a5)
   1211a:	0017069b          	addiw	a3,a4,1
   1211e:	0709                	addi	a4,a4,2
   12120:	070e                	slli	a4,a4,0x3
   12122:	c794                	sw	a3,8(a5)
   12124:	97ba                	add	a5,a5,a4
   12126:	e38c                	sd	a1,0(a5)
   12128:	4501                	li	a0,0
   1212a:	8082                	ret

000000000001212c <__call_exitprocs>:
   1212c:	715d                	addi	sp,sp,-80
   1212e:	f44e                	sd	s3,40(sp)
   12130:	8281b983          	ld	s3,-2008(gp) # 1ca10 <_global_impure_ptr>
   12134:	f052                	sd	s4,32(sp)
   12136:	ec56                	sd	s5,24(sp)
   12138:	e85a                	sd	s6,16(sp)
   1213a:	e486                	sd	ra,72(sp)
   1213c:	e0a2                	sd	s0,64(sp)
   1213e:	fc26                	sd	s1,56(sp)
   12140:	f84a                	sd	s2,48(sp)
   12142:	e45e                	sd	s7,8(sp)
   12144:	8aaa                	mv	s5,a0
   12146:	8a2e                	mv	s4,a1
   12148:	4b05                	li	s6,1
   1214a:	1f89b403          	ld	s0,504(s3)
   1214e:	c801                	beqz	s0,1215e <__call_exitprocs+0x32>
   12150:	4404                	lw	s1,8(s0)
   12152:	34fd                	addiw	s1,s1,-1
   12154:	00349913          	slli	s2,s1,0x3
   12158:	9922                	add	s2,s2,s0
   1215a:	0004dd63          	bgez	s1,12174 <__call_exitprocs+0x48>
   1215e:	60a6                	ld	ra,72(sp)
   12160:	6406                	ld	s0,64(sp)
   12162:	74e2                	ld	s1,56(sp)
   12164:	7942                	ld	s2,48(sp)
   12166:	79a2                	ld	s3,40(sp)
   12168:	7a02                	ld	s4,32(sp)
   1216a:	6ae2                	ld	s5,24(sp)
   1216c:	6b42                	ld	s6,16(sp)
   1216e:	6ba2                	ld	s7,8(sp)
   12170:	6161                	addi	sp,sp,80
   12172:	8082                	ret
   12174:	000a0963          	beqz	s4,12186 <__call_exitprocs+0x5a>
   12178:	21093783          	ld	a5,528(s2)
   1217c:	01478563          	beq	a5,s4,12186 <__call_exitprocs+0x5a>
   12180:	34fd                	addiw	s1,s1,-1
   12182:	1961                	addi	s2,s2,-8
   12184:	bfd9                	j	1215a <__call_exitprocs+0x2e>
   12186:	441c                	lw	a5,8(s0)
   12188:	01093683          	ld	a3,16(s2)
   1218c:	37fd                	addiw	a5,a5,-1
   1218e:	02979663          	bne	a5,s1,121ba <__call_exitprocs+0x8e>
   12192:	c404                	sw	s1,8(s0)
   12194:	d6f5                	beqz	a3,12180 <__call_exitprocs+0x54>
   12196:	31042703          	lw	a4,784(s0)
   1219a:	009b163b          	sllw	a2,s6,s1
   1219e:	00842b83          	lw	s7,8(s0)
   121a2:	8f71                	and	a4,a4,a2
   121a4:	2701                	sext.w	a4,a4
   121a6:	ef09                	bnez	a4,121c0 <__call_exitprocs+0x94>
   121a8:	9682                	jalr	a3
   121aa:	4418                	lw	a4,8(s0)
   121ac:	1f89b783          	ld	a5,504(s3)
   121b0:	f9771de3          	bne	a4,s7,1214a <__call_exitprocs+0x1e>
   121b4:	fcf406e3          	beq	s0,a5,12180 <__call_exitprocs+0x54>
   121b8:	bf49                	j	1214a <__call_exitprocs+0x1e>
   121ba:	00093823          	sd	zero,16(s2)
   121be:	bfd9                	j	12194 <__call_exitprocs+0x68>
   121c0:	31442783          	lw	a5,788(s0)
   121c4:	11093583          	ld	a1,272(s2)
   121c8:	8ff1                	and	a5,a5,a2
   121ca:	2781                	sext.w	a5,a5
   121cc:	e781                	bnez	a5,121d4 <__call_exitprocs+0xa8>
   121ce:	8556                	mv	a0,s5
   121d0:	9682                	jalr	a3
   121d2:	bfe1                	j	121aa <__call_exitprocs+0x7e>
   121d4:	852e                	mv	a0,a1
   121d6:	9682                	jalr	a3
   121d8:	bfc9                	j	121aa <__call_exitprocs+0x7e>

00000000000121da <__sflush_r>:
   121da:	01059783          	lh	a5,16(a1)
   121de:	7179                	addi	sp,sp,-48
   121e0:	f022                	sd	s0,32(sp)
   121e2:	03079713          	slli	a4,a5,0x30
   121e6:	9341                	srli	a4,a4,0x30
   121e8:	ec26                	sd	s1,24(sp)
   121ea:	f406                	sd	ra,40(sp)
   121ec:	e84a                	sd	s2,16(sp)
   121ee:	e44e                	sd	s3,8(sp)
   121f0:	00877693          	andi	a3,a4,8
   121f4:	84aa                	mv	s1,a0
   121f6:	842e                	mv	s0,a1
   121f8:	10069063          	bnez	a3,122f8 <__sflush_r+0x11e>
   121fc:	6705                	lui	a4,0x1
   121fe:	80070713          	addi	a4,a4,-2048 # 800 <main-0xf8b0>
   12202:	8fd9                	or	a5,a5,a4
   12204:	4598                	lw	a4,8(a1)
   12206:	00f59823          	sh	a5,16(a1)
   1220a:	00e04d63          	bgtz	a4,12224 <__sflush_r+0x4a>
   1220e:	59b8                	lw	a4,112(a1)
   12210:	00e04a63          	bgtz	a4,12224 <__sflush_r+0x4a>
   12214:	4501                	li	a0,0
   12216:	70a2                	ld	ra,40(sp)
   12218:	7402                	ld	s0,32(sp)
   1221a:	64e2                	ld	s1,24(sp)
   1221c:	6942                	ld	s2,16(sp)
   1221e:	69a2                	ld	s3,8(sp)
   12220:	6145                	addi	sp,sp,48
   12222:	8082                	ret
   12224:	6438                	ld	a4,72(s0)
   12226:	d77d                	beqz	a4,12214 <__sflush_r+0x3a>
   12228:	0004a903          	lw	s2,0(s1)
   1222c:	03379693          	slli	a3,a5,0x33
   12230:	0004a023          	sw	zero,0(s1)
   12234:	780c                	ld	a1,48(s0)
   12236:	0806d863          	bgez	a3,122c6 <__sflush_r+0xec>
   1223a:	6850                	ld	a2,144(s0)
   1223c:	01045783          	lhu	a5,16(s0)
   12240:	8b91                	andi	a5,a5,4
   12242:	c799                	beqz	a5,12250 <__sflush_r+0x76>
   12244:	441c                	lw	a5,8(s0)
   12246:	8e1d                	sub	a2,a2,a5
   12248:	6c3c                	ld	a5,88(s0)
   1224a:	c399                	beqz	a5,12250 <__sflush_r+0x76>
   1224c:	583c                	lw	a5,112(s0)
   1224e:	8e1d                	sub	a2,a2,a5
   12250:	643c                	ld	a5,72(s0)
   12252:	780c                	ld	a1,48(s0)
   12254:	4681                	li	a3,0
   12256:	8526                	mv	a0,s1
   12258:	9782                	jalr	a5
   1225a:	57fd                	li	a5,-1
   1225c:	01045683          	lhu	a3,16(s0)
   12260:	00f51d63          	bne	a0,a5,1227a <__sflush_r+0xa0>
   12264:	409c                	lw	a5,0(s1)
   12266:	4775                	li	a4,29
   12268:	08f76263          	bltu	a4,a5,122ec <__sflush_r+0x112>
   1226c:	20400737          	lui	a4,0x20400
   12270:	0705                	addi	a4,a4,1
   12272:	00f75733          	srl	a4,a4,a5
   12276:	8b05                	andi	a4,a4,1
   12278:	cb35                	beqz	a4,122ec <__sflush_r+0x112>
   1227a:	77fd                	lui	a5,0xfffff
   1227c:	7ff78793          	addi	a5,a5,2047 # fffffffffffff7ff <__global_pointer$+0xfffffffffffe2617>
   12280:	6c18                	ld	a4,24(s0)
   12282:	8ff5                	and	a5,a5,a3
   12284:	0107979b          	slliw	a5,a5,0x10
   12288:	4107d79b          	sraiw	a5,a5,0x10
   1228c:	e018                	sd	a4,0(s0)
   1228e:	00f41823          	sh	a5,16(s0)
   12292:	00042423          	sw	zero,8(s0)
   12296:	03379713          	slli	a4,a5,0x33
   1229a:	00075863          	bgez	a4,122aa <__sflush_r+0xd0>
   1229e:	57fd                	li	a5,-1
   122a0:	00f51463          	bne	a0,a5,122a8 <__sflush_r+0xce>
   122a4:	409c                	lw	a5,0(s1)
   122a6:	e391                	bnez	a5,122aa <__sflush_r+0xd0>
   122a8:	e848                	sd	a0,144(s0)
   122aa:	6c2c                	ld	a1,88(s0)
   122ac:	0124a023          	sw	s2,0(s1)
   122b0:	d1b5                	beqz	a1,12214 <__sflush_r+0x3a>
   122b2:	07440793          	addi	a5,s0,116
   122b6:	00f58563          	beq	a1,a5,122c0 <__sflush_r+0xe6>
   122ba:	8526                	mv	a0,s1
   122bc:	368000ef          	jal	ra,12624 <_free_r>
   122c0:	04043c23          	sd	zero,88(s0)
   122c4:	bf81                	j	12214 <__sflush_r+0x3a>
   122c6:	4601                	li	a2,0
   122c8:	4685                	li	a3,1
   122ca:	8526                	mv	a0,s1
   122cc:	9702                	jalr	a4
   122ce:	57fd                	li	a5,-1
   122d0:	862a                	mv	a2,a0
   122d2:	f6f515e3          	bne	a0,a5,1223c <__sflush_r+0x62>
   122d6:	409c                	lw	a5,0(s1)
   122d8:	d3b5                	beqz	a5,1223c <__sflush_r+0x62>
   122da:	4775                	li	a4,29
   122dc:	00e78563          	beq	a5,a4,122e6 <__sflush_r+0x10c>
   122e0:	4759                	li	a4,22
   122e2:	04e79463          	bne	a5,a4,1232a <__sflush_r+0x150>
   122e6:	0124a023          	sw	s2,0(s1)
   122ea:	b72d                	j	12214 <__sflush_r+0x3a>
   122ec:	0406e793          	ori	a5,a3,64
   122f0:	00f41823          	sh	a5,16(s0)
   122f4:	557d                	li	a0,-1
   122f6:	b705                	j	12216 <__sflush_r+0x3c>
   122f8:	0185b983          	ld	s3,24(a1)
   122fc:	f0098ce3          	beqz	s3,12214 <__sflush_r+0x3a>
   12300:	0005b903          	ld	s2,0(a1)
   12304:	8b0d                	andi	a4,a4,3
   12306:	0135b023          	sd	s3,0(a1)
   1230a:	4139093b          	subw	s2,s2,s3
   1230e:	4781                	li	a5,0
   12310:	e311                	bnez	a4,12314 <__sflush_r+0x13a>
   12312:	519c                	lw	a5,32(a1)
   12314:	c45c                	sw	a5,12(s0)
   12316:	ef205fe3          	blez	s2,12214 <__sflush_r+0x3a>
   1231a:	603c                	ld	a5,64(s0)
   1231c:	780c                	ld	a1,48(s0)
   1231e:	86ca                	mv	a3,s2
   12320:	864e                	mv	a2,s3
   12322:	8526                	mv	a0,s1
   12324:	9782                	jalr	a5
   12326:	00a04763          	bgtz	a0,12334 <__sflush_r+0x15a>
   1232a:	01045783          	lhu	a5,16(s0)
   1232e:	0407e793          	ori	a5,a5,64
   12332:	bf7d                	j	122f0 <__sflush_r+0x116>
   12334:	99aa                	add	s3,s3,a0
   12336:	40a9093b          	subw	s2,s2,a0
   1233a:	bff1                	j	12316 <__sflush_r+0x13c>

000000000001233c <_fflush_r>:
   1233c:	1101                	addi	sp,sp,-32
   1233e:	e822                	sd	s0,16(sp)
   12340:	ec06                	sd	ra,24(sp)
   12342:	842a                	mv	s0,a0
   12344:	c519                	beqz	a0,12352 <_fflush_r+0x16>
   12346:	493c                	lw	a5,80(a0)
   12348:	e789                	bnez	a5,12352 <_fflush_r+0x16>
   1234a:	e42e                	sd	a1,8(sp)
   1234c:	108000ef          	jal	ra,12454 <__sinit>
   12350:	65a2                	ld	a1,8(sp)
   12352:	01059783          	lh	a5,16(a1)
   12356:	c799                	beqz	a5,12364 <_fflush_r+0x28>
   12358:	8522                	mv	a0,s0
   1235a:	6442                	ld	s0,16(sp)
   1235c:	60e2                	ld	ra,24(sp)
   1235e:	6105                	addi	sp,sp,32
   12360:	e7bff06f          	j	121da <__sflush_r>
   12364:	60e2                	ld	ra,24(sp)
   12366:	6442                	ld	s0,16(sp)
   12368:	4501                	li	a0,0
   1236a:	6105                	addi	sp,sp,32
   1236c:	8082                	ret

000000000001236e <fflush>:
   1236e:	85aa                	mv	a1,a0
   12370:	e909                	bnez	a0,12382 <fflush+0x14>
   12372:	8281b503          	ld	a0,-2008(gp) # 1ca10 <_global_impure_ptr>
   12376:	000125b7          	lui	a1,0x12
   1237a:	33c58593          	addi	a1,a1,828 # 1233c <_fflush_r>
   1237e:	4bc0006f          	j	1283a <_fwalk_reent>
   12382:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   12386:	fb7ff06f          	j	1233c <_fflush_r>

000000000001238a <__fp_lock>:
   1238a:	4501                	li	a0,0
   1238c:	8082                	ret

000000000001238e <_cleanup_r>:
   1238e:	000175b7          	lui	a1,0x17
   12392:	fda58593          	addi	a1,a1,-38 # 16fda <_fclose_r>
   12396:	4a40006f          	j	1283a <_fwalk_reent>

000000000001239a <std.isra.0>:
   1239a:	1141                	addi	sp,sp,-16
   1239c:	e022                	sd	s0,0(sp)
   1239e:	e406                	sd	ra,8(sp)
   123a0:	842a                	mv	s0,a0
   123a2:	00b51823          	sh	a1,16(a0)
   123a6:	00c51923          	sh	a2,18(a0)
   123aa:	00053023          	sd	zero,0(a0)
   123ae:	00053423          	sd	zero,8(a0)
   123b2:	0a052623          	sw	zero,172(a0)
   123b6:	00053c23          	sd	zero,24(a0)
   123ba:	02052023          	sw	zero,32(a0)
   123be:	02052423          	sw	zero,40(a0)
   123c2:	4621                	li	a2,8
   123c4:	4581                	li	a1,0
   123c6:	0a450513          	addi	a0,a0,164
   123ca:	caefe0ef          	jal	ra,10878 <memset>
   123ce:	000157b7          	lui	a5,0x15
   123d2:	dac78793          	addi	a5,a5,-596 # 14dac <__sread>
   123d6:	fc1c                	sd	a5,56(s0)
   123d8:	000157b7          	lui	a5,0x15
   123dc:	de278793          	addi	a5,a5,-542 # 14de2 <__swrite>
   123e0:	e03c                	sd	a5,64(s0)
   123e2:	000157b7          	lui	a5,0x15
   123e6:	e3478793          	addi	a5,a5,-460 # 14e34 <__sseek>
   123ea:	e43c                	sd	a5,72(s0)
   123ec:	000157b7          	lui	a5,0x15
   123f0:	e6c78793          	addi	a5,a5,-404 # 14e6c <__sclose>
   123f4:	f800                	sd	s0,48(s0)
   123f6:	e83c                	sd	a5,80(s0)
   123f8:	60a2                	ld	ra,8(sp)
   123fa:	6402                	ld	s0,0(sp)
   123fc:	0141                	addi	sp,sp,16
   123fe:	8082                	ret

0000000000012400 <__fp_unlock>:
   12400:	4501                	li	a0,0
   12402:	8082                	ret

0000000000012404 <__sfmoreglue>:
   12404:	1101                	addi	sp,sp,-32
   12406:	e426                	sd	s1,8(sp)
   12408:	0b000613          	li	a2,176
   1240c:	fff5849b          	addiw	s1,a1,-1
   12410:	02c484b3          	mul	s1,s1,a2
   12414:	e04a                	sd	s2,0(sp)
   12416:	892e                	mv	s2,a1
   12418:	e822                	sd	s0,16(sp)
   1241a:	ec06                	sd	ra,24(sp)
   1241c:	0c848593          	addi	a1,s1,200
   12420:	f79fd0ef          	jal	ra,10398 <_malloc_r>
   12424:	842a                	mv	s0,a0
   12426:	cd01                	beqz	a0,1243e <__sfmoreglue+0x3a>
   12428:	00053023          	sd	zero,0(a0)
   1242c:	01252423          	sw	s2,8(a0)
   12430:	0561                	addi	a0,a0,24
   12432:	e808                	sd	a0,16(s0)
   12434:	0b048613          	addi	a2,s1,176
   12438:	4581                	li	a1,0
   1243a:	c3efe0ef          	jal	ra,10878 <memset>
   1243e:	8522                	mv	a0,s0
   12440:	60e2                	ld	ra,24(sp)
   12442:	6442                	ld	s0,16(sp)
   12444:	64a2                	ld	s1,8(sp)
   12446:	6902                	ld	s2,0(sp)
   12448:	6105                	addi	sp,sp,32
   1244a:	8082                	ret

000000000001244c <_cleanup>:
   1244c:	8281b503          	ld	a0,-2008(gp) # 1ca10 <_global_impure_ptr>
   12450:	f3fff06f          	j	1238e <_cleanup_r>

0000000000012454 <__sinit>:
   12454:	493c                	lw	a5,80(a0)
   12456:	eba1                	bnez	a5,124a6 <__sinit+0x52>
   12458:	1141                	addi	sp,sp,-16
   1245a:	000127b7          	lui	a5,0x12
   1245e:	e406                	sd	ra,8(sp)
   12460:	e022                	sd	s0,0(sp)
   12462:	38e78793          	addi	a5,a5,910 # 1238e <_cleanup_r>
   12466:	ed3c                	sd	a5,88(a0)
   12468:	478d                	li	a5,3
   1246a:	52f52423          	sw	a5,1320(a0)
   1246e:	53850793          	addi	a5,a0,1336
   12472:	842a                	mv	s0,a0
   12474:	52f53823          	sd	a5,1328(a0)
   12478:	52053023          	sd	zero,1312(a0)
   1247c:	6508                	ld	a0,8(a0)
   1247e:	4601                	li	a2,0
   12480:	4591                	li	a1,4
   12482:	f19ff0ef          	jal	ra,1239a <std.isra.0>
   12486:	6808                	ld	a0,16(s0)
   12488:	4605                	li	a2,1
   1248a:	45a5                	li	a1,9
   1248c:	f0fff0ef          	jal	ra,1239a <std.isra.0>
   12490:	6c08                	ld	a0,24(s0)
   12492:	4609                	li	a2,2
   12494:	45c9                	li	a1,18
   12496:	f05ff0ef          	jal	ra,1239a <std.isra.0>
   1249a:	4785                	li	a5,1
   1249c:	c83c                	sw	a5,80(s0)
   1249e:	60a2                	ld	ra,8(sp)
   124a0:	6402                	ld	s0,0(sp)
   124a2:	0141                	addi	sp,sp,16
   124a4:	8082                	ret
   124a6:	8082                	ret

00000000000124a8 <__sfp>:
   124a8:	1101                	addi	sp,sp,-32
   124aa:	e426                	sd	s1,8(sp)
   124ac:	8281b483          	ld	s1,-2008(gp) # 1ca10 <_global_impure_ptr>
   124b0:	e04a                	sd	s2,0(sp)
   124b2:	ec06                	sd	ra,24(sp)
   124b4:	48bc                	lw	a5,80(s1)
   124b6:	e822                	sd	s0,16(sp)
   124b8:	892a                	mv	s2,a0
   124ba:	e781                	bnez	a5,124c2 <__sfp+0x1a>
   124bc:	8526                	mv	a0,s1
   124be:	f97ff0ef          	jal	ra,12454 <__sinit>
   124c2:	52048493          	addi	s1,s1,1312
   124c6:	6880                	ld	s0,16(s1)
   124c8:	449c                	lw	a5,8(s1)
   124ca:	37fd                	addiw	a5,a5,-1
   124cc:	0007d663          	bgez	a5,124d8 <__sfp+0x30>
   124d0:	609c                	ld	a5,0(s1)
   124d2:	cb89                	beqz	a5,124e4 <__sfp+0x3c>
   124d4:	6084                	ld	s1,0(s1)
   124d6:	bfc5                	j	124c6 <__sfp+0x1e>
   124d8:	01041703          	lh	a4,16(s0)
   124dc:	c70d                	beqz	a4,12506 <__sfp+0x5e>
   124de:	0b040413          	addi	s0,s0,176
   124e2:	b7e5                	j	124ca <__sfp+0x22>
   124e4:	4591                	li	a1,4
   124e6:	854a                	mv	a0,s2
   124e8:	f1dff0ef          	jal	ra,12404 <__sfmoreglue>
   124ec:	e088                	sd	a0,0(s1)
   124ee:	f17d                	bnez	a0,124d4 <__sfp+0x2c>
   124f0:	47b1                	li	a5,12
   124f2:	00f92023          	sw	a5,0(s2)
   124f6:	4401                	li	s0,0
   124f8:	8522                	mv	a0,s0
   124fa:	60e2                	ld	ra,24(sp)
   124fc:	6442                	ld	s0,16(sp)
   124fe:	64a2                	ld	s1,8(sp)
   12500:	6902                	ld	s2,0(sp)
   12502:	6105                	addi	sp,sp,32
   12504:	8082                	ret
   12506:	77c1                	lui	a5,0xffff0
   12508:	2785                	addiw	a5,a5,1
   1250a:	0a042623          	sw	zero,172(s0)
   1250e:	00043023          	sd	zero,0(s0)
   12512:	00043423          	sd	zero,8(s0)
   12516:	c81c                	sw	a5,16(s0)
   12518:	00043c23          	sd	zero,24(s0)
   1251c:	02042023          	sw	zero,32(s0)
   12520:	02042423          	sw	zero,40(s0)
   12524:	4621                	li	a2,8
   12526:	4581                	li	a1,0
   12528:	0a440513          	addi	a0,s0,164
   1252c:	b4cfe0ef          	jal	ra,10878 <memset>
   12530:	04043c23          	sd	zero,88(s0)
   12534:	06042023          	sw	zero,96(s0)
   12538:	06043c23          	sd	zero,120(s0)
   1253c:	08042023          	sw	zero,128(s0)
   12540:	bf65                	j	124f8 <__sfp+0x50>

0000000000012542 <__sfp_lock_acquire>:
   12542:	8082                	ret

0000000000012544 <__sfp_lock_release>:
   12544:	8082                	ret

0000000000012546 <__sinit_lock_acquire>:
   12546:	8082                	ret

0000000000012548 <__sinit_lock_release>:
   12548:	8082                	ret

000000000001254a <__fp_lock_all>:
   1254a:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   1254e:	000125b7          	lui	a1,0x12
   12552:	38a58593          	addi	a1,a1,906 # 1238a <__fp_lock>
   12556:	2800006f          	j	127d6 <_fwalk>

000000000001255a <__fp_unlock_all>:
   1255a:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   1255e:	000125b7          	lui	a1,0x12
   12562:	40058593          	addi	a1,a1,1024 # 12400 <__fp_unlock>
   12566:	2700006f          	j	127d6 <_fwalk>

000000000001256a <_malloc_trim_r>:
   1256a:	7139                	addi	sp,sp,-64
   1256c:	f04a                	sd	s2,32(sp)
   1256e:	6971                	lui	s2,0x1c
   12570:	f822                	sd	s0,48(sp)
   12572:	f426                	sd	s1,40(sp)
   12574:	ec4e                	sd	s3,24(sp)
   12576:	e42e                	sd	a1,8(sp)
   12578:	fc06                	sd	ra,56(sp)
   1257a:	89aa                	mv	s3,a0
   1257c:	03090913          	addi	s2,s2,48 # 1c030 <__malloc_av_>
   12580:	ba2fe0ef          	jal	ra,10922 <__malloc_lock>
   12584:	01093783          	ld	a5,16(s2)
   12588:	65a2                	ld	a1,8(sp)
   1258a:	6784                	ld	s1,8(a5)
   1258c:	6785                	lui	a5,0x1
   1258e:	fdf78413          	addi	s0,a5,-33 # fdf <main-0xf0d1>
   12592:	98f1                	andi	s1,s1,-4
   12594:	8c0d                	sub	s0,s0,a1
   12596:	9426                	add	s0,s0,s1
   12598:	8031                	srli	s0,s0,0xc
   1259a:	147d                	addi	s0,s0,-1
   1259c:	0432                	slli	s0,s0,0xc
   1259e:	00f45d63          	ble	a5,s0,125b8 <_malloc_trim_r+0x4e>
   125a2:	854e                	mv	a0,s3
   125a4:	b80fe0ef          	jal	ra,10924 <__malloc_unlock>
   125a8:	4501                	li	a0,0
   125aa:	70e2                	ld	ra,56(sp)
   125ac:	7442                	ld	s0,48(sp)
   125ae:	74a2                	ld	s1,40(sp)
   125b0:	7902                	ld	s2,32(sp)
   125b2:	69e2                	ld	s3,24(sp)
   125b4:	6121                	addi	sp,sp,64
   125b6:	8082                	ret
   125b8:	4581                	li	a1,0
   125ba:	854e                	mv	a0,s3
   125bc:	bb6fe0ef          	jal	ra,10972 <_sbrk_r>
   125c0:	01093783          	ld	a5,16(s2)
   125c4:	97a6                	add	a5,a5,s1
   125c6:	fcf51ee3          	bne	a0,a5,125a2 <_malloc_trim_r+0x38>
   125ca:	408005b3          	neg	a1,s0
   125ce:	854e                	mv	a0,s3
   125d0:	ba2fe0ef          	jal	ra,10972 <_sbrk_r>
   125d4:	57fd                	li	a5,-1
   125d6:	02f51663          	bne	a0,a5,12602 <_malloc_trim_r+0x98>
   125da:	4581                	li	a1,0
   125dc:	854e                	mv	a0,s3
   125de:	b94fe0ef          	jal	ra,10972 <_sbrk_r>
   125e2:	01093703          	ld	a4,16(s2)
   125e6:	46fd                	li	a3,31
   125e8:	40e507b3          	sub	a5,a0,a4
   125ec:	faf6dbe3          	ble	a5,a3,125a2 <_malloc_trim_r+0x38>
   125f0:	8381b683          	ld	a3,-1992(gp) # 1ca20 <__malloc_sbrk_base>
   125f4:	0017e793          	ori	a5,a5,1
   125f8:	e71c                	sd	a5,8(a4)
   125fa:	8d15                	sub	a0,a0,a3
   125fc:	8aa1ac23          	sw	a0,-1864(gp) # 1caa0 <__malloc_current_mallinfo>
   12600:	b74d                	j	125a2 <_malloc_trim_r+0x38>
   12602:	01093783          	ld	a5,16(s2)
   12606:	8c81                	sub	s1,s1,s0
   12608:	0014e493          	ori	s1,s1,1
   1260c:	e784                	sd	s1,8(a5)
   1260e:	8b81a783          	lw	a5,-1864(gp) # 1caa0 <__malloc_current_mallinfo>
   12612:	854e                	mv	a0,s3
   12614:	4087843b          	subw	s0,a5,s0
   12618:	8a81ac23          	sw	s0,-1864(gp) # 1caa0 <__malloc_current_mallinfo>
   1261c:	b08fe0ef          	jal	ra,10924 <__malloc_unlock>
   12620:	4505                	li	a0,1
   12622:	b761                	j	125aa <_malloc_trim_r+0x40>

0000000000012624 <_free_r>:
   12624:	1a058863          	beqz	a1,127d4 <_free_r+0x1b0>
   12628:	1101                	addi	sp,sp,-32
   1262a:	e822                	sd	s0,16(sp)
   1262c:	e426                	sd	s1,8(sp)
   1262e:	842a                	mv	s0,a0
   12630:	84ae                	mv	s1,a1
   12632:	ec06                	sd	ra,24(sp)
   12634:	aeefe0ef          	jal	ra,10922 <__malloc_lock>
   12638:	ff84b503          	ld	a0,-8(s1)
   1263c:	6671                	lui	a2,0x1c
   1263e:	ff048693          	addi	a3,s1,-16
   12642:	ffe57793          	andi	a5,a0,-2
   12646:	03060813          	addi	a6,a2,48 # 1c030 <__malloc_av_>
   1264a:	00f685b3          	add	a1,a3,a5
   1264e:	6598                	ld	a4,8(a1)
   12650:	01083803          	ld	a6,16(a6)
   12654:	03060613          	addi	a2,a2,48
   12658:	9b71                	andi	a4,a4,-4
   1265a:	8905                	andi	a0,a0,1
   1265c:	04b81063          	bne	a6,a1,1269c <_free_r+0x78>
   12660:	97ba                	add	a5,a5,a4
   12662:	e909                	bnez	a0,12674 <_free_r+0x50>
   12664:	ff04b703          	ld	a4,-16(s1)
   12668:	8e99                	sub	a3,a3,a4
   1266a:	6a8c                	ld	a1,16(a3)
   1266c:	97ba                	add	a5,a5,a4
   1266e:	6e98                	ld	a4,24(a3)
   12670:	ed98                	sd	a4,24(a1)
   12672:	eb0c                	sd	a1,16(a4)
   12674:	0017e713          	ori	a4,a5,1
   12678:	e698                	sd	a4,8(a3)
   1267a:	8401b703          	ld	a4,-1984(gp) # 1ca28 <__malloc_trim_threshold>
   1267e:	ea14                	sd	a3,16(a2)
   12680:	00e7e763          	bltu	a5,a4,1268e <_free_r+0x6a>
   12684:	8581b583          	ld	a1,-1960(gp) # 1ca40 <__malloc_top_pad>
   12688:	8522                	mv	a0,s0
   1268a:	ee1ff0ef          	jal	ra,1256a <_malloc_trim_r>
   1268e:	8522                	mv	a0,s0
   12690:	6442                	ld	s0,16(sp)
   12692:	60e2                	ld	ra,24(sp)
   12694:	64a2                	ld	s1,8(sp)
   12696:	6105                	addi	sp,sp,32
   12698:	a8cfe06f          	j	10924 <__malloc_unlock>
   1269c:	e598                	sd	a4,8(a1)
   1269e:	4801                	li	a6,0
   126a0:	e10d                	bnez	a0,126c2 <_free_r+0x9e>
   126a2:	ff04b503          	ld	a0,-16(s1)
   126a6:	68f1                	lui	a7,0x1c
   126a8:	04088893          	addi	a7,a7,64 # 1c040 <__malloc_av_+0x10>
   126ac:	8e89                	sub	a3,a3,a0
   126ae:	97aa                	add	a5,a5,a0
   126b0:	6a88                	ld	a0,16(a3)
   126b2:	07150e63          	beq	a0,a7,1272e <_free_r+0x10a>
   126b6:	0186b883          	ld	a7,24(a3)
   126ba:	01153c23          	sd	a7,24(a0)
   126be:	00a8b823          	sd	a0,16(a7)
   126c2:	00e58533          	add	a0,a1,a4
   126c6:	6508                	ld	a0,8(a0)
   126c8:	8905                	andi	a0,a0,1
   126ca:	ed19                	bnez	a0,126e8 <_free_r+0xc4>
   126cc:	97ba                	add	a5,a5,a4
   126ce:	6998                	ld	a4,16(a1)
   126d0:	06081163          	bnez	a6,12732 <_free_r+0x10e>
   126d4:	6571                	lui	a0,0x1c
   126d6:	04050513          	addi	a0,a0,64 # 1c040 <__malloc_av_+0x10>
   126da:	04a71c63          	bne	a4,a0,12732 <_free_r+0x10e>
   126de:	f614                	sd	a3,40(a2)
   126e0:	f214                	sd	a3,32(a2)
   126e2:	ee98                	sd	a4,24(a3)
   126e4:	ea98                	sd	a4,16(a3)
   126e6:	4805                	li	a6,1
   126e8:	0017e713          	ori	a4,a5,1
   126ec:	e698                	sd	a4,8(a3)
   126ee:	00f68733          	add	a4,a3,a5
   126f2:	e31c                	sd	a5,0(a4)
   126f4:	f8081de3          	bnez	a6,1268e <_free_r+0x6a>
   126f8:	1ff00713          	li	a4,511
   126fc:	02f76f63          	bltu	a4,a5,1273a <_free_r+0x116>
   12700:	838d                	srli	a5,a5,0x3
   12702:	2781                	sext.w	a5,a5
   12704:	4027d59b          	sraiw	a1,a5,0x2
   12708:	4705                	li	a4,1
   1270a:	00b71733          	sll	a4,a4,a1
   1270e:	2785                	addiw	a5,a5,1
   12710:	660c                	ld	a1,8(a2)
   12712:	0017979b          	slliw	a5,a5,0x1
   12716:	078e                	slli	a5,a5,0x3
   12718:	97b2                	add	a5,a5,a2
   1271a:	8f4d                	or	a4,a4,a1
   1271c:	e618                	sd	a4,8(a2)
   1271e:	6398                	ld	a4,0(a5)
   12720:	ff078613          	addi	a2,a5,-16
   12724:	ee90                	sd	a2,24(a3)
   12726:	ea98                	sd	a4,16(a3)
   12728:	e394                	sd	a3,0(a5)
   1272a:	ef14                	sd	a3,24(a4)
   1272c:	b78d                	j	1268e <_free_r+0x6a>
   1272e:	4805                	li	a6,1
   12730:	bf49                	j	126c2 <_free_r+0x9e>
   12732:	6d8c                	ld	a1,24(a1)
   12734:	ef0c                	sd	a1,24(a4)
   12736:	e998                	sd	a4,16(a1)
   12738:	bf45                	j	126e8 <_free_r+0xc4>
   1273a:	0097d593          	srli	a1,a5,0x9
   1273e:	4711                	li	a4,4
   12740:	02b76e63          	bltu	a4,a1,1277c <_free_r+0x158>
   12744:	0067d713          	srli	a4,a5,0x6
   12748:	0387071b          	addiw	a4,a4,56
   1274c:	0017059b          	addiw	a1,a4,1
   12750:	0015959b          	slliw	a1,a1,0x1
   12754:	058e                	slli	a1,a1,0x3
   12756:	95b2                	add	a1,a1,a2
   12758:	ff058513          	addi	a0,a1,-16
   1275c:	618c                	ld	a1,0(a1)
   1275e:	06b51563          	bne	a0,a1,127c8 <_free_r+0x1a4>
   12762:	4785                	li	a5,1
   12764:	4027571b          	sraiw	a4,a4,0x2
   12768:	00e79733          	sll	a4,a5,a4
   1276c:	661c                	ld	a5,8(a2)
   1276e:	8f5d                	or	a4,a4,a5
   12770:	e618                	sd	a4,8(a2)
   12772:	ee88                	sd	a0,24(a3)
   12774:	ea8c                	sd	a1,16(a3)
   12776:	e914                	sd	a3,16(a0)
   12778:	ed94                	sd	a3,24(a1)
   1277a:	bf11                	j	1268e <_free_r+0x6a>
   1277c:	4751                	li	a4,20
   1277e:	00b76563          	bltu	a4,a1,12788 <_free_r+0x164>
   12782:	05b5871b          	addiw	a4,a1,91
   12786:	b7d9                	j	1274c <_free_r+0x128>
   12788:	05400713          	li	a4,84
   1278c:	00b76763          	bltu	a4,a1,1279a <_free_r+0x176>
   12790:	00c7d713          	srli	a4,a5,0xc
   12794:	06e7071b          	addiw	a4,a4,110
   12798:	bf55                	j	1274c <_free_r+0x128>
   1279a:	15400713          	li	a4,340
   1279e:	00b76763          	bltu	a4,a1,127ac <_free_r+0x188>
   127a2:	00f7d713          	srli	a4,a5,0xf
   127a6:	0777071b          	addiw	a4,a4,119
   127aa:	b74d                	j	1274c <_free_r+0x128>
   127ac:	55400513          	li	a0,1364
   127b0:	07e00713          	li	a4,126
   127b4:	f8b56ce3          	bltu	a0,a1,1274c <_free_r+0x128>
   127b8:	0127d713          	srli	a4,a5,0x12
   127bc:	07c7071b          	addiw	a4,a4,124
   127c0:	b771                	j	1274c <_free_r+0x128>
   127c2:	698c                	ld	a1,16(a1)
   127c4:	00b50663          	beq	a0,a1,127d0 <_free_r+0x1ac>
   127c8:	6598                	ld	a4,8(a1)
   127ca:	9b71                	andi	a4,a4,-4
   127cc:	fee7ebe3          	bltu	a5,a4,127c2 <_free_r+0x19e>
   127d0:	6d88                	ld	a0,24(a1)
   127d2:	b745                	j	12772 <_free_r+0x14e>
   127d4:	8082                	ret

00000000000127d6 <_fwalk>:
   127d6:	715d                	addi	sp,sp,-80
   127d8:	e0a2                	sd	s0,64(sp)
   127da:	fc26                	sd	s1,56(sp)
   127dc:	f052                	sd	s4,32(sp)
   127de:	ec56                	sd	s5,24(sp)
   127e0:	e486                	sd	ra,72(sp)
   127e2:	f84a                	sd	s2,48(sp)
   127e4:	f44e                	sd	s3,40(sp)
   127e6:	52050493          	addi	s1,a0,1312
   127ea:	4401                	li	s0,0
   127ec:	4a05                	li	s4,1
   127ee:	5afd                	li	s5,-1
   127f0:	e899                	bnez	s1,12806 <_fwalk+0x30>
   127f2:	8522                	mv	a0,s0
   127f4:	60a6                	ld	ra,72(sp)
   127f6:	6406                	ld	s0,64(sp)
   127f8:	74e2                	ld	s1,56(sp)
   127fa:	7942                	ld	s2,48(sp)
   127fc:	79a2                	ld	s3,40(sp)
   127fe:	7a02                	ld	s4,32(sp)
   12800:	6ae2                	ld	s5,24(sp)
   12802:	6161                	addi	sp,sp,80
   12804:	8082                	ret
   12806:	0104b903          	ld	s2,16(s1)
   1280a:	0084a983          	lw	s3,8(s1)
   1280e:	39fd                	addiw	s3,s3,-1
   12810:	0009d463          	bgez	s3,12818 <_fwalk+0x42>
   12814:	6084                	ld	s1,0(s1)
   12816:	bfe9                	j	127f0 <_fwalk+0x1a>
   12818:	01095783          	lhu	a5,16(s2)
   1281c:	00fa7c63          	bleu	a5,s4,12834 <_fwalk+0x5e>
   12820:	01291783          	lh	a5,18(s2)
   12824:	01578863          	beq	a5,s5,12834 <_fwalk+0x5e>
   12828:	854a                	mv	a0,s2
   1282a:	e42e                	sd	a1,8(sp)
   1282c:	9582                	jalr	a1
   1282e:	65a2                	ld	a1,8(sp)
   12830:	8c49                	or	s0,s0,a0
   12832:	2401                	sext.w	s0,s0
   12834:	0b090913          	addi	s2,s2,176
   12838:	bfd9                	j	1280e <_fwalk+0x38>

000000000001283a <_fwalk_reent>:
   1283a:	715d                	addi	sp,sp,-80
   1283c:	e0a2                	sd	s0,64(sp)
   1283e:	fc26                	sd	s1,56(sp)
   12840:	f052                	sd	s4,32(sp)
   12842:	ec56                	sd	s5,24(sp)
   12844:	e85a                	sd	s6,16(sp)
   12846:	e45e                	sd	s7,8(sp)
   12848:	e486                	sd	ra,72(sp)
   1284a:	f84a                	sd	s2,48(sp)
   1284c:	f44e                	sd	s3,40(sp)
   1284e:	8a2a                	mv	s4,a0
   12850:	8aae                	mv	s5,a1
   12852:	52050493          	addi	s1,a0,1312
   12856:	4401                	li	s0,0
   12858:	4b05                	li	s6,1
   1285a:	5bfd                	li	s7,-1
   1285c:	ec89                	bnez	s1,12876 <_fwalk_reent+0x3c>
   1285e:	8522                	mv	a0,s0
   12860:	60a6                	ld	ra,72(sp)
   12862:	6406                	ld	s0,64(sp)
   12864:	74e2                	ld	s1,56(sp)
   12866:	7942                	ld	s2,48(sp)
   12868:	79a2                	ld	s3,40(sp)
   1286a:	7a02                	ld	s4,32(sp)
   1286c:	6ae2                	ld	s5,24(sp)
   1286e:	6b42                	ld	s6,16(sp)
   12870:	6ba2                	ld	s7,8(sp)
   12872:	6161                	addi	sp,sp,80
   12874:	8082                	ret
   12876:	0104b903          	ld	s2,16(s1)
   1287a:	0084a983          	lw	s3,8(s1)
   1287e:	39fd                	addiw	s3,s3,-1
   12880:	0009d463          	bgez	s3,12888 <_fwalk_reent+0x4e>
   12884:	6084                	ld	s1,0(s1)
   12886:	bfd9                	j	1285c <_fwalk_reent+0x22>
   12888:	01095783          	lhu	a5,16(s2)
   1288c:	00fb7b63          	bleu	a5,s6,128a2 <_fwalk_reent+0x68>
   12890:	01291783          	lh	a5,18(s2)
   12894:	01778763          	beq	a5,s7,128a2 <_fwalk_reent+0x68>
   12898:	85ca                	mv	a1,s2
   1289a:	8552                	mv	a0,s4
   1289c:	9a82                	jalr	s5
   1289e:	8c49                	or	s0,s0,a0
   128a0:	2401                	sext.w	s0,s0
   128a2:	0b090913          	addi	s2,s2,176
   128a6:	bfe1                	j	1287e <_fwalk_reent+0x44>

00000000000128a8 <eclear>:
   128a8:	01450793          	addi	a5,a0,20
   128ac:	0509                	addi	a0,a0,2
   128ae:	fe051f23          	sh	zero,-2(a0)
   128b2:	fef51de3          	bne	a0,a5,128ac <eclear+0x4>
   128b6:	8082                	ret

00000000000128b8 <emov>:
   128b8:	01450793          	addi	a5,a0,20
   128bc:	0509                	addi	a0,a0,2
   128be:	ffe55703          	lhu	a4,-2(a0)
   128c2:	0589                	addi	a1,a1,2
   128c4:	fee59f23          	sh	a4,-2(a1)
   128c8:	fea79ae3          	bne	a5,a0,128bc <emov+0x4>
   128cc:	8082                	ret

00000000000128ce <ecleaz>:
   128ce:	01a50793          	addi	a5,a0,26
   128d2:	0509                	addi	a0,a0,2
   128d4:	fe051f23          	sh	zero,-2(a0)
   128d8:	fef51de3          	bne	a0,a5,128d2 <ecleaz+0x4>
   128dc:	8082                	ret

00000000000128de <emovz>:
   128de:	01850713          	addi	a4,a0,24
   128e2:	87ae                	mv	a5,a1
   128e4:	0509                	addi	a0,a0,2
   128e6:	ffe55683          	lhu	a3,-2(a0)
   128ea:	0789                	addi	a5,a5,2
   128ec:	fed79f23          	sh	a3,-2(a5)
   128f0:	fea71ae3          	bne	a4,a0,128e4 <emovz+0x6>
   128f4:	00059c23          	sh	zero,24(a1)
   128f8:	8082                	ret

00000000000128fa <ecmpm>:
   128fa:	00450793          	addi	a5,a0,4
   128fe:	0591                	addi	a1,a1,4
   12900:	0569                	addi	a0,a0,26
   12902:	0789                	addi	a5,a5,2
   12904:	0589                	addi	a1,a1,2
   12906:	ffe7d683          	lhu	a3,-2(a5)
   1290a:	ffe5d703          	lhu	a4,-2(a1)
   1290e:	00e69663          	bne	a3,a4,1291a <ecmpm+0x20>
   12912:	fef518e3          	bne	a0,a5,12902 <ecmpm+0x8>
   12916:	4501                	li	a0,0
   12918:	8082                	ret
   1291a:	4505                	li	a0,1
   1291c:	00d76363          	bltu	a4,a3,12922 <ecmpm+0x28>
   12920:	557d                	li	a0,-1
   12922:	8082                	ret

0000000000012924 <eshdn1>:
   12924:	00450693          	addi	a3,a0,4
   12928:	4781                	li	a5,0
   1292a:	0569                	addi	a0,a0,26
   1292c:	7661                	lui	a2,0xffff8
   1292e:	0006d703          	lhu	a4,0(a3)
   12932:	00177593          	andi	a1,a4,1
   12936:	c199                	beqz	a1,1293c <eshdn1+0x18>
   12938:	0017e793          	ori	a5,a5,1
   1293c:	0027f593          	andi	a1,a5,2
   12940:	8305                	srli	a4,a4,0x1
   12942:	e999                	bnez	a1,12958 <eshdn1+0x34>
   12944:	0017979b          	slliw	a5,a5,0x1
   12948:	00e69023          	sh	a4,0(a3)
   1294c:	17c2                	slli	a5,a5,0x30
   1294e:	0689                	addi	a3,a3,2
   12950:	93c1                	srli	a5,a5,0x30
   12952:	fcd51ee3          	bne	a0,a3,1292e <eshdn1+0xa>
   12956:	8082                	ret
   12958:	8f51                	or	a4,a4,a2
   1295a:	b7ed                	j	12944 <eshdn1+0x20>

000000000001295c <eshup1>:
   1295c:	01650693          	addi	a3,a0,22
   12960:	4701                	li	a4,0
   12962:	0026d783          	lhu	a5,2(a3)
   12966:	0107961b          	slliw	a2,a5,0x10
   1296a:	4106561b          	sraiw	a2,a2,0x10
   1296e:	00065463          	bgez	a2,12976 <eshup1+0x1a>
   12972:	00176713          	ori	a4,a4,1
   12976:	0017979b          	slliw	a5,a5,0x1
   1297a:	17c2                	slli	a5,a5,0x30
   1297c:	00277613          	andi	a2,a4,2
   12980:	93c1                	srli	a5,a5,0x30
   12982:	ea19                	bnez	a2,12998 <eshup1+0x3c>
   12984:	0017171b          	slliw	a4,a4,0x1
   12988:	00f69123          	sh	a5,2(a3)
   1298c:	1742                	slli	a4,a4,0x30
   1298e:	16f9                	addi	a3,a3,-2
   12990:	9341                	srli	a4,a4,0x30
   12992:	fcd518e3          	bne	a0,a3,12962 <eshup1+0x6>
   12996:	8082                	ret
   12998:	0017e793          	ori	a5,a5,1
   1299c:	b7e5                	j	12984 <eshup1+0x28>

000000000001299e <eshdn8>:
   1299e:	00450793          	addi	a5,a0,4
   129a2:	4701                	li	a4,0
   129a4:	0569                	addi	a0,a0,26
   129a6:	0007d683          	lhu	a3,0(a5)
   129aa:	0789                	addi	a5,a5,2
   129ac:	0086d61b          	srliw	a2,a3,0x8
   129b0:	8f51                	or	a4,a4,a2
   129b2:	fee79f23          	sh	a4,-2(a5)
   129b6:	0086971b          	slliw	a4,a3,0x8
   129ba:	1742                	slli	a4,a4,0x30
   129bc:	9341                	srli	a4,a4,0x30
   129be:	fef514e3          	bne	a0,a5,129a6 <eshdn8+0x8>
   129c2:	8082                	ret

00000000000129c4 <eshup8>:
   129c4:	01650793          	addi	a5,a0,22
   129c8:	4701                	li	a4,0
   129ca:	0027d683          	lhu	a3,2(a5)
   129ce:	17f9                	addi	a5,a5,-2
   129d0:	00869613          	slli	a2,a3,0x8
   129d4:	8f51                	or	a4,a4,a2
   129d6:	00e79223          	sh	a4,4(a5)
   129da:	0086d713          	srli	a4,a3,0x8
   129de:	fef516e3          	bne	a0,a5,129ca <eshup8+0x6>
   129e2:	8082                	ret

00000000000129e4 <eshup6>:
   129e4:	00450793          	addi	a5,a0,4
   129e8:	01850713          	addi	a4,a0,24
   129ec:	0789                	addi	a5,a5,2
   129ee:	0007d683          	lhu	a3,0(a5)
   129f2:	fed79f23          	sh	a3,-2(a5)
   129f6:	fef71be3          	bne	a4,a5,129ec <eshup6+0x8>
   129fa:	00051c23          	sh	zero,24(a0)
   129fe:	8082                	ret

0000000000012a00 <eshdn6>:
   12a00:	01850793          	addi	a5,a0,24
   12a04:	01a50713          	addi	a4,a0,26
   12a08:	00450693          	addi	a3,a0,4
   12a0c:	17f9                	addi	a5,a5,-2
   12a0e:	0007d603          	lhu	a2,0(a5)
   12a12:	1779                	addi	a4,a4,-2
   12a14:	00c71023          	sh	a2,0(a4) # 20400000 <__global_pointer$+0x203e2e18>
   12a18:	fef69ae3          	bne	a3,a5,12a0c <eshdn6+0xc>
   12a1c:	00051223          	sh	zero,4(a0)
   12a20:	8082                	ret

0000000000012a22 <eaddm>:
   12a22:	05e1                	addi	a1,a1,24
   12a24:	01650713          	addi	a4,a0,22
   12a28:	4681                	li	a3,0
   12a2a:	0005d783          	lhu	a5,0(a1)
   12a2e:	1779                	addi	a4,a4,-2
   12a30:	15f9                	addi	a1,a1,-2
   12a32:	97b6                	add	a5,a5,a3
   12a34:	00475683          	lhu	a3,4(a4)
   12a38:	97b6                	add	a5,a5,a3
   12a3a:	00f59123          	sh	a5,2(a1)
   12a3e:	83c1                	srli	a5,a5,0x10
   12a40:	0017f693          	andi	a3,a5,1
   12a44:	fee513e3          	bne	a0,a4,12a2a <eaddm+0x8>
   12a48:	8082                	ret

0000000000012a4a <esubm>:
   12a4a:	05e1                	addi	a1,a1,24
   12a4c:	01650713          	addi	a4,a0,22
   12a50:	4681                	li	a3,0
   12a52:	0005d783          	lhu	a5,0(a1)
   12a56:	00275603          	lhu	a2,2(a4)
   12a5a:	1779                	addi	a4,a4,-2
   12a5c:	15f9                	addi	a1,a1,-2
   12a5e:	8f91                	sub	a5,a5,a2
   12a60:	8f95                	sub	a5,a5,a3
   12a62:	00f59123          	sh	a5,2(a1)
   12a66:	83c1                	srli	a5,a5,0x10
   12a68:	0017f693          	andi	a3,a5,1
   12a6c:	fee513e3          	bne	a0,a4,12a52 <esubm+0x8>
   12a70:	8082                	ret

0000000000012a72 <m16m>:
   12a72:	1101                	addi	sp,sp,-32
   12a74:	6341                	lui	t1,0x10
   12a76:	01858893          	addi	a7,a1,24
   12a7a:	00011b23          	sh	zero,22(sp)
   12a7e:	00011c23          	sh	zero,24(sp)
   12a82:	0591                	addi	a1,a1,4
   12a84:	0834                	addi	a3,sp,24
   12a86:	137d                	addi	t1,t1,-1
   12a88:	0008d703          	lhu	a4,0(a7)
   12a8c:	16f9                	addi	a3,a3,-2
   12a8e:	18f9                	addi	a7,a7,-2
   12a90:	e705                	bnez	a4,12ab8 <m16m+0x46>
   12a92:	fe069f23          	sh	zero,-2(a3)
   12a96:	ff1599e3          	bne	a1,a7,12a88 <m16m+0x16>
   12a9a:	4791                	li	a5,4
   12a9c:	4769                	li	a4,26
   12a9e:	00f105b3          	add	a1,sp,a5
   12aa2:	0005d583          	lhu	a1,0(a1)
   12aa6:	00f606b3          	add	a3,a2,a5
   12aaa:	0789                	addi	a5,a5,2
   12aac:	00b69023          	sh	a1,0(a3)
   12ab0:	fee797e3          	bne	a5,a4,12a9e <m16m+0x2c>
   12ab4:	6105                	addi	sp,sp,32
   12ab6:	8082                	ret
   12ab8:	02a70733          	mul	a4,a4,a0
   12abc:	0026d803          	lhu	a6,2(a3)
   12ac0:	006777b3          	and	a5,a4,t1
   12ac4:	97c2                	add	a5,a5,a6
   12ac6:	0107d813          	srli	a6,a5,0x10
   12aca:	00f69123          	sh	a5,2(a3)
   12ace:	01075793          	srli	a5,a4,0x10
   12ad2:	0006d703          	lhu	a4,0(a3)
   12ad6:	97ba                	add	a5,a5,a4
   12ad8:	97c2                	add	a5,a5,a6
   12ada:	00f69023          	sh	a5,0(a3)
   12ade:	83c1                	srli	a5,a5,0x10
   12ae0:	fef69f23          	sh	a5,-2(a3)
   12ae4:	bf4d                	j	12a96 <m16m+0x24>

0000000000012ae6 <eisnan>:
   12ae6:	01255783          	lhu	a5,18(a0)
   12aea:	fff7c793          	not	a5,a5
   12aee:	03179713          	slli	a4,a5,0x31
   12af2:	eb09                	bnez	a4,12b04 <eisnan+0x1e>
   12af4:	01250793          	addi	a5,a0,18
   12af8:	0509                	addi	a0,a0,2
   12afa:	ffe55703          	lhu	a4,-2(a0)
   12afe:	e709                	bnez	a4,12b08 <eisnan+0x22>
   12b00:	fea79ce3          	bne	a5,a0,12af8 <eisnan+0x12>
   12b04:	4501                	li	a0,0
   12b06:	8082                	ret
   12b08:	4505                	li	a0,1
   12b0a:	8082                	ret

0000000000012b0c <eisneg>:
   12b0c:	1141                	addi	sp,sp,-16
   12b0e:	e022                	sd	s0,0(sp)
   12b10:	e406                	sd	ra,8(sp)
   12b12:	842a                	mv	s0,a0
   12b14:	fd3ff0ef          	jal	ra,12ae6 <eisnan>
   12b18:	e901                	bnez	a0,12b28 <eisneg+0x1c>
   12b1a:	01344503          	lbu	a0,19(s0)
   12b1e:	811d                	srli	a0,a0,0x7
   12b20:	60a2                	ld	ra,8(sp)
   12b22:	6402                	ld	s0,0(sp)
   12b24:	0141                	addi	sp,sp,16
   12b26:	8082                	ret
   12b28:	4501                	li	a0,0
   12b2a:	bfdd                	j	12b20 <eisneg+0x14>

0000000000012b2c <emovi>:
   12b2c:	01251783          	lh	a5,18(a0)
   12b30:	1101                	addi	sp,sp,-32
   12b32:	ec06                	sd	ra,24(sp)
   12b34:	e822                	sd	s0,16(sp)
   12b36:	e426                	sd	s1,8(sp)
   12b38:	e04a                	sd	s2,0(sp)
   12b3a:	0407d963          	bgez	a5,12b8c <emovi+0x60>
   12b3e:	57fd                	li	a5,-1
   12b40:	00f59023          	sh	a5,0(a1)
   12b44:	01255703          	lhu	a4,18(a0)
   12b48:	67a1                	lui	a5,0x8
   12b4a:	17fd                	addi	a5,a5,-1
   12b4c:	8f7d                	and	a4,a4,a5
   12b4e:	00e59123          	sh	a4,2(a1)
   12b52:	01050913          	addi	s2,a0,16
   12b56:	04f71863          	bne	a4,a5,12ba6 <emovi+0x7a>
   12b5a:	842e                	mv	s0,a1
   12b5c:	84aa                	mv	s1,a0
   12b5e:	f89ff0ef          	jal	ra,12ae6 <eisnan>
   12b62:	c905                	beqz	a0,12b92 <emovi+0x66>
   12b64:	00640793          	addi	a5,s0,6
   12b68:	00041223          	sh	zero,4(s0)
   12b6c:	ffc48513          	addi	a0,s1,-4
   12b70:	1979                	addi	s2,s2,-2
   12b72:	00295703          	lhu	a4,2(s2)
   12b76:	0789                	addi	a5,a5,2
   12b78:	fee79f23          	sh	a4,-2(a5) # 7ffe <main-0x80b2>
   12b7c:	fea91ae3          	bne	s2,a0,12b70 <emovi+0x44>
   12b80:	60e2                	ld	ra,24(sp)
   12b82:	6442                	ld	s0,16(sp)
   12b84:	64a2                	ld	s1,8(sp)
   12b86:	6902                	ld	s2,0(sp)
   12b88:	6105                	addi	sp,sp,32
   12b8a:	8082                	ret
   12b8c:	00059023          	sh	zero,0(a1)
   12b90:	bf55                	j	12b44 <emovi+0x18>
   12b92:	00440793          	addi	a5,s0,4
   12b96:	01a40593          	addi	a1,s0,26
   12b9a:	0789                	addi	a5,a5,2
   12b9c:	fe079f23          	sh	zero,-2(a5)
   12ba0:	feb79de3          	bne	a5,a1,12b9a <emovi+0x6e>
   12ba4:	bff1                	j	12b80 <emovi+0x54>
   12ba6:	00658793          	addi	a5,a1,6
   12baa:	00059223          	sh	zero,4(a1)
   12bae:	1579                	addi	a0,a0,-2
   12bb0:	1979                	addi	s2,s2,-2
   12bb2:	00295703          	lhu	a4,2(s2)
   12bb6:	0789                	addi	a5,a5,2
   12bb8:	fee79f23          	sh	a4,-2(a5)
   12bbc:	fea91ae3          	bne	s2,a0,12bb0 <emovi+0x84>
   12bc0:	00059c23          	sh	zero,24(a1)
   12bc4:	bf75                	j	12b80 <emovi+0x54>

0000000000012bc6 <ecmp>:
   12bc6:	711d                	addi	sp,sp,-96
   12bc8:	e4a6                	sd	s1,72(sp)
   12bca:	e0ca                	sd	s2,64(sp)
   12bcc:	ec86                	sd	ra,88(sp)
   12bce:	e8a2                	sd	s0,80(sp)
   12bd0:	892a                	mv	s2,a0
   12bd2:	84ae                	mv	s1,a1
   12bd4:	f13ff0ef          	jal	ra,12ae6 <eisnan>
   12bd8:	e559                	bnez	a0,12c66 <ecmp+0xa0>
   12bda:	8526                	mv	a0,s1
   12bdc:	f0bff0ef          	jal	ra,12ae6 <eisnan>
   12be0:	842a                	mv	s0,a0
   12be2:	e151                	bnez	a0,12c66 <ecmp+0xa0>
   12be4:	858a                	mv	a1,sp
   12be6:	854a                	mv	a0,s2
   12be8:	f45ff0ef          	jal	ra,12b2c <emovi>
   12bec:	100c                	addi	a1,sp,32
   12bee:	8526                	mv	a0,s1
   12bf0:	f3dff0ef          	jal	ra,12b2c <emovi>
   12bf4:	00015703          	lhu	a4,0(sp)
   12bf8:	02015783          	lhu	a5,32(sp)
   12bfc:	02e78c63          	beq	a5,a4,12c34 <ecmp+0x6e>
   12c00:	4789                	li	a5,2
   12c02:	46e1                	li	a3,24
   12c04:	00f10633          	add	a2,sp,a5
   12c08:	00065603          	lhu	a2,0(a2) # ffffffffffff8000 <__global_pointer$+0xfffffffffffdae18>
   12c0c:	e205                	bnez	a2,12c2c <ecmp+0x66>
   12c0e:	1010                	addi	a2,sp,32
   12c10:	963e                	add	a2,a2,a5
   12c12:	00065603          	lhu	a2,0(a2)
   12c16:	ea19                	bnez	a2,12c2c <ecmp+0x66>
   12c18:	0789                	addi	a5,a5,2
   12c1a:	fed795e3          	bne	a5,a3,12c04 <ecmp+0x3e>
   12c1e:	8522                	mv	a0,s0
   12c20:	60e6                	ld	ra,88(sp)
   12c22:	6446                	ld	s0,80(sp)
   12c24:	64a6                	ld	s1,72(sp)
   12c26:	6906                	ld	s2,64(sp)
   12c28:	6125                	addi	sp,sp,96
   12c2a:	8082                	ret
   12c2c:	4405                	li	s0,1
   12c2e:	db65                	beqz	a4,12c1e <ecmp+0x58>
   12c30:	547d                	li	s0,-1
   12c32:	b7f5                	j	12c1e <ecmp+0x58>
   12c34:	4605                	li	a2,1
   12c36:	c311                	beqz	a4,12c3a <ecmp+0x74>
   12c38:	567d                	li	a2,-1
   12c3a:	4781                	li	a5,0
   12c3c:	45e1                	li	a1,24
   12c3e:	00f10733          	add	a4,sp,a5
   12c42:	00075683          	lhu	a3,0(a4)
   12c46:	1018                	addi	a4,sp,32
   12c48:	973e                	add	a4,a4,a5
   12c4a:	00075703          	lhu	a4,0(a4)
   12c4e:	00e69663          	bne	a3,a4,12c5a <ecmp+0x94>
   12c52:	0789                	addi	a5,a5,2
   12c54:	feb795e3          	bne	a5,a1,12c3e <ecmp+0x78>
   12c58:	b7d9                	j	12c1e <ecmp+0x58>
   12c5a:	8432                	mv	s0,a2
   12c5c:	fcd761e3          	bltu	a4,a3,12c1e <ecmp+0x58>
   12c60:	40c0043b          	negw	s0,a2
   12c64:	bf6d                	j	12c1e <ecmp+0x58>
   12c66:	5479                	li	s0,-2
   12c68:	bf5d                	j	12c1e <ecmp+0x58>

0000000000012c6a <eisinf>:
   12c6a:	01255783          	lhu	a5,18(a0)
   12c6e:	fff7c793          	not	a5,a5
   12c72:	03179713          	slli	a4,a5,0x31
   12c76:	eb11                	bnez	a4,12c8a <eisinf+0x20>
   12c78:	1141                	addi	sp,sp,-16
   12c7a:	e406                	sd	ra,8(sp)
   12c7c:	e6bff0ef          	jal	ra,12ae6 <eisnan>
   12c80:	60a2                	ld	ra,8(sp)
   12c82:	00153513          	seqz	a0,a0
   12c86:	0141                	addi	sp,sp,16
   12c88:	8082                	ret
   12c8a:	4501                	li	a0,0
   12c8c:	8082                	ret

0000000000012c8e <einfin.isra.2>:
   12c8e:	01250793          	addi	a5,a0,18
   12c92:	0509                	addi	a0,a0,2
   12c94:	fe051f23          	sh	zero,-2(a0)
   12c98:	fef51de3          	bne	a0,a5,12c92 <einfin.isra.2+0x4>
   12c9c:	00055783          	lhu	a5,0(a0)
   12ca0:	6721                	lui	a4,0x8
   12ca2:	177d                	addi	a4,a4,-1
   12ca4:	8fd9                	or	a5,a5,a4
   12ca6:	00f51023          	sh	a5,0(a0)
   12caa:	8082                	ret

0000000000012cac <eshift.part.3>:
   12cac:	7139                	addi	sp,sp,-64
   12cae:	f822                	sd	s0,48(sp)
   12cb0:	ec4e                	sd	s3,24(sp)
   12cb2:	fc06                	sd	ra,56(sp)
   12cb4:	f426                	sd	s1,40(sp)
   12cb6:	f04a                	sd	s2,32(sp)
   12cb8:	e852                	sd	s4,16(sp)
   12cba:	e456                	sd	s5,8(sp)
   12cbc:	89aa                	mv	s3,a0
   12cbe:	842e                	mv	s0,a1
   12cc0:	0a05d963          	bgez	a1,12d72 <eshift.part.3+0xc6>
   12cc4:	40b00a3b          	negw	s4,a1
   12cc8:	8952                	mv	s2,s4
   12cca:	4481                	li	s1,0
   12ccc:	4abd                	li	s5,15
   12cce:	034ac763          	blt	s5,s4,12cfc <eshift.part.3+0x50>
   12cd2:	0049591b          	srliw	s2,s2,0x4
   12cd6:	55c1                	li	a1,-16
   12cd8:	02b905bb          	mulw	a1,s2,a1
   12cdc:	4a1d                	li	s4,7
   12cde:	4085893b          	subw	s2,a1,s0
   12ce2:	844a                	mv	s0,s2
   12ce4:	032a4463          	blt	s4,s2,12d0c <eshift.part.3+0x60>
   12ce8:	0034559b          	srliw	a1,s0,0x3
   12cec:	57e1                	li	a5,-8
   12cee:	02f585bb          	mulw	a1,a1,a5
   12cf2:	9c2d                	addw	s0,s0,a1
   12cf4:	e405                	bnez	s0,12d1c <eshift.part.3+0x70>
   12cf6:	00903533          	snez	a0,s1
   12cfa:	a09d                	j	12d60 <eshift.part.3+0xb4>
   12cfc:	0189d783          	lhu	a5,24(s3)
   12d00:	854e                	mv	a0,s3
   12d02:	3a41                	addiw	s4,s4,-16
   12d04:	8cdd                	or	s1,s1,a5
   12d06:	cfbff0ef          	jal	ra,12a00 <eshdn6>
   12d0a:	b7d1                	j	12cce <eshift.part.3+0x22>
   12d0c:	0189c783          	lbu	a5,24(s3)
   12d10:	854e                	mv	a0,s3
   12d12:	3961                	addiw	s2,s2,-8
   12d14:	8cdd                	or	s1,s1,a5
   12d16:	c89ff0ef          	jal	ra,1299e <eshdn8>
   12d1a:	b7e9                	j	12ce4 <eshift.part.3+0x38>
   12d1c:	0189d783          	lhu	a5,24(s3)
   12d20:	854e                	mv	a0,s3
   12d22:	347d                	addiw	s0,s0,-1
   12d24:	8b85                	andi	a5,a5,1
   12d26:	8cdd                	or	s1,s1,a5
   12d28:	bfdff0ef          	jal	ra,12924 <eshdn1>
   12d2c:	b7e1                	j	12cf4 <eshift.part.3+0x48>
   12d2e:	854e                	mv	a0,s3
   12d30:	cb5ff0ef          	jal	ra,129e4 <eshup6>
   12d34:	34c1                	addiw	s1,s1,-16
   12d36:	fe994ce3          	blt	s2,s1,12d2e <eshift.part.3+0x82>
   12d3a:	0044559b          	srliw	a1,s0,0x4
   12d3e:	57c1                	li	a5,-16
   12d40:	02f585bb          	mulw	a1,a1,a5
   12d44:	491d                	li	s2,7
   12d46:	00b404bb          	addw	s1,s0,a1
   12d4a:	8426                	mv	s0,s1
   12d4c:	02994663          	blt	s2,s1,12d78 <eshift.part.3+0xcc>
   12d50:	0034559b          	srliw	a1,s0,0x3
   12d54:	57e1                	li	a5,-8
   12d56:	02f585bb          	mulw	a1,a1,a5
   12d5a:	9c2d                	addw	s0,s0,a1
   12d5c:	e01d                	bnez	s0,12d82 <eshift.part.3+0xd6>
   12d5e:	4501                	li	a0,0
   12d60:	70e2                	ld	ra,56(sp)
   12d62:	7442                	ld	s0,48(sp)
   12d64:	74a2                	ld	s1,40(sp)
   12d66:	7902                	ld	s2,32(sp)
   12d68:	69e2                	ld	s3,24(sp)
   12d6a:	6a42                	ld	s4,16(sp)
   12d6c:	6aa2                	ld	s5,8(sp)
   12d6e:	6121                	addi	sp,sp,64
   12d70:	8082                	ret
   12d72:	84ae                	mv	s1,a1
   12d74:	493d                	li	s2,15
   12d76:	b7c1                	j	12d36 <eshift.part.3+0x8a>
   12d78:	854e                	mv	a0,s3
   12d7a:	c4bff0ef          	jal	ra,129c4 <eshup8>
   12d7e:	34e1                	addiw	s1,s1,-8
   12d80:	b7f1                	j	12d4c <eshift.part.3+0xa0>
   12d82:	854e                	mv	a0,s3
   12d84:	bd9ff0ef          	jal	ra,1295c <eshup1>
   12d88:	347d                	addiw	s0,s0,-1
   12d8a:	bfc9                	j	12d5c <eshift.part.3+0xb0>

0000000000012d8c <enormlz>:
   12d8c:	00455783          	lhu	a5,4(a0)
   12d90:	1101                	addi	sp,sp,-32
   12d92:	e426                	sd	s1,8(sp)
   12d94:	ec06                	sd	ra,24(sp)
   12d96:	e822                	sd	s0,16(sp)
   12d98:	e04a                	sd	s2,0(sp)
   12d9a:	84aa                	mv	s1,a0
   12d9c:	efb9                	bnez	a5,12dfa <enormlz+0x6e>
   12d9e:	00651783          	lh	a5,6(a0)
   12da2:	4401                	li	s0,0
   12da4:	0a000913          	li	s2,160
   12da8:	0007df63          	bgez	a5,12dc6 <enormlz+0x3a>
   12dac:	8522                	mv	a0,s0
   12dae:	60e2                	ld	ra,24(sp)
   12db0:	6442                	ld	s0,16(sp)
   12db2:	64a2                	ld	s1,8(sp)
   12db4:	6902                	ld	s2,0(sp)
   12db6:	6105                	addi	sp,sp,32
   12db8:	8082                	ret
   12dba:	8526                	mv	a0,s1
   12dbc:	2441                	addiw	s0,s0,16
   12dbe:	c27ff0ef          	jal	ra,129e4 <eshup6>
   12dc2:	ff2405e3          	beq	s0,s2,12dac <enormlz+0x20>
   12dc6:	0064d783          	lhu	a5,6(s1)
   12dca:	dbe5                	beqz	a5,12dba <enormlz+0x2e>
   12dcc:	0064d783          	lhu	a5,6(s1)
   12dd0:	f007f793          	andi	a5,a5,-256
   12dd4:	cf91                	beqz	a5,12df0 <enormlz+0x64>
   12dd6:	0a000913          	li	s2,160
   12dda:	00649783          	lh	a5,6(s1)
   12dde:	fc07c7e3          	bltz	a5,12dac <enormlz+0x20>
   12de2:	8526                	mv	a0,s1
   12de4:	2405                	addiw	s0,s0,1
   12de6:	b77ff0ef          	jal	ra,1295c <eshup1>
   12dea:	fe8958e3          	ble	s0,s2,12dda <enormlz+0x4e>
   12dee:	bf7d                	j	12dac <enormlz+0x20>
   12df0:	8526                	mv	a0,s1
   12df2:	bd3ff0ef          	jal	ra,129c4 <eshup8>
   12df6:	2421                	addiw	s0,s0,8
   12df8:	bfd1                	j	12dcc <enormlz+0x40>
   12dfa:	f007f793          	andi	a5,a5,-256
   12dfe:	4401                	li	s0,0
   12e00:	c781                	beqz	a5,12e08 <enormlz+0x7c>
   12e02:	b9dff0ef          	jal	ra,1299e <eshdn8>
   12e06:	5461                	li	s0,-8
   12e08:	f7000913          	li	s2,-144
   12e0c:	a039                	j	12e1a <enormlz+0x8e>
   12e0e:	8526                	mv	a0,s1
   12e10:	347d                	addiw	s0,s0,-1
   12e12:	b13ff0ef          	jal	ra,12924 <eshdn1>
   12e16:	f9244be3          	blt	s0,s2,12dac <enormlz+0x20>
   12e1a:	0044d783          	lhu	a5,4(s1)
   12e1e:	fbe5                	bnez	a5,12e0e <enormlz+0x82>
   12e20:	b771                	j	12dac <enormlz+0x20>

0000000000012e22 <enan.constprop.12>:
   12e22:	01050793          	addi	a5,a0,16
   12e26:	0509                	addi	a0,a0,2
   12e28:	fe051f23          	sh	zero,-2(a0)
   12e2c:	fef51de3          	bne	a0,a5,12e26 <enan.constprop.12+0x4>
   12e30:	77f1                	lui	a5,0xffffc
   12e32:	00f51023          	sh	a5,0(a0)
   12e36:	77e1                	lui	a5,0xffff8
   12e38:	fff7c793          	not	a5,a5
   12e3c:	00f51123          	sh	a5,2(a0)
   12e40:	8082                	ret

0000000000012e42 <emovo.isra.6>:
   12e42:	872a                	mv	a4,a0
   12e44:	00075683          	lhu	a3,0(a4) # 8000 <main-0x80b0>
   12e48:	852e                	mv	a0,a1
   12e4a:	00275783          	lhu	a5,2(a4)
   12e4e:	c299                	beqz	a3,12e54 <emovo.isra.6+0x12>
   12e50:	76e1                	lui	a3,0xffff8
   12e52:	8fd5                	or	a5,a5,a3
   12e54:	00f51923          	sh	a5,18(a0)
   12e58:	00275603          	lhu	a2,2(a4)
   12e5c:	66a1                	lui	a3,0x8
   12e5e:	16fd                	addi	a3,a3,-1
   12e60:	00670793          	addi	a5,a4,6
   12e64:	00d61b63          	bne	a2,a3,12e7a <emovo.isra.6+0x38>
   12e68:	0769                	addi	a4,a4,26
   12e6a:	0007d683          	lhu	a3,0(a5) # ffffffffffff8000 <__global_pointer$+0xfffffffffffdae18>
   12e6e:	e28d                	bnez	a3,12e90 <emovo.isra.6+0x4e>
   12e70:	0789                	addi	a5,a5,2
   12e72:	fee79ce3          	bne	a5,a4,12e6a <emovo.isra.6+0x28>
   12e76:	e19ff06f          	j	12c8e <einfin.isra.2>
   12e7a:	0541                	addi	a0,a0,16
   12e7c:	0761                	addi	a4,a4,24
   12e7e:	0789                	addi	a5,a5,2
   12e80:	ffe7d683          	lhu	a3,-2(a5)
   12e84:	1579                	addi	a0,a0,-2
   12e86:	00d51123          	sh	a3,2(a0)
   12e8a:	fee79ae3          	bne	a5,a4,12e7e <emovo.isra.6+0x3c>
   12e8e:	8082                	ret
   12e90:	f93ff06f          	j	12e22 <enan.constprop.12>

0000000000012e94 <e113toe.isra.8>:
   12e94:	7139                	addi	sp,sp,-64
   12e96:	f426                	sd	s1,40(sp)
   12e98:	84aa                	mv	s1,a0
   12e9a:	850a                	mv	a0,sp
   12e9c:	f822                	sd	s0,48(sp)
   12e9e:	fc06                	sd	ra,56(sp)
   12ea0:	842e                	mv	s0,a1
   12ea2:	a2dff0ef          	jal	ra,128ce <ecleaz>
   12ea6:	00e4d703          	lhu	a4,14(s1)
   12eaa:	0107179b          	slliw	a5,a4,0x10
   12eae:	4107d79b          	sraiw	a5,a5,0x10
   12eb2:	0207c763          	bltz	a5,12ee0 <e113toe.isra.8+0x4c>
   12eb6:	00011023          	sh	zero,0(sp)
   12eba:	66a1                	lui	a3,0x8
   12ebc:	16fd                	addi	a3,a3,-1
   12ebe:	8f75                	and	a4,a4,a3
   12ec0:	00e48793          	addi	a5,s1,14
   12ec4:	04d71a63          	bne	a4,a3,12f18 <e113toe.isra.8+0x84>
   12ec8:	8726                	mv	a4,s1
   12eca:	00075683          	lhu	a3,0(a4)
   12ece:	ce89                	beqz	a3,12ee8 <e113toe.isra.8+0x54>
   12ed0:	8522                	mv	a0,s0
   12ed2:	f51ff0ef          	jal	ra,12e22 <enan.constprop.12>
   12ed6:	70e2                	ld	ra,56(sp)
   12ed8:	7442                	ld	s0,48(sp)
   12eda:	74a2                	ld	s1,40(sp)
   12edc:	6121                	addi	sp,sp,64
   12ede:	8082                	ret
   12ee0:	57fd                	li	a5,-1
   12ee2:	00f11023          	sh	a5,0(sp)
   12ee6:	bfd1                	j	12eba <e113toe.isra.8+0x26>
   12ee8:	0709                	addi	a4,a4,2
   12eea:	fee790e3          	bne	a5,a4,12eca <e113toe.isra.8+0x36>
   12eee:	8522                	mv	a0,s0
   12ef0:	9b9ff0ef          	jal	ra,128a8 <eclear>
   12ef4:	8522                	mv	a0,s0
   12ef6:	d99ff0ef          	jal	ra,12c8e <einfin.isra.2>
   12efa:	00e49783          	lh	a5,14(s1)
   12efe:	fc07dce3          	bgez	a5,12ed6 <e113toe.isra.8+0x42>
   12f02:	8522                	mv	a0,s0
   12f04:	be3ff0ef          	jal	ra,12ae6 <eisnan>
   12f08:	f579                	bnez	a0,12ed6 <e113toe.isra.8+0x42>
   12f0a:	01245783          	lhu	a5,18(s0)
   12f0e:	7761                	lui	a4,0xffff8
   12f10:	8fb9                	xor	a5,a5,a4
   12f12:	00f41923          	sh	a5,18(s0)
   12f16:	b7c1                	j	12ed6 <e113toe.isra.8+0x42>
   12f18:	00e11123          	sh	a4,2(sp)
   12f1c:	868a                	mv	a3,sp
   12f1e:	17f9                	addi	a5,a5,-2
   12f20:	0007d603          	lhu	a2,0(a5)
   12f24:	0689                	addi	a3,a3,2
   12f26:	00c69223          	sh	a2,4(a3) # 8004 <main-0x80ac>
   12f2a:	fef49ae3          	bne	s1,a5,12f1e <e113toe.isra.8+0x8a>
   12f2e:	eb01                	bnez	a4,12f3e <e113toe.isra.8+0xaa>
   12f30:	00011223          	sh	zero,4(sp)
   12f34:	85a2                	mv	a1,s0
   12f36:	850a                	mv	a0,sp
   12f38:	f0bff0ef          	jal	ra,12e42 <emovo.isra.6>
   12f3c:	bf69                	j	12ed6 <e113toe.isra.8+0x42>
   12f3e:	4785                	li	a5,1
   12f40:	55fd                	li	a1,-1
   12f42:	850a                	mv	a0,sp
   12f44:	00f11223          	sh	a5,4(sp)
   12f48:	d65ff0ef          	jal	ra,12cac <eshift.part.3>
   12f4c:	b7e5                	j	12f34 <e113toe.isra.8+0xa0>

0000000000012f4e <emdnorm>:
   12f4e:	7139                	addi	sp,sp,-64
   12f50:	f822                	sd	s0,48(sp)
   12f52:	f426                	sd	s1,40(sp)
   12f54:	f04a                	sd	s2,32(sp)
   12f56:	ec4e                	sd	s3,24(sp)
   12f58:	e852                	sd	s4,16(sp)
   12f5a:	e456                	sd	s5,8(sp)
   12f5c:	8936                	mv	s2,a3
   12f5e:	843e                	mv	s0,a5
   12f60:	fc06                	sd	ra,56(sp)
   12f62:	84aa                	mv	s1,a0
   12f64:	89ae                	mv	s3,a1
   12f66:	8a32                	mv	s4,a2
   12f68:	8aba                	mv	s5,a4
   12f6a:	e23ff0ef          	jal	ra,12d8c <enormlz>
   12f6e:	09000793          	li	a5,144
   12f72:	40a90933          	sub	s2,s2,a0
   12f76:	02a7d763          	ble	a0,a5,12fa4 <emdnorm+0x56>
   12f7a:	67a1                	lui	a5,0x8
   12f7c:	17f9                	addi	a5,a5,-2
   12f7e:	2327c663          	blt	a5,s2,131aa <emdnorm+0x25c>
   12f82:	00248793          	addi	a5,s1,2
   12f86:	04e9                	addi	s1,s1,26
   12f88:	0789                	addi	a5,a5,2
   12f8a:	fe079f23          	sh	zero,-2(a5) # 7ffe <main-0x80b2>
   12f8e:	fe979de3          	bne	a5,s1,12f88 <emdnorm+0x3a>
   12f92:	70e2                	ld	ra,56(sp)
   12f94:	7442                	ld	s0,48(sp)
   12f96:	74a2                	ld	s1,40(sp)
   12f98:	7902                	ld	s2,32(sp)
   12f9a:	69e2                	ld	s3,24(sp)
   12f9c:	6a42                	ld	s4,16(sp)
   12f9e:	6aa2                	ld	s5,8(sp)
   12fa0:	6121                	addi	sp,sp,64
   12fa2:	8082                	ret
   12fa4:	00095d63          	bgez	s2,12fbe <emdnorm+0x70>
   12fa8:	f7000793          	li	a5,-144
   12fac:	0ef94a63          	blt	s2,a5,130a0 <emdnorm+0x152>
   12fb0:	0009059b          	sext.w	a1,s2
   12fb4:	8526                	mv	a0,s1
   12fb6:	cf7ff0ef          	jal	ra,12cac <eshift.part.3>
   12fba:	0e051c63          	bnez	a0,130b2 <emdnorm+0x164>
   12fbe:	1a0a8a63          	beqz	s5,13172 <emdnorm+0x224>
   12fc2:	4058                	lw	a4,4(s0)
   12fc4:	401c                	lw	a5,0(s0)
   12fc6:	04f70863          	beq	a4,a5,13016 <emdnorm+0xc8>
   12fca:	01a40513          	addi	a0,s0,26
   12fce:	901ff0ef          	jal	ra,128ce <ecleaz>
   12fd2:	405c                	lw	a5,4(s0)
   12fd4:	03800713          	li	a4,56
   12fd8:	10e78d63          	beq	a5,a4,130f2 <emdnorm+0x1a4>
   12fdc:	0cf74d63          	blt	a4,a5,130b6 <emdnorm+0x168>
   12fe0:	4761                	li	a4,24
   12fe2:	12e78e63          	beq	a5,a4,1311e <emdnorm+0x1d0>
   12fe6:	03500713          	li	a4,53
   12fea:	12e78163          	beq	a5,a4,1310c <emdnorm+0x1be>
   12fee:	80010737          	lui	a4,0x80010
   12ff2:	377d                	addiw	a4,a4,-1
   12ff4:	c858                	sw	a4,20(s0)
   12ff6:	4705                	li	a4,1
   12ff8:	00e41c23          	sh	a4,24(s0)
   12ffc:	472d                	li	a4,11
   12ffe:	1702                	slli	a4,a4,0x20
   13000:	0731                	addi	a4,a4,12
   13002:	e418                	sd	a4,8(s0)
   13004:	4458                	lw	a4,12(s0)
   13006:	01845683          	lhu	a3,24(s0)
   1300a:	0721                	addi	a4,a4,8
   1300c:	0706                	slli	a4,a4,0x1
   1300e:	9722                	add	a4,a4,s0
   13010:	00d71523          	sh	a3,10(a4) # ffffffff8001000a <__global_pointer$+0xffffffff7fff2e22>
   13014:	c01c                	sw	a5,0(s0)
   13016:	01204f63          	bgtz	s2,13034 <emdnorm+0xe6>
   1301a:	4058                	lw	a4,4(s0)
   1301c:	09000793          	li	a5,144
   13020:	00f70a63          	beq	a4,a5,13034 <emdnorm+0xe6>
   13024:	0184d783          	lhu	a5,24(s1)
   13028:	8526                	mv	a0,s1
   1302a:	8b85                	andi	a5,a5,1
   1302c:	00f9e9b3          	or	s3,s3,a5
   13030:	8f5ff0ef          	jal	ra,12924 <eshdn1>
   13034:	4414                	lw	a3,8(s0)
   13036:	01445583          	lhu	a1,20(s0)
   1303a:	4048                	lw	a0,4(s0)
   1303c:	00169793          	slli	a5,a3,0x1
   13040:	00f48633          	add	a2,s1,a5
   13044:	00065703          	lhu	a4,0(a2)
   13048:	8f6d                	and	a4,a4,a1
   1304a:	08f00593          	li	a1,143
   1304e:	00a5c863          	blt	a1,a0,1305e <emdnorm+0x110>
   13052:	0789                	addi	a5,a5,2
   13054:	2685                	addiw	a3,a3,1
   13056:	97a6                	add	a5,a5,s1
   13058:	45b1                	li	a1,12
   1305a:	0cd5df63          	ble	a3,a1,13138 <emdnorm+0x1ea>
   1305e:	01445783          	lhu	a5,20(s0)
   13062:	00065683          	lhu	a3,0(a2)
   13066:	fff7c793          	not	a5,a5
   1306a:	8ff5                	and	a5,a5,a3
   1306c:	00f61023          	sh	a5,0(a2)
   13070:	01645783          	lhu	a5,22(s0)
   13074:	00e7f6b3          	and	a3,a5,a4
   13078:	cee1                	beqz	a3,13150 <emdnorm+0x202>
   1307a:	00e79d63          	bne	a5,a4,13094 <emdnorm+0x146>
   1307e:	0c099763          	bnez	s3,1314c <emdnorm+0x1fe>
   13082:	445c                	lw	a5,12(s0)
   13084:	01845703          	lhu	a4,24(s0)
   13088:	0786                	slli	a5,a5,0x1
   1308a:	97a6                	add	a5,a5,s1
   1308c:	0007d783          	lhu	a5,0(a5)
   13090:	8ff9                	and	a5,a5,a4
   13092:	cfdd                	beqz	a5,13150 <emdnorm+0x202>
   13094:	85a6                	mv	a1,s1
   13096:	01a40513          	addi	a0,s0,26
   1309a:	989ff0ef          	jal	ra,12a22 <eaddm>
   1309e:	a84d                	j	13150 <emdnorm+0x202>
   130a0:	00248793          	addi	a5,s1,2
   130a4:	04e9                	addi	s1,s1,26
   130a6:	0789                	addi	a5,a5,2
   130a8:	fe079f23          	sh	zero,-2(a5)
   130ac:	fe979de3          	bne	a5,s1,130a6 <emdnorm+0x158>
   130b0:	b5cd                	j	12f92 <emdnorm+0x44>
   130b2:	4985                	li	s3,1
   130b4:	b729                	j	12fbe <emdnorm+0x70>
   130b6:	04000713          	li	a4,64
   130ba:	02e78163          	beq	a5,a4,130dc <emdnorm+0x18e>
   130be:	07100713          	li	a4,113
   130c2:	f2e796e3          	bne	a5,a4,12fee <emdnorm+0xa0>
   130c6:	40008737          	lui	a4,0x40008
   130ca:	377d                	addiw	a4,a4,-1
   130cc:	c858                	sw	a4,20(s0)
   130ce:	7761                	lui	a4,0xffff8
   130d0:	00e41c23          	sh	a4,24(s0)
   130d4:	4729                	li	a4,10
   130d6:	1702                	slli	a4,a4,0x20
   130d8:	0729                	addi	a4,a4,10
   130da:	b725                	j	13002 <emdnorm+0xb4>
   130dc:	80010737          	lui	a4,0x80010
   130e0:	377d                	addiw	a4,a4,-1
   130e2:	c858                	sw	a4,20(s0)
   130e4:	4705                	li	a4,1
   130e6:	00e41c23          	sh	a4,24(s0)
   130ea:	470d                	li	a4,3
   130ec:	1706                	slli	a4,a4,0x21
   130ee:	071d                	addi	a4,a4,7
   130f0:	bf09                	j	13002 <emdnorm+0xb4>
   130f2:	00800737          	lui	a4,0x800
   130f6:	0ff7071b          	addiw	a4,a4,255
   130fa:	c858                	sw	a4,20(s0)
   130fc:	10000713          	li	a4,256
   13100:	00e41c23          	sh	a4,24(s0)
   13104:	4719                	li	a4,6
   13106:	1702                	slli	a4,a4,0x20
   13108:	0719                	addi	a4,a4,6
   1310a:	bde5                	j	13002 <emdnorm+0xb4>
   1310c:	04000737          	lui	a4,0x4000
   13110:	7ff7071b          	addiw	a4,a4,2047
   13114:	c858                	sw	a4,20(s0)
   13116:	6705                	lui	a4,0x1
   13118:	8007071b          	addiw	a4,a4,-2048
   1311c:	b7d5                	j	13100 <emdnorm+0x1b2>
   1311e:	00800737          	lui	a4,0x800
   13122:	0ff7071b          	addiw	a4,a4,255
   13126:	c858                	sw	a4,20(s0)
   13128:	10000713          	li	a4,256
   1312c:	00e41c23          	sh	a4,24(s0)
   13130:	4711                	li	a4,4
   13132:	1702                	slli	a4,a4,0x20
   13134:	0711                	addi	a4,a4,4
   13136:	b5f1                	j	13002 <emdnorm+0xb4>
   13138:	0007d503          	lhu	a0,0(a5)
   1313c:	c119                	beqz	a0,13142 <emdnorm+0x1f4>
   1313e:	00176713          	ori	a4,a4,1
   13142:	00079023          	sh	zero,0(a5)
   13146:	2685                	addiw	a3,a3,1
   13148:	0789                	addi	a5,a5,2
   1314a:	bf01                	j	1305a <emdnorm+0x10c>
   1314c:	f40a04e3          	beqz	s4,13094 <emdnorm+0x146>
   13150:	01204a63          	bgtz	s2,13164 <emdnorm+0x216>
   13154:	4058                	lw	a4,4(s0)
   13156:	09000793          	li	a5,144
   1315a:	00f70563          	beq	a4,a5,13164 <emdnorm+0x216>
   1315e:	8526                	mv	a0,s1
   13160:	ffcff0ef          	jal	ra,1295c <eshup1>
   13164:	0044d783          	lhu	a5,4(s1)
   13168:	c789                	beqz	a5,13172 <emdnorm+0x224>
   1316a:	8526                	mv	a0,s1
   1316c:	fb8ff0ef          	jal	ra,12924 <eshdn1>
   13170:	0905                	addi	s2,s2,1
   13172:	67a1                	lui	a5,0x8
   13174:	00049c23          	sh	zero,24(s1)
   13178:	17f9                	addi	a5,a5,-2
   1317a:	0327d063          	ble	s2,a5,1319a <emdnorm+0x24c>
   1317e:	77e1                	lui	a5,0xffff8
   13180:	fff7c793          	not	a5,a5
   13184:	00f49123          	sh	a5,2(s1)
   13188:	00448793          	addi	a5,s1,4
   1318c:	04e1                	addi	s1,s1,24
   1318e:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__global_pointer$+0xfffffffffffdae18>
   13192:	0789                	addi	a5,a5,2
   13194:	fef49de3          	bne	s1,a5,1318e <emdnorm+0x240>
   13198:	bbed                	j	12f92 <emdnorm+0x44>
   1319a:	00095563          	bgez	s2,131a4 <emdnorm+0x256>
   1319e:	00049123          	sh	zero,2(s1)
   131a2:	bbc5                	j	12f92 <emdnorm+0x44>
   131a4:	01249123          	sh	s2,2(s1)
   131a8:	b3ed                	j	12f92 <emdnorm+0x44>
   131aa:	e00a9ce3          	bnez	s5,12fc2 <emdnorm+0x74>
   131ae:	00049c23          	sh	zero,24(s1)
   131b2:	b7f1                	j	1317e <emdnorm+0x230>

00000000000131b4 <eiremain>:
   131b4:	7139                	addi	sp,sp,-64
   131b6:	e852                	sd	s4,16(sp)
   131b8:	00255a03          	lhu	s4,2(a0)
   131bc:	f822                	sd	s0,48(sp)
   131be:	842e                	mv	s0,a1
   131c0:	fc06                	sd	ra,56(sp)
   131c2:	f426                	sd	s1,40(sp)
   131c4:	f04a                	sd	s2,32(sp)
   131c6:	e456                	sd	s5,8(sp)
   131c8:	e05a                	sd	s6,0(sp)
   131ca:	8932                	mv	s2,a2
   131cc:	03460b13          	addi	s6,a2,52
   131d0:	ec4e                	sd	s3,24(sp)
   131d2:	8aaa                	mv	s5,a0
   131d4:	bb9ff0ef          	jal	ra,12d8c <enormlz>
   131d8:	00245483          	lhu	s1,2(s0)
   131dc:	40aa0a33          	sub	s4,s4,a0
   131e0:	8522                	mv	a0,s0
   131e2:	babff0ef          	jal	ra,12d8c <enormlz>
   131e6:	8c89                	sub	s1,s1,a0
   131e8:	855a                	mv	a0,s6
   131ea:	ee4ff0ef          	jal	ra,128ce <ecleaz>
   131ee:	0344d363          	ble	s4,s1,13214 <eiremain+0x60>
   131f2:	8522                	mv	a0,s0
   131f4:	7442                	ld	s0,48(sp)
   131f6:	70e2                	ld	ra,56(sp)
   131f8:	69e2                	ld	s3,24(sp)
   131fa:	6a42                	ld	s4,16(sp)
   131fc:	6aa2                	ld	s5,8(sp)
   131fe:	6b02                	ld	s6,0(sp)
   13200:	87ca                	mv	a5,s2
   13202:	86a6                	mv	a3,s1
   13204:	7902                	ld	s2,32(sp)
   13206:	74a2                	ld	s1,40(sp)
   13208:	4701                	li	a4,0
   1320a:	4601                	li	a2,0
   1320c:	4581                	li	a1,0
   1320e:	6121                	addi	sp,sp,64
   13210:	d3fff06f          	j	12f4e <emdnorm>
   13214:	85a2                	mv	a1,s0
   13216:	8556                	mv	a0,s5
   13218:	ee2ff0ef          	jal	ra,128fa <ecmpm>
   1321c:	4981                	li	s3,0
   1321e:	00a04763          	bgtz	a0,1322c <eiremain+0x78>
   13222:	85a2                	mv	a1,s0
   13224:	8556                	mv	a0,s5
   13226:	825ff0ef          	jal	ra,12a4a <esubm>
   1322a:	4985                	li	s3,1
   1322c:	855a                	mv	a0,s6
   1322e:	f2eff0ef          	jal	ra,1295c <eshup1>
   13232:	04c95783          	lhu	a5,76(s2)
   13236:	8522                	mv	a0,s0
   13238:	14fd                	addi	s1,s1,-1
   1323a:	00f9e9b3          	or	s3,s3,a5
   1323e:	05391623          	sh	s3,76(s2)
   13242:	f1aff0ef          	jal	ra,1295c <eshup1>
   13246:	b765                	j	131ee <eiremain+0x3a>

0000000000013248 <emul>:
   13248:	7131                	addi	sp,sp,-192
   1324a:	f922                	sd	s0,176(sp)
   1324c:	f526                	sd	s1,168(sp)
   1324e:	f14a                	sd	s2,160(sp)
   13250:	ed4e                	sd	s3,152(sp)
   13252:	fd06                	sd	ra,184(sp)
   13254:	e952                	sd	s4,144(sp)
   13256:	e556                	sd	s5,136(sp)
   13258:	e15a                	sd	s6,128(sp)
   1325a:	fcde                	sd	s7,120(sp)
   1325c:	f8e2                	sd	s8,112(sp)
   1325e:	f4e6                	sd	s9,104(sp)
   13260:	84aa                	mv	s1,a0
   13262:	842e                	mv	s0,a1
   13264:	8932                	mv	s2,a2
   13266:	89b6                	mv	s3,a3
   13268:	87fff0ef          	jal	ra,12ae6 <eisnan>
   1326c:	c115                	beqz	a0,13290 <emul+0x48>
   1326e:	85ca                	mv	a1,s2
   13270:	8526                	mv	a0,s1
   13272:	e46ff0ef          	jal	ra,128b8 <emov>
   13276:	70ea                	ld	ra,184(sp)
   13278:	744a                	ld	s0,176(sp)
   1327a:	74aa                	ld	s1,168(sp)
   1327c:	790a                	ld	s2,160(sp)
   1327e:	69ea                	ld	s3,152(sp)
   13280:	6a4a                	ld	s4,144(sp)
   13282:	6aaa                	ld	s5,136(sp)
   13284:	6b0a                	ld	s6,128(sp)
   13286:	7be6                	ld	s7,120(sp)
   13288:	7c46                	ld	s8,112(sp)
   1328a:	7ca6                	ld	s9,104(sp)
   1328c:	6129                	addi	sp,sp,192
   1328e:	8082                	ret
   13290:	8522                	mv	a0,s0
   13292:	855ff0ef          	jal	ra,12ae6 <eisnan>
   13296:	c501                	beqz	a0,1329e <emul+0x56>
   13298:	85ca                	mv	a1,s2
   1329a:	8522                	mv	a0,s0
   1329c:	bfd9                	j	13272 <emul+0x2a>
   1329e:	8526                	mv	a0,s1
   132a0:	9cbff0ef          	jal	ra,12c6a <eisinf>
   132a4:	e521                	bnez	a0,132ec <emul+0xa4>
   132a6:	8522                	mv	a0,s0
   132a8:	9c3ff0ef          	jal	ra,12c6a <eisinf>
   132ac:	c901                	beqz	a0,132bc <emul+0x74>
   132ae:	65e9                	lui	a1,0x1a
   132b0:	df858593          	addi	a1,a1,-520 # 19df8 <ezero>
   132b4:	8526                	mv	a0,s1
   132b6:	911ff0ef          	jal	ra,12bc6 <ecmp>
   132ba:	c121                	beqz	a0,132fa <emul+0xb2>
   132bc:	8526                	mv	a0,s1
   132be:	9adff0ef          	jal	ra,12c6a <eisinf>
   132c2:	e509                	bnez	a0,132cc <emul+0x84>
   132c4:	8522                	mv	a0,s0
   132c6:	9a5ff0ef          	jal	ra,12c6a <eisinf>
   132ca:	cd1d                	beqz	a0,13308 <emul+0xc0>
   132cc:	8526                	mv	a0,s1
   132ce:	83fff0ef          	jal	ra,12b0c <eisneg>
   132d2:	84aa                	mv	s1,a0
   132d4:	8522                	mv	a0,s0
   132d6:	837ff0ef          	jal	ra,12b0c <eisneg>
   132da:	02a48463          	beq	s1,a0,13302 <emul+0xba>
   132de:	77e1                	lui	a5,0xffff8
   132e0:	00f91923          	sh	a5,18(s2)
   132e4:	854a                	mv	a0,s2
   132e6:	9a9ff0ef          	jal	ra,12c8e <einfin.isra.2>
   132ea:	b771                	j	13276 <emul+0x2e>
   132ec:	65e9                	lui	a1,0x1a
   132ee:	df858593          	addi	a1,a1,-520 # 19df8 <ezero>
   132f2:	8522                	mv	a0,s0
   132f4:	8d3ff0ef          	jal	ra,12bc6 <ecmp>
   132f8:	f55d                	bnez	a0,132a6 <emul+0x5e>
   132fa:	854a                	mv	a0,s2
   132fc:	b27ff0ef          	jal	ra,12e22 <enan.constprop.12>
   13300:	bf9d                	j	13276 <emul+0x2e>
   13302:	00091923          	sh	zero,18(s2)
   13306:	bff9                	j	132e4 <emul+0x9c>
   13308:	8526                	mv	a0,s1
   1330a:	858a                	mv	a1,sp
   1330c:	821ff0ef          	jal	ra,12b2c <emovi>
   13310:	8522                	mv	a0,s0
   13312:	100c                	addi	a1,sp,32
   13314:	819ff0ef          	jal	ra,12b2c <emovi>
   13318:	00215403          	lhu	s0,2(sp)
   1331c:	02215483          	lhu	s1,34(sp)
   13320:	ec09                	bnez	s0,1333a <emul+0xf2>
   13322:	4781                	li	a5,0
   13324:	4759                	li	a4,22
   13326:	00f106b3          	add	a3,sp,a5
   1332a:	0026d683          	lhu	a3,2(a3)
   1332e:	c6e9                	beqz	a3,133f8 <emul+0x1b0>
   13330:	850a                	mv	a0,sp
   13332:	a5bff0ef          	jal	ra,12d8c <enormlz>
   13336:	40a00433          	neg	s0,a0
   1333a:	02215783          	lhu	a5,34(sp)
   1333e:	8c26                	mv	s8,s1
   13340:	ef81                	bnez	a5,13358 <emul+0x110>
   13342:	4759                	li	a4,22
   13344:	1014                	addi	a3,sp,32
   13346:	96be                	add	a3,a3,a5
   13348:	0026d683          	lhu	a3,2(a3)
   1334c:	cecd                	beqz	a3,13406 <emul+0x1be>
   1334e:	1008                	addi	a0,sp,32
   13350:	a3dff0ef          	jal	ra,12d8c <enormlz>
   13354:	40a48c33          	sub	s8,s1,a0
   13358:	02015783          	lhu	a5,32(sp)
   1335c:	03498b93          	addi	s7,s3,52
   13360:	03898493          	addi	s1,s3,56
   13364:	02f99a23          	sh	a5,52(s3)
   13368:	02215783          	lhu	a5,34(sp)
   1336c:	8a5e                	mv	s4,s7
   1336e:	02f99b23          	sh	a5,54(s3)
   13372:	04e98793          	addi	a5,s3,78
   13376:	00049023          	sh	zero,0(s1)
   1337a:	0489                	addi	s1,s1,2
   1337c:	fe979de3          	bne	a5,s1,13376 <emul+0x12e>
   13380:	4a81                	li	s5,0
   13382:	4b01                	li	s6,0
   13384:	5cb1                	li	s9,-20
   13386:	015107b3          	add	a5,sp,s5
   1338a:	0187d503          	lhu	a0,24(a5) # ffffffffffff8018 <__global_pointer$+0xfffffffffffdae30>
   1338e:	c909                	beqz	a0,133a0 <emul+0x158>
   13390:	100c                	addi	a1,sp,32
   13392:	0090                	addi	a2,sp,64
   13394:	edeff0ef          	jal	ra,12a72 <m16m>
   13398:	85de                	mv	a1,s7
   1339a:	0088                	addi	a0,sp,64
   1339c:	e86ff0ef          	jal	ra,12a22 <eaddm>
   133a0:	04c9d783          	lhu	a5,76(s3)
   133a4:	855e                	mv	a0,s7
   133a6:	1af9                	addi	s5,s5,-2
   133a8:	00fb6b33          	or	s6,s6,a5
   133ac:	e54ff0ef          	jal	ra,12a00 <eshdn6>
   133b0:	fd9a9be3          	bne	s5,s9,13386 <emul+0x13e>
   133b4:	101c                	addi	a5,sp,32
   133b6:	000a5703          	lhu	a4,0(s4)
   133ba:	0a09                	addi	s4,s4,2
   133bc:	0789                	addi	a5,a5,2
   133be:	fee79f23          	sh	a4,-2(a5)
   133c2:	fe9a1ae3          	bne	s4,s1,133b6 <emul+0x16e>
   133c6:	76f1                	lui	a3,0xffffc
   133c8:	9462                	add	s0,s0,s8
   133ca:	0689                	addi	a3,a3,2
   133cc:	87ce                	mv	a5,s3
   133ce:	04000713          	li	a4,64
   133d2:	96a2                	add	a3,a3,s0
   133d4:	4601                	li	a2,0
   133d6:	85da                	mv	a1,s6
   133d8:	1008                	addi	a0,sp,32
   133da:	b75ff0ef          	jal	ra,12f4e <emdnorm>
   133de:	00015703          	lhu	a4,0(sp)
   133e2:	02015783          	lhu	a5,32(sp)
   133e6:	02f71463          	bne	a4,a5,1340e <emul+0x1c6>
   133ea:	02011023          	sh	zero,32(sp)
   133ee:	85ca                	mv	a1,s2
   133f0:	1008                	addi	a0,sp,32
   133f2:	a51ff0ef          	jal	ra,12e42 <emovo.isra.6>
   133f6:	b541                	j	13276 <emul+0x2e>
   133f8:	0789                	addi	a5,a5,2
   133fa:	f2e796e3          	bne	a5,a4,13326 <emul+0xde>
   133fe:	854a                	mv	a0,s2
   13400:	ca8ff0ef          	jal	ra,128a8 <eclear>
   13404:	bd8d                	j	13276 <emul+0x2e>
   13406:	0789                	addi	a5,a5,2
   13408:	f2e79ee3          	bne	a5,a4,13344 <emul+0xfc>
   1340c:	bfcd                	j	133fe <emul+0x1b6>
   1340e:	57fd                	li	a5,-1
   13410:	02f11023          	sh	a5,32(sp)
   13414:	bfe9                	j	133ee <emul+0x1a6>

0000000000013416 <ediv>:
   13416:	7131                	addi	sp,sp,-192
   13418:	f922                	sd	s0,176(sp)
   1341a:	f526                	sd	s1,168(sp)
   1341c:	f14a                	sd	s2,160(sp)
   1341e:	e556                	sd	s5,136(sp)
   13420:	fd06                	sd	ra,184(sp)
   13422:	ed4e                	sd	s3,152(sp)
   13424:	e952                	sd	s4,144(sp)
   13426:	e15a                	sd	s6,128(sp)
   13428:	fcde                	sd	s7,120(sp)
   1342a:	f8e2                	sd	s8,112(sp)
   1342c:	f4e6                	sd	s9,104(sp)
   1342e:	f0ea                	sd	s10,96(sp)
   13430:	84aa                	mv	s1,a0
   13432:	842e                	mv	s0,a1
   13434:	8932                	mv	s2,a2
   13436:	8ab6                	mv	s5,a3
   13438:	eaeff0ef          	jal	ra,12ae6 <eisnan>
   1343c:	c11d                	beqz	a0,13462 <ediv+0x4c>
   1343e:	85ca                	mv	a1,s2
   13440:	8526                	mv	a0,s1
   13442:	c76ff0ef          	jal	ra,128b8 <emov>
   13446:	70ea                	ld	ra,184(sp)
   13448:	744a                	ld	s0,176(sp)
   1344a:	74aa                	ld	s1,168(sp)
   1344c:	790a                	ld	s2,160(sp)
   1344e:	69ea                	ld	s3,152(sp)
   13450:	6a4a                	ld	s4,144(sp)
   13452:	6aaa                	ld	s5,136(sp)
   13454:	6b0a                	ld	s6,128(sp)
   13456:	7be6                	ld	s7,120(sp)
   13458:	7c46                	ld	s8,112(sp)
   1345a:	7ca6                	ld	s9,104(sp)
   1345c:	7d06                	ld	s10,96(sp)
   1345e:	6129                	addi	sp,sp,192
   13460:	8082                	ret
   13462:	8522                	mv	a0,s0
   13464:	e82ff0ef          	jal	ra,12ae6 <eisnan>
   13468:	c501                	beqz	a0,13470 <ediv+0x5a>
   1346a:	85ca                	mv	a1,s2
   1346c:	8522                	mv	a0,s0
   1346e:	bfd1                	j	13442 <ediv+0x2c>
   13470:	69e9                	lui	s3,0x1a
   13472:	df898593          	addi	a1,s3,-520 # 19df8 <ezero>
   13476:	8526                	mv	a0,s1
   13478:	f4eff0ef          	jal	ra,12bc6 <ecmp>
   1347c:	16050763          	beqz	a0,135ea <ediv+0x1d4>
   13480:	8526                	mv	a0,s1
   13482:	fe8ff0ef          	jal	ra,12c6a <eisinf>
   13486:	89aa                	mv	s3,a0
   13488:	8522                	mv	a0,s0
   1348a:	fe0ff0ef          	jal	ra,12c6a <eisinf>
   1348e:	16099963          	bnez	s3,13600 <ediv+0x1ea>
   13492:	16051c63          	bnez	a0,1360a <ediv+0x1f4>
   13496:	8526                	mv	a0,s1
   13498:	858a                	mv	a1,sp
   1349a:	e92ff0ef          	jal	ra,12b2c <emovi>
   1349e:	8522                	mv	a0,s0
   134a0:	100c                	addi	a1,sp,32
   134a2:	e8aff0ef          	jal	ra,12b2c <emovi>
   134a6:	02215483          	lhu	s1,34(sp)
   134aa:	00215403          	lhu	s0,2(sp)
   134ae:	ec91                	bnez	s1,134ca <ediv+0xb4>
   134b0:	4781                	li	a5,0
   134b2:	4759                	li	a4,22
   134b4:	1014                	addi	a3,sp,32
   134b6:	96be                	add	a3,a3,a5
   134b8:	0026d683          	lhu	a3,2(a3) # ffffffffffffc002 <__global_pointer$+0xfffffffffffdee1a>
   134bc:	16068763          	beqz	a3,1362a <ediv+0x214>
   134c0:	1008                	addi	a0,sp,32
   134c2:	8cbff0ef          	jal	ra,12d8c <enormlz>
   134c6:	40a004b3          	neg	s1,a0
   134ca:	00215783          	lhu	a5,2(sp)
   134ce:	8ba2                	mv	s7,s0
   134d0:	ef89                	bnez	a5,134ea <ediv+0xd4>
   134d2:	4759                	li	a4,22
   134d4:	00f106b3          	add	a3,sp,a5
   134d8:	0026d683          	lhu	a3,2(a3)
   134dc:	14068b63          	beqz	a3,13632 <ediv+0x21c>
   134e0:	850a                	mv	a0,sp
   134e2:	8abff0ef          	jal	ra,12d8c <enormlz>
   134e6:	40a40bb3          	sub	s7,s0,a0
   134ea:	02015783          	lhu	a5,32(sp)
   134ee:	02215703          	lhu	a4,34(sp)
   134f2:	034a8993          	addi	s3,s5,52
   134f6:	02fa9a23          	sh	a5,52(s5)
   134fa:	038a8793          	addi	a5,s5,56
   134fe:	02ea9b23          	sh	a4,54(s5)
   13502:	8a3e                	mv	s4,a5
   13504:	04ea8713          	addi	a4,s5,78
   13508:	0789                	addi	a5,a5,2
   1350a:	fe079f23          	sh	zero,-2(a5)
   1350e:	fee79de3          	bne	a5,a4,13508 <ediv+0xf2>
   13512:	1008                	addi	a0,sp,32
   13514:	c10ff0ef          	jal	ra,12924 <eshdn1>
   13518:	00615c03          	lhu	s8,6(sp)
   1351c:	6b41                	lui	s6,0x10
   1351e:	1b7d                	addi	s6,s6,-1
   13520:	036c0d33          	mul	s10,s8,s6
   13524:	01a98c93          	addi	s9,s3,26
   13528:	02415783          	lhu	a5,36(sp)
   1352c:	02615403          	lhu	s0,38(sp)
   13530:	07c2                	slli	a5,a5,0x10
   13532:	97a2                	add	a5,a5,s0
   13534:	845a                	mv	s0,s6
   13536:	00fd6663          	bltu	s10,a5,13542 <ediv+0x12c>
   1353a:	0387d433          	divu	s0,a5,s8
   1353e:	1442                	slli	s0,s0,0x30
   13540:	9041                	srli	s0,s0,0x30
   13542:	858a                	mv	a1,sp
   13544:	8522                	mv	a0,s0
   13546:	0090                	addi	a2,sp,64
   13548:	d2aff0ef          	jal	ra,12a72 <m16m>
   1354c:	100c                	addi	a1,sp,32
   1354e:	0088                	addi	a0,sp,64
   13550:	baaff0ef          	jal	ra,128fa <ecmpm>
   13554:	00a05f63          	blez	a0,13572 <ediv+0x15c>
   13558:	008c                	addi	a1,sp,64
   1355a:	850a                	mv	a0,sp
   1355c:	ceeff0ef          	jal	ra,12a4a <esubm>
   13560:	100c                	addi	a1,sp,32
   13562:	0088                	addi	a0,sp,64
   13564:	b96ff0ef          	jal	ra,128fa <ecmpm>
   13568:	0ea04163          	bgtz	a0,1364a <ediv+0x234>
   1356c:	347d                	addiw	s0,s0,-1
   1356e:	1442                	slli	s0,s0,0x30
   13570:	9041                	srli	s0,s0,0x30
   13572:	100c                	addi	a1,sp,32
   13574:	0088                	addi	a0,sp,64
   13576:	cd4ff0ef          	jal	ra,12a4a <esubm>
   1357a:	1008                	addi	a0,sp,32
   1357c:	008a1023          	sh	s0,0(s4)
   13580:	0a09                	addi	s4,s4,2
   13582:	c62ff0ef          	jal	ra,129e4 <eshup6>
   13586:	fb9a11e3          	bne	s4,s9,13528 <ediv+0x112>
   1358a:	4781                	li	a5,0
   1358c:	4581                	li	a1,0
   1358e:	4759                	li	a4,22
   13590:	1014                	addi	a3,sp,32
   13592:	96be                	add	a3,a3,a5
   13594:	0046d683          	lhu	a3,4(a3)
   13598:	0789                	addi	a5,a5,2
   1359a:	8dd5                	or	a1,a1,a3
   1359c:	fee79ae3          	bne	a5,a4,13590 <ediv+0x17a>
   135a0:	2581                	sext.w	a1,a1
   135a2:	00b035b3          	snez	a1,a1
   135a6:	101c                	addi	a5,sp,32
   135a8:	0009d703          	lhu	a4,0(s3)
   135ac:	0989                	addi	s3,s3,2
   135ae:	0789                	addi	a5,a5,2
   135b0:	fee79f23          	sh	a4,-2(a5)
   135b4:	ff3a1ae3          	bne	s4,s3,135a8 <ediv+0x192>
   135b8:	6691                	lui	a3,0x4
   135ba:	417484b3          	sub	s1,s1,s7
   135be:	16fd                	addi	a3,a3,-1
   135c0:	87d6                	mv	a5,s5
   135c2:	04000713          	li	a4,64
   135c6:	96a6                	add	a3,a3,s1
   135c8:	4601                	li	a2,0
   135ca:	1008                	addi	a0,sp,32
   135cc:	983ff0ef          	jal	ra,12f4e <emdnorm>
   135d0:	00015703          	lhu	a4,0(sp)
   135d4:	02015783          	lhu	a5,32(sp)
   135d8:	08f71163          	bne	a4,a5,1365a <ediv+0x244>
   135dc:	02011023          	sh	zero,32(sp)
   135e0:	85ca                	mv	a1,s2
   135e2:	1008                	addi	a0,sp,32
   135e4:	85fff0ef          	jal	ra,12e42 <emovo.isra.6>
   135e8:	bdb9                	j	13446 <ediv+0x30>
   135ea:	df898593          	addi	a1,s3,-520
   135ee:	8522                	mv	a0,s0
   135f0:	dd6ff0ef          	jal	ra,12bc6 <ecmp>
   135f4:	e80516e3          	bnez	a0,13480 <ediv+0x6a>
   135f8:	854a                	mv	a0,s2
   135fa:	829ff0ef          	jal	ra,12e22 <enan.constprop.12>
   135fe:	b5a1                	j	13446 <ediv+0x30>
   13600:	fd65                	bnez	a0,135f8 <ediv+0x1e2>
   13602:	854a                	mv	a0,s2
   13604:	aa4ff0ef          	jal	ra,128a8 <eclear>
   13608:	bd3d                	j	13446 <ediv+0x30>
   1360a:	8526                	mv	a0,s1
   1360c:	d00ff0ef          	jal	ra,12b0c <eisneg>
   13610:	84aa                	mv	s1,a0
   13612:	8522                	mv	a0,s0
   13614:	cf8ff0ef          	jal	ra,12b0c <eisneg>
   13618:	02a48663          	beq	s1,a0,13644 <ediv+0x22e>
   1361c:	77e1                	lui	a5,0xffff8
   1361e:	00f91923          	sh	a5,18(s2)
   13622:	854a                	mv	a0,s2
   13624:	e6aff0ef          	jal	ra,12c8e <einfin.isra.2>
   13628:	bd39                	j	13446 <ediv+0x30>
   1362a:	0789                	addi	a5,a5,2
   1362c:	e8e794e3          	bne	a5,a4,134b4 <ediv+0x9e>
   13630:	bfc9                	j	13602 <ediv+0x1ec>
   13632:	0789                	addi	a5,a5,2
   13634:	eae790e3          	bne	a5,a4,134d4 <ediv+0xbe>
   13638:	00015703          	lhu	a4,0(sp)
   1363c:	02015783          	lhu	a5,32(sp)
   13640:	fcf71ee3          	bne	a4,a5,1361c <ediv+0x206>
   13644:	00091923          	sh	zero,18(s2)
   13648:	bfe9                	j	13622 <ediv+0x20c>
   1364a:	3479                	addiw	s0,s0,-2
   1364c:	1442                	slli	s0,s0,0x30
   1364e:	008c                	addi	a1,sp,64
   13650:	850a                	mv	a0,sp
   13652:	9041                	srli	s0,s0,0x30
   13654:	bf6ff0ef          	jal	ra,12a4a <esubm>
   13658:	bf29                	j	13572 <ediv+0x15c>
   1365a:	57fd                	li	a5,-1
   1365c:	02f11023          	sh	a5,32(sp)
   13660:	b741                	j	135e0 <ediv+0x1ca>

0000000000013662 <_ldtoa_r>:
   13662:	db010113          	addi	sp,sp,-592
   13666:	ffe6                	sd	s9,504(sp)
   13668:	8cbe                	mv	s9,a5
   1366a:	09100793          	li	a5,145
   1366e:	e0ae                	sd	a1,64(sp)
   13670:	1782                	slli	a5,a5,0x20
   13672:	712c                	ld	a1,96(a0)
   13674:	17fd                	addi	a5,a5,-1
   13676:	24813023          	sd	s0,576(sp)
   1367a:	23413023          	sd	s4,544(sp)
   1367e:	21513c23          	sd	s5,536(sp)
   13682:	21713423          	sd	s7,520(sp)
   13686:	24113423          	sd	ra,584(sp)
   1368a:	22913c23          	sd	s1,568(sp)
   1368e:	23213823          	sd	s2,560(sp)
   13692:	23313423          	sd	s3,552(sp)
   13696:	21613823          	sd	s6,528(sp)
   1369a:	21813023          	sd	s8,512(sp)
   1369e:	fbea                	sd	s10,496(sp)
   136a0:	f7ee                	sd	s11,488(sp)
   136a2:	ec46                	sd	a7,24(sp)
   136a4:	e4b2                	sd	a2,72(sp)
   136a6:	eb3e                	sd	a5,400(sp)
   136a8:	8a2a                	mv	s4,a0
   136aa:	8bb6                	mv	s7,a3
   136ac:	8aba                	mv	s5,a4
   136ae:	8442                	mv	s0,a6
   136b0:	c999                	beqz	a1,136c6 <_ldtoa_r+0x64>
   136b2:	5538                	lw	a4,104(a0)
   136b4:	4785                	li	a5,1
   136b6:	00e797bb          	sllw	a5,a5,a4
   136ba:	c598                	sw	a4,8(a1)
   136bc:	c5dc                	sw	a5,12(a1)
   136be:	377000ef          	jal	ra,14234 <_Bfree>
   136c2:	060a3023          	sd	zero,96(s4)
   136c6:	0088                	addi	a0,sp,64
   136c8:	188c                	addi	a1,sp,112
   136ca:	fcaff0ef          	jal	ra,12e94 <e113toe.isra.8>
   136ce:	1888                	addi	a0,sp,112
   136d0:	c3cff0ef          	jal	ra,12b0c <eisneg>
   136d4:	cd4d                	beqz	a0,1378e <_ldtoa_r+0x12c>
   136d6:	4785                	li	a5,1
   136d8:	c01c                	sw	a5,0(s0)
   136da:	478d                	li	a5,3
   136dc:	0afb8c63          	beq	s7,a5,13794 <_ldtoa_r+0x132>
   136e0:	4951                	li	s2,20
   136e2:	000b8c63          	beqz	s7,136fa <_ldtoa_r+0x98>
   136e6:	fffa879b          	addiw	a5,s5,-1
   136ea:	02a00713          	li	a4,42
   136ee:	0007891b          	sext.w	s2,a5
   136f2:	00f75463          	ble	a5,a4,136fa <_ldtoa_r+0x98>
   136f6:	02a00913          	li	s2,42
   136fa:	19412783          	lw	a5,404(sp)
   136fe:	1888                	addi	a0,sp,112
   13700:	f03e                	sd	a5,32(sp)
   13702:	be4ff0ef          	jal	ra,12ae6 <eisnan>
   13706:	842a                	mv	s0,a0
   13708:	c941                	beqz	a0,13798 <_ldtoa_r+0x136>
   1370a:	0001a5b7          	lui	a1,0x1a
   1370e:	06058593          	addi	a1,a1,96 # 1a060 <emtens+0x108>
   13712:	0a88                	addi	a0,sp,336
   13714:	6409                	lui	s0,0x2
   13716:	652010ef          	jal	ra,14d68 <sprintf>
   1371a:	70f40413          	addi	s0,s0,1807 # 270f <main-0xd9a1>
   1371e:	5782                	lw	a5,32(sp)
   13720:	1888                	addi	a0,sp,112
   13722:	1a812023          	sw	s0,416(sp)
   13726:	18f12a23          	sw	a5,404(sp)
   1372a:	d40ff0ef          	jal	ra,12c6a <eisinf>
   1372e:	15010993          	addi	s3,sp,336
   13732:	e511                	bnez	a0,1373e <_ldtoa_r+0xdc>
   13734:	1888                	addi	a0,sp,112
   13736:	bb0ff0ef          	jal	ra,12ae6 <eisnan>
   1373a:	6e050e63          	beqz	a0,13e36 <_ldtoa_r+0x7d4>
   1373e:	6789                	lui	a5,0x2
   13740:	70f7879b          	addiw	a5,a5,1807
   13744:	00fca023          	sw	a5,0(s9)
   13748:	87ce                	mv	a5,s3
   1374a:	02000613          	li	a2,32
   1374e:	02d00693          	li	a3,45
   13752:	0007c703          	lbu	a4,0(a5) # 2000 <main-0xe0b0>
   13756:	72c70463          	beq	a4,a2,13e7e <_ldtoa_r+0x81c>
   1375a:	72d70263          	beq	a4,a3,13e7e <_ldtoa_r+0x81c>
   1375e:	844e                	mv	s0,s3
   13760:	0785                	addi	a5,a5,1
   13762:	fff7c703          	lbu	a4,-1(a5)
   13766:	00140693          	addi	a3,s0,1
   1376a:	fee68fa3          	sb	a4,-1(a3) # 3fff <main-0xc0b1>
   1376e:	70071b63          	bnez	a4,13e84 <_ldtoa_r+0x822>
   13772:	4709                	li	a4,2
   13774:	4785                	li	a5,1
   13776:	00eb8863          	beq	s7,a4,13786 <_ldtoa_r+0x124>
   1377a:	1a012783          	lw	a5,416(sp)
   1377e:	0127d363          	ble	s2,a5,13784 <_ldtoa_r+0x122>
   13782:	87ca                	mv	a5,s2
   13784:	2781                	sext.w	a5,a5
   13786:	03000693          	li	a3,48
   1378a:	7060006f          	j	13e90 <_ldtoa_r+0x82e>
   1378e:	00042023          	sw	zero,0(s0)
   13792:	b7a1                	j	136da <_ldtoa_r+0x78>
   13794:	87d6                	mv	a5,s5
   13796:	bf91                	j	136ea <_ldtoa_r+0x88>
   13798:	09000793          	li	a5,144
   1379c:	090c                	addi	a1,sp,144
   1379e:	1888                	addi	a0,sp,112
   137a0:	18f12a23          	sw	a5,404(sp)
   137a4:	914ff0ef          	jal	ra,128b8 <emov>
   137a8:	0a215783          	lhu	a5,162(sp)
   137ac:	e402                	sd	zero,8(sp)
   137ae:	0107971b          	slliw	a4,a5,0x10
   137b2:	4107571b          	sraiw	a4,a4,0x10
   137b6:	00075a63          	bgez	a4,137ca <_ldtoa_r+0x168>
   137ba:	6721                	lui	a4,0x8
   137bc:	177d                	addi	a4,a4,-1
   137be:	8ff9                	and	a5,a5,a4
   137c0:	0af11123          	sh	a5,162(sp)
   137c4:	67c1                	lui	a5,0x10
   137c6:	17fd                	addi	a5,a5,-1
   137c8:	e43e                	sd	a5,8(sp)
   137ca:	6b69                	lui	s6,0x1a
   137cc:	df8b0513          	addi	a0,s6,-520 # 19df8 <ezero>
   137d0:	190c                	addi	a1,sp,176
   137d2:	0561                	addi	a0,a0,24
   137d4:	8e4ff0ef          	jal	ra,128b8 <emov>
   137d8:	0a215703          	lhu	a4,162(sp)
   137dc:	64e9                	lui	s1,0x1a
   137de:	df8b0993          	addi	s3,s6,-520
   137e2:	e1048493          	addi	s1,s1,-496 # 19e10 <eone>
   137e6:	74071963          	bnez	a4,13f38 <_ldtoa_r+0x8d6>
   137ea:	091c                	addi	a5,sp,144
   137ec:	0a210713          	addi	a4,sp,162
   137f0:	0007d683          	lhu	a3,0(a5) # 10000 <main-0xb0>
   137f4:	e6e1                	bnez	a3,138bc <_ldtoa_r+0x25a>
   137f6:	0789                	addi	a5,a5,2
   137f8:	fef71ce3          	bne	a4,a5,137f0 <_ldtoa_r+0x18e>
   137fc:	198c                	addi	a1,sp,240
   137fe:	1908                	addi	a0,sp,176
   13800:	b2cff0ef          	jal	ra,12b2c <emovi>
   13804:	190c                	addi	a1,sp,176
   13806:	1988                	addi	a0,sp,240
   13808:	8d6ff0ef          	jal	ra,128de <emovz>
   1380c:	198c                	addi	a1,sp,240
   1380e:	0908                	addi	a0,sp,144
   13810:	b1cff0ef          	jal	ra,12b2c <emovi>
   13814:	090c                	addi	a1,sp,144
   13816:	1988                	addi	a0,sp,240
   13818:	8c6ff0ef          	jal	ra,128de <emovz>
   1381c:	0b10                	addi	a2,sp,400
   1381e:	090c                	addi	a1,sp,144
   13820:	1908                	addi	a0,sp,176
   13822:	993ff0ef          	jal	ra,131b4 <eiremain>
   13826:	1dc15483          	lhu	s1,476(sp)
   1382a:	e881                	bnez	s1,1383a <_ldtoa_r+0x1d8>
   1382c:	df8b0593          	addi	a1,s6,-520
   13830:	0908                	addi	a0,sp,144
   13832:	b94ff0ef          	jal	ra,12bc6 <ecmp>
   13836:	4c051463          	bnez	a0,13cfe <_ldtoa_r+0x69c>
   1383a:	67a2                	ld	a5,8(sp)
   1383c:	4e078b63          	beqz	a5,13d32 <_ldtoa_r+0x6d0>
   13840:	02d00793          	li	a5,45
   13844:	14f10823          	sb	a5,336(sp)
   13848:	478d                	li	a5,3
   1384a:	89ca                	mv	s3,s2
   1384c:	00fb9863          	bne	s7,a5,1385c <_ldtoa_r+0x1fa>
   13850:	008909bb          	addw	s3,s2,s0
   13854:	02a00793          	li	a5,42
   13858:	6f37cd63          	blt	a5,s3,13f52 <_ldtoa_r+0x8f0>
   1385c:	47a9                	li	a5,10
   1385e:	4cf49d63          	bne	s1,a5,13d38 <_ldtoa_r+0x6d6>
   13862:	03100793          	li	a5,49
   13866:	14f108a3          	sb	a5,337(sp)
   1386a:	02e00793          	li	a5,46
   1386e:	14f10923          	sb	a5,338(sp)
   13872:	15310c13          	addi	s8,sp,339
   13876:	01305963          	blez	s3,13888 <_ldtoa_r+0x226>
   1387a:	03000793          	li	a5,48
   1387e:	14f109a3          	sb	a5,339(sp)
   13882:	39fd                	addiw	s3,s3,-1
   13884:	15410c13          	addi	s8,sp,340
   13888:	2405                	addiw	s0,s0,1
   1388a:	4c09d163          	bgez	s3,13d4c <_ldtoa_r+0x6ea>
   1388e:	0001a5b7          	lui	a1,0x1a
   13892:	8622                	mv	a2,s0
   13894:	09058593          	addi	a1,a1,144 # 1a090 <emtens+0x138>
   13898:	8562                	mv	a0,s8
   1389a:	4ce010ef          	jal	ra,14d68 <sprintf>
   1389e:	b541                	j	1371e <_ldtoa_r+0xbc>
   138a0:	0001a5b7          	lui	a1,0x1a
   138a4:	07858593          	addi	a1,a1,120 # 1a078 <emtens+0x120>
   138a8:	b5ad                	j	13712 <_ldtoa_r+0xb0>
   138aa:	0a011783          	lh	a5,160(sp)
   138ae:	0007c763          	bltz	a5,138bc <_ldtoa_r+0x25a>
   138b2:	0001a5b7          	lui	a1,0x1a
   138b6:	08858593          	addi	a1,a1,136 # 1a088 <emtens+0x130>
   138ba:	bda1                	j	13712 <_ldtoa_r+0xb0>
   138bc:	090c                	addi	a1,sp,144
   138be:	8526                	mv	a0,s1
   138c0:	b06ff0ef          	jal	ra,12bc6 <ecmp>
   138c4:	dd05                	beqz	a0,137fc <_ldtoa_r+0x19a>
   138c6:	32055063          	bgez	a0,13be6 <_ldtoa_r+0x584>
   138ca:	098c                	addi	a1,sp,208
   138cc:	0908                	addi	a0,sp,144
   138ce:	febfe0ef          	jal	ra,128b8 <emov>
   138d2:	6791                	lui	a5,0x4
   138d4:	08e7879b          	addiw	a5,a5,142
   138d8:	0ef11123          	sh	a5,226(sp)
   138dc:	47c1                	li	a5,16
   138de:	e83e                	sd	a5,16(sp)
   138e0:	67a1                	lui	a5,0x8
   138e2:	17fd                	addi	a5,a5,-1
   138e4:	f43e                	sd	a5,40(sp)
   138e6:	77f1                	lui	a5,0xffffc
   138e8:	2789                	addiw	a5,a5,2
   138ea:	4d01                	li	s10,0
   138ec:	da3e                	sw	a5,52(sp)
   138ee:	67e9                	lui	a5,0x1a
   138f0:	ec878793          	addi	a5,a5,-312 # 19ec8 <etens+0xa0>
   138f4:	01a78533          	add	a0,a5,s10
   138f8:	0b14                	addi	a3,sp,400
   138fa:	1910                	addi	a2,sp,176
   138fc:	098c                	addi	a1,sp,208
   138fe:	b19ff0ef          	jal	ra,13416 <ediv>
   13902:	08ac                	addi	a1,sp,88
   13904:	1908                	addi	a0,sp,176
   13906:	fb3fe0ef          	jal	ra,128b8 <emov>
   1390a:	77a2                	ld	a5,40(sp)
   1390c:	06a15c03          	lhu	s8,106(sp)
   13910:	00fc76b3          	and	a3,s8,a5
   13914:	57d2                	lw	a5,52(sp)
   13916:	9ebd                	addw	a3,a3,a5
   13918:	02d04f63          	bgtz	a3,13956 <_ldtoa_r+0x2f4>
   1391c:	1988                	addi	a0,sp,240
   1391e:	f8bfe0ef          	jal	ra,128a8 <eclear>
   13922:	010c1c1b          	slliw	s8,s8,0x10
   13926:	410c5c1b          	sraiw	s8,s8,0x10
   1392a:	0c0c5063          	bgez	s8,139ea <_ldtoa_r+0x388>
   1392e:	4781                	li	a5,0
   13930:	08b8                	addi	a4,sp,88
   13932:	973e                	add	a4,a4,a5
   13934:	00075683          	lhu	a3,0(a4) # 8000 <main-0x80b0>
   13938:	1998                	addi	a4,sp,240
   1393a:	973e                	add	a4,a4,a5
   1393c:	00075703          	lhu	a4,0(a4)
   13940:	28e68e63          	beq	a3,a4,13bdc <_ldtoa_r+0x57a>
   13944:	8526                	mv	a0,s1
   13946:	9a0ff0ef          	jal	ra,12ae6 <eisnan>
   1394a:	c135                	beqz	a0,139ae <_ldtoa_r+0x34c>
   1394c:	198c                	addi	a1,sp,240
   1394e:	8526                	mv	a0,s1
   13950:	f69fe0ef          	jal	ra,128b8 <emov>
   13954:	a859                	j	139ea <_ldtoa_r+0x388>
   13956:	09000793          	li	a5,144
   1395a:	40d7873b          	subw	a4,a5,a3
   1395e:	198c                	addi	a1,sp,240
   13960:	08a8                	addi	a0,sp,88
   13962:	8dba                	mv	s11,a4
   13964:	fc3a                	sd	a4,56(sp)
   13966:	f53fe0ef          	jal	ra,128b8 <emov>
   1396a:	7762                	ld	a4,56(sp)
   1396c:	06e05f63          	blez	a4,139ea <_ldtoa_r+0x388>
   13970:	199c                	addi	a5,sp,240
   13972:	463d                	li	a2,15
   13974:	02e64863          	blt	a2,a4,139a4 <_ldtoa_r+0x342>
   13978:	004dd61b          	srliw	a2,s11,0x4
   1397c:	02061713          	slli	a4,a2,0x20
   13980:	199c                	addi	a5,sp,240
   13982:	837d                	srli	a4,a4,0x1f
   13984:	973e                	add	a4,a4,a5
   13986:	57c1                	li	a5,-16
   13988:	02c787bb          	mulw	a5,a5,a2
   1398c:	00075683          	lhu	a3,0(a4)
   13990:	01b787bb          	addw	a5,a5,s11
   13994:	0786                	slli	a5,a5,0x1
   13996:	97ce                	add	a5,a5,s3
   13998:	1387d783          	lhu	a5,312(a5)
   1399c:	8ff5                	and	a5,a5,a3
   1399e:	00f71023          	sh	a5,0(a4)
   139a2:	b741                	j	13922 <_ldtoa_r+0x2c0>
   139a4:	00079023          	sh	zero,0(a5)
   139a8:	3741                	addiw	a4,a4,-16
   139aa:	0789                	addi	a5,a5,2
   139ac:	b7e1                	j	13974 <_ldtoa_r+0x312>
   139ae:	1988                	addi	a0,sp,240
   139b0:	936ff0ef          	jal	ra,12ae6 <eisnan>
   139b4:	c501                	beqz	a0,139bc <_ldtoa_r+0x35a>
   139b6:	198c                	addi	a1,sp,240
   139b8:	852e                	mv	a0,a1
   139ba:	bf59                	j	13950 <_ldtoa_r+0x2ee>
   139bc:	8526                	mv	a0,s1
   139be:	aacff0ef          	jal	ra,12c6a <eisinf>
   139c2:	8daa                	mv	s11,a0
   139c4:	1988                	addi	a0,sp,240
   139c6:	aa4ff0ef          	jal	ra,12c6a <eisinf>
   139ca:	8c2a                	mv	s8,a0
   139cc:	0e0d8963          	beqz	s11,13abe <_ldtoa_r+0x45c>
   139d0:	c961                	beqz	a0,13aa0 <_ldtoa_r+0x43e>
   139d2:	8526                	mv	a0,s1
   139d4:	938ff0ef          	jal	ra,12b0c <eisneg>
   139d8:	8c2a                	mv	s8,a0
   139da:	1988                	addi	a0,sp,240
   139dc:	930ff0ef          	jal	ra,12b0c <eisneg>
   139e0:	0cac1063          	bne	s8,a0,13aa0 <_ldtoa_r+0x43e>
   139e4:	1988                	addi	a0,sp,240
   139e6:	c3cff0ef          	jal	ra,12e22 <enan.constprop.12>
   139ea:	4781                	li	a5,0
   139ec:	1918                	addi	a4,sp,176
   139ee:	973e                	add	a4,a4,a5
   139f0:	00075683          	lhu	a3,0(a4)
   139f4:	1998                	addi	a4,sp,240
   139f6:	973e                	add	a4,a4,a5
   139f8:	00075703          	lhu	a4,0(a4)
   139fc:	00e69c63          	bne	a3,a4,13a14 <_ldtoa_r+0x3b2>
   13a00:	0789                	addi	a5,a5,2
   13a02:	4749                	li	a4,18
   13a04:	fee794e3          	bne	a5,a4,139ec <_ldtoa_r+0x38a>
   13a08:	098c                	addi	a1,sp,208
   13a0a:	1908                	addi	a0,sp,176
   13a0c:	eadfe0ef          	jal	ra,128b8 <emov>
   13a10:	47c2                	lw	a5,16(sp)
   13a12:	9c3d                	addw	s0,s0,a5
   13a14:	67c2                	ld	a5,16(sp)
   13a16:	0d51                	addi	s10,s10,20
   13a18:	8385                	srli	a5,a5,0x1
   13a1a:	e83e                	sd	a5,16(sp)
   13a1c:	06400793          	li	a5,100
   13a20:	ecfd17e3          	bne	s10,a5,138ee <_ldtoa_r+0x28c>
   13a24:	0e215783          	lhu	a5,226(sp)
   13a28:	0a215703          	lhu	a4,162(sp)
   13a2c:	090c                	addi	a1,sp,144
   13a2e:	0988                	addi	a0,sp,208
   13a30:	9fb9                	addw	a5,a5,a4
   13a32:	7771                	lui	a4,0xffffc
   13a34:	f727071b          	addiw	a4,a4,-142
   13a38:	9fb9                	addw	a5,a5,a4
   13a3a:	0ef11123          	sh	a5,226(sp)
   13a3e:	e7bfe0ef          	jal	ra,128b8 <emov>
   13a42:	8526                	mv	a0,s1
   13a44:	190c                	addi	a1,sp,176
   13a46:	e73fe0ef          	jal	ra,128b8 <emov>
   13a4a:	4481                	li	s1,0
   13a4c:	6d05                	lui	s10,0x1
   13a4e:	12098993          	addi	s3,s3,288
   13a52:	10400d93          	li	s11,260
   13a56:	67e9                	lui	a5,0x1a
   13a58:	e2878793          	addi	a5,a5,-472 # 19e28 <etens>
   13a5c:	098c                	addi	a1,sp,208
   13a5e:	854e                	mv	a0,s3
   13a60:	00f48c33          	add	s8,s1,a5
   13a64:	962ff0ef          	jal	ra,12bc6 <ecmp>
   13a68:	d8a04ae3          	bgtz	a0,137fc <_ldtoa_r+0x19a>
   13a6c:	098c                	addi	a1,sp,208
   13a6e:	8562                	mv	a0,s8
   13a70:	956ff0ef          	jal	ra,12bc6 <ecmp>
   13a74:	02a04063          	bgtz	a0,13a94 <_ldtoa_r+0x432>
   13a78:	0990                	addi	a2,sp,208
   13a7a:	85b2                	mv	a1,a2
   13a7c:	0b14                	addi	a3,sp,400
   13a7e:	8562                	mv	a0,s8
   13a80:	997ff0ef          	jal	ra,13416 <ediv>
   13a84:	1910                	addi	a2,sp,176
   13a86:	0b14                	addi	a3,sp,400
   13a88:	85b2                	mv	a1,a2
   13a8a:	8562                	mv	a0,s8
   13a8c:	fbcff0ef          	jal	ra,13248 <emul>
   13a90:	008d043b          	addw	s0,s10,s0
   13a94:	04d1                	addi	s1,s1,20
   13a96:	001d5d13          	srli	s10,s10,0x1
   13a9a:	fbb49ee3          	bne	s1,s11,13a56 <_ldtoa_r+0x3f4>
   13a9e:	bbb9                	j	137fc <_ldtoa_r+0x19a>
   13aa0:	8526                	mv	a0,s1
   13aa2:	198c                	addi	a1,sp,240
   13aa4:	e15fe0ef          	jal	ra,128b8 <emov>
   13aa8:	1988                	addi	a0,sp,240
   13aaa:	83cff0ef          	jal	ra,12ae6 <eisnan>
   13aae:	fd15                	bnez	a0,139ea <_ldtoa_r+0x388>
   13ab0:	10215783          	lhu	a5,258(sp)
   13ab4:	7761                	lui	a4,0xffff8
   13ab6:	8fb9                	xor	a5,a5,a4
   13ab8:	10f11123          	sh	a5,258(sp)
   13abc:	b73d                	j	139ea <_ldtoa_r+0x388>
   13abe:	ee051ce3          	bnez	a0,139b6 <_ldtoa_r+0x354>
   13ac2:	0a0c                	addi	a1,sp,272
   13ac4:	8526                	mv	a0,s1
   13ac6:	866ff0ef          	jal	ra,12b2c <emovi>
   13aca:	1a0c                	addi	a1,sp,304
   13acc:	1988                	addi	a0,sp,240
   13ace:	85eff0ef          	jal	ra,12b2c <emovi>
   13ad2:	11015703          	lhu	a4,272(sp)
   13ad6:	13215d83          	lhu	s11,306(sp)
   13ada:	11215783          	lhu	a5,274(sp)
   13ade:	fff74713          	not	a4,a4
   13ae2:	1742                	slli	a4,a4,0x30
   13ae4:	9341                	srli	a4,a4,0x30
   13ae6:	10e11823          	sh	a4,272(sp)
   13aea:	41b787b3          	sub	a5,a5,s11
   13aee:	06f05363          	blez	a5,13b54 <_ldtoa_r+0x4f2>
   13af2:	0a8c                	addi	a1,sp,336
   13af4:	1a08                	addi	a0,sp,304
   13af6:	fc3e                	sd	a5,56(sp)
   13af8:	de7fe0ef          	jal	ra,128de <emovz>
   13afc:	1a0c                	addi	a1,sp,304
   13afe:	0a08                	addi	a0,sp,272
   13b00:	ddffe0ef          	jal	ra,128de <emovz>
   13b04:	0a0c                	addi	a1,sp,272
   13b06:	0a88                	addi	a0,sp,336
   13b08:	dd7fe0ef          	jal	ra,128de <emovz>
   13b0c:	77e2                	ld	a5,56(sp)
   13b0e:	13215d83          	lhu	s11,306(sp)
   13b12:	40f007b3          	neg	a5,a5
   13b16:	f6f00713          	li	a4,-145
   13b1a:	06e7c763          	blt	a5,a4,13b88 <_ldtoa_r+0x526>
   13b1e:	85be                	mv	a1,a5
   13b20:	0a08                	addi	a0,sp,272
   13b22:	98aff0ef          	jal	ra,12cac <eshift.part.3>
   13b26:	882a                	mv	a6,a0
   13b28:	11015703          	lhu	a4,272(sp)
   13b2c:	13015783          	lhu	a5,304(sp)
   13b30:	fc42                	sd	a6,56(sp)
   13b32:	1a0c                	addi	a1,sp,304
   13b34:	0a08                	addi	a0,sp,272
   13b36:	08f71f63          	bne	a4,a5,13bd4 <_ldtoa_r+0x572>
   13b3a:	ee9fe0ef          	jal	ra,12a22 <eaddm>
   13b3e:	7862                	ld	a6,56(sp)
   13b40:	0b1c                	addi	a5,sp,400
   13b42:	04000713          	li	a4,64
   13b46:	86ee                	mv	a3,s11
   13b48:	8662                	mv	a2,s8
   13b4a:	85c2                	mv	a1,a6
   13b4c:	1a08                	addi	a0,sp,304
   13b4e:	c00ff0ef          	jal	ra,12f4e <emdnorm>
   13b52:	a81d                	j	13b88 <_ldtoa_r+0x526>
   13b54:	f3e9                	bnez	a5,13b16 <_ldtoa_r+0x4b4>
   13b56:	1a0c                	addi	a1,sp,304
   13b58:	0a08                	addi	a0,sp,272
   13b5a:	fc3a                	sd	a4,56(sp)
   13b5c:	d9ffe0ef          	jal	ra,128fa <ecmpm>
   13b60:	e929                	bnez	a0,13bb2 <_ldtoa_r+0x550>
   13b62:	13015783          	lhu	a5,304(sp)
   13b66:	7762                	ld	a4,56(sp)
   13b68:	00e78663          	beq	a5,a4,13b74 <_ldtoa_r+0x512>
   13b6c:	1988                	addi	a0,sp,240
   13b6e:	d3bfe0ef          	jal	ra,128a8 <eclear>
   13b72:	bda5                	j	139ea <_ldtoa_r+0x388>
   13b74:	000d9f63          	bnez	s11,13b92 <_ldtoa_r+0x530>
   13b78:	13611703          	lh	a4,310(sp)
   13b7c:	4781                	li	a5,0
   13b7e:	00074b63          	bltz	a4,13b94 <_ldtoa_r+0x532>
   13b82:	1a08                	addi	a0,sp,304
   13b84:	dd9fe0ef          	jal	ra,1295c <eshup1>
   13b88:	198c                	addi	a1,sp,240
   13b8a:	1a08                	addi	a0,sp,304
   13b8c:	ab6ff0ef          	jal	ra,12e42 <emovo.isra.6>
   13b90:	bda9                	j	139ea <_ldtoa_r+0x388>
   13b92:	4781                	li	a5,0
   13b94:	4759                	li	a4,22
   13b96:	1a14                	addi	a3,sp,304
   13b98:	00f68633          	add	a2,a3,a5
   13b9c:	00265603          	lhu	a2,2(a2)
   13ba0:	c609                	beqz	a2,13baa <_ldtoa_r+0x548>
   13ba2:	0d85                	addi	s11,s11,1
   13ba4:	13b11923          	sh	s11,306(sp)
   13ba8:	b7c5                	j	13b88 <_ldtoa_r+0x526>
   13baa:	0789                	addi	a5,a5,2
   13bac:	fee795e3          	bne	a5,a4,13b96 <_ldtoa_r+0x534>
   13bb0:	bfd5                	j	13ba4 <_ldtoa_r+0x542>
   13bb2:	4801                	li	a6,0
   13bb4:	f6a05ae3          	blez	a0,13b28 <_ldtoa_r+0x4c6>
   13bb8:	0a8c                	addi	a1,sp,336
   13bba:	1a08                	addi	a0,sp,304
   13bbc:	d23fe0ef          	jal	ra,128de <emovz>
   13bc0:	1a0c                	addi	a1,sp,304
   13bc2:	0a08                	addi	a0,sp,272
   13bc4:	d1bfe0ef          	jal	ra,128de <emovz>
   13bc8:	0a0c                	addi	a1,sp,272
   13bca:	0a88                	addi	a0,sp,336
   13bcc:	d13fe0ef          	jal	ra,128de <emovz>
   13bd0:	8862                	mv	a6,s8
   13bd2:	bf99                	j	13b28 <_ldtoa_r+0x4c6>
   13bd4:	e77fe0ef          	jal	ra,12a4a <esubm>
   13bd8:	4c05                	li	s8,1
   13bda:	b795                	j	13b3e <_ldtoa_r+0x4dc>
   13bdc:	0789                	addi	a5,a5,2
   13bde:	4749                	li	a4,18
   13be0:	d4e798e3          	bne	a5,a4,13930 <_ldtoa_r+0x2ce>
   13be4:	b519                	j	139ea <_ldtoa_r+0x388>
   13be6:	0a215783          	lhu	a5,162(sp)
   13bea:	12098c13          	addi	s8,s3,288
   13bee:	cfad                	beqz	a5,13c68 <_ldtoa_r+0x606>
   13bf0:	198c                	addi	a1,sp,240
   13bf2:	0908                	addi	a0,sp,144
   13bf4:	6c11                	lui	s8,0x4
   13bf6:	f37fe0ef          	jal	ra,12b2c <emovi>
   13bfa:	1c79                	addi	s8,s8,-2
   13bfc:	fd500d13          	li	s10,-43
   13c00:	10815783          	lhu	a5,264(sp)
   13c04:	8b9d                	andi	a5,a5,7
   13c06:	e7a9                	bnez	a5,13c50 <_ldtoa_r+0x5ee>
   13c08:	098c                	addi	a1,sp,208
   13c0a:	1988                	addi	a0,sp,240
   13c0c:	cd3fe0ef          	jal	ra,128de <emovz>
   13c10:	0988                	addi	a0,sp,208
   13c12:	d13fe0ef          	jal	ra,12924 <eshdn1>
   13c16:	0988                	addi	a0,sp,208
   13c18:	d0dfe0ef          	jal	ra,12924 <eshdn1>
   13c1c:	098c                	addi	a1,sp,208
   13c1e:	1988                	addi	a0,sp,240
   13c20:	e03fe0ef          	jal	ra,12a22 <eaddm>
   13c24:	0d215783          	lhu	a5,210(sp)
   13c28:	278d                	addiw	a5,a5,3
   13c2a:	0cf11923          	sh	a5,210(sp)
   13c2e:	0d415783          	lhu	a5,212(sp)
   13c32:	efdd                	bnez	a5,13cf0 <_ldtoa_r+0x68e>
   13c34:	0e815783          	lhu	a5,232(sp)
   13c38:	ef81                	bnez	a5,13c50 <_ldtoa_r+0x5ee>
   13c3a:	0d215783          	lhu	a5,210(sp)
   13c3e:	00fc6963          	bltu	s8,a5,13c50 <_ldtoa_r+0x5ee>
   13c42:	198c                	addi	a1,sp,240
   13c44:	0988                	addi	a0,sp,208
   13c46:	347d                	addiw	s0,s0,-1
   13c48:	c97fe0ef          	jal	ra,128de <emovz>
   13c4c:	fba41ae3          	bne	s0,s10,13c00 <_ldtoa_r+0x59e>
   13c50:	090c                	addi	a1,sp,144
   13c52:	1988                	addi	a0,sp,240
   13c54:	9eeff0ef          	jal	ra,12e42 <emovo.isra.6>
   13c58:	a821                	j	13c70 <_ldtoa_r+0x60e>
   13c5a:	0910                	addi	a2,sp,144
   13c5c:	0b14                	addi	a3,sp,400
   13c5e:	85b2                	mv	a1,a2
   13c60:	8562                	mv	a0,s8
   13c62:	de6ff0ef          	jal	ra,13248 <emul>
   13c66:	347d                	addiw	s0,s0,-1
   13c68:	0a011783          	lh	a5,160(sp)
   13c6c:	fe07d7e3          	bgez	a5,13c5a <_ldtoa_r+0x5f8>
   13c70:	198c                	addi	a1,sp,240
   13c72:	0908                	addi	a0,sp,144
   13c74:	c45fe0ef          	jal	ra,128b8 <emov>
   13c78:	190c                	addi	a1,sp,176
   13c7a:	8526                	mv	a0,s1
   13c7c:	c3dfe0ef          	jal	ra,128b8 <emov>
   13c80:	16098793          	addi	a5,s3,352
   13c84:	4d01                	li	s10,0
   13c86:	7c7d                	lui	s8,0xfffff
   13c88:	e83e                	sd	a5,16(sp)
   13c8a:	4d89                	li	s11,2
   13c8c:	67e9                	lui	a5,0x1a
   13c8e:	e2878793          	addi	a5,a5,-472 # 19e28 <etens>
   13c92:	01a789b3          	add	s3,a5,s10
   13c96:	67c2                	ld	a5,16(sp)
   13c98:	198c                	addi	a1,sp,240
   13c9a:	8526                	mv	a0,s1
   13c9c:	01a78733          	add	a4,a5,s10
   13ca0:	f43a                	sd	a4,40(sp)
   13ca2:	f25fe0ef          	jal	ra,12bc6 <ecmp>
   13ca6:	7722                	ld	a4,40(sp)
   13ca8:	02a05d63          	blez	a0,13ce2 <_ldtoa_r+0x680>
   13cac:	198c                	addi	a1,sp,240
   13cae:	853a                	mv	a0,a4
   13cb0:	f17fe0ef          	jal	ra,12bc6 <ecmp>
   13cb4:	02054063          	bltz	a0,13cd4 <_ldtoa_r+0x672>
   13cb8:	1990                	addi	a2,sp,240
   13cba:	85b2                	mv	a1,a2
   13cbc:	0b14                	addi	a3,sp,400
   13cbe:	854e                	mv	a0,s3
   13cc0:	d88ff0ef          	jal	ra,13248 <emul>
   13cc4:	1910                	addi	a2,sp,176
   13cc6:	0b14                	addi	a3,sp,400
   13cc8:	85b2                	mv	a1,a2
   13cca:	854e                	mv	a0,s3
   13ccc:	d7cff0ef          	jal	ra,13248 <emul>
   13cd0:	008c043b          	addw	s0,s8,s0
   13cd4:	0d51                	addi	s10,s10,20
   13cd6:	10400793          	li	a5,260
   13cda:	03bc4c3b          	divw	s8,s8,s11
   13cde:	fafd17e3          	bne	s10,a5,13c8c <_ldtoa_r+0x62a>
   13ce2:	1910                	addi	a2,sp,176
   13ce4:	0b14                	addi	a3,sp,400
   13ce6:	85a6                	mv	a1,s1
   13ce8:	8532                	mv	a0,a2
   13cea:	f2cff0ef          	jal	ra,13416 <ediv>
   13cee:	b639                	j	137fc <_ldtoa_r+0x19a>
   13cf0:	0988                	addi	a0,sp,208
   13cf2:	c33fe0ef          	jal	ra,12924 <eshdn1>
   13cf6:	0d215783          	lhu	a5,210(sp)
   13cfa:	2785                	addiw	a5,a5,1
   13cfc:	b73d                	j	13c2a <_ldtoa_r+0x5c8>
   13cfe:	0908                	addi	a0,sp,144
   13d00:	c5dfe0ef          	jal	ra,1295c <eshup1>
   13d04:	098c                	addi	a1,sp,208
   13d06:	0908                	addi	a0,sp,144
   13d08:	bd7fe0ef          	jal	ra,128de <emovz>
   13d0c:	0988                	addi	a0,sp,208
   13d0e:	c4ffe0ef          	jal	ra,1295c <eshup1>
   13d12:	0988                	addi	a0,sp,208
   13d14:	c49fe0ef          	jal	ra,1295c <eshup1>
   13d18:	090c                	addi	a1,sp,144
   13d1a:	0988                	addi	a0,sp,208
   13d1c:	d07fe0ef          	jal	ra,12a22 <eaddm>
   13d20:	0b10                	addi	a2,sp,400
   13d22:	090c                	addi	a1,sp,144
   13d24:	1908                	addi	a0,sp,176
   13d26:	c8eff0ef          	jal	ra,131b4 <eiremain>
   13d2a:	347d                	addiw	s0,s0,-1
   13d2c:	1dc15483          	lhu	s1,476(sp)
   13d30:	bced                	j	1382a <_ldtoa_r+0x1c8>
   13d32:	02000793          	li	a5,32
   13d36:	b639                	j	13844 <_ldtoa_r+0x1e2>
   13d38:	0304849b          	addiw	s1,s1,48
   13d3c:	02e00793          	li	a5,46
   13d40:	149108a3          	sb	s1,337(sp)
   13d44:	14f10923          	sb	a5,338(sp)
   13d48:	15310c13          	addi	s8,sp,339
   13d4c:	84e2                	mv	s1,s8
   13d4e:	418487bb          	subw	a5,s1,s8
   13d52:	04f9d063          	ble	a5,s3,13d92 <_ldtoa_r+0x730>
   13d56:	1dc15783          	lhu	a5,476(sp)
   13d5a:	4711                	li	a4,4
   13d5c:	fff48c13          	addi	s8,s1,-1
   13d60:	b2f757e3          	ble	a5,a4,1388e <_ldtoa_r+0x22c>
   13d64:	4715                	li	a4,5
   13d66:	06e78463          	beq	a5,a4,13dce <_ldtoa_r+0x76c>
   13d6a:	87e2                	mv	a5,s8
   13d6c:	02e00613          	li	a2,46
   13d70:	03800593          	li	a1,56
   13d74:	03000693          	li	a3,48
   13d78:	17fd                	addi	a5,a5,-1
   13d7a:	0007c703          	lbu	a4,0(a5)
   13d7e:	07f77713          	andi	a4,a4,127
   13d82:	0809d163          	bgez	s3,13e04 <_ldtoa_r+0x7a2>
   13d86:	03100713          	li	a4,49
   13d8a:	00e78023          	sb	a4,0(a5)
   13d8e:	2405                	addiw	s0,s0,1
   13d90:	bcfd                	j	1388e <_ldtoa_r+0x22c>
   13d92:	0908                	addi	a0,sp,144
   13d94:	bc9fe0ef          	jal	ra,1295c <eshup1>
   13d98:	098c                	addi	a1,sp,208
   13d9a:	0908                	addi	a0,sp,144
   13d9c:	b43fe0ef          	jal	ra,128de <emovz>
   13da0:	0988                	addi	a0,sp,208
   13da2:	bbbfe0ef          	jal	ra,1295c <eshup1>
   13da6:	0988                	addi	a0,sp,208
   13da8:	bb5fe0ef          	jal	ra,1295c <eshup1>
   13dac:	090c                	addi	a1,sp,144
   13dae:	0988                	addi	a0,sp,208
   13db0:	c73fe0ef          	jal	ra,12a22 <eaddm>
   13db4:	0b10                	addi	a2,sp,400
   13db6:	090c                	addi	a1,sp,144
   13db8:	1908                	addi	a0,sp,176
   13dba:	bfaff0ef          	jal	ra,131b4 <eiremain>
   13dbe:	1dc14783          	lbu	a5,476(sp)
   13dc2:	0485                	addi	s1,s1,1
   13dc4:	0307879b          	addiw	a5,a5,48
   13dc8:	fef48fa3          	sb	a5,-1(s1)
   13dcc:	b749                	j	13d4e <_ldtoa_r+0x6ec>
   13dce:	190c                	addi	a1,sp,176
   13dd0:	0908                	addi	a0,sp,144
   13dd2:	870ff0ef          	jal	ra,12e42 <emovo.isra.6>
   13dd6:	df8b0593          	addi	a1,s6,-520
   13dda:	1908                	addi	a0,sp,176
   13ddc:	debfe0ef          	jal	ra,12bc6 <ecmp>
   13de0:	f549                	bnez	a0,13d6a <_ldtoa_r+0x708>
   13de2:	aa09c6e3          	bltz	s3,1388e <_ldtoa_r+0x22c>
   13de6:	ffe4c783          	lbu	a5,-2(s1)
   13dea:	fd278793          	addi	a5,a5,-46
   13dee:	0017b793          	seqz	a5,a5
   13df2:	fff7c793          	not	a5,a5
   13df6:	97e2                	add	a5,a5,s8
   13df8:	0007c783          	lbu	a5,0(a5)
   13dfc:	8b85                	andi	a5,a5,1
   13dfe:	a80788e3          	beqz	a5,1388e <_ldtoa_r+0x22c>
   13e02:	b7a5                	j	13d6a <_ldtoa_r+0x708>
   13e04:	02c71063          	bne	a4,a2,13e24 <_ldtoa_r+0x7c2>
   13e08:	fff7c703          	lbu	a4,-1(a5)
   13e0c:	03800693          	li	a3,56
   13e10:	00e6e663          	bltu	a3,a4,13e1c <_ldtoa_r+0x7ba>
   13e14:	2705                	addiw	a4,a4,1
   13e16:	fee78fa3          	sb	a4,-1(a5)
   13e1a:	bc95                	j	1388e <_ldtoa_r+0x22c>
   13e1c:	2405                	addiw	s0,s0,1
   13e1e:	03100713          	li	a4,49
   13e22:	bfd5                	j	13e16 <_ldtoa_r+0x7b4>
   13e24:	00e5e663          	bltu	a1,a4,13e30 <_ldtoa_r+0x7ce>
   13e28:	2705                	addiw	a4,a4,1
   13e2a:	00e78023          	sb	a4,0(a5)
   13e2e:	b485                	j	1388e <_ldtoa_r+0x22c>
   13e30:	00d78023          	sb	a3,0(a5)
   13e34:	b791                	j	13d78 <_ldtoa_r+0x716>
   13e36:	2405                	addiw	s0,s0,1
   13e38:	008ca023          	sw	s0,0(s9)
   13e3c:	87ce                	mv	a5,s3
   13e3e:	02e00693          	li	a3,46
   13e42:	0007c703          	lbu	a4,0(a5)
   13e46:	e701                	bnez	a4,13e4e <_ldtoa_r+0x7ec>
   13e48:	04500713          	li	a4,69
   13e4c:	a839                	j	13e6a <_ldtoa_r+0x808>
   13e4e:	00d70963          	beq	a4,a3,13e60 <_ldtoa_r+0x7fe>
   13e52:	0785                	addi	a5,a5,1
   13e54:	b7fd                	j	13e42 <_ldtoa_r+0x7e0>
   13e56:	0017c703          	lbu	a4,1(a5)
   13e5a:	0785                	addi	a5,a5,1
   13e5c:	fee78fa3          	sb	a4,-1(a5)
   13e60:	0007c703          	lbu	a4,0(a5)
   13e64:	fb6d                	bnez	a4,13e56 <_ldtoa_r+0x7f4>
   13e66:	b7cd                	j	13e48 <_ldtoa_r+0x7e6>
   13e68:	17fd                	addi	a5,a5,-1
   13e6a:	0007c683          	lbu	a3,0(a5)
   13e6e:	00e68463          	beq	a3,a4,13e76 <_ldtoa_r+0x814>
   13e72:	fef9ebe3          	bltu	s3,a5,13e68 <_ldtoa_r+0x806>
   13e76:	00078023          	sb	zero,0(a5)
   13e7a:	8cfff06f          	j	13748 <_ldtoa_r+0xe6>
   13e7e:	0785                	addi	a5,a5,1
   13e80:	8d3ff06f          	j	13752 <_ldtoa_r+0xf0>
   13e84:	8436                	mv	s0,a3
   13e86:	8dbff06f          	j	13760 <_ldtoa_r+0xfe>
   13e8a:	147d                	addi	s0,s0,-1
   13e8c:	00040023          	sb	zero,0(s0)
   13e90:	fff44703          	lbu	a4,-1(s0)
   13e94:	00d71663          	bne	a4,a3,13ea0 <_ldtoa_r+0x83e>
   13e98:	41340733          	sub	a4,s0,s3
   13e9c:	fee7c7e3          	blt	a5,a4,13e8a <_ldtoa_r+0x828>
   13ea0:	478d                	li	a5,3
   13ea2:	0cfb9963          	bne	s7,a5,13f74 <_ldtoa_r+0x912>
   13ea6:	1a012783          	lw	a5,416(sp)
   13eaa:	0127893b          	addw	s2,a5,s2
   13eae:	00095763          	bgez	s2,13ebc <_ldtoa_r+0x85a>
   13eb2:	14010823          	sb	zero,336(sp)
   13eb6:	000ca023          	sw	zero,0(s9)
   13eba:	844e                	mv	s0,s3
   13ebc:	000ca783          	lw	a5,0(s9)
   13ec0:	01578abb          	addw	s5,a5,s5
   13ec4:	2a8d                	addiw	s5,s5,3
   13ec6:	060a2423          	sw	zero,104(s4)
   13eca:	4791                	li	a5,4
   13ecc:	01c78713          	addi	a4,a5,28
   13ed0:	068a2583          	lw	a1,104(s4)
   13ed4:	04eafc63          	bleu	a4,s5,13f2c <_ldtoa_r+0x8ca>
   13ed8:	8552                	mv	a0,s4
   13eda:	2f6000ef          	jal	ra,141d0 <_Balloc>
   13ede:	06aa3023          	sd	a0,96(s4)
   13ee2:	85ce                	mv	a1,s3
   13ee4:	84aa                	mv	s1,a0
   13ee6:	078010ef          	jal	ra,14f5e <strcpy>
   13eea:	67e2                	ld	a5,24(sp)
   13eec:	c789                	beqz	a5,13ef6 <_ldtoa_r+0x894>
   13eee:	41340433          	sub	s0,s0,s3
   13ef2:	9426                	add	s0,s0,s1
   13ef4:	e380                	sd	s0,0(a5)
   13ef6:	24813083          	ld	ra,584(sp)
   13efa:	24013403          	ld	s0,576(sp)
   13efe:	8526                	mv	a0,s1
   13f00:	23013903          	ld	s2,560(sp)
   13f04:	23813483          	ld	s1,568(sp)
   13f08:	22813983          	ld	s3,552(sp)
   13f0c:	22013a03          	ld	s4,544(sp)
   13f10:	21813a83          	ld	s5,536(sp)
   13f14:	21013b03          	ld	s6,528(sp)
   13f18:	20813b83          	ld	s7,520(sp)
   13f1c:	20013c03          	ld	s8,512(sp)
   13f20:	7cfe                	ld	s9,504(sp)
   13f22:	7d5e                	ld	s10,496(sp)
   13f24:	7dbe                	ld	s11,488(sp)
   13f26:	25010113          	addi	sp,sp,592
   13f2a:	8082                	ret
   13f2c:	2585                	addiw	a1,a1,1
   13f2e:	06ba2423          	sw	a1,104(s4)
   13f32:	0017979b          	slliw	a5,a5,0x1
   13f36:	bf59                	j	13ecc <_ldtoa_r+0x86a>
   13f38:	67a1                	lui	a5,0x8
   13f3a:	17fd                	addi	a5,a5,-1
   13f3c:	96f717e3          	bne	a4,a5,138aa <_ldtoa_r+0x248>
   13f40:	67a2                	ld	a5,8(sp)
   13f42:	94078fe3          	beqz	a5,138a0 <_ldtoa_r+0x23e>
   13f46:	0001a5b7          	lui	a1,0x1a
   13f4a:	06858593          	addi	a1,a1,104 # 1a068 <emtens+0x110>
   13f4e:	fc4ff06f          	j	13712 <_ldtoa_r+0xb0>
   13f52:	47a9                	li	a5,10
   13f54:	02a00993          	li	s3,42
   13f58:	def490e3          	bne	s1,a5,13d38 <_ldtoa_r+0x6d6>
   13f5c:	03100793          	li	a5,49
   13f60:	14f108a3          	sb	a5,337(sp)
   13f64:	02e00793          	li	a5,46
   13f68:	14f10923          	sb	a5,338(sp)
   13f6c:	02a00993          	li	s3,42
   13f70:	90bff06f          	j	1387a <_ldtoa_r+0x218>
   13f74:	2aa5                	addiw	s5,s5,9
   13f76:	bf81                	j	13ec6 <_ldtoa_r+0x864>

0000000000013f78 <_ldcheck>:
   13f78:	611c                	ld	a5,0(a0)
   13f7a:	7139                	addi	sp,sp,-64
   13f7c:	080c                	addi	a1,sp,16
   13f7e:	e03e                	sd	a5,0(sp)
   13f80:	651c                	ld	a5,8(a0)
   13f82:	850a                	mv	a0,sp
   13f84:	fc06                	sd	ra,56(sp)
   13f86:	e43e                	sd	a5,8(sp)
   13f88:	f0dfe0ef          	jal	ra,12e94 <e113toe.isra.8>
   13f8c:	02215783          	lhu	a5,34(sp)
   13f90:	4501                	li	a0,0
   13f92:	fff7c793          	not	a5,a5
   13f96:	03179713          	slli	a4,a5,0x31
   13f9a:	e719                	bnez	a4,13fa8 <_ldcheck+0x30>
   13f9c:	0808                	addi	a0,sp,16
   13f9e:	b49fe0ef          	jal	ra,12ae6 <eisnan>
   13fa2:	00153513          	seqz	a0,a0
   13fa6:	0505                	addi	a0,a0,1
   13fa8:	70e2                	ld	ra,56(sp)
   13faa:	6121                	addi	sp,sp,64
   13fac:	8082                	ret

0000000000013fae <__localeconv_l>:
   13fae:	10050513          	addi	a0,a0,256
   13fb2:	8082                	ret

0000000000013fb4 <_localeconv_r>:
   13fb4:	8301b783          	ld	a5,-2000(gp) # 1ca18 <_impure_ptr>
   13fb8:	67a8                	ld	a0,72(a5)
   13fba:	e501                	bnez	a0,13fc2 <_localeconv_r+0xe>
   13fbc:	6575                	lui	a0,0x1d
   13fbe:	84050513          	addi	a0,a0,-1984 # 1c840 <__global_locale>
   13fc2:	10050513          	addi	a0,a0,256
   13fc6:	8082                	ret

0000000000013fc8 <localeconv>:
   13fc8:	8301b783          	ld	a5,-2000(gp) # 1ca18 <_impure_ptr>
   13fcc:	67a8                	ld	a0,72(a5)
   13fce:	e501                	bnez	a0,13fd6 <localeconv+0xe>
   13fd0:	6575                	lui	a0,0x1d
   13fd2:	84050513          	addi	a0,a0,-1984 # 1c840 <__global_locale>
   13fd6:	10050513          	addi	a0,a0,256
   13fda:	8082                	ret

0000000000013fdc <_setlocale_r>:
   13fdc:	1101                	addi	sp,sp,-32
   13fde:	e426                	sd	s1,8(sp)
   13fe0:	ec06                	sd	ra,24(sp)
   13fe2:	e822                	sd	s0,16(sp)
   13fe4:	0001a4b7          	lui	s1,0x1a
   13fe8:	ca0d                	beqz	a2,1401a <_setlocale_r+0x3e>
   13fea:	0001a5b7          	lui	a1,0x1a
   13fee:	0a058593          	addi	a1,a1,160 # 1a0a0 <emtens+0x148>
   13ff2:	8532                	mv	a0,a2
   13ff4:	8432                	mv	s0,a2
   13ff6:	67f000ef          	jal	ra,14e74 <strcmp>
   13ffa:	c105                	beqz	a0,1401a <_setlocale_r+0x3e>
   13ffc:	09848593          	addi	a1,s1,152 # 1a098 <emtens+0x140>
   14000:	8522                	mv	a0,s0
   14002:	673000ef          	jal	ra,14e74 <strcmp>
   14006:	c911                	beqz	a0,1401a <_setlocale_r+0x3e>
   14008:	0001a5b7          	lui	a1,0x1a
   1400c:	de858593          	addi	a1,a1,-536 # 19de8 <zeroes.4441+0x88>
   14010:	8522                	mv	a0,s0
   14012:	663000ef          	jal	ra,14e74 <strcmp>
   14016:	4781                	li	a5,0
   14018:	e119                	bnez	a0,1401e <_setlocale_r+0x42>
   1401a:	09848793          	addi	a5,s1,152
   1401e:	60e2                	ld	ra,24(sp)
   14020:	6442                	ld	s0,16(sp)
   14022:	64a2                	ld	s1,8(sp)
   14024:	853e                	mv	a0,a5
   14026:	6105                	addi	sp,sp,32
   14028:	8082                	ret

000000000001402a <__locale_mb_cur_max>:
   1402a:	8301b783          	ld	a5,-2000(gp) # 1ca18 <_impure_ptr>
   1402e:	67bc                	ld	a5,72(a5)
   14030:	e781                	bnez	a5,14038 <__locale_mb_cur_max+0xe>
   14032:	67f5                	lui	a5,0x1d
   14034:	84078793          	addi	a5,a5,-1984 # 1c840 <__global_locale>
   14038:	1607c503          	lbu	a0,352(a5)
   1403c:	8082                	ret

000000000001403e <__locale_ctype_ptr_l>:
   1403e:	7d68                	ld	a0,248(a0)
   14040:	8082                	ret

0000000000014042 <__locale_ctype_ptr>:
   14042:	8301b783          	ld	a5,-2000(gp) # 1ca18 <_impure_ptr>
   14046:	67bc                	ld	a5,72(a5)
   14048:	e781                	bnez	a5,14050 <__locale_ctype_ptr+0xe>
   1404a:	67f5                	lui	a5,0x1d
   1404c:	84078793          	addi	a5,a5,-1984 # 1c840 <__global_locale>
   14050:	7fe8                	ld	a0,248(a5)
   14052:	8082                	ret

0000000000014054 <setlocale>:
   14054:	862e                	mv	a2,a1
   14056:	85aa                	mv	a1,a0
   14058:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   1405c:	f81ff06f          	j	13fdc <_setlocale_r>

0000000000014060 <__swhatbuf_r>:
   14060:	7135                	addi	sp,sp,-160
   14062:	e526                	sd	s1,136(sp)
   14064:	84ae                	mv	s1,a1
   14066:	01259583          	lh	a1,18(a1)
   1406a:	e922                	sd	s0,144(sp)
   1406c:	ed06                	sd	ra,152(sp)
   1406e:	8432                	mv	s0,a2
   14070:	0005dc63          	bgez	a1,14088 <__swhatbuf_r+0x28>
   14074:	0104d783          	lhu	a5,16(s1)
   14078:	0006a023          	sw	zero,0(a3)
   1407c:	0807f793          	andi	a5,a5,128
   14080:	eb95                	bnez	a5,140b4 <__swhatbuf_r+0x54>
   14082:	40000793          	li	a5,1024
   14086:	a80d                	j	140b8 <__swhatbuf_r+0x58>
   14088:	0830                	addi	a2,sp,24
   1408a:	e436                	sd	a3,8(sp)
   1408c:	0f2030ef          	jal	ra,1717e <_fstat_r>
   14090:	66a2                	ld	a3,8(sp)
   14092:	fe0541e3          	bltz	a0,14074 <__swhatbuf_r+0x14>
   14096:	47f2                	lw	a5,28(sp)
   14098:	673d                	lui	a4,0xf
   1409a:	6505                	lui	a0,0x1
   1409c:	8ff9                	and	a5,a5,a4
   1409e:	6709                	lui	a4,0x2
   140a0:	8f99                	sub	a5,a5,a4
   140a2:	0017b793          	seqz	a5,a5
   140a6:	c29c                	sw	a5,0(a3)
   140a8:	40000793          	li	a5,1024
   140ac:	e01c                	sd	a5,0(s0)
   140ae:	80050513          	addi	a0,a0,-2048 # 800 <main-0xf8b0>
   140b2:	a029                	j	140bc <__swhatbuf_r+0x5c>
   140b4:	04000793          	li	a5,64
   140b8:	e01c                	sd	a5,0(s0)
   140ba:	4501                	li	a0,0
   140bc:	60ea                	ld	ra,152(sp)
   140be:	644a                	ld	s0,144(sp)
   140c0:	64aa                	ld	s1,136(sp)
   140c2:	610d                	addi	sp,sp,160
   140c4:	8082                	ret

00000000000140c6 <__smakebuf_r>:
   140c6:	0105d783          	lhu	a5,16(a1)
   140ca:	7179                	addi	sp,sp,-48
   140cc:	f022                	sd	s0,32(sp)
   140ce:	f406                	sd	ra,40(sp)
   140d0:	ec26                	sd	s1,24(sp)
   140d2:	e84a                	sd	s2,16(sp)
   140d4:	8b89                	andi	a5,a5,2
   140d6:	842e                	mv	s0,a1
   140d8:	cf89                	beqz	a5,140f2 <__smakebuf_r+0x2c>
   140da:	07740793          	addi	a5,s0,119
   140de:	e01c                	sd	a5,0(s0)
   140e0:	ec1c                	sd	a5,24(s0)
   140e2:	4785                	li	a5,1
   140e4:	d01c                	sw	a5,32(s0)
   140e6:	70a2                	ld	ra,40(sp)
   140e8:	7402                	ld	s0,32(sp)
   140ea:	64e2                	ld	s1,24(sp)
   140ec:	6942                	ld	s2,16(sp)
   140ee:	6145                	addi	sp,sp,48
   140f0:	8082                	ret
   140f2:	0054                	addi	a3,sp,4
   140f4:	0030                	addi	a2,sp,8
   140f6:	84aa                	mv	s1,a0
   140f8:	f69ff0ef          	jal	ra,14060 <__swhatbuf_r>
   140fc:	65a2                	ld	a1,8(sp)
   140fe:	892a                	mv	s2,a0
   14100:	8526                	mv	a0,s1
   14102:	a96fc0ef          	jal	ra,10398 <_malloc_r>
   14106:	ed01                	bnez	a0,1411e <__smakebuf_r+0x58>
   14108:	01041783          	lh	a5,16(s0)
   1410c:	2007f713          	andi	a4,a5,512
   14110:	fb79                	bnez	a4,140e6 <__smakebuf_r+0x20>
   14112:	9bf1                	andi	a5,a5,-4
   14114:	0027e793          	ori	a5,a5,2
   14118:	00f41823          	sh	a5,16(s0)
   1411c:	bf7d                	j	140da <__smakebuf_r+0x14>
   1411e:	000127b7          	lui	a5,0x12
   14122:	38e78793          	addi	a5,a5,910 # 1238e <_cleanup_r>
   14126:	ecbc                	sd	a5,88(s1)
   14128:	01045783          	lhu	a5,16(s0)
   1412c:	e008                	sd	a0,0(s0)
   1412e:	ec08                	sd	a0,24(s0)
   14130:	0807e793          	ori	a5,a5,128
   14134:	00f41823          	sh	a5,16(s0)
   14138:	67a2                	ld	a5,8(sp)
   1413a:	d01c                	sw	a5,32(s0)
   1413c:	4792                	lw	a5,4(sp)
   1413e:	cf91                	beqz	a5,1415a <__smakebuf_r+0x94>
   14140:	01241583          	lh	a1,18(s0)
   14144:	8526                	mv	a0,s1
   14146:	350030ef          	jal	ra,17496 <_isatty_r>
   1414a:	c901                	beqz	a0,1415a <__smakebuf_r+0x94>
   1414c:	01045783          	lhu	a5,16(s0)
   14150:	9bf1                	andi	a5,a5,-4
   14152:	0017e793          	ori	a5,a5,1
   14156:	00f41823          	sh	a5,16(s0)
   1415a:	01045783          	lhu	a5,16(s0)
   1415e:	00f96933          	or	s2,s2,a5
   14162:	01241823          	sh	s2,16(s0)
   14166:	b741                	j	140e6 <__smakebuf_r+0x20>

0000000000014168 <_mbtowc_r>:
   14168:	8301b783          	ld	a5,-2000(gp) # 1ca18 <_impure_ptr>
   1416c:	67bc                	ld	a5,72(a5)
   1416e:	e781                	bnez	a5,14176 <_mbtowc_r+0xe>
   14170:	67f5                	lui	a5,0x1d
   14172:	84078793          	addi	a5,a5,-1984 # 1c840 <__global_locale>
   14176:	0e87b303          	ld	t1,232(a5)
   1417a:	8302                	jr	t1

000000000001417c <__ascii_mbtowc>:
   1417c:	e185                	bnez	a1,1419c <__ascii_mbtowc+0x20>
   1417e:	1141                	addi	sp,sp,-16
   14180:	006c                	addi	a1,sp,12
   14182:	4501                	li	a0,0
   14184:	ca11                	beqz	a2,14198 <__ascii_mbtowc+0x1c>
   14186:	5579                	li	a0,-2
   14188:	ca81                	beqz	a3,14198 <__ascii_mbtowc+0x1c>
   1418a:	00064783          	lbu	a5,0(a2)
   1418e:	c19c                	sw	a5,0(a1)
   14190:	00064503          	lbu	a0,0(a2)
   14194:	00a03533          	snez	a0,a0
   14198:	0141                	addi	sp,sp,16
   1419a:	8082                	ret
   1419c:	4501                	li	a0,0
   1419e:	ca19                	beqz	a2,141b4 <__ascii_mbtowc+0x38>
   141a0:	5579                	li	a0,-2
   141a2:	ca89                	beqz	a3,141b4 <__ascii_mbtowc+0x38>
   141a4:	00064783          	lbu	a5,0(a2)
   141a8:	c19c                	sw	a5,0(a1)
   141aa:	00064503          	lbu	a0,0(a2)
   141ae:	00a03533          	snez	a0,a0
   141b2:	8082                	ret
   141b4:	8082                	ret

00000000000141b6 <memchr>:
   141b6:	0ff5f593          	andi	a1,a1,255
   141ba:	962a                	add	a2,a2,a0
   141bc:	00c51463          	bne	a0,a2,141c4 <memchr+0xe>
   141c0:	4501                	li	a0,0
   141c2:	8082                	ret
   141c4:	00054783          	lbu	a5,0(a0)
   141c8:	feb78de3          	beq	a5,a1,141c2 <memchr+0xc>
   141cc:	0505                	addi	a0,a0,1
   141ce:	b7fd                	j	141bc <memchr+0x6>

00000000000141d0 <_Balloc>:
   141d0:	7d3c                	ld	a5,120(a0)
   141d2:	1101                	addi	sp,sp,-32
   141d4:	e426                	sd	s1,8(sp)
   141d6:	e04a                	sd	s2,0(sp)
   141d8:	ec06                	sd	ra,24(sp)
   141da:	e822                	sd	s0,16(sp)
   141dc:	84aa                	mv	s1,a0
   141de:	892e                	mv	s2,a1
   141e0:	c79d                	beqz	a5,1420e <_Balloc+0x3e>
   141e2:	7cb8                	ld	a4,120(s1)
   141e4:	00391793          	slli	a5,s2,0x3
   141e8:	97ba                	add	a5,a5,a4
   141ea:	6388                	ld	a0,0(a5)
   141ec:	ed1d                	bnez	a0,1422a <_Balloc+0x5a>
   141ee:	4405                	li	s0,1
   141f0:	0124143b          	sllw	s0,s0,s2
   141f4:	fff4061b          	addiw	a2,s0,-1
   141f8:	0621                	addi	a2,a2,8
   141fa:	060a                	slli	a2,a2,0x2
   141fc:	4585                	li	a1,1
   141fe:	8526                	mv	a0,s1
   14200:	533020ef          	jal	ra,16f32 <_calloc_r>
   14204:	cd01                	beqz	a0,1421c <_Balloc+0x4c>
   14206:	01252423          	sw	s2,8(a0)
   1420a:	c540                	sw	s0,12(a0)
   1420c:	a00d                	j	1422e <_Balloc+0x5e>
   1420e:	04100613          	li	a2,65
   14212:	45a1                	li	a1,8
   14214:	51f020ef          	jal	ra,16f32 <_calloc_r>
   14218:	fca8                	sd	a0,120(s1)
   1421a:	f561                	bnez	a0,141e2 <_Balloc+0x12>
   1421c:	4501                	li	a0,0
   1421e:	60e2                	ld	ra,24(sp)
   14220:	6442                	ld	s0,16(sp)
   14222:	64a2                	ld	s1,8(sp)
   14224:	6902                	ld	s2,0(sp)
   14226:	6105                	addi	sp,sp,32
   14228:	8082                	ret
   1422a:	6118                	ld	a4,0(a0)
   1422c:	e398                	sd	a4,0(a5)
   1422e:	00053823          	sd	zero,16(a0)
   14232:	b7f5                	j	1421e <_Balloc+0x4e>

0000000000014234 <_Bfree>:
   14234:	c989                	beqz	a1,14246 <_Bfree+0x12>
   14236:	459c                	lw	a5,8(a1)
   14238:	00379713          	slli	a4,a5,0x3
   1423c:	7d3c                	ld	a5,120(a0)
   1423e:	97ba                	add	a5,a5,a4
   14240:	6398                	ld	a4,0(a5)
   14242:	e198                	sd	a4,0(a1)
   14244:	e38c                	sd	a1,0(a5)
   14246:	8082                	ret

0000000000014248 <__multadd>:
   14248:	7139                	addi	sp,sp,-64
   1424a:	ec4e                	sd	s3,24(sp)
   1424c:	89aa                	mv	s3,a0
   1424e:	6541                	lui	a0,0x10
   14250:	f822                	sd	s0,48(sp)
   14252:	f426                	sd	s1,40(sp)
   14254:	842e                	mv	s0,a1
   14256:	49c4                	lw	s1,20(a1)
   14258:	fc06                	sd	ra,56(sp)
   1425a:	f04a                	sd	s2,32(sp)
   1425c:	05e1                	addi	a1,a1,24
   1425e:	4801                	li	a6,0
   14260:	157d                	addi	a0,a0,-1
   14262:	419c                	lw	a5,0(a1)
   14264:	0591                	addi	a1,a1,4
   14266:	2805                	addiw	a6,a6,1
   14268:	00a7f733          	and	a4,a5,a0
   1426c:	02c7073b          	mulw	a4,a4,a2
   14270:	0107d79b          	srliw	a5,a5,0x10
   14274:	02c787bb          	mulw	a5,a5,a2
   14278:	9f35                	addw	a4,a4,a3
   1427a:	0107569b          	srliw	a3,a4,0x10
   1427e:	8f69                	and	a4,a4,a0
   14280:	9fb5                	addw	a5,a5,a3
   14282:	0107d69b          	srliw	a3,a5,0x10
   14286:	0107979b          	slliw	a5,a5,0x10
   1428a:	9fb9                	addw	a5,a5,a4
   1428c:	fef5ae23          	sw	a5,-4(a1)
   14290:	2681                	sext.w	a3,a3
   14292:	fc9848e3          	blt	a6,s1,14262 <__multadd+0x1a>
   14296:	c2a1                	beqz	a3,142d6 <__multadd+0x8e>
   14298:	445c                	lw	a5,12(s0)
   1429a:	02f4c763          	blt	s1,a5,142c8 <__multadd+0x80>
   1429e:	440c                	lw	a1,8(s0)
   142a0:	854e                	mv	a0,s3
   142a2:	e436                	sd	a3,8(sp)
   142a4:	2585                	addiw	a1,a1,1
   142a6:	f2bff0ef          	jal	ra,141d0 <_Balloc>
   142aa:	4850                	lw	a2,20(s0)
   142ac:	01040593          	addi	a1,s0,16
   142b0:	892a                	mv	s2,a0
   142b2:	0609                	addi	a2,a2,2
   142b4:	060a                	slli	a2,a2,0x2
   142b6:	0541                	addi	a0,a0,16
   142b8:	23a030ef          	jal	ra,174f2 <memcpy>
   142bc:	85a2                	mv	a1,s0
   142be:	854e                	mv	a0,s3
   142c0:	f75ff0ef          	jal	ra,14234 <_Bfree>
   142c4:	66a2                	ld	a3,8(sp)
   142c6:	844a                	mv	s0,s2
   142c8:	00448793          	addi	a5,s1,4
   142cc:	078a                	slli	a5,a5,0x2
   142ce:	97a2                	add	a5,a5,s0
   142d0:	c794                	sw	a3,8(a5)
   142d2:	2485                	addiw	s1,s1,1
   142d4:	c844                	sw	s1,20(s0)
   142d6:	8522                	mv	a0,s0
   142d8:	70e2                	ld	ra,56(sp)
   142da:	7442                	ld	s0,48(sp)
   142dc:	74a2                	ld	s1,40(sp)
   142de:	7902                	ld	s2,32(sp)
   142e0:	69e2                	ld	s3,24(sp)
   142e2:	6121                	addi	sp,sp,64
   142e4:	8082                	ret

00000000000142e6 <__s2b>:
   142e6:	715d                	addi	sp,sp,-80
   142e8:	47a5                	li	a5,9
   142ea:	f44e                	sd	s3,40(sp)
   142ec:	89b6                	mv	s3,a3
   142ee:	26a1                	addiw	a3,a3,8
   142f0:	e0a2                	sd	s0,64(sp)
   142f2:	f84a                	sd	s2,48(sp)
   142f4:	ec56                	sd	s5,24(sp)
   142f6:	842e                	mv	s0,a1
   142f8:	02f6c6bb          	divw	a3,a3,a5
   142fc:	e486                	sd	ra,72(sp)
   142fe:	fc26                	sd	s1,56(sp)
   14300:	f052                	sd	s4,32(sp)
   14302:	892a                	mv	s2,a0
   14304:	8ab2                	mv	s5,a2
   14306:	4785                	li	a5,1
   14308:	4581                	li	a1,0
   1430a:	04d7ce63          	blt	a5,a3,14366 <__s2b+0x80>
   1430e:	854a                	mv	a0,s2
   14310:	e43a                	sd	a4,8(sp)
   14312:	ebfff0ef          	jal	ra,141d0 <_Balloc>
   14316:	6722                	ld	a4,8(sp)
   14318:	4785                	li	a5,1
   1431a:	c95c                	sw	a5,20(a0)
   1431c:	cd18                	sw	a4,24(a0)
   1431e:	47a5                	li	a5,9
   14320:	0557d763          	ble	s5,a5,1436e <__s2b+0x88>
   14324:	0425                	addi	s0,s0,9
   14326:	8a22                	mv	s4,s0
   14328:	44a5                	li	s1,9
   1432a:	0a05                	addi	s4,s4,1
   1432c:	fffa4683          	lbu	a3,-1(s4)
   14330:	85aa                	mv	a1,a0
   14332:	4629                	li	a2,10
   14334:	fd06869b          	addiw	a3,a3,-48
   14338:	854a                	mv	a0,s2
   1433a:	2485                	addiw	s1,s1,1
   1433c:	f0dff0ef          	jal	ra,14248 <__multadd>
   14340:	fe9a95e3          	bne	s5,s1,1432a <__s2b+0x44>
   14344:	ff64879b          	addiw	a5,s1,-10
   14348:	1782                	slli	a5,a5,0x20
   1434a:	9381                	srli	a5,a5,0x20
   1434c:	943e                	add	s0,s0,a5
   1434e:	0409                	addi	s0,s0,2
   14350:	0334c263          	blt	s1,s3,14374 <__s2b+0x8e>
   14354:	60a6                	ld	ra,72(sp)
   14356:	6406                	ld	s0,64(sp)
   14358:	74e2                	ld	s1,56(sp)
   1435a:	7942                	ld	s2,48(sp)
   1435c:	79a2                	ld	s3,40(sp)
   1435e:	7a02                	ld	s4,32(sp)
   14360:	6ae2                	ld	s5,24(sp)
   14362:	6161                	addi	sp,sp,80
   14364:	8082                	ret
   14366:	0017979b          	slliw	a5,a5,0x1
   1436a:	2585                	addiw	a1,a1,1
   1436c:	bf79                	j	1430a <__s2b+0x24>
   1436e:	0429                	addi	s0,s0,10
   14370:	44a5                	li	s1,9
   14372:	bff9                	j	14350 <__s2b+0x6a>
   14374:	00044683          	lbu	a3,0(s0)
   14378:	85aa                	mv	a1,a0
   1437a:	4629                	li	a2,10
   1437c:	fd06869b          	addiw	a3,a3,-48
   14380:	854a                	mv	a0,s2
   14382:	ec7ff0ef          	jal	ra,14248 <__multadd>
   14386:	2485                	addiw	s1,s1,1
   14388:	0405                	addi	s0,s0,1
   1438a:	b7d9                	j	14350 <__s2b+0x6a>

000000000001438c <__hi0bits>:
   1438c:	7741                	lui	a4,0xffff0
   1438e:	8f69                	and	a4,a4,a0
   14390:	87aa                	mv	a5,a0
   14392:	4501                	li	a0,0
   14394:	e701                	bnez	a4,1439c <__hi0bits+0x10>
   14396:	0107979b          	slliw	a5,a5,0x10
   1439a:	4541                	li	a0,16
   1439c:	ff000737          	lui	a4,0xff000
   143a0:	8f7d                	and	a4,a4,a5
   143a2:	e701                	bnez	a4,143aa <__hi0bits+0x1e>
   143a4:	2521                	addiw	a0,a0,8
   143a6:	0087979b          	slliw	a5,a5,0x8
   143aa:	f0000737          	lui	a4,0xf0000
   143ae:	8f7d                	and	a4,a4,a5
   143b0:	e701                	bnez	a4,143b8 <__hi0bits+0x2c>
   143b2:	2511                	addiw	a0,a0,4
   143b4:	0047979b          	slliw	a5,a5,0x4
   143b8:	c0000737          	lui	a4,0xc0000
   143bc:	8f7d                	and	a4,a4,a5
   143be:	e701                	bnez	a4,143c6 <__hi0bits+0x3a>
   143c0:	2509                	addiw	a0,a0,2
   143c2:	0027979b          	slliw	a5,a5,0x2
   143c6:	0007ca63          	bltz	a5,143da <__hi0bits+0x4e>
   143ca:	02179713          	slli	a4,a5,0x21
   143ce:	00075463          	bgez	a4,143d6 <__hi0bits+0x4a>
   143d2:	2505                	addiw	a0,a0,1
   143d4:	8082                	ret
   143d6:	02000513          	li	a0,32
   143da:	8082                	ret

00000000000143dc <__lo0bits>:
   143dc:	411c                	lw	a5,0(a0)
   143de:	0077f713          	andi	a4,a5,7
   143e2:	86be                	mv	a3,a5
   143e4:	c31d                	beqz	a4,1440a <__lo0bits+0x2e>
   143e6:	0017f613          	andi	a2,a5,1
   143ea:	4701                	li	a4,0
   143ec:	ea01                	bnez	a2,143fc <__lo0bits+0x20>
   143ee:	0026f713          	andi	a4,a3,2
   143f2:	c719                	beqz	a4,14400 <__lo0bits+0x24>
   143f4:	0017d79b          	srliw	a5,a5,0x1
   143f8:	c11c                	sw	a5,0(a0)
   143fa:	4705                	li	a4,1
   143fc:	853a                	mv	a0,a4
   143fe:	8082                	ret
   14400:	0027d79b          	srliw	a5,a5,0x2
   14404:	c11c                	sw	a5,0(a0)
   14406:	4709                	li	a4,2
   14408:	bfd5                	j	143fc <__lo0bits+0x20>
   1440a:	03079693          	slli	a3,a5,0x30
   1440e:	92c1                	srli	a3,a3,0x30
   14410:	4701                	li	a4,0
   14412:	e689                	bnez	a3,1441c <__lo0bits+0x40>
   14414:	0107d79b          	srliw	a5,a5,0x10
   14418:	2781                	sext.w	a5,a5
   1441a:	4741                	li	a4,16
   1441c:	0ff7f693          	andi	a3,a5,255
   14420:	e689                	bnez	a3,1442a <__lo0bits+0x4e>
   14422:	0087d79b          	srliw	a5,a5,0x8
   14426:	2721                	addiw	a4,a4,8
   14428:	2781                	sext.w	a5,a5
   1442a:	00f7f693          	andi	a3,a5,15
   1442e:	e689                	bnez	a3,14438 <__lo0bits+0x5c>
   14430:	0047d79b          	srliw	a5,a5,0x4
   14434:	2711                	addiw	a4,a4,4
   14436:	2781                	sext.w	a5,a5
   14438:	0037f693          	andi	a3,a5,3
   1443c:	e689                	bnez	a3,14446 <__lo0bits+0x6a>
   1443e:	0027d79b          	srliw	a5,a5,0x2
   14442:	2709                	addiw	a4,a4,2
   14444:	2781                	sext.w	a5,a5
   14446:	0017f693          	andi	a3,a5,1
   1444a:	e691                	bnez	a3,14456 <__lo0bits+0x7a>
   1444c:	0017d79b          	srliw	a5,a5,0x1
   14450:	2781                	sext.w	a5,a5
   14452:	c781                	beqz	a5,1445a <__lo0bits+0x7e>
   14454:	2705                	addiw	a4,a4,1
   14456:	c11c                	sw	a5,0(a0)
   14458:	b755                	j	143fc <__lo0bits+0x20>
   1445a:	02000713          	li	a4,32
   1445e:	bf79                	j	143fc <__lo0bits+0x20>

0000000000014460 <__i2b>:
   14460:	1141                	addi	sp,sp,-16
   14462:	e022                	sd	s0,0(sp)
   14464:	842e                	mv	s0,a1
   14466:	4585                	li	a1,1
   14468:	e406                	sd	ra,8(sp)
   1446a:	d67ff0ef          	jal	ra,141d0 <_Balloc>
   1446e:	cd00                	sw	s0,24(a0)
   14470:	60a2                	ld	ra,8(sp)
   14472:	6402                	ld	s0,0(sp)
   14474:	4705                	li	a4,1
   14476:	c958                	sw	a4,20(a0)
   14478:	0141                	addi	sp,sp,16
   1447a:	8082                	ret

000000000001447c <__multiply>:
   1447c:	49d8                	lw	a4,20(a1)
   1447e:	4a5c                	lw	a5,20(a2)
   14480:	7139                	addi	sp,sp,-64
   14482:	f426                	sd	s1,40(sp)
   14484:	fc06                	sd	ra,56(sp)
   14486:	f822                	sd	s0,48(sp)
   14488:	f04a                	sd	s2,32(sp)
   1448a:	ec4e                	sd	s3,24(sp)
   1448c:	84ae                	mv	s1,a1
   1448e:	00f75463          	ble	a5,a4,14496 <__multiply+0x1a>
   14492:	84b2                	mv	s1,a2
   14494:	862e                	mv	a2,a1
   14496:	0144a983          	lw	s3,20(s1)
   1449a:	01462903          	lw	s2,20(a2)
   1449e:	44dc                	lw	a5,12(s1)
   144a0:	448c                	lw	a1,8(s1)
   144a2:	0129843b          	addw	s0,s3,s2
   144a6:	0087d363          	ble	s0,a5,144ac <__multiply+0x30>
   144aa:	2585                	addiw	a1,a1,1
   144ac:	e432                	sd	a2,8(sp)
   144ae:	d23ff0ef          	jal	ra,141d0 <_Balloc>
   144b2:	6622                	ld	a2,8(sp)
   144b4:	01850813          	addi	a6,a0,24 # 10018 <main-0x98>
   144b8:	00241313          	slli	t1,s0,0x2
   144bc:	9342                	add	t1,t1,a6
   144be:	87c2                	mv	a5,a6
   144c0:	0267ed63          	bltu	a5,t1,144fa <__multiply+0x7e>
   144c4:	01848593          	addi	a1,s1,24
   144c8:	00299893          	slli	a7,s3,0x2
   144cc:	0661                	addi	a2,a2,24
   144ce:	00291e13          	slli	t3,s2,0x2
   144d2:	66c1                	lui	a3,0x10
   144d4:	98ae                	add	a7,a7,a1
   144d6:	9e32                	add	t3,t3,a2
   144d8:	16fd                	addi	a3,a3,-1
   144da:	03c66463          	bltu	a2,t3,14502 <__multiply+0x86>
   144de:	00805663          	blez	s0,144ea <__multiply+0x6e>
   144e2:	1371                	addi	t1,t1,-4
   144e4:	00032783          	lw	a5,0(t1) # 10000 <main-0xb0>
   144e8:	cbf5                	beqz	a5,145dc <__multiply+0x160>
   144ea:	c940                	sw	s0,20(a0)
   144ec:	70e2                	ld	ra,56(sp)
   144ee:	7442                	ld	s0,48(sp)
   144f0:	74a2                	ld	s1,40(sp)
   144f2:	7902                	ld	s2,32(sp)
   144f4:	69e2                	ld	s3,24(sp)
   144f6:	6121                	addi	sp,sp,64
   144f8:	8082                	ret
   144fa:	0007a023          	sw	zero,0(a5)
   144fe:	0791                	addi	a5,a5,4
   14500:	b7c1                	j	144c0 <__multiply+0x44>
   14502:	00062f83          	lw	t6,0(a2)
   14506:	01f6ffb3          	and	t6,a3,t6
   1450a:	040f8f63          	beqz	t6,14568 <__multiply+0xec>
   1450e:	82c2                	mv	t0,a6
   14510:	83ae                	mv	t2,a1
   14512:	4f01                	li	t5,0
   14514:	0003a703          	lw	a4,0(t2)
   14518:	0002a483          	lw	s1,0(t0) # 10908 <memset+0x90>
   1451c:	0391                	addi	t2,t2,4
   1451e:	00d77eb3          	and	t4,a4,a3
   14522:	03fe8ebb          	mulw	t4,t4,t6
   14526:	00d4f7b3          	and	a5,s1,a3
   1452a:	0104d49b          	srliw	s1,s1,0x10
   1452e:	00fe8ebb          	addw	t4,t4,a5
   14532:	0107579b          	srliw	a5,a4,0x10
   14536:	03f787bb          	mulw	a5,a5,t6
   1453a:	01ee8ebb          	addw	t4,t4,t5
   1453e:	010ed71b          	srliw	a4,t4,0x10
   14542:	01d6feb3          	and	t4,a3,t4
   14546:	9fa5                	addw	a5,a5,s1
   14548:	9fb9                	addw	a5,a5,a4
   1454a:	0107df1b          	srliw	t5,a5,0x10
   1454e:	0107979b          	slliw	a5,a5,0x10
   14552:	00428713          	addi	a4,t0,4
   14556:	00fee7b3          	or	a5,t4,a5
   1455a:	fef72e23          	sw	a5,-4(a4) # ffffffffbffffffc <__global_pointer$+0xffffffffbffe2e14>
   1455e:	2f01                	sext.w	t5,t5
   14560:	0713ea63          	bltu	t2,a7,145d4 <__multiply+0x158>
   14564:	01e2a223          	sw	t5,4(t0)
   14568:	00265283          	lhu	t0,2(a2)
   1456c:	06028163          	beqz	t0,145ce <__multiply+0x152>
   14570:	00082e83          	lw	t4,0(a6)
   14574:	8f42                	mv	t5,a6
   14576:	8fae                	mv	t6,a1
   14578:	4781                	li	a5,0
   1457a:	000fa703          	lw	a4,0(t6)
   1457e:	002f5383          	lhu	t2,2(t5)
   14582:	00defeb3          	and	t4,t4,a3
   14586:	8f75                	and	a4,a4,a3
   14588:	0257073b          	mulw	a4,a4,t0
   1458c:	0f91                	addi	t6,t6,4
   1458e:	0077073b          	addw	a4,a4,t2
   14592:	9f3d                	addw	a4,a4,a5
   14594:	0107179b          	slliw	a5,a4,0x10
   14598:	00feeeb3          	or	t4,t4,a5
   1459c:	004f0393          	addi	t2,t5,4
   145a0:	ffd3ae23          	sw	t4,-4(t2)
   145a4:	ffefd783          	lhu	a5,-2(t6)
   145a8:	004f2e83          	lw	t4,4(t5)
   145ac:	0107571b          	srliw	a4,a4,0x10
   145b0:	025787bb          	mulw	a5,a5,t0
   145b4:	00defeb3          	and	t4,t4,a3
   145b8:	01d787bb          	addw	a5,a5,t4
   145bc:	00e78ebb          	addw	t4,a5,a4
   145c0:	010ed79b          	srliw	a5,t4,0x10
   145c4:	2781                	sext.w	a5,a5
   145c6:	011fe963          	bltu	t6,a7,145d8 <__multiply+0x15c>
   145ca:	01df2223          	sw	t4,4(t5)
   145ce:	0611                	addi	a2,a2,4
   145d0:	0811                	addi	a6,a6,4
   145d2:	b721                	j	144da <__multiply+0x5e>
   145d4:	82ba                	mv	t0,a4
   145d6:	bf3d                	j	14514 <__multiply+0x98>
   145d8:	8f1e                	mv	t5,t2
   145da:	b745                	j	1457a <__multiply+0xfe>
   145dc:	347d                	addiw	s0,s0,-1
   145de:	b701                	j	144de <__multiply+0x62>

00000000000145e0 <__pow5mult>:
   145e0:	7179                	addi	sp,sp,-48
   145e2:	ec26                	sd	s1,24(sp)
   145e4:	e84a                	sd	s2,16(sp)
   145e6:	e44e                	sd	s3,8(sp)
   145e8:	f406                	sd	ra,40(sp)
   145ea:	f022                	sd	s0,32(sp)
   145ec:	e052                	sd	s4,0(sp)
   145ee:	00367793          	andi	a5,a2,3
   145f2:	892a                	mv	s2,a0
   145f4:	84b2                	mv	s1,a2
   145f6:	89ae                	mv	s3,a1
   145f8:	cf81                	beqz	a5,14610 <__pow5mult+0x30>
   145fa:	37fd                	addiw	a5,a5,-1
   145fc:	6769                	lui	a4,0x1a
   145fe:	0b070713          	addi	a4,a4,176 # 1a0b0 <p05.3264>
   14602:	078a                	slli	a5,a5,0x2
   14604:	97ba                	add	a5,a5,a4
   14606:	4390                	lw	a2,0(a5)
   14608:	4681                	li	a3,0
   1460a:	c3fff0ef          	jal	ra,14248 <__multadd>
   1460e:	89aa                	mv	s3,a0
   14610:	8489                	srai	s1,s1,0x2
   14612:	c8b1                	beqz	s1,14666 <__pow5mult+0x86>
   14614:	07093403          	ld	s0,112(s2)
   14618:	e819                	bnez	s0,1462e <__pow5mult+0x4e>
   1461a:	27100593          	li	a1,625
   1461e:	854a                	mv	a0,s2
   14620:	e41ff0ef          	jal	ra,14460 <__i2b>
   14624:	06a93823          	sd	a0,112(s2)
   14628:	842a                	mv	s0,a0
   1462a:	00053023          	sd	zero,0(a0)
   1462e:	0014f793          	andi	a5,s1,1
   14632:	cf81                	beqz	a5,1464a <__pow5mult+0x6a>
   14634:	85ce                	mv	a1,s3
   14636:	8622                	mv	a2,s0
   14638:	854a                	mv	a0,s2
   1463a:	e43ff0ef          	jal	ra,1447c <__multiply>
   1463e:	8a2a                	mv	s4,a0
   14640:	85ce                	mv	a1,s3
   14642:	854a                	mv	a0,s2
   14644:	bf1ff0ef          	jal	ra,14234 <_Bfree>
   14648:	89d2                	mv	s3,s4
   1464a:	8485                	srai	s1,s1,0x1
   1464c:	cc89                	beqz	s1,14666 <__pow5mult+0x86>
   1464e:	6008                	ld	a0,0(s0)
   14650:	e909                	bnez	a0,14662 <__pow5mult+0x82>
   14652:	8622                	mv	a2,s0
   14654:	85a2                	mv	a1,s0
   14656:	854a                	mv	a0,s2
   14658:	e25ff0ef          	jal	ra,1447c <__multiply>
   1465c:	e008                	sd	a0,0(s0)
   1465e:	00053023          	sd	zero,0(a0)
   14662:	842a                	mv	s0,a0
   14664:	b7e9                	j	1462e <__pow5mult+0x4e>
   14666:	70a2                	ld	ra,40(sp)
   14668:	7402                	ld	s0,32(sp)
   1466a:	854e                	mv	a0,s3
   1466c:	64e2                	ld	s1,24(sp)
   1466e:	6942                	ld	s2,16(sp)
   14670:	69a2                	ld	s3,8(sp)
   14672:	6a02                	ld	s4,0(sp)
   14674:	6145                	addi	sp,sp,48
   14676:	8082                	ret

0000000000014678 <__lshift>:
   14678:	715d                	addi	sp,sp,-80
   1467a:	fc26                	sd	s1,56(sp)
   1467c:	84ae                	mv	s1,a1
   1467e:	f44e                	sd	s3,40(sp)
   14680:	0144a983          	lw	s3,20(s1)
   14684:	e85a                	sd	s6,16(sp)
   14686:	458c                	lw	a1,8(a1)
   14688:	40565b1b          	sraiw	s6,a2,0x5
   1468c:	44dc                	lw	a5,12(s1)
   1468e:	016989bb          	addw	s3,s3,s6
   14692:	e0a2                	sd	s0,64(sp)
   14694:	f84a                	sd	s2,48(sp)
   14696:	ec56                	sd	s5,24(sp)
   14698:	e486                	sd	ra,72(sp)
   1469a:	f052                	sd	s4,32(sp)
   1469c:	8aaa                	mv	s5,a0
   1469e:	845a                	mv	s0,s6
   146a0:	0019891b          	addiw	s2,s3,1
   146a4:	0927c463          	blt	a5,s2,1472c <__lshift+0xb4>
   146a8:	8556                	mv	a0,s5
   146aa:	e432                	sd	a2,8(sp)
   146ac:	b25ff0ef          	jal	ra,141d0 <_Balloc>
   146b0:	6622                	ld	a2,8(sp)
   146b2:	01850793          	addi	a5,a0,24
   146b6:	8a2a                	mv	s4,a0
   146b8:	86be                	mv	a3,a5
   146ba:	4701                	li	a4,0
   146bc:	0691                	addi	a3,a3,4
   146be:	07674b63          	blt	a4,s6,14734 <__lshift+0xbc>
   146c2:	000b5363          	bgez	s6,146c8 <__lshift+0x50>
   146c6:	4401                	li	s0,0
   146c8:	48d4                	lw	a3,20(s1)
   146ca:	040a                	slli	s0,s0,0x2
   146cc:	943e                	add	s0,s0,a5
   146ce:	068a                	slli	a3,a3,0x2
   146d0:	01848793          	addi	a5,s1,24
   146d4:	8a7d                	andi	a2,a2,31
   146d6:	96be                	add	a3,a3,a5
   146d8:	c625                	beqz	a2,14740 <__lshift+0xc8>
   146da:	02000593          	li	a1,32
   146de:	9d91                	subw	a1,a1,a2
   146e0:	4701                	li	a4,0
   146e2:	4388                	lw	a0,0(a5)
   146e4:	00440813          	addi	a6,s0,4
   146e8:	0791                	addi	a5,a5,4
   146ea:	00c5153b          	sllw	a0,a0,a2
   146ee:	8f49                	or	a4,a4,a0
   146f0:	fee82e23          	sw	a4,-4(a6)
   146f4:	ffc7a703          	lw	a4,-4(a5)
   146f8:	00b7573b          	srlw	a4,a4,a1
   146fc:	04d7e063          	bltu	a5,a3,1473c <__lshift+0xc4>
   14700:	c058                	sw	a4,4(s0)
   14702:	c319                	beqz	a4,14708 <__lshift+0x90>
   14704:	0029891b          	addiw	s2,s3,2
   14708:	397d                	addiw	s2,s2,-1
   1470a:	012a2a23          	sw	s2,20(s4)
   1470e:	8556                	mv	a0,s5
   14710:	85a6                	mv	a1,s1
   14712:	b23ff0ef          	jal	ra,14234 <_Bfree>
   14716:	60a6                	ld	ra,72(sp)
   14718:	6406                	ld	s0,64(sp)
   1471a:	8552                	mv	a0,s4
   1471c:	74e2                	ld	s1,56(sp)
   1471e:	7942                	ld	s2,48(sp)
   14720:	79a2                	ld	s3,40(sp)
   14722:	7a02                	ld	s4,32(sp)
   14724:	6ae2                	ld	s5,24(sp)
   14726:	6b42                	ld	s6,16(sp)
   14728:	6161                	addi	sp,sp,80
   1472a:	8082                	ret
   1472c:	2585                	addiw	a1,a1,1
   1472e:	0017979b          	slliw	a5,a5,0x1
   14732:	bf8d                	j	146a4 <__lshift+0x2c>
   14734:	fe06ae23          	sw	zero,-4(a3) # fffc <main-0xb4>
   14738:	2705                	addiw	a4,a4,1
   1473a:	b749                	j	146bc <__lshift+0x44>
   1473c:	8442                	mv	s0,a6
   1473e:	b755                	j	146e2 <__lshift+0x6a>
   14740:	0791                	addi	a5,a5,4
   14742:	ffc7a703          	lw	a4,-4(a5)
   14746:	0411                	addi	s0,s0,4
   14748:	fee42e23          	sw	a4,-4(s0)
   1474c:	fed7eae3          	bltu	a5,a3,14740 <__lshift+0xc8>
   14750:	bf65                	j	14708 <__lshift+0x90>

0000000000014752 <__mcmp>:
   14752:	495c                	lw	a5,20(a0)
   14754:	49d8                	lw	a4,20(a1)
   14756:	9f99                	subw	a5,a5,a4
   14758:	e38d                	bnez	a5,1477a <__mcmp+0x28>
   1475a:	070a                	slli	a4,a4,0x2
   1475c:	0561                	addi	a0,a0,24
   1475e:	05e1                	addi	a1,a1,24
   14760:	00e506b3          	add	a3,a0,a4
   14764:	95ba                	add	a1,a1,a4
   14766:	16f1                	addi	a3,a3,-4
   14768:	15f1                	addi	a1,a1,-4
   1476a:	4290                	lw	a2,0(a3)
   1476c:	4198                	lw	a4,0(a1)
   1476e:	00e60863          	beq	a2,a4,1477e <__mcmp+0x2c>
   14772:	57fd                	li	a5,-1
   14774:	00e66363          	bltu	a2,a4,1477a <__mcmp+0x28>
   14778:	4785                	li	a5,1
   1477a:	853e                	mv	a0,a5
   1477c:	8082                	ret
   1477e:	fed564e3          	bltu	a0,a3,14766 <__mcmp+0x14>
   14782:	bfe5                	j	1477a <__mcmp+0x28>

0000000000014784 <__mdiff>:
   14784:	7179                	addi	sp,sp,-48
   14786:	ec26                	sd	s1,24(sp)
   14788:	84ae                	mv	s1,a1
   1478a:	e44e                	sd	s3,8(sp)
   1478c:	85b2                	mv	a1,a2
   1478e:	89aa                	mv	s3,a0
   14790:	8526                	mv	a0,s1
   14792:	f022                	sd	s0,32(sp)
   14794:	f406                	sd	ra,40(sp)
   14796:	e84a                	sd	s2,16(sp)
   14798:	8432                	mv	s0,a2
   1479a:	fb9ff0ef          	jal	ra,14752 <__mcmp>
   1479e:	e105                	bnez	a0,147be <__mdiff+0x3a>
   147a0:	4581                	li	a1,0
   147a2:	854e                	mv	a0,s3
   147a4:	a2dff0ef          	jal	ra,141d0 <_Balloc>
   147a8:	4785                	li	a5,1
   147aa:	c95c                	sw	a5,20(a0)
   147ac:	00052c23          	sw	zero,24(a0)
   147b0:	70a2                	ld	ra,40(sp)
   147b2:	7402                	ld	s0,32(sp)
   147b4:	64e2                	ld	s1,24(sp)
   147b6:	6942                	ld	s2,16(sp)
   147b8:	69a2                	ld	s3,8(sp)
   147ba:	6145                	addi	sp,sp,48
   147bc:	8082                	ret
   147be:	4905                	li	s2,1
   147c0:	00054663          	bltz	a0,147cc <__mdiff+0x48>
   147c4:	87a2                	mv	a5,s0
   147c6:	4901                	li	s2,0
   147c8:	8426                	mv	s0,s1
   147ca:	84be                	mv	s1,a5
   147cc:	440c                	lw	a1,8(s0)
   147ce:	854e                	mv	a0,s3
   147d0:	a01ff0ef          	jal	ra,141d0 <_Balloc>
   147d4:	01442303          	lw	t1,20(s0)
   147d8:	0144a883          	lw	a7,20(s1)
   147dc:	01840613          	addi	a2,s0,24
   147e0:	00231e13          	slli	t3,t1,0x2
   147e4:	01848813          	addi	a6,s1,24
   147e8:	088a                	slli	a7,a7,0x2
   147ea:	6f41                	lui	t5,0x10
   147ec:	01252823          	sw	s2,16(a0)
   147f0:	9e32                	add	t3,t3,a2
   147f2:	98c2                	add	a7,a7,a6
   147f4:	01850693          	addi	a3,a0,24
   147f8:	4f81                	li	t6,0
   147fa:	1f7d                	addi	t5,t5,-1
   147fc:	4218                	lw	a4,0(a2)
   147fe:	00082783          	lw	a5,0(a6)
   14802:	0691                	addi	a3,a3,4
   14804:	01e775b3          	and	a1,a4,t5
   14808:	01f585bb          	addw	a1,a1,t6
   1480c:	01e7feb3          	and	t4,a5,t5
   14810:	41d58ebb          	subw	t4,a1,t4
   14814:	0107571b          	srliw	a4,a4,0x10
   14818:	0107d79b          	srliw	a5,a5,0x10
   1481c:	40f707bb          	subw	a5,a4,a5
   14820:	410ed59b          	sraiw	a1,t4,0x10
   14824:	9fad                	addw	a5,a5,a1
   14826:	4107df9b          	sraiw	t6,a5,0x10
   1482a:	01eef733          	and	a4,t4,t5
   1482e:	0107979b          	slliw	a5,a5,0x10
   14832:	8fd9                	or	a5,a5,a4
   14834:	0811                	addi	a6,a6,4
   14836:	fef6ae23          	sw	a5,-4(a3)
   1483a:	0611                	addi	a2,a2,4
   1483c:	fd1860e3          	bltu	a6,a7,147fc <__mdiff+0x78>
   14840:	68c1                	lui	a7,0x10
   14842:	18fd                	addi	a7,a7,-1
   14844:	01c66863          	bltu	a2,t3,14854 <__mdiff+0xd0>
   14848:	16f1                	addi	a3,a3,-4
   1484a:	429c                	lw	a5,0(a3)
   1484c:	cb9d                	beqz	a5,14882 <__mdiff+0xfe>
   1484e:	00652a23          	sw	t1,20(a0)
   14852:	bfb9                	j	147b0 <__mdiff+0x2c>
   14854:	4218                	lw	a4,0(a2)
   14856:	0691                	addi	a3,a3,4
   14858:	0611                	addi	a2,a2,4
   1485a:	011775b3          	and	a1,a4,a7
   1485e:	01f5883b          	addw	a6,a1,t6
   14862:	0107571b          	srliw	a4,a4,0x10
   14866:	4108559b          	sraiw	a1,a6,0x10
   1486a:	00b707bb          	addw	a5,a4,a1
   1486e:	4107df9b          	sraiw	t6,a5,0x10
   14872:	01187733          	and	a4,a6,a7
   14876:	0107979b          	slliw	a5,a5,0x10
   1487a:	8fd9                	or	a5,a5,a4
   1487c:	fef6ae23          	sw	a5,-4(a3)
   14880:	b7d1                	j	14844 <__mdiff+0xc0>
   14882:	337d                	addiw	t1,t1,-1
   14884:	b7d1                	j	14848 <__mdiff+0xc4>

0000000000014886 <__ulp>:
   14886:	e20507d3          	fmv.x.d	a5,fa0
   1488a:	7ff00737          	lui	a4,0x7ff00
   1488e:	9381                	srli	a5,a5,0x20
   14890:	8f7d                	and	a4,a4,a5
   14892:	fcc007b7          	lui	a5,0xfcc00
   14896:	9fb9                	addw	a5,a5,a4
   14898:	0007871b          	sext.w	a4,a5
   1489c:	00e05763          	blez	a4,148aa <__ulp+0x24>
   148a0:	02079713          	slli	a4,a5,0x20
   148a4:	f2070553          	fmv.d.x	fa0,a4
   148a8:	8082                	ret
   148aa:	40f007bb          	negw	a5,a5
   148ae:	4147d79b          	sraiw	a5,a5,0x14
   148b2:	474d                	li	a4,19
   148b4:	00f74763          	blt	a4,a5,148c2 <__ulp+0x3c>
   148b8:	00080737          	lui	a4,0x80
   148bc:	40f757bb          	sraw	a5,a4,a5
   148c0:	b7c5                	j	148a0 <__ulp+0x1a>
   148c2:	37b1                	addiw	a5,a5,-20
   148c4:	4679                	li	a2,30
   148c6:	4701                	li	a4,0
   148c8:	4685                	li	a3,1
   148ca:	00f64663          	blt	a2,a5,148d6 <__ulp+0x50>
   148ce:	fff7c793          	not	a5,a5
   148d2:	00f696bb          	sllw	a3,a3,a5
   148d6:	57fd                	li	a5,-1
   148d8:	1682                	slli	a3,a3,0x20
   148da:	1782                	slli	a5,a5,0x20
   148dc:	9281                	srli	a3,a3,0x20
   148de:	8ff9                	and	a5,a5,a4
   148e0:	00d7e733          	or	a4,a5,a3
   148e4:	b7c1                	j	148a4 <__ulp+0x1e>

00000000000148e6 <__b2d>:
   148e6:	7139                	addi	sp,sp,-64
   148e8:	f426                	sd	s1,40(sp)
   148ea:	4944                	lw	s1,20(a0)
   148ec:	ec4e                	sd	s3,24(sp)
   148ee:	01850993          	addi	s3,a0,24
   148f2:	048a                	slli	s1,s1,0x2
   148f4:	94ce                	add	s1,s1,s3
   148f6:	f822                	sd	s0,48(sp)
   148f8:	ffc4a403          	lw	s0,-4(s1)
   148fc:	f04a                	sd	s2,32(sp)
   148fe:	e42e                	sd	a1,8(sp)
   14900:	8522                	mv	a0,s0
   14902:	fc06                	sd	ra,56(sp)
   14904:	a89ff0ef          	jal	ra,1438c <__hi0bits>
   14908:	65a2                	ld	a1,8(sp)
   1490a:	02000793          	li	a5,32
   1490e:	9f89                	subw	a5,a5,a0
   14910:	c19c                	sw	a5,0(a1)
   14912:	47a9                	li	a5,10
   14914:	ffc48913          	addi	s2,s1,-4
   14918:	04a7c763          	blt	a5,a0,14966 <__b2d+0x80>
   1491c:	46ad                	li	a3,11
   1491e:	40a6863b          	subw	a2,a3,a0
   14922:	00c4573b          	srlw	a4,s0,a2
   14926:	3ff007b7          	lui	a5,0x3ff00
   1492a:	8f5d                	or	a4,a4,a5
   1492c:	1702                	slli	a4,a4,0x20
   1492e:	4681                	li	a3,0
   14930:	0129f463          	bleu	s2,s3,14938 <__b2d+0x52>
   14934:	ff84a683          	lw	a3,-8(s1)
   14938:	0155079b          	addiw	a5,a0,21
   1493c:	00f417bb          	sllw	a5,s0,a5
   14940:	00c6d6bb          	srlw	a3,a3,a2
   14944:	8fd5                	or	a5,a5,a3
   14946:	547d                	li	s0,-1
   14948:	1782                	slli	a5,a5,0x20
   1494a:	1402                	slli	s0,s0,0x20
   1494c:	9381                	srli	a5,a5,0x20
   1494e:	8c79                	and	s0,s0,a4
   14950:	00f46733          	or	a4,s0,a5
   14954:	70e2                	ld	ra,56(sp)
   14956:	7442                	ld	s0,48(sp)
   14958:	74a2                	ld	s1,40(sp)
   1495a:	7902                	ld	s2,32(sp)
   1495c:	69e2                	ld	s3,24(sp)
   1495e:	f2070553          	fmv.d.x	fa0,a4
   14962:	6121                	addi	sp,sp,64
   14964:	8082                	ret
   14966:	4681                	li	a3,0
   14968:	0129f663          	bleu	s2,s3,14974 <__b2d+0x8e>
   1496c:	ff84a683          	lw	a3,-8(s1)
   14970:	ff848913          	addi	s2,s1,-8
   14974:	ff55079b          	addiw	a5,a0,-11
   14978:	853e                	mv	a0,a5
   1497a:	c3a9                	beqz	a5,149bc <__b2d+0xd6>
   1497c:	02000793          	li	a5,32
   14980:	40a7863b          	subw	a2,a5,a0
   14984:	00a4143b          	sllw	s0,s0,a0
   14988:	3ff007b7          	lui	a5,0x3ff00
   1498c:	8c5d                	or	s0,s0,a5
   1498e:	00c6d7bb          	srlw	a5,a3,a2
   14992:	8c5d                	or	s0,s0,a5
   14994:	02041713          	slli	a4,s0,0x20
   14998:	4781                	li	a5,0
   1499a:	0129f463          	bleu	s2,s3,149a2 <__b2d+0xbc>
   1499e:	ffc92783          	lw	a5,-4(s2)
   149a2:	00a696bb          	sllw	a3,a3,a0
   149a6:	00c7d7bb          	srlw	a5,a5,a2
   149aa:	8edd                	or	a3,a3,a5
   149ac:	547d                	li	s0,-1
   149ae:	1682                	slli	a3,a3,0x20
   149b0:	1402                	slli	s0,s0,0x20
   149b2:	9281                	srli	a3,a3,0x20
   149b4:	8c79                	and	s0,s0,a4
   149b6:	00d46733          	or	a4,s0,a3
   149ba:	bf69                	j	14954 <__b2d+0x6e>
   149bc:	3ff007b7          	lui	a5,0x3ff00
   149c0:	02069713          	slli	a4,a3,0x20
   149c4:	8c5d                	or	s0,s0,a5
   149c6:	9301                	srli	a4,a4,0x20
   149c8:	1402                	slli	s0,s0,0x20
   149ca:	8f41                	or	a4,a4,s0
   149cc:	b761                	j	14954 <__b2d+0x6e>

00000000000149ce <__d2b>:
   149ce:	7139                	addi	sp,sp,-64
   149d0:	f822                	sd	s0,48(sp)
   149d2:	e852                	sd	s4,16(sp)
   149d4:	e2050453          	fmv.x.d	s0,fa0
   149d8:	8a2e                	mv	s4,a1
   149da:	4585                	li	a1,1
   149dc:	f426                	sd	s1,40(sp)
   149de:	f04a                	sd	s2,32(sp)
   149e0:	ec4e                	sd	s3,24(sp)
   149e2:	fc06                	sd	ra,56(sp)
   149e4:	8932                	mv	s2,a2
   149e6:	feaff0ef          	jal	ra,141d0 <_Balloc>
   149ea:	001007b7          	lui	a5,0x100
   149ee:	42045493          	srai	s1,s0,0x20
   149f2:	17fd                	addi	a5,a5,-1
   149f4:	8fe5                	and	a5,a5,s1
   149f6:	0144d49b          	srliw	s1,s1,0x14
   149fa:	7ff4f493          	andi	s1,s1,2047
   149fe:	89aa                	mv	s3,a0
   14a00:	e0bd                	bnez	s1,14a66 <__d2b+0x98>
   14a02:	c63e                	sw	a5,12(sp)
   14a04:	2401                	sext.w	s0,s0
   14a06:	c43d                	beqz	s0,14a74 <__d2b+0xa6>
   14a08:	0028                	addi	a0,sp,8
   14a0a:	c422                	sw	s0,8(sp)
   14a0c:	9d1ff0ef          	jal	ra,143dc <__lo0bits>
   14a10:	46a2                	lw	a3,8(sp)
   14a12:	cd31                	beqz	a0,14a6e <__d2b+0xa0>
   14a14:	4732                	lw	a4,12(sp)
   14a16:	02000793          	li	a5,32
   14a1a:	9f89                	subw	a5,a5,a0
   14a1c:	00f717bb          	sllw	a5,a4,a5
   14a20:	8fd5                	or	a5,a5,a3
   14a22:	00a7573b          	srlw	a4,a4,a0
   14a26:	00f9ac23          	sw	a5,24(s3)
   14a2a:	c63a                	sw	a4,12(sp)
   14a2c:	4432                	lw	s0,12(sp)
   14a2e:	0089ae23          	sw	s0,28(s3)
   14a32:	00803433          	snez	s0,s0
   14a36:	0405                	addi	s0,s0,1
   14a38:	0089aa23          	sw	s0,20(s3)
   14a3c:	c8a9                	beqz	s1,14a8e <__d2b+0xc0>
   14a3e:	bcd4849b          	addiw	s1,s1,-1075
   14a42:	9ca9                	addw	s1,s1,a0
   14a44:	03500793          	li	a5,53
   14a48:	009a2023          	sw	s1,0(s4)
   14a4c:	40a7853b          	subw	a0,a5,a0
   14a50:	00a92023          	sw	a0,0(s2)
   14a54:	70e2                	ld	ra,56(sp)
   14a56:	7442                	ld	s0,48(sp)
   14a58:	854e                	mv	a0,s3
   14a5a:	74a2                	ld	s1,40(sp)
   14a5c:	7902                	ld	s2,32(sp)
   14a5e:	69e2                	ld	s3,24(sp)
   14a60:	6a42                	ld	s4,16(sp)
   14a62:	6121                	addi	sp,sp,64
   14a64:	8082                	ret
   14a66:	00100737          	lui	a4,0x100
   14a6a:	8fd9                	or	a5,a5,a4
   14a6c:	bf59                	j	14a02 <__d2b+0x34>
   14a6e:	00d9ac23          	sw	a3,24(s3)
   14a72:	bf6d                	j	14a2c <__d2b+0x5e>
   14a74:	0068                	addi	a0,sp,12
   14a76:	967ff0ef          	jal	ra,143dc <__lo0bits>
   14a7a:	47b2                	lw	a5,12(sp)
   14a7c:	0205051b          	addiw	a0,a0,32
   14a80:	4405                	li	s0,1
   14a82:	00f9ac23          	sw	a5,24(s3)
   14a86:	4785                	li	a5,1
   14a88:	00f9aa23          	sw	a5,20(s3)
   14a8c:	bf45                	j	14a3c <__d2b+0x6e>
   14a8e:	bce5051b          	addiw	a0,a0,-1074
   14a92:	00241793          	slli	a5,s0,0x2
   14a96:	00aa2023          	sw	a0,0(s4)
   14a9a:	97ce                	add	a5,a5,s3
   14a9c:	4bc8                	lw	a0,20(a5)
   14a9e:	0054141b          	slliw	s0,s0,0x5
   14aa2:	8ebff0ef          	jal	ra,1438c <__hi0bits>
   14aa6:	9c09                	subw	s0,s0,a0
   14aa8:	00892023          	sw	s0,0(s2)
   14aac:	b765                	j	14a54 <__d2b+0x86>

0000000000014aae <__ratio>:
   14aae:	7139                	addi	sp,sp,-64
   14ab0:	f04a                	sd	s2,32(sp)
   14ab2:	892e                	mv	s2,a1
   14ab4:	002c                	addi	a1,sp,8
   14ab6:	fc06                	sd	ra,56(sp)
   14ab8:	f426                	sd	s1,40(sp)
   14aba:	ec4e                	sd	s3,24(sp)
   14abc:	f822                	sd	s0,48(sp)
   14abe:	89aa                	mv	s3,a0
   14ac0:	e27ff0ef          	jal	ra,148e6 <__b2d>
   14ac4:	006c                	addi	a1,sp,12
   14ac6:	854a                	mv	a0,s2
   14ac8:	e20504d3          	fmv.x.d	s1,fa0
   14acc:	e1bff0ef          	jal	ra,148e6 <__b2d>
   14ad0:	01492683          	lw	a3,20(s2)
   14ad4:	0149a783          	lw	a5,20(s3)
   14ad8:	45b2                	lw	a1,12(sp)
   14ada:	e2050653          	fmv.x.d	a2,fa0
   14ade:	9f95                	subw	a5,a5,a3
   14ae0:	46a2                	lw	a3,8(sp)
   14ae2:	0057979b          	slliw	a5,a5,0x5
   14ae6:	9e8d                	subw	a3,a3,a1
   14ae8:	9ebd                	addw	a3,a3,a5
   14aea:	87b6                	mv	a5,a3
   14aec:	02d05a63          	blez	a3,14b20 <__ratio+0x72>
   14af0:	0146979b          	slliw	a5,a3,0x14
   14af4:	547d                	li	s0,-1
   14af6:	0204d693          	srli	a3,s1,0x20
   14afa:	9fb5                	addw	a5,a5,a3
   14afc:	9001                	srli	s0,s0,0x20
   14afe:	1782                	slli	a5,a5,0x20
   14b00:	8c65                	and	s0,s0,s1
   14b02:	8732                	mv	a4,a2
   14b04:	8c5d                	or	s0,s0,a5
   14b06:	f20407d3          	fmv.d.x	fa5,s0
   14b0a:	70e2                	ld	ra,56(sp)
   14b0c:	7442                	ld	s0,48(sp)
   14b0e:	f2070753          	fmv.d.x	fa4,a4
   14b12:	74a2                	ld	s1,40(sp)
   14b14:	7902                	ld	s2,32(sp)
   14b16:	69e2                	ld	s3,24(sp)
   14b18:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   14b1c:	6121                	addi	sp,sp,64
   14b1e:	8082                	ret
   14b20:	fff006b7          	lui	a3,0xfff00
   14b24:	02f687bb          	mulw	a5,a3,a5
   14b28:	02065713          	srli	a4,a2,0x20
   14b2c:	8426                	mv	s0,s1
   14b2e:	9fb9                	addw	a5,a5,a4
   14b30:	577d                	li	a4,-1
   14b32:	9301                	srli	a4,a4,0x20
   14b34:	1782                	slli	a5,a5,0x20
   14b36:	8f71                	and	a4,a4,a2
   14b38:	8f5d                	or	a4,a4,a5
   14b3a:	b7f1                	j	14b06 <__ratio+0x58>

0000000000014b3c <_mprec_log10>:
   14b3c:	47dd                	li	a5,23
   14b3e:	00a7c963          	blt	a5,a0,14b50 <_mprec_log10+0x14>
   14b42:	67e9                	lui	a5,0x1a
   14b44:	0b078793          	addi	a5,a5,176 # 1a0b0 <p05.3264>
   14b48:	050e                	slli	a0,a0,0x3
   14b4a:	953e                	add	a0,a0,a5
   14b4c:	2908                	fld	fa0,16(a0)
   14b4e:	8082                	ret
   14b50:	0001d7b7          	lui	a5,0x1d
   14b54:	9e87b507          	fld	fa0,-1560(a5) # 1c9e8 <__TMC_END__>
   14b58:	0001d7b7          	lui	a5,0x1d
   14b5c:	9f07b787          	fld	fa5,-1552(a5) # 1c9f0 <__TMC_END__+0x8>
   14b60:	357d                	addiw	a0,a0,-1
   14b62:	12f57553          	fmul.d	fa0,fa0,fa5
   14b66:	fd6d                	bnez	a0,14b60 <_mprec_log10+0x24>
   14b68:	8082                	ret

0000000000014b6a <__copybits>:
   14b6a:	fff5879b          	addiw	a5,a1,-1
   14b6e:	4a58                	lw	a4,20(a2)
   14b70:	4057d79b          	sraiw	a5,a5,0x5
   14b74:	0785                	addi	a5,a5,1
   14b76:	078a                	slli	a5,a5,0x2
   14b78:	01860693          	addi	a3,a2,24
   14b7c:	070a                	slli	a4,a4,0x2
   14b7e:	97aa                	add	a5,a5,a0
   14b80:	9736                	add	a4,a4,a3
   14b82:	00e6e563          	bltu	a3,a4,14b8c <__copybits+0x22>
   14b86:	00f56a63          	bltu	a0,a5,14b9a <__copybits+0x30>
   14b8a:	8082                	ret
   14b8c:	0691                	addi	a3,a3,4
   14b8e:	ffc6a603          	lw	a2,-4(a3) # ffffffffffeffffc <__global_pointer$+0xffffffffffee2e14>
   14b92:	0511                	addi	a0,a0,4
   14b94:	fec52e23          	sw	a2,-4(a0)
   14b98:	b7ed                	j	14b82 <__copybits+0x18>
   14b9a:	0511                	addi	a0,a0,4
   14b9c:	fe052e23          	sw	zero,-4(a0)
   14ba0:	b7dd                	j	14b86 <__copybits+0x1c>

0000000000014ba2 <__any_on>:
   14ba2:	4954                	lw	a3,20(a0)
   14ba4:	4055d793          	srai	a5,a1,0x5
   14ba8:	01850713          	addi	a4,a0,24
   14bac:	02f6c763          	blt	a3,a5,14bda <__any_on+0x38>
   14bb0:	00d7df63          	ble	a3,a5,14bce <__any_on+0x2c>
   14bb4:	89fd                	andi	a1,a1,31
   14bb6:	cd81                	beqz	a1,14bce <__any_on+0x2c>
   14bb8:	00279693          	slli	a3,a5,0x2
   14bbc:	96ba                	add	a3,a3,a4
   14bbe:	4290                	lw	a2,0(a3)
   14bc0:	4505                	li	a0,1
   14bc2:	00b656bb          	srlw	a3,a2,a1
   14bc6:	00b695bb          	sllw	a1,a3,a1
   14bca:	00c59e63          	bne	a1,a2,14be6 <__any_on+0x44>
   14bce:	078a                	slli	a5,a5,0x2
   14bd0:	97ba                	add	a5,a5,a4
   14bd2:	00f76663          	bltu	a4,a5,14bde <__any_on+0x3c>
   14bd6:	4501                	li	a0,0
   14bd8:	8082                	ret
   14bda:	87b6                	mv	a5,a3
   14bdc:	bfcd                	j	14bce <__any_on+0x2c>
   14bde:	17f1                	addi	a5,a5,-4
   14be0:	4394                	lw	a3,0(a5)
   14be2:	dae5                	beqz	a3,14bd2 <__any_on+0x30>
   14be4:	4505                	li	a0,1
   14be6:	8082                	ret

0000000000014be8 <cleanup_glue>:
   14be8:	1101                	addi	sp,sp,-32
   14bea:	e822                	sd	s0,16(sp)
   14bec:	842e                	mv	s0,a1
   14bee:	618c                	ld	a1,0(a1)
   14bf0:	e426                	sd	s1,8(sp)
   14bf2:	ec06                	sd	ra,24(sp)
   14bf4:	84aa                	mv	s1,a0
   14bf6:	c199                	beqz	a1,14bfc <cleanup_glue+0x14>
   14bf8:	ff1ff0ef          	jal	ra,14be8 <cleanup_glue>
   14bfc:	85a2                	mv	a1,s0
   14bfe:	6442                	ld	s0,16(sp)
   14c00:	60e2                	ld	ra,24(sp)
   14c02:	8526                	mv	a0,s1
   14c04:	64a2                	ld	s1,8(sp)
   14c06:	6105                	addi	sp,sp,32
   14c08:	a1dfd06f          	j	12624 <_free_r>

0000000000014c0c <_reclaim_reent>:
   14c0c:	8301b783          	ld	a5,-2000(gp) # 1ca18 <_impure_ptr>
   14c10:	0aa78063          	beq	a5,a0,14cb0 <_reclaim_reent+0xa4>
   14c14:	7d3c                	ld	a5,120(a0)
   14c16:	7179                	addi	sp,sp,-48
   14c18:	f022                	sd	s0,32(sp)
   14c1a:	ec26                	sd	s1,24(sp)
   14c1c:	e84a                	sd	s2,16(sp)
   14c1e:	f406                	sd	ra,40(sp)
   14c20:	e44e                	sd	s3,8(sp)
   14c22:	842a                	mv	s0,a0
   14c24:	4481                	li	s1,0
   14c26:	20000913          	li	s2,512
   14c2a:	eb85                	bnez	a5,14c5a <_reclaim_reent+0x4e>
   14c2c:	702c                	ld	a1,96(s0)
   14c2e:	c581                	beqz	a1,14c36 <_reclaim_reent+0x2a>
   14c30:	8522                	mv	a0,s0
   14c32:	9f3fd0ef          	jal	ra,12624 <_free_r>
   14c36:	1f843583          	ld	a1,504(s0)
   14c3a:	cd95                	beqz	a1,14c76 <_reclaim_reent+0x6a>
   14c3c:	20040493          	addi	s1,s0,512
   14c40:	02958b63          	beq	a1,s1,14c76 <_reclaim_reent+0x6a>
   14c44:	0005b903          	ld	s2,0(a1)
   14c48:	8522                	mv	a0,s0
   14c4a:	9dbfd0ef          	jal	ra,12624 <_free_r>
   14c4e:	85ca                	mv	a1,s2
   14c50:	bfc5                	j	14c40 <_reclaim_reent+0x34>
   14c52:	95a6                	add	a1,a1,s1
   14c54:	618c                	ld	a1,0(a1)
   14c56:	e989                	bnez	a1,14c68 <_reclaim_reent+0x5c>
   14c58:	04a1                	addi	s1,s1,8
   14c5a:	7c2c                	ld	a1,120(s0)
   14c5c:	ff249be3          	bne	s1,s2,14c52 <_reclaim_reent+0x46>
   14c60:	8522                	mv	a0,s0
   14c62:	9c3fd0ef          	jal	ra,12624 <_free_r>
   14c66:	b7d9                	j	14c2c <_reclaim_reent+0x20>
   14c68:	0005b983          	ld	s3,0(a1)
   14c6c:	8522                	mv	a0,s0
   14c6e:	9b7fd0ef          	jal	ra,12624 <_free_r>
   14c72:	85ce                	mv	a1,s3
   14c74:	b7cd                	j	14c56 <_reclaim_reent+0x4a>
   14c76:	644c                	ld	a1,136(s0)
   14c78:	c581                	beqz	a1,14c80 <_reclaim_reent+0x74>
   14c7a:	8522                	mv	a0,s0
   14c7c:	9a9fd0ef          	jal	ra,12624 <_free_r>
   14c80:	483c                	lw	a5,80(s0)
   14c82:	c385                	beqz	a5,14ca2 <_reclaim_reent+0x96>
   14c84:	6c3c                	ld	a5,88(s0)
   14c86:	8522                	mv	a0,s0
   14c88:	9782                	jalr	a5
   14c8a:	52043583          	ld	a1,1312(s0)
   14c8e:	c991                	beqz	a1,14ca2 <_reclaim_reent+0x96>
   14c90:	8522                	mv	a0,s0
   14c92:	7402                	ld	s0,32(sp)
   14c94:	70a2                	ld	ra,40(sp)
   14c96:	64e2                	ld	s1,24(sp)
   14c98:	6942                	ld	s2,16(sp)
   14c9a:	69a2                	ld	s3,8(sp)
   14c9c:	6145                	addi	sp,sp,48
   14c9e:	f4bff06f          	j	14be8 <cleanup_glue>
   14ca2:	70a2                	ld	ra,40(sp)
   14ca4:	7402                	ld	s0,32(sp)
   14ca6:	64e2                	ld	s1,24(sp)
   14ca8:	6942                	ld	s2,16(sp)
   14caa:	69a2                	ld	s3,8(sp)
   14cac:	6145                	addi	sp,sp,48
   14cae:	8082                	ret
   14cb0:	8082                	ret

0000000000014cb2 <frexp>:
   14cb2:	e20507d3          	fmv.x.d	a5,fa0
   14cb6:	80000637          	lui	a2,0x80000
   14cba:	fff64613          	not	a2,a2
   14cbe:	4207d713          	srai	a4,a5,0x20
   14cc2:	00c776b3          	and	a3,a4,a2
   14cc6:	00052023          	sw	zero,0(a0)
   14cca:	7ff005b7          	lui	a1,0x7ff00
   14cce:	04b6dc63          	ble	a1,a3,14d26 <frexp+0x74>
   14cd2:	00f6e5b3          	or	a1,a3,a5
   14cd6:	2581                	sext.w	a1,a1
   14cd8:	c5b9                	beqz	a1,14d26 <frexp+0x74>
   14cda:	001005b7          	lui	a1,0x100
   14cde:	02b6d163          	ble	a1,a3,14d00 <frexp+0x4e>
   14ce2:	0001d737          	lui	a4,0x1d
   14ce6:	9f873787          	fld	fa5,-1544(a4) # 1c9f8 <__TMC_END__+0x10>
   14cea:	12f577d3          	fmul.d	fa5,fa0,fa5
   14cee:	e20787d3          	fmv.x.d	a5,fa5
   14cf2:	4207d713          	srai	a4,a5,0x20
   14cf6:	00c776b3          	and	a3,a4,a2
   14cfa:	fca00613          	li	a2,-54
   14cfe:	c110                	sw	a2,0(a0)
   14d00:	4110                	lw	a2,0(a0)
   14d02:	4146d69b          	sraiw	a3,a3,0x14
   14d06:	c026869b          	addiw	a3,a3,-1022
   14d0a:	9eb1                	addw	a3,a3,a2
   14d0c:	c114                	sw	a3,0(a0)
   14d0e:	801006b7          	lui	a3,0x80100
   14d12:	16fd                	addi	a3,a3,-1
   14d14:	8f75                	and	a4,a4,a3
   14d16:	3fe006b7          	lui	a3,0x3fe00
   14d1a:	8f55                	or	a4,a4,a3
   14d1c:	56fd                	li	a3,-1
   14d1e:	9281                	srli	a3,a3,0x20
   14d20:	1702                	slli	a4,a4,0x20
   14d22:	8ff5                	and	a5,a5,a3
   14d24:	8fd9                	or	a5,a5,a4
   14d26:	f2078553          	fmv.d.x	fa0,a5
   14d2a:	8082                	ret

0000000000014d2c <_sprintf_r>:
   14d2c:	7111                	addi	sp,sp,-256
   14d2e:	f5be                	sd	a5,232(sp)
   14d30:	800007b7          	lui	a5,0x80000
   14d34:	fff7c793          	not	a5,a5
   14d38:	d83e                	sw	a5,48(sp)
   14d3a:	ce3e                	sw	a5,28(sp)
   14d3c:	77c1                	lui	a5,0xffff0
   14d3e:	edb6                	sd	a3,216(sp)
   14d40:	e82e                	sd	a1,16(sp)
   14d42:	f42e                	sd	a1,40(sp)
   14d44:	2087879b          	addiw	a5,a5,520
   14d48:	09b4                	addi	a3,sp,216
   14d4a:	080c                	addi	a1,sp,16
   14d4c:	e586                	sd	ra,200(sp)
   14d4e:	d03e                	sw	a5,32(sp)
   14d50:	f1ba                	sd	a4,224(sp)
   14d52:	f9c2                	sd	a6,240(sp)
   14d54:	fdc6                	sd	a7,248(sp)
   14d56:	e436                	sd	a3,8(sp)
   14d58:	25a000ef          	jal	ra,14fb2 <_svfprintf_r>
   14d5c:	67c2                	ld	a5,16(sp)
   14d5e:	00078023          	sb	zero,0(a5) # ffffffffffff0000 <__global_pointer$+0xfffffffffffd2e18>
   14d62:	60ae                	ld	ra,200(sp)
   14d64:	6111                	addi	sp,sp,256
   14d66:	8082                	ret

0000000000014d68 <sprintf>:
   14d68:	7111                	addi	sp,sp,-256
   14d6a:	f5be                	sd	a5,232(sp)
   14d6c:	800007b7          	lui	a5,0x80000
   14d70:	fff7c793          	not	a5,a5
   14d74:	d83e                	sw	a5,48(sp)
   14d76:	ce3e                	sw	a5,28(sp)
   14d78:	77c1                	lui	a5,0xffff0
   14d7a:	2087879b          	addiw	a5,a5,520
   14d7e:	d03e                	sw	a5,32(sp)
   14d80:	e82a                	sd	a0,16(sp)
   14d82:	f42a                	sd	a0,40(sp)
   14d84:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   14d88:	e9b2                	sd	a2,208(sp)
   14d8a:	edb6                	sd	a3,216(sp)
   14d8c:	862e                	mv	a2,a1
   14d8e:	0994                	addi	a3,sp,208
   14d90:	080c                	addi	a1,sp,16
   14d92:	e586                	sd	ra,200(sp)
   14d94:	f1ba                	sd	a4,224(sp)
   14d96:	f9c2                	sd	a6,240(sp)
   14d98:	fdc6                	sd	a7,248(sp)
   14d9a:	e436                	sd	a3,8(sp)
   14d9c:	216000ef          	jal	ra,14fb2 <_svfprintf_r>
   14da0:	67c2                	ld	a5,16(sp)
   14da2:	00078023          	sb	zero,0(a5) # ffffffffffff0000 <__global_pointer$+0xfffffffffffd2e18>
   14da6:	60ae                	ld	ra,200(sp)
   14da8:	6111                	addi	sp,sp,256
   14daa:	8082                	ret

0000000000014dac <__sread>:
   14dac:	1141                	addi	sp,sp,-16
   14dae:	e022                	sd	s0,0(sp)
   14db0:	842e                	mv	s0,a1
   14db2:	01259583          	lh	a1,18(a1) # 100012 <__global_pointer$+0xe2e2a>
   14db6:	e406                	sd	ra,8(sp)
   14db8:	037020ef          	jal	ra,175ee <_read_r>
   14dbc:	00054963          	bltz	a0,14dce <__sread+0x22>
   14dc0:	685c                	ld	a5,144(s0)
   14dc2:	97aa                	add	a5,a5,a0
   14dc4:	e85c                	sd	a5,144(s0)
   14dc6:	60a2                	ld	ra,8(sp)
   14dc8:	6402                	ld	s0,0(sp)
   14dca:	0141                	addi	sp,sp,16
   14dcc:	8082                	ret
   14dce:	01045783          	lhu	a5,16(s0)
   14dd2:	777d                	lui	a4,0xfffff
   14dd4:	177d                	addi	a4,a4,-1
   14dd6:	8ff9                	and	a5,a5,a4
   14dd8:	00f41823          	sh	a5,16(s0)
   14ddc:	b7ed                	j	14dc6 <__sread+0x1a>

0000000000014dde <__seofread>:
   14dde:	4501                	li	a0,0
   14de0:	8082                	ret

0000000000014de2 <__swrite>:
   14de2:	0105d783          	lhu	a5,16(a1)
   14de6:	7179                	addi	sp,sp,-48
   14de8:	f022                	sd	s0,32(sp)
   14dea:	ec26                	sd	s1,24(sp)
   14dec:	e84a                	sd	s2,16(sp)
   14dee:	e44e                	sd	s3,8(sp)
   14df0:	f406                	sd	ra,40(sp)
   14df2:	1007f793          	andi	a5,a5,256
   14df6:	84aa                	mv	s1,a0
   14df8:	842e                	mv	s0,a1
   14dfa:	8932                	mv	s2,a2
   14dfc:	89b6                	mv	s3,a3
   14dfe:	c799                	beqz	a5,14e0c <__swrite+0x2a>
   14e00:	01259583          	lh	a1,18(a1)
   14e04:	4689                	li	a3,2
   14e06:	4601                	li	a2,0
   14e08:	6ba020ef          	jal	ra,174c2 <_lseek_r>
   14e0c:	01045783          	lhu	a5,16(s0)
   14e10:	777d                	lui	a4,0xfffff
   14e12:	177d                	addi	a4,a4,-1
   14e14:	8ff9                	and	a5,a5,a4
   14e16:	00f41823          	sh	a5,16(s0)
   14e1a:	01241583          	lh	a1,18(s0)
   14e1e:	7402                	ld	s0,32(sp)
   14e20:	70a2                	ld	ra,40(sp)
   14e22:	86ce                	mv	a3,s3
   14e24:	864a                	mv	a2,s2
   14e26:	69a2                	ld	s3,8(sp)
   14e28:	6942                	ld	s2,16(sp)
   14e2a:	8526                	mv	a0,s1
   14e2c:	64e2                	ld	s1,24(sp)
   14e2e:	6145                	addi	sp,sp,48
   14e30:	0d20206f          	j	16f02 <_write_r>

0000000000014e34 <__sseek>:
   14e34:	1141                	addi	sp,sp,-16
   14e36:	e022                	sd	s0,0(sp)
   14e38:	842e                	mv	s0,a1
   14e3a:	01259583          	lh	a1,18(a1)
   14e3e:	e406                	sd	ra,8(sp)
   14e40:	682020ef          	jal	ra,174c2 <_lseek_r>
   14e44:	57fd                	li	a5,-1
   14e46:	01045703          	lhu	a4,16(s0)
   14e4a:	00f51b63          	bne	a0,a5,14e60 <__sseek+0x2c>
   14e4e:	77fd                	lui	a5,0xfffff
   14e50:	17fd                	addi	a5,a5,-1
   14e52:	8ff9                	and	a5,a5,a4
   14e54:	00f41823          	sh	a5,16(s0)
   14e58:	60a2                	ld	ra,8(sp)
   14e5a:	6402                	ld	s0,0(sp)
   14e5c:	0141                	addi	sp,sp,16
   14e5e:	8082                	ret
   14e60:	6785                	lui	a5,0x1
   14e62:	8fd9                	or	a5,a5,a4
   14e64:	00f41823          	sh	a5,16(s0)
   14e68:	e848                	sd	a0,144(s0)
   14e6a:	b7fd                	j	14e58 <__sseek+0x24>

0000000000014e6c <__sclose>:
   14e6c:	01259583          	lh	a1,18(a1)
   14e70:	13e0206f          	j	16fae <_close_r>

0000000000014e74 <strcmp>:
   14e74:	00b56733          	or	a4,a0,a1
   14e78:	53fd                	li	t2,-1
   14e7a:	8b1d                	andi	a4,a4,7
   14e7c:	eb4d                	bnez	a4,14f2e <strcmp+0xba>
   14e7e:	00008797          	auipc	a5,0x8
   14e82:	b827b783          	ld	a5,-1150(a5) # 1ca00 <mask>
   14e86:	6110                	ld	a2,0(a0)
   14e88:	6194                	ld	a3,0(a1)
   14e8a:	00f672b3          	and	t0,a2,a5
   14e8e:	00f66333          	or	t1,a2,a5
   14e92:	92be                	add	t0,t0,a5
   14e94:	0062e2b3          	or	t0,t0,t1
   14e98:	0a729963          	bne	t0,t2,14f4a <strcmp+0xd6>
   14e9c:	02d61e63          	bne	a2,a3,14ed8 <strcmp+0x64>
   14ea0:	6510                	ld	a2,8(a0)
   14ea2:	6594                	ld	a3,8(a1)
   14ea4:	00f672b3          	and	t0,a2,a5
   14ea8:	00f66333          	or	t1,a2,a5
   14eac:	92be                	add	t0,t0,a5
   14eae:	0062e2b3          	or	t0,t0,t1
   14eb2:	08729a63          	bne	t0,t2,14f46 <strcmp+0xd2>
   14eb6:	02d61163          	bne	a2,a3,14ed8 <strcmp+0x64>
   14eba:	6910                	ld	a2,16(a0)
   14ebc:	6994                	ld	a3,16(a1)
   14ebe:	00f672b3          	and	t0,a2,a5
   14ec2:	00f66333          	or	t1,a2,a5
   14ec6:	92be                	add	t0,t0,a5
   14ec8:	0062e2b3          	or	t0,t0,t1
   14ecc:	08729363          	bne	t0,t2,14f52 <strcmp+0xde>
   14ed0:	0561                	addi	a0,a0,24
   14ed2:	05e1                	addi	a1,a1,24
   14ed4:	fad609e3          	beq	a2,a3,14e86 <strcmp+0x12>
   14ed8:	03061713          	slli	a4,a2,0x30
   14edc:	03069793          	slli	a5,a3,0x30
   14ee0:	02f71863          	bne	a4,a5,14f10 <strcmp+0x9c>
   14ee4:	02061713          	slli	a4,a2,0x20
   14ee8:	02069793          	slli	a5,a3,0x20
   14eec:	02f71263          	bne	a4,a5,14f10 <strcmp+0x9c>
   14ef0:	01061713          	slli	a4,a2,0x10
   14ef4:	01069793          	slli	a5,a3,0x10
   14ef8:	00f71c63          	bne	a4,a5,14f10 <strcmp+0x9c>
   14efc:	03065713          	srli	a4,a2,0x30
   14f00:	0306d793          	srli	a5,a3,0x30
   14f04:	40f70533          	sub	a0,a4,a5
   14f08:	0ff57593          	andi	a1,a0,255
   14f0c:	e991                	bnez	a1,14f20 <strcmp+0xac>
   14f0e:	8082                	ret
   14f10:	9341                	srli	a4,a4,0x30
   14f12:	93c1                	srli	a5,a5,0x30
   14f14:	40f70533          	sub	a0,a4,a5
   14f18:	0ff57593          	andi	a1,a0,255
   14f1c:	e191                	bnez	a1,14f20 <strcmp+0xac>
   14f1e:	8082                	ret
   14f20:	0ff77713          	andi	a4,a4,255
   14f24:	0ff7f793          	andi	a5,a5,255
   14f28:	40f70533          	sub	a0,a4,a5
   14f2c:	8082                	ret
   14f2e:	00054603          	lbu	a2,0(a0)
   14f32:	0005c683          	lbu	a3,0(a1)
   14f36:	0505                	addi	a0,a0,1
   14f38:	0585                	addi	a1,a1,1
   14f3a:	00d61363          	bne	a2,a3,14f40 <strcmp+0xcc>
   14f3e:	fa65                	bnez	a2,14f2e <strcmp+0xba>
   14f40:	40d60533          	sub	a0,a2,a3
   14f44:	8082                	ret
   14f46:	0521                	addi	a0,a0,8
   14f48:	05a1                	addi	a1,a1,8
   14f4a:	fed612e3          	bne	a2,a3,14f2e <strcmp+0xba>
   14f4e:	4501                	li	a0,0
   14f50:	8082                	ret
   14f52:	0541                	addi	a0,a0,16
   14f54:	05c1                	addi	a1,a1,16
   14f56:	fcd61ce3          	bne	a2,a3,14f2e <strcmp+0xba>
   14f5a:	4501                	li	a0,0
   14f5c:	8082                	ret

0000000000014f5e <strcpy>:
   14f5e:	87aa                	mv	a5,a0
   14f60:	0005c703          	lbu	a4,0(a1)
   14f64:	0785                	addi	a5,a5,1
   14f66:	0585                	addi	a1,a1,1
   14f68:	fee78fa3          	sb	a4,-1(a5)
   14f6c:	fb75                	bnez	a4,14f60 <strcpy+0x2>
   14f6e:	8082                	ret

0000000000014f70 <strlen>:
   14f70:	87aa                	mv	a5,a0
   14f72:	0785                	addi	a5,a5,1
   14f74:	fff7c703          	lbu	a4,-1(a5)
   14f78:	ff6d                	bnez	a4,14f72 <strlen+0x2>
   14f7a:	40a78533          	sub	a0,a5,a0
   14f7e:	157d                	addi	a0,a0,-1
   14f80:	8082                	ret

0000000000014f82 <strncpy>:
   14f82:	872a                	mv	a4,a0
   14f84:	e211                	bnez	a2,14f88 <strncpy+0x6>
   14f86:	8082                	ret
   14f88:	0585                	addi	a1,a1,1
   14f8a:	fff5c683          	lbu	a3,-1(a1)
   14f8e:	00170793          	addi	a5,a4,1 # fffffffffffff001 <__global_pointer$+0xfffffffffffe1e19>
   14f92:	fff60813          	addi	a6,a2,-1 # ffffffff7fffffff <__global_pointer$+0xffffffff7ffe2e17>
   14f96:	fed78fa3          	sb	a3,-1(a5)
   14f9a:	e689                	bnez	a3,14fa4 <strncpy+0x22>
   14f9c:	9732                	add	a4,a4,a2
   14f9e:	00e79663          	bne	a5,a4,14faa <strncpy+0x28>
   14fa2:	8082                	ret
   14fa4:	873e                	mv	a4,a5
   14fa6:	8642                	mv	a2,a6
   14fa8:	bff1                	j	14f84 <strncpy+0x2>
   14faa:	0785                	addi	a5,a5,1
   14fac:	fe078fa3          	sb	zero,-1(a5)
   14fb0:	b7fd                	j	14f9e <strncpy+0x1c>

0000000000014fb2 <_svfprintf_r>:
   14fb2:	d9010113          	addi	sp,sp,-624
   14fb6:	26113423          	sd	ra,616(sp)
   14fba:	24913c23          	sd	s1,600(sp)
   14fbe:	25213823          	sd	s2,592(sp)
   14fc2:	25313423          	sd	s3,584(sp)
   14fc6:	23713423          	sd	s7,552(sp)
   14fca:	89ae                	mv	s3,a1
   14fcc:	84b2                	mv	s1,a2
   14fce:	8bb6                	mv	s7,a3
   14fd0:	26813023          	sd	s0,608(sp)
   14fd4:	25413023          	sd	s4,576(sp)
   14fd8:	23513c23          	sd	s5,568(sp)
   14fdc:	23613823          	sd	s6,560(sp)
   14fe0:	23813023          	sd	s8,544(sp)
   14fe4:	21913c23          	sd	s9,536(sp)
   14fe8:	21a13823          	sd	s10,528(sp)
   14fec:	21b13423          	sd	s11,520(sp)
   14ff0:	892a                	mv	s2,a0
   14ff2:	fc3fe0ef          	jal	ra,13fb4 <_localeconv_r>
   14ff6:	611c                	ld	a5,0(a0)
   14ff8:	853e                	mv	a0,a5
   14ffa:	e4be                	sd	a5,72(sp)
   14ffc:	f75ff0ef          	jal	ra,14f70 <strlen>
   15000:	0109d783          	lhu	a5,16(s3)
   15004:	ec2a                	sd	a0,24(sp)
   15006:	f982                	sd	zero,240(sp)
   15008:	fd82                	sd	zero,248(sp)
   1500a:	0807f793          	andi	a5,a5,128
   1500e:	cb85                	beqz	a5,1503e <_svfprintf_r+0x8c>
   15010:	0189b783          	ld	a5,24(s3)
   15014:	e78d                	bnez	a5,1503e <_svfprintf_r+0x8c>
   15016:	04000593          	li	a1,64
   1501a:	854a                	mv	a0,s2
   1501c:	b7cfb0ef          	jal	ra,10398 <_malloc_r>
   15020:	00a9b023          	sd	a0,0(s3)
   15024:	00a9bc23          	sd	a0,24(s3)
   15028:	e519                	bnez	a0,15036 <_svfprintf_r+0x84>
   1502a:	47b1                	li	a5,12
   1502c:	00f92023          	sw	a5,0(s2)
   15030:	57fd                	li	a5,-1
   15032:	f43e                	sd	a5,40(sp)
   15034:	a3cd                	j	15616 <_svfprintf_r+0x664>
   15036:	04000793          	li	a5,64
   1503a:	02f9a023          	sw	a5,32(s3)
   1503e:	67e9                	lui	a5,0x1a
   15040:	1d878793          	addi	a5,a5,472 # 1a1d8 <__mprec_bigtens+0x28>
   15044:	ed3e                	sd	a5,152(sp)
   15046:	0001a7b7          	lui	a5,0x1a
   1504a:	d787b783          	ld	a5,-648(a5) # 19d78 <zeroes.4441+0x18>
   1504e:	18010a93          	addi	s5,sp,384
   15052:	e256                	sd	s5,256(sp)
   15054:	f13e                	sd	a5,160(sp)
   15056:	0001a7b7          	lui	a5,0x1a
   1505a:	d887b783          	ld	a5,-632(a5) # 19d88 <zeroes.4441+0x28>
   1505e:	ea02                	sd	zero,272(sp)
   15060:	10012423          	sw	zero,264(sp)
   15064:	f53e                	sd	a5,168(sp)
   15066:	0001a7b7          	lui	a5,0x1a
   1506a:	d987b783          	ld	a5,-616(a5) # 19d98 <zeroes.4441+0x38>
   1506e:	4a01                	li	s4,0
   15070:	8cd6                	mv	s9,s5
   15072:	f082                	sd	zero,96(sp)
   15074:	ec82                	sd	zero,88(sp)
   15076:	e002                	sd	zero,0(sp)
   15078:	e082                	sd	zero,64(sp)
   1507a:	e882                	sd	zero,80(sp)
   1507c:	f402                	sd	zero,40(sp)
   1507e:	e93e                	sd	a5,144(sp)
   15080:	8426                	mv	s0,s1
   15082:	02500713          	li	a4,37
   15086:	00044783          	lbu	a5,0(s0)
   1508a:	c399                	beqz	a5,15090 <_svfprintf_r+0xde>
   1508c:	08e79663          	bne	a5,a4,15118 <_svfprintf_r+0x166>
   15090:	40940b3b          	subw	s6,s0,s1
   15094:	020b0f63          	beqz	s6,150d2 <_svfprintf_r+0x120>
   15098:	67d2                	ld	a5,272(sp)
   1509a:	009cb023          	sd	s1,0(s9)
   1509e:	016cb423          	sd	s6,8(s9)
   150a2:	97da                	add	a5,a5,s6
   150a4:	ea3e                	sd	a5,272(sp)
   150a6:	10812783          	lw	a5,264(sp)
   150aa:	0cc1                	addi	s9,s9,16
   150ac:	0017871b          	addiw	a4,a5,1
   150b0:	10e12423          	sw	a4,264(sp)
   150b4:	479d                	li	a5,7
   150b6:	00e7da63          	ble	a4,a5,150ca <_svfprintf_r+0x118>
   150ba:	0210                	addi	a2,sp,256
   150bc:	85ce                	mv	a1,s3
   150be:	854a                	mv	a0,s2
   150c0:	129020ef          	jal	ra,179e8 <__ssprint_r>
   150c4:	54051363          	bnez	a0,1560a <_svfprintf_r+0x658>
   150c8:	8cd6                	mv	s9,s5
   150ca:	57a2                	lw	a5,40(sp)
   150cc:	016787bb          	addw	a5,a5,s6
   150d0:	f43e                	sd	a5,40(sp)
   150d2:	00044783          	lbu	a5,0(s0)
   150d6:	e399                	bnez	a5,150dc <_svfprintf_r+0x12a>
   150d8:	43e0106f          	j	16516 <_svfprintf_r+0x1564>
   150dc:	00140793          	addi	a5,s0,1
   150e0:	0c0107a3          	sb	zero,207(sp)
   150e4:	5dfd                	li	s11,-1
   150e6:	f002                	sd	zero,32(sp)
   150e8:	4401                	li	s0,0
   150ea:	05a00d13          	li	s10,90
   150ee:	4c29                	li	s8,10
   150f0:	0007cb03          	lbu	s6,0(a5)
   150f4:	00178713          	addi	a4,a5,1
   150f8:	e83a                	sd	a4,16(sp)
   150fa:	46a5                	li	a3,9
   150fc:	02a00613          	li	a2,42
   15100:	fe0b079b          	addiw	a5,s6,-32
   15104:	0007871b          	sext.w	a4,a5
   15108:	3eed65e3          	bltu	s10,a4,15cf2 <_svfprintf_r+0xd40>
   1510c:	676a                	ld	a4,152(sp)
   1510e:	1782                	slli	a5,a5,0x20
   15110:	83f9                	srli	a5,a5,0x1e
   15112:	97ba                	add	a5,a5,a4
   15114:	439c                	lw	a5,0(a5)
   15116:	8782                	jr	a5
   15118:	0405                	addi	s0,s0,1
   1511a:	b7b5                	j	15086 <_svfprintf_r+0xd4>
   1511c:	0001a7b7          	lui	a5,0x1a
   15120:	dd878793          	addi	a5,a5,-552 # 19dd8 <zeroes.4441+0x78>
   15124:	f0be                	sd	a5,96(sp)
   15126:	008b8793          	addi	a5,s7,8
   1512a:	f83e                	sd	a5,48(sp)
   1512c:	02047793          	andi	a5,s0,32
   15130:	28078ae3          	beqz	a5,15bc4 <_svfprintf_r+0xc12>
   15134:	000bbb83          	ld	s7,0(s7)
   15138:	00147793          	andi	a5,s0,1
   1513c:	cf81                	beqz	a5,15154 <_svfprintf_r+0x1a2>
   1513e:	000b8b63          	beqz	s7,15154 <_svfprintf_r+0x1a2>
   15142:	03000793          	li	a5,48
   15146:	00246413          	ori	s0,s0,2
   1514a:	0cf10823          	sb	a5,208(sp)
   1514e:	0d6108a3          	sb	s6,209(sp)
   15152:	2401                	sext.w	s0,s0
   15154:	bff47413          	andi	s0,s0,-1025
   15158:	2401                	sext.w	s0,s0
   1515a:	4789                	li	a5,2
   1515c:	1650006f          	j	15ac0 <_svfprintf_r+0xb0e>
   15160:	854a                	mv	a0,s2
   15162:	e53fe0ef          	jal	ra,13fb4 <_localeconv_r>
   15166:	651c                	ld	a5,8(a0)
   15168:	853e                	mv	a0,a5
   1516a:	e8be                	sd	a5,80(sp)
   1516c:	e05ff0ef          	jal	ra,14f70 <strlen>
   15170:	e0aa                	sd	a0,64(sp)
   15172:	854a                	mv	a0,s2
   15174:	e41fe0ef          	jal	ra,13fb4 <_localeconv_r>
   15178:	691c                	ld	a5,16(a0)
   1517a:	e03e                	sd	a5,0(sp)
   1517c:	6786                	ld	a5,64(sp)
   1517e:	c38d                	beqz	a5,151a0 <_svfprintf_r+0x1ee>
   15180:	6782                	ld	a5,0(sp)
   15182:	cf99                	beqz	a5,151a0 <_svfprintf_r+0x1ee>
   15184:	0007c783          	lbu	a5,0(a5)
   15188:	cf81                	beqz	a5,151a0 <_svfprintf_r+0x1ee>
   1518a:	40046413          	ori	s0,s0,1024
   1518e:	2401                	sext.w	s0,s0
   15190:	a801                	j	151a0 <_svfprintf_r+0x1ee>
   15192:	0cf14783          	lbu	a5,207(sp)
   15196:	e789                	bnez	a5,151a0 <_svfprintf_r+0x1ee>
   15198:	02000793          	li	a5,32
   1519c:	0cf107a3          	sb	a5,207(sp)
   151a0:	67c2                	ld	a5,16(sp)
   151a2:	b7b9                	j	150f0 <_svfprintf_r+0x13e>
   151a4:	00146413          	ori	s0,s0,1
   151a8:	b7dd                	j	1518e <_svfprintf_r+0x1dc>
   151aa:	000ba783          	lw	a5,0(s7)
   151ae:	0ba1                	addi	s7,s7,8
   151b0:	f03e                	sd	a5,32(sp)
   151b2:	fe07d7e3          	bgez	a5,151a0 <_svfprintf_r+0x1ee>
   151b6:	5782                	lw	a5,32(sp)
   151b8:	40f007bb          	negw	a5,a5
   151bc:	f03e                	sd	a5,32(sp)
   151be:	00446413          	ori	s0,s0,4
   151c2:	b7f1                	j	1518e <_svfprintf_r+0x1dc>
   151c4:	02b00793          	li	a5,43
   151c8:	bfd1                	j	1519c <_svfprintf_r+0x1ea>
   151ca:	6742                	ld	a4,16(sp)
   151cc:	67c2                	ld	a5,16(sp)
   151ce:	00074b03          	lbu	s6,0(a4)
   151d2:	0785                	addi	a5,a5,1
   151d4:	02cb1c63          	bne	s6,a2,1520c <_svfprintf_r+0x25a>
   151d8:	000bae03          	lw	t3,0(s7)
   151dc:	008b8713          	addi	a4,s7,8
   151e0:	000e5363          	bgez	t3,151e6 <_svfprintf_r+0x234>
   151e4:	5e7d                	li	t3,-1
   151e6:	000e0d9b          	sext.w	s11,t3
   151ea:	8bba                	mv	s7,a4
   151ec:	e83e                	sd	a5,16(sp)
   151ee:	bf4d                	j	151a0 <_svfprintf_r+0x1ee>
   151f0:	03bc0e3b          	mulw	t3,s8,s11
   151f4:	0785                	addi	a5,a5,1
   151f6:	fff7cb03          	lbu	s6,-1(a5)
   151fa:	00ee0dbb          	addw	s11,t3,a4
   151fe:	fd0b059b          	addiw	a1,s6,-48
   15202:	872e                	mv	a4,a1
   15204:	feb6f6e3          	bleu	a1,a3,151f0 <_svfprintf_r+0x23e>
   15208:	e83e                	sd	a5,16(sp)
   1520a:	bddd                	j	15100 <_svfprintf_r+0x14e>
   1520c:	4d81                	li	s11,0
   1520e:	bfc5                	j	151fe <_svfprintf_r+0x24c>
   15210:	08046413          	ori	s0,s0,128
   15214:	bfad                	j	1518e <_svfprintf_r+0x1dc>
   15216:	67c2                	ld	a5,16(sp)
   15218:	f002                	sd	zero,32(sp)
   1521a:	5702                	lw	a4,32(sp)
   1521c:	fd0b0b1b          	addiw	s6,s6,-48
   15220:	0785                	addi	a5,a5,1
   15222:	02ec073b          	mulw	a4,s8,a4
   15226:	00eb073b          	addw	a4,s6,a4
   1522a:	fff7cb03          	lbu	s6,-1(a5)
   1522e:	f03a                	sd	a4,32(sp)
   15230:	fd0b071b          	addiw	a4,s6,-48
   15234:	fee6f3e3          	bleu	a4,a3,1521a <_svfprintf_r+0x268>
   15238:	bfc1                	j	15208 <_svfprintf_r+0x256>
   1523a:	00846413          	ori	s0,s0,8
   1523e:	bf81                	j	1518e <_svfprintf_r+0x1dc>
   15240:	67c2                	ld	a5,16(sp)
   15242:	0007c703          	lbu	a4,0(a5)
   15246:	06800793          	li	a5,104
   1524a:	00f71863          	bne	a4,a5,1525a <_svfprintf_r+0x2a8>
   1524e:	67c2                	ld	a5,16(sp)
   15250:	20046413          	ori	s0,s0,512
   15254:	0785                	addi	a5,a5,1
   15256:	e83e                	sd	a5,16(sp)
   15258:	bf1d                	j	1518e <_svfprintf_r+0x1dc>
   1525a:	04046413          	ori	s0,s0,64
   1525e:	bf05                	j	1518e <_svfprintf_r+0x1dc>
   15260:	67c2                	ld	a5,16(sp)
   15262:	0007c703          	lbu	a4,0(a5)
   15266:	06c00793          	li	a5,108
   1526a:	00f71863          	bne	a4,a5,1527a <_svfprintf_r+0x2c8>
   1526e:	67c2                	ld	a5,16(sp)
   15270:	0785                	addi	a5,a5,1
   15272:	e83e                	sd	a5,16(sp)
   15274:	02046413          	ori	s0,s0,32
   15278:	bf19                	j	1518e <_svfprintf_r+0x1dc>
   1527a:	01046413          	ori	s0,s0,16
   1527e:	bf01                	j	1518e <_svfprintf_r+0x1dc>
   15280:	008b8793          	addi	a5,s7,8
   15284:	f83e                	sd	a5,48(sp)
   15286:	000ba783          	lw	a5,0(s7)
   1528a:	0c0107a3          	sb	zero,207(sp)
   1528e:	10f10c23          	sb	a5,280(sp)
   15292:	4b81                	li	s7,0
   15294:	4d85                	li	s11,1
   15296:	4701                	li	a4,0
   15298:	e402                	sd	zero,8(sp)
   1529a:	4c01                	li	s8,0
   1529c:	4d01                	li	s10,0
   1529e:	0a24                	addi	s1,sp,280
   152a0:	86ba                	mv	a3,a4
   152a2:	01b75363          	ble	s11,a4,152a8 <_svfprintf_r+0x2f6>
   152a6:	86ee                	mv	a3,s11
   152a8:	0cf14603          	lbu	a2,207(sp)
   152ac:	0006879b          	sext.w	a5,a3
   152b0:	fc3e                	sd	a5,56(sp)
   152b2:	c601                	beqz	a2,152ba <_svfprintf_r+0x308>
   152b4:	0016879b          	addiw	a5,a3,1
   152b8:	fc3e                	sd	a5,56(sp)
   152ba:	00247693          	andi	a3,s0,2
   152be:	0006879b          	sext.w	a5,a3
   152c2:	f4be                	sd	a5,104(sp)
   152c4:	c781                	beqz	a5,152cc <_svfprintf_r+0x31a>
   152c6:	57e2                	lw	a5,56(sp)
   152c8:	2789                	addiw	a5,a5,2
   152ca:	fc3e                	sd	a5,56(sp)
   152cc:	08447793          	andi	a5,s0,132
   152d0:	f8be                	sd	a5,112(sp)
   152d2:	efa9                	bnez	a5,1532c <_svfprintf_r+0x37a>
   152d4:	5782                	lw	a5,32(sp)
   152d6:	56e2                	lw	a3,56(sp)
   152d8:	40d786bb          	subw	a3,a5,a3
   152dc:	04d05863          	blez	a3,1532c <_svfprintf_r+0x37a>
   152e0:	6869                	lui	a6,0x1a
   152e2:	48c1                	li	a7,16
   152e4:	34880813          	addi	a6,a6,840 # 1a348 <blanks.4425>
   152e8:	4e9d                	li	t4,7
   152ea:	10812583          	lw	a1,264(sp)
   152ee:	010cb023          	sd	a6,0(s9)
   152f2:	6652                	ld	a2,272(sp)
   152f4:	0015851b          	addiw	a0,a1,1
   152f8:	85aa                	mv	a1,a0
   152fa:	010c8f13          	addi	t5,s9,16
   152fe:	20d8c3e3          	blt	a7,a3,15d04 <_svfprintf_r+0xd52>
   15302:	00dcb423          	sd	a3,8(s9)
   15306:	96b2                	add	a3,a3,a2
   15308:	ea36                	sd	a3,272(sp)
   1530a:	10a12423          	sw	a0,264(sp)
   1530e:	469d                	li	a3,7
   15310:	8cfa                	mv	s9,t5
   15312:	00a6dd63          	ble	a0,a3,1532c <_svfprintf_r+0x37a>
   15316:	0210                	addi	a2,sp,256
   15318:	85ce                	mv	a1,s3
   1531a:	854a                	mv	a0,s2
   1531c:	fcba                	sd	a4,120(sp)
   1531e:	6ca020ef          	jal	ra,179e8 <__ssprint_r>
   15322:	c119                	beqz	a0,15328 <_svfprintf_r+0x376>
   15324:	1b40106f          	j	164d8 <_svfprintf_r+0x1526>
   15328:	7766                	ld	a4,120(sp)
   1532a:	8cd6                	mv	s9,s5
   1532c:	0cf14683          	lbu	a3,207(sp)
   15330:	c2a1                	beqz	a3,15370 <_svfprintf_r+0x3be>
   15332:	0cf10693          	addi	a3,sp,207
   15336:	00dcb023          	sd	a3,0(s9)
   1533a:	4685                	li	a3,1
   1533c:	00dcb423          	sd	a3,8(s9)
   15340:	66d2                	ld	a3,272(sp)
   15342:	0cc1                	addi	s9,s9,16
   15344:	0685                	addi	a3,a3,1
   15346:	ea36                	sd	a3,272(sp)
   15348:	10812683          	lw	a3,264(sp)
   1534c:	0016861b          	addiw	a2,a3,1
   15350:	10c12423          	sw	a2,264(sp)
   15354:	469d                	li	a3,7
   15356:	00c6dd63          	ble	a2,a3,15370 <_svfprintf_r+0x3be>
   1535a:	0210                	addi	a2,sp,256
   1535c:	85ce                	mv	a1,s3
   1535e:	854a                	mv	a0,s2
   15360:	fcba                	sd	a4,120(sp)
   15362:	686020ef          	jal	ra,179e8 <__ssprint_r>
   15366:	c119                	beqz	a0,1536c <_svfprintf_r+0x3ba>
   15368:	1700106f          	j	164d8 <_svfprintf_r+0x1526>
   1536c:	7766                	ld	a4,120(sp)
   1536e:	8cd6                	mv	s9,s5
   15370:	77a6                	ld	a5,104(sp)
   15372:	cf9d                	beqz	a5,153b0 <_svfprintf_r+0x3fe>
   15374:	0994                	addi	a3,sp,208
   15376:	00dcb023          	sd	a3,0(s9)
   1537a:	4689                	li	a3,2
   1537c:	00dcb423          	sd	a3,8(s9)
   15380:	66d2                	ld	a3,272(sp)
   15382:	0cc1                	addi	s9,s9,16
   15384:	0689                	addi	a3,a3,2
   15386:	ea36                	sd	a3,272(sp)
   15388:	10812683          	lw	a3,264(sp)
   1538c:	0016861b          	addiw	a2,a3,1
   15390:	10c12423          	sw	a2,264(sp)
   15394:	469d                	li	a3,7
   15396:	00c6dd63          	ble	a2,a3,153b0 <_svfprintf_r+0x3fe>
   1539a:	0210                	addi	a2,sp,256
   1539c:	85ce                	mv	a1,s3
   1539e:	854a                	mv	a0,s2
   153a0:	f4ba                	sd	a4,104(sp)
   153a2:	646020ef          	jal	ra,179e8 <__ssprint_r>
   153a6:	c119                	beqz	a0,153ac <_svfprintf_r+0x3fa>
   153a8:	1300106f          	j	164d8 <_svfprintf_r+0x1526>
   153ac:	7726                	ld	a4,104(sp)
   153ae:	8cd6                	mv	s9,s5
   153b0:	77c6                	ld	a5,112(sp)
   153b2:	08000693          	li	a3,128
   153b6:	04d79e63          	bne	a5,a3,15412 <_svfprintf_r+0x460>
   153ba:	5782                	lw	a5,32(sp)
   153bc:	56e2                	lw	a3,56(sp)
   153be:	40d786bb          	subw	a3,a5,a3
   153c2:	04d05863          	blez	a3,15412 <_svfprintf_r+0x460>
   153c6:	6869                	lui	a6,0x1a
   153c8:	48c1                	li	a7,16
   153ca:	35880813          	addi	a6,a6,856 # 1a358 <zeroes.4426>
   153ce:	4e9d                	li	t4,7
   153d0:	10812583          	lw	a1,264(sp)
   153d4:	010cb023          	sd	a6,0(s9)
   153d8:	6652                	ld	a2,272(sp)
   153da:	0015851b          	addiw	a0,a1,1
   153de:	85aa                	mv	a1,a0
   153e0:	010c8f13          	addi	t5,s9,16
   153e4:	14d8cee3          	blt	a7,a3,15d40 <_svfprintf_r+0xd8e>
   153e8:	00dcb423          	sd	a3,8(s9)
   153ec:	96b2                	add	a3,a3,a2
   153ee:	ea36                	sd	a3,272(sp)
   153f0:	10a12423          	sw	a0,264(sp)
   153f4:	469d                	li	a3,7
   153f6:	8cfa                	mv	s9,t5
   153f8:	00a6dd63          	ble	a0,a3,15412 <_svfprintf_r+0x460>
   153fc:	0210                	addi	a2,sp,256
   153fe:	85ce                	mv	a1,s3
   15400:	854a                	mv	a0,s2
   15402:	f4ba                	sd	a4,104(sp)
   15404:	5e4020ef          	jal	ra,179e8 <__ssprint_r>
   15408:	c119                	beqz	a0,1540e <_svfprintf_r+0x45c>
   1540a:	0ce0106f          	j	164d8 <_svfprintf_r+0x1526>
   1540e:	7726                	ld	a4,104(sp)
   15410:	8cd6                	mv	s9,s5
   15412:	41b7073b          	subw	a4,a4,s11
   15416:	04e05663          	blez	a4,15462 <_svfprintf_r+0x4b0>
   1541a:	6869                	lui	a6,0x1a
   1541c:	48c1                	li	a7,16
   1541e:	35880813          	addi	a6,a6,856 # 1a358 <zeroes.4426>
   15422:	4e9d                	li	t4,7
   15424:	10812603          	lw	a2,264(sp)
   15428:	010cb023          	sd	a6,0(s9)
   1542c:	66d2                	ld	a3,272(sp)
   1542e:	0016059b          	addiw	a1,a2,1
   15432:	862e                	mv	a2,a1
   15434:	010c8513          	addi	a0,s9,16
   15438:	14e8c2e3          	blt	a7,a4,15d7c <_svfprintf_r+0xdca>
   1543c:	00ecb423          	sd	a4,8(s9)
   15440:	9736                	add	a4,a4,a3
   15442:	ea3a                	sd	a4,272(sp)
   15444:	10b12423          	sw	a1,264(sp)
   15448:	471d                	li	a4,7
   1544a:	8caa                	mv	s9,a0
   1544c:	00b75b63          	ble	a1,a4,15462 <_svfprintf_r+0x4b0>
   15450:	0210                	addi	a2,sp,256
   15452:	85ce                	mv	a1,s3
   15454:	854a                	mv	a0,s2
   15456:	592020ef          	jal	ra,179e8 <__ssprint_r>
   1545a:	c119                	beqz	a0,15460 <_svfprintf_r+0x4ae>
   1545c:	07c0106f          	j	164d8 <_svfprintf_r+0x1526>
   15460:	8cd6                	mv	s9,s5
   15462:	10047693          	andi	a3,s0,256
   15466:	6752                	ld	a4,272(sp)
   15468:	140696e3          	bnez	a3,15db4 <_svfprintf_r+0xe02>
   1546c:	10812783          	lw	a5,264(sp)
   15470:	00ed8e33          	add	t3,s11,a4
   15474:	009cb023          	sd	s1,0(s9)
   15478:	0017871b          	addiw	a4,a5,1
   1547c:	01bcb423          	sd	s11,8(s9)
   15480:	ea72                	sd	t3,272(sp)
   15482:	10e12423          	sw	a4,264(sp)
   15486:	479d                	li	a5,7
   15488:	0cc1                	addi	s9,s9,16
   1548a:	20e7d1e3          	ble	a4,a5,15e8c <_svfprintf_r+0xeda>
   1548e:	0210                	addi	a2,sp,256
   15490:	85ce                	mv	a1,s3
   15492:	854a                	mv	a0,s2
   15494:	554020ef          	jal	ra,179e8 <__ssprint_r>
   15498:	c119                	beqz	a0,1549e <_svfprintf_r+0x4ec>
   1549a:	03e0106f          	j	164d8 <_svfprintf_r+0x1526>
   1549e:	8cd6                	mv	s9,s5
   154a0:	1ed0006f          	j	15e8c <_svfprintf_r+0xeda>
   154a4:	01046413          	ori	s0,s0,16
   154a8:	2401                	sext.w	s0,s0
   154aa:	008b8793          	addi	a5,s7,8
   154ae:	f83e                	sd	a5,48(sp)
   154b0:	02047793          	andi	a5,s0,32
   154b4:	cb85                	beqz	a5,154e4 <_svfprintf_r+0x532>
   154b6:	000bbb83          	ld	s7,0(s7)
   154ba:	000bd863          	bgez	s7,154ca <_svfprintf_r+0x518>
   154be:	02d00793          	li	a5,45
   154c2:	41700bb3          	neg	s7,s7
   154c6:	0cf107a3          	sb	a5,207(sp)
   154ca:	57fd                	li	a5,-1
   154cc:	72fd9663          	bne	s11,a5,15bf8 <_svfprintf_r+0xc46>
   154d0:	47a5                	li	a5,9
   154d2:	7977e163          	bltu	a5,s7,15c54 <_svfprintf_r+0xca2>
   154d6:	030b8b9b          	addiw	s7,s7,48
   154da:	17710da3          	sb	s7,379(sp)
   154de:	17b10493          	addi	s1,sp,379
   154e2:	afa1                	j	15c3a <_svfprintf_r+0xc88>
   154e4:	01047793          	andi	a5,s0,16
   154e8:	f7f9                	bnez	a5,154b6 <_svfprintf_r+0x504>
   154ea:	04047793          	andi	a5,s0,64
   154ee:	c781                	beqz	a5,154f6 <_svfprintf_r+0x544>
   154f0:	000b9b83          	lh	s7,0(s7)
   154f4:	b7d9                	j	154ba <_svfprintf_r+0x508>
   154f6:	20047793          	andi	a5,s0,512
   154fa:	c781                	beqz	a5,15502 <_svfprintf_r+0x550>
   154fc:	000b8b83          	lb	s7,0(s7)
   15500:	bf6d                	j	154ba <_svfprintf_r+0x508>
   15502:	000bab83          	lw	s7,0(s7)
   15506:	bf55                	j	154ba <_svfprintf_r+0x508>
   15508:	00847793          	andi	a5,s0,8
   1550c:	cfb9                	beqz	a5,1556a <_svfprintf_r+0x5b8>
   1550e:	0bbd                	addi	s7,s7,15
   15510:	ff0bfb93          	andi	s7,s7,-16
   15514:	010b8793          	addi	a5,s7,16
   15518:	f83e                	sd	a5,48(sp)
   1551a:	000bb783          	ld	a5,0(s7)
   1551e:	f9be                	sd	a5,240(sp)
   15520:	008bb783          	ld	a5,8(s7)
   15524:	fdbe                	sd	a5,248(sp)
   15526:	1988                	addi	a0,sp,240
   15528:	a51fe0ef          	jal	ra,13f78 <_ldcheck>
   1552c:	cdaa                	sw	a0,216(sp)
   1552e:	4789                	li	a5,2
   15530:	04f51c63          	bne	a0,a5,15588 <_svfprintf_r+0x5d6>
   15534:	754e                	ld	a0,240(sp)
   15536:	75ee                	ld	a1,248(sp)
   15538:	4601                	li	a2,0
   1553a:	4681                	li	a3,0
   1553c:	2ca030ef          	jal	ra,18806 <__letf2>
   15540:	00055663          	bgez	a0,1554c <_svfprintf_r+0x59a>
   15544:	02d00793          	li	a5,45
   15548:	0cf107a3          	sb	a5,207(sp)
   1554c:	04700793          	li	a5,71
   15550:	0367c763          	blt	a5,s6,1557e <_svfprintf_r+0x5cc>
   15554:	0001a4b7          	lui	s1,0x1a
   15558:	da048493          	addi	s1,s1,-608 # 19da0 <zeroes.4441+0x40>
   1555c:	f7f47413          	andi	s0,s0,-129
   15560:	2401                	sext.w	s0,s0
   15562:	4b81                	li	s7,0
   15564:	4d8d                	li	s11,3
   15566:	4701                	li	a4,0
   15568:	adf9                	j	15c46 <_svfprintf_r+0xc94>
   1556a:	000bb507          	fld	fa0,0(s7)
   1556e:	008b8793          	addi	a5,s7,8
   15572:	f83e                	sd	a5,48(sp)
   15574:	2bc040ef          	jal	ra,19830 <__extenddftf2>
   15578:	f9aa                	sd	a0,240(sp)
   1557a:	fdae                	sd	a1,248(sp)
   1557c:	b76d                	j	15526 <_svfprintf_r+0x574>
   1557e:	0001a4b7          	lui	s1,0x1a
   15582:	da848493          	addi	s1,s1,-600 # 19da8 <zeroes.4441+0x48>
   15586:	bfd9                	j	1555c <_svfprintf_r+0x5aa>
   15588:	4785                	li	a5,1
   1558a:	02f51763          	bne	a0,a5,155b8 <_svfprintf_r+0x606>
   1558e:	77ee                	ld	a5,248(sp)
   15590:	0007d663          	bgez	a5,1559c <_svfprintf_r+0x5ea>
   15594:	02d00793          	li	a5,45
   15598:	0cf107a3          	sb	a5,207(sp)
   1559c:	04700793          	li	a5,71
   155a0:	0167c763          	blt	a5,s6,155ae <_svfprintf_r+0x5fc>
   155a4:	0001a4b7          	lui	s1,0x1a
   155a8:	db048493          	addi	s1,s1,-592 # 19db0 <zeroes.4441+0x50>
   155ac:	bf45                	j	1555c <_svfprintf_r+0x5aa>
   155ae:	0001a4b7          	lui	s1,0x1a
   155b2:	db848493          	addi	s1,s1,-584 # 19db8 <zeroes.4441+0x58>
   155b6:	b75d                	j	1555c <_svfprintf_r+0x5aa>
   155b8:	fdfb7c13          	andi	s8,s6,-33
   155bc:	04100793          	li	a5,65
   155c0:	08fc1963          	bne	s8,a5,15652 <_svfprintf_r+0x6a0>
   155c4:	03000793          	li	a5,48
   155c8:	0cf10823          	sb	a5,208(sp)
   155cc:	06100713          	li	a4,97
   155d0:	05800793          	li	a5,88
   155d4:	00eb1463          	bne	s6,a4,155dc <_svfprintf_r+0x62a>
   155d8:	07800793          	li	a5,120
   155dc:	0cf108a3          	sb	a5,209(sp)
   155e0:	00246413          	ori	s0,s0,2
   155e4:	06300793          	li	a5,99
   155e8:	2401                	sext.w	s0,s0
   155ea:	19b7d863          	ble	s11,a5,1577a <_svfprintf_r+0x7c8>
   155ee:	001d859b          	addiw	a1,s11,1
   155f2:	854a                	mv	a0,s2
   155f4:	da5fa0ef          	jal	ra,10398 <_malloc_r>
   155f8:	84aa                	mv	s1,a0
   155fa:	18051363          	bnez	a0,15780 <_svfprintf_r+0x7ce>
   155fe:	0109d783          	lhu	a5,16(s3)
   15602:	0407e793          	ori	a5,a5,64
   15606:	00f99823          	sh	a5,16(s3)
   1560a:	0109d783          	lhu	a5,16(s3)
   1560e:	0407f793          	andi	a5,a5,64
   15612:	a0079fe3          	bnez	a5,15030 <_svfprintf_r+0x7e>
   15616:	26813083          	ld	ra,616(sp)
   1561a:	26013403          	ld	s0,608(sp)
   1561e:	7522                	ld	a0,40(sp)
   15620:	25813483          	ld	s1,600(sp)
   15624:	25013903          	ld	s2,592(sp)
   15628:	24813983          	ld	s3,584(sp)
   1562c:	24013a03          	ld	s4,576(sp)
   15630:	23813a83          	ld	s5,568(sp)
   15634:	23013b03          	ld	s6,560(sp)
   15638:	22813b83          	ld	s7,552(sp)
   1563c:	22013c03          	ld	s8,544(sp)
   15640:	21813c83          	ld	s9,536(sp)
   15644:	21013d03          	ld	s10,528(sp)
   15648:	20813d83          	ld	s11,520(sp)
   1564c:	27010113          	addi	sp,sp,624
   15650:	8082                	ret
   15652:	57fd                	li	a5,-1
   15654:	12fd8863          	beq	s11,a5,15784 <_svfprintf_r+0x7d2>
   15658:	04700793          	li	a5,71
   1565c:	4b81                	li	s7,0
   1565e:	00fc1463          	bne	s8,a5,15666 <_svfprintf_r+0x6b4>
   15662:	120d8463          	beqz	s11,1578a <_svfprintf_r+0x7d8>
   15666:	10046793          	ori	a5,s0,256
   1566a:	7a6e                	ld	s4,248(sp)
   1566c:	2781                	sext.w	a5,a5
   1566e:	fc3e                	sd	a5,56(sp)
   15670:	fc82                	sd	zero,120(sp)
   15672:	7ece                	ld	t4,240(sp)
   15674:	000a5963          	bgez	s4,15686 <_svfprintf_r+0x6d4>
   15678:	57fd                	li	a5,-1
   1567a:	17fe                	slli	a5,a5,0x3f
   1567c:	00fa4a33          	xor	s4,s4,a5
   15680:	02d00793          	li	a5,45
   15684:	fcbe                	sd	a5,120(sp)
   15686:	04100793          	li	a5,65
   1568a:	22fc1363          	bne	s8,a5,158b0 <_svfprintf_r+0x8fe>
   1568e:	8576                	mv	a0,t4
   15690:	85d2                	mv	a1,s4
   15692:	282040ef          	jal	ra,19914 <__trunctfdf2>
   15696:	09a8                	addi	a0,sp,216
   15698:	e1aff0ef          	jal	ra,14cb2 <frexp>
   1569c:	194040ef          	jal	ra,19830 <__extenddftf2>
   156a0:	768a                	ld	a3,160(sp)
   156a2:	4601                	li	a2,0
   156a4:	226030ef          	jal	ra,188ca <__multf3>
   156a8:	4601                	li	a2,0
   156aa:	4681                	li	a3,0
   156ac:	e12a                	sd	a0,128(sp)
   156ae:	e52e                	sd	a1,136(sp)
   156b0:	7ef020ef          	jal	ra,1869e <__eqtf2>
   156b4:	e119                	bnez	a0,156ba <_svfprintf_r+0x708>
   156b6:	4785                	li	a5,1
   156b8:	cdbe                	sw	a5,216(sp)
   156ba:	06100793          	li	a5,97
   156be:	0cfb1963          	bne	s6,a5,15790 <_svfprintf_r+0x7de>
   156c2:	0001a7b7          	lui	a5,0x1a
   156c6:	dc078793          	addi	a5,a5,-576 # 19dc0 <zeroes.4441+0x60>
   156ca:	e43e                	sd	a5,8(sp)
   156cc:	fffd871b          	addiw	a4,s11,-1
   156d0:	8a26                	mv	s4,s1
   156d2:	76aa                	ld	a3,168(sp)
   156d4:	650a                	ld	a0,128(sp)
   156d6:	65aa                	ld	a1,136(sp)
   156d8:	4601                	li	a2,0
   156da:	f93a                	sd	a4,176(sp)
   156dc:	1ee030ef          	jal	ra,188ca <__multf3>
   156e0:	8d2a                	mv	s10,a0
   156e2:	f4ae                	sd	a1,104(sp)
   156e4:	03c040ef          	jal	ra,19720 <__fixtfsi>
   156e8:	0005079b          	sext.w	a5,a0
   156ec:	f8be                	sd	a5,112(sp)
   156ee:	0c4040ef          	jal	ra,197b2 <__floatsitf>
   156f2:	77a6                	ld	a5,104(sp)
   156f4:	86ae                	mv	a3,a1
   156f6:	862a                	mv	a2,a0
   156f8:	85be                	mv	a1,a5
   156fa:	856a                	mv	a0,s10
   156fc:	015030ef          	jal	ra,18f10 <__subtf3>
   15700:	67a2                	ld	a5,8(sp)
   15702:	7746                	ld	a4,112(sp)
   15704:	0a05                	addi	s4,s4,1
   15706:	e12a                	sd	a0,128(sp)
   15708:	00e786b3          	add	a3,a5,a4
   1570c:	774a                	ld	a4,176(sp)
   1570e:	0006c683          	lbu	a3,0(a3) # 3fe00000 <__global_pointer$+0x3fde2e18>
   15712:	e52e                	sd	a1,136(sp)
   15714:	0007079b          	sext.w	a5,a4
   15718:	f4be                	sd	a5,104(sp)
   1571a:	feda0fa3          	sb	a3,-1(s4)
   1571e:	57fd                	li	a5,-1
   15720:	88aa                	mv	a7,a0
   15722:	8d2e                	mv	s10,a1
   15724:	06f70b63          	beq	a4,a5,1579a <_svfprintf_r+0x7e8>
   15728:	377d                	addiw	a4,a4,-1
   1572a:	4601                	li	a2,0
   1572c:	4681                	li	a3,0
   1572e:	f93a                	sd	a4,176(sp)
   15730:	fd2a                	sd	a0,184(sp)
   15732:	76d020ef          	jal	ra,1869e <__eqtf2>
   15736:	774a                	ld	a4,176(sp)
   15738:	78ea                	ld	a7,184(sp)
   1573a:	fd41                	bnez	a0,156d2 <_svfprintf_r+0x720>
   1573c:	66ca                	ld	a3,144(sp)
   1573e:	4601                	li	a2,0
   15740:	8546                	mv	a0,a7
   15742:	85ea                	mv	a1,s10
   15744:	e146                	sd	a7,128(sp)
   15746:	7fd020ef          	jal	ra,18742 <__getf2>
   1574a:	04a04b63          	bgtz	a0,157a0 <_svfprintf_r+0x7ee>
   1574e:	688a                	ld	a7,128(sp)
   15750:	66ca                	ld	a3,144(sp)
   15752:	4601                	li	a2,0
   15754:	8546                	mv	a0,a7
   15756:	85ea                	mv	a1,s10
   15758:	747020ef          	jal	ra,1869e <__eqtf2>
   1575c:	e509                	bnez	a0,15766 <_svfprintf_r+0x7b4>
   1575e:	77c6                	ld	a5,112(sp)
   15760:	0017f713          	andi	a4,a5,1
   15764:	ef15                	bnez	a4,157a0 <_svfprintf_r+0x7ee>
   15766:	5726                	lw	a4,104(sp)
   15768:	03000693          	li	a3,48
   1576c:	06074163          	bltz	a4,157ce <_svfprintf_r+0x81c>
   15770:	0a05                	addi	s4,s4,1
   15772:	feda0fa3          	sb	a3,-1(s4)
   15776:	377d                	addiw	a4,a4,-1
   15778:	bfd5                	j	1576c <_svfprintf_r+0x7ba>
   1577a:	4b81                	li	s7,0
   1577c:	0a24                	addi	s1,sp,280
   1577e:	b5e5                	j	15666 <_svfprintf_r+0x6b4>
   15780:	8baa                	mv	s7,a0
   15782:	b5d5                	j	15666 <_svfprintf_r+0x6b4>
   15784:	4b81                	li	s7,0
   15786:	4d99                	li	s11,6
   15788:	bdf9                	j	15666 <_svfprintf_r+0x6b4>
   1578a:	8bee                	mv	s7,s11
   1578c:	4d85                	li	s11,1
   1578e:	bde1                	j	15666 <_svfprintf_r+0x6b4>
   15790:	0001a7b7          	lui	a5,0x1a
   15794:	dd878793          	addi	a5,a5,-552 # 19dd8 <zeroes.4441+0x78>
   15798:	bf0d                	j	156ca <_svfprintf_r+0x718>
   1579a:	57fd                	li	a5,-1
   1579c:	f4be                	sd	a5,104(sp)
   1579e:	bf79                	j	1573c <_svfprintf_r+0x78a>
   157a0:	67a2                	ld	a5,8(sp)
   157a2:	f5d2                	sd	s4,232(sp)
   157a4:	03000593          	li	a1,48
   157a8:	00f7c603          	lbu	a2,15(a5)
   157ac:	76ae                	ld	a3,232(sp)
   157ae:	fff68713          	addi	a4,a3,-1
   157b2:	f5ba                	sd	a4,232(sp)
   157b4:	fff6c703          	lbu	a4,-1(a3)
   157b8:	0ec70563          	beq	a4,a2,158a2 <_svfprintf_r+0x8f0>
   157bc:	03900613          	li	a2,57
   157c0:	0ec71463          	bne	a4,a2,158a8 <_svfprintf_r+0x8f6>
   157c4:	67a2                	ld	a5,8(sp)
   157c6:	00a7c703          	lbu	a4,10(a5)
   157ca:	fee68fa3          	sb	a4,-1(a3)
   157ce:	04700713          	li	a4,71
   157d2:	409a0a3b          	subw	s4,s4,s1
   157d6:	4d6e                	lw	s10,216(sp)
   157d8:	18ec1463          	bne	s8,a4,15960 <_svfprintf_r+0x9ae>
   157dc:	5775                	li	a4,-3
   157de:	00ed4463          	blt	s10,a4,157e6 <_svfprintf_r+0x834>
   157e2:	1fadd463          	ble	s10,s11,159ca <_svfprintf_r+0xa18>
   157e6:	3b79                	addiw	s6,s6,-2
   157e8:	fffd069b          	addiw	a3,s10,-1
   157ec:	cdb6                	sw	a3,216(sp)
   157ee:	fdfb7613          	andi	a2,s6,-33
   157f2:	04100513          	li	a0,65
   157f6:	0ffb7713          	andi	a4,s6,255
   157fa:	4581                	li	a1,0
   157fc:	00a61663          	bne	a2,a0,15808 <_svfprintf_r+0x856>
   15800:	273d                	addiw	a4,a4,15
   15802:	0ff77713          	andi	a4,a4,255
   15806:	4585                	li	a1,1
   15808:	0ee10023          	sb	a4,224(sp)
   1580c:	02b00793          	li	a5,43
   15810:	0006d763          	bgez	a3,1581e <_svfprintf_r+0x86c>
   15814:	4685                	li	a3,1
   15816:	41a686bb          	subw	a3,a3,s10
   1581a:	02d00793          	li	a5,45
   1581e:	0ef100a3          	sb	a5,225(sp)
   15822:	47a5                	li	a5,9
   15824:	16d7da63          	ble	a3,a5,15998 <_svfprintf_r+0x9e6>
   15828:	0ef10713          	addi	a4,sp,239
   1582c:	853a                	mv	a0,a4
   1582e:	45a9                	li	a1,10
   15830:	4825                	li	a6,9
   15832:	02b6e7bb          	remw	a5,a3,a1
   15836:	fff70613          	addi	a2,a4,-1
   1583a:	02b6c6bb          	divw	a3,a3,a1
   1583e:	0307879b          	addiw	a5,a5,48
   15842:	fef70fa3          	sb	a5,-1(a4)
   15846:	14d84063          	blt	a6,a3,15986 <_svfprintf_r+0x9d4>
   1584a:	0306879b          	addiw	a5,a3,48
   1584e:	fef60fa3          	sb	a5,-1(a2)
   15852:	1779                	addi	a4,a4,-2
   15854:	0e210613          	addi	a2,sp,226
   15858:	12a76963          	bltu	a4,a0,1598a <_svfprintf_r+0x9d8>
   1585c:	119c                	addi	a5,sp,224
   1585e:	40f607bb          	subw	a5,a2,a5
   15862:	ecbe                	sd	a5,88(sp)
   15864:	47e6                	lw	a5,88(sp)
   15866:	4705                	li	a4,1
   15868:	01478dbb          	addw	s11,a5,s4
   1586c:	87ee                	mv	a5,s11
   1586e:	01474563          	blt	a4,s4,15878 <_svfprintf_r+0x8c6>
   15872:	00147713          	andi	a4,s0,1
   15876:	c701                	beqz	a4,1587e <_svfprintf_r+0x8cc>
   15878:	4762                	lw	a4,24(sp)
   1587a:	00e78dbb          	addw	s11,a5,a4
   1587e:	bff47413          	andi	s0,s0,-1025
   15882:	2401                	sext.w	s0,s0
   15884:	10046793          	ori	a5,s0,256
   15888:	fc3e                	sd	a5,56(sp)
   1588a:	e402                	sd	zero,8(sp)
   1588c:	4c01                	li	s8,0
   1588e:	4d01                	li	s10,0
   15890:	77e6                	ld	a5,120(sp)
   15892:	c789                	beqz	a5,1589c <_svfprintf_r+0x8ea>
   15894:	02d00713          	li	a4,45
   15898:	0ce107a3          	sb	a4,207(sp)
   1589c:	7462                	ld	s0,56(sp)
   1589e:	4701                	li	a4,0
   158a0:	b401                	j	152a0 <_svfprintf_r+0x2ee>
   158a2:	feb68fa3          	sb	a1,-1(a3)
   158a6:	b719                	j	157ac <_svfprintf_r+0x7fa>
   158a8:	2705                	addiw	a4,a4,1
   158aa:	0ff77713          	andi	a4,a4,255
   158ae:	bf31                	j	157ca <_svfprintf_r+0x818>
   158b0:	04600793          	li	a5,70
   158b4:	00fc0b63          	beq	s8,a5,158ca <_svfprintf_r+0x918>
   158b8:	04500793          	li	a5,69
   158bc:	8d6e                	mv	s10,s11
   158be:	00fc1463          	bne	s8,a5,158c6 <_svfprintf_r+0x914>
   158c2:	001d8d1b          	addiw	s10,s11,1
   158c6:	4689                	li	a3,2
   158c8:	a019                	j	158ce <_svfprintf_r+0x91c>
   158ca:	8d6e                	mv	s10,s11
   158cc:	468d                	li	a3,3
   158ce:	09bc                	addi	a5,sp,216
   158d0:	85f6                	mv	a1,t4
   158d2:	0e810893          	addi	a7,sp,232
   158d6:	0dc10813          	addi	a6,sp,220
   158da:	876a                	mv	a4,s10
   158dc:	8652                	mv	a2,s4
   158de:	854a                	mv	a0,s2
   158e0:	e476                	sd	t4,8(sp)
   158e2:	d81fd0ef          	jal	ra,13662 <_ldtoa_r>
   158e6:	04700793          	li	a5,71
   158ea:	84aa                	mv	s1,a0
   158ec:	6ea2                	ld	t4,8(sp)
   158ee:	00fc1563          	bne	s8,a5,158f8 <_svfprintf_r+0x946>
   158f2:	00147793          	andi	a5,s0,1
   158f6:	cbb1                	beqz	a5,1594a <_svfprintf_r+0x998>
   158f8:	04600713          	li	a4,70
   158fc:	01a487b3          	add	a5,s1,s10
   15900:	02ec1963          	bne	s8,a4,15932 <_svfprintf_r+0x980>
   15904:	0004c683          	lbu	a3,0(s1)
   15908:	03000713          	li	a4,48
   1590c:	02e69163          	bne	a3,a4,1592e <_svfprintf_r+0x97c>
   15910:	8576                	mv	a0,t4
   15912:	4601                	li	a2,0
   15914:	4681                	li	a3,0
   15916:	85d2                	mv	a1,s4
   15918:	f4be                	sd	a5,104(sp)
   1591a:	e476                	sd	t4,8(sp)
   1591c:	583020ef          	jal	ra,1869e <__eqtf2>
   15920:	6ea2                	ld	t4,8(sp)
   15922:	77a6                	ld	a5,104(sp)
   15924:	c509                	beqz	a0,1592e <_svfprintf_r+0x97c>
   15926:	4705                	li	a4,1
   15928:	41a70d3b          	subw	s10,a4,s10
   1592c:	cdea                	sw	s10,216(sp)
   1592e:	476e                	lw	a4,216(sp)
   15930:	97ba                	add	a5,a5,a4
   15932:	4681                	li	a3,0
   15934:	4601                	li	a2,0
   15936:	8576                	mv	a0,t4
   15938:	85d2                	mv	a1,s4
   1593a:	e43e                	sd	a5,8(sp)
   1593c:	563020ef          	jal	ra,1869e <__eqtf2>
   15940:	67a2                	ld	a5,8(sp)
   15942:	03000693          	li	a3,48
   15946:	e909                	bnez	a0,15958 <_svfprintf_r+0x9a6>
   15948:	f5be                	sd	a5,232(sp)
   1594a:	7a2e                	ld	s4,232(sp)
   1594c:	b549                	j	157ce <_svfprintf_r+0x81c>
   1594e:	00170613          	addi	a2,a4,1
   15952:	f5b2                	sd	a2,232(sp)
   15954:	00d70023          	sb	a3,0(a4)
   15958:	772e                	ld	a4,232(sp)
   1595a:	fef76ae3          	bltu	a4,a5,1594e <_svfprintf_r+0x99c>
   1595e:	b7f5                	j	1594a <_svfprintf_r+0x998>
   15960:	04600713          	li	a4,70
   15964:	e8ec12e3          	bne	s8,a4,157e8 <_svfprintf_r+0x836>
   15968:	05a05863          	blez	s10,159b8 <_svfprintf_r+0xa06>
   1596c:	000d9563          	bnez	s11,15976 <_svfprintf_r+0x9c4>
   15970:	00147713          	andi	a4,s0,1
   15974:	cf59                	beqz	a4,15a12 <_svfprintf_r+0xa60>
   15976:	47e2                	lw	a5,24(sp)
   15978:	01a7873b          	addw	a4,a5,s10
   1597c:	01b70dbb          	addw	s11,a4,s11
   15980:	06600b13          	li	s6,102
   15984:	a895                	j	159f8 <_svfprintf_r+0xa46>
   15986:	8732                	mv	a4,a2
   15988:	b56d                	j	15832 <_svfprintf_r+0x880>
   1598a:	0705                	addi	a4,a4,1
   1598c:	fff74783          	lbu	a5,-1(a4)
   15990:	0605                	addi	a2,a2,1
   15992:	fef60fa3          	sb	a5,-1(a2)
   15996:	b5c9                	j	15858 <_svfprintf_r+0x8a6>
   15998:	0e210713          	addi	a4,sp,226
   1599c:	e599                	bnez	a1,159aa <_svfprintf_r+0x9f8>
   1599e:	03000793          	li	a5,48
   159a2:	0ef10123          	sb	a5,226(sp)
   159a6:	0e310713          	addi	a4,sp,227
   159aa:	0306879b          	addiw	a5,a3,48
   159ae:	00170613          	addi	a2,a4,1
   159b2:	00f70023          	sb	a5,0(a4)
   159b6:	b55d                	j	1585c <_svfprintf_r+0x8aa>
   159b8:	000d9563          	bnez	s11,159c2 <_svfprintf_r+0xa10>
   159bc:	00147713          	andi	a4,s0,1
   159c0:	cb39                	beqz	a4,15a16 <_svfprintf_r+0xa64>
   159c2:	47e2                	lw	a5,24(sp)
   159c4:	0017871b          	addiw	a4,a5,1
   159c8:	bf55                	j	1597c <_svfprintf_r+0x9ca>
   159ca:	014d4c63          	blt	s10,s4,159e2 <_svfprintf_r+0xa30>
   159ce:	00147713          	andi	a4,s0,1
   159d2:	8dea                	mv	s11,s10
   159d4:	c701                	beqz	a4,159dc <_svfprintf_r+0xa2a>
   159d6:	47e2                	lw	a5,24(sp)
   159d8:	01a78dbb          	addw	s11,a5,s10
   159dc:	06700b13          	li	s6,103
   159e0:	a821                	j	159f8 <_svfprintf_r+0xa46>
   159e2:	47e2                	lw	a5,24(sp)
   159e4:	06700b13          	li	s6,103
   159e8:	01478dbb          	addw	s11,a5,s4
   159ec:	01a04663          	bgtz	s10,159f8 <_svfprintf_r+0xa46>
   159f0:	41ad8e3b          	subw	t3,s11,s10
   159f4:	001e0d9b          	addiw	s11,t3,1
   159f8:	40047413          	andi	s0,s0,1024
   159fc:	00040c1b          	sext.w	s8,s0
   15a00:	e402                	sd	zero,8(sp)
   15a02:	e80c07e3          	beqz	s8,15890 <_svfprintf_r+0x8de>
   15a06:	4c01                	li	s8,0
   15a08:	e9a054e3          	blez	s10,15890 <_svfprintf_r+0x8de>
   15a0c:	0ff00693          	li	a3,255
   15a10:	a01d                	j	15a36 <_svfprintf_r+0xa84>
   15a12:	8dea                	mv	s11,s10
   15a14:	b7b5                	j	15980 <_svfprintf_r+0x9ce>
   15a16:	06600b13          	li	s6,102
   15a1a:	4d85                	li	s11,1
   15a1c:	bff1                	j	159f8 <_svfprintf_r+0xa46>
   15a1e:	2701                	sext.w	a4,a4
   15a20:	03a75063          	ble	s10,a4,15a40 <_svfprintf_r+0xa8e>
   15a24:	6782                	ld	a5,0(sp)
   15a26:	40ed0d3b          	subw	s10,s10,a4
   15a2a:	0017c703          	lbu	a4,1(a5)
   15a2e:	c315                	beqz	a4,15a52 <_svfprintf_r+0xaa0>
   15a30:	0785                	addi	a5,a5,1
   15a32:	2c05                	addiw	s8,s8,1
   15a34:	e03e                	sd	a5,0(sp)
   15a36:	6782                	ld	a5,0(sp)
   15a38:	0007c703          	lbu	a4,0(a5)
   15a3c:	fed711e3          	bne	a4,a3,15a1e <_svfprintf_r+0xa6c>
   15a40:	47a2                	lw	a5,8(sp)
   15a42:	00fc073b          	addw	a4,s8,a5
   15a46:	4786                	lw	a5,64(sp)
   15a48:	02f7073b          	mulw	a4,a4,a5
   15a4c:	01b70dbb          	addw	s11,a4,s11
   15a50:	b581                	j	15890 <_svfprintf_r+0x8de>
   15a52:	47a2                	lw	a5,8(sp)
   15a54:	2785                	addiw	a5,a5,1
   15a56:	e43e                	sd	a5,8(sp)
   15a58:	bff9                	j	15a36 <_svfprintf_r+0xa84>
   15a5a:	008b8713          	addi	a4,s7,8
   15a5e:	f83a                	sd	a4,48(sp)
   15a60:	02047713          	andi	a4,s0,32
   15a64:	000bb783          	ld	a5,0(s7)
   15a68:	c719                	beqz	a4,15a76 <_svfprintf_r+0xac4>
   15a6a:	7722                	ld	a4,40(sp)
   15a6c:	e398                	sd	a4,0(a5)
   15a6e:	7bc2                	ld	s7,48(sp)
   15a70:	64c2                	ld	s1,16(sp)
   15a72:	e0eff06f          	j	15080 <_svfprintf_r+0xce>
   15a76:	01047713          	andi	a4,s0,16
   15a7a:	fb65                	bnez	a4,15a6a <_svfprintf_r+0xab8>
   15a7c:	04047713          	andi	a4,s0,64
   15a80:	c711                	beqz	a4,15a8c <_svfprintf_r+0xada>
   15a82:	02815703          	lhu	a4,40(sp)
   15a86:	00e79023          	sh	a4,0(a5)
   15a8a:	b7d5                	j	15a6e <_svfprintf_r+0xabc>
   15a8c:	20047413          	andi	s0,s0,512
   15a90:	c411                	beqz	s0,15a9c <_svfprintf_r+0xaea>
   15a92:	02814703          	lbu	a4,40(sp)
   15a96:	00e78023          	sb	a4,0(a5)
   15a9a:	bfd1                	j	15a6e <_svfprintf_r+0xabc>
   15a9c:	5722                	lw	a4,40(sp)
   15a9e:	c398                	sw	a4,0(a5)
   15aa0:	b7f9                	j	15a6e <_svfprintf_r+0xabc>
   15aa2:	01046413          	ori	s0,s0,16
   15aa6:	2401                	sext.w	s0,s0
   15aa8:	008b8793          	addi	a5,s7,8
   15aac:	f83e                	sd	a5,48(sp)
   15aae:	02047793          	andi	a5,s0,32
   15ab2:	cb85                	beqz	a5,15ae2 <_svfprintf_r+0xb30>
   15ab4:	000bbb83          	ld	s7,0(s7)
   15ab8:	bff47413          	andi	s0,s0,-1025
   15abc:	2401                	sext.w	s0,s0
   15abe:	4781                	li	a5,0
   15ac0:	0c0107a3          	sb	zero,207(sp)
   15ac4:	577d                	li	a4,-1
   15ac6:	12ed8c63          	beq	s11,a4,15bfe <_svfprintf_r+0xc4c>
   15aca:	8722                	mv	a4,s0
   15acc:	f7f47413          	andi	s0,s0,-129
   15ad0:	2401                	sext.w	s0,s0
   15ad2:	120b9663          	bnez	s7,15bfe <_svfprintf_r+0xc4c>
   15ad6:	200d8463          	beqz	s11,15cde <_svfprintf_r+0xd2c>
   15ada:	4705                	li	a4,1
   15adc:	12e79463          	bne	a5,a4,15c04 <_svfprintf_r+0xc52>
   15ae0:	badd                	j	154d6 <_svfprintf_r+0x524>
   15ae2:	01047793          	andi	a5,s0,16
   15ae6:	f7f9                	bnez	a5,15ab4 <_svfprintf_r+0xb02>
   15ae8:	04047793          	andi	a5,s0,64
   15aec:	000bab83          	lw	s7,0(s7)
   15af0:	c789                	beqz	a5,15afa <_svfprintf_r+0xb48>
   15af2:	1bc2                	slli	s7,s7,0x30
   15af4:	030bdb93          	srli	s7,s7,0x30
   15af8:	b7c1                	j	15ab8 <_svfprintf_r+0xb06>
   15afa:	20047793          	andi	a5,s0,512
   15afe:	c781                	beqz	a5,15b06 <_svfprintf_r+0xb54>
   15b00:	0ffbfb93          	andi	s7,s7,255
   15b04:	bf55                	j	15ab8 <_svfprintf_r+0xb06>
   15b06:	1b82                	slli	s7,s7,0x20
   15b08:	020bdb93          	srli	s7,s7,0x20
   15b0c:	b775                	j	15ab8 <_svfprintf_r+0xb06>
   15b0e:	008b8793          	addi	a5,s7,8
   15b12:	f83e                	sd	a5,48(sp)
   15b14:	77e1                	lui	a5,0xffff8
   15b16:	8307c793          	xori	a5,a5,-2000
   15b1a:	0cf11823          	sh	a5,208(sp)
   15b1e:	0001a7b7          	lui	a5,0x1a
   15b22:	dc078793          	addi	a5,a5,-576 # 19dc0 <zeroes.4441+0x60>
   15b26:	00246413          	ori	s0,s0,2
   15b2a:	f0be                	sd	a5,96(sp)
   15b2c:	000bbb83          	ld	s7,0(s7)
   15b30:	2401                	sext.w	s0,s0
   15b32:	4789                	li	a5,2
   15b34:	07800b13          	li	s6,120
   15b38:	b761                	j	15ac0 <_svfprintf_r+0xb0e>
   15b3a:	008b8793          	addi	a5,s7,8
   15b3e:	f83e                	sd	a5,48(sp)
   15b40:	0c0107a3          	sb	zero,207(sp)
   15b44:	57fd                	li	a5,-1
   15b46:	000bb483          	ld	s1,0(s7)
   15b4a:	00fd8e63          	beq	s11,a5,15b66 <_svfprintf_r+0xbb4>
   15b4e:	866e                	mv	a2,s11
   15b50:	4581                	li	a1,0
   15b52:	8526                	mv	a0,s1
   15b54:	e62fe0ef          	jal	ra,141b6 <memchr>
   15b58:	8baa                	mv	s7,a0
   15b5a:	a00506e3          	beqz	a0,15566 <_svfprintf_r+0x5b4>
   15b5e:	40950dbb          	subw	s11,a0,s1
   15b62:	4b81                	li	s7,0
   15b64:	b409                	j	15566 <_svfprintf_r+0x5b4>
   15b66:	8526                	mv	a0,s1
   15b68:	c08ff0ef          	jal	ra,14f70 <strlen>
   15b6c:	00050d9b          	sext.w	s11,a0
   15b70:	bfcd                	j	15b62 <_svfprintf_r+0xbb0>
   15b72:	01046413          	ori	s0,s0,16
   15b76:	2401                	sext.w	s0,s0
   15b78:	008b8793          	addi	a5,s7,8
   15b7c:	f83e                	sd	a5,48(sp)
   15b7e:	02047793          	andi	a5,s0,32
   15b82:	c789                	beqz	a5,15b8c <_svfprintf_r+0xbda>
   15b84:	000bbb83          	ld	s7,0(s7)
   15b88:	4785                	li	a5,1
   15b8a:	bf1d                	j	15ac0 <_svfprintf_r+0xb0e>
   15b8c:	01047793          	andi	a5,s0,16
   15b90:	fbf5                	bnez	a5,15b84 <_svfprintf_r+0xbd2>
   15b92:	04047793          	andi	a5,s0,64
   15b96:	000bab83          	lw	s7,0(s7)
   15b9a:	c789                	beqz	a5,15ba4 <_svfprintf_r+0xbf2>
   15b9c:	1bc2                	slli	s7,s7,0x30
   15b9e:	030bdb93          	srli	s7,s7,0x30
   15ba2:	b7dd                	j	15b88 <_svfprintf_r+0xbd6>
   15ba4:	20047793          	andi	a5,s0,512
   15ba8:	c781                	beqz	a5,15bb0 <_svfprintf_r+0xbfe>
   15baa:	0ffbfb93          	andi	s7,s7,255
   15bae:	bfe9                	j	15b88 <_svfprintf_r+0xbd6>
   15bb0:	1b82                	slli	s7,s7,0x20
   15bb2:	020bdb93          	srli	s7,s7,0x20
   15bb6:	bfc9                	j	15b88 <_svfprintf_r+0xbd6>
   15bb8:	0001a7b7          	lui	a5,0x1a
   15bbc:	dc078793          	addi	a5,a5,-576 # 19dc0 <zeroes.4441+0x60>
   15bc0:	d64ff06f          	j	15124 <_svfprintf_r+0x172>
   15bc4:	01047793          	andi	a5,s0,16
   15bc8:	d6079663          	bnez	a5,15134 <_svfprintf_r+0x182>
   15bcc:	04047793          	andi	a5,s0,64
   15bd0:	000bab83          	lw	s7,0(s7)
   15bd4:	c791                	beqz	a5,15be0 <_svfprintf_r+0xc2e>
   15bd6:	1bc2                	slli	s7,s7,0x30
   15bd8:	030bdb93          	srli	s7,s7,0x30
   15bdc:	d5cff06f          	j	15138 <_svfprintf_r+0x186>
   15be0:	20047793          	andi	a5,s0,512
   15be4:	c789                	beqz	a5,15bee <_svfprintf_r+0xc3c>
   15be6:	0ffbfb93          	andi	s7,s7,255
   15bea:	d4eff06f          	j	15138 <_svfprintf_r+0x186>
   15bee:	1b82                	slli	s7,s7,0x20
   15bf0:	020bdb93          	srli	s7,s7,0x20
   15bf4:	d44ff06f          	j	15138 <_svfprintf_r+0x186>
   15bf8:	8722                	mv	a4,s0
   15bfa:	4785                	li	a5,1
   15bfc:	bdc1                	j	15acc <_svfprintf_r+0xb1a>
   15bfe:	4705                	li	a4,1
   15c00:	8ce788e3          	beq	a5,a4,154d0 <_svfprintf_r+0x51e>
   15c04:	4709                	li	a4,2
   15c06:	0ae78d63          	beq	a5,a4,15cc0 <_svfprintf_r+0xd0e>
   15c0a:	1afc                	addi	a5,sp,380
   15c0c:	007bf713          	andi	a4,s7,7
   15c10:	03070713          	addi	a4,a4,48
   15c14:	fee78fa3          	sb	a4,-1(a5)
   15c18:	003bdb93          	srli	s7,s7,0x3
   15c1c:	fff78493          	addi	s1,a5,-1
   15c20:	020b9863          	bnez	s7,15c50 <_svfprintf_r+0xc9e>
   15c24:	00147693          	andi	a3,s0,1
   15c28:	ca89                	beqz	a3,15c3a <_svfprintf_r+0xc88>
   15c2a:	03000693          	li	a3,48
   15c2e:	00d70663          	beq	a4,a3,15c3a <_svfprintf_r+0xc88>
   15c32:	fed48fa3          	sb	a3,-1(s1)
   15c36:	ffe78493          	addi	s1,a5,-2
   15c3a:	17c10e13          	addi	t3,sp,380
   15c3e:	876e                	mv	a4,s11
   15c40:	4b81                	li	s7,0
   15c42:	409e0dbb          	subw	s11,t3,s1
   15c46:	e402                	sd	zero,8(sp)
   15c48:	4c01                	li	s8,0
   15c4a:	4d01                	li	s10,0
   15c4c:	e54ff06f          	j	152a0 <_svfprintf_r+0x2ee>
   15c50:	87a6                	mv	a5,s1
   15c52:	bf6d                	j	15c0c <_svfprintf_r+0xc5a>
   15c54:	40047c13          	andi	s8,s0,1024
   15c58:	4a01                	li	s4,0
   15c5a:	1afc                	addi	a5,sp,380
   15c5c:	4d29                	li	s10,10
   15c5e:	2c01                	sext.w	s8,s8
   15c60:	0ff00693          	li	a3,255
   15c64:	4825                	li	a6,9
   15c66:	03abf733          	remu	a4,s7,s10
   15c6a:	fff78493          	addi	s1,a5,-1
   15c6e:	2a05                	addiw	s4,s4,1
   15c70:	0307071b          	addiw	a4,a4,48
   15c74:	fee78fa3          	sb	a4,-1(a5)
   15c78:	020c0e63          	beqz	s8,15cb4 <_svfprintf_r+0xd02>
   15c7c:	6782                	ld	a5,0(sp)
   15c7e:	0007c783          	lbu	a5,0(a5)
   15c82:	02fa1963          	bne	s4,a5,15cb4 <_svfprintf_r+0xd02>
   15c86:	02d78763          	beq	a5,a3,15cb4 <_svfprintf_r+0xd02>
   15c8a:	03787563          	bleu	s7,a6,15cb4 <_svfprintf_r+0xd02>
   15c8e:	6786                	ld	a5,64(sp)
   15c90:	65c6                	ld	a1,80(sp)
   15c92:	fc42                	sd	a6,56(sp)
   15c94:	8c9d                	sub	s1,s1,a5
   15c96:	863e                	mv	a2,a5
   15c98:	8526                	mv	a0,s1
   15c9a:	e436                	sd	a3,8(sp)
   15c9c:	ae6ff0ef          	jal	ra,14f82 <strncpy>
   15ca0:	6782                	ld	a5,0(sp)
   15ca2:	4a01                	li	s4,0
   15ca4:	66a2                	ld	a3,8(sp)
   15ca6:	0017c783          	lbu	a5,1(a5)
   15caa:	7862                	ld	a6,56(sp)
   15cac:	c781                	beqz	a5,15cb4 <_svfprintf_r+0xd02>
   15cae:	6782                	ld	a5,0(sp)
   15cb0:	0785                	addi	a5,a5,1
   15cb2:	e03e                	sd	a5,0(sp)
   15cb4:	03abdbb3          	divu	s7,s7,s10
   15cb8:	f80b81e3          	beqz	s7,15c3a <_svfprintf_r+0xc88>
   15cbc:	87a6                	mv	a5,s1
   15cbe:	b765                	j	15c66 <_svfprintf_r+0xcb4>
   15cc0:	1ae4                	addi	s1,sp,380
   15cc2:	7706                	ld	a4,96(sp)
   15cc4:	00fbf793          	andi	a5,s7,15
   15cc8:	14fd                	addi	s1,s1,-1
   15cca:	97ba                	add	a5,a5,a4
   15ccc:	0007c783          	lbu	a5,0(a5)
   15cd0:	004bdb93          	srli	s7,s7,0x4
   15cd4:	00f48023          	sb	a5,0(s1)
   15cd8:	fe0b95e3          	bnez	s7,15cc2 <_svfprintf_r+0xd10>
   15cdc:	bfb9                	j	15c3a <_svfprintf_r+0xc88>
   15cde:	1ae4                	addi	s1,sp,380
   15ce0:	ffa9                	bnez	a5,15c3a <_svfprintf_r+0xc88>
   15ce2:	8b05                	andi	a4,a4,1
   15ce4:	db39                	beqz	a4,15c3a <_svfprintf_r+0xc88>
   15ce6:	03000793          	li	a5,48
   15cea:	16f10da3          	sb	a5,379(sp)
   15cee:	ff0ff06f          	j	154de <_svfprintf_r+0x52c>
   15cf2:	020b02e3          	beqz	s6,16516 <_svfprintf_r+0x1564>
   15cf6:	11610c23          	sb	s6,280(sp)
   15cfa:	0c0107a3          	sb	zero,207(sp)
   15cfe:	f85e                	sd	s7,48(sp)
   15d00:	d92ff06f          	j	15292 <_svfprintf_r+0x2e0>
   15d04:	0641                	addi	a2,a2,16
   15d06:	011cb423          	sd	a7,8(s9)
   15d0a:	ea32                	sd	a2,272(sp)
   15d0c:	10b12423          	sw	a1,264(sp)
   15d10:	02aed463          	ble	a0,t4,15d38 <_svfprintf_r+0xd86>
   15d14:	0210                	addi	a2,sp,256
   15d16:	85ce                	mv	a1,s3
   15d18:	854a                	mv	a0,s2
   15d1a:	fd76                	sd	t4,184(sp)
   15d1c:	f942                	sd	a6,176(sp)
   15d1e:	e546                	sd	a7,136(sp)
   15d20:	e13a                	sd	a4,128(sp)
   15d22:	fcb6                	sd	a3,120(sp)
   15d24:	4c5010ef          	jal	ra,179e8 <__ssprint_r>
   15d28:	7a051863          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   15d2c:	7eea                	ld	t4,184(sp)
   15d2e:	784a                	ld	a6,176(sp)
   15d30:	68aa                	ld	a7,136(sp)
   15d32:	670a                	ld	a4,128(sp)
   15d34:	76e6                	ld	a3,120(sp)
   15d36:	8f56                	mv	t5,s5
   15d38:	36c1                	addiw	a3,a3,-16
   15d3a:	8cfa                	mv	s9,t5
   15d3c:	daeff06f          	j	152ea <_svfprintf_r+0x338>
   15d40:	0641                	addi	a2,a2,16
   15d42:	011cb423          	sd	a7,8(s9)
   15d46:	ea32                	sd	a2,272(sp)
   15d48:	10b12423          	sw	a1,264(sp)
   15d4c:	02aed463          	ble	a0,t4,15d74 <_svfprintf_r+0xdc2>
   15d50:	0210                	addi	a2,sp,256
   15d52:	85ce                	mv	a1,s3
   15d54:	854a                	mv	a0,s2
   15d56:	e576                	sd	t4,136(sp)
   15d58:	e142                	sd	a6,128(sp)
   15d5a:	fcc6                	sd	a7,120(sp)
   15d5c:	f8ba                	sd	a4,112(sp)
   15d5e:	f4b6                	sd	a3,104(sp)
   15d60:	489010ef          	jal	ra,179e8 <__ssprint_r>
   15d64:	76051a63          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   15d68:	6eaa                	ld	t4,136(sp)
   15d6a:	680a                	ld	a6,128(sp)
   15d6c:	78e6                	ld	a7,120(sp)
   15d6e:	7746                	ld	a4,112(sp)
   15d70:	76a6                	ld	a3,104(sp)
   15d72:	8f56                	mv	t5,s5
   15d74:	36c1                	addiw	a3,a3,-16
   15d76:	8cfa                	mv	s9,t5
   15d78:	e58ff06f          	j	153d0 <_svfprintf_r+0x41e>
   15d7c:	06c1                	addi	a3,a3,16
   15d7e:	011cb423          	sd	a7,8(s9)
   15d82:	ea36                	sd	a3,272(sp)
   15d84:	10c12423          	sw	a2,264(sp)
   15d88:	02bed263          	ble	a1,t4,15dac <_svfprintf_r+0xdfa>
   15d8c:	0210                	addi	a2,sp,256
   15d8e:	85ce                	mv	a1,s3
   15d90:	854a                	mv	a0,s2
   15d92:	e176                	sd	t4,128(sp)
   15d94:	fcc2                	sd	a6,120(sp)
   15d96:	f8c6                	sd	a7,112(sp)
   15d98:	f4ba                	sd	a4,104(sp)
   15d9a:	44f010ef          	jal	ra,179e8 <__ssprint_r>
   15d9e:	72051d63          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   15da2:	6e8a                	ld	t4,128(sp)
   15da4:	7866                	ld	a6,120(sp)
   15da6:	78c6                	ld	a7,112(sp)
   15da8:	7726                	ld	a4,104(sp)
   15daa:	8556                	mv	a0,s5
   15dac:	3741                	addiw	a4,a4,-16
   15dae:	8caa                	mv	s9,a0
   15db0:	e74ff06f          	j	15424 <_svfprintf_r+0x472>
   15db4:	06500693          	li	a3,101
   15db8:	5766df63          	ble	s6,a3,16336 <_svfprintf_r+0x1384>
   15dbc:	754e                	ld	a0,240(sp)
   15dbe:	75ee                	ld	a1,248(sp)
   15dc0:	4601                	li	a2,0
   15dc2:	4681                	li	a3,0
   15dc4:	f4ba                	sd	a4,104(sp)
   15dc6:	0d9020ef          	jal	ra,1869e <__eqtf2>
   15dca:	7726                	ld	a4,104(sp)
   15dcc:	10051e63          	bnez	a0,15ee8 <_svfprintf_r+0xf36>
   15dd0:	0001a7b7          	lui	a5,0x1a
   15dd4:	df078793          	addi	a5,a5,-528 # 19df0 <zeroes.4441+0x90>
   15dd8:	00fcb023          	sd	a5,0(s9)
   15ddc:	4785                	li	a5,1
   15dde:	00fcb423          	sd	a5,8(s9)
   15de2:	10812783          	lw	a5,264(sp)
   15de6:	0705                	addi	a4,a4,1
   15de8:	ea3a                	sd	a4,272(sp)
   15dea:	0017871b          	addiw	a4,a5,1
   15dee:	10e12423          	sw	a4,264(sp)
   15df2:	479d                	li	a5,7
   15df4:	0cc1                	addi	s9,s9,16
   15df6:	00e7da63          	ble	a4,a5,15e0a <_svfprintf_r+0xe58>
   15dfa:	0210                	addi	a2,sp,256
   15dfc:	85ce                	mv	a1,s3
   15dfe:	854a                	mv	a0,s2
   15e00:	3e9010ef          	jal	ra,179e8 <__ssprint_r>
   15e04:	6c051a63          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   15e08:	8cd6                	mv	s9,s5
   15e0a:	47ee                	lw	a5,216(sp)
   15e0c:	0147c563          	blt	a5,s4,15e16 <_svfprintf_r+0xe64>
   15e10:	00147793          	andi	a5,s0,1
   15e14:	cfa5                	beqz	a5,15e8c <_svfprintf_r+0xeda>
   15e16:	67a6                	ld	a5,72(sp)
   15e18:	6762                	ld	a4,24(sp)
   15e1a:	0cc1                	addi	s9,s9,16
   15e1c:	fefcb823          	sd	a5,-16(s9)
   15e20:	67e2                	ld	a5,24(sp)
   15e22:	fefcbc23          	sd	a5,-8(s9)
   15e26:	67d2                	ld	a5,272(sp)
   15e28:	97ba                	add	a5,a5,a4
   15e2a:	ea3e                	sd	a5,272(sp)
   15e2c:	10812783          	lw	a5,264(sp)
   15e30:	0017871b          	addiw	a4,a5,1
   15e34:	10e12423          	sw	a4,264(sp)
   15e38:	479d                	li	a5,7
   15e3a:	00e7da63          	ble	a4,a5,15e4e <_svfprintf_r+0xe9c>
   15e3e:	0210                	addi	a2,sp,256
   15e40:	85ce                	mv	a1,s3
   15e42:	854a                	mv	a0,s2
   15e44:	3a5010ef          	jal	ra,179e8 <__ssprint_r>
   15e48:	68051863          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   15e4c:	8cd6                	mv	s9,s5
   15e4e:	fffa049b          	addiw	s1,s4,-1
   15e52:	02905d63          	blez	s1,15e8c <_svfprintf_r+0xeda>
   15e56:	6b69                	lui	s6,0x1a
   15e58:	4c41                	li	s8,16
   15e5a:	358b0b13          	addi	s6,s6,856 # 1a358 <zeroes.4426>
   15e5e:	4d1d                	li	s10,7
   15e60:	10812703          	lw	a4,264(sp)
   15e64:	016cb023          	sd	s6,0(s9)
   15e68:	67d2                	ld	a5,272(sp)
   15e6a:	0017069b          	addiw	a3,a4,1
   15e6e:	8736                	mv	a4,a3
   15e70:	010c8613          	addi	a2,s9,16
   15e74:	049c4763          	blt	s8,s1,15ec2 <_svfprintf_r+0xf10>
   15e78:	009cb423          	sd	s1,8(s9)
   15e7c:	94be                	add	s1,s1,a5
   15e7e:	ea26                	sd	s1,272(sp)
   15e80:	10d12423          	sw	a3,264(sp)
   15e84:	479d                	li	a5,7
   15e86:	8cb2                	mv	s9,a2
   15e88:	e0d7c363          	blt	a5,a3,1548e <_svfprintf_r+0x4dc>
   15e8c:	8811                	andi	s0,s0,4
   15e8e:	60041063          	bnez	s0,1648e <_svfprintf_r+0x14dc>
   15e92:	7702                	ld	a4,32(sp)
   15e94:	76e2                	ld	a3,56(sp)
   15e96:	5782                	lw	a5,32(sp)
   15e98:	00d75363          	ble	a3,a4,15e9e <_svfprintf_r+0xeec>
   15e9c:	57e2                	lw	a5,56(sp)
   15e9e:	5722                	lw	a4,40(sp)
   15ea0:	9fb9                	addw	a5,a5,a4
   15ea2:	f43e                	sd	a5,40(sp)
   15ea4:	67d2                	ld	a5,272(sp)
   15ea6:	cb81                	beqz	a5,15eb6 <_svfprintf_r+0xf04>
   15ea8:	0210                	addi	a2,sp,256
   15eaa:	85ce                	mv	a1,s3
   15eac:	854a                	mv	a0,s2
   15eae:	33b010ef          	jal	ra,179e8 <__ssprint_r>
   15eb2:	62051363          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   15eb6:	10012423          	sw	zero,264(sp)
   15eba:	640b9963          	bnez	s7,1650c <_svfprintf_r+0x155a>
   15ebe:	8cd6                	mv	s9,s5
   15ec0:	b67d                	j	15a6e <_svfprintf_r+0xabc>
   15ec2:	07c1                	addi	a5,a5,16
   15ec4:	018cb423          	sd	s8,8(s9)
   15ec8:	ea3e                	sd	a5,272(sp)
   15eca:	10e12423          	sw	a4,264(sp)
   15ece:	00dd5a63          	ble	a3,s10,15ee2 <_svfprintf_r+0xf30>
   15ed2:	0210                	addi	a2,sp,256
   15ed4:	85ce                	mv	a1,s3
   15ed6:	854a                	mv	a0,s2
   15ed8:	311010ef          	jal	ra,179e8 <__ssprint_r>
   15edc:	5e051e63          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   15ee0:	8656                	mv	a2,s5
   15ee2:	34c1                	addiw	s1,s1,-16
   15ee4:	8cb2                	mv	s9,a2
   15ee6:	bfad                	j	15e60 <_svfprintf_r+0xeae>
   15ee8:	46ee                	lw	a3,216(sp)
   15eea:	12d04163          	bgtz	a3,1600c <_svfprintf_r+0x105a>
   15eee:	0001a7b7          	lui	a5,0x1a
   15ef2:	df078793          	addi	a5,a5,-528 # 19df0 <zeroes.4441+0x90>
   15ef6:	00fcb023          	sd	a5,0(s9)
   15efa:	4785                	li	a5,1
   15efc:	00fcb423          	sd	a5,8(s9)
   15f00:	10812783          	lw	a5,264(sp)
   15f04:	0705                	addi	a4,a4,1
   15f06:	ea3a                	sd	a4,272(sp)
   15f08:	0017871b          	addiw	a4,a5,1
   15f0c:	10e12423          	sw	a4,264(sp)
   15f10:	479d                	li	a5,7
   15f12:	0cc1                	addi	s9,s9,16
   15f14:	00e7da63          	ble	a4,a5,15f28 <_svfprintf_r+0xf76>
   15f18:	0210                	addi	a2,sp,256
   15f1a:	85ce                	mv	a1,s3
   15f1c:	854a                	mv	a0,s2
   15f1e:	2cb010ef          	jal	ra,179e8 <__ssprint_r>
   15f22:	5a051b63          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   15f26:	8cd6                	mv	s9,s5
   15f28:	47ee                	lw	a5,216(sp)
   15f2a:	e791                	bnez	a5,15f36 <_svfprintf_r+0xf84>
   15f2c:	000a1563          	bnez	s4,15f36 <_svfprintf_r+0xf84>
   15f30:	00147793          	andi	a5,s0,1
   15f34:	dfa1                	beqz	a5,15e8c <_svfprintf_r+0xeda>
   15f36:	67a6                	ld	a5,72(sp)
   15f38:	6762                	ld	a4,24(sp)
   15f3a:	010c8313          	addi	t1,s9,16
   15f3e:	00fcb023          	sd	a5,0(s9)
   15f42:	67e2                	ld	a5,24(sp)
   15f44:	00fcb423          	sd	a5,8(s9)
   15f48:	67d2                	ld	a5,272(sp)
   15f4a:	97ba                	add	a5,a5,a4
   15f4c:	ea3e                	sd	a5,272(sp)
   15f4e:	10812783          	lw	a5,264(sp)
   15f52:	0017871b          	addiw	a4,a5,1
   15f56:	10e12423          	sw	a4,264(sp)
   15f5a:	479d                	li	a5,7
   15f5c:	00e7da63          	ble	a4,a5,15f70 <_svfprintf_r+0xfbe>
   15f60:	0210                	addi	a2,sp,256
   15f62:	85ce                	mv	a1,s3
   15f64:	854a                	mv	a0,s2
   15f66:	283010ef          	jal	ra,179e8 <__ssprint_r>
   15f6a:	56051763          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   15f6e:	8356                	mv	t1,s5
   15f70:	4b6e                	lw	s6,216(sp)
   15f72:	040b5663          	bgez	s6,15fbe <_svfprintf_r+0x100c>
   15f76:	6c69                	lui	s8,0x1a
   15f78:	41600b3b          	negw	s6,s6
   15f7c:	879a                	mv	a5,t1
   15f7e:	4d41                	li	s10,16
   15f80:	358c0c13          	addi	s8,s8,856 # 1a358 <zeroes.4426>
   15f84:	4c9d                	li	s9,7
   15f86:	10812683          	lw	a3,264(sp)
   15f8a:	0187b023          	sd	s8,0(a5)
   15f8e:	6752                	ld	a4,272(sp)
   15f90:	0016861b          	addiw	a2,a3,1
   15f94:	86b2                	mv	a3,a2
   15f96:	0341                	addi	t1,t1,16
   15f98:	056d4763          	blt	s10,s6,15fe6 <_svfprintf_r+0x1034>
   15f9c:	0167b423          	sd	s6,8(a5)
   15fa0:	9b3a                	add	s6,s6,a4
   15fa2:	ea5a                	sd	s6,272(sp)
   15fa4:	10c12423          	sw	a2,264(sp)
   15fa8:	479d                	li	a5,7
   15faa:	00c7da63          	ble	a2,a5,15fbe <_svfprintf_r+0x100c>
   15fae:	0210                	addi	a2,sp,256
   15fb0:	85ce                	mv	a1,s3
   15fb2:	854a                	mv	a0,s2
   15fb4:	235010ef          	jal	ra,179e8 <__ssprint_r>
   15fb8:	52051063          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   15fbc:	8356                	mv	t1,s5
   15fbe:	67d2                	ld	a5,272(sp)
   15fc0:	00933023          	sd	s1,0(t1)
   15fc4:	01433423          	sd	s4,8(t1)
   15fc8:	97d2                	add	a5,a5,s4
   15fca:	ea3e                	sd	a5,272(sp)
   15fcc:	10812783          	lw	a5,264(sp)
   15fd0:	01030c93          	addi	s9,t1,16
   15fd4:	0017871b          	addiw	a4,a5,1
   15fd8:	10e12423          	sw	a4,264(sp)
   15fdc:	479d                	li	a5,7
   15fde:	eae7d7e3          	ble	a4,a5,15e8c <_svfprintf_r+0xeda>
   15fe2:	cacff06f          	j	1548e <_svfprintf_r+0x4dc>
   15fe6:	0741                	addi	a4,a4,16
   15fe8:	01a7b423          	sd	s10,8(a5)
   15fec:	ea3a                	sd	a4,272(sp)
   15fee:	10d12423          	sw	a3,264(sp)
   15ff2:	00ccda63          	ble	a2,s9,16006 <_svfprintf_r+0x1054>
   15ff6:	0210                	addi	a2,sp,256
   15ff8:	85ce                	mv	a1,s3
   15ffa:	854a                	mv	a0,s2
   15ffc:	1ed010ef          	jal	ra,179e8 <__ssprint_r>
   16000:	4c051c63          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   16004:	8356                	mv	t1,s5
   16006:	3b41                	addiw	s6,s6,-16
   16008:	879a                	mv	a5,t1
   1600a:	bfb5                	j	15f86 <_svfprintf_r+0xfd4>
   1600c:	000d0b1b          	sext.w	s6,s10
   16010:	01aa5463          	ble	s10,s4,16018 <_svfprintf_r+0x1066>
   16014:	000a0b1b          	sext.w	s6,s4
   16018:	03605a63          	blez	s6,1604c <_svfprintf_r+0x109a>
   1601c:	975a                	add	a4,a4,s6
   1601e:	ea3a                	sd	a4,272(sp)
   16020:	10812703          	lw	a4,264(sp)
   16024:	009cb023          	sd	s1,0(s9)
   16028:	016cb423          	sd	s6,8(s9)
   1602c:	0017069b          	addiw	a3,a4,1
   16030:	10d12423          	sw	a3,264(sp)
   16034:	471d                	li	a4,7
   16036:	0cc1                	addi	s9,s9,16
   16038:	00d75a63          	ble	a3,a4,1604c <_svfprintf_r+0x109a>
   1603c:	0210                	addi	a2,sp,256
   1603e:	85ce                	mv	a1,s3
   16040:	854a                	mv	a0,s2
   16042:	1a7010ef          	jal	ra,179e8 <__ssprint_r>
   16046:	48051963          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   1604a:	8cd6                	mv	s9,s5
   1604c:	875a                	mv	a4,s6
   1604e:	000b5363          	bgez	s6,16054 <_svfprintf_r+0x10a2>
   16052:	4701                	li	a4,0
   16054:	40ed0b3b          	subw	s6,s10,a4
   16058:	05605563          	blez	s6,160a2 <_svfprintf_r+0x10f0>
   1605c:	66e9                	lui	a3,0x1a
   1605e:	4841                	li	a6,16
   16060:	35868d93          	addi	s11,a3,856 # 1a358 <zeroes.4426>
   16064:	489d                	li	a7,7
   16066:	10812603          	lw	a2,264(sp)
   1606a:	01bcb023          	sd	s11,0(s9)
   1606e:	6752                	ld	a4,272(sp)
   16070:	0016059b          	addiw	a1,a2,1
   16074:	862e                	mv	a2,a1
   16076:	010c8513          	addi	a0,s9,16
   1607a:	15684263          	blt	a6,s6,161be <_svfprintf_r+0x120c>
   1607e:	016cb423          	sd	s6,8(s9)
   16082:	9b3a                	add	s6,s6,a4
   16084:	ea5a                	sd	s6,272(sp)
   16086:	10b12423          	sw	a1,264(sp)
   1608a:	471d                	li	a4,7
   1608c:	8caa                	mv	s9,a0
   1608e:	00b75a63          	ble	a1,a4,160a2 <_svfprintf_r+0x10f0>
   16092:	0210                	addi	a2,sp,256
   16094:	85ce                	mv	a1,s3
   16096:	854a                	mv	a0,s2
   16098:	151010ef          	jal	ra,179e8 <__ssprint_r>
   1609c:	42051e63          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   160a0:	8cd6                	mv	s9,s5
   160a2:	40047793          	andi	a5,s0,1024
   160a6:	01a48b33          	add	s6,s1,s10
   160aa:	c39d                	beqz	a5,160d0 <_svfprintf_r+0x111e>
   160ac:	014487b3          	add	a5,s1,s4
   160b0:	f4be                	sd	a5,104(sp)
   160b2:	67e9                	lui	a5,0x1a
   160b4:	35878793          	addi	a5,a5,856 # 1a358 <zeroes.4426>
   160b8:	4d9d                	li	s11,7
   160ba:	8d3e                	mv	s10,a5
   160bc:	67a2                	ld	a5,8(sp)
   160be:	120c1763          	bnez	s8,161ec <_svfprintf_r+0x123a>
   160c2:	12079663          	bnez	a5,161ee <_svfprintf_r+0x123c>
   160c6:	014487b3          	add	a5,s1,s4
   160ca:	0167f363          	bleu	s6,a5,160d0 <_svfprintf_r+0x111e>
   160ce:	8b3e                	mv	s6,a5
   160d0:	47ee                	lw	a5,216(sp)
   160d2:	0147c563          	blt	a5,s4,160dc <_svfprintf_r+0x112a>
   160d6:	00147793          	andi	a5,s0,1
   160da:	cf8d                	beqz	a5,16114 <_svfprintf_r+0x1162>
   160dc:	67a6                	ld	a5,72(sp)
   160de:	6762                	ld	a4,24(sp)
   160e0:	0cc1                	addi	s9,s9,16
   160e2:	fefcb823          	sd	a5,-16(s9)
   160e6:	67e2                	ld	a5,24(sp)
   160e8:	fefcbc23          	sd	a5,-8(s9)
   160ec:	67d2                	ld	a5,272(sp)
   160ee:	97ba                	add	a5,a5,a4
   160f0:	ea3e                	sd	a5,272(sp)
   160f2:	10812783          	lw	a5,264(sp)
   160f6:	0017871b          	addiw	a4,a5,1
   160fa:	10e12423          	sw	a4,264(sp)
   160fe:	479d                	li	a5,7
   16100:	00e7da63          	ble	a4,a5,16114 <_svfprintf_r+0x1162>
   16104:	0210                	addi	a2,sp,256
   16106:	85ce                	mv	a1,s3
   16108:	854a                	mv	a0,s2
   1610a:	0df010ef          	jal	ra,179e8 <__ssprint_r>
   1610e:	3c051563          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   16112:	8cd6                	mv	s9,s5
   16114:	4c6e                	lw	s8,216(sp)
   16116:	94d2                	add	s1,s1,s4
   16118:	416484bb          	subw	s1,s1,s6
   1611c:	418a07bb          	subw	a5,s4,s8
   16120:	8c3e                	mv	s8,a5
   16122:	00f4d463          	ble	a5,s1,1612a <_svfprintf_r+0x1178>
   16126:	00048c1b          	sext.w	s8,s1
   1612a:	03805b63          	blez	s8,16160 <_svfprintf_r+0x11ae>
   1612e:	67d2                	ld	a5,272(sp)
   16130:	016cb023          	sd	s6,0(s9)
   16134:	018cb423          	sd	s8,8(s9)
   16138:	97e2                	add	a5,a5,s8
   1613a:	ea3e                	sd	a5,272(sp)
   1613c:	10812783          	lw	a5,264(sp)
   16140:	0cc1                	addi	s9,s9,16
   16142:	0017871b          	addiw	a4,a5,1
   16146:	10e12423          	sw	a4,264(sp)
   1614a:	479d                	li	a5,7
   1614c:	00e7da63          	ble	a4,a5,16160 <_svfprintf_r+0x11ae>
   16150:	0210                	addi	a2,sp,256
   16152:	85ce                	mv	a1,s3
   16154:	854a                	mv	a0,s2
   16156:	093010ef          	jal	ra,179e8 <__ssprint_r>
   1615a:	36051f63          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   1615e:	8cd6                	mv	s9,s5
   16160:	87e2                	mv	a5,s8
   16162:	000c5363          	bgez	s8,16168 <_svfprintf_r+0x11b6>
   16166:	4781                	li	a5,0
   16168:	44ee                	lw	s1,216(sp)
   1616a:	409a04bb          	subw	s1,s4,s1
   1616e:	9c9d                	subw	s1,s1,a5
   16170:	d0905ee3          	blez	s1,15e8c <_svfprintf_r+0xeda>
   16174:	6b69                	lui	s6,0x1a
   16176:	4c41                	li	s8,16
   16178:	358b0b13          	addi	s6,s6,856 # 1a358 <zeroes.4426>
   1617c:	4d1d                	li	s10,7
   1617e:	10812703          	lw	a4,264(sp)
   16182:	016cb023          	sd	s6,0(s9)
   16186:	67d2                	ld	a5,272(sp)
   16188:	0017069b          	addiw	a3,a4,1
   1618c:	8736                	mv	a4,a3
   1618e:	010c8613          	addi	a2,s9,16
   16192:	169c4f63          	blt	s8,s1,16310 <_svfprintf_r+0x135e>
   16196:	009cb423          	sd	s1,8(s9)
   1619a:	94be                	add	s1,s1,a5
   1619c:	ea26                	sd	s1,272(sp)
   1619e:	10d12423          	sw	a3,264(sp)
   161a2:	479d                	li	a5,7
   161a4:	8cb2                	mv	s9,a2
   161a6:	ced7d3e3          	ble	a3,a5,15e8c <_svfprintf_r+0xeda>
   161aa:	0210                	addi	a2,sp,256
   161ac:	85ce                	mv	a1,s3
   161ae:	854a                	mv	a0,s2
   161b0:	039010ef          	jal	ra,179e8 <__ssprint_r>
   161b4:	32051263          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   161b8:	18010c93          	addi	s9,sp,384
   161bc:	b9c1                	j	15e8c <_svfprintf_r+0xeda>
   161be:	0741                	addi	a4,a4,16
   161c0:	010cb423          	sd	a6,8(s9)
   161c4:	ea3a                	sd	a4,272(sp)
   161c6:	10c12423          	sw	a2,264(sp)
   161ca:	00b8de63          	ble	a1,a7,161e6 <_svfprintf_r+0x1234>
   161ce:	0210                	addi	a2,sp,256
   161d0:	85ce                	mv	a1,s3
   161d2:	854a                	mv	a0,s2
   161d4:	f8c6                	sd	a7,112(sp)
   161d6:	f4c2                	sd	a6,104(sp)
   161d8:	011010ef          	jal	ra,179e8 <__ssprint_r>
   161dc:	2e051e63          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   161e0:	78c6                	ld	a7,112(sp)
   161e2:	7826                	ld	a6,104(sp)
   161e4:	8556                	mv	a0,s5
   161e6:	3b41                	addiw	s6,s6,-16
   161e8:	8caa                	mv	s9,a0
   161ea:	bdb5                	j	16066 <_svfprintf_r+0x10b4>
   161ec:	c7d5                	beqz	a5,16298 <_svfprintf_r+0x12e6>
   161ee:	47a2                	lw	a5,8(sp)
   161f0:	37fd                	addiw	a5,a5,-1
   161f2:	e43e                	sd	a5,8(sp)
   161f4:	67c6                	ld	a5,80(sp)
   161f6:	6706                	ld	a4,64(sp)
   161f8:	0cc1                	addi	s9,s9,16
   161fa:	fefcb823          	sd	a5,-16(s9)
   161fe:	6786                	ld	a5,64(sp)
   16200:	fefcbc23          	sd	a5,-8(s9)
   16204:	67d2                	ld	a5,272(sp)
   16206:	97ba                	add	a5,a5,a4
   16208:	ea3e                	sd	a5,272(sp)
   1620a:	10812783          	lw	a5,264(sp)
   1620e:	0017871b          	addiw	a4,a5,1
   16212:	10e12423          	sw	a4,264(sp)
   16216:	00edda63          	ble	a4,s11,1622a <_svfprintf_r+0x1278>
   1621a:	0210                	addi	a2,sp,256
   1621c:	85ce                	mv	a1,s3
   1621e:	854a                	mv	a0,s2
   16220:	7c8010ef          	jal	ra,179e8 <__ssprint_r>
   16224:	2a051a63          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   16228:	8cd6                	mv	s9,s5
   1622a:	6702                	ld	a4,0(sp)
   1622c:	57a6                	lw	a5,104(sp)
   1622e:	00074703          	lbu	a4,0(a4)
   16232:	416787bb          	subw	a5,a5,s6
   16236:	00e7d463          	ble	a4,a5,1623e <_svfprintf_r+0x128c>
   1623a:	0007871b          	sext.w	a4,a5
   1623e:	02e05d63          	blez	a4,16278 <_svfprintf_r+0x12c6>
   16242:	67d2                	ld	a5,272(sp)
   16244:	016cb023          	sd	s6,0(s9)
   16248:	00ecb423          	sd	a4,8(s9)
   1624c:	97ba                	add	a5,a5,a4
   1624e:	ea3e                	sd	a5,272(sp)
   16250:	10812783          	lw	a5,264(sp)
   16254:	0cc1                	addi	s9,s9,16
   16256:	0017869b          	addiw	a3,a5,1
   1625a:	10d12423          	sw	a3,264(sp)
   1625e:	00dddd63          	ble	a3,s11,16278 <_svfprintf_r+0x12c6>
   16262:	0210                	addi	a2,sp,256
   16264:	85ce                	mv	a1,s3
   16266:	854a                	mv	a0,s2
   16268:	f8ba                	sd	a4,112(sp)
   1626a:	77e010ef          	jal	ra,179e8 <__ssprint_r>
   1626e:	26051563          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   16272:	7746                	ld	a4,112(sp)
   16274:	18010c93          	addi	s9,sp,384
   16278:	86ba                	mv	a3,a4
   1627a:	00075363          	bgez	a4,16280 <_svfprintf_r+0x12ce>
   1627e:	4681                	li	a3,0
   16280:	6782                	ld	a5,0(sp)
   16282:	4841                	li	a6,16
   16284:	0007c783          	lbu	a5,0(a5)
   16288:	9f95                	subw	a5,a5,a3
   1628a:	04f04463          	bgtz	a5,162d2 <_svfprintf_r+0x1320>
   1628e:	6782                	ld	a5,0(sp)
   16290:	0007c783          	lbu	a5,0(a5)
   16294:	9b3e                	add	s6,s6,a5
   16296:	b51d                	j	160bc <_svfprintf_r+0x110a>
   16298:	6782                	ld	a5,0(sp)
   1629a:	3c7d                	addiw	s8,s8,-1
   1629c:	17fd                	addi	a5,a5,-1
   1629e:	e03e                	sd	a5,0(sp)
   162a0:	bf91                	j	161f4 <_svfprintf_r+0x1242>
   162a2:	0741                	addi	a4,a4,16
   162a4:	01acb023          	sd	s10,0(s9)
   162a8:	010cb423          	sd	a6,8(s9)
   162ac:	ea3a                	sd	a4,272(sp)
   162ae:	10d12423          	sw	a3,264(sp)
   162b2:	00cdde63          	ble	a2,s11,162ce <_svfprintf_r+0x131c>
   162b6:	0210                	addi	a2,sp,256
   162b8:	85ce                	mv	a1,s3
   162ba:	854a                	mv	a0,s2
   162bc:	fcc2                	sd	a6,120(sp)
   162be:	f8be                	sd	a5,112(sp)
   162c0:	728010ef          	jal	ra,179e8 <__ssprint_r>
   162c4:	20051a63          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   162c8:	7866                	ld	a6,120(sp)
   162ca:	77c6                	ld	a5,112(sp)
   162cc:	030c                	addi	a1,sp,384
   162ce:	37c1                	addiw	a5,a5,-16
   162d0:	8cae                	mv	s9,a1
   162d2:	10812683          	lw	a3,264(sp)
   162d6:	6752                	ld	a4,272(sp)
   162d8:	010c8593          	addi	a1,s9,16
   162dc:	0016861b          	addiw	a2,a3,1
   162e0:	86b2                	mv	a3,a2
   162e2:	fcf840e3          	blt	a6,a5,162a2 <_svfprintf_r+0x12f0>
   162e6:	00fcb423          	sd	a5,8(s9)
   162ea:	97ba                	add	a5,a5,a4
   162ec:	01acb023          	sd	s10,0(s9)
   162f0:	ea3e                	sd	a5,272(sp)
   162f2:	10c12423          	sw	a2,264(sp)
   162f6:	8cae                	mv	s9,a1
   162f8:	f8cddbe3          	ble	a2,s11,1628e <_svfprintf_r+0x12dc>
   162fc:	0210                	addi	a2,sp,256
   162fe:	85ce                	mv	a1,s3
   16300:	854a                	mv	a0,s2
   16302:	6e6010ef          	jal	ra,179e8 <__ssprint_r>
   16306:	1c051963          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   1630a:	18010c93          	addi	s9,sp,384
   1630e:	b741                	j	1628e <_svfprintf_r+0x12dc>
   16310:	07c1                	addi	a5,a5,16
   16312:	018cb423          	sd	s8,8(s9)
   16316:	ea3e                	sd	a5,272(sp)
   16318:	10e12423          	sw	a4,264(sp)
   1631c:	00dd5a63          	ble	a3,s10,16330 <_svfprintf_r+0x137e>
   16320:	0210                	addi	a2,sp,256
   16322:	85ce                	mv	a1,s3
   16324:	854a                	mv	a0,s2
   16326:	6c2010ef          	jal	ra,179e8 <__ssprint_r>
   1632a:	1a051763          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   1632e:	0310                	addi	a2,sp,384
   16330:	34c1                	addiw	s1,s1,-16
   16332:	8cb2                	mv	s9,a2
   16334:	b5a9                	j	1617e <_svfprintf_r+0x11cc>
   16336:	10812783          	lw	a5,264(sp)
   1633a:	4605                	li	a2,1
   1633c:	009cb023          	sd	s1,0(s9)
   16340:	0017869b          	addiw	a3,a5,1
   16344:	0705                	addi	a4,a4,1
   16346:	87b6                	mv	a5,a3
   16348:	010c8c13          	addi	s8,s9,16
   1634c:	01464663          	blt	a2,s4,16358 <_svfprintf_r+0x13a6>
   16350:	00147593          	andi	a1,s0,1
   16354:	12058663          	beqz	a1,16480 <_svfprintf_r+0x14ce>
   16358:	4605                	li	a2,1
   1635a:	10f12423          	sw	a5,264(sp)
   1635e:	00ccb423          	sd	a2,8(s9)
   16362:	ea3a                	sd	a4,272(sp)
   16364:	479d                	li	a5,7
   16366:	00d7da63          	ble	a3,a5,1637a <_svfprintf_r+0x13c8>
   1636a:	0210                	addi	a2,sp,256
   1636c:	85ce                	mv	a1,s3
   1636e:	854a                	mv	a0,s2
   16370:	678010ef          	jal	ra,179e8 <__ssprint_r>
   16374:	16051263          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   16378:	8c56                	mv	s8,s5
   1637a:	67a6                	ld	a5,72(sp)
   1637c:	6762                	ld	a4,24(sp)
   1637e:	0c41                	addi	s8,s8,16
   16380:	fefc3823          	sd	a5,-16(s8)
   16384:	67e2                	ld	a5,24(sp)
   16386:	fefc3c23          	sd	a5,-8(s8)
   1638a:	67d2                	ld	a5,272(sp)
   1638c:	97ba                	add	a5,a5,a4
   1638e:	ea3e                	sd	a5,272(sp)
   16390:	10812783          	lw	a5,264(sp)
   16394:	0017871b          	addiw	a4,a5,1
   16398:	10e12423          	sw	a4,264(sp)
   1639c:	479d                	li	a5,7
   1639e:	00e7da63          	ble	a4,a5,163b2 <_svfprintf_r+0x1400>
   163a2:	0210                	addi	a2,sp,256
   163a4:	85ce                	mv	a1,s3
   163a6:	854a                	mv	a0,s2
   163a8:	640010ef          	jal	ra,179e8 <__ssprint_r>
   163ac:	12051663          	bnez	a0,164d8 <_svfprintf_r+0x1526>
   163b0:	8c56                	mv	s8,s5
   163b2:	754e                	ld	a0,240(sp)
   163b4:	75ee                	ld	a1,248(sp)
   163b6:	4601                	li	a2,0
   163b8:	4681                	li	a3,0
   163ba:	fffa0b1b          	addiw	s6,s4,-1
   163be:	2e0020ef          	jal	ra,1869e <__eqtf2>
   163c2:	c12d                	beqz	a0,16424 <_svfprintf_r+0x1472>
   163c4:	10812703          	lw	a4,264(sp)
   163c8:	67d2                	ld	a5,272(sp)
   163ca:	0485                	addi	s1,s1,1
   163cc:	0017069b          	addiw	a3,a4,1
   163d0:	97da                	add	a5,a5,s6
   163d2:	009c3023          	sd	s1,0(s8)
   163d6:	016c3423          	sd	s6,8(s8)
   163da:	ea3e                	sd	a5,272(sp)
   163dc:	10d12423          	sw	a3,264(sp)
   163e0:	479d                	li	a5,7
   163e2:	0c41                	addi	s8,s8,16
   163e4:	00d7d963          	ble	a3,a5,163f6 <_svfprintf_r+0x1444>
   163e8:	0210                	addi	a2,sp,256
   163ea:	85ce                	mv	a1,s3
   163ec:	854a                	mv	a0,s2
   163ee:	5fa010ef          	jal	ra,179e8 <__ssprint_r>
   163f2:	e17d                	bnez	a0,164d8 <_svfprintf_r+0x1526>
   163f4:	8c56                	mv	s8,s5
   163f6:	119c                	addi	a5,sp,224
   163f8:	00fc3023          	sd	a5,0(s8)
   163fc:	67e6                	ld	a5,88(sp)
   163fe:	6766                	ld	a4,88(sp)
   16400:	010c0c93          	addi	s9,s8,16
   16404:	00fc3423          	sd	a5,8(s8)
   16408:	67d2                	ld	a5,272(sp)
   1640a:	97ba                	add	a5,a5,a4
   1640c:	ea3e                	sd	a5,272(sp)
   1640e:	10812783          	lw	a5,264(sp)
   16412:	0017871b          	addiw	a4,a5,1
   16416:	10e12423          	sw	a4,264(sp)
   1641a:	479d                	li	a5,7
   1641c:	a6e7d8e3          	ble	a4,a5,15e8c <_svfprintf_r+0xeda>
   16420:	86eff06f          	j	1548e <_svfprintf_r+0x4dc>
   16424:	fd6059e3          	blez	s6,163f6 <_svfprintf_r+0x1444>
   16428:	64e9                	lui	s1,0x1a
   1642a:	4d41                	li	s10,16
   1642c:	35848493          	addi	s1,s1,856 # 1a358 <zeroes.4426>
   16430:	4c9d                	li	s9,7
   16432:	10812703          	lw	a4,264(sp)
   16436:	009c3023          	sd	s1,0(s8)
   1643a:	67d2                	ld	a5,272(sp)
   1643c:	0017069b          	addiw	a3,a4,1
   16440:	8736                	mv	a4,a3
   16442:	010c0613          	addi	a2,s8,16
   16446:	016d4b63          	blt	s10,s6,1645c <_svfprintf_r+0x14aa>
   1644a:	97da                	add	a5,a5,s6
   1644c:	016c3423          	sd	s6,8(s8)
   16450:	ea3e                	sd	a5,272(sp)
   16452:	10d12423          	sw	a3,264(sp)
   16456:	479d                	li	a5,7
   16458:	8c32                	mv	s8,a2
   1645a:	b769                	j	163e4 <_svfprintf_r+0x1432>
   1645c:	07c1                	addi	a5,a5,16
   1645e:	01ac3423          	sd	s10,8(s8)
   16462:	ea3e                	sd	a5,272(sp)
   16464:	10e12423          	sw	a4,264(sp)
   16468:	00dcd963          	ble	a3,s9,1647a <_svfprintf_r+0x14c8>
   1646c:	0210                	addi	a2,sp,256
   1646e:	85ce                	mv	a1,s3
   16470:	854a                	mv	a0,s2
   16472:	576010ef          	jal	ra,179e8 <__ssprint_r>
   16476:	e12d                	bnez	a0,164d8 <_svfprintf_r+0x1526>
   16478:	8656                	mv	a2,s5
   1647a:	3b41                	addiw	s6,s6,-16
   1647c:	8c32                	mv	s8,a2
   1647e:	bf55                	j	16432 <_svfprintf_r+0x1480>
   16480:	00ccb423          	sd	a2,8(s9)
   16484:	ea3a                	sd	a4,272(sp)
   16486:	10d12423          	sw	a3,264(sp)
   1648a:	479d                	li	a5,7
   1648c:	bfa1                	j	163e4 <_svfprintf_r+0x1432>
   1648e:	5782                	lw	a5,32(sp)
   16490:	5762                	lw	a4,56(sp)
   16492:	40e7843b          	subw	s0,a5,a4
   16496:	9e805ee3          	blez	s0,15e92 <_svfprintf_r+0xee0>
   1649a:	64e9                	lui	s1,0x1a
   1649c:	4b41                	li	s6,16
   1649e:	34848493          	addi	s1,s1,840 # 1a348 <blanks.4425>
   164a2:	4c1d                	li	s8,7
   164a4:	10812703          	lw	a4,264(sp)
   164a8:	009cb023          	sd	s1,0(s9)
   164ac:	67d2                	ld	a5,272(sp)
   164ae:	0017069b          	addiw	a3,a4,1
   164b2:	8736                	mv	a4,a3
   164b4:	028b4a63          	blt	s6,s0,164e8 <_svfprintf_r+0x1536>
   164b8:	008cb423          	sd	s0,8(s9)
   164bc:	943e                	add	s0,s0,a5
   164be:	ea22                	sd	s0,272(sp)
   164c0:	10d12423          	sw	a3,264(sp)
   164c4:	479d                	li	a5,7
   164c6:	9cd7d6e3          	ble	a3,a5,15e92 <_svfprintf_r+0xee0>
   164ca:	0210                	addi	a2,sp,256
   164cc:	85ce                	mv	a1,s3
   164ce:	854a                	mv	a0,s2
   164d0:	518010ef          	jal	ra,179e8 <__ssprint_r>
   164d4:	9a050fe3          	beqz	a0,15e92 <_svfprintf_r+0xee0>
   164d8:	920b8963          	beqz	s7,1560a <_svfprintf_r+0x658>
   164dc:	85de                	mv	a1,s7
   164de:	854a                	mv	a0,s2
   164e0:	944fc0ef          	jal	ra,12624 <_free_r>
   164e4:	926ff06f          	j	1560a <_svfprintf_r+0x658>
   164e8:	07c1                	addi	a5,a5,16
   164ea:	016cb423          	sd	s6,8(s9)
   164ee:	ea3e                	sd	a5,272(sp)
   164f0:	10e12423          	sw	a4,264(sp)
   164f4:	0cc1                	addi	s9,s9,16
   164f6:	00dc5963          	ble	a3,s8,16508 <_svfprintf_r+0x1556>
   164fa:	0210                	addi	a2,sp,256
   164fc:	85ce                	mv	a1,s3
   164fe:	854a                	mv	a0,s2
   16500:	4e8010ef          	jal	ra,179e8 <__ssprint_r>
   16504:	f971                	bnez	a0,164d8 <_svfprintf_r+0x1526>
   16506:	8cd6                	mv	s9,s5
   16508:	3441                	addiw	s0,s0,-16
   1650a:	bf69                	j	164a4 <_svfprintf_r+0x14f2>
   1650c:	85de                	mv	a1,s7
   1650e:	854a                	mv	a0,s2
   16510:	914fc0ef          	jal	ra,12624 <_free_r>
   16514:	b26d                	j	15ebe <_svfprintf_r+0xf0c>
   16516:	67d2                	ld	a5,272(sp)
   16518:	8e078963          	beqz	a5,1560a <_svfprintf_r+0x658>
   1651c:	0210                	addi	a2,sp,256
   1651e:	85ce                	mv	a1,s3
   16520:	854a                	mv	a0,s2
   16522:	4c6010ef          	jal	ra,179e8 <__ssprint_r>
   16526:	8e4ff06f          	j	1560a <_svfprintf_r+0x658>

000000000001652a <__sprint_r>:
   1652a:	6a1c                	ld	a5,16(a2)
   1652c:	715d                	addi	sp,sp,-80
   1652e:	e0a2                	sd	s0,64(sp)
   16530:	e486                	sd	ra,72(sp)
   16532:	fc26                	sd	s1,56(sp)
   16534:	f84a                	sd	s2,48(sp)
   16536:	f44e                	sd	s3,40(sp)
   16538:	f052                	sd	s4,32(sp)
   1653a:	ec56                	sd	s5,24(sp)
   1653c:	e85a                	sd	s6,16(sp)
   1653e:	e45e                	sd	s7,8(sp)
   16540:	8432                	mv	s0,a2
   16542:	ef99                	bnez	a5,16560 <__sprint_r+0x36>
   16544:	00062423          	sw	zero,8(a2)
   16548:	4501                	li	a0,0
   1654a:	60a6                	ld	ra,72(sp)
   1654c:	6406                	ld	s0,64(sp)
   1654e:	74e2                	ld	s1,56(sp)
   16550:	7942                	ld	s2,48(sp)
   16552:	79a2                	ld	s3,40(sp)
   16554:	7a02                	ld	s4,32(sp)
   16556:	6ae2                	ld	s5,24(sp)
   16558:	6b42                	ld	s6,16(sp)
   1655a:	6ba2                	ld	s7,8(sp)
   1655c:	6161                	addi	sp,sp,80
   1655e:	8082                	ret
   16560:	0ac5a783          	lw	a5,172(a1)
   16564:	89ae                	mv	s3,a1
   16566:	03279713          	slli	a4,a5,0x32
   1656a:	04075a63          	bgez	a4,165be <__sprint_r+0x94>
   1656e:	00063903          	ld	s2,0(a2)
   16572:	8a2a                	mv	s4,a0
   16574:	5bfd                	li	s7,-1
   16576:	681c                	ld	a5,16(s0)
   16578:	e799                	bnez	a5,16586 <__sprint_r+0x5c>
   1657a:	4501                	li	a0,0
   1657c:	00043823          	sd	zero,16(s0)
   16580:	00042423          	sw	zero,8(s0)
   16584:	b7d9                	j	1654a <__sprint_r+0x20>
   16586:	00893483          	ld	s1,8(s2)
   1658a:	00093b03          	ld	s6,0(s2)
   1658e:	4a81                	li	s5,0
   16590:	8089                	srli	s1,s1,0x2
   16592:	2481                	sext.w	s1,s1
   16594:	009ac963          	blt	s5,s1,165a6 <__sprint_r+0x7c>
   16598:	681c                	ld	a5,16(s0)
   1659a:	048a                	slli	s1,s1,0x2
   1659c:	0941                	addi	s2,s2,16
   1659e:	409784b3          	sub	s1,a5,s1
   165a2:	e804                	sd	s1,16(s0)
   165a4:	bfc9                	j	16576 <__sprint_r+0x4c>
   165a6:	000b2583          	lw	a1,0(s6)
   165aa:	864e                	mv	a2,s3
   165ac:	8552                	mv	a0,s4
   165ae:	37d000ef          	jal	ra,1712a <_fputwc_r>
   165b2:	2501                	sext.w	a0,a0
   165b4:	0b11                	addi	s6,s6,4
   165b6:	01750763          	beq	a0,s7,165c4 <__sprint_r+0x9a>
   165ba:	2a85                	addiw	s5,s5,1
   165bc:	bfe1                	j	16594 <__sprint_r+0x6a>
   165be:	3ef000ef          	jal	ra,171ac <__sfvwrite_r>
   165c2:	bf6d                	j	1657c <__sprint_r+0x52>
   165c4:	557d                	li	a0,-1
   165c6:	bf5d                	j	1657c <__sprint_r+0x52>

00000000000165c8 <_vfiprintf_r>:
   165c8:	7141                	addi	sp,sp,-496
   165ca:	efa6                	sd	s1,472(sp)
   165cc:	ebca                	sd	s2,464(sp)
   165ce:	e7ce                	sd	s3,456(sp)
   165d0:	e3d2                	sd	s4,448(sp)
   165d2:	f786                	sd	ra,488(sp)
   165d4:	f3a2                	sd	s0,480(sp)
   165d6:	ff56                	sd	s5,440(sp)
   165d8:	fb5a                	sd	s6,432(sp)
   165da:	f75e                	sd	s7,424(sp)
   165dc:	f362                	sd	s8,416(sp)
   165de:	ef66                	sd	s9,408(sp)
   165e0:	eb6a                	sd	s10,400(sp)
   165e2:	e76e                	sd	s11,392(sp)
   165e4:	892a                	mv	s2,a0
   165e6:	84ae                	mv	s1,a1
   165e8:	89b2                	mv	s3,a2
   165ea:	8a36                	mv	s4,a3
   165ec:	c509                	beqz	a0,165f6 <_vfiprintf_r+0x2e>
   165ee:	493c                	lw	a5,80(a0)
   165f0:	e399                	bnez	a5,165f6 <_vfiprintf_r+0x2e>
   165f2:	e63fb0ef          	jal	ra,12454 <__sinit>
   165f6:	01049783          	lh	a5,16(s1)
   165fa:	03279713          	slli	a4,a5,0x32
   165fe:	00074d63          	bltz	a4,16618 <_vfiprintf_r+0x50>
   16602:	6689                	lui	a3,0x2
   16604:	0ac4a703          	lw	a4,172(s1)
   16608:	8fd5                	or	a5,a5,a3
   1660a:	00f49823          	sh	a5,16(s1)
   1660e:	77f9                	lui	a5,0xffffe
   16610:	17fd                	addi	a5,a5,-1
   16612:	8ff9                	and	a5,a5,a4
   16614:	0af4a623          	sw	a5,172(s1)
   16618:	0104d783          	lhu	a5,16(s1)
   1661c:	8ba1                	andi	a5,a5,8
   1661e:	c7a1                	beqz	a5,16666 <_vfiprintf_r+0x9e>
   16620:	6c9c                	ld	a5,24(s1)
   16622:	c3b1                	beqz	a5,16666 <_vfiprintf_r+0x9e>
   16624:	0104d783          	lhu	a5,16(s1)
   16628:	4729                	li	a4,10
   1662a:	8be9                	andi	a5,a5,26
   1662c:	04e79463          	bne	a5,a4,16674 <_vfiprintf_r+0xac>
   16630:	01249783          	lh	a5,18(s1)
   16634:	0407c063          	bltz	a5,16674 <_vfiprintf_r+0xac>
   16638:	86d2                	mv	a3,s4
   1663a:	864e                	mv	a2,s3
   1663c:	85a6                	mv	a1,s1
   1663e:	854a                	mv	a0,s2
   16640:	001000ef          	jal	ra,16e40 <__sbprintf>
   16644:	8baa                	mv	s7,a0
   16646:	70be                	ld	ra,488(sp)
   16648:	741e                	ld	s0,480(sp)
   1664a:	855e                	mv	a0,s7
   1664c:	64fe                	ld	s1,472(sp)
   1664e:	695e                	ld	s2,464(sp)
   16650:	69be                	ld	s3,456(sp)
   16652:	6a1e                	ld	s4,448(sp)
   16654:	7afa                	ld	s5,440(sp)
   16656:	7b5a                	ld	s6,432(sp)
   16658:	7bba                	ld	s7,424(sp)
   1665a:	7c1a                	ld	s8,416(sp)
   1665c:	6cfa                	ld	s9,408(sp)
   1665e:	6d5a                	ld	s10,400(sp)
   16660:	6dba                	ld	s11,392(sp)
   16662:	617d                	addi	sp,sp,496
   16664:	8082                	ret
   16666:	85a6                	mv	a1,s1
   16668:	854a                	mv	a0,s2
   1666a:	985fb0ef          	jal	ra,11fee <__swsetup_r>
   1666e:	d95d                	beqz	a0,16624 <_vfiprintf_r+0x5c>
   16670:	5bfd                	li	s7,-1
   16672:	bfd1                	j	16646 <_vfiprintf_r+0x7e>
   16674:	67e9                	lui	a5,0x1a
   16676:	36878793          	addi	a5,a5,872 # 1a368 <zeroes.4426+0x10>
   1667a:	e8be                	sd	a5,80(sp)
   1667c:	67e9                	lui	a5,0x1a
   1667e:	4e878793          	addi	a5,a5,1256 # 1a4e8 <zeroes.4417>
   16682:	f43e                	sd	a5,40(sp)
   16684:	67e9                	lui	a5,0x1a
   16686:	10010b13          	addi	s6,sp,256
   1668a:	4d878793          	addi	a5,a5,1240 # 1a4d8 <blanks.4416>
   1668e:	e15a                	sd	s6,128(sp)
   16690:	e902                	sd	zero,144(sp)
   16692:	c502                	sw	zero,136(sp)
   16694:	8dda                	mv	s11,s6
   16696:	f002                	sd	zero,32(sp)
   16698:	e802                	sd	zero,16(sp)
   1669a:	ec02                	sd	zero,24(sp)
   1669c:	fc02                	sd	zero,56(sp)
   1669e:	4b81                	li	s7,0
   166a0:	f83e                	sd	a5,48(sp)
   166a2:	844e                	mv	s0,s3
   166a4:	02500693          	li	a3,37
   166a8:	00044783          	lbu	a5,0(s0)
   166ac:	c399                	beqz	a5,166b2 <_vfiprintf_r+0xea>
   166ae:	06d79e63          	bne	a5,a3,1672a <_vfiprintf_r+0x162>
   166b2:	41340abb          	subw	s5,s0,s3
   166b6:	020a8b63          	beqz	s5,166ec <_vfiprintf_r+0x124>
   166ba:	67ca                	ld	a5,144(sp)
   166bc:	013db023          	sd	s3,0(s11)
   166c0:	015db423          	sd	s5,8(s11)
   166c4:	97d6                	add	a5,a5,s5
   166c6:	e93e                	sd	a5,144(sp)
   166c8:	47aa                	lw	a5,136(sp)
   166ca:	0dc1                	addi	s11,s11,16
   166cc:	0017869b          	addiw	a3,a5,1
   166d0:	c536                	sw	a3,136(sp)
   166d2:	479d                	li	a5,7
   166d4:	00d7da63          	ble	a3,a5,166e8 <_vfiprintf_r+0x120>
   166d8:	0110                	addi	a2,sp,128
   166da:	85a6                	mv	a1,s1
   166dc:	854a                	mv	a0,s2
   166de:	e4dff0ef          	jal	ra,1652a <__sprint_r>
   166e2:	70051663          	bnez	a0,16dee <_vfiprintf_r+0x826>
   166e6:	8dda                	mv	s11,s6
   166e8:	015b8bbb          	addw	s7,s7,s5
   166ec:	00044783          	lbu	a5,0(s0)
   166f0:	72078963          	beqz	a5,16e22 <_vfiprintf_r+0x85a>
   166f4:	00140693          	addi	a3,s0,1
   166f8:	06010ba3          	sb	zero,119(sp)
   166fc:	547d                	li	s0,-1
   166fe:	4a81                	li	s5,0
   16700:	4d01                	li	s10,0
   16702:	05a00c93          	li	s9,90
   16706:	4c29                	li	s8,10
   16708:	00168993          	addi	s3,a3,1 # 2001 <main-0xe0af>
   1670c:	0006c683          	lbu	a3,0(a3)
   16710:	4525                	li	a0,9
   16712:	02a00813          	li	a6,42
   16716:	fe06861b          	addiw	a2,a3,-32
   1671a:	60cce263          	bltu	s9,a2,16d1e <_vfiprintf_r+0x756>
   1671e:	67c6                	ld	a5,80(sp)
   16720:	1602                	slli	a2,a2,0x20
   16722:	8279                	srli	a2,a2,0x1e
   16724:	963e                	add	a2,a2,a5
   16726:	4210                	lw	a2,0(a2)
   16728:	8602                	jr	a2
   1672a:	0405                	addi	s0,s0,1
   1672c:	bfb5                	j	166a8 <_vfiprintf_r+0xe0>
   1672e:	0001a637          	lui	a2,0x1a
   16732:	dd860793          	addi	a5,a2,-552 # 19dd8 <zeroes.4441+0x78>
   16736:	f03e                	sd	a5,32(sp)
   16738:	008a0793          	addi	a5,s4,8
   1673c:	e43e                	sd	a5,8(sp)
   1673e:	020d7613          	andi	a2,s10,32
   16742:	4e060663          	beqz	a2,16c2e <_vfiprintf_r+0x666>
   16746:	000a3a03          	ld	s4,0(s4)
   1674a:	001d7613          	andi	a2,s10,1
   1674e:	ca19                	beqz	a2,16764 <_vfiprintf_r+0x19c>
   16750:	000a0a63          	beqz	s4,16764 <_vfiprintf_r+0x19c>
   16754:	03000613          	li	a2,48
   16758:	06c10c23          	sb	a2,120(sp)
   1675c:	06d10ca3          	sb	a3,121(sp)
   16760:	002d6d13          	ori	s10,s10,2
   16764:	bffd7d13          	andi	s10,s10,-1025
   16768:	a4ad                	j	169d2 <_vfiprintf_r+0x40a>
   1676a:	854a                	mv	a0,s2
   1676c:	849fd0ef          	jal	ra,13fb4 <_localeconv_r>
   16770:	651c                	ld	a5,8(a0)
   16772:	853e                	mv	a0,a5
   16774:	fc3e                	sd	a5,56(sp)
   16776:	ffafe0ef          	jal	ra,14f70 <strlen>
   1677a:	ec2a                	sd	a0,24(sp)
   1677c:	854a                	mv	a0,s2
   1677e:	837fd0ef          	jal	ra,13fb4 <_localeconv_r>
   16782:	691c                	ld	a5,16(a0)
   16784:	e83e                	sd	a5,16(sp)
   16786:	67e2                	ld	a5,24(sp)
   16788:	cb81                	beqz	a5,16798 <_vfiprintf_r+0x1d0>
   1678a:	67c2                	ld	a5,16(sp)
   1678c:	c791                	beqz	a5,16798 <_vfiprintf_r+0x1d0>
   1678e:	0007c683          	lbu	a3,0(a5)
   16792:	c299                	beqz	a3,16798 <_vfiprintf_r+0x1d0>
   16794:	400d6d13          	ori	s10,s10,1024
   16798:	86ce                	mv	a3,s3
   1679a:	b7bd                	j	16708 <_vfiprintf_r+0x140>
   1679c:	07714683          	lbu	a3,119(sp)
   167a0:	fee5                	bnez	a3,16798 <_vfiprintf_r+0x1d0>
   167a2:	02000693          	li	a3,32
   167a6:	06d10ba3          	sb	a3,119(sp)
   167aa:	b7fd                	j	16798 <_vfiprintf_r+0x1d0>
   167ac:	001d6d13          	ori	s10,s10,1
   167b0:	b7e5                	j	16798 <_vfiprintf_r+0x1d0>
   167b2:	000a2a83          	lw	s5,0(s4)
   167b6:	0a21                	addi	s4,s4,8
   167b8:	fe0ad0e3          	bgez	s5,16798 <_vfiprintf_r+0x1d0>
   167bc:	41500abb          	negw	s5,s5
   167c0:	004d6d13          	ori	s10,s10,4
   167c4:	bfd1                	j	16798 <_vfiprintf_r+0x1d0>
   167c6:	02b00693          	li	a3,43
   167ca:	bff1                	j	167a6 <_vfiprintf_r+0x1de>
   167cc:	0009c683          	lbu	a3,0(s3)
   167d0:	00198613          	addi	a2,s3,1
   167d4:	03069963          	bne	a3,a6,16806 <_vfiprintf_r+0x23e>
   167d8:	000a2403          	lw	s0,0(s4)
   167dc:	008a0693          	addi	a3,s4,8
   167e0:	00045363          	bgez	s0,167e6 <_vfiprintf_r+0x21e>
   167e4:	547d                	li	s0,-1
   167e6:	2401                	sext.w	s0,s0
   167e8:	8a36                	mv	s4,a3
   167ea:	89b2                	mv	s3,a2
   167ec:	b775                	j	16798 <_vfiprintf_r+0x1d0>
   167ee:	028c043b          	mulw	s0,s8,s0
   167f2:	0605                	addi	a2,a2,1
   167f4:	fff64683          	lbu	a3,-1(a2)
   167f8:	9c2d                	addw	s0,s0,a1
   167fa:	fd06859b          	addiw	a1,a3,-48
   167fe:	feb578e3          	bleu	a1,a0,167ee <_vfiprintf_r+0x226>
   16802:	89b2                	mv	s3,a2
   16804:	bf09                	j	16716 <_vfiprintf_r+0x14e>
   16806:	4401                	li	s0,0
   16808:	bfcd                	j	167fa <_vfiprintf_r+0x232>
   1680a:	080d6d13          	ori	s10,s10,128
   1680e:	b769                	j	16798 <_vfiprintf_r+0x1d0>
   16810:	864e                	mv	a2,s3
   16812:	4a81                	li	s5,0
   16814:	035c0abb          	mulw	s5,s8,s5
   16818:	fd06869b          	addiw	a3,a3,-48
   1681c:	0605                	addi	a2,a2,1
   1681e:	01568abb          	addw	s5,a3,s5
   16822:	fff64683          	lbu	a3,-1(a2)
   16826:	fd06859b          	addiw	a1,a3,-48
   1682a:	feb575e3          	bleu	a1,a0,16814 <_vfiprintf_r+0x24c>
   1682e:	bfd1                	j	16802 <_vfiprintf_r+0x23a>
   16830:	0009c603          	lbu	a2,0(s3)
   16834:	06800693          	li	a3,104
   16838:	00d61663          	bne	a2,a3,16844 <_vfiprintf_r+0x27c>
   1683c:	0985                	addi	s3,s3,1
   1683e:	200d6d13          	ori	s10,s10,512
   16842:	bf99                	j	16798 <_vfiprintf_r+0x1d0>
   16844:	040d6d13          	ori	s10,s10,64
   16848:	bf81                	j	16798 <_vfiprintf_r+0x1d0>
   1684a:	0009c603          	lbu	a2,0(s3)
   1684e:	06c00693          	li	a3,108
   16852:	00d61663          	bne	a2,a3,1685e <_vfiprintf_r+0x296>
   16856:	0985                	addi	s3,s3,1
   16858:	020d6d13          	ori	s10,s10,32
   1685c:	bf35                	j	16798 <_vfiprintf_r+0x1d0>
   1685e:	010d6d13          	ori	s10,s10,16
   16862:	bf1d                	j	16798 <_vfiprintf_r+0x1d0>
   16864:	000a2683          	lw	a3,0(s4)
   16868:	008a0793          	addi	a5,s4,8
   1686c:	e43e                	sd	a5,8(sp)
   1686e:	08d10c23          	sb	a3,152(sp)
   16872:	06010ba3          	sb	zero,119(sp)
   16876:	4405                	li	s0,1
   16878:	4a01                	li	s4,0
   1687a:	09810c13          	addi	s8,sp,152
   1687e:	aabd                	j	169fc <_vfiprintf_r+0x434>
   16880:	010d6d13          	ori	s10,s10,16
   16884:	008a0793          	addi	a5,s4,8
   16888:	e43e                	sd	a5,8(sp)
   1688a:	020d7693          	andi	a3,s10,32
   1688e:	ca85                	beqz	a3,168be <_vfiprintf_r+0x2f6>
   16890:	000a3a03          	ld	s4,0(s4)
   16894:	000a5863          	bgez	s4,168a4 <_vfiprintf_r+0x2dc>
   16898:	02d00693          	li	a3,45
   1689c:	41400a33          	neg	s4,s4
   168a0:	06d10ba3          	sb	a3,119(sp)
   168a4:	56fd                	li	a3,-1
   168a6:	3ad41b63          	bne	s0,a3,16c5c <_vfiprintf_r+0x694>
   168aa:	46a5                	li	a3,9
   168ac:	3d46e563          	bltu	a3,s4,16c76 <_vfiprintf_r+0x6ae>
   168b0:	030a0a1b          	addiw	s4,s4,48
   168b4:	0f410da3          	sb	s4,251(sp)
   168b8:	0fb10c13          	addi	s8,sp,251
   168bc:	a87d                	j	1697a <_vfiprintf_r+0x3b2>
   168be:	010d7693          	andi	a3,s10,16
   168c2:	f6f9                	bnez	a3,16890 <_vfiprintf_r+0x2c8>
   168c4:	040d7693          	andi	a3,s10,64
   168c8:	c681                	beqz	a3,168d0 <_vfiprintf_r+0x308>
   168ca:	000a1a03          	lh	s4,0(s4)
   168ce:	b7d9                	j	16894 <_vfiprintf_r+0x2cc>
   168d0:	200d7693          	andi	a3,s10,512
   168d4:	c681                	beqz	a3,168dc <_vfiprintf_r+0x314>
   168d6:	000a0a03          	lb	s4,0(s4)
   168da:	bf6d                	j	16894 <_vfiprintf_r+0x2cc>
   168dc:	000a2a03          	lw	s4,0(s4)
   168e0:	bf55                	j	16894 <_vfiprintf_r+0x2cc>
   168e2:	020d7613          	andi	a2,s10,32
   168e6:	000a3683          	ld	a3,0(s4)
   168ea:	0a21                	addi	s4,s4,8
   168ec:	c601                	beqz	a2,168f4 <_vfiprintf_r+0x32c>
   168ee:	0176b023          	sd	s7,0(a3)
   168f2:	bb45                	j	166a2 <_vfiprintf_r+0xda>
   168f4:	010d7613          	andi	a2,s10,16
   168f8:	fa7d                	bnez	a2,168ee <_vfiprintf_r+0x326>
   168fa:	040d7613          	andi	a2,s10,64
   168fe:	c601                	beqz	a2,16906 <_vfiprintf_r+0x33e>
   16900:	01769023          	sh	s7,0(a3)
   16904:	bb79                	j	166a2 <_vfiprintf_r+0xda>
   16906:	200d7793          	andi	a5,s10,512
   1690a:	c781                	beqz	a5,16912 <_vfiprintf_r+0x34a>
   1690c:	01768023          	sb	s7,0(a3)
   16910:	bb49                	j	166a2 <_vfiprintf_r+0xda>
   16912:	0176a023          	sw	s7,0(a3)
   16916:	b371                	j	166a2 <_vfiprintf_r+0xda>
   16918:	010d6d13          	ori	s10,s10,16
   1691c:	008a0793          	addi	a5,s4,8
   16920:	e43e                	sd	a5,8(sp)
   16922:	020d7693          	andi	a3,s10,32
   16926:	ceb9                	beqz	a3,16984 <_vfiprintf_r+0x3bc>
   16928:	000a3a03          	ld	s4,0(s4)
   1692c:	bffd7d13          	andi	s10,s10,-1025
   16930:	4601                	li	a2,0
   16932:	06010ba3          	sb	zero,119(sp)
   16936:	56fd                	li	a3,-1
   16938:	85ea                	mv	a1,s10
   1693a:	32d41363          	bne	s0,a3,16c60 <_vfiprintf_r+0x698>
   1693e:	4685                	li	a3,1
   16940:	f6d605e3          	beq	a2,a3,168aa <_vfiprintf_r+0x2e2>
   16944:	4689                	li	a3,2
   16946:	3ad60063          	beq	a2,a3,16ce6 <_vfiprintf_r+0x71e>
   1694a:	19f0                	addi	a2,sp,252
   1694c:	007a7593          	andi	a1,s4,7
   16950:	03058593          	addi	a1,a1,48
   16954:	feb60fa3          	sb	a1,-1(a2)
   16958:	003a5a13          	srli	s4,s4,0x3
   1695c:	fff60c13          	addi	s8,a2,-1
   16960:	300a1963          	bnez	s4,16c72 <_vfiprintf_r+0x6aa>
   16964:	001d7513          	andi	a0,s10,1
   16968:	c909                	beqz	a0,1697a <_vfiprintf_r+0x3b2>
   1696a:	03000513          	li	a0,48
   1696e:	00a58663          	beq	a1,a0,1697a <_vfiprintf_r+0x3b2>
   16972:	feac0fa3          	sb	a0,-1(s8)
   16976:	ffe60c13          	addi	s8,a2,-2
   1697a:	8a22                	mv	s4,s0
   1697c:	19e0                	addi	s0,sp,252
   1697e:	4184043b          	subw	s0,s0,s8
   16982:	a8ad                	j	169fc <_vfiprintf_r+0x434>
   16984:	010d7693          	andi	a3,s10,16
   16988:	f2c5                	bnez	a3,16928 <_vfiprintf_r+0x360>
   1698a:	040d7693          	andi	a3,s10,64
   1698e:	000a2a03          	lw	s4,0(s4)
   16992:	c689                	beqz	a3,1699c <_vfiprintf_r+0x3d4>
   16994:	1a42                	slli	s4,s4,0x30
   16996:	030a5a13          	srli	s4,s4,0x30
   1699a:	bf49                	j	1692c <_vfiprintf_r+0x364>
   1699c:	200d7693          	andi	a3,s10,512
   169a0:	c681                	beqz	a3,169a8 <_vfiprintf_r+0x3e0>
   169a2:	0ffa7a13          	andi	s4,s4,255
   169a6:	b759                	j	1692c <_vfiprintf_r+0x364>
   169a8:	1a02                	slli	s4,s4,0x20
   169aa:	020a5a13          	srli	s4,s4,0x20
   169ae:	bfbd                	j	1692c <_vfiprintf_r+0x364>
   169b0:	76e1                	lui	a3,0xffff8
   169b2:	8306c693          	xori	a3,a3,-2000
   169b6:	008a0793          	addi	a5,s4,8
   169ba:	06d11c23          	sh	a3,120(sp)
   169be:	000a3a03          	ld	s4,0(s4)
   169c2:	0001a6b7          	lui	a3,0x1a
   169c6:	e43e                	sd	a5,8(sp)
   169c8:	dc068793          	addi	a5,a3,-576 # 19dc0 <zeroes.4441+0x60>
   169cc:	002d6d13          	ori	s10,s10,2
   169d0:	f03e                	sd	a5,32(sp)
   169d2:	4609                	li	a2,2
   169d4:	bfb9                	j	16932 <_vfiprintf_r+0x36a>
   169d6:	008a0793          	addi	a5,s4,8
   169da:	e43e                	sd	a5,8(sp)
   169dc:	06010ba3          	sb	zero,119(sp)
   169e0:	567d                	li	a2,-1
   169e2:	000a3c03          	ld	s8,0(s4)
   169e6:	1ec40663          	beq	s0,a2,16bd2 <_vfiprintf_r+0x60a>
   169ea:	8622                	mv	a2,s0
   169ec:	4581                	li	a1,0
   169ee:	8562                	mv	a0,s8
   169f0:	fc6fd0ef          	jal	ra,141b6 <memchr>
   169f4:	4a01                	li	s4,0
   169f6:	c119                	beqz	a0,169fc <_vfiprintf_r+0x434>
   169f8:	4185043b          	subw	s0,a0,s8
   169fc:	8652                	mv	a2,s4
   169fe:	008a5363          	ble	s0,s4,16a04 <_vfiprintf_r+0x43c>
   16a02:	8622                	mv	a2,s0
   16a04:	07714583          	lbu	a1,119(sp)
   16a08:	00060c9b          	sext.w	s9,a2
   16a0c:	c199                	beqz	a1,16a12 <_vfiprintf_r+0x44a>
   16a0e:	00160c9b          	addiw	s9,a2,1
   16a12:	002d7613          	andi	a2,s10,2
   16a16:	0006079b          	sext.w	a5,a2
   16a1a:	e0be                	sd	a5,64(sp)
   16a1c:	c391                	beqz	a5,16a20 <_vfiprintf_r+0x458>
   16a1e:	2c89                	addiw	s9,s9,2
   16a20:	084d7793          	andi	a5,s10,132
   16a24:	e4be                	sd	a5,72(sp)
   16a26:	e7a1                	bnez	a5,16a6e <_vfiprintf_r+0x4a6>
   16a28:	419a883b          	subw	a6,s5,s9
   16a2c:	05005163          	blez	a6,16a6e <_vfiprintf_r+0x4a6>
   16a30:	4341                	li	t1,16
   16a32:	4e1d                	li	t3,7
   16a34:	45aa                	lw	a1,136(sp)
   16a36:	77c2                	ld	a5,48(sp)
   16a38:	664a                	ld	a2,144(sp)
   16a3a:	0015851b          	addiw	a0,a1,1
   16a3e:	00fdb023          	sd	a5,0(s11)
   16a42:	85aa                	mv	a1,a0
   16a44:	010d8893          	addi	a7,s11,16
   16a48:	2f034363          	blt	t1,a6,16d2e <_vfiprintf_r+0x766>
   16a4c:	010db423          	sd	a6,8(s11)
   16a50:	9832                	add	a6,a6,a2
   16a52:	e942                	sd	a6,144(sp)
   16a54:	c52a                	sw	a0,136(sp)
   16a56:	461d                	li	a2,7
   16a58:	8dc6                	mv	s11,a7
   16a5a:	00a65a63          	ble	a0,a2,16a6e <_vfiprintf_r+0x4a6>
   16a5e:	0110                	addi	a2,sp,128
   16a60:	85a6                	mv	a1,s1
   16a62:	854a                	mv	a0,s2
   16a64:	ac7ff0ef          	jal	ra,1652a <__sprint_r>
   16a68:	38051363          	bnez	a0,16dee <_vfiprintf_r+0x826>
   16a6c:	8dda                	mv	s11,s6
   16a6e:	07714603          	lbu	a2,119(sp)
   16a72:	ca1d                	beqz	a2,16aa8 <_vfiprintf_r+0x4e0>
   16a74:	07710593          	addi	a1,sp,119
   16a78:	00bdb023          	sd	a1,0(s11)
   16a7c:	4585                	li	a1,1
   16a7e:	462a                	lw	a2,136(sp)
   16a80:	00bdb423          	sd	a1,8(s11)
   16a84:	65ca                	ld	a1,144(sp)
   16a86:	0016051b          	addiw	a0,a2,1
   16a8a:	c52a                	sw	a0,136(sp)
   16a8c:	0585                	addi	a1,a1,1
   16a8e:	e92e                	sd	a1,144(sp)
   16a90:	461d                	li	a2,7
   16a92:	0dc1                	addi	s11,s11,16
   16a94:	00a65a63          	ble	a0,a2,16aa8 <_vfiprintf_r+0x4e0>
   16a98:	0110                	addi	a2,sp,128
   16a9a:	85a6                	mv	a1,s1
   16a9c:	854a                	mv	a0,s2
   16a9e:	a8dff0ef          	jal	ra,1652a <__sprint_r>
   16aa2:	34051663          	bnez	a0,16dee <_vfiprintf_r+0x826>
   16aa6:	8dda                	mv	s11,s6
   16aa8:	6786                	ld	a5,64(sp)
   16aaa:	cb95                	beqz	a5,16ade <_vfiprintf_r+0x516>
   16aac:	18ac                	addi	a1,sp,120
   16aae:	00bdb023          	sd	a1,0(s11)
   16ab2:	4589                	li	a1,2
   16ab4:	462a                	lw	a2,136(sp)
   16ab6:	00bdb423          	sd	a1,8(s11)
   16aba:	65ca                	ld	a1,144(sp)
   16abc:	0016051b          	addiw	a0,a2,1
   16ac0:	c52a                	sw	a0,136(sp)
   16ac2:	0589                	addi	a1,a1,2
   16ac4:	e92e                	sd	a1,144(sp)
   16ac6:	461d                	li	a2,7
   16ac8:	0dc1                	addi	s11,s11,16
   16aca:	00a65a63          	ble	a0,a2,16ade <_vfiprintf_r+0x516>
   16ace:	0110                	addi	a2,sp,128
   16ad0:	85a6                	mv	a1,s1
   16ad2:	854a                	mv	a0,s2
   16ad4:	a57ff0ef          	jal	ra,1652a <__sprint_r>
   16ad8:	30051b63          	bnez	a0,16dee <_vfiprintf_r+0x826>
   16adc:	8dda                	mv	s11,s6
   16ade:	67a6                	ld	a5,72(sp)
   16ae0:	08000613          	li	a2,128
   16ae4:	04c79563          	bne	a5,a2,16b2e <_vfiprintf_r+0x566>
   16ae8:	419a883b          	subw	a6,s5,s9
   16aec:	05005163          	blez	a6,16b2e <_vfiprintf_r+0x566>
   16af0:	4341                	li	t1,16
   16af2:	4e1d                	li	t3,7
   16af4:	45aa                	lw	a1,136(sp)
   16af6:	77a2                	ld	a5,40(sp)
   16af8:	664a                	ld	a2,144(sp)
   16afa:	0015851b          	addiw	a0,a1,1
   16afe:	00fdb023          	sd	a5,0(s11)
   16b02:	85aa                	mv	a1,a0
   16b04:	010d8893          	addi	a7,s11,16
   16b08:	25034a63          	blt	t1,a6,16d5c <_vfiprintf_r+0x794>
   16b0c:	010db423          	sd	a6,8(s11)
   16b10:	9832                	add	a6,a6,a2
   16b12:	e942                	sd	a6,144(sp)
   16b14:	c52a                	sw	a0,136(sp)
   16b16:	461d                	li	a2,7
   16b18:	8dc6                	mv	s11,a7
   16b1a:	00a65a63          	ble	a0,a2,16b2e <_vfiprintf_r+0x566>
   16b1e:	0110                	addi	a2,sp,128
   16b20:	85a6                	mv	a1,s1
   16b22:	854a                	mv	a0,s2
   16b24:	a07ff0ef          	jal	ra,1652a <__sprint_r>
   16b28:	2c051363          	bnez	a0,16dee <_vfiprintf_r+0x826>
   16b2c:	8dda                	mv	s11,s6
   16b2e:	408a0a3b          	subw	s4,s4,s0
   16b32:	05405163          	blez	s4,16b74 <_vfiprintf_r+0x5ac>
   16b36:	48c1                	li	a7,16
   16b38:	431d                	li	t1,7
   16b3a:	45aa                	lw	a1,136(sp)
   16b3c:	77a2                	ld	a5,40(sp)
   16b3e:	664a                	ld	a2,144(sp)
   16b40:	0015851b          	addiw	a0,a1,1
   16b44:	00fdb023          	sd	a5,0(s11)
   16b48:	85aa                	mv	a1,a0
   16b4a:	010d8813          	addi	a6,s11,16
   16b4e:	2348ce63          	blt	a7,s4,16d8a <_vfiprintf_r+0x7c2>
   16b52:	014db423          	sd	s4,8(s11)
   16b56:	9a32                	add	s4,s4,a2
   16b58:	e952                	sd	s4,144(sp)
   16b5a:	c52a                	sw	a0,136(sp)
   16b5c:	461d                	li	a2,7
   16b5e:	8dc2                	mv	s11,a6
   16b60:	00a65a63          	ble	a0,a2,16b74 <_vfiprintf_r+0x5ac>
   16b64:	0110                	addi	a2,sp,128
   16b66:	85a6                	mv	a1,s1
   16b68:	854a                	mv	a0,s2
   16b6a:	9c1ff0ef          	jal	ra,1652a <__sprint_r>
   16b6e:	28051063          	bnez	a0,16dee <_vfiprintf_r+0x826>
   16b72:	8dda                	mv	s11,s6
   16b74:	66ca                	ld	a3,144(sp)
   16b76:	008db423          	sd	s0,8(s11)
   16b7a:	018db023          	sd	s8,0(s11)
   16b7e:	9436                	add	s0,s0,a3
   16b80:	46aa                	lw	a3,136(sp)
   16b82:	e922                	sd	s0,144(sp)
   16b84:	010d8713          	addi	a4,s11,16
   16b88:	0016861b          	addiw	a2,a3,1
   16b8c:	c532                	sw	a2,136(sp)
   16b8e:	469d                	li	a3,7
   16b90:	00c6da63          	ble	a2,a3,16ba4 <_vfiprintf_r+0x5dc>
   16b94:	0110                	addi	a2,sp,128
   16b96:	85a6                	mv	a1,s1
   16b98:	854a                	mv	a0,s2
   16b9a:	991ff0ef          	jal	ra,1652a <__sprint_r>
   16b9e:	24051863          	bnez	a0,16dee <_vfiprintf_r+0x826>
   16ba2:	875a                	mv	a4,s6
   16ba4:	004d7793          	andi	a5,s10,4
   16ba8:	20079663          	bnez	a5,16db4 <_vfiprintf_r+0x7ec>
   16bac:	87d6                	mv	a5,s5
   16bae:	019ad363          	ble	s9,s5,16bb4 <_vfiprintf_r+0x5ec>
   16bb2:	87e6                	mv	a5,s9
   16bb4:	01778bbb          	addw	s7,a5,s7
   16bb8:	67ca                	ld	a5,144(sp)
   16bba:	cb81                	beqz	a5,16bca <_vfiprintf_r+0x602>
   16bbc:	0110                	addi	a2,sp,128
   16bbe:	85a6                	mv	a1,s1
   16bc0:	854a                	mv	a0,s2
   16bc2:	969ff0ef          	jal	ra,1652a <__sprint_r>
   16bc6:	22051463          	bnez	a0,16dee <_vfiprintf_r+0x826>
   16bca:	c502                	sw	zero,136(sp)
   16bcc:	6a22                	ld	s4,8(sp)
   16bce:	8dda                	mv	s11,s6
   16bd0:	bcc9                	j	166a2 <_vfiprintf_r+0xda>
   16bd2:	8562                	mv	a0,s8
   16bd4:	b9cfe0ef          	jal	ra,14f70 <strlen>
   16bd8:	0005041b          	sext.w	s0,a0
   16bdc:	4a01                	li	s4,0
   16bde:	bd39                	j	169fc <_vfiprintf_r+0x434>
   16be0:	010d6d13          	ori	s10,s10,16
   16be4:	008a0793          	addi	a5,s4,8
   16be8:	e43e                	sd	a5,8(sp)
   16bea:	020d7693          	andi	a3,s10,32
   16bee:	c689                	beqz	a3,16bf8 <_vfiprintf_r+0x630>
   16bf0:	000a3a03          	ld	s4,0(s4)
   16bf4:	4605                	li	a2,1
   16bf6:	bb35                	j	16932 <_vfiprintf_r+0x36a>
   16bf8:	010d7693          	andi	a3,s10,16
   16bfc:	faf5                	bnez	a3,16bf0 <_vfiprintf_r+0x628>
   16bfe:	040d7693          	andi	a3,s10,64
   16c02:	000a2a03          	lw	s4,0(s4)
   16c06:	c689                	beqz	a3,16c10 <_vfiprintf_r+0x648>
   16c08:	1a42                	slli	s4,s4,0x30
   16c0a:	030a5a13          	srli	s4,s4,0x30
   16c0e:	b7dd                	j	16bf4 <_vfiprintf_r+0x62c>
   16c10:	200d7693          	andi	a3,s10,512
   16c14:	c681                	beqz	a3,16c1c <_vfiprintf_r+0x654>
   16c16:	0ffa7a13          	andi	s4,s4,255
   16c1a:	bfe9                	j	16bf4 <_vfiprintf_r+0x62c>
   16c1c:	1a02                	slli	s4,s4,0x20
   16c1e:	020a5a13          	srli	s4,s4,0x20
   16c22:	bfc9                	j	16bf4 <_vfiprintf_r+0x62c>
   16c24:	0001a637          	lui	a2,0x1a
   16c28:	dc060793          	addi	a5,a2,-576 # 19dc0 <zeroes.4441+0x60>
   16c2c:	b629                	j	16736 <_vfiprintf_r+0x16e>
   16c2e:	010d7613          	andi	a2,s10,16
   16c32:	b0061ae3          	bnez	a2,16746 <_vfiprintf_r+0x17e>
   16c36:	040d7613          	andi	a2,s10,64
   16c3a:	000a2a03          	lw	s4,0(s4)
   16c3e:	c609                	beqz	a2,16c48 <_vfiprintf_r+0x680>
   16c40:	1a42                	slli	s4,s4,0x30
   16c42:	030a5a13          	srli	s4,s4,0x30
   16c46:	b611                	j	1674a <_vfiprintf_r+0x182>
   16c48:	200d7613          	andi	a2,s10,512
   16c4c:	c601                	beqz	a2,16c54 <_vfiprintf_r+0x68c>
   16c4e:	0ffa7a13          	andi	s4,s4,255
   16c52:	bce5                	j	1674a <_vfiprintf_r+0x182>
   16c54:	1a02                	slli	s4,s4,0x20
   16c56:	020a5a13          	srli	s4,s4,0x20
   16c5a:	bcc5                	j	1674a <_vfiprintf_r+0x182>
   16c5c:	85ea                	mv	a1,s10
   16c5e:	4605                	li	a2,1
   16c60:	f7fd7d13          	andi	s10,s10,-129
   16c64:	cc0a1de3          	bnez	s4,1693e <_vfiprintf_r+0x376>
   16c68:	cc59                	beqz	s0,16d06 <_vfiprintf_r+0x73e>
   16c6a:	4685                	li	a3,1
   16c6c:	ccd61ce3          	bne	a2,a3,16944 <_vfiprintf_r+0x37c>
   16c70:	b181                	j	168b0 <_vfiprintf_r+0x2e8>
   16c72:	8662                	mv	a2,s8
   16c74:	b9e1                	j	1694c <_vfiprintf_r+0x384>
   16c76:	400d7c93          	andi	s9,s10,1024
   16c7a:	4601                	li	a2,0
   16c7c:	19ec                	addi	a1,sp,252
   16c7e:	4829                	li	a6,10
   16c80:	2c81                	sext.w	s9,s9
   16c82:	0ff00893          	li	a7,255
   16c86:	4325                	li	t1,9
   16c88:	030a7533          	remu	a0,s4,a6
   16c8c:	fff58c13          	addi	s8,a1,-1
   16c90:	2605                	addiw	a2,a2,1
   16c92:	0305051b          	addiw	a0,a0,48
   16c96:	fea58fa3          	sb	a0,-1(a1)
   16c9a:	040c8063          	beqz	s9,16cda <_vfiprintf_r+0x712>
   16c9e:	67c2                	ld	a5,16(sp)
   16ca0:	0007c583          	lbu	a1,0(a5)
   16ca4:	02c59b63          	bne	a1,a2,16cda <_vfiprintf_r+0x712>
   16ca8:	03158963          	beq	a1,a7,16cda <_vfiprintf_r+0x712>
   16cac:	03437763          	bleu	s4,t1,16cda <_vfiprintf_r+0x712>
   16cb0:	67e2                	ld	a5,24(sp)
   16cb2:	75e2                	ld	a1,56(sp)
   16cb4:	ec9a                	sd	t1,88(sp)
   16cb6:	40fc0c33          	sub	s8,s8,a5
   16cba:	863e                	mv	a2,a5
   16cbc:	8562                	mv	a0,s8
   16cbe:	e4c6                	sd	a7,72(sp)
   16cc0:	e0c2                	sd	a6,64(sp)
   16cc2:	ac0fe0ef          	jal	ra,14f82 <strncpy>
   16cc6:	67c2                	ld	a5,16(sp)
   16cc8:	4601                	li	a2,0
   16cca:	6806                	ld	a6,64(sp)
   16ccc:	0017c583          	lbu	a1,1(a5)
   16cd0:	68a6                	ld	a7,72(sp)
   16cd2:	6366                	ld	t1,88(sp)
   16cd4:	c199                	beqz	a1,16cda <_vfiprintf_r+0x712>
   16cd6:	0785                	addi	a5,a5,1
   16cd8:	e83e                	sd	a5,16(sp)
   16cda:	030a5a33          	divu	s4,s4,a6
   16cde:	c80a0ee3          	beqz	s4,1697a <_vfiprintf_r+0x3b2>
   16ce2:	85e2                	mv	a1,s8
   16ce4:	b755                	j	16c88 <_vfiprintf_r+0x6c0>
   16ce6:	0fc10c13          	addi	s8,sp,252
   16cea:	7782                	ld	a5,32(sp)
   16cec:	00fa7613          	andi	a2,s4,15
   16cf0:	1c7d                	addi	s8,s8,-1
   16cf2:	963e                	add	a2,a2,a5
   16cf4:	00064603          	lbu	a2,0(a2)
   16cf8:	004a5a13          	srli	s4,s4,0x4
   16cfc:	00cc0023          	sb	a2,0(s8)
   16d00:	fe0a15e3          	bnez	s4,16cea <_vfiprintf_r+0x722>
   16d04:	b99d                	j	1697a <_vfiprintf_r+0x3b2>
   16d06:	0fc10c13          	addi	s8,sp,252
   16d0a:	c60618e3          	bnez	a2,1697a <_vfiprintf_r+0x3b2>
   16d0e:	8985                	andi	a1,a1,1
   16d10:	c60585e3          	beqz	a1,1697a <_vfiprintf_r+0x3b2>
   16d14:	03000693          	li	a3,48
   16d18:	0ed10da3          	sb	a3,251(sp)
   16d1c:	be71                	j	168b8 <_vfiprintf_r+0x2f0>
   16d1e:	10068263          	beqz	a3,16e22 <_vfiprintf_r+0x85a>
   16d22:	08d10c23          	sb	a3,152(sp)
   16d26:	06010ba3          	sb	zero,119(sp)
   16d2a:	e452                	sd	s4,8(sp)
   16d2c:	b6a9                	j	16876 <_vfiprintf_r+0x2ae>
   16d2e:	0641                	addi	a2,a2,16
   16d30:	006db423          	sd	t1,8(s11)
   16d34:	e932                	sd	a2,144(sp)
   16d36:	c52e                	sw	a1,136(sp)
   16d38:	00ae5f63          	ble	a0,t3,16d56 <_vfiprintf_r+0x78e>
   16d3c:	0110                	addi	a2,sp,128
   16d3e:	85a6                	mv	a1,s1
   16d40:	854a                	mv	a0,s2
   16d42:	f4f2                	sd	t3,104(sp)
   16d44:	f09a                	sd	t1,96(sp)
   16d46:	ecc2                	sd	a6,88(sp)
   16d48:	fe2ff0ef          	jal	ra,1652a <__sprint_r>
   16d4c:	e14d                	bnez	a0,16dee <_vfiprintf_r+0x826>
   16d4e:	7e26                	ld	t3,104(sp)
   16d50:	7306                	ld	t1,96(sp)
   16d52:	6866                	ld	a6,88(sp)
   16d54:	88da                	mv	a7,s6
   16d56:	3841                	addiw	a6,a6,-16
   16d58:	8dc6                	mv	s11,a7
   16d5a:	b9e9                	j	16a34 <_vfiprintf_r+0x46c>
   16d5c:	0641                	addi	a2,a2,16
   16d5e:	006db423          	sd	t1,8(s11)
   16d62:	e932                	sd	a2,144(sp)
   16d64:	c52e                	sw	a1,136(sp)
   16d66:	00ae5f63          	ble	a0,t3,16d84 <_vfiprintf_r+0x7bc>
   16d6a:	0110                	addi	a2,sp,128
   16d6c:	85a6                	mv	a1,s1
   16d6e:	854a                	mv	a0,s2
   16d70:	ecf2                	sd	t3,88(sp)
   16d72:	e49a                	sd	t1,72(sp)
   16d74:	e0c2                	sd	a6,64(sp)
   16d76:	fb4ff0ef          	jal	ra,1652a <__sprint_r>
   16d7a:	e935                	bnez	a0,16dee <_vfiprintf_r+0x826>
   16d7c:	6e66                	ld	t3,88(sp)
   16d7e:	6326                	ld	t1,72(sp)
   16d80:	6806                	ld	a6,64(sp)
   16d82:	88da                	mv	a7,s6
   16d84:	3841                	addiw	a6,a6,-16
   16d86:	8dc6                	mv	s11,a7
   16d88:	b3b5                	j	16af4 <_vfiprintf_r+0x52c>
   16d8a:	0641                	addi	a2,a2,16
   16d8c:	011db423          	sd	a7,8(s11)
   16d90:	e932                	sd	a2,144(sp)
   16d92:	c52e                	sw	a1,136(sp)
   16d94:	00a35d63          	ble	a0,t1,16dae <_vfiprintf_r+0x7e6>
   16d98:	0110                	addi	a2,sp,128
   16d9a:	85a6                	mv	a1,s1
   16d9c:	854a                	mv	a0,s2
   16d9e:	e49a                	sd	t1,72(sp)
   16da0:	e0c6                	sd	a7,64(sp)
   16da2:	f88ff0ef          	jal	ra,1652a <__sprint_r>
   16da6:	e521                	bnez	a0,16dee <_vfiprintf_r+0x826>
   16da8:	6326                	ld	t1,72(sp)
   16daa:	6886                	ld	a7,64(sp)
   16dac:	885a                	mv	a6,s6
   16dae:	3a41                	addiw	s4,s4,-16
   16db0:	8dc2                	mv	s11,a6
   16db2:	b361                	j	16b3a <_vfiprintf_r+0x572>
   16db4:	419a843b          	subw	s0,s5,s9
   16db8:	de805ae3          	blez	s0,16bac <_vfiprintf_r+0x5e4>
   16dbc:	4a41                	li	s4,16
   16dbe:	4d1d                	li	s10,7
   16dc0:	46aa                	lw	a3,136(sp)
   16dc2:	67ca                	ld	a5,144(sp)
   16dc4:	0016861b          	addiw	a2,a3,1
   16dc8:	86b2                	mv	a3,a2
   16dca:	028a4963          	blt	s4,s0,16dfc <_vfiprintf_r+0x834>
   16dce:	76c2                	ld	a3,48(sp)
   16dd0:	e700                	sd	s0,8(a4)
   16dd2:	943e                	add	s0,s0,a5
   16dd4:	e314                	sd	a3,0(a4)
   16dd6:	e922                	sd	s0,144(sp)
   16dd8:	c532                	sw	a2,136(sp)
   16dda:	479d                	li	a5,7
   16ddc:	dcc7d8e3          	ble	a2,a5,16bac <_vfiprintf_r+0x5e4>
   16de0:	0110                	addi	a2,sp,128
   16de2:	85a6                	mv	a1,s1
   16de4:	854a                	mv	a0,s2
   16de6:	f44ff0ef          	jal	ra,1652a <__sprint_r>
   16dea:	dc0501e3          	beqz	a0,16bac <_vfiprintf_r+0x5e4>
   16dee:	0104d783          	lhu	a5,16(s1)
   16df2:	0407f793          	andi	a5,a5,64
   16df6:	840788e3          	beqz	a5,16646 <_vfiprintf_r+0x7e>
   16dfa:	b89d                	j	16670 <_vfiprintf_r+0xa8>
   16dfc:	75c2                	ld	a1,48(sp)
   16dfe:	07c1                	addi	a5,a5,16
   16e00:	01473423          	sd	s4,8(a4)
   16e04:	e30c                	sd	a1,0(a4)
   16e06:	e93e                	sd	a5,144(sp)
   16e08:	c536                	sw	a3,136(sp)
   16e0a:	0741                	addi	a4,a4,16
   16e0c:	00cd5963          	ble	a2,s10,16e1e <_vfiprintf_r+0x856>
   16e10:	0110                	addi	a2,sp,128
   16e12:	85a6                	mv	a1,s1
   16e14:	854a                	mv	a0,s2
   16e16:	f14ff0ef          	jal	ra,1652a <__sprint_r>
   16e1a:	f971                	bnez	a0,16dee <_vfiprintf_r+0x826>
   16e1c:	875a                	mv	a4,s6
   16e1e:	3441                	addiw	s0,s0,-16
   16e20:	b745                	j	16dc0 <_vfiprintf_r+0x7f8>
   16e22:	67ca                	ld	a5,144(sp)
   16e24:	d7e9                	beqz	a5,16dee <_vfiprintf_r+0x826>
   16e26:	0110                	addi	a2,sp,128
   16e28:	85a6                	mv	a1,s1
   16e2a:	854a                	mv	a0,s2
   16e2c:	efeff0ef          	jal	ra,1652a <__sprint_r>
   16e30:	bf7d                	j	16dee <_vfiprintf_r+0x826>

0000000000016e32 <vfiprintf>:
   16e32:	86b2                	mv	a3,a2
   16e34:	862e                	mv	a2,a1
   16e36:	85aa                	mv	a1,a0
   16e38:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   16e3c:	f8cff06f          	j	165c8 <_vfiprintf_r>

0000000000016e40 <__sbprintf>:
   16e40:	0105d783          	lhu	a5,16(a1)
   16e44:	b3010113          	addi	sp,sp,-1232
   16e48:	4c813023          	sd	s0,1216(sp)
   16e4c:	9bf5                	andi	a5,a5,-3
   16e4e:	00f11823          	sh	a5,16(sp)
   16e52:	0ac5a783          	lw	a5,172(a1)
   16e56:	842e                	mv	s0,a1
   16e58:	4a913c23          	sd	s1,1208(sp)
   16e5c:	d73e                	sw	a5,172(sp)
   16e5e:	0125d783          	lhu	a5,18(a1)
   16e62:	4b213823          	sd	s2,1200(sp)
   16e66:	4c113423          	sd	ra,1224(sp)
   16e6a:	00f11923          	sh	a5,18(sp)
   16e6e:	799c                	ld	a5,48(a1)
   16e70:	892a                	mv	s2,a0
   16e72:	d402                	sw	zero,40(sp)
   16e74:	f83e                	sd	a5,48(sp)
   16e76:	61bc                	ld	a5,64(a1)
   16e78:	858a                	mv	a1,sp
   16e7a:	e0be                	sd	a5,64(sp)
   16e7c:	191c                	addi	a5,sp,176
   16e7e:	e03e                	sd	a5,0(sp)
   16e80:	ec3e                	sd	a5,24(sp)
   16e82:	40000793          	li	a5,1024
   16e86:	c63e                	sw	a5,12(sp)
   16e88:	d03e                	sw	a5,32(sp)
   16e8a:	f3eff0ef          	jal	ra,165c8 <_vfiprintf_r>
   16e8e:	84aa                	mv	s1,a0
   16e90:	00054863          	bltz	a0,16ea0 <__sbprintf+0x60>
   16e94:	858a                	mv	a1,sp
   16e96:	854a                	mv	a0,s2
   16e98:	ca4fb0ef          	jal	ra,1233c <_fflush_r>
   16e9c:	c111                	beqz	a0,16ea0 <__sbprintf+0x60>
   16e9e:	54fd                	li	s1,-1
   16ea0:	01015783          	lhu	a5,16(sp)
   16ea4:	0407f793          	andi	a5,a5,64
   16ea8:	c799                	beqz	a5,16eb6 <__sbprintf+0x76>
   16eaa:	01045783          	lhu	a5,16(s0)
   16eae:	0407e793          	ori	a5,a5,64
   16eb2:	00f41823          	sh	a5,16(s0)
   16eb6:	4c813083          	ld	ra,1224(sp)
   16eba:	4c013403          	ld	s0,1216(sp)
   16ebe:	8526                	mv	a0,s1
   16ec0:	4b013903          	ld	s2,1200(sp)
   16ec4:	4b813483          	ld	s1,1208(sp)
   16ec8:	4d010113          	addi	sp,sp,1232
   16ecc:	8082                	ret

0000000000016ece <_wctomb_r>:
   16ece:	8301b783          	ld	a5,-2000(gp) # 1ca18 <_impure_ptr>
   16ed2:	67bc                	ld	a5,72(a5)
   16ed4:	e781                	bnez	a5,16edc <_wctomb_r+0xe>
   16ed6:	67f5                	lui	a5,0x1d
   16ed8:	84078793          	addi	a5,a5,-1984 # 1c840 <__global_locale>
   16edc:	0e07b303          	ld	t1,224(a5)
   16ee0:	8302                	jr	t1

0000000000016ee2 <__ascii_wctomb>:
   16ee2:	cd91                	beqz	a1,16efe <__ascii_wctomb+0x1c>
   16ee4:	0ff00793          	li	a5,255
   16ee8:	00c7f763          	bleu	a2,a5,16ef6 <__ascii_wctomb+0x14>
   16eec:	08a00793          	li	a5,138
   16ef0:	c11c                	sw	a5,0(a0)
   16ef2:	557d                	li	a0,-1
   16ef4:	8082                	ret
   16ef6:	00c58023          	sb	a2,0(a1)
   16efa:	4505                	li	a0,1
   16efc:	8082                	ret
   16efe:	4501                	li	a0,0
   16f00:	8082                	ret

0000000000016f02 <_write_r>:
   16f02:	1101                	addi	sp,sp,-32
   16f04:	e822                	sd	s0,16(sp)
   16f06:	e426                	sd	s1,8(sp)
   16f08:	84aa                	mv	s1,a0
   16f0a:	852e                	mv	a0,a1
   16f0c:	85b2                	mv	a1,a2
   16f0e:	8636                	mv	a2,a3
   16f10:	ec06                	sd	ra,24(sp)
   16f12:	8e01a023          	sw	zero,-1824(gp) # 1cac8 <errno>
   16f16:	710010ef          	jal	ra,18626 <_write>
   16f1a:	57fd                	li	a5,-1
   16f1c:	00f51663          	bne	a0,a5,16f28 <_write_r+0x26>
   16f20:	8e01a783          	lw	a5,-1824(gp) # 1cac8 <errno>
   16f24:	c391                	beqz	a5,16f28 <_write_r+0x26>
   16f26:	c09c                	sw	a5,0(s1)
   16f28:	60e2                	ld	ra,24(sp)
   16f2a:	6442                	ld	s0,16(sp)
   16f2c:	64a2                	ld	s1,8(sp)
   16f2e:	6105                	addi	sp,sp,32
   16f30:	8082                	ret

0000000000016f32 <_calloc_r>:
   16f32:	02c585b3          	mul	a1,a1,a2
   16f36:	1141                	addi	sp,sp,-16
   16f38:	e022                	sd	s0,0(sp)
   16f3a:	e406                	sd	ra,8(sp)
   16f3c:	c5cf90ef          	jal	ra,10398 <_malloc_r>
   16f40:	842a                	mv	s0,a0
   16f42:	cd15                	beqz	a0,16f7e <_calloc_r+0x4c>
   16f44:	ff853603          	ld	a2,-8(a0)
   16f48:	04800713          	li	a4,72
   16f4c:	9a71                	andi	a2,a2,-4
   16f4e:	1661                	addi	a2,a2,-8
   16f50:	04c76b63          	bltu	a4,a2,16fa6 <_calloc_r+0x74>
   16f54:	02700693          	li	a3,39
   16f58:	87aa                	mv	a5,a0
   16f5a:	00c6fc63          	bleu	a2,a3,16f72 <_calloc_r+0x40>
   16f5e:	00053023          	sd	zero,0(a0)
   16f62:	00053423          	sd	zero,8(a0)
   16f66:	03700793          	li	a5,55
   16f6a:	00c7ef63          	bltu	a5,a2,16f88 <_calloc_r+0x56>
   16f6e:	01050793          	addi	a5,a0,16
   16f72:	0007b023          	sd	zero,0(a5)
   16f76:	0007b423          	sd	zero,8(a5)
   16f7a:	0007b823          	sd	zero,16(a5)
   16f7e:	8522                	mv	a0,s0
   16f80:	60a2                	ld	ra,8(sp)
   16f82:	6402                	ld	s0,0(sp)
   16f84:	0141                	addi	sp,sp,16
   16f86:	8082                	ret
   16f88:	00053823          	sd	zero,16(a0)
   16f8c:	00053c23          	sd	zero,24(a0)
   16f90:	02050793          	addi	a5,a0,32
   16f94:	fce61fe3          	bne	a2,a4,16f72 <_calloc_r+0x40>
   16f98:	02053023          	sd	zero,32(a0)
   16f9c:	03050793          	addi	a5,a0,48
   16fa0:	02053423          	sd	zero,40(a0)
   16fa4:	b7f9                	j	16f72 <_calloc_r+0x40>
   16fa6:	4581                	li	a1,0
   16fa8:	8d1f90ef          	jal	ra,10878 <memset>
   16fac:	bfc9                	j	16f7e <_calloc_r+0x4c>

0000000000016fae <_close_r>:
   16fae:	1101                	addi	sp,sp,-32
   16fb0:	e822                	sd	s0,16(sp)
   16fb2:	e426                	sd	s1,8(sp)
   16fb4:	84aa                	mv	s1,a0
   16fb6:	852e                	mv	a0,a1
   16fb8:	ec06                	sd	ra,24(sp)
   16fba:	8e01a023          	sw	zero,-1824(gp) # 1cac8 <errno>
   16fbe:	4c0010ef          	jal	ra,1847e <_close>
   16fc2:	57fd                	li	a5,-1
   16fc4:	00f51663          	bne	a0,a5,16fd0 <_close_r+0x22>
   16fc8:	8e01a783          	lw	a5,-1824(gp) # 1cac8 <errno>
   16fcc:	c391                	beqz	a5,16fd0 <_close_r+0x22>
   16fce:	c09c                	sw	a5,0(s1)
   16fd0:	60e2                	ld	ra,24(sp)
   16fd2:	6442                	ld	s0,16(sp)
   16fd4:	64a2                	ld	s1,8(sp)
   16fd6:	6105                	addi	sp,sp,32
   16fd8:	8082                	ret

0000000000016fda <_fclose_r>:
   16fda:	1101                	addi	sp,sp,-32
   16fdc:	ec06                	sd	ra,24(sp)
   16fde:	e822                	sd	s0,16(sp)
   16fe0:	e426                	sd	s1,8(sp)
   16fe2:	e04a                	sd	s2,0(sp)
   16fe4:	e989                	bnez	a1,16ff6 <_fclose_r+0x1c>
   16fe6:	4901                	li	s2,0
   16fe8:	60e2                	ld	ra,24(sp)
   16fea:	6442                	ld	s0,16(sp)
   16fec:	854a                	mv	a0,s2
   16fee:	64a2                	ld	s1,8(sp)
   16ff0:	6902                	ld	s2,0(sp)
   16ff2:	6105                	addi	sp,sp,32
   16ff4:	8082                	ret
   16ff6:	84aa                	mv	s1,a0
   16ff8:	842e                	mv	s0,a1
   16ffa:	c509                	beqz	a0,17004 <_fclose_r+0x2a>
   16ffc:	493c                	lw	a5,80(a0)
   16ffe:	e399                	bnez	a5,17004 <_fclose_r+0x2a>
   17000:	c54fb0ef          	jal	ra,12454 <__sinit>
   17004:	01041783          	lh	a5,16(s0)
   17008:	dff9                	beqz	a5,16fe6 <_fclose_r+0xc>
   1700a:	85a2                	mv	a1,s0
   1700c:	8526                	mv	a0,s1
   1700e:	9ccfb0ef          	jal	ra,121da <__sflush_r>
   17012:	683c                	ld	a5,80(s0)
   17014:	892a                	mv	s2,a0
   17016:	c799                	beqz	a5,17024 <_fclose_r+0x4a>
   17018:	780c                	ld	a1,48(s0)
   1701a:	8526                	mv	a0,s1
   1701c:	9782                	jalr	a5
   1701e:	00055363          	bgez	a0,17024 <_fclose_r+0x4a>
   17022:	597d                	li	s2,-1
   17024:	01045783          	lhu	a5,16(s0)
   17028:	0807f793          	andi	a5,a5,128
   1702c:	c789                	beqz	a5,17036 <_fclose_r+0x5c>
   1702e:	6c0c                	ld	a1,24(s0)
   17030:	8526                	mv	a0,s1
   17032:	df2fb0ef          	jal	ra,12624 <_free_r>
   17036:	6c2c                	ld	a1,88(s0)
   17038:	c991                	beqz	a1,1704c <_fclose_r+0x72>
   1703a:	07440793          	addi	a5,s0,116
   1703e:	00f58563          	beq	a1,a5,17048 <_fclose_r+0x6e>
   17042:	8526                	mv	a0,s1
   17044:	de0fb0ef          	jal	ra,12624 <_free_r>
   17048:	04043c23          	sd	zero,88(s0)
   1704c:	7c2c                	ld	a1,120(s0)
   1704e:	c591                	beqz	a1,1705a <_fclose_r+0x80>
   17050:	8526                	mv	a0,s1
   17052:	dd2fb0ef          	jal	ra,12624 <_free_r>
   17056:	06043c23          	sd	zero,120(s0)
   1705a:	ce8fb0ef          	jal	ra,12542 <__sfp_lock_acquire>
   1705e:	00041823          	sh	zero,16(s0)
   17062:	ce2fb0ef          	jal	ra,12544 <__sfp_lock_release>
   17066:	b749                	j	16fe8 <_fclose_r+0xe>

0000000000017068 <fclose>:
   17068:	85aa                	mv	a1,a0
   1706a:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   1706e:	f6dff06f          	j	16fda <_fclose_r>

0000000000017072 <__fputwc>:
   17072:	715d                	addi	sp,sp,-80
   17074:	e0a2                	sd	s0,64(sp)
   17076:	fc26                	sd	s1,56(sp)
   17078:	f052                	sd	s4,32(sp)
   1707a:	e486                	sd	ra,72(sp)
   1707c:	f84a                	sd	s2,48(sp)
   1707e:	f44e                	sd	s3,40(sp)
   17080:	ec56                	sd	s5,24(sp)
   17082:	e85a                	sd	s6,16(sp)
   17084:	8a2a                	mv	s4,a0
   17086:	84ae                	mv	s1,a1
   17088:	8432                	mv	s0,a2
   1708a:	fa1fc0ef          	jal	ra,1402a <__locale_mb_cur_max>
   1708e:	4785                	li	a5,1
   17090:	02f51c63          	bne	a0,a5,170c8 <__fputwc+0x56>
   17094:	fff4879b          	addiw	a5,s1,-1
   17098:	0fe00713          	li	a4,254
   1709c:	02f76663          	bltu	a4,a5,170c8 <__fputwc+0x56>
   170a0:	00910423          	sb	s1,8(sp)
   170a4:	4985                	li	s3,1
   170a6:	4901                	li	s2,0
   170a8:	5afd                	li	s5,-1
   170aa:	4b29                	li	s6,10
   170ac:	05391163          	bne	s2,s3,170ee <__fputwc+0x7c>
   170b0:	0004851b          	sext.w	a0,s1
   170b4:	60a6                	ld	ra,72(sp)
   170b6:	6406                	ld	s0,64(sp)
   170b8:	74e2                	ld	s1,56(sp)
   170ba:	7942                	ld	s2,48(sp)
   170bc:	79a2                	ld	s3,40(sp)
   170be:	7a02                	ld	s4,32(sp)
   170c0:	6ae2                	ld	s5,24(sp)
   170c2:	6b42                	ld	s6,16(sp)
   170c4:	6161                	addi	sp,sp,80
   170c6:	8082                	ret
   170c8:	0a440693          	addi	a3,s0,164
   170cc:	8626                	mv	a2,s1
   170ce:	002c                	addi	a1,sp,8
   170d0:	8552                	mv	a0,s4
   170d2:	34e010ef          	jal	ra,18420 <_wcrtomb_r>
   170d6:	57fd                	li	a5,-1
   170d8:	89aa                	mv	s3,a0
   170da:	fcf516e3          	bne	a0,a5,170a6 <__fputwc+0x34>
   170de:	01045783          	lhu	a5,16(s0)
   170e2:	0407e793          	ori	a5,a5,64
   170e6:	00f41823          	sh	a5,16(s0)
   170ea:	557d                	li	a0,-1
   170ec:	b7e1                	j	170b4 <__fputwc+0x42>
   170ee:	003c                	addi	a5,sp,8
   170f0:	97ca                	add	a5,a5,s2
   170f2:	0007c583          	lbu	a1,0(a5)
   170f6:	445c                	lw	a5,12(s0)
   170f8:	fff7871b          	addiw	a4,a5,-1
   170fc:	c458                	sw	a4,12(s0)
   170fe:	00075763          	bgez	a4,1710c <__fputwc+0x9a>
   17102:	541c                	lw	a5,40(s0)
   17104:	00f74c63          	blt	a4,a5,1711c <__fputwc+0xaa>
   17108:	01658a63          	beq	a1,s6,1711c <__fputwc+0xaa>
   1710c:	601c                	ld	a5,0(s0)
   1710e:	00178713          	addi	a4,a5,1
   17112:	e018                	sd	a4,0(s0)
   17114:	00b78023          	sb	a1,0(a5)
   17118:	0905                	addi	s2,s2,1
   1711a:	bf49                	j	170ac <__fputwc+0x3a>
   1711c:	8622                	mv	a2,s0
   1711e:	8552                	mv	a0,s4
   17120:	238010ef          	jal	ra,18358 <__swbuf_r>
   17124:	ff551ae3          	bne	a0,s5,17118 <__fputwc+0xa6>
   17128:	b7c9                	j	170ea <__fputwc+0x78>

000000000001712a <_fputwc_r>:
   1712a:	01061783          	lh	a5,16(a2)
   1712e:	03279713          	slli	a4,a5,0x32
   17132:	00074c63          	bltz	a4,1714a <_fputwc_r+0x20>
   17136:	0ac62703          	lw	a4,172(a2)
   1713a:	6689                	lui	a3,0x2
   1713c:	8fd5                	or	a5,a5,a3
   1713e:	00f61823          	sh	a5,16(a2)
   17142:	6789                	lui	a5,0x2
   17144:	8fd9                	or	a5,a5,a4
   17146:	0af62623          	sw	a5,172(a2)
   1714a:	f29ff06f          	j	17072 <__fputwc>

000000000001714e <fputwc>:
   1714e:	7179                	addi	sp,sp,-48
   17150:	f022                	sd	s0,32(sp)
   17152:	8301b403          	ld	s0,-2000(gp) # 1ca18 <_impure_ptr>
   17156:	ec26                	sd	s1,24(sp)
   17158:	f406                	sd	ra,40(sp)
   1715a:	84aa                	mv	s1,a0
   1715c:	862e                	mv	a2,a1
   1715e:	c801                	beqz	s0,1716e <fputwc+0x20>
   17160:	483c                	lw	a5,80(s0)
   17162:	e791                	bnez	a5,1716e <fputwc+0x20>
   17164:	8522                	mv	a0,s0
   17166:	e42e                	sd	a1,8(sp)
   17168:	aecfb0ef          	jal	ra,12454 <__sinit>
   1716c:	6622                	ld	a2,8(sp)
   1716e:	8522                	mv	a0,s0
   17170:	7402                	ld	s0,32(sp)
   17172:	70a2                	ld	ra,40(sp)
   17174:	85a6                	mv	a1,s1
   17176:	64e2                	ld	s1,24(sp)
   17178:	6145                	addi	sp,sp,48
   1717a:	fb1ff06f          	j	1712a <_fputwc_r>

000000000001717e <_fstat_r>:
   1717e:	1101                	addi	sp,sp,-32
   17180:	e822                	sd	s0,16(sp)
   17182:	e426                	sd	s1,8(sp)
   17184:	84aa                	mv	s1,a0
   17186:	852e                	mv	a0,a1
   17188:	85b2                	mv	a1,a2
   1718a:	ec06                	sd	ra,24(sp)
   1718c:	8e01a023          	sw	zero,-1824(gp) # 1cac8 <errno>
   17190:	350010ef          	jal	ra,184e0 <_fstat>
   17194:	57fd                	li	a5,-1
   17196:	00f51663          	bne	a0,a5,171a2 <_fstat_r+0x24>
   1719a:	8e01a783          	lw	a5,-1824(gp) # 1cac8 <errno>
   1719e:	c391                	beqz	a5,171a2 <_fstat_r+0x24>
   171a0:	c09c                	sw	a5,0(s1)
   171a2:	60e2                	ld	ra,24(sp)
   171a4:	6442                	ld	s0,16(sp)
   171a6:	64a2                	ld	s1,8(sp)
   171a8:	6105                	addi	sp,sp,32
   171aa:	8082                	ret

00000000000171ac <__sfvwrite_r>:
   171ac:	6a1c                	ld	a5,16(a2)
   171ae:	e781                	bnez	a5,171b6 <__sfvwrite_r+0xa>
   171b0:	4781                	li	a5,0
   171b2:	853e                	mv	a0,a5
   171b4:	8082                	ret
   171b6:	0105d783          	lhu	a5,16(a1)
   171ba:	7119                	addi	sp,sp,-128
   171bc:	f8a2                	sd	s0,112(sp)
   171be:	f0ca                	sd	s2,96(sp)
   171c0:	e8d2                	sd	s4,80(sp)
   171c2:	fc86                	sd	ra,120(sp)
   171c4:	f4a6                	sd	s1,104(sp)
   171c6:	ecce                	sd	s3,88(sp)
   171c8:	e4d6                	sd	s5,72(sp)
   171ca:	e0da                	sd	s6,64(sp)
   171cc:	fc5e                	sd	s7,56(sp)
   171ce:	f862                	sd	s8,48(sp)
   171d0:	f466                	sd	s9,40(sp)
   171d2:	f06a                	sd	s10,32(sp)
   171d4:	ec6e                	sd	s11,24(sp)
   171d6:	8ba1                	andi	a5,a5,8
   171d8:	8a32                	mv	s4,a2
   171da:	842e                	mv	s0,a1
   171dc:	892a                	mv	s2,a0
   171de:	cfd1                	beqz	a5,1727a <__sfvwrite_r+0xce>
   171e0:	6d9c                	ld	a5,24(a1)
   171e2:	cfc1                	beqz	a5,1727a <__sfvwrite_r+0xce>
   171e4:	01045783          	lhu	a5,16(s0)
   171e8:	000a3983          	ld	s3,0(s4)
   171ec:	0027f713          	andi	a4,a5,2
   171f0:	0e071863          	bnez	a4,172e0 <__sfvwrite_r+0x134>
   171f4:	8b85                	andi	a5,a5,1
   171f6:	4a81                	li	s5,0
   171f8:	16078463          	beqz	a5,17360 <__sfvwrite_r+0x1b4>
   171fc:	4501                	li	a0,0
   171fe:	4b81                	li	s7,0
   17200:	4b01                	li	s6,0
   17202:	240b0863          	beqz	s6,17452 <__sfvwrite_r+0x2a6>
   17206:	e919                	bnez	a0,1721c <__sfvwrite_r+0x70>
   17208:	865a                	mv	a2,s6
   1720a:	45a9                	li	a1,10
   1720c:	855e                	mv	a0,s7
   1720e:	fa9fc0ef          	jal	ra,141b6 <memchr>
   17212:	24050763          	beqz	a0,17460 <__sfvwrite_r+0x2b4>
   17216:	0505                	addi	a0,a0,1
   17218:	41750abb          	subw	s5,a0,s7
   1721c:	8c56                	mv	s8,s5
   1721e:	015b7363          	bleu	s5,s6,17224 <__sfvwrite_r+0x78>
   17222:	8c5a                	mv	s8,s6
   17224:	6008                	ld	a0,0(s0)
   17226:	6c1c                	ld	a5,24(s0)
   17228:	5014                	lw	a3,32(s0)
   1722a:	22a7fe63          	bleu	a0,a5,17466 <__sfvwrite_r+0x2ba>
   1722e:	4444                	lw	s1,12(s0)
   17230:	9cb5                	addw	s1,s1,a3
   17232:	2384da63          	ble	s8,s1,17466 <__sfvwrite_r+0x2ba>
   17236:	85de                	mv	a1,s7
   17238:	8626                	mv	a2,s1
   1723a:	376000ef          	jal	ra,175b0 <memmove>
   1723e:	601c                	ld	a5,0(s0)
   17240:	85a2                	mv	a1,s0
   17242:	854a                	mv	a0,s2
   17244:	97a6                	add	a5,a5,s1
   17246:	e01c                	sd	a5,0(s0)
   17248:	8f4fb0ef          	jal	ra,1233c <_fflush_r>
   1724c:	10051263          	bnez	a0,17350 <__sfvwrite_r+0x1a4>
   17250:	409a8abb          	subw	s5,s5,s1
   17254:	4505                	li	a0,1
   17256:	000a9763          	bnez	s5,17264 <__sfvwrite_r+0xb8>
   1725a:	85a2                	mv	a1,s0
   1725c:	854a                	mv	a0,s2
   1725e:	8defb0ef          	jal	ra,1233c <_fflush_r>
   17262:	e57d                	bnez	a0,17350 <__sfvwrite_r+0x1a4>
   17264:	010a3783          	ld	a5,16(s4)
   17268:	9ba6                	add	s7,s7,s1
   1726a:	409b0b33          	sub	s6,s6,s1
   1726e:	409784b3          	sub	s1,a5,s1
   17272:	009a3823          	sd	s1,16(s4)
   17276:	f4d1                	bnez	s1,17202 <__sfvwrite_r+0x56>
   17278:	a099                	j	172be <__sfvwrite_r+0x112>
   1727a:	85a2                	mv	a1,s0
   1727c:	854a                	mv	a0,s2
   1727e:	d71fa0ef          	jal	ra,11fee <__swsetup_r>
   17282:	57fd                	li	a5,-1
   17284:	d125                	beqz	a0,171e4 <__sfvwrite_r+0x38>
   17286:	a82d                	j	172c0 <__sfvwrite_r+0x114>
   17288:	0009ba83          	ld	s5,0(s3)
   1728c:	0089b483          	ld	s1,8(s3)
   17290:	09c1                	addi	s3,s3,16
   17292:	d8fd                	beqz	s1,17288 <__sfvwrite_r+0xdc>
   17294:	86a6                	mv	a3,s1
   17296:	009b7363          	bleu	s1,s6,1729c <__sfvwrite_r+0xf0>
   1729a:	86da                	mv	a3,s6
   1729c:	603c                	ld	a5,64(s0)
   1729e:	780c                	ld	a1,48(s0)
   172a0:	2681                	sext.w	a3,a3
   172a2:	8656                	mv	a2,s5
   172a4:	854a                	mv	a0,s2
   172a6:	9782                	jalr	a5
   172a8:	0aa05463          	blez	a0,17350 <__sfvwrite_r+0x1a4>
   172ac:	010a3783          	ld	a5,16(s4)
   172b0:	9aaa                	add	s5,s5,a0
   172b2:	8c89                	sub	s1,s1,a0
   172b4:	40a78533          	sub	a0,a5,a0
   172b8:	00aa3823          	sd	a0,16(s4)
   172bc:	f979                	bnez	a0,17292 <__sfvwrite_r+0xe6>
   172be:	4781                	li	a5,0
   172c0:	70e6                	ld	ra,120(sp)
   172c2:	7446                	ld	s0,112(sp)
   172c4:	74a6                	ld	s1,104(sp)
   172c6:	7906                	ld	s2,96(sp)
   172c8:	69e6                	ld	s3,88(sp)
   172ca:	6a46                	ld	s4,80(sp)
   172cc:	6aa6                	ld	s5,72(sp)
   172ce:	6b06                	ld	s6,64(sp)
   172d0:	7be2                	ld	s7,56(sp)
   172d2:	7c42                	ld	s8,48(sp)
   172d4:	7ca2                	ld	s9,40(sp)
   172d6:	7d02                	ld	s10,32(sp)
   172d8:	6de2                	ld	s11,24(sp)
   172da:	853e                	mv	a0,a5
   172dc:	6109                	addi	sp,sp,128
   172de:	8082                	ret
   172e0:	80000b37          	lui	s6,0x80000
   172e4:	4a81                	li	s5,0
   172e6:	4481                	li	s1,0
   172e8:	c00b4b13          	xori	s6,s6,-1024
   172ec:	b75d                	j	17292 <__sfvwrite_r+0xe6>
   172ee:	0009ba83          	ld	s5,0(s3)
   172f2:	0089bd03          	ld	s10,8(s3)
   172f6:	09c1                	addi	s3,s3,16
   172f8:	4444                	lw	s1,12(s0)
   172fa:	87a6                	mv	a5,s1
   172fc:	fe0d09e3          	beqz	s10,172ee <__sfvwrite_r+0x142>
   17300:	01045703          	lhu	a4,16(s0)
   17304:	6008                	ld	a0,0(s0)
   17306:	20077693          	andi	a3,a4,512
   1730a:	0e068863          	beqz	a3,173fa <__sfvwrite_r+0x24e>
   1730e:	089d6963          	bltu	s10,s1,173a0 <__sfvwrite_r+0x1f4>
   17312:	48077693          	andi	a3,a4,1152
   17316:	c6c9                	beqz	a3,173a0 <__sfvwrite_r+0x1f4>
   17318:	5004                	lw	s1,32(s0)
   1731a:	6c0c                	ld	a1,24(s0)
   1731c:	029c04bb          	mulw	s1,s8,s1
   17320:	8d0d                	sub	a0,a0,a1
   17322:	00050d9b          	sext.w	s11,a0
   17326:	001d8793          	addi	a5,s11,1
   1732a:	97ea                	add	a5,a5,s10
   1732c:	0394c4bb          	divw	s1,s1,s9
   17330:	00f4f563          	bleu	a5,s1,1733a <__sfvwrite_r+0x18e>
   17334:	2505                	addiw	a0,a0,1
   17336:	01a504bb          	addw	s1,a0,s10
   1733a:	40077713          	andi	a4,a4,1024
   1733e:	cf49                	beqz	a4,173d8 <__sfvwrite_r+0x22c>
   17340:	85a6                	mv	a1,s1
   17342:	854a                	mv	a0,s2
   17344:	854f90ef          	jal	ra,10398 <_malloc_r>
   17348:	e515                	bnez	a0,17374 <__sfvwrite_r+0x1c8>
   1734a:	47b1                	li	a5,12
   1734c:	00f92023          	sw	a5,0(s2)
   17350:	01045783          	lhu	a5,16(s0)
   17354:	0407e793          	ori	a5,a5,64
   17358:	00f41823          	sh	a5,16(s0)
   1735c:	57fd                	li	a5,-1
   1735e:	b78d                	j	172c0 <__sfvwrite_r+0x114>
   17360:	80000b37          	lui	s6,0x80000
   17364:	ffeb4b93          	xori	s7,s6,-2
   17368:	4d01                	li	s10,0
   1736a:	fffb4b13          	not	s6,s6
   1736e:	4c0d                	li	s8,3
   17370:	4c89                	li	s9,2
   17372:	b759                	j	172f8 <__sfvwrite_r+0x14c>
   17374:	6c0c                	ld	a1,24(s0)
   17376:	866e                	mv	a2,s11
   17378:	e42a                	sd	a0,8(sp)
   1737a:	178000ef          	jal	ra,174f2 <memcpy>
   1737e:	01045703          	lhu	a4,16(s0)
   17382:	67a2                	ld	a5,8(sp)
   17384:	b7f77713          	andi	a4,a4,-1153
   17388:	08076713          	ori	a4,a4,128
   1738c:	00e41823          	sh	a4,16(s0)
   17390:	ec1c                	sd	a5,24(s0)
   17392:	d004                	sw	s1,32(s0)
   17394:	97ee                	add	a5,a5,s11
   17396:	41b484bb          	subw	s1,s1,s11
   1739a:	e01c                	sd	a5,0(s0)
   1739c:	c444                	sw	s1,12(s0)
   1739e:	87ea                	mv	a5,s10
   173a0:	84ea                	mv	s1,s10
   173a2:	00fd7363          	bleu	a5,s10,173a8 <__sfvwrite_r+0x1fc>
   173a6:	87ea                	mv	a5,s10
   173a8:	6008                	ld	a0,0(s0)
   173aa:	863e                	mv	a2,a5
   173ac:	85d6                	mv	a1,s5
   173ae:	e43e                	sd	a5,8(sp)
   173b0:	200000ef          	jal	ra,175b0 <memmove>
   173b4:	4458                	lw	a4,12(s0)
   173b6:	67a2                	ld	a5,8(sp)
   173b8:	9f1d                	subw	a4,a4,a5
   173ba:	c458                	sw	a4,12(s0)
   173bc:	6018                	ld	a4,0(s0)
   173be:	97ba                	add	a5,a5,a4
   173c0:	e01c                	sd	a5,0(s0)
   173c2:	010a3783          	ld	a5,16(s4)
   173c6:	9aa6                	add	s5,s5,s1
   173c8:	409d0d33          	sub	s10,s10,s1
   173cc:	409784b3          	sub	s1,a5,s1
   173d0:	009a3823          	sd	s1,16(s4)
   173d4:	f095                	bnez	s1,172f8 <__sfvwrite_r+0x14c>
   173d6:	b5e5                	j	172be <__sfvwrite_r+0x112>
   173d8:	8626                	mv	a2,s1
   173da:	854a                	mv	a0,s2
   173dc:	242000ef          	jal	ra,1761e <_realloc_r>
   173e0:	87aa                	mv	a5,a0
   173e2:	f55d                	bnez	a0,17390 <__sfvwrite_r+0x1e4>
   173e4:	6c0c                	ld	a1,24(s0)
   173e6:	854a                	mv	a0,s2
   173e8:	a3cfb0ef          	jal	ra,12624 <_free_r>
   173ec:	01045783          	lhu	a5,16(s0)
   173f0:	f7f7f793          	andi	a5,a5,-129
   173f4:	00f41823          	sh	a5,16(s0)
   173f8:	bf89                	j	1734a <__sfvwrite_r+0x19e>
   173fa:	6c1c                	ld	a5,24(s0)
   173fc:	00a7e563          	bltu	a5,a0,17406 <__sfvwrite_r+0x25a>
   17400:	5014                	lw	a3,32(s0)
   17402:	02dd7763          	bleu	a3,s10,17430 <__sfvwrite_r+0x284>
   17406:	009d7363          	bleu	s1,s10,1740c <__sfvwrite_r+0x260>
   1740a:	84ea                	mv	s1,s10
   1740c:	8626                	mv	a2,s1
   1740e:	85d6                	mv	a1,s5
   17410:	1a0000ef          	jal	ra,175b0 <memmove>
   17414:	445c                	lw	a5,12(s0)
   17416:	4097873b          	subw	a4,a5,s1
   1741a:	601c                	ld	a5,0(s0)
   1741c:	c458                	sw	a4,12(s0)
   1741e:	97a6                	add	a5,a5,s1
   17420:	e01c                	sd	a5,0(s0)
   17422:	f345                	bnez	a4,173c2 <__sfvwrite_r+0x216>
   17424:	85a2                	mv	a1,s0
   17426:	854a                	mv	a0,s2
   17428:	f15fa0ef          	jal	ra,1233c <_fflush_r>
   1742c:	d959                	beqz	a0,173c2 <__sfvwrite_r+0x216>
   1742e:	b70d                	j	17350 <__sfvwrite_r+0x1a4>
   17430:	87da                	mv	a5,s6
   17432:	01abe363          	bltu	s7,s10,17438 <__sfvwrite_r+0x28c>
   17436:	87ea                	mv	a5,s10
   17438:	02d7c7bb          	divw	a5,a5,a3
   1743c:	6038                	ld	a4,64(s0)
   1743e:	780c                	ld	a1,48(s0)
   17440:	8656                	mv	a2,s5
   17442:	854a                	mv	a0,s2
   17444:	02d786bb          	mulw	a3,a5,a3
   17448:	9702                	jalr	a4
   1744a:	84aa                	mv	s1,a0
   1744c:	f6a04be3          	bgtz	a0,173c2 <__sfvwrite_r+0x216>
   17450:	b701                	j	17350 <__sfvwrite_r+0x1a4>
   17452:	0009bb83          	ld	s7,0(s3)
   17456:	0089bb03          	ld	s6,8(s3)
   1745a:	4501                	li	a0,0
   1745c:	09c1                	addi	s3,s3,16
   1745e:	b355                	j	17202 <__sfvwrite_r+0x56>
   17460:	001b0a9b          	addiw	s5,s6,1
   17464:	bb65                	j	1721c <__sfvwrite_r+0x70>
   17466:	00dc4b63          	blt	s8,a3,1747c <__sfvwrite_r+0x2d0>
   1746a:	603c                	ld	a5,64(s0)
   1746c:	780c                	ld	a1,48(s0)
   1746e:	865e                	mv	a2,s7
   17470:	854a                	mv	a0,s2
   17472:	9782                	jalr	a5
   17474:	84aa                	mv	s1,a0
   17476:	dca04de3          	bgtz	a0,17250 <__sfvwrite_r+0xa4>
   1747a:	bdd9                	j	17350 <__sfvwrite_r+0x1a4>
   1747c:	8662                	mv	a2,s8
   1747e:	85de                	mv	a1,s7
   17480:	130000ef          	jal	ra,175b0 <memmove>
   17484:	445c                	lw	a5,12(s0)
   17486:	84e2                	mv	s1,s8
   17488:	418787bb          	subw	a5,a5,s8
   1748c:	c45c                	sw	a5,12(s0)
   1748e:	601c                	ld	a5,0(s0)
   17490:	97e2                	add	a5,a5,s8
   17492:	e01c                	sd	a5,0(s0)
   17494:	bb75                	j	17250 <__sfvwrite_r+0xa4>

0000000000017496 <_isatty_r>:
   17496:	1101                	addi	sp,sp,-32
   17498:	e822                	sd	s0,16(sp)
   1749a:	e426                	sd	s1,8(sp)
   1749c:	84aa                	mv	s1,a0
   1749e:	852e                	mv	a0,a1
   174a0:	ec06                	sd	ra,24(sp)
   174a2:	8e01a023          	sw	zero,-1824(gp) # 1cac8 <errno>
   174a6:	07e010ef          	jal	ra,18524 <_isatty>
   174aa:	57fd                	li	a5,-1
   174ac:	00f51663          	bne	a0,a5,174b8 <_isatty_r+0x22>
   174b0:	8e01a783          	lw	a5,-1824(gp) # 1cac8 <errno>
   174b4:	c391                	beqz	a5,174b8 <_isatty_r+0x22>
   174b6:	c09c                	sw	a5,0(s1)
   174b8:	60e2                	ld	ra,24(sp)
   174ba:	6442                	ld	s0,16(sp)
   174bc:	64a2                	ld	s1,8(sp)
   174be:	6105                	addi	sp,sp,32
   174c0:	8082                	ret

00000000000174c2 <_lseek_r>:
   174c2:	1101                	addi	sp,sp,-32
   174c4:	e822                	sd	s0,16(sp)
   174c6:	e426                	sd	s1,8(sp)
   174c8:	84aa                	mv	s1,a0
   174ca:	852e                	mv	a0,a1
   174cc:	85b2                	mv	a1,a2
   174ce:	8636                	mv	a2,a3
   174d0:	ec06                	sd	ra,24(sp)
   174d2:	8e01a023          	sw	zero,-1824(gp) # 1cac8 <errno>
   174d6:	06c010ef          	jal	ra,18542 <_lseek>
   174da:	57fd                	li	a5,-1
   174dc:	00f51663          	bne	a0,a5,174e8 <_lseek_r+0x26>
   174e0:	8e01a783          	lw	a5,-1824(gp) # 1cac8 <errno>
   174e4:	c391                	beqz	a5,174e8 <_lseek_r+0x26>
   174e6:	c09c                	sw	a5,0(s1)
   174e8:	60e2                	ld	ra,24(sp)
   174ea:	6442                	ld	s0,16(sp)
   174ec:	64a2                	ld	s1,8(sp)
   174ee:	6105                	addi	sp,sp,32
   174f0:	8082                	ret

00000000000174f2 <memcpy>:
   174f2:	00a5c7b3          	xor	a5,a1,a0
   174f6:	8b9d                	andi	a5,a5,7
   174f8:	00c50733          	add	a4,a0,a2
   174fc:	e781                	bnez	a5,17504 <memcpy+0x12>
   174fe:	479d                	li	a5,7
   17500:	00c7ef63          	bltu	a5,a2,1751e <memcpy+0x2c>
   17504:	87aa                	mv	a5,a0
   17506:	00e56963          	bltu	a0,a4,17518 <memcpy+0x26>
   1750a:	8082                	ret
   1750c:	0005c683          	lbu	a3,0(a1)
   17510:	0785                	addi	a5,a5,1
   17512:	0585                	addi	a1,a1,1
   17514:	fed78fa3          	sb	a3,-1(a5) # 1fff <main-0xe0b1>
   17518:	fee7eae3          	bltu	a5,a4,1750c <memcpy+0x1a>
   1751c:	8082                	ret
   1751e:	00757793          	andi	a5,a0,7
   17522:	ebbd                	bnez	a5,17598 <memcpy+0xa6>
   17524:	87aa                	mv	a5,a0
   17526:	ff877693          	andi	a3,a4,-8
   1752a:	fc068613          	addi	a2,a3,-64 # 1fc0 <main-0xe0f0>
   1752e:	06c7fc63          	bleu	a2,a5,175a6 <memcpy+0xb4>
   17532:	0005b383          	ld	t2,0(a1)
   17536:	0085b283          	ld	t0,8(a1)
   1753a:	0105bf83          	ld	t6,16(a1)
   1753e:	0185bf03          	ld	t5,24(a1)
   17542:	0205be83          	ld	t4,32(a1)
   17546:	0285be03          	ld	t3,40(a1)
   1754a:	0305b303          	ld	t1,48(a1)
   1754e:	0385b883          	ld	a7,56(a1)
   17552:	04858593          	addi	a1,a1,72
   17556:	04878793          	addi	a5,a5,72
   1755a:	ff85b803          	ld	a6,-8(a1)
   1755e:	fa77bc23          	sd	t2,-72(a5)
   17562:	fc57b023          	sd	t0,-64(a5)
   17566:	fdf7b423          	sd	t6,-56(a5)
   1756a:	fde7b823          	sd	t5,-48(a5)
   1756e:	fdd7bc23          	sd	t4,-40(a5)
   17572:	ffc7b023          	sd	t3,-32(a5)
   17576:	fe67b423          	sd	t1,-24(a5)
   1757a:	ff17b823          	sd	a7,-16(a5)
   1757e:	ff07bc23          	sd	a6,-8(a5)
   17582:	b775                	j	1752e <memcpy+0x3c>
   17584:	0005c683          	lbu	a3,0(a1)
   17588:	0785                	addi	a5,a5,1
   1758a:	0585                	addi	a1,a1,1
   1758c:	fed78fa3          	sb	a3,-1(a5)
   17590:	0077f693          	andi	a3,a5,7
   17594:	fae5                	bnez	a3,17584 <memcpy+0x92>
   17596:	bf41                	j	17526 <memcpy+0x34>
   17598:	87aa                	mv	a5,a0
   1759a:	bfdd                	j	17590 <memcpy+0x9e>
   1759c:	6190                	ld	a2,0(a1)
   1759e:	07a1                	addi	a5,a5,8
   175a0:	05a1                	addi	a1,a1,8
   175a2:	fec7bc23          	sd	a2,-8(a5)
   175a6:	fed7ebe3          	bltu	a5,a3,1759c <memcpy+0xaa>
   175aa:	f6e7e7e3          	bltu	a5,a4,17518 <memcpy+0x26>
   175ae:	8082                	ret

00000000000175b0 <memmove>:
   175b0:	00c50733          	add	a4,a0,a2
   175b4:	00a5e663          	bltu	a1,a0,175c0 <memmove+0x10>
   175b8:	87aa                	mv	a5,a0
   175ba:	02e79363          	bne	a5,a4,175e0 <memmove+0x30>
   175be:	8082                	ret
   175c0:	00c587b3          	add	a5,a1,a2
   175c4:	8e1d                	sub	a2,a2,a5
   175c6:	fef579e3          	bleu	a5,a0,175b8 <memmove+0x8>
   175ca:	00c786b3          	add	a3,a5,a2
   175ce:	e291                	bnez	a3,175d2 <memmove+0x22>
   175d0:	8082                	ret
   175d2:	17fd                	addi	a5,a5,-1
   175d4:	0007c683          	lbu	a3,0(a5)
   175d8:	177d                	addi	a4,a4,-1
   175da:	00d70023          	sb	a3,0(a4)
   175de:	b7f5                	j	175ca <memmove+0x1a>
   175e0:	0585                	addi	a1,a1,1
   175e2:	fff5c683          	lbu	a3,-1(a1)
   175e6:	0785                	addi	a5,a5,1
   175e8:	fed78fa3          	sb	a3,-1(a5)
   175ec:	b7f9                	j	175ba <memmove+0xa>

00000000000175ee <_read_r>:
   175ee:	1101                	addi	sp,sp,-32
   175f0:	e822                	sd	s0,16(sp)
   175f2:	e426                	sd	s1,8(sp)
   175f4:	84aa                	mv	s1,a0
   175f6:	852e                	mv	a0,a1
   175f8:	85b2                	mv	a1,a2
   175fa:	8636                	mv	a2,a3
   175fc:	ec06                	sd	ra,24(sp)
   175fe:	8e01a023          	sw	zero,-1824(gp) # 1cac8 <errno>
   17602:	771000ef          	jal	ra,18572 <_read>
   17606:	57fd                	li	a5,-1
   17608:	00f51663          	bne	a0,a5,17614 <_read_r+0x26>
   1760c:	8e01a783          	lw	a5,-1824(gp) # 1cac8 <errno>
   17610:	c391                	beqz	a5,17614 <_read_r+0x26>
   17612:	c09c                	sw	a5,0(s1)
   17614:	60e2                	ld	ra,24(sp)
   17616:	6442                	ld	s0,16(sp)
   17618:	64a2                	ld	s1,8(sp)
   1761a:	6105                	addi	sp,sp,32
   1761c:	8082                	ret

000000000001761e <_realloc_r>:
   1761e:	711d                	addi	sp,sp,-96
   17620:	e8a2                	sd	s0,80(sp)
   17622:	ec86                	sd	ra,88(sp)
   17624:	842e                	mv	s0,a1
   17626:	e4a6                	sd	s1,72(sp)
   17628:	e0ca                	sd	s2,64(sp)
   1762a:	fc4e                	sd	s3,56(sp)
   1762c:	f852                	sd	s4,48(sp)
   1762e:	f456                	sd	s5,40(sp)
   17630:	f05a                	sd	s6,32(sp)
   17632:	ec5e                	sd	s7,24(sp)
   17634:	e862                	sd	s8,16(sp)
   17636:	85b2                	mv	a1,a2
   17638:	ec11                	bnez	s0,17654 <_realloc_r+0x36>
   1763a:	6446                	ld	s0,80(sp)
   1763c:	60e6                	ld	ra,88(sp)
   1763e:	64a6                	ld	s1,72(sp)
   17640:	6906                	ld	s2,64(sp)
   17642:	79e2                	ld	s3,56(sp)
   17644:	7a42                	ld	s4,48(sp)
   17646:	7aa2                	ld	s5,40(sp)
   17648:	7b02                	ld	s6,32(sp)
   1764a:	6be2                	ld	s7,24(sp)
   1764c:	6c42                	ld	s8,16(sp)
   1764e:	6125                	addi	sp,sp,96
   17650:	d49f806f          	j	10398 <_malloc_r>
   17654:	8aaa                	mv	s5,a0
   17656:	e432                	sd	a2,8(sp)
   17658:	acaf90ef          	jal	ra,10922 <__malloc_lock>
   1765c:	65a2                	ld	a1,8(sp)
   1765e:	ff843683          	ld	a3,-8(s0)
   17662:	02e00793          	li	a5,46
   17666:	01758993          	addi	s3,a1,23
   1766a:	ff040b93          	addi	s7,s0,-16
   1766e:	ffc6f913          	andi	s2,a3,-4
   17672:	0337fb63          	bleu	s3,a5,176a8 <_realloc_r+0x8a>
   17676:	800007b7          	lui	a5,0x80000
   1767a:	ff09fb13          	andi	s6,s3,-16
   1767e:	fff7c793          	not	a5,a5
   17682:	0367f563          	bleu	s6,a5,176ac <_realloc_r+0x8e>
   17686:	47b1                	li	a5,12
   17688:	00faa023          	sw	a5,0(s5)
   1768c:	4a01                	li	s4,0
   1768e:	60e6                	ld	ra,88(sp)
   17690:	6446                	ld	s0,80(sp)
   17692:	8552                	mv	a0,s4
   17694:	64a6                	ld	s1,72(sp)
   17696:	6906                	ld	s2,64(sp)
   17698:	79e2                	ld	s3,56(sp)
   1769a:	7a42                	ld	s4,48(sp)
   1769c:	7aa2                	ld	s5,40(sp)
   1769e:	7b02                	ld	s6,32(sp)
   176a0:	6be2                	ld	s7,24(sp)
   176a2:	6c42                	ld	s8,16(sp)
   176a4:	6125                	addi	sp,sp,96
   176a6:	8082                	ret
   176a8:	02000b13          	li	s6,32
   176ac:	fcbb6de3          	bltu	s6,a1,17686 <_realloc_r+0x68>
   176b0:	33695163          	ble	s6,s2,179d2 <_realloc_r+0x3b4>
   176b4:	6c71                	lui	s8,0x1c
   176b6:	030c0713          	addi	a4,s8,48 # 1c030 <__malloc_av_>
   176ba:	6b10                	ld	a2,16(a4)
   176bc:	012b87b3          	add	a5,s7,s2
   176c0:	6798                	ld	a4,8(a5)
   176c2:	030c0c13          	addi	s8,s8,48
   176c6:	00f60863          	beq	a2,a5,176d6 <_realloc_r+0xb8>
   176ca:	ffe77513          	andi	a0,a4,-2
   176ce:	953e                	add	a0,a0,a5
   176d0:	6508                	ld	a0,8(a0)
   176d2:	8905                	andi	a0,a0,1
   176d4:	e559                	bnez	a0,17762 <_realloc_r+0x144>
   176d6:	9b71                	andi	a4,a4,-4
   176d8:	00e909b3          	add	s3,s2,a4
   176dc:	02f61c63          	bne	a2,a5,17714 <_realloc_r+0xf6>
   176e0:	020b0513          	addi	a0,s6,32 # ffffffff80000020 <__global_pointer$+0xffffffff7ffe2e38>
   176e4:	08a9c163          	blt	s3,a0,17766 <_realloc_r+0x148>
   176e8:	9bda                	add	s7,s7,s6
   176ea:	416989b3          	sub	s3,s3,s6
   176ee:	017c3823          	sd	s7,16(s8)
   176f2:	0019e993          	ori	s3,s3,1
   176f6:	013bb423          	sd	s3,8(s7)
   176fa:	ff843983          	ld	s3,-8(s0)
   176fe:	8556                	mv	a0,s5
   17700:	8a22                	mv	s4,s0
   17702:	0019f993          	andi	s3,s3,1
   17706:	0169e9b3          	or	s3,s3,s6
   1770a:	ff343c23          	sd	s3,-8(s0)
   1770e:	a16f90ef          	jal	ra,10924 <__malloc_unlock>
   17712:	bfb5                	j	1768e <_realloc_r+0x70>
   17714:	0569c963          	blt	s3,s6,17766 <_realloc_r+0x148>
   17718:	6f98                	ld	a4,24(a5)
   1771a:	6b9c                	ld	a5,16(a5)
   1771c:	ef98                	sd	a4,24(a5)
   1771e:	eb1c                	sd	a5,16(a4)
   17720:	008bb703          	ld	a4,8(s7)
   17724:	416986b3          	sub	a3,s3,s6
   17728:	467d                	li	a2,31
   1772a:	8b05                	andi	a4,a4,1
   1772c:	013b87b3          	add	a5,s7,s3
   17730:	2ad67363          	bleu	a3,a2,179d6 <_realloc_r+0x3b8>
   17734:	00eb69b3          	or	s3,s6,a4
   17738:	013bb423          	sd	s3,8(s7)
   1773c:	016b85b3          	add	a1,s7,s6
   17740:	0016e693          	ori	a3,a3,1
   17744:	e594                	sd	a3,8(a1)
   17746:	6798                	ld	a4,8(a5)
   17748:	05c1                	addi	a1,a1,16
   1774a:	8556                	mv	a0,s5
   1774c:	00176713          	ori	a4,a4,1
   17750:	e798                	sd	a4,8(a5)
   17752:	ed3fa0ef          	jal	ra,12624 <_free_r>
   17756:	8556                	mv	a0,s5
   17758:	9ccf90ef          	jal	ra,10924 <__malloc_unlock>
   1775c:	010b8a13          	addi	s4,s7,16
   17760:	b73d                	j	1768e <_realloc_r+0x70>
   17762:	4701                	li	a4,0
   17764:	4781                	li	a5,0
   17766:	8a85                	andi	a3,a3,1
   17768:	1c069563          	bnez	a3,17932 <_realloc_r+0x314>
   1776c:	ff043483          	ld	s1,-16(s0)
   17770:	409b84b3          	sub	s1,s7,s1
   17774:	0084ba03          	ld	s4,8(s1)
   17778:	ffca7a13          	andi	s4,s4,-4
   1777c:	9a4a                	add	s4,s4,s2
   1777e:	12078c63          	beqz	a5,178b6 <_realloc_r+0x298>
   17782:	014709b3          	add	s3,a4,s4
   17786:	0af61663          	bne	a2,a5,17832 <_realloc_r+0x214>
   1778a:	020b0793          	addi	a5,s6,32
   1778e:	12f9c463          	blt	s3,a5,178b6 <_realloc_r+0x298>
   17792:	6898                	ld	a4,16(s1)
   17794:	6c9c                	ld	a5,24(s1)
   17796:	ff890613          	addi	a2,s2,-8
   1779a:	01048a13          	addi	s4,s1,16
   1779e:	ef1c                	sd	a5,24(a4)
   177a0:	eb98                	sd	a4,16(a5)
   177a2:	04800713          	li	a4,72
   177a6:	08c76163          	bltu	a4,a2,17828 <_realloc_r+0x20a>
   177aa:	02700693          	li	a3,39
   177ae:	87d2                	mv	a5,s4
   177b0:	00c6fd63          	bleu	a2,a3,177ca <_realloc_r+0x1ac>
   177b4:	601c                	ld	a5,0(s0)
   177b6:	e89c                	sd	a5,16(s1)
   177b8:	641c                	ld	a5,8(s0)
   177ba:	ec9c                	sd	a5,24(s1)
   177bc:	03700793          	li	a5,55
   177c0:	02c7ef63          	bltu	a5,a2,177fe <_realloc_r+0x1e0>
   177c4:	0441                	addi	s0,s0,16
   177c6:	02048793          	addi	a5,s1,32
   177ca:	6018                	ld	a4,0(s0)
   177cc:	e398                	sd	a4,0(a5)
   177ce:	6418                	ld	a4,8(s0)
   177d0:	e798                	sd	a4,8(a5)
   177d2:	6818                	ld	a4,16(s0)
   177d4:	eb98                	sd	a4,16(a5)
   177d6:	016487b3          	add	a5,s1,s6
   177da:	416989b3          	sub	s3,s3,s6
   177de:	00fc3823          	sd	a5,16(s8)
   177e2:	0019e993          	ori	s3,s3,1
   177e6:	0137b423          	sd	s3,8(a5) # ffffffff80000008 <__global_pointer$+0xffffffff7ffe2e20>
   177ea:	649c                	ld	a5,8(s1)
   177ec:	8b85                	andi	a5,a5,1
   177ee:	0167e9b3          	or	s3,a5,s6
   177f2:	0134b423          	sd	s3,8(s1)
   177f6:	8556                	mv	a0,s5
   177f8:	92cf90ef          	jal	ra,10924 <__malloc_unlock>
   177fc:	bd49                	j	1768e <_realloc_r+0x70>
   177fe:	681c                	ld	a5,16(s0)
   17800:	f09c                	sd	a5,32(s1)
   17802:	6c1c                	ld	a5,24(s0)
   17804:	f49c                	sd	a5,40(s1)
   17806:	00e60763          	beq	a2,a4,17814 <_realloc_r+0x1f6>
   1780a:	02040413          	addi	s0,s0,32
   1780e:	03048793          	addi	a5,s1,48
   17812:	bf65                	j	177ca <_realloc_r+0x1ac>
   17814:	701c                	ld	a5,32(s0)
   17816:	03040413          	addi	s0,s0,48
   1781a:	f89c                	sd	a5,48(s1)
   1781c:	ff843703          	ld	a4,-8(s0)
   17820:	04048793          	addi	a5,s1,64
   17824:	fc98                	sd	a4,56(s1)
   17826:	b755                	j	177ca <_realloc_r+0x1ac>
   17828:	85a2                	mv	a1,s0
   1782a:	8552                	mv	a0,s4
   1782c:	d85ff0ef          	jal	ra,175b0 <memmove>
   17830:	b75d                	j	177d6 <_realloc_r+0x1b8>
   17832:	0969c263          	blt	s3,s6,178b6 <_realloc_r+0x298>
   17836:	6f98                	ld	a4,24(a5)
   17838:	6b9c                	ld	a5,16(a5)
   1783a:	ff890613          	addi	a2,s2,-8
   1783e:	01048513          	addi	a0,s1,16
   17842:	ef98                	sd	a4,24(a5)
   17844:	eb1c                	sd	a5,16(a4)
   17846:	6898                	ld	a4,16(s1)
   17848:	6c9c                	ld	a5,24(s1)
   1784a:	ef1c                	sd	a5,24(a4)
   1784c:	eb98                	sd	a4,16(a5)
   1784e:	04800793          	li	a5,72
   17852:	04c7ee63          	bltu	a5,a2,178ae <_realloc_r+0x290>
   17856:	02700713          	li	a4,39
   1785a:	00c77d63          	bleu	a2,a4,17874 <_realloc_r+0x256>
   1785e:	6018                	ld	a4,0(s0)
   17860:	e898                	sd	a4,16(s1)
   17862:	6418                	ld	a4,8(s0)
   17864:	ec98                	sd	a4,24(s1)
   17866:	03700713          	li	a4,55
   1786a:	00c76d63          	bltu	a4,a2,17884 <_realloc_r+0x266>
   1786e:	0441                	addi	s0,s0,16
   17870:	02048513          	addi	a0,s1,32
   17874:	601c                	ld	a5,0(s0)
   17876:	e11c                	sd	a5,0(a0)
   17878:	641c                	ld	a5,8(s0)
   1787a:	e51c                	sd	a5,8(a0)
   1787c:	681c                	ld	a5,16(s0)
   1787e:	e91c                	sd	a5,16(a0)
   17880:	8ba6                	mv	s7,s1
   17882:	bd79                	j	17720 <_realloc_r+0x102>
   17884:	6818                	ld	a4,16(s0)
   17886:	f098                	sd	a4,32(s1)
   17888:	6c18                	ld	a4,24(s0)
   1788a:	f498                	sd	a4,40(s1)
   1788c:	00f60763          	beq	a2,a5,1789a <_realloc_r+0x27c>
   17890:	02040413          	addi	s0,s0,32
   17894:	03048513          	addi	a0,s1,48
   17898:	bff1                	j	17874 <_realloc_r+0x256>
   1789a:	701c                	ld	a5,32(s0)
   1789c:	04048513          	addi	a0,s1,64
   178a0:	03040413          	addi	s0,s0,48
   178a4:	f89c                	sd	a5,48(s1)
   178a6:	ff843783          	ld	a5,-8(s0)
   178aa:	fc9c                	sd	a5,56(s1)
   178ac:	b7e1                	j	17874 <_realloc_r+0x256>
   178ae:	85a2                	mv	a1,s0
   178b0:	d01ff0ef          	jal	ra,175b0 <memmove>
   178b4:	b7f1                	j	17880 <_realloc_r+0x262>
   178b6:	076a4e63          	blt	s4,s6,17932 <_realloc_r+0x314>
   178ba:	6c9c                	ld	a5,24(s1)
   178bc:	6898                	ld	a4,16(s1)
   178be:	ff890613          	addi	a2,s2,-8
   178c2:	01048513          	addi	a0,s1,16
   178c6:	ef1c                	sd	a5,24(a4)
   178c8:	eb98                	sd	a4,16(a5)
   178ca:	04800793          	li	a5,72
   178ce:	04c7ee63          	bltu	a5,a2,1792a <_realloc_r+0x30c>
   178d2:	02700713          	li	a4,39
   178d6:	00c77d63          	bleu	a2,a4,178f0 <_realloc_r+0x2d2>
   178da:	6018                	ld	a4,0(s0)
   178dc:	e898                	sd	a4,16(s1)
   178de:	6418                	ld	a4,8(s0)
   178e0:	ec98                	sd	a4,24(s1)
   178e2:	03700713          	li	a4,55
   178e6:	00c76d63          	bltu	a4,a2,17900 <_realloc_r+0x2e2>
   178ea:	0441                	addi	s0,s0,16
   178ec:	02048513          	addi	a0,s1,32
   178f0:	601c                	ld	a5,0(s0)
   178f2:	e11c                	sd	a5,0(a0)
   178f4:	641c                	ld	a5,8(s0)
   178f6:	e51c                	sd	a5,8(a0)
   178f8:	681c                	ld	a5,16(s0)
   178fa:	e91c                	sd	a5,16(a0)
   178fc:	89d2                	mv	s3,s4
   178fe:	b749                	j	17880 <_realloc_r+0x262>
   17900:	6818                	ld	a4,16(s0)
   17902:	f098                	sd	a4,32(s1)
   17904:	6c18                	ld	a4,24(s0)
   17906:	f498                	sd	a4,40(s1)
   17908:	00f60763          	beq	a2,a5,17916 <_realloc_r+0x2f8>
   1790c:	02040413          	addi	s0,s0,32
   17910:	03048513          	addi	a0,s1,48
   17914:	bff1                	j	178f0 <_realloc_r+0x2d2>
   17916:	701c                	ld	a5,32(s0)
   17918:	04048513          	addi	a0,s1,64
   1791c:	03040413          	addi	s0,s0,48
   17920:	f89c                	sd	a5,48(s1)
   17922:	ff843783          	ld	a5,-8(s0)
   17926:	fc9c                	sd	a5,56(s1)
   17928:	b7e1                	j	178f0 <_realloc_r+0x2d2>
   1792a:	85a2                	mv	a1,s0
   1792c:	c85ff0ef          	jal	ra,175b0 <memmove>
   17930:	b7f1                	j	178fc <_realloc_r+0x2de>
   17932:	8556                	mv	a0,s5
   17934:	a65f80ef          	jal	ra,10398 <_malloc_r>
   17938:	8a2a                	mv	s4,a0
   1793a:	ea050ee3          	beqz	a0,177f6 <_realloc_r+0x1d8>
   1793e:	ff843783          	ld	a5,-8(s0)
   17942:	ff050713          	addi	a4,a0,-16
   17946:	9bf9                	andi	a5,a5,-2
   17948:	97de                	add	a5,a5,s7
   1794a:	00e79863          	bne	a5,a4,1795a <_realloc_r+0x33c>
   1794e:	ff853983          	ld	s3,-8(a0)
   17952:	ffc9f993          	andi	s3,s3,-4
   17956:	99ca                	add	s3,s3,s2
   17958:	b3e1                	j	17720 <_realloc_r+0x102>
   1795a:	ff890613          	addi	a2,s2,-8
   1795e:	04800793          	li	a5,72
   17962:	06c7e463          	bltu	a5,a2,179ca <_realloc_r+0x3ac>
   17966:	02700713          	li	a4,39
   1796a:	04c77d63          	bleu	a2,a4,179c4 <_realloc_r+0x3a6>
   1796e:	6018                	ld	a4,0(s0)
   17970:	e118                	sd	a4,0(a0)
   17972:	6418                	ld	a4,8(s0)
   17974:	e518                	sd	a4,8(a0)
   17976:	03700713          	li	a4,55
   1797a:	02c76163          	bltu	a4,a2,1799c <_realloc_r+0x37e>
   1797e:	01040713          	addi	a4,s0,16
   17982:	01050793          	addi	a5,a0,16
   17986:	6314                	ld	a3,0(a4)
   17988:	e394                	sd	a3,0(a5)
   1798a:	6714                	ld	a3,8(a4)
   1798c:	e794                	sd	a3,8(a5)
   1798e:	6b18                	ld	a4,16(a4)
   17990:	eb98                	sd	a4,16(a5)
   17992:	85a2                	mv	a1,s0
   17994:	8556                	mv	a0,s5
   17996:	c8ffa0ef          	jal	ra,12624 <_free_r>
   1799a:	bdb1                	j	177f6 <_realloc_r+0x1d8>
   1799c:	6818                	ld	a4,16(s0)
   1799e:	e918                	sd	a4,16(a0)
   179a0:	6c18                	ld	a4,24(s0)
   179a2:	ed18                	sd	a4,24(a0)
   179a4:	00f60763          	beq	a2,a5,179b2 <_realloc_r+0x394>
   179a8:	02040713          	addi	a4,s0,32
   179ac:	02050793          	addi	a5,a0,32
   179b0:	bfd9                	j	17986 <_realloc_r+0x368>
   179b2:	701c                	ld	a5,32(s0)
   179b4:	03040713          	addi	a4,s0,48
   179b8:	f11c                	sd	a5,32(a0)
   179ba:	7414                	ld	a3,40(s0)
   179bc:	03050793          	addi	a5,a0,48
   179c0:	f514                	sd	a3,40(a0)
   179c2:	b7d1                	j	17986 <_realloc_r+0x368>
   179c4:	87aa                	mv	a5,a0
   179c6:	8722                	mv	a4,s0
   179c8:	bf7d                	j	17986 <_realloc_r+0x368>
   179ca:	85a2                	mv	a1,s0
   179cc:	be5ff0ef          	jal	ra,175b0 <memmove>
   179d0:	b7c9                	j	17992 <_realloc_r+0x374>
   179d2:	89ca                	mv	s3,s2
   179d4:	b3b1                	j	17720 <_realloc_r+0x102>
   179d6:	00e9e9b3          	or	s3,s3,a4
   179da:	013bb423          	sd	s3,8(s7)
   179de:	6798                	ld	a4,8(a5)
   179e0:	00176713          	ori	a4,a4,1
   179e4:	e798                	sd	a4,8(a5)
   179e6:	bb85                	j	17756 <_realloc_r+0x138>

00000000000179e8 <__ssprint_r>:
   179e8:	6a1c                	ld	a5,16(a2)
   179ea:	711d                	addi	sp,sp,-96
   179ec:	fc4e                	sd	s3,56(sp)
   179ee:	ec86                	sd	ra,88(sp)
   179f0:	e8a2                	sd	s0,80(sp)
   179f2:	e4a6                	sd	s1,72(sp)
   179f4:	e0ca                	sd	s2,64(sp)
   179f6:	f852                	sd	s4,48(sp)
   179f8:	f456                	sd	s5,40(sp)
   179fa:	f05a                	sd	s6,32(sp)
   179fc:	ec5e                	sd	s7,24(sp)
   179fe:	e862                	sd	s8,16(sp)
   17a00:	e466                	sd	s9,8(sp)
   17a02:	e06a                	sd	s10,0(sp)
   17a04:	89b2                	mv	s3,a2
   17a06:	c7fd                	beqz	a5,17af4 <__ssprint_r+0x10c>
   17a08:	00063b03          	ld	s6,0(a2)
   17a0c:	8a2a                	mv	s4,a0
   17a0e:	842e                	mv	s0,a1
   17a10:	4a81                	li	s5,0
   17a12:	4901                	li	s2,0
   17a14:	4b8d                	li	s7,3
   17a16:	4c09                	li	s8,2
   17a18:	06090663          	beqz	s2,17a84 <__ssprint_r+0x9c>
   17a1c:	00c42d03          	lw	s10,12(s0)
   17a20:	09a96f63          	bltu	s2,s10,17abe <__ssprint_r+0xd6>
   17a24:	01045703          	lhu	a4,16(s0)
   17a28:	48077793          	andi	a5,a4,1152
   17a2c:	cbc9                	beqz	a5,17abe <__ssprint_r+0xd6>
   17a2e:	5004                	lw	s1,32(s0)
   17a30:	6c0c                	ld	a1,24(s0)
   17a32:	601c                	ld	a5,0(s0)
   17a34:	029b84bb          	mulw	s1,s7,s1
   17a38:	8f8d                	sub	a5,a5,a1
   17a3a:	00078c9b          	sext.w	s9,a5
   17a3e:	001c8693          	addi	a3,s9,1
   17a42:	96ca                	add	a3,a3,s2
   17a44:	0384c4bb          	divw	s1,s1,s8
   17a48:	00d4f663          	bleu	a3,s1,17a54 <__ssprint_r+0x6c>
   17a4c:	0017849b          	addiw	s1,a5,1
   17a50:	012484bb          	addw	s1,s1,s2
   17a54:	40077713          	andi	a4,a4,1024
   17a58:	cf5d                	beqz	a4,17b16 <__ssprint_r+0x12e>
   17a5a:	85a6                	mv	a1,s1
   17a5c:	8552                	mv	a0,s4
   17a5e:	93bf80ef          	jal	ra,10398 <_malloc_r>
   17a62:	8d2a                	mv	s10,a0
   17a64:	e515                	bnez	a0,17a90 <__ssprint_r+0xa8>
   17a66:	47b1                	li	a5,12
   17a68:	00fa2023          	sw	a5,0(s4)
   17a6c:	01045783          	lhu	a5,16(s0)
   17a70:	557d                	li	a0,-1
   17a72:	0407e793          	ori	a5,a5,64
   17a76:	00f41823          	sh	a5,16(s0)
   17a7a:	0009b823          	sd	zero,16(s3)
   17a7e:	0009a423          	sw	zero,8(s3)
   17a82:	a8a5                	j	17afa <__ssprint_r+0x112>
   17a84:	000b3a83          	ld	s5,0(s6)
   17a88:	008b3903          	ld	s2,8(s6)
   17a8c:	0b41                	addi	s6,s6,16
   17a8e:	b769                	j	17a18 <__ssprint_r+0x30>
   17a90:	6c0c                	ld	a1,24(s0)
   17a92:	8666                	mv	a2,s9
   17a94:	a5fff0ef          	jal	ra,174f2 <memcpy>
   17a98:	01045783          	lhu	a5,16(s0)
   17a9c:	b7f7f793          	andi	a5,a5,-1153
   17aa0:	0807e793          	ori	a5,a5,128
   17aa4:	00f41823          	sh	a5,16(s0)
   17aa8:	01a43c23          	sd	s10,24(s0)
   17aac:	d004                	sw	s1,32(s0)
   17aae:	9d66                	add	s10,s10,s9
   17ab0:	419484bb          	subw	s1,s1,s9
   17ab4:	01a43023          	sd	s10,0(s0)
   17ab8:	c444                	sw	s1,12(s0)
   17aba:	00090d1b          	sext.w	s10,s2
   17abe:	0009049b          	sext.w	s1,s2
   17ac2:	01a97363          	bleu	s10,s2,17ac8 <__ssprint_r+0xe0>
   17ac6:	8d26                	mv	s10,s1
   17ac8:	6008                	ld	a0,0(s0)
   17aca:	866a                	mv	a2,s10
   17acc:	85d6                	mv	a1,s5
   17ace:	ae3ff0ef          	jal	ra,175b0 <memmove>
   17ad2:	445c                	lw	a5,12(s0)
   17ad4:	9aa6                	add	s5,s5,s1
   17ad6:	40990933          	sub	s2,s2,s1
   17ada:	41a787bb          	subw	a5,a5,s10
   17ade:	c45c                	sw	a5,12(s0)
   17ae0:	601c                	ld	a5,0(s0)
   17ae2:	9d3e                	add	s10,s10,a5
   17ae4:	0109b783          	ld	a5,16(s3)
   17ae8:	01a43023          	sd	s10,0(s0)
   17aec:	8f85                	sub	a5,a5,s1
   17aee:	00f9b823          	sd	a5,16(s3)
   17af2:	f39d                	bnez	a5,17a18 <__ssprint_r+0x30>
   17af4:	0009a423          	sw	zero,8(s3)
   17af8:	4501                	li	a0,0
   17afa:	60e6                	ld	ra,88(sp)
   17afc:	6446                	ld	s0,80(sp)
   17afe:	64a6                	ld	s1,72(sp)
   17b00:	6906                	ld	s2,64(sp)
   17b02:	79e2                	ld	s3,56(sp)
   17b04:	7a42                	ld	s4,48(sp)
   17b06:	7aa2                	ld	s5,40(sp)
   17b08:	7b02                	ld	s6,32(sp)
   17b0a:	6be2                	ld	s7,24(sp)
   17b0c:	6c42                	ld	s8,16(sp)
   17b0e:	6ca2                	ld	s9,8(sp)
   17b10:	6d02                	ld	s10,0(sp)
   17b12:	6125                	addi	sp,sp,96
   17b14:	8082                	ret
   17b16:	8626                	mv	a2,s1
   17b18:	8552                	mv	a0,s4
   17b1a:	b05ff0ef          	jal	ra,1761e <_realloc_r>
   17b1e:	8d2a                	mv	s10,a0
   17b20:	f541                	bnez	a0,17aa8 <__ssprint_r+0xc0>
   17b22:	6c0c                	ld	a1,24(s0)
   17b24:	8552                	mv	a0,s4
   17b26:	afffa0ef          	jal	ra,12624 <_free_r>
   17b2a:	bf35                	j	17a66 <__ssprint_r+0x7e>

0000000000017b2c <_svfiprintf_r>:
   17b2c:	0105d783          	lhu	a5,16(a1)
   17b30:	7141                	addi	sp,sp,-496
   17b32:	efa6                	sd	s1,472(sp)
   17b34:	ebca                	sd	s2,464(sp)
   17b36:	e7ce                	sd	s3,456(sp)
   17b38:	ff56                	sd	s5,440(sp)
   17b3a:	f786                	sd	ra,488(sp)
   17b3c:	f3a2                	sd	s0,480(sp)
   17b3e:	e3d2                	sd	s4,448(sp)
   17b40:	fb5a                	sd	s6,432(sp)
   17b42:	f75e                	sd	s7,424(sp)
   17b44:	f362                	sd	s8,416(sp)
   17b46:	ef66                	sd	s9,408(sp)
   17b48:	eb6a                	sd	s10,400(sp)
   17b4a:	e76e                	sd	s11,392(sp)
   17b4c:	0807f793          	andi	a5,a5,128
   17b50:	892a                	mv	s2,a0
   17b52:	84ae                	mv	s1,a1
   17b54:	8ab2                	mv	s5,a2
   17b56:	89b6                	mv	s3,a3
   17b58:	c395                	beqz	a5,17b7c <_svfiprintf_r+0x50>
   17b5a:	6d9c                	ld	a5,24(a1)
   17b5c:	e385                	bnez	a5,17b7c <_svfiprintf_r+0x50>
   17b5e:	04000593          	li	a1,64
   17b62:	837f80ef          	jal	ra,10398 <_malloc_r>
   17b66:	e088                	sd	a0,0(s1)
   17b68:	ec88                	sd	a0,24(s1)
   17b6a:	e511                	bnez	a0,17b76 <_svfiprintf_r+0x4a>
   17b6c:	47b1                	li	a5,12
   17b6e:	00f92023          	sw	a5,0(s2)
   17b72:	5bfd                	li	s7,-1
   17b74:	a779                	j	18302 <_svfiprintf_r+0x7d6>
   17b76:	04000793          	li	a5,64
   17b7a:	d09c                	sw	a5,32(s1)
   17b7c:	67e9                	lui	a5,0x1a
   17b7e:	60078793          	addi	a5,a5,1536 # 1a600 <_ctype_+0x108>
   17b82:	e8be                	sd	a5,80(sp)
   17b84:	67e9                	lui	a5,0x1a
   17b86:	78078793          	addi	a5,a5,1920 # 1a780 <zeroes.4403>
   17b8a:	f43e                	sd	a5,40(sp)
   17b8c:	67e9                	lui	a5,0x1a
   17b8e:	10010b13          	addi	s6,sp,256
   17b92:	77078793          	addi	a5,a5,1904 # 1a770 <blanks.4402>
   17b96:	e15a                	sd	s6,128(sp)
   17b98:	e902                	sd	zero,144(sp)
   17b9a:	c502                	sw	zero,136(sp)
   17b9c:	8dda                	mv	s11,s6
   17b9e:	f002                	sd	zero,32(sp)
   17ba0:	e802                	sd	zero,16(sp)
   17ba2:	ec02                	sd	zero,24(sp)
   17ba4:	fc02                	sd	zero,56(sp)
   17ba6:	4b81                	li	s7,0
   17ba8:	f83e                	sd	a5,48(sp)
   17baa:	8456                	mv	s0,s5
   17bac:	02500693          	li	a3,37
   17bb0:	00044783          	lbu	a5,0(s0)
   17bb4:	c399                	beqz	a5,17bba <_svfiprintf_r+0x8e>
   17bb6:	06d79e63          	bne	a5,a3,17c32 <_svfiprintf_r+0x106>
   17bba:	41540a3b          	subw	s4,s0,s5
   17bbe:	020a0b63          	beqz	s4,17bf4 <_svfiprintf_r+0xc8>
   17bc2:	67ca                	ld	a5,144(sp)
   17bc4:	015db023          	sd	s5,0(s11)
   17bc8:	014db423          	sd	s4,8(s11)
   17bcc:	97d2                	add	a5,a5,s4
   17bce:	e93e                	sd	a5,144(sp)
   17bd0:	47aa                	lw	a5,136(sp)
   17bd2:	0dc1                	addi	s11,s11,16
   17bd4:	0017869b          	addiw	a3,a5,1
   17bd8:	c536                	sw	a3,136(sp)
   17bda:	479d                	li	a5,7
   17bdc:	00d7da63          	ble	a3,a5,17bf0 <_svfiprintf_r+0xc4>
   17be0:	0110                	addi	a2,sp,128
   17be2:	85a6                	mv	a1,s1
   17be4:	854a                	mv	a0,s2
   17be6:	e03ff0ef          	jal	ra,179e8 <__ssprint_r>
   17bea:	70051663          	bnez	a0,182f6 <_svfiprintf_r+0x7ca>
   17bee:	8dda                	mv	s11,s6
   17bf0:	014b8bbb          	addw	s7,s7,s4
   17bf4:	00044783          	lbu	a5,0(s0)
   17bf8:	74078863          	beqz	a5,18348 <_svfiprintf_r+0x81c>
   17bfc:	00140693          	addi	a3,s0,1
   17c00:	06010ba3          	sb	zero,119(sp)
   17c04:	547d                	li	s0,-1
   17c06:	4a01                	li	s4,0
   17c08:	4d01                	li	s10,0
   17c0a:	05a00c93          	li	s9,90
   17c0e:	4c29                	li	s8,10
   17c10:	00168a93          	addi	s5,a3,1
   17c14:	0006c683          	lbu	a3,0(a3)
   17c18:	4525                	li	a0,9
   17c1a:	02a00813          	li	a6,42
   17c1e:	fe06861b          	addiw	a2,a3,-32
   17c22:	60cce263          	bltu	s9,a2,18226 <_svfiprintf_r+0x6fa>
   17c26:	67c6                	ld	a5,80(sp)
   17c28:	1602                	slli	a2,a2,0x20
   17c2a:	8279                	srli	a2,a2,0x1e
   17c2c:	963e                	add	a2,a2,a5
   17c2e:	4210                	lw	a2,0(a2)
   17c30:	8602                	jr	a2
   17c32:	0405                	addi	s0,s0,1
   17c34:	bfb5                	j	17bb0 <_svfiprintf_r+0x84>
   17c36:	0001a637          	lui	a2,0x1a
   17c3a:	dd860793          	addi	a5,a2,-552 # 19dd8 <zeroes.4441+0x78>
   17c3e:	f03e                	sd	a5,32(sp)
   17c40:	00898793          	addi	a5,s3,8
   17c44:	e43e                	sd	a5,8(sp)
   17c46:	020d7613          	andi	a2,s10,32
   17c4a:	4e060663          	beqz	a2,18136 <_svfiprintf_r+0x60a>
   17c4e:	0009b983          	ld	s3,0(s3)
   17c52:	001d7613          	andi	a2,s10,1
   17c56:	ca19                	beqz	a2,17c6c <_svfiprintf_r+0x140>
   17c58:	00098a63          	beqz	s3,17c6c <_svfiprintf_r+0x140>
   17c5c:	03000613          	li	a2,48
   17c60:	06c10c23          	sb	a2,120(sp)
   17c64:	06d10ca3          	sb	a3,121(sp)
   17c68:	002d6d13          	ori	s10,s10,2
   17c6c:	bffd7d13          	andi	s10,s10,-1025
   17c70:	a4ad                	j	17eda <_svfiprintf_r+0x3ae>
   17c72:	854a                	mv	a0,s2
   17c74:	b40fc0ef          	jal	ra,13fb4 <_localeconv_r>
   17c78:	651c                	ld	a5,8(a0)
   17c7a:	853e                	mv	a0,a5
   17c7c:	fc3e                	sd	a5,56(sp)
   17c7e:	af2fd0ef          	jal	ra,14f70 <strlen>
   17c82:	ec2a                	sd	a0,24(sp)
   17c84:	854a                	mv	a0,s2
   17c86:	b2efc0ef          	jal	ra,13fb4 <_localeconv_r>
   17c8a:	691c                	ld	a5,16(a0)
   17c8c:	e83e                	sd	a5,16(sp)
   17c8e:	67e2                	ld	a5,24(sp)
   17c90:	cb81                	beqz	a5,17ca0 <_svfiprintf_r+0x174>
   17c92:	67c2                	ld	a5,16(sp)
   17c94:	c791                	beqz	a5,17ca0 <_svfiprintf_r+0x174>
   17c96:	0007c683          	lbu	a3,0(a5)
   17c9a:	c299                	beqz	a3,17ca0 <_svfiprintf_r+0x174>
   17c9c:	400d6d13          	ori	s10,s10,1024
   17ca0:	86d6                	mv	a3,s5
   17ca2:	b7bd                	j	17c10 <_svfiprintf_r+0xe4>
   17ca4:	07714683          	lbu	a3,119(sp)
   17ca8:	fee5                	bnez	a3,17ca0 <_svfiprintf_r+0x174>
   17caa:	02000693          	li	a3,32
   17cae:	06d10ba3          	sb	a3,119(sp)
   17cb2:	b7fd                	j	17ca0 <_svfiprintf_r+0x174>
   17cb4:	001d6d13          	ori	s10,s10,1
   17cb8:	b7e5                	j	17ca0 <_svfiprintf_r+0x174>
   17cba:	0009aa03          	lw	s4,0(s3)
   17cbe:	09a1                	addi	s3,s3,8
   17cc0:	fe0a50e3          	bgez	s4,17ca0 <_svfiprintf_r+0x174>
   17cc4:	41400a3b          	negw	s4,s4
   17cc8:	004d6d13          	ori	s10,s10,4
   17ccc:	bfd1                	j	17ca0 <_svfiprintf_r+0x174>
   17cce:	02b00693          	li	a3,43
   17cd2:	bff1                	j	17cae <_svfiprintf_r+0x182>
   17cd4:	000ac683          	lbu	a3,0(s5)
   17cd8:	001a8613          	addi	a2,s5,1
   17cdc:	03069963          	bne	a3,a6,17d0e <_svfiprintf_r+0x1e2>
   17ce0:	0009a403          	lw	s0,0(s3)
   17ce4:	00898693          	addi	a3,s3,8
   17ce8:	00045363          	bgez	s0,17cee <_svfiprintf_r+0x1c2>
   17cec:	547d                	li	s0,-1
   17cee:	2401                	sext.w	s0,s0
   17cf0:	89b6                	mv	s3,a3
   17cf2:	8ab2                	mv	s5,a2
   17cf4:	b775                	j	17ca0 <_svfiprintf_r+0x174>
   17cf6:	028c043b          	mulw	s0,s8,s0
   17cfa:	0605                	addi	a2,a2,1
   17cfc:	fff64683          	lbu	a3,-1(a2)
   17d00:	9c2d                	addw	s0,s0,a1
   17d02:	fd06859b          	addiw	a1,a3,-48
   17d06:	feb578e3          	bleu	a1,a0,17cf6 <_svfiprintf_r+0x1ca>
   17d0a:	8ab2                	mv	s5,a2
   17d0c:	bf09                	j	17c1e <_svfiprintf_r+0xf2>
   17d0e:	4401                	li	s0,0
   17d10:	bfcd                	j	17d02 <_svfiprintf_r+0x1d6>
   17d12:	080d6d13          	ori	s10,s10,128
   17d16:	b769                	j	17ca0 <_svfiprintf_r+0x174>
   17d18:	8656                	mv	a2,s5
   17d1a:	4a01                	li	s4,0
   17d1c:	034c0a3b          	mulw	s4,s8,s4
   17d20:	fd06869b          	addiw	a3,a3,-48
   17d24:	0605                	addi	a2,a2,1
   17d26:	01468a3b          	addw	s4,a3,s4
   17d2a:	fff64683          	lbu	a3,-1(a2)
   17d2e:	fd06859b          	addiw	a1,a3,-48
   17d32:	feb575e3          	bleu	a1,a0,17d1c <_svfiprintf_r+0x1f0>
   17d36:	bfd1                	j	17d0a <_svfiprintf_r+0x1de>
   17d38:	000ac603          	lbu	a2,0(s5)
   17d3c:	06800693          	li	a3,104
   17d40:	00d61663          	bne	a2,a3,17d4c <_svfiprintf_r+0x220>
   17d44:	0a85                	addi	s5,s5,1
   17d46:	200d6d13          	ori	s10,s10,512
   17d4a:	bf99                	j	17ca0 <_svfiprintf_r+0x174>
   17d4c:	040d6d13          	ori	s10,s10,64
   17d50:	bf81                	j	17ca0 <_svfiprintf_r+0x174>
   17d52:	000ac603          	lbu	a2,0(s5)
   17d56:	06c00693          	li	a3,108
   17d5a:	00d61663          	bne	a2,a3,17d66 <_svfiprintf_r+0x23a>
   17d5e:	0a85                	addi	s5,s5,1
   17d60:	020d6d13          	ori	s10,s10,32
   17d64:	bf35                	j	17ca0 <_svfiprintf_r+0x174>
   17d66:	010d6d13          	ori	s10,s10,16
   17d6a:	bf1d                	j	17ca0 <_svfiprintf_r+0x174>
   17d6c:	0009a683          	lw	a3,0(s3)
   17d70:	00898793          	addi	a5,s3,8
   17d74:	e43e                	sd	a5,8(sp)
   17d76:	08d10c23          	sb	a3,152(sp)
   17d7a:	06010ba3          	sb	zero,119(sp)
   17d7e:	4405                	li	s0,1
   17d80:	4981                	li	s3,0
   17d82:	09810c13          	addi	s8,sp,152
   17d86:	aabd                	j	17f04 <_svfiprintf_r+0x3d8>
   17d88:	010d6d13          	ori	s10,s10,16
   17d8c:	00898793          	addi	a5,s3,8
   17d90:	e43e                	sd	a5,8(sp)
   17d92:	020d7693          	andi	a3,s10,32
   17d96:	ca85                	beqz	a3,17dc6 <_svfiprintf_r+0x29a>
   17d98:	0009b983          	ld	s3,0(s3)
   17d9c:	0009d863          	bgez	s3,17dac <_svfiprintf_r+0x280>
   17da0:	02d00693          	li	a3,45
   17da4:	413009b3          	neg	s3,s3
   17da8:	06d10ba3          	sb	a3,119(sp)
   17dac:	56fd                	li	a3,-1
   17dae:	3ad41b63          	bne	s0,a3,18164 <_svfiprintf_r+0x638>
   17db2:	46a5                	li	a3,9
   17db4:	3d36e563          	bltu	a3,s3,1817e <_svfiprintf_r+0x652>
   17db8:	0309899b          	addiw	s3,s3,48
   17dbc:	0f310da3          	sb	s3,251(sp)
   17dc0:	0fb10c13          	addi	s8,sp,251
   17dc4:	a87d                	j	17e82 <_svfiprintf_r+0x356>
   17dc6:	010d7693          	andi	a3,s10,16
   17dca:	f6f9                	bnez	a3,17d98 <_svfiprintf_r+0x26c>
   17dcc:	040d7693          	andi	a3,s10,64
   17dd0:	c681                	beqz	a3,17dd8 <_svfiprintf_r+0x2ac>
   17dd2:	00099983          	lh	s3,0(s3)
   17dd6:	b7d9                	j	17d9c <_svfiprintf_r+0x270>
   17dd8:	200d7693          	andi	a3,s10,512
   17ddc:	c681                	beqz	a3,17de4 <_svfiprintf_r+0x2b8>
   17dde:	00098983          	lb	s3,0(s3)
   17de2:	bf6d                	j	17d9c <_svfiprintf_r+0x270>
   17de4:	0009a983          	lw	s3,0(s3)
   17de8:	bf55                	j	17d9c <_svfiprintf_r+0x270>
   17dea:	020d7613          	andi	a2,s10,32
   17dee:	0009b683          	ld	a3,0(s3)
   17df2:	09a1                	addi	s3,s3,8
   17df4:	c601                	beqz	a2,17dfc <_svfiprintf_r+0x2d0>
   17df6:	0176b023          	sd	s7,0(a3)
   17dfa:	bb45                	j	17baa <_svfiprintf_r+0x7e>
   17dfc:	010d7613          	andi	a2,s10,16
   17e00:	fa7d                	bnez	a2,17df6 <_svfiprintf_r+0x2ca>
   17e02:	040d7613          	andi	a2,s10,64
   17e06:	c601                	beqz	a2,17e0e <_svfiprintf_r+0x2e2>
   17e08:	01769023          	sh	s7,0(a3)
   17e0c:	bb79                	j	17baa <_svfiprintf_r+0x7e>
   17e0e:	200d7793          	andi	a5,s10,512
   17e12:	c781                	beqz	a5,17e1a <_svfiprintf_r+0x2ee>
   17e14:	01768023          	sb	s7,0(a3)
   17e18:	bb49                	j	17baa <_svfiprintf_r+0x7e>
   17e1a:	0176a023          	sw	s7,0(a3)
   17e1e:	b371                	j	17baa <_svfiprintf_r+0x7e>
   17e20:	010d6d13          	ori	s10,s10,16
   17e24:	00898793          	addi	a5,s3,8
   17e28:	e43e                	sd	a5,8(sp)
   17e2a:	020d7693          	andi	a3,s10,32
   17e2e:	ceb9                	beqz	a3,17e8c <_svfiprintf_r+0x360>
   17e30:	0009b983          	ld	s3,0(s3)
   17e34:	bffd7d13          	andi	s10,s10,-1025
   17e38:	4601                	li	a2,0
   17e3a:	06010ba3          	sb	zero,119(sp)
   17e3e:	56fd                	li	a3,-1
   17e40:	85ea                	mv	a1,s10
   17e42:	32d41363          	bne	s0,a3,18168 <_svfiprintf_r+0x63c>
   17e46:	4685                	li	a3,1
   17e48:	f6d605e3          	beq	a2,a3,17db2 <_svfiprintf_r+0x286>
   17e4c:	4689                	li	a3,2
   17e4e:	3ad60063          	beq	a2,a3,181ee <_svfiprintf_r+0x6c2>
   17e52:	19f0                	addi	a2,sp,252
   17e54:	0079f593          	andi	a1,s3,7
   17e58:	03058593          	addi	a1,a1,48
   17e5c:	feb60fa3          	sb	a1,-1(a2)
   17e60:	0039d993          	srli	s3,s3,0x3
   17e64:	fff60c13          	addi	s8,a2,-1
   17e68:	30099963          	bnez	s3,1817a <_svfiprintf_r+0x64e>
   17e6c:	001d7513          	andi	a0,s10,1
   17e70:	c909                	beqz	a0,17e82 <_svfiprintf_r+0x356>
   17e72:	03000513          	li	a0,48
   17e76:	00a58663          	beq	a1,a0,17e82 <_svfiprintf_r+0x356>
   17e7a:	feac0fa3          	sb	a0,-1(s8)
   17e7e:	ffe60c13          	addi	s8,a2,-2
   17e82:	89a2                	mv	s3,s0
   17e84:	19e0                	addi	s0,sp,252
   17e86:	4184043b          	subw	s0,s0,s8
   17e8a:	a8ad                	j	17f04 <_svfiprintf_r+0x3d8>
   17e8c:	010d7693          	andi	a3,s10,16
   17e90:	f2c5                	bnez	a3,17e30 <_svfiprintf_r+0x304>
   17e92:	040d7693          	andi	a3,s10,64
   17e96:	0009a983          	lw	s3,0(s3)
   17e9a:	c689                	beqz	a3,17ea4 <_svfiprintf_r+0x378>
   17e9c:	19c2                	slli	s3,s3,0x30
   17e9e:	0309d993          	srli	s3,s3,0x30
   17ea2:	bf49                	j	17e34 <_svfiprintf_r+0x308>
   17ea4:	200d7693          	andi	a3,s10,512
   17ea8:	c681                	beqz	a3,17eb0 <_svfiprintf_r+0x384>
   17eaa:	0ff9f993          	andi	s3,s3,255
   17eae:	b759                	j	17e34 <_svfiprintf_r+0x308>
   17eb0:	1982                	slli	s3,s3,0x20
   17eb2:	0209d993          	srli	s3,s3,0x20
   17eb6:	bfbd                	j	17e34 <_svfiprintf_r+0x308>
   17eb8:	76e1                	lui	a3,0xffff8
   17eba:	8306c693          	xori	a3,a3,-2000
   17ebe:	00898793          	addi	a5,s3,8
   17ec2:	06d11c23          	sh	a3,120(sp)
   17ec6:	0009b983          	ld	s3,0(s3)
   17eca:	0001a6b7          	lui	a3,0x1a
   17ece:	e43e                	sd	a5,8(sp)
   17ed0:	dc068793          	addi	a5,a3,-576 # 19dc0 <zeroes.4441+0x60>
   17ed4:	002d6d13          	ori	s10,s10,2
   17ed8:	f03e                	sd	a5,32(sp)
   17eda:	4609                	li	a2,2
   17edc:	bfb9                	j	17e3a <_svfiprintf_r+0x30e>
   17ede:	00898793          	addi	a5,s3,8
   17ee2:	e43e                	sd	a5,8(sp)
   17ee4:	06010ba3          	sb	zero,119(sp)
   17ee8:	567d                	li	a2,-1
   17eea:	0009bc03          	ld	s8,0(s3)
   17eee:	1ec40663          	beq	s0,a2,180da <_svfiprintf_r+0x5ae>
   17ef2:	8622                	mv	a2,s0
   17ef4:	4581                	li	a1,0
   17ef6:	8562                	mv	a0,s8
   17ef8:	abefc0ef          	jal	ra,141b6 <memchr>
   17efc:	4981                	li	s3,0
   17efe:	c119                	beqz	a0,17f04 <_svfiprintf_r+0x3d8>
   17f00:	4185043b          	subw	s0,a0,s8
   17f04:	864e                	mv	a2,s3
   17f06:	0089d363          	ble	s0,s3,17f0c <_svfiprintf_r+0x3e0>
   17f0a:	8622                	mv	a2,s0
   17f0c:	07714583          	lbu	a1,119(sp)
   17f10:	00060c9b          	sext.w	s9,a2
   17f14:	c199                	beqz	a1,17f1a <_svfiprintf_r+0x3ee>
   17f16:	00160c9b          	addiw	s9,a2,1
   17f1a:	002d7613          	andi	a2,s10,2
   17f1e:	0006079b          	sext.w	a5,a2
   17f22:	e0be                	sd	a5,64(sp)
   17f24:	c391                	beqz	a5,17f28 <_svfiprintf_r+0x3fc>
   17f26:	2c89                	addiw	s9,s9,2
   17f28:	084d7793          	andi	a5,s10,132
   17f2c:	e4be                	sd	a5,72(sp)
   17f2e:	e7a1                	bnez	a5,17f76 <_svfiprintf_r+0x44a>
   17f30:	419a083b          	subw	a6,s4,s9
   17f34:	05005163          	blez	a6,17f76 <_svfiprintf_r+0x44a>
   17f38:	4341                	li	t1,16
   17f3a:	4e1d                	li	t3,7
   17f3c:	45aa                	lw	a1,136(sp)
   17f3e:	77c2                	ld	a5,48(sp)
   17f40:	664a                	ld	a2,144(sp)
   17f42:	0015851b          	addiw	a0,a1,1
   17f46:	00fdb023          	sd	a5,0(s11)
   17f4a:	85aa                	mv	a1,a0
   17f4c:	010d8893          	addi	a7,s11,16
   17f50:	2f034363          	blt	t1,a6,18236 <_svfiprintf_r+0x70a>
   17f54:	010db423          	sd	a6,8(s11)
   17f58:	9832                	add	a6,a6,a2
   17f5a:	e942                	sd	a6,144(sp)
   17f5c:	c52a                	sw	a0,136(sp)
   17f5e:	461d                	li	a2,7
   17f60:	8dc6                	mv	s11,a7
   17f62:	00a65a63          	ble	a0,a2,17f76 <_svfiprintf_r+0x44a>
   17f66:	0110                	addi	a2,sp,128
   17f68:	85a6                	mv	a1,s1
   17f6a:	854a                	mv	a0,s2
   17f6c:	a7dff0ef          	jal	ra,179e8 <__ssprint_r>
   17f70:	38051363          	bnez	a0,182f6 <_svfiprintf_r+0x7ca>
   17f74:	8dda                	mv	s11,s6
   17f76:	07714603          	lbu	a2,119(sp)
   17f7a:	ca1d                	beqz	a2,17fb0 <_svfiprintf_r+0x484>
   17f7c:	07710593          	addi	a1,sp,119
   17f80:	00bdb023          	sd	a1,0(s11)
   17f84:	4585                	li	a1,1
   17f86:	462a                	lw	a2,136(sp)
   17f88:	00bdb423          	sd	a1,8(s11)
   17f8c:	65ca                	ld	a1,144(sp)
   17f8e:	0016051b          	addiw	a0,a2,1
   17f92:	c52a                	sw	a0,136(sp)
   17f94:	0585                	addi	a1,a1,1
   17f96:	e92e                	sd	a1,144(sp)
   17f98:	461d                	li	a2,7
   17f9a:	0dc1                	addi	s11,s11,16
   17f9c:	00a65a63          	ble	a0,a2,17fb0 <_svfiprintf_r+0x484>
   17fa0:	0110                	addi	a2,sp,128
   17fa2:	85a6                	mv	a1,s1
   17fa4:	854a                	mv	a0,s2
   17fa6:	a43ff0ef          	jal	ra,179e8 <__ssprint_r>
   17faa:	34051663          	bnez	a0,182f6 <_svfiprintf_r+0x7ca>
   17fae:	8dda                	mv	s11,s6
   17fb0:	6786                	ld	a5,64(sp)
   17fb2:	cb95                	beqz	a5,17fe6 <_svfiprintf_r+0x4ba>
   17fb4:	18ac                	addi	a1,sp,120
   17fb6:	00bdb023          	sd	a1,0(s11)
   17fba:	4589                	li	a1,2
   17fbc:	462a                	lw	a2,136(sp)
   17fbe:	00bdb423          	sd	a1,8(s11)
   17fc2:	65ca                	ld	a1,144(sp)
   17fc4:	0016051b          	addiw	a0,a2,1
   17fc8:	c52a                	sw	a0,136(sp)
   17fca:	0589                	addi	a1,a1,2
   17fcc:	e92e                	sd	a1,144(sp)
   17fce:	461d                	li	a2,7
   17fd0:	0dc1                	addi	s11,s11,16
   17fd2:	00a65a63          	ble	a0,a2,17fe6 <_svfiprintf_r+0x4ba>
   17fd6:	0110                	addi	a2,sp,128
   17fd8:	85a6                	mv	a1,s1
   17fda:	854a                	mv	a0,s2
   17fdc:	a0dff0ef          	jal	ra,179e8 <__ssprint_r>
   17fe0:	30051b63          	bnez	a0,182f6 <_svfiprintf_r+0x7ca>
   17fe4:	8dda                	mv	s11,s6
   17fe6:	67a6                	ld	a5,72(sp)
   17fe8:	08000613          	li	a2,128
   17fec:	04c79563          	bne	a5,a2,18036 <_svfiprintf_r+0x50a>
   17ff0:	419a083b          	subw	a6,s4,s9
   17ff4:	05005163          	blez	a6,18036 <_svfiprintf_r+0x50a>
   17ff8:	4341                	li	t1,16
   17ffa:	4e1d                	li	t3,7
   17ffc:	45aa                	lw	a1,136(sp)
   17ffe:	77a2                	ld	a5,40(sp)
   18000:	664a                	ld	a2,144(sp)
   18002:	0015851b          	addiw	a0,a1,1
   18006:	00fdb023          	sd	a5,0(s11)
   1800a:	85aa                	mv	a1,a0
   1800c:	010d8893          	addi	a7,s11,16
   18010:	25034a63          	blt	t1,a6,18264 <_svfiprintf_r+0x738>
   18014:	010db423          	sd	a6,8(s11)
   18018:	9832                	add	a6,a6,a2
   1801a:	e942                	sd	a6,144(sp)
   1801c:	c52a                	sw	a0,136(sp)
   1801e:	461d                	li	a2,7
   18020:	8dc6                	mv	s11,a7
   18022:	00a65a63          	ble	a0,a2,18036 <_svfiprintf_r+0x50a>
   18026:	0110                	addi	a2,sp,128
   18028:	85a6                	mv	a1,s1
   1802a:	854a                	mv	a0,s2
   1802c:	9bdff0ef          	jal	ra,179e8 <__ssprint_r>
   18030:	2c051363          	bnez	a0,182f6 <_svfiprintf_r+0x7ca>
   18034:	8dda                	mv	s11,s6
   18036:	408989bb          	subw	s3,s3,s0
   1803a:	05305163          	blez	s3,1807c <_svfiprintf_r+0x550>
   1803e:	48c1                	li	a7,16
   18040:	431d                	li	t1,7
   18042:	45aa                	lw	a1,136(sp)
   18044:	77a2                	ld	a5,40(sp)
   18046:	664a                	ld	a2,144(sp)
   18048:	0015851b          	addiw	a0,a1,1
   1804c:	00fdb023          	sd	a5,0(s11)
   18050:	85aa                	mv	a1,a0
   18052:	010d8813          	addi	a6,s11,16
   18056:	2338ce63          	blt	a7,s3,18292 <_svfiprintf_r+0x766>
   1805a:	013db423          	sd	s3,8(s11)
   1805e:	99b2                	add	s3,s3,a2
   18060:	e94e                	sd	s3,144(sp)
   18062:	c52a                	sw	a0,136(sp)
   18064:	461d                	li	a2,7
   18066:	8dc2                	mv	s11,a6
   18068:	00a65a63          	ble	a0,a2,1807c <_svfiprintf_r+0x550>
   1806c:	0110                	addi	a2,sp,128
   1806e:	85a6                	mv	a1,s1
   18070:	854a                	mv	a0,s2
   18072:	977ff0ef          	jal	ra,179e8 <__ssprint_r>
   18076:	28051063          	bnez	a0,182f6 <_svfiprintf_r+0x7ca>
   1807a:	8dda                	mv	s11,s6
   1807c:	66ca                	ld	a3,144(sp)
   1807e:	008db423          	sd	s0,8(s11)
   18082:	018db023          	sd	s8,0(s11)
   18086:	9436                	add	s0,s0,a3
   18088:	46aa                	lw	a3,136(sp)
   1808a:	e922                	sd	s0,144(sp)
   1808c:	010d8713          	addi	a4,s11,16
   18090:	0016861b          	addiw	a2,a3,1
   18094:	c532                	sw	a2,136(sp)
   18096:	469d                	li	a3,7
   18098:	00c6da63          	ble	a2,a3,180ac <_svfiprintf_r+0x580>
   1809c:	0110                	addi	a2,sp,128
   1809e:	85a6                	mv	a1,s1
   180a0:	854a                	mv	a0,s2
   180a2:	947ff0ef          	jal	ra,179e8 <__ssprint_r>
   180a6:	24051863          	bnez	a0,182f6 <_svfiprintf_r+0x7ca>
   180aa:	875a                	mv	a4,s6
   180ac:	004d7793          	andi	a5,s10,4
   180b0:	20079663          	bnez	a5,182bc <_svfiprintf_r+0x790>
   180b4:	87d2                	mv	a5,s4
   180b6:	019a5363          	ble	s9,s4,180bc <_svfiprintf_r+0x590>
   180ba:	87e6                	mv	a5,s9
   180bc:	01778bbb          	addw	s7,a5,s7
   180c0:	67ca                	ld	a5,144(sp)
   180c2:	cb81                	beqz	a5,180d2 <_svfiprintf_r+0x5a6>
   180c4:	0110                	addi	a2,sp,128
   180c6:	85a6                	mv	a1,s1
   180c8:	854a                	mv	a0,s2
   180ca:	91fff0ef          	jal	ra,179e8 <__ssprint_r>
   180ce:	22051463          	bnez	a0,182f6 <_svfiprintf_r+0x7ca>
   180d2:	c502                	sw	zero,136(sp)
   180d4:	69a2                	ld	s3,8(sp)
   180d6:	8dda                	mv	s11,s6
   180d8:	bcc9                	j	17baa <_svfiprintf_r+0x7e>
   180da:	8562                	mv	a0,s8
   180dc:	e95fc0ef          	jal	ra,14f70 <strlen>
   180e0:	0005041b          	sext.w	s0,a0
   180e4:	4981                	li	s3,0
   180e6:	bd39                	j	17f04 <_svfiprintf_r+0x3d8>
   180e8:	010d6d13          	ori	s10,s10,16
   180ec:	00898793          	addi	a5,s3,8
   180f0:	e43e                	sd	a5,8(sp)
   180f2:	020d7693          	andi	a3,s10,32
   180f6:	c689                	beqz	a3,18100 <_svfiprintf_r+0x5d4>
   180f8:	0009b983          	ld	s3,0(s3)
   180fc:	4605                	li	a2,1
   180fe:	bb35                	j	17e3a <_svfiprintf_r+0x30e>
   18100:	010d7693          	andi	a3,s10,16
   18104:	faf5                	bnez	a3,180f8 <_svfiprintf_r+0x5cc>
   18106:	040d7693          	andi	a3,s10,64
   1810a:	0009a983          	lw	s3,0(s3)
   1810e:	c689                	beqz	a3,18118 <_svfiprintf_r+0x5ec>
   18110:	19c2                	slli	s3,s3,0x30
   18112:	0309d993          	srli	s3,s3,0x30
   18116:	b7dd                	j	180fc <_svfiprintf_r+0x5d0>
   18118:	200d7693          	andi	a3,s10,512
   1811c:	c681                	beqz	a3,18124 <_svfiprintf_r+0x5f8>
   1811e:	0ff9f993          	andi	s3,s3,255
   18122:	bfe9                	j	180fc <_svfiprintf_r+0x5d0>
   18124:	1982                	slli	s3,s3,0x20
   18126:	0209d993          	srli	s3,s3,0x20
   1812a:	bfc9                	j	180fc <_svfiprintf_r+0x5d0>
   1812c:	0001a637          	lui	a2,0x1a
   18130:	dc060793          	addi	a5,a2,-576 # 19dc0 <zeroes.4441+0x60>
   18134:	b629                	j	17c3e <_svfiprintf_r+0x112>
   18136:	010d7613          	andi	a2,s10,16
   1813a:	b0061ae3          	bnez	a2,17c4e <_svfiprintf_r+0x122>
   1813e:	040d7613          	andi	a2,s10,64
   18142:	0009a983          	lw	s3,0(s3)
   18146:	c609                	beqz	a2,18150 <_svfiprintf_r+0x624>
   18148:	19c2                	slli	s3,s3,0x30
   1814a:	0309d993          	srli	s3,s3,0x30
   1814e:	b611                	j	17c52 <_svfiprintf_r+0x126>
   18150:	200d7613          	andi	a2,s10,512
   18154:	c601                	beqz	a2,1815c <_svfiprintf_r+0x630>
   18156:	0ff9f993          	andi	s3,s3,255
   1815a:	bce5                	j	17c52 <_svfiprintf_r+0x126>
   1815c:	1982                	slli	s3,s3,0x20
   1815e:	0209d993          	srli	s3,s3,0x20
   18162:	bcc5                	j	17c52 <_svfiprintf_r+0x126>
   18164:	85ea                	mv	a1,s10
   18166:	4605                	li	a2,1
   18168:	f7fd7d13          	andi	s10,s10,-129
   1816c:	cc099de3          	bnez	s3,17e46 <_svfiprintf_r+0x31a>
   18170:	cc59                	beqz	s0,1820e <_svfiprintf_r+0x6e2>
   18172:	4685                	li	a3,1
   18174:	ccd61ce3          	bne	a2,a3,17e4c <_svfiprintf_r+0x320>
   18178:	b181                	j	17db8 <_svfiprintf_r+0x28c>
   1817a:	8662                	mv	a2,s8
   1817c:	b9e1                	j	17e54 <_svfiprintf_r+0x328>
   1817e:	400d7c93          	andi	s9,s10,1024
   18182:	4601                	li	a2,0
   18184:	19ec                	addi	a1,sp,252
   18186:	4829                	li	a6,10
   18188:	2c81                	sext.w	s9,s9
   1818a:	0ff00893          	li	a7,255
   1818e:	4325                	li	t1,9
   18190:	0309f533          	remu	a0,s3,a6
   18194:	fff58c13          	addi	s8,a1,-1
   18198:	2605                	addiw	a2,a2,1
   1819a:	0305051b          	addiw	a0,a0,48
   1819e:	fea58fa3          	sb	a0,-1(a1)
   181a2:	040c8063          	beqz	s9,181e2 <_svfiprintf_r+0x6b6>
   181a6:	67c2                	ld	a5,16(sp)
   181a8:	0007c583          	lbu	a1,0(a5)
   181ac:	02c59b63          	bne	a1,a2,181e2 <_svfiprintf_r+0x6b6>
   181b0:	03158963          	beq	a1,a7,181e2 <_svfiprintf_r+0x6b6>
   181b4:	03337763          	bleu	s3,t1,181e2 <_svfiprintf_r+0x6b6>
   181b8:	67e2                	ld	a5,24(sp)
   181ba:	75e2                	ld	a1,56(sp)
   181bc:	ec9a                	sd	t1,88(sp)
   181be:	40fc0c33          	sub	s8,s8,a5
   181c2:	863e                	mv	a2,a5
   181c4:	8562                	mv	a0,s8
   181c6:	e4c6                	sd	a7,72(sp)
   181c8:	e0c2                	sd	a6,64(sp)
   181ca:	db9fc0ef          	jal	ra,14f82 <strncpy>
   181ce:	67c2                	ld	a5,16(sp)
   181d0:	4601                	li	a2,0
   181d2:	6806                	ld	a6,64(sp)
   181d4:	0017c583          	lbu	a1,1(a5)
   181d8:	68a6                	ld	a7,72(sp)
   181da:	6366                	ld	t1,88(sp)
   181dc:	c199                	beqz	a1,181e2 <_svfiprintf_r+0x6b6>
   181de:	0785                	addi	a5,a5,1
   181e0:	e83e                	sd	a5,16(sp)
   181e2:	0309d9b3          	divu	s3,s3,a6
   181e6:	c8098ee3          	beqz	s3,17e82 <_svfiprintf_r+0x356>
   181ea:	85e2                	mv	a1,s8
   181ec:	b755                	j	18190 <_svfiprintf_r+0x664>
   181ee:	0fc10c13          	addi	s8,sp,252
   181f2:	7782                	ld	a5,32(sp)
   181f4:	00f9f613          	andi	a2,s3,15
   181f8:	1c7d                	addi	s8,s8,-1
   181fa:	963e                	add	a2,a2,a5
   181fc:	00064603          	lbu	a2,0(a2)
   18200:	0049d993          	srli	s3,s3,0x4
   18204:	00cc0023          	sb	a2,0(s8)
   18208:	fe0995e3          	bnez	s3,181f2 <_svfiprintf_r+0x6c6>
   1820c:	b99d                	j	17e82 <_svfiprintf_r+0x356>
   1820e:	0fc10c13          	addi	s8,sp,252
   18212:	c60618e3          	bnez	a2,17e82 <_svfiprintf_r+0x356>
   18216:	8985                	andi	a1,a1,1
   18218:	c60585e3          	beqz	a1,17e82 <_svfiprintf_r+0x356>
   1821c:	03000693          	li	a3,48
   18220:	0ed10da3          	sb	a3,251(sp)
   18224:	be71                	j	17dc0 <_svfiprintf_r+0x294>
   18226:	12068163          	beqz	a3,18348 <_svfiprintf_r+0x81c>
   1822a:	08d10c23          	sb	a3,152(sp)
   1822e:	06010ba3          	sb	zero,119(sp)
   18232:	e44e                	sd	s3,8(sp)
   18234:	b6a9                	j	17d7e <_svfiprintf_r+0x252>
   18236:	0641                	addi	a2,a2,16
   18238:	006db423          	sd	t1,8(s11)
   1823c:	e932                	sd	a2,144(sp)
   1823e:	c52e                	sw	a1,136(sp)
   18240:	00ae5f63          	ble	a0,t3,1825e <_svfiprintf_r+0x732>
   18244:	0110                	addi	a2,sp,128
   18246:	85a6                	mv	a1,s1
   18248:	854a                	mv	a0,s2
   1824a:	f4f2                	sd	t3,104(sp)
   1824c:	f09a                	sd	t1,96(sp)
   1824e:	ecc2                	sd	a6,88(sp)
   18250:	f98ff0ef          	jal	ra,179e8 <__ssprint_r>
   18254:	e14d                	bnez	a0,182f6 <_svfiprintf_r+0x7ca>
   18256:	7e26                	ld	t3,104(sp)
   18258:	7306                	ld	t1,96(sp)
   1825a:	6866                	ld	a6,88(sp)
   1825c:	88da                	mv	a7,s6
   1825e:	3841                	addiw	a6,a6,-16
   18260:	8dc6                	mv	s11,a7
   18262:	b9e9                	j	17f3c <_svfiprintf_r+0x410>
   18264:	0641                	addi	a2,a2,16
   18266:	006db423          	sd	t1,8(s11)
   1826a:	e932                	sd	a2,144(sp)
   1826c:	c52e                	sw	a1,136(sp)
   1826e:	00ae5f63          	ble	a0,t3,1828c <_svfiprintf_r+0x760>
   18272:	0110                	addi	a2,sp,128
   18274:	85a6                	mv	a1,s1
   18276:	854a                	mv	a0,s2
   18278:	ecf2                	sd	t3,88(sp)
   1827a:	e49a                	sd	t1,72(sp)
   1827c:	e0c2                	sd	a6,64(sp)
   1827e:	f6aff0ef          	jal	ra,179e8 <__ssprint_r>
   18282:	e935                	bnez	a0,182f6 <_svfiprintf_r+0x7ca>
   18284:	6e66                	ld	t3,88(sp)
   18286:	6326                	ld	t1,72(sp)
   18288:	6806                	ld	a6,64(sp)
   1828a:	88da                	mv	a7,s6
   1828c:	3841                	addiw	a6,a6,-16
   1828e:	8dc6                	mv	s11,a7
   18290:	b3b5                	j	17ffc <_svfiprintf_r+0x4d0>
   18292:	0641                	addi	a2,a2,16
   18294:	011db423          	sd	a7,8(s11)
   18298:	e932                	sd	a2,144(sp)
   1829a:	c52e                	sw	a1,136(sp)
   1829c:	00a35d63          	ble	a0,t1,182b6 <_svfiprintf_r+0x78a>
   182a0:	0110                	addi	a2,sp,128
   182a2:	85a6                	mv	a1,s1
   182a4:	854a                	mv	a0,s2
   182a6:	e49a                	sd	t1,72(sp)
   182a8:	e0c6                	sd	a7,64(sp)
   182aa:	f3eff0ef          	jal	ra,179e8 <__ssprint_r>
   182ae:	e521                	bnez	a0,182f6 <_svfiprintf_r+0x7ca>
   182b0:	6326                	ld	t1,72(sp)
   182b2:	6886                	ld	a7,64(sp)
   182b4:	885a                	mv	a6,s6
   182b6:	39c1                	addiw	s3,s3,-16
   182b8:	8dc2                	mv	s11,a6
   182ba:	b361                	j	18042 <_svfiprintf_r+0x516>
   182bc:	419a043b          	subw	s0,s4,s9
   182c0:	de805ae3          	blez	s0,180b4 <_svfiprintf_r+0x588>
   182c4:	49c1                	li	s3,16
   182c6:	4d1d                	li	s10,7
   182c8:	46aa                	lw	a3,136(sp)
   182ca:	67ca                	ld	a5,144(sp)
   182cc:	0016861b          	addiw	a2,a3,1
   182d0:	86b2                	mv	a3,a2
   182d2:	0489c863          	blt	s3,s0,18322 <_svfiprintf_r+0x7f6>
   182d6:	76c2                	ld	a3,48(sp)
   182d8:	e700                	sd	s0,8(a4)
   182da:	943e                	add	s0,s0,a5
   182dc:	e314                	sd	a3,0(a4)
   182de:	e922                	sd	s0,144(sp)
   182e0:	c532                	sw	a2,136(sp)
   182e2:	479d                	li	a5,7
   182e4:	dcc7d8e3          	ble	a2,a5,180b4 <_svfiprintf_r+0x588>
   182e8:	0110                	addi	a2,sp,128
   182ea:	85a6                	mv	a1,s1
   182ec:	854a                	mv	a0,s2
   182ee:	efaff0ef          	jal	ra,179e8 <__ssprint_r>
   182f2:	dc0501e3          	beqz	a0,180b4 <_svfiprintf_r+0x588>
   182f6:	0104d783          	lhu	a5,16(s1)
   182fa:	0407f793          	andi	a5,a5,64
   182fe:	86079ae3          	bnez	a5,17b72 <_svfiprintf_r+0x46>
   18302:	70be                	ld	ra,488(sp)
   18304:	741e                	ld	s0,480(sp)
   18306:	855e                	mv	a0,s7
   18308:	64fe                	ld	s1,472(sp)
   1830a:	695e                	ld	s2,464(sp)
   1830c:	69be                	ld	s3,456(sp)
   1830e:	6a1e                	ld	s4,448(sp)
   18310:	7afa                	ld	s5,440(sp)
   18312:	7b5a                	ld	s6,432(sp)
   18314:	7bba                	ld	s7,424(sp)
   18316:	7c1a                	ld	s8,416(sp)
   18318:	6cfa                	ld	s9,408(sp)
   1831a:	6d5a                	ld	s10,400(sp)
   1831c:	6dba                	ld	s11,392(sp)
   1831e:	617d                	addi	sp,sp,496
   18320:	8082                	ret
   18322:	75c2                	ld	a1,48(sp)
   18324:	07c1                	addi	a5,a5,16
   18326:	01373423          	sd	s3,8(a4)
   1832a:	e30c                	sd	a1,0(a4)
   1832c:	e93e                	sd	a5,144(sp)
   1832e:	c536                	sw	a3,136(sp)
   18330:	0741                	addi	a4,a4,16
   18332:	00cd5963          	ble	a2,s10,18344 <_svfiprintf_r+0x818>
   18336:	0110                	addi	a2,sp,128
   18338:	85a6                	mv	a1,s1
   1833a:	854a                	mv	a0,s2
   1833c:	eacff0ef          	jal	ra,179e8 <__ssprint_r>
   18340:	f95d                	bnez	a0,182f6 <_svfiprintf_r+0x7ca>
   18342:	875a                	mv	a4,s6
   18344:	3441                	addiw	s0,s0,-16
   18346:	b749                	j	182c8 <_svfiprintf_r+0x79c>
   18348:	67ca                	ld	a5,144(sp)
   1834a:	d7d5                	beqz	a5,182f6 <_svfiprintf_r+0x7ca>
   1834c:	0110                	addi	a2,sp,128
   1834e:	85a6                	mv	a1,s1
   18350:	854a                	mv	a0,s2
   18352:	e96ff0ef          	jal	ra,179e8 <__ssprint_r>
   18356:	b745                	j	182f6 <_svfiprintf_r+0x7ca>

0000000000018358 <__swbuf_r>:
   18358:	7179                	addi	sp,sp,-48
   1835a:	f022                	sd	s0,32(sp)
   1835c:	ec26                	sd	s1,24(sp)
   1835e:	e84a                	sd	s2,16(sp)
   18360:	f406                	sd	ra,40(sp)
   18362:	e44e                	sd	s3,8(sp)
   18364:	892a                	mv	s2,a0
   18366:	84ae                	mv	s1,a1
   18368:	8432                	mv	s0,a2
   1836a:	c509                	beqz	a0,18374 <__swbuf_r+0x1c>
   1836c:	493c                	lw	a5,80(a0)
   1836e:	e399                	bnez	a5,18374 <__swbuf_r+0x1c>
   18370:	8e4fa0ef          	jal	ra,12454 <__sinit>
   18374:	541c                	lw	a5,40(s0)
   18376:	c45c                	sw	a5,12(s0)
   18378:	01045783          	lhu	a5,16(s0)
   1837c:	8ba1                	andi	a5,a5,8
   1837e:	c3ad                	beqz	a5,183e0 <__swbuf_r+0x88>
   18380:	6c1c                	ld	a5,24(s0)
   18382:	cfb9                	beqz	a5,183e0 <__swbuf_r+0x88>
   18384:	01041783          	lh	a5,16(s0)
   18388:	0ff4f993          	andi	s3,s1,255
   1838c:	84ce                	mv	s1,s3
   1838e:	03279713          	slli	a4,a5,0x32
   18392:	06075563          	bgez	a4,183fc <__swbuf_r+0xa4>
   18396:	6c1c                	ld	a5,24(s0)
   18398:	6008                	ld	a0,0(s0)
   1839a:	9d1d                	subw	a0,a0,a5
   1839c:	501c                	lw	a5,32(s0)
   1839e:	00f54763          	blt	a0,a5,183ac <__swbuf_r+0x54>
   183a2:	85a2                	mv	a1,s0
   183a4:	854a                	mv	a0,s2
   183a6:	f97f90ef          	jal	ra,1233c <_fflush_r>
   183aa:	e121                	bnez	a0,183ea <__swbuf_r+0x92>
   183ac:	445c                	lw	a5,12(s0)
   183ae:	2505                	addiw	a0,a0,1
   183b0:	37fd                	addiw	a5,a5,-1
   183b2:	c45c                	sw	a5,12(s0)
   183b4:	601c                	ld	a5,0(s0)
   183b6:	00178713          	addi	a4,a5,1
   183ba:	e018                	sd	a4,0(s0)
   183bc:	01378023          	sb	s3,0(a5)
   183c0:	501c                	lw	a5,32(s0)
   183c2:	00a78963          	beq	a5,a0,183d4 <__swbuf_r+0x7c>
   183c6:	01045783          	lhu	a5,16(s0)
   183ca:	8b85                	andi	a5,a5,1
   183cc:	c385                	beqz	a5,183ec <__swbuf_r+0x94>
   183ce:	47a9                	li	a5,10
   183d0:	00f49e63          	bne	s1,a5,183ec <__swbuf_r+0x94>
   183d4:	85a2                	mv	a1,s0
   183d6:	854a                	mv	a0,s2
   183d8:	f65f90ef          	jal	ra,1233c <_fflush_r>
   183dc:	c901                	beqz	a0,183ec <__swbuf_r+0x94>
   183de:	a031                	j	183ea <__swbuf_r+0x92>
   183e0:	85a2                	mv	a1,s0
   183e2:	854a                	mv	a0,s2
   183e4:	c0bf90ef          	jal	ra,11fee <__swsetup_r>
   183e8:	dd51                	beqz	a0,18384 <__swbuf_r+0x2c>
   183ea:	54fd                	li	s1,-1
   183ec:	70a2                	ld	ra,40(sp)
   183ee:	7402                	ld	s0,32(sp)
   183f0:	8526                	mv	a0,s1
   183f2:	6942                	ld	s2,16(sp)
   183f4:	64e2                	ld	s1,24(sp)
   183f6:	69a2                	ld	s3,8(sp)
   183f8:	6145                	addi	sp,sp,48
   183fa:	8082                	ret
   183fc:	6709                	lui	a4,0x2
   183fe:	8fd9                	or	a5,a5,a4
   18400:	00f41823          	sh	a5,16(s0)
   18404:	0ac42783          	lw	a5,172(s0)
   18408:	7779                	lui	a4,0xffffe
   1840a:	177d                	addi	a4,a4,-1
   1840c:	8ff9                	and	a5,a5,a4
   1840e:	0af42623          	sw	a5,172(s0)
   18412:	b751                	j	18396 <__swbuf_r+0x3e>

0000000000018414 <__swbuf>:
   18414:	862e                	mv	a2,a1
   18416:	85aa                	mv	a1,a0
   18418:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   1841c:	f3dff06f          	j	18358 <__swbuf_r>

0000000000018420 <_wcrtomb_r>:
   18420:	8301b783          	ld	a5,-2000(gp) # 1ca18 <_impure_ptr>
   18424:	7179                	addi	sp,sp,-48
   18426:	f022                	sd	s0,32(sp)
   18428:	ec26                	sd	s1,24(sp)
   1842a:	f406                	sd	ra,40(sp)
   1842c:	842a                	mv	s0,a0
   1842e:	84b6                	mv	s1,a3
   18430:	67bc                	ld	a5,72(a5)
   18432:	e985                	bnez	a1,18462 <_wcrtomb_r+0x42>
   18434:	e781                	bnez	a5,1843c <_wcrtomb_r+0x1c>
   18436:	67f5                	lui	a5,0x1d
   18438:	84078793          	addi	a5,a5,-1984 # 1c840 <__global_locale>
   1843c:	73fc                	ld	a5,224(a5)
   1843e:	86a6                	mv	a3,s1
   18440:	4601                	li	a2,0
   18442:	858a                	mv	a1,sp
   18444:	8522                	mv	a0,s0
   18446:	9782                	jalr	a5
   18448:	57fd                	li	a5,-1
   1844a:	00f51763          	bne	a0,a5,18458 <_wcrtomb_r+0x38>
   1844e:	0004a023          	sw	zero,0(s1)
   18452:	08a00793          	li	a5,138
   18456:	c01c                	sw	a5,0(s0)
   18458:	70a2                	ld	ra,40(sp)
   1845a:	7402                	ld	s0,32(sp)
   1845c:	64e2                	ld	s1,24(sp)
   1845e:	6145                	addi	sp,sp,48
   18460:	8082                	ret
   18462:	e781                	bnez	a5,1846a <_wcrtomb_r+0x4a>
   18464:	67f5                	lui	a5,0x1d
   18466:	84078793          	addi	a5,a5,-1984 # 1c840 <__global_locale>
   1846a:	73fc                	ld	a5,224(a5)
   1846c:	86a6                	mv	a3,s1
   1846e:	bfd9                	j	18444 <_wcrtomb_r+0x24>

0000000000018470 <wcrtomb>:
   18470:	86b2                	mv	a3,a2
   18472:	862e                	mv	a2,a1
   18474:	85aa                	mv	a1,a0
   18476:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   1847a:	fa7ff06f          	j	18420 <_wcrtomb_r>

000000000001847e <_close>:
   1847e:	1141                	addi	sp,sp,-16
   18480:	e406                	sd	ra,8(sp)
   18482:	e022                	sd	s0,0(sp)
   18484:	4581                	li	a1,0
   18486:	4601                	li	a2,0
   18488:	4681                	li	a3,0
   1848a:	4701                	li	a4,0
   1848c:	4781                	li	a5,0
   1848e:	03900893          	li	a7,57
   18492:	00000073          	ecall
   18496:	842a                	mv	s0,a0
   18498:	00055863          	bgez	a0,184a8 <_close+0x2a>
   1849c:	4080043b          	negw	s0,s0
   184a0:	1f8000ef          	jal	ra,18698 <__errno>
   184a4:	c100                	sw	s0,0(a0)
   184a6:	547d                	li	s0,-1
   184a8:	0004051b          	sext.w	a0,s0
   184ac:	60a2                	ld	ra,8(sp)
   184ae:	6402                	ld	s0,0(sp)
   184b0:	0141                	addi	sp,sp,16
   184b2:	8082                	ret

00000000000184b4 <_exit>:
   184b4:	4581                	li	a1,0
   184b6:	4601                	li	a2,0
   184b8:	4681                	li	a3,0
   184ba:	4701                	li	a4,0
   184bc:	4781                	li	a5,0
   184be:	05d00893          	li	a7,93
   184c2:	00000073          	ecall
   184c6:	00055c63          	bgez	a0,184de <_exit+0x2a>
   184ca:	1141                	addi	sp,sp,-16
   184cc:	e022                	sd	s0,0(sp)
   184ce:	842a                	mv	s0,a0
   184d0:	e406                	sd	ra,8(sp)
   184d2:	4080043b          	negw	s0,s0
   184d6:	1c2000ef          	jal	ra,18698 <__errno>
   184da:	c100                	sw	s0,0(a0)
   184dc:	a001                	j	184dc <_exit+0x28>
   184de:	a001                	j	184de <_exit+0x2a>

00000000000184e0 <_fstat>:
   184e0:	7135                	addi	sp,sp,-160
   184e2:	e526                	sd	s1,136(sp)
   184e4:	ed06                	sd	ra,152(sp)
   184e6:	84ae                	mv	s1,a1
   184e8:	e922                	sd	s0,144(sp)
   184ea:	858a                	mv	a1,sp
   184ec:	4601                	li	a2,0
   184ee:	4681                	li	a3,0
   184f0:	4701                	li	a4,0
   184f2:	4781                	li	a5,0
   184f4:	05000893          	li	a7,80
   184f8:	00000073          	ecall
   184fc:	842a                	mv	s0,a0
   184fe:	00055863          	bgez	a0,1850e <_fstat+0x2e>
   18502:	4080043b          	negw	s0,s0
   18506:	192000ef          	jal	ra,18698 <__errno>
   1850a:	c100                	sw	s0,0(a0)
   1850c:	547d                	li	s0,-1
   1850e:	8526                	mv	a0,s1
   18510:	858a                	mv	a1,sp
   18512:	144000ef          	jal	ra,18656 <_conv_stat>
   18516:	0004051b          	sext.w	a0,s0
   1851a:	60ea                	ld	ra,152(sp)
   1851c:	644a                	ld	s0,144(sp)
   1851e:	64aa                	ld	s1,136(sp)
   18520:	610d                	addi	sp,sp,160
   18522:	8082                	ret

0000000000018524 <_isatty>:
   18524:	7119                	addi	sp,sp,-128
   18526:	002c                	addi	a1,sp,8
   18528:	fc86                	sd	ra,120(sp)
   1852a:	fb7ff0ef          	jal	ra,184e0 <_fstat>
   1852e:	57fd                	li	a5,-1
   18530:	00f50663          	beq	a0,a5,1853c <_isatty+0x18>
   18534:	4532                	lw	a0,12(sp)
   18536:	40d5551b          	sraiw	a0,a0,0xd
   1853a:	8905                	andi	a0,a0,1
   1853c:	70e6                	ld	ra,120(sp)
   1853e:	6109                	addi	sp,sp,128
   18540:	8082                	ret

0000000000018542 <_lseek>:
   18542:	1141                	addi	sp,sp,-16
   18544:	e406                	sd	ra,8(sp)
   18546:	e022                	sd	s0,0(sp)
   18548:	4681                	li	a3,0
   1854a:	4701                	li	a4,0
   1854c:	4781                	li	a5,0
   1854e:	03e00893          	li	a7,62
   18552:	00000073          	ecall
   18556:	842a                	mv	s0,a0
   18558:	00055863          	bgez	a0,18568 <_lseek+0x26>
   1855c:	4080043b          	negw	s0,s0
   18560:	138000ef          	jal	ra,18698 <__errno>
   18564:	c100                	sw	s0,0(a0)
   18566:	547d                	li	s0,-1
   18568:	8522                	mv	a0,s0
   1856a:	60a2                	ld	ra,8(sp)
   1856c:	6402                	ld	s0,0(sp)
   1856e:	0141                	addi	sp,sp,16
   18570:	8082                	ret

0000000000018572 <_read>:
   18572:	1141                	addi	sp,sp,-16
   18574:	e406                	sd	ra,8(sp)
   18576:	e022                	sd	s0,0(sp)
   18578:	4681                	li	a3,0
   1857a:	4701                	li	a4,0
   1857c:	4781                	li	a5,0
   1857e:	03f00893          	li	a7,63
   18582:	00000073          	ecall
   18586:	842a                	mv	s0,a0
   18588:	00055863          	bgez	a0,18598 <_read+0x26>
   1858c:	4080043b          	negw	s0,s0
   18590:	108000ef          	jal	ra,18698 <__errno>
   18594:	c100                	sw	s0,0(a0)
   18596:	547d                	li	s0,-1
   18598:	8522                	mv	a0,s0
   1859a:	60a2                	ld	ra,8(sp)
   1859c:	6402                	ld	s0,0(sp)
   1859e:	0141                	addi	sp,sp,16
   185a0:	8082                	ret

00000000000185a2 <_sbrk>:
   185a2:	1101                	addi	sp,sp,-32
   185a4:	e822                	sd	s0,16(sp)
   185a6:	8681b783          	ld	a5,-1944(gp) # 1ca50 <heap_end.2510>
   185aa:	e04a                	sd	s2,0(sp)
   185ac:	ec06                	sd	ra,24(sp)
   185ae:	e426                	sd	s1,8(sp)
   185b0:	892a                	mv	s2,a0
   185b2:	eb9d                	bnez	a5,185e8 <_sbrk+0x46>
   185b4:	4501                	li	a0,0
   185b6:	4581                	li	a1,0
   185b8:	4601                	li	a2,0
   185ba:	4681                	li	a3,0
   185bc:	4701                	li	a4,0
   185be:	0d600893          	li	a7,214
   185c2:	00000073          	ecall
   185c6:	84aa                	mv	s1,a0
   185c8:	00055e63          	bgez	a0,185e4 <_sbrk+0x42>
   185cc:	0cc000ef          	jal	ra,18698 <__errno>
   185d0:	409004bb          	negw	s1,s1
   185d4:	c104                	sw	s1,0(a0)
   185d6:	557d                	li	a0,-1
   185d8:	60e2                	ld	ra,24(sp)
   185da:	6442                	ld	s0,16(sp)
   185dc:	64a2                	ld	s1,8(sp)
   185de:	6902                	ld	s2,0(sp)
   185e0:	6105                	addi	sp,sp,32
   185e2:	8082                	ret
   185e4:	86a1b423          	sd	a0,-1944(gp) # 1ca50 <heap_end.2510>
   185e8:	8681b503          	ld	a0,-1944(gp) # 1ca50 <heap_end.2510>
   185ec:	4581                	li	a1,0
   185ee:	4601                	li	a2,0
   185f0:	954a                	add	a0,a0,s2
   185f2:	4681                	li	a3,0
   185f4:	4701                	li	a4,0
   185f6:	4781                	li	a5,0
   185f8:	0d600893          	li	a7,214
   185fc:	00000073          	ecall
   18600:	84aa                	mv	s1,a0
   18602:	00055863          	bgez	a0,18612 <_sbrk+0x70>
   18606:	409004bb          	negw	s1,s1
   1860a:	08e000ef          	jal	ra,18698 <__errno>
   1860e:	c104                	sw	s1,0(a0)
   18610:	54fd                	li	s1,-1
   18612:	8681b783          	ld	a5,-1944(gp) # 1ca50 <heap_end.2510>
   18616:	557d                	li	a0,-1
   18618:	993e                	add	s2,s2,a5
   1861a:	fb249fe3          	bne	s1,s2,185d8 <_sbrk+0x36>
   1861e:	8691b423          	sd	s1,-1944(gp) # 1ca50 <heap_end.2510>
   18622:	853e                	mv	a0,a5
   18624:	bf55                	j	185d8 <_sbrk+0x36>

0000000000018626 <_write>:
   18626:	1141                	addi	sp,sp,-16
   18628:	e406                	sd	ra,8(sp)
   1862a:	e022                	sd	s0,0(sp)
   1862c:	4681                	li	a3,0
   1862e:	4701                	li	a4,0
   18630:	4781                	li	a5,0
   18632:	04000893          	li	a7,64
   18636:	00000073          	ecall
   1863a:	842a                	mv	s0,a0
   1863c:	00055863          	bgez	a0,1864c <_write+0x26>
   18640:	4080043b          	negw	s0,s0
   18644:	054000ef          	jal	ra,18698 <__errno>
   18648:	c100                	sw	s0,0(a0)
   1864a:	547d                	li	s0,-1
   1864c:	8522                	mv	a0,s0
   1864e:	60a2                	ld	ra,8(sp)
   18650:	6402                	ld	s0,0(sp)
   18652:	0141                	addi	sp,sp,16
   18654:	8082                	ret

0000000000018656 <_conv_stat>:
   18656:	619c                	ld	a5,0(a1)
   18658:	00f51023          	sh	a5,0(a0)
   1865c:	659c                	ld	a5,8(a1)
   1865e:	00f51123          	sh	a5,2(a0)
   18662:	499c                	lw	a5,16(a1)
   18664:	c15c                	sw	a5,4(a0)
   18666:	49dc                	lw	a5,20(a1)
   18668:	00f51423          	sh	a5,8(a0)
   1866c:	4d9c                	lw	a5,24(a1)
   1866e:	00f51523          	sh	a5,10(a0)
   18672:	4ddc                	lw	a5,28(a1)
   18674:	00f51623          	sh	a5,12(a0)
   18678:	719c                	ld	a5,32(a1)
   1867a:	00f51723          	sh	a5,14(a0)
   1867e:	799c                	ld	a5,48(a1)
   18680:	e91c                	sd	a5,16(a0)
   18682:	61bc                	ld	a5,64(a1)
   18684:	e93c                	sd	a5,80(a0)
   18686:	5d9c                	lw	a5,56(a1)
   18688:	e53c                	sd	a5,72(a0)
   1868a:	65bc                	ld	a5,72(a1)
   1868c:	ed1c                	sd	a5,24(a0)
   1868e:	6dbc                	ld	a5,88(a1)
   18690:	f51c                	sd	a5,40(a0)
   18692:	75bc                	ld	a5,104(a1)
   18694:	fd1c                	sd	a5,56(a0)
   18696:	8082                	ret

0000000000018698 <__errno>:
   18698:	8301b503          	ld	a0,-2000(gp) # 1ca18 <_impure_ptr>
   1869c:	8082                	ret

000000000001869e <__eqtf2>:
   1869e:	1141                	addi	sp,sp,-16
   186a0:	002027f3          	frrm	a5
   186a4:	6721                	lui	a4,0x8
   186a6:	0305d893          	srli	a7,a1,0x30
   186aa:	177d                	addi	a4,a4,-1
   186ac:	57fd                	li	a5,-1
   186ae:	83c1                	srli	a5,a5,0x10
   186b0:	0306d313          	srli	t1,a3,0x30
   186b4:	00e8f8b3          	and	a7,a7,a4
   186b8:	00f5f833          	and	a6,a1,a5
   186bc:	00e37333          	and	t1,t1,a4
   186c0:	8ff5                	and	a5,a5,a3
   186c2:	91fd                	srli	a1,a1,0x3f
   186c4:	92fd                	srli	a3,a3,0x3f
   186c6:	00e89963          	bne	a7,a4,186d8 <__eqtf2+0x3a>
   186ca:	00a86733          	or	a4,a6,a0
   186ce:	ef11                	bnez	a4,186ea <__eqtf2+0x4c>
   186d0:	4705                	li	a4,1
   186d2:	07131063          	bne	t1,a7,18732 <__eqtf2+0x94>
   186d6:	a019                	j	186dc <__eqtf2+0x3e>
   186d8:	02e31e63          	bne	t1,a4,18714 <__eqtf2+0x76>
   186dc:	00c7e733          	or	a4,a5,a2
   186e0:	cb15                	beqz	a4,18714 <__eqtf2+0x76>
   186e2:	6721                	lui	a4,0x8
   186e4:	177d                	addi	a4,a4,-1
   186e6:	00e89e63          	bne	a7,a4,18702 <__eqtf2+0x64>
   186ea:	00a86533          	or	a0,a6,a0
   186ee:	c509                	beqz	a0,186f8 <__eqtf2+0x5a>
   186f0:	02f85813          	srli	a6,a6,0x2f
   186f4:	04080363          	beqz	a6,1873a <__eqtf2+0x9c>
   186f8:	6721                	lui	a4,0x8
   186fa:	177d                	addi	a4,a4,-1
   186fc:	4505                	li	a0,1
   186fe:	00e31963          	bne	t1,a4,18710 <__eqtf2+0x72>
   18702:	8e5d                	or	a2,a2,a5
   18704:	4505                	li	a0,1
   18706:	c609                	beqz	a2,18710 <__eqtf2+0x72>
   18708:	02f51713          	slli	a4,a0,0x2f
   1870c:	8ff9                	and	a5,a5,a4
   1870e:	c795                	beqz	a5,1873a <__eqtf2+0x9c>
   18710:	0141                	addi	sp,sp,16
   18712:	8082                	ret
   18714:	4705                	li	a4,1
   18716:	00689e63          	bne	a7,t1,18732 <__eqtf2+0x94>
   1871a:	00f81c63          	bne	a6,a5,18732 <__eqtf2+0x94>
   1871e:	00c51a63          	bne	a0,a2,18732 <__eqtf2+0x94>
   18722:	00d58a63          	beq	a1,a3,18736 <__eqtf2+0x98>
   18726:	00089663          	bnez	a7,18732 <__eqtf2+0x94>
   1872a:	00a86533          	or	a0,a6,a0
   1872e:	00a03733          	snez	a4,a0
   18732:	853a                	mv	a0,a4
   18734:	bff1                	j	18710 <__eqtf2+0x72>
   18736:	4701                	li	a4,0
   18738:	bfed                	j	18732 <__eqtf2+0x94>
   1873a:	00186073          	csrsi	fflags,16
   1873e:	4505                	li	a0,1
   18740:	bfc1                	j	18710 <__eqtf2+0x72>

0000000000018742 <__getf2>:
   18742:	1141                	addi	sp,sp,-16
   18744:	002027f3          	frrm	a5
   18748:	68a1                	lui	a7,0x8
   1874a:	0305d713          	srli	a4,a1,0x30
   1874e:	18fd                	addi	a7,a7,-1
   18750:	57fd                	li	a5,-1
   18752:	83c1                	srli	a5,a5,0x10
   18754:	0306d813          	srli	a6,a3,0x30
   18758:	01177733          	and	a4,a4,a7
   1875c:	00f5f333          	and	t1,a1,a5
   18760:	01187833          	and	a6,a6,a7
   18764:	8ff5                	and	a5,a5,a3
   18766:	91fd                	srli	a1,a1,0x3f
   18768:	92fd                	srli	a3,a3,0x3f
   1876a:	01171a63          	bne	a4,a7,1877e <__getf2+0x3c>
   1876e:	00a368b3          	or	a7,t1,a0
   18772:	08088463          	beqz	a7,187fa <__getf2+0xb8>
   18776:	00186073          	csrsi	fflags,16
   1877a:	57f9                	li	a5,-2
   1877c:	a089                	j	187be <__getf2+0x7c>
   1877e:	01181c63          	bne	a6,a7,18796 <__getf2+0x54>
   18782:	00c7e8b3          	or	a7,a5,a2
   18786:	fe0898e3          	bnez	a7,18776 <__getf2+0x34>
   1878a:	e31d                	bnez	a4,187b0 <__getf2+0x6e>
   1878c:	00a368b3          	or	a7,t1,a0
   18790:	0018b893          	seqz	a7,a7
   18794:	a821                	j	187ac <__getf2+0x6a>
   18796:	e725                	bnez	a4,187fe <__getf2+0xbc>
   18798:	00a368b3          	or	a7,t1,a0
   1879c:	0018b893          	seqz	a7,a7
   187a0:	00081663          	bnez	a6,187ac <__getf2+0x6a>
   187a4:	00c7ee33          	or	t3,a5,a2
   187a8:	040e0563          	beqz	t3,187f2 <__getf2+0xb0>
   187ac:	00089c63          	bnez	a7,187c4 <__getf2+0x82>
   187b0:	00d59463          	bne	a1,a3,187b8 <__getf2+0x76>
   187b4:	00e85c63          	ble	a4,a6,187cc <__getf2+0x8a>
   187b8:	4785                	li	a5,1
   187ba:	c191                	beqz	a1,187be <__getf2+0x7c>
   187bc:	57fd                	li	a5,-1
   187be:	853e                	mv	a0,a5
   187c0:	0141                	addi	sp,sp,16
   187c2:	8082                	ret
   187c4:	57fd                	li	a5,-1
   187c6:	dee5                	beqz	a3,187be <__getf2+0x7c>
   187c8:	4785                	li	a5,1
   187ca:	bfd5                	j	187be <__getf2+0x7c>
   187cc:	01075563          	ble	a6,a4,187d6 <__getf2+0x94>
   187d0:	57fd                	li	a5,-1
   187d2:	f9fd                	bnez	a1,187c8 <__getf2+0x86>
   187d4:	b7ed                	j	187be <__getf2+0x7c>
   187d6:	fe67e1e3          	bltu	a5,t1,187b8 <__getf2+0x76>
   187da:	00f31863          	bne	t1,a5,187ea <__getf2+0xa8>
   187de:	fca66de3          	bltu	a2,a0,187b8 <__getf2+0x76>
   187e2:	4781                	li	a5,0
   187e4:	fcc57de3          	bleu	a2,a0,187be <__getf2+0x7c>
   187e8:	b7e5                	j	187d0 <__getf2+0x8e>
   187ea:	fef363e3          	bltu	t1,a5,187d0 <__getf2+0x8e>
   187ee:	4781                	li	a5,0
   187f0:	b7f9                	j	187be <__getf2+0x7c>
   187f2:	4781                	li	a5,0
   187f4:	fc0895e3          	bnez	a7,187be <__getf2+0x7c>
   187f8:	b7c1                	j	187b8 <__getf2+0x76>
   187fa:	f8e804e3          	beq	a6,a4,18782 <__getf2+0x40>
   187fe:	4881                	li	a7,0
   18800:	fa0802e3          	beqz	a6,187a4 <__getf2+0x62>
   18804:	b775                	j	187b0 <__getf2+0x6e>

0000000000018806 <__letf2>:
   18806:	1141                	addi	sp,sp,-16
   18808:	002027f3          	frrm	a5
   1880c:	68a1                	lui	a7,0x8
   1880e:	0305d713          	srli	a4,a1,0x30
   18812:	18fd                	addi	a7,a7,-1
   18814:	57fd                	li	a5,-1
   18816:	83c1                	srli	a5,a5,0x10
   18818:	0306d813          	srli	a6,a3,0x30
   1881c:	01177733          	and	a4,a4,a7
   18820:	00f5f333          	and	t1,a1,a5
   18824:	01187833          	and	a6,a6,a7
   18828:	8ff5                	and	a5,a5,a3
   1882a:	91fd                	srli	a1,a1,0x3f
   1882c:	92fd                	srli	a3,a3,0x3f
   1882e:	01171a63          	bne	a4,a7,18842 <__letf2+0x3c>
   18832:	00a368b3          	or	a7,t1,a0
   18836:	08088463          	beqz	a7,188be <__letf2+0xb8>
   1883a:	00186073          	csrsi	fflags,16
   1883e:	4789                	li	a5,2
   18840:	a089                	j	18882 <__letf2+0x7c>
   18842:	01181c63          	bne	a6,a7,1885a <__letf2+0x54>
   18846:	00c7e8b3          	or	a7,a5,a2
   1884a:	fe0898e3          	bnez	a7,1883a <__letf2+0x34>
   1884e:	e31d                	bnez	a4,18874 <__letf2+0x6e>
   18850:	00a368b3          	or	a7,t1,a0
   18854:	0018b893          	seqz	a7,a7
   18858:	a821                	j	18870 <__letf2+0x6a>
   1885a:	e725                	bnez	a4,188c2 <__letf2+0xbc>
   1885c:	00a368b3          	or	a7,t1,a0
   18860:	0018b893          	seqz	a7,a7
   18864:	00081663          	bnez	a6,18870 <__letf2+0x6a>
   18868:	00c7ee33          	or	t3,a5,a2
   1886c:	040e0563          	beqz	t3,188b6 <__letf2+0xb0>
   18870:	00089c63          	bnez	a7,18888 <__letf2+0x82>
   18874:	00d59463          	bne	a1,a3,1887c <__letf2+0x76>
   18878:	00e85c63          	ble	a4,a6,18890 <__letf2+0x8a>
   1887c:	4785                	li	a5,1
   1887e:	c191                	beqz	a1,18882 <__letf2+0x7c>
   18880:	57fd                	li	a5,-1
   18882:	853e                	mv	a0,a5
   18884:	0141                	addi	sp,sp,16
   18886:	8082                	ret
   18888:	57fd                	li	a5,-1
   1888a:	dee5                	beqz	a3,18882 <__letf2+0x7c>
   1888c:	4785                	li	a5,1
   1888e:	bfd5                	j	18882 <__letf2+0x7c>
   18890:	01075563          	ble	a6,a4,1889a <__letf2+0x94>
   18894:	57fd                	li	a5,-1
   18896:	f9fd                	bnez	a1,1888c <__letf2+0x86>
   18898:	b7ed                	j	18882 <__letf2+0x7c>
   1889a:	fe67e1e3          	bltu	a5,t1,1887c <__letf2+0x76>
   1889e:	00f31863          	bne	t1,a5,188ae <__letf2+0xa8>
   188a2:	fca66de3          	bltu	a2,a0,1887c <__letf2+0x76>
   188a6:	4781                	li	a5,0
   188a8:	fcc57de3          	bleu	a2,a0,18882 <__letf2+0x7c>
   188ac:	b7e5                	j	18894 <__letf2+0x8e>
   188ae:	fef363e3          	bltu	t1,a5,18894 <__letf2+0x8e>
   188b2:	4781                	li	a5,0
   188b4:	b7f9                	j	18882 <__letf2+0x7c>
   188b6:	4781                	li	a5,0
   188b8:	fc0895e3          	bnez	a7,18882 <__letf2+0x7c>
   188bc:	b7c1                	j	1887c <__letf2+0x76>
   188be:	f8e804e3          	beq	a6,a4,18846 <__letf2+0x40>
   188c2:	4881                	li	a7,0
   188c4:	fa0802e3          	beqz	a6,18868 <__letf2+0x62>
   188c8:	b775                	j	18874 <__letf2+0x6e>

00000000000188ca <__multf3>:
   188ca:	7159                	addi	sp,sp,-112
   188cc:	f85a                	sd	s6,48(sp)
   188ce:	ec66                	sd	s9,24(sp)
   188d0:	f486                	sd	ra,104(sp)
   188d2:	f0a2                	sd	s0,96(sp)
   188d4:	eca6                	sd	s1,88(sp)
   188d6:	e8ca                	sd	s2,80(sp)
   188d8:	e4ce                	sd	s3,72(sp)
   188da:	e0d2                	sd	s4,64(sp)
   188dc:	fc56                	sd	s5,56(sp)
   188de:	f45e                	sd	s7,40(sp)
   188e0:	f062                	sd	s8,32(sp)
   188e2:	8cb2                	mv	s9,a2
   188e4:	8b36                	mv	s6,a3
   188e6:	00202af3          	frrm	s5
   188ea:	57fd                	li	a5,-1
   188ec:	83c1                	srli	a5,a5,0x10
   188ee:	00f5f933          	and	s2,a1,a5
   188f2:	67a1                	lui	a5,0x8
   188f4:	0305da13          	srli	s4,a1,0x30
   188f8:	17fd                	addi	a5,a5,-1
   188fa:	00fa76b3          	and	a3,s4,a5
   188fe:	00068a1b          	sext.w	s4,a3
   18902:	2a81                	sext.w	s5,s5
   18904:	03f5db93          	srli	s7,a1,0x3f
   18908:	020a0663          	beqz	s4,18934 <__multf3+0x6a>
   1890c:	842a                	mv	s0,a0
   1890e:	08fa0463          	beq	s4,a5,18996 <__multf3+0xcc>
   18912:	4585                	li	a1,1
   18914:	03d55613          	srli	a2,a0,0x3d
   18918:	15ce                	slli	a1,a1,0x33
   1891a:	7a71                	lui	s4,0xffffc
   1891c:	00391793          	slli	a5,s2,0x3
   18920:	8e4d                	or	a2,a2,a1
   18922:	0a05                	addi	s4,s4,1
   18924:	00f66933          	or	s2,a2,a5
   18928:	00351413          	slli	s0,a0,0x3
   1892c:	9a36                	add	s4,s4,a3
   1892e:	4c01                	li	s8,0
   18930:	4481                	li	s1,0
   18932:	a89d                	j	189a8 <__multf3+0xde>
   18934:	00a967b3          	or	a5,s2,a0
   18938:	84aa                	mv	s1,a0
   1893a:	cfe1                	beqz	a5,18a12 <__multf3+0x148>
   1893c:	04090163          	beqz	s2,1897e <__multf3+0xb4>
   18940:	854a                	mv	a0,s2
   18942:	214010ef          	jal	ra,19b56 <__clzdi2>
   18946:	2501                	sext.w	a0,a0
   18948:	ff150793          	addi	a5,a0,-15
   1894c:	03c00713          	li	a4,60
   18950:	0007861b          	sext.w	a2,a5
   18954:	02f74b63          	blt	a4,a5,1898a <__multf3+0xc0>
   18958:	03d00593          	li	a1,61
   1895c:	0036041b          	addiw	s0,a2,3
   18960:	40c5863b          	subw	a2,a1,a2
   18964:	008917b3          	sll	a5,s2,s0
   18968:	00c4d633          	srl	a2,s1,a2
   1896c:	00f66933          	or	s2,a2,a5
   18970:	00849433          	sll	s0,s1,s0
   18974:	7a71                	lui	s4,0xffffc
   18976:	0a45                	addi	s4,s4,17
   18978:	40aa0a33          	sub	s4,s4,a0
   1897c:	bf4d                	j	1892e <__multf3+0x64>
   1897e:	1d8010ef          	jal	ra,19b56 <__clzdi2>
   18982:	2501                	sext.w	a0,a0
   18984:	04050513          	addi	a0,a0,64
   18988:	b7c1                	j	18948 <__multf3+0x7e>
   1898a:	fc36079b          	addiw	a5,a2,-61
   1898e:	00f49933          	sll	s2,s1,a5
   18992:	4401                	li	s0,0
   18994:	b7c5                	j	18974 <__multf3+0xaa>
   18996:	00a967b3          	or	a5,s2,a0
   1899a:	c3c9                	beqz	a5,18a1c <__multf3+0x152>
   1899c:	01091793          	slli	a5,s2,0x10
   189a0:	4c0d                	li	s8,3
   189a2:	44c1                	li	s1,16
   189a4:	f807c6e3          	bltz	a5,18930 <__multf3+0x66>
   189a8:	6621                	lui	a2,0x8
   189aa:	030b5513          	srli	a0,s6,0x30
   189ae:	167d                	addi	a2,a2,-1
   189b0:	59fd                	li	s3,-1
   189b2:	00c577b3          	and	a5,a0,a2
   189b6:	e45a                	sd	s6,8(sp)
   189b8:	0109d993          	srli	s3,s3,0x10
   189bc:	0007851b          	sext.w	a0,a5
   189c0:	013b79b3          	and	s3,s6,s3
   189c4:	8766                	mv	a4,s9
   189c6:	03fb5b13          	srli	s6,s6,0x3f
   189ca:	cd29                	beqz	a0,18a24 <__multf3+0x15a>
   189cc:	0ac50d63          	beq	a0,a2,18a86 <__multf3+0x1bc>
   189d0:	4605                	li	a2,1
   189d2:	03dcd693          	srli	a3,s9,0x3d
   189d6:	164e                	slli	a2,a2,0x33
   189d8:	7571                	lui	a0,0xffffc
   189da:	098e                	slli	s3,s3,0x3
   189dc:	8ed1                	or	a3,a3,a2
   189de:	0505                	addi	a0,a0,1
   189e0:	0136e9b3          	or	s3,a3,s3
   189e4:	003c9713          	slli	a4,s9,0x3
   189e8:	953e                	add	a0,a0,a5
   189ea:	4681                	li	a3,0
   189ec:	002c1793          	slli	a5,s8,0x2
   189f0:	8fd5                	or	a5,a5,a3
   189f2:	9a2a                	add	s4,s4,a0
   189f4:	17fd                	addi	a5,a5,-1
   189f6:	4639                	li	a2,14
   189f8:	016bc833          	xor	a6,s7,s6
   189fc:	001a0893          	addi	a7,s4,1 # ffffffffffffc001 <__global_pointer$+0xfffffffffffdee19>
   18a00:	0cf66963          	bltu	a2,a5,18ad2 <__multf3+0x208>
   18a04:	6669                	lui	a2,0x1a
   18a06:	078a                	slli	a5,a5,0x2
   18a08:	79060613          	addi	a2,a2,1936 # 1a790 <zeroes.4403+0x10>
   18a0c:	97b2                	add	a5,a5,a2
   18a0e:	439c                	lw	a5,0(a5)
   18a10:	8782                	jr	a5
   18a12:	4901                	li	s2,0
   18a14:	4401                	li	s0,0
   18a16:	4a01                	li	s4,0
   18a18:	4c05                	li	s8,1
   18a1a:	bf19                	j	18930 <__multf3+0x66>
   18a1c:	4901                	li	s2,0
   18a1e:	4401                	li	s0,0
   18a20:	4c09                	li	s8,2
   18a22:	b739                	j	18930 <__multf3+0x66>
   18a24:	0199e7b3          	or	a5,s3,s9
   18a28:	cbad                	beqz	a5,18a9a <__multf3+0x1d0>
   18a2a:	04098163          	beqz	s3,18a6c <__multf3+0x1a2>
   18a2e:	854e                	mv	a0,s3
   18a30:	126010ef          	jal	ra,19b56 <__clzdi2>
   18a34:	2501                	sext.w	a0,a0
   18a36:	ff150713          	addi	a4,a0,-15 # ffffffffffffbff1 <__global_pointer$+0xfffffffffffdee09>
   18a3a:	03c00693          	li	a3,60
   18a3e:	0007079b          	sext.w	a5,a4
   18a42:	02e6cc63          	blt	a3,a4,18a7a <__multf3+0x1b0>
   18a46:	03d00693          	li	a3,61
   18a4a:	0037871b          	addiw	a4,a5,3
   18a4e:	40f687bb          	subw	a5,a3,a5
   18a52:	00e999b3          	sll	s3,s3,a4
   18a56:	00fcd7b3          	srl	a5,s9,a5
   18a5a:	0137e9b3          	or	s3,a5,s3
   18a5e:	00ec9733          	sll	a4,s9,a4
   18a62:	77f1                	lui	a5,0xffffc
   18a64:	07c5                	addi	a5,a5,17
   18a66:	40a78533          	sub	a0,a5,a0
   18a6a:	b741                	j	189ea <__multf3+0x120>
   18a6c:	8566                	mv	a0,s9
   18a6e:	0e8010ef          	jal	ra,19b56 <__clzdi2>
   18a72:	2501                	sext.w	a0,a0
   18a74:	04050513          	addi	a0,a0,64
   18a78:	bf7d                	j	18a36 <__multf3+0x16c>
   18a7a:	fc37899b          	addiw	s3,a5,-61
   18a7e:	013c99b3          	sll	s3,s9,s3
   18a82:	4701                	li	a4,0
   18a84:	bff9                	j	18a62 <__multf3+0x198>
   18a86:	0199e7b3          	or	a5,s3,s9
   18a8a:	cf89                	beqz	a5,18aa4 <__multf3+0x1da>
   18a8c:	01099793          	slli	a5,s3,0x10
   18a90:	468d                	li	a3,3
   18a92:	f407cde3          	bltz	a5,189ec <__multf3+0x122>
   18a96:	44c1                	li	s1,16
   18a98:	bf91                	j	189ec <__multf3+0x122>
   18a9a:	4981                	li	s3,0
   18a9c:	4701                	li	a4,0
   18a9e:	4501                	li	a0,0
   18aa0:	4685                	li	a3,1
   18aa2:	b7a9                	j	189ec <__multf3+0x122>
   18aa4:	4981                	li	s3,0
   18aa6:	4701                	li	a4,0
   18aa8:	4689                	li	a3,2
   18aaa:	b789                	j	189ec <__multf3+0x122>
   18aac:	4785                	li	a5,1
   18aae:	02f79913          	slli	s2,a5,0x2f
   18ab2:	4401                	li	s0,0
   18ab4:	4801                	li	a6,0
   18ab6:	4c0d                	li	s8,3
   18ab8:	4789                	li	a5,2
   18aba:	44fc0663          	beq	s8,a5,18f06 <__multf3+0x63c>
   18abe:	478d                	li	a5,3
   18ac0:	42fc0263          	beq	s8,a5,18ee4 <__multf3+0x61a>
   18ac4:	4785                	li	a5,1
   18ac6:	1afc1d63          	bne	s8,a5,18c80 <__multf3+0x3b6>
   18aca:	4701                	li	a4,0
   18acc:	4501                	li	a0,0
   18ace:	4781                	li	a5,0
   18ad0:	ac25                	j	18d08 <__multf3+0x43e>
   18ad2:	57fd                	li	a5,-1
   18ad4:	9381                	srli	a5,a5,0x20
   18ad6:	00890333          	add	t1,s2,s0
   18ada:	01370e33          	add	t3,a4,s3
   18ade:	02045e93          	srli	t4,s0,0x20
   18ae2:	02075693          	srli	a3,a4,0x20
   18ae6:	00833f33          	sltu	t5,t1,s0
   18aea:	00ee3fb3          	sltu	t6,t3,a4
   18aee:	8c7d                	and	s0,s0,a5
   18af0:	8f7d                	and	a4,a4,a5
   18af2:	028705b3          	mul	a1,a4,s0
   18af6:	000f029b          	sext.w	t0,t5
   18afa:	000f839b          	sext.w	t2,t6
   18afe:	02ee8733          	mul	a4,t4,a4
   18b02:	02de87b3          	mul	a5,t4,a3
   18b06:	028686b3          	mul	a3,a3,s0
   18b0a:	0205d413          	srli	s0,a1,0x20
   18b0e:	96ba                	add	a3,a3,a4
   18b10:	9436                	add	s0,s0,a3
   18b12:	00e47563          	bleu	a4,s0,18b1c <__multf3+0x252>
   18b16:	4705                	li	a4,1
   18b18:	1702                	slli	a4,a4,0x20
   18b1a:	97ba                	add	a5,a5,a4
   18b1c:	577d                	li	a4,-1
   18b1e:	9301                	srli	a4,a4,0x20
   18b20:	02045e93          	srli	t4,s0,0x20
   18b24:	00e47633          	and	a2,s0,a4
   18b28:	8df9                	and	a1,a1,a4
   18b2a:	02035513          	srli	a0,t1,0x20
   18b2e:	020e5693          	srli	a3,t3,0x20
   18b32:	9ebe                	add	t4,t4,a5
   18b34:	00e377b3          	and	a5,t1,a4
   18b38:	00ee7733          	and	a4,t3,a4
   18b3c:	02e78433          	mul	s0,a5,a4
   18b40:	1602                	slli	a2,a2,0x20
   18b42:	962e                	add	a2,a2,a1
   18b44:	02e50733          	mul	a4,a0,a4
   18b48:	02d50bb3          	mul	s7,a0,a3
   18b4c:	02f686b3          	mul	a3,a3,a5
   18b50:	02045793          	srli	a5,s0,0x20
   18b54:	96ba                	add	a3,a3,a4
   18b56:	97b6                	add	a5,a5,a3
   18b58:	00e7f563          	bleu	a4,a5,18b62 <__multf3+0x298>
   18b5c:	4705                	li	a4,1
   18b5e:	1702                	slli	a4,a4,0x20
   18b60:	9bba                	add	s7,s7,a4
   18b62:	557d                	li	a0,-1
   18b64:	9101                	srli	a0,a0,0x20
   18b66:	0207db13          	srli	s6,a5,0x20
   18b6a:	8fe9                	and	a5,a5,a0
   18b6c:	1782                	slli	a5,a5,0x20
   18b6e:	8c69                	and	s0,s0,a0
   18b70:	02095693          	srli	a3,s2,0x20
   18b74:	0209d593          	srli	a1,s3,0x20
   18b78:	943e                	add	s0,s0,a5
   18b7a:	00a9f9b3          	and	s3,s3,a0
   18b7e:	00a977b3          	and	a5,s2,a0
   18b82:	03378533          	mul	a0,a5,s3
   18b86:	033689b3          	mul	s3,a3,s3
   18b8a:	02055913          	srli	s2,a0,0x20
   18b8e:	02b686b3          	mul	a3,a3,a1
   18b92:	02f585b3          	mul	a1,a1,a5
   18b96:	95ce                	add	a1,a1,s3
   18b98:	992e                	add	s2,s2,a1
   18b9a:	01397563          	bleu	s3,s2,18ba4 <__multf3+0x2da>
   18b9e:	4785                	li	a5,1
   18ba0:	1782                	slli	a5,a5,0x20
   18ba2:	96be                	add	a3,a3,a5
   18ba4:	577d                	li	a4,-1
   18ba6:	02095793          	srli	a5,s2,0x20
   18baa:	9301                	srli	a4,a4,0x20
   18bac:	8d79                	and	a0,a0,a4
   18bae:	96be                	add	a3,a3,a5
   18bb0:	00e977b3          	and	a5,s2,a4
   18bb4:	01d40733          	add	a4,s0,t4
   18bb8:	01d735b3          	sltu	a1,a4,t4
   18bbc:	1782                	slli	a5,a5,0x20
   18bbe:	97aa                	add	a5,a5,a0
   18bc0:	407003bb          	negw	t2,t2
   18bc4:	00bb0533          	add	a0,s6,a1
   18bc8:	955e                	add	a0,a0,s7
   18bca:	405002bb          	negw	t0,t0
   18bce:	00737333          	and	t1,t1,t2
   18bd2:	932a                	add	t1,t1,a0
   18bd4:	005e7e33          	and	t3,t3,t0
   18bd8:	00b535b3          	sltu	a1,a0,a1
   18bdc:	01ff7f33          	and	t5,t5,t6
   18be0:	9e1a                	add	t3,t3,t1
   18be2:	00a33533          	sltu	a0,t1,a0
   18be6:	95fa                	add	a1,a1,t5
   18be8:	95aa                	add	a1,a1,a0
   18bea:	006e3333          	sltu	t1,t3,t1
   18bee:	40c70f33          	sub	t5,a4,a2
   18bf2:	41de0533          	sub	a0,t3,t4
   18bf6:	959a                	add	a1,a1,t1
   18bf8:	01e73333          	sltu	t1,a4,t5
   18bfc:	00ae3933          	sltu	s2,t3,a0
   18c00:	4281                	li	t0,0
   18c02:	40650533          	sub	a0,a0,t1
   18c06:	01e77663          	bleu	t5,a4,18c12 <__multf3+0x348>
   18c0a:	41ce8e33          	sub	t3,t4,t3
   18c0e:	001e3293          	seqz	t0,t3
   18c12:	40ff0333          	sub	t1,t5,a5
   18c16:	95b6                	add	a1,a1,a3
   18c18:	006f3433          	sltu	s0,t5,t1
   18c1c:	40d506b3          	sub	a3,a0,a3
   18c20:	0122ee33          	or	t3,t0,s2
   18c24:	00d53533          	sltu	a0,a0,a3
   18c28:	40878433          	sub	s0,a5,s0
   18c2c:	4901                	li	s2,0
   18c2e:	006f7463          	bleu	t1,t5,18c36 <__multf3+0x36c>
   18c32:	0016b913          	seqz	s2,a3
   18c36:	96a2                	add	a3,a3,s0
   18c38:	00f6b7b3          	sltu	a5,a3,a5
   18c3c:	97ae                	add	a5,a5,a1
   18c3e:	00a96533          	or	a0,s2,a0
   18c42:	41c787b3          	sub	a5,a5,t3
   18c46:	8f89                	sub	a5,a5,a0
   18c48:	00d31413          	slli	s0,t1,0xd
   18c4c:	07b6                	slli	a5,a5,0xd
   18c4e:	0336d713          	srli	a4,a3,0x33
   18c52:	8c51                	or	s0,s0,a2
   18c54:	00e7e933          	or	s2,a5,a4
   18c58:	00803433          	snez	s0,s0
   18c5c:	03335513          	srli	a0,t1,0x33
   18c60:	8c49                	or	s0,s0,a0
   18c62:	06b6                	slli	a3,a3,0xd
   18c64:	00b91793          	slli	a5,s2,0xb
   18c68:	8c55                	or	s0,s0,a3
   18c6a:	0607d063          	bgez	a5,18cca <__multf3+0x400>
   18c6e:	00145793          	srli	a5,s0,0x1
   18c72:	8805                	andi	s0,s0,1
   18c74:	03f91513          	slli	a0,s2,0x3f
   18c78:	8c5d                	or	s0,s0,a5
   18c7a:	8c49                	or	s0,s0,a0
   18c7c:	00195913          	srli	s2,s2,0x1
   18c80:	6791                	lui	a5,0x4
   18c82:	17fd                	addi	a5,a5,-1
   18c84:	97c6                	add	a5,a5,a7
   18c86:	10f05463          	blez	a5,18d8e <__multf3+0x4c4>
   18c8a:	00747713          	andi	a4,s0,7
   18c8e:	c739                	beqz	a4,18cdc <__multf3+0x412>
   18c90:	4709                	li	a4,2
   18c92:	0014e493          	ori	s1,s1,1
   18c96:	04ea8163          	beq	s5,a4,18cd8 <__multf3+0x40e>
   18c9a:	470d                	li	a4,3
   18c9c:	02ea8963          	beq	s5,a4,18cce <__multf3+0x404>
   18ca0:	020a9e63          	bnez	s5,18cdc <__multf3+0x412>
   18ca4:	00f47713          	andi	a4,s0,15
   18ca8:	4691                	li	a3,4
   18caa:	02d70963          	beq	a4,a3,18cdc <__multf3+0x412>
   18cae:	00440713          	addi	a4,s0,4
   18cb2:	00873433          	sltu	s0,a4,s0
   18cb6:	9922                	add	s2,s2,s0
   18cb8:	843a                	mv	s0,a4
   18cba:	a00d                	j	18cdc <__multf3+0x412>
   18cbc:	885e                	mv	a6,s7
   18cbe:	bbed                	j	18ab8 <__multf3+0x1ee>
   18cc0:	885a                	mv	a6,s6
   18cc2:	894e                	mv	s2,s3
   18cc4:	843a                	mv	s0,a4
   18cc6:	8c36                	mv	s8,a3
   18cc8:	bbc5                	j	18ab8 <__multf3+0x1ee>
   18cca:	88d2                	mv	a7,s4
   18ccc:	bf55                	j	18c80 <__multf3+0x3b6>
   18cce:	00081763          	bnez	a6,18cdc <__multf3+0x412>
   18cd2:	00840713          	addi	a4,s0,8
   18cd6:	bff1                	j	18cb2 <__multf3+0x3e8>
   18cd8:	fe081de3          	bnez	a6,18cd2 <__multf3+0x408>
   18cdc:	00b91713          	slli	a4,s2,0xb
   18ce0:	00075963          	bgez	a4,18cf2 <__multf3+0x428>
   18ce4:	57fd                	li	a5,-1
   18ce6:	17d2                	slli	a5,a5,0x34
   18ce8:	17fd                	addi	a5,a5,-1
   18cea:	00f97933          	and	s2,s2,a5
   18cee:	6791                	lui	a5,0x4
   18cf0:	97c6                	add	a5,a5,a7
   18cf2:	6721                	lui	a4,0x8
   18cf4:	ffe70693          	addi	a3,a4,-2 # 7ffe <main-0x80b2>
   18cf8:	06f6c163          	blt	a3,a5,18d5a <__multf3+0x490>
   18cfc:	800d                	srli	s0,s0,0x3
   18cfe:	03d91513          	slli	a0,s2,0x3d
   18d02:	8d41                	or	a0,a0,s0
   18d04:	00395713          	srli	a4,s2,0x3
   18d08:	56fd                	li	a3,-1
   18d0a:	65a2                	ld	a1,8(sp)
   18d0c:	0106d613          	srli	a2,a3,0x10
   18d10:	8f71                	and	a4,a4,a2
   18d12:	03069613          	slli	a2,a3,0x30
   18d16:	8df1                	and	a1,a1,a2
   18d18:	8f4d                	or	a4,a4,a1
   18d1a:	6621                	lui	a2,0x8
   18d1c:	f80015b7          	lui	a1,0xf8001
   18d20:	167d                	addi	a2,a2,-1
   18d22:	1592                	slli	a1,a1,0x24
   18d24:	8ff1                	and	a5,a5,a2
   18d26:	15fd                	addi	a1,a1,-1
   18d28:	8df9                	and	a1,a1,a4
   18d2a:	17c2                	slli	a5,a5,0x30
   18d2c:	8fcd                	or	a5,a5,a1
   18d2e:	0016d593          	srli	a1,a3,0x1
   18d32:	187e                	slli	a6,a6,0x3f
   18d34:	8dfd                	and	a1,a1,a5
   18d36:	0105e5b3          	or	a1,a1,a6
   18d3a:	c099                	beqz	s1,18d40 <__multf3+0x476>
   18d3c:	0014a073          	csrs	fflags,s1
   18d40:	70a6                	ld	ra,104(sp)
   18d42:	7406                	ld	s0,96(sp)
   18d44:	64e6                	ld	s1,88(sp)
   18d46:	6946                	ld	s2,80(sp)
   18d48:	69a6                	ld	s3,72(sp)
   18d4a:	6a06                	ld	s4,64(sp)
   18d4c:	7ae2                	ld	s5,56(sp)
   18d4e:	7b42                	ld	s6,48(sp)
   18d50:	7ba2                	ld	s7,40(sp)
   18d52:	7c02                	ld	s8,32(sp)
   18d54:	6ce2                	ld	s9,24(sp)
   18d56:	6165                	addi	sp,sp,112
   18d58:	8082                	ret
   18d5a:	4789                	li	a5,2
   18d5c:	02fa8363          	beq	s5,a5,18d82 <__multf3+0x4b8>
   18d60:	460d                	li	a2,3
   18d62:	fff70793          	addi	a5,a4,-1
   18d66:	00ca8663          	beq	s5,a2,18d72 <__multf3+0x4a8>
   18d6a:	000a9663          	bnez	s5,18d76 <__multf3+0x4ac>
   18d6e:	4501                	li	a0,0
   18d70:	a029                	j	18d7a <__multf3+0x4b0>
   18d72:	fe080ee3          	beqz	a6,18d6e <__multf3+0x4a4>
   18d76:	557d                	li	a0,-1
   18d78:	87b6                	mv	a5,a3
   18d7a:	0054e493          	ori	s1,s1,5
   18d7e:	872a                	mv	a4,a0
   18d80:	b761                	j	18d08 <__multf3+0x43e>
   18d82:	fe080ae3          	beqz	a6,18d76 <__multf3+0x4ac>
   18d86:	4501                	li	a0,0
   18d88:	fff70793          	addi	a5,a4,-1
   18d8c:	b7fd                	j	18d7a <__multf3+0x4b0>
   18d8e:	4585                	li	a1,1
   18d90:	e7b1                	bnez	a5,18ddc <__multf3+0x512>
   18d92:	00747713          	andi	a4,s0,7
   18d96:	86ca                	mv	a3,s2
   18d98:	cf0d                	beqz	a4,18dd2 <__multf3+0x508>
   18d9a:	4709                	li	a4,2
   18d9c:	0014e493          	ori	s1,s1,1
   18da0:	02ea8763          	beq	s5,a4,18dce <__multf3+0x504>
   18da4:	470d                	li	a4,3
   18da6:	00ea8f63          	beq	s5,a4,18dc4 <__multf3+0x4fa>
   18daa:	020a9463          	bnez	s5,18dd2 <__multf3+0x508>
   18dae:	00f47713          	andi	a4,s0,15
   18db2:	4611                	li	a2,4
   18db4:	00c70f63          	beq	a4,a2,18dd2 <__multf3+0x508>
   18db8:	ffc43693          	sltiu	a3,s0,-4
   18dbc:	0016c693          	xori	a3,a3,1
   18dc0:	96ca                	add	a3,a3,s2
   18dc2:	a801                	j	18dd2 <__multf3+0x508>
   18dc4:	00081763          	bnez	a6,18dd2 <__multf3+0x508>
   18dc8:	ff843693          	sltiu	a3,s0,-8
   18dcc:	bfc5                	j	18dbc <__multf3+0x4f2>
   18dce:	fe081de3          	bnez	a6,18dc8 <__multf3+0x4fe>
   18dd2:	92d1                	srli	a3,a3,0x34
   18dd4:	0016c693          	xori	a3,a3,1
   18dd8:	0016f593          	andi	a1,a3,1
   18ddc:	4705                	li	a4,1
   18dde:	8f1d                	sub	a4,a4,a5
   18de0:	07400793          	li	a5,116
   18de4:	0ce7c363          	blt	a5,a4,18eaa <__multf3+0x5e0>
   18de8:	03f00793          	li	a5,63
   18dec:	0007069b          	sext.w	a3,a4
   18df0:	04e7ca63          	blt	a5,a4,18e44 <__multf3+0x57a>
   18df4:	04000513          	li	a0,64
   18df8:	9d15                	subw	a0,a0,a3
   18dfa:	00d457b3          	srl	a5,s0,a3
   18dfe:	00a91633          	sll	a2,s2,a0
   18e02:	00a41433          	sll	s0,s0,a0
   18e06:	8e5d                	or	a2,a2,a5
   18e08:	00803433          	snez	s0,s0
   18e0c:	8c51                	or	s0,s0,a2
   18e0e:	00d957b3          	srl	a5,s2,a3
   18e12:	00747713          	andi	a4,s0,7
   18e16:	c325                	beqz	a4,18e76 <__multf3+0x5ac>
   18e18:	4709                	li	a4,2
   18e1a:	0014e493          	ori	s1,s1,1
   18e1e:	04ea8a63          	beq	s5,a4,18e72 <__multf3+0x5a8>
   18e22:	470d                	li	a4,3
   18e24:	04ea8263          	beq	s5,a4,18e68 <__multf3+0x59e>
   18e28:	040a9763          	bnez	s5,18e76 <__multf3+0x5ac>
   18e2c:	00f47713          	andi	a4,s0,15
   18e30:	4691                	li	a3,4
   18e32:	04d70263          	beq	a4,a3,18e76 <__multf3+0x5ac>
   18e36:	00440713          	addi	a4,s0,4
   18e3a:	00873433          	sltu	s0,a4,s0
   18e3e:	97a2                	add	a5,a5,s0
   18e40:	843a                	mv	s0,a4
   18e42:	a815                	j	18e76 <__multf3+0x5ac>
   18e44:	04000513          	li	a0,64
   18e48:	00d95633          	srl	a2,s2,a3
   18e4c:	4781                	li	a5,0
   18e4e:	00a70763          	beq	a4,a0,18e5c <__multf3+0x592>
   18e52:	08000793          	li	a5,128
   18e56:	9f95                	subw	a5,a5,a3
   18e58:	00f917b3          	sll	a5,s2,a5
   18e5c:	8c5d                	or	s0,s0,a5
   18e5e:	00803433          	snez	s0,s0
   18e62:	8c51                	or	s0,s0,a2
   18e64:	4781                	li	a5,0
   18e66:	b775                	j	18e12 <__multf3+0x548>
   18e68:	00081763          	bnez	a6,18e76 <__multf3+0x5ac>
   18e6c:	00840713          	addi	a4,s0,8
   18e70:	b7e9                	j	18e3a <__multf3+0x570>
   18e72:	fe081de3          	bnez	a6,18e6c <__multf3+0x5a2>
   18e76:	00c79713          	slli	a4,a5,0xc
   18e7a:	02075063          	bgez	a4,18e9a <__multf3+0x5d0>
   18e7e:	0014e493          	ori	s1,s1,1
   18e82:	4701                	li	a4,0
   18e84:	4501                	li	a0,0
   18e86:	4785                	li	a5,1
   18e88:	e80580e3          	beqz	a1,18d08 <__multf3+0x43e>
   18e8c:	0014f693          	andi	a3,s1,1
   18e90:	e6068ce3          	beqz	a3,18d08 <__multf3+0x43e>
   18e94:	0024e493          	ori	s1,s1,2
   18e98:	bd85                	j	18d08 <__multf3+0x43e>
   18e9a:	03d79513          	slli	a0,a5,0x3d
   18e9e:	800d                	srli	s0,s0,0x3
   18ea0:	0037d713          	srli	a4,a5,0x3
   18ea4:	8d41                	or	a0,a0,s0
   18ea6:	4781                	li	a5,0
   18ea8:	b7c5                	j	18e88 <__multf3+0x5be>
   18eaa:	01246533          	or	a0,s0,s2
   18eae:	c11d                	beqz	a0,18ed4 <__multf3+0x60a>
   18eb0:	4789                	li	a5,2
   18eb2:	0014e493          	ori	s1,s1,1
   18eb6:	02fa8363          	beq	s5,a5,18edc <__multf3+0x612>
   18eba:	478d                	li	a5,3
   18ebc:	00fa8763          	beq	s5,a5,18eca <__multf3+0x600>
   18ec0:	4415                	li	s0,5
   18ec2:	000a8763          	beqz	s5,18ed0 <__multf3+0x606>
   18ec6:	4405                	li	s0,1
   18ec8:	a021                	j	18ed0 <__multf3+0x606>
   18eca:	4425                	li	s0,9
   18ecc:	fe081de3          	bnez	a6,18ec6 <__multf3+0x5fc>
   18ed0:	00345513          	srli	a0,s0,0x3
   18ed4:	0024e493          	ori	s1,s1,2
   18ed8:	4701                	li	a4,0
   18eda:	bed5                	j	18ace <__multf3+0x204>
   18edc:	4425                	li	s0,9
   18ede:	fe0819e3          	bnez	a6,18ed0 <__multf3+0x606>
   18ee2:	b7d5                	j	18ec6 <__multf3+0x5fc>
   18ee4:	4785                	li	a5,1
   18ee6:	02f79713          	slli	a4,a5,0x2f
   18eea:	67a1                	lui	a5,0x8
   18eec:	4501                	li	a0,0
   18eee:	17fd                	addi	a5,a5,-1
   18ef0:	4801                	li	a6,0
   18ef2:	bd19                	j	18d08 <__multf3+0x43e>
   18ef4:	4785                	li	a5,1
   18ef6:	02f79713          	slli	a4,a5,0x2f
   18efa:	67a1                	lui	a5,0x8
   18efc:	4501                	li	a0,0
   18efe:	17fd                	addi	a5,a5,-1
   18f00:	4801                	li	a6,0
   18f02:	44c1                	li	s1,16
   18f04:	b511                	j	18d08 <__multf3+0x43e>
   18f06:	67a1                	lui	a5,0x8
   18f08:	4701                	li	a4,0
   18f0a:	4501                	li	a0,0
   18f0c:	17fd                	addi	a5,a5,-1
   18f0e:	bbed                	j	18d08 <__multf3+0x43e>

0000000000018f10 <__subtf3>:
   18f10:	7139                	addi	sp,sp,-64
   18f12:	fc06                	sd	ra,56(sp)
   18f14:	f822                	sd	s0,48(sp)
   18f16:	f426                	sd	s1,40(sp)
   18f18:	f04a                	sd	s2,32(sp)
   18f1a:	ec4e                	sd	s3,24(sp)
   18f1c:	e852                	sd	s4,16(sp)
   18f1e:	00202973          	frrm	s2
   18f22:	53fd                	li	t2,-1
   18f24:	0103d393          	srli	t2,t2,0x10
   18f28:	62a1                	lui	t0,0x8
   18f2a:	0305df13          	srli	t5,a1,0x30
   18f2e:	12fd                	addi	t0,t0,-1
   18f30:	0306d893          	srli	a7,a3,0x30
   18f34:	03f5d493          	srli	s1,a1,0x3f
   18f38:	e436                	sd	a3,8(sp)
   18f3a:	0075f5b3          	and	a1,a1,t2
   18f3e:	03f6de93          	srli	t4,a3,0x3f
   18f42:	0076f6b3          	and	a3,a3,t2
   18f46:	03d55713          	srli	a4,a0,0x3d
   18f4a:	005f7f33          	and	t5,t5,t0
   18f4e:	058e                	slli	a1,a1,0x3
   18f50:	00351313          	slli	t1,a0,0x3
   18f54:	0058f8b3          	and	a7,a7,t0
   18f58:	068e                	slli	a3,a3,0x3
   18f5a:	03d65513          	srli	a0,a2,0x3d
   18f5e:	2901                	sext.w	s2,s2
   18f60:	89fa                	mv	s3,t5
   18f62:	00b76e33          	or	t3,a4,a1
   18f66:	8fc6                	mv	t6,a7
   18f68:	8ec9                	or	a3,a3,a0
   18f6a:	00361793          	slli	a5,a2,0x3
   18f6e:	00589563          	bne	a7,t0,18f78 <__subtf3+0x68>
   18f72:	00f6e733          	or	a4,a3,a5
   18f76:	e319                	bnez	a4,18f7c <__subtf3+0x6c>
   18f78:	001ece93          	xori	t4,t4,1
   18f7c:	411f073b          	subw	a4,t5,a7
   18f80:	65a1                	lui	a1,0x8
   18f82:	0007081b          	sext.w	a6,a4
   18f86:	fff58613          	addi	a2,a1,-1 # 7fff <main-0x80b1>
   18f8a:	389e9163          	bne	t4,s1,1930c <__subtf3+0x3fc>
   18f8e:	0f005663          	blez	a6,1907a <__subtf3+0x16a>
   18f92:	06089f63          	bnez	a7,19010 <__subtf3+0x100>
   18f96:	00f6e5b3          	or	a1,a3,a5
   18f9a:	e591                	bnez	a1,18fa6 <__subtf3+0x96>
   18f9c:	04cf0f63          	beq	t5,a2,18ffa <__subtf3+0xea>
   18fa0:	86f2                	mv	a3,t3
   18fa2:	8ffa                	mv	t6,t5
   18fa4:	ade1                	j	1967c <__subtf3+0x76c>
   18fa6:	fff7081b          	addiw	a6,a4,-1
   18faa:	04081663          	bnez	a6,18ff6 <__subtf3+0xe6>
   18fae:	979a                	add	a5,a5,t1
   18fb0:	0067b333          	sltu	t1,a5,t1
   18fb4:	96f2                	add	a3,a3,t3
   18fb6:	969a                	add	a3,a3,t1
   18fb8:	8ffa                	mv	t6,t5
   18fba:	833e                	mv	t1,a5
   18fbc:	00c69793          	slli	a5,a3,0xc
   18fc0:	6a07de63          	bgez	a5,1967c <__subtf3+0x76c>
   18fc4:	6721                	lui	a4,0x8
   18fc6:	001f8993          	addi	s3,t6,1
   18fca:	fff70793          	addi	a5,a4,-1 # 7fff <main-0x80b1>
   18fce:	30f98b63          	beq	s3,a5,192e4 <__subtf3+0x3d4>
   18fd2:	55fd                	li	a1,-1
   18fd4:	15ce                	slli	a1,a1,0x33
   18fd6:	15fd                	addi	a1,a1,-1
   18fd8:	00135793          	srli	a5,t1,0x1
   18fdc:	8df5                	and	a1,a1,a3
   18fde:	00137313          	andi	t1,t1,1
   18fe2:	03f59693          	slli	a3,a1,0x3f
   18fe6:	0067e333          	or	t1,a5,t1
   18fea:	0066e7b3          	or	a5,a3,t1
   18fee:	0015d693          	srli	a3,a1,0x1
   18ff2:	4801                	li	a6,0
   18ff4:	ac79                	j	19292 <__subtf3+0x382>
   18ff6:	02cf1263          	bne	t5,a2,1901a <__subtf3+0x10a>
   18ffa:	006e67b3          	or	a5,t3,t1
   18ffe:	6c078263          	beqz	a5,196c2 <__subtf3+0x7b2>
   19002:	00de1793          	slli	a5,t3,0xd
   19006:	86f2                	mv	a3,t3
   19008:	6a07df63          	bgez	a5,196c6 <__subtf3+0x7b6>
   1900c:	879a                	mv	a5,t1
   1900e:	b7d5                	j	18ff2 <__subtf3+0xe2>
   19010:	fecf05e3          	beq	t5,a2,18ffa <__subtf3+0xea>
   19014:	4705                	li	a4,1
   19016:	174e                	slli	a4,a4,0x33
   19018:	8ed9                	or	a3,a3,a4
   1901a:	07400713          	li	a4,116
   1901e:	05074a63          	blt	a4,a6,19072 <__subtf3+0x162>
   19022:	03f00713          	li	a4,63
   19026:	03074363          	blt	a4,a6,1904c <__subtf3+0x13c>
   1902a:	04000613          	li	a2,64
   1902e:	4106063b          	subw	a2,a2,a6
   19032:	00c69733          	sll	a4,a3,a2
   19036:	0107d5b3          	srl	a1,a5,a6
   1903a:	00c797b3          	sll	a5,a5,a2
   1903e:	8f4d                	or	a4,a4,a1
   19040:	00f037b3          	snez	a5,a5
   19044:	8fd9                	or	a5,a5,a4
   19046:	0106d6b3          	srl	a3,a3,a6
   1904a:	b795                	j	18fae <__subtf3+0x9e>
   1904c:	04000593          	li	a1,64
   19050:	0106d733          	srl	a4,a3,a6
   19054:	4601                	li	a2,0
   19056:	00b80863          	beq	a6,a1,19066 <__subtf3+0x156>
   1905a:	08000613          	li	a2,128
   1905e:	4106083b          	subw	a6,a2,a6
   19062:	01069633          	sll	a2,a3,a6
   19066:	8fd1                	or	a5,a5,a2
   19068:	00f037b3          	snez	a5,a5
   1906c:	8fd9                	or	a5,a5,a4
   1906e:	4681                	li	a3,0
   19070:	bf3d                	j	18fae <__subtf3+0x9e>
   19072:	8edd                	or	a3,a3,a5
   19074:	00d037b3          	snez	a5,a3
   19078:	bfdd                	j	1906e <__subtf3+0x15e>
   1907a:	0c080463          	beqz	a6,19142 <__subtf3+0x232>
   1907e:	060f1f63          	bnez	t5,190fc <__subtf3+0x1ec>
   19082:	006e65b3          	or	a1,t3,t1
   19086:	e185                	bnez	a1,190a6 <__subtf3+0x196>
   19088:	833e                	mv	t1,a5
   1908a:	5ec89963          	bne	a7,a2,1967c <__subtf3+0x76c>
   1908e:	00f6e733          	or	a4,a3,a5
   19092:	62070363          	beqz	a4,196b8 <__subtf3+0x7a8>
   19096:	00d69713          	slli	a4,a3,0xd
   1909a:	89c6                	mv	s3,a7
   1909c:	4801                	li	a6,0
   1909e:	1e074a63          	bltz	a4,19292 <__subtf3+0x382>
   190a2:	4741                	li	a4,16
   190a4:	a0c5                	j	19184 <__subtf3+0x274>
   190a6:	55fd                	li	a1,-1
   190a8:	00b81863          	bne	a6,a1,190b8 <__subtf3+0x1a8>
   190ac:	933e                	add	t1,t1,a5
   190ae:	96f2                	add	a3,a3,t3
   190b0:	00f337b3          	sltu	a5,t1,a5
   190b4:	96be                	add	a3,a3,a5
   190b6:	b719                	j	18fbc <__subtf3+0xac>
   190b8:	fff74713          	not	a4,a4
   190bc:	fcc889e3          	beq	a7,a2,1908e <__subtf3+0x17e>
   190c0:	07400613          	li	a2,116
   190c4:	06e64a63          	blt	a2,a4,19138 <__subtf3+0x228>
   190c8:	03f00613          	li	a2,63
   190cc:	04e64163          	blt	a2,a4,1910e <__subtf3+0x1fe>
   190d0:	04000513          	li	a0,64
   190d4:	9d19                	subw	a0,a0,a4
   190d6:	00e35633          	srl	a2,t1,a4
   190da:	00ae1433          	sll	s0,t3,a0
   190de:	00a31333          	sll	t1,t1,a0
   190e2:	8c51                	or	s0,s0,a2
   190e4:	00603333          	snez	t1,t1
   190e8:	00646333          	or	t1,s0,t1
   190ec:	00ee5733          	srl	a4,t3,a4
   190f0:	933e                	add	t1,t1,a5
   190f2:	9736                	add	a4,a4,a3
   190f4:	00f336b3          	sltu	a3,t1,a5
   190f8:	96ba                	add	a3,a3,a4
   190fa:	b5c9                	j	18fbc <__subtf3+0xac>
   190fc:	f8c889e3          	beq	a7,a2,1908e <__subtf3+0x17e>
   19100:	4605                	li	a2,1
   19102:	164e                	slli	a2,a2,0x33
   19104:	40e0073b          	negw	a4,a4
   19108:	00ce6e33          	or	t3,t3,a2
   1910c:	bf55                	j	190c0 <__subtf3+0x1b0>
   1910e:	04000613          	li	a2,64
   19112:	00ee5433          	srl	s0,t3,a4
   19116:	4501                	li	a0,0
   19118:	00c70863          	beq	a4,a2,19128 <__subtf3+0x218>
   1911c:	08000513          	li	a0,128
   19120:	40e5073b          	subw	a4,a0,a4
   19124:	00ee1533          	sll	a0,t3,a4
   19128:	00656333          	or	t1,a0,t1
   1912c:	00603333          	snez	t1,t1
   19130:	00646333          	or	t1,s0,t1
   19134:	4701                	li	a4,0
   19136:	bf6d                	j	190f0 <__subtf3+0x1e0>
   19138:	006e6733          	or	a4,t3,t1
   1913c:	00e03333          	snez	t1,a4
   19140:	bfd5                	j	19134 <__subtf3+0x224>
   19142:	001f0f93          	addi	t6,t5,1 # 10001 <main-0xaf>
   19146:	00cff733          	and	a4,t6,a2
   1914a:	4e85                	li	t4,1
   1914c:	12eec363          	blt	t4,a4,19272 <__subtf3+0x362>
   19150:	006e65b3          	or	a1,t3,t1
   19154:	040f1463          	bnez	t5,1919c <__subtf3+0x28c>
   19158:	52058a63          	beqz	a1,1968c <__subtf3+0x77c>
   1915c:	00f6e733          	or	a4,a3,a5
   19160:	52070a63          	beqz	a4,19694 <__subtf3+0x784>
   19164:	979a                	add	a5,a5,t1
   19166:	96f2                	add	a3,a3,t3
   19168:	0067b333          	sltu	t1,a5,t1
   1916c:	969a                	add	a3,a3,t1
   1916e:	1ece                	slli	t4,t4,0x33
   19170:	01d6feb3          	and	t4,a3,t4
   19174:	500e8c63          	beqz	t4,1968c <__subtf3+0x77c>
   19178:	577d                	li	a4,-1
   1917a:	174e                	slli	a4,a4,0x33
   1917c:	177d                	addi	a4,a4,-1
   1917e:	8ef9                	and	a3,a3,a4
   19180:	4985                	li	s3,1
   19182:	4701                	li	a4,0
   19184:	0077f613          	andi	a2,a5,7
   19188:	12061263          	bnez	a2,192ac <__subtf3+0x39c>
   1918c:	04080863          	beqz	a6,191dc <__subtf3+0x2cc>
   19190:	00177613          	andi	a2,a4,1
   19194:	c621                	beqz	a2,191dc <__subtf3+0x2cc>
   19196:	00276713          	ori	a4,a4,2
   1919a:	a089                	j	191dc <__subtf3+0x2cc>
   1919c:	0ccf1663          	bne	t5,a2,19268 <__subtf3+0x358>
   191a0:	56058d63          	beqz	a1,1971a <__subtf3+0x80a>
   191a4:	032e9713          	slli	a4,t4,0x32
   191a8:	00ee7733          	and	a4,t3,a4
   191ac:	00173713          	seqz	a4,a4
   191b0:	0712                	slli	a4,a4,0x4
   191b2:	01e89c63          	bne	a7,t5,191ca <__subtf3+0x2ba>
   191b6:	00f6e633          	or	a2,a3,a5
   191ba:	c611                	beqz	a2,191c6 <__subtf3+0x2b6>
   191bc:	00d69613          	slli	a2,a3,0xd
   191c0:	00064363          	bltz	a2,191c6 <__subtf3+0x2b6>
   191c4:	4741                	li	a4,16
   191c6:	3c058663          	beqz	a1,19592 <__subtf3+0x682>
   191ca:	8edd                	or	a3,a3,a5
   191cc:	3c068163          	beqz	a3,1958e <__subtf3+0x67e>
   191d0:	4685                	li	a3,1
   191d2:	69a1                	lui	s3,0x8
   191d4:	16ca                	slli	a3,a3,0x32
   191d6:	4781                	li	a5,0
   191d8:	19fd                	addi	s3,s3,-1
   191da:	4481                	li	s1,0
   191dc:	00c69613          	slli	a2,a3,0xc
   191e0:	00065c63          	bgez	a2,191f8 <__subtf3+0x2e8>
   191e4:	6621                	lui	a2,0x8
   191e6:	0985                	addi	s3,s3,1
   191e8:	fff60593          	addi	a1,a2,-1 # 7fff <main-0x80b1>
   191ec:	50b98063          	beq	s3,a1,196ec <__subtf3+0x7dc>
   191f0:	567d                	li	a2,-1
   191f2:	164e                	slli	a2,a2,0x33
   191f4:	167d                	addi	a2,a2,-1
   191f6:	8ef1                	and	a3,a3,a2
   191f8:	838d                	srli	a5,a5,0x3
   191fa:	03d69513          	slli	a0,a3,0x3d
   191fe:	8d5d                	or	a0,a0,a5
   19200:	67a1                	lui	a5,0x8
   19202:	17fd                	addi	a5,a5,-1
   19204:	828d                	srli	a3,a3,0x3
   19206:	00f99963          	bne	s3,a5,19218 <__subtf3+0x308>
   1920a:	8d55                	or	a0,a0,a3
   1920c:	4681                	li	a3,0
   1920e:	c509                	beqz	a0,19218 <__subtf3+0x308>
   19210:	4685                	li	a3,1
   19212:	16be                	slli	a3,a3,0x2f
   19214:	4501                	li	a0,0
   19216:	4481                	li	s1,0
   19218:	58fd                	li	a7,-1
   1921a:	0108d813          	srli	a6,a7,0x10
   1921e:	0106f833          	and	a6,a3,a6
   19222:	66a2                	ld	a3,8(sp)
   19224:	03089593          	slli	a1,a7,0x30
   19228:	0018d893          	srli	a7,a7,0x1
   1922c:	8df5                	and	a1,a1,a3
   1922e:	0105e6b3          	or	a3,a1,a6
   19232:	65a1                	lui	a1,0x8
   19234:	15fd                	addi	a1,a1,-1
   19236:	00b9f9b3          	and	s3,s3,a1
   1923a:	f80015b7          	lui	a1,0xf8001
   1923e:	1592                	slli	a1,a1,0x24
   19240:	15fd                	addi	a1,a1,-1
   19242:	19c2                	slli	s3,s3,0x30
   19244:	8df5                	and	a1,a1,a3
   19246:	0135e5b3          	or	a1,a1,s3
   1924a:	14fe                	slli	s1,s1,0x3f
   1924c:	0115f5b3          	and	a1,a1,a7
   19250:	8dc5                	or	a1,a1,s1
   19252:	c319                	beqz	a4,19258 <__subtf3+0x348>
   19254:	00172073          	csrs	fflags,a4
   19258:	70e2                	ld	ra,56(sp)
   1925a:	7442                	ld	s0,48(sp)
   1925c:	74a2                	ld	s1,40(sp)
   1925e:	7902                	ld	s2,32(sp)
   19260:	69e2                	ld	s3,24(sp)
   19262:	6a42                	ld	s4,16(sp)
   19264:	6121                	addi	sp,sp,64
   19266:	8082                	ret
   19268:	4701                	li	a4,0
   1926a:	f4c89ee3          	bne	a7,a2,191c6 <__subtf3+0x2b6>
   1926e:	4701                	li	a4,0
   19270:	b799                	j	191b6 <__subtf3+0x2a6>
   19272:	02cf8263          	beq	t6,a2,19296 <__subtf3+0x386>
   19276:	979a                	add	a5,a5,t1
   19278:	00de0733          	add	a4,t3,a3
   1927c:	0067b6b3          	sltu	a3,a5,t1
   19280:	00d70333          	add	t1,a4,a3
   19284:	03f31693          	slli	a3,t1,0x3f
   19288:	8385                	srli	a5,a5,0x1
   1928a:	8fd5                	or	a5,a5,a3
   1928c:	89fe                	mv	s3,t6
   1928e:	00135693          	srli	a3,t1,0x1
   19292:	4701                	li	a4,0
   19294:	bdc5                	j	19184 <__subtf3+0x274>
   19296:	04090563          	beqz	s2,192e0 <__subtf3+0x3d0>
   1929a:	478d                	li	a5,3
   1929c:	02f91e63          	bne	s2,a5,192d8 <__subtf3+0x3c8>
   192a0:	c0a1                	beqz	s1,192e0 <__subtf3+0x3d0>
   192a2:	56fd                	li	a3,-1
   192a4:	57fd                	li	a5,-1
   192a6:	ffe58993          	addi	s3,a1,-2 # fffffffff8000ffe <__global_pointer$+0xfffffffff7fe3e16>
   192aa:	4715                	li	a4,5
   192ac:	4609                	li	a2,2
   192ae:	00176713          	ori	a4,a4,1
   192b2:	42c90a63          	beq	s2,a2,196e6 <__subtf3+0x7d6>
   192b6:	460d                	li	a2,3
   192b8:	42c90263          	beq	s2,a2,196dc <__subtf3+0x7cc>
   192bc:	ec0918e3          	bnez	s2,1918c <__subtf3+0x27c>
   192c0:	00f7f613          	andi	a2,a5,15
   192c4:	4591                	li	a1,4
   192c6:	ecb603e3          	beq	a2,a1,1918c <__subtf3+0x27c>
   192ca:	00478593          	addi	a1,a5,4 # 8004 <main-0x80ac>
   192ce:	00f5b7b3          	sltu	a5,a1,a5
   192d2:	96be                	add	a3,a3,a5
   192d4:	87ae                	mv	a5,a1
   192d6:	bd5d                	j	1918c <__subtf3+0x27c>
   192d8:	4789                	li	a5,2
   192da:	fcf914e3          	bne	s2,a5,192a2 <__subtf3+0x392>
   192de:	d0f1                	beqz	s1,192a2 <__subtf3+0x392>
   192e0:	89fe                	mv	s3,t6
   192e2:	a00d                	j	19304 <__subtf3+0x3f4>
   192e4:	02090063          	beqz	s2,19304 <__subtf3+0x3f4>
   192e8:	478d                	li	a5,3
   192ea:	00f91963          	bne	s2,a5,192fc <__subtf3+0x3ec>
   192ee:	c899                	beqz	s1,19304 <__subtf3+0x3f4>
   192f0:	56fd                	li	a3,-1
   192f2:	57fd                	li	a5,-1
   192f4:	ffe70993          	addi	s3,a4,-2
   192f8:	4801                	li	a6,0
   192fa:	bf45                	j	192aa <__subtf3+0x39a>
   192fc:	4789                	li	a5,2
   192fe:	fef919e3          	bne	s2,a5,192f0 <__subtf3+0x3e0>
   19302:	d4fd                	beqz	s1,192f0 <__subtf3+0x3e0>
   19304:	4681                	li	a3,0
   19306:	4781                	li	a5,0
   19308:	4715                	li	a4,5
   1930a:	bdc9                	j	191dc <__subtf3+0x2cc>
   1930c:	0b005863          	blez	a6,193bc <__subtf3+0x4ac>
   19310:	06089963          	bnez	a7,19382 <__subtf3+0x472>
   19314:	00f6e5b3          	or	a1,a3,a5
   19318:	c80582e3          	beqz	a1,18f9c <__subtf3+0x8c>
   1931c:	fff7081b          	addiw	a6,a4,-1
   19320:	02081663          	bnez	a6,1934c <__subtf3+0x43c>
   19324:	40f307b3          	sub	a5,t1,a5
   19328:	00f33333          	sltu	t1,t1,a5
   1932c:	40de06b3          	sub	a3,t3,a3
   19330:	406686b3          	sub	a3,a3,t1
   19334:	8ffa                	mv	t6,t5
   19336:	833e                	mv	t1,a5
   19338:	00c69793          	slli	a5,a3,0xc
   1933c:	3407d063          	bgez	a5,1967c <__subtf3+0x76c>
   19340:	547d                	li	s0,-1
   19342:	8035                	srli	s0,s0,0xd
   19344:	8c75                	and	s0,s0,a3
   19346:	8a1a                	mv	s4,t1
   19348:	89fe                	mv	s3,t6
   1934a:	ac95                	j	195be <__subtf3+0x6ae>
   1934c:	cacf07e3          	beq	t5,a2,18ffa <__subtf3+0xea>
   19350:	07400713          	li	a4,116
   19354:	07074063          	blt	a4,a6,193b4 <__subtf3+0x4a4>
   19358:	03f00713          	li	a4,63
   1935c:	03074963          	blt	a4,a6,1938e <__subtf3+0x47e>
   19360:	04000613          	li	a2,64
   19364:	4106063b          	subw	a2,a2,a6
   19368:	00c69733          	sll	a4,a3,a2
   1936c:	0107d5b3          	srl	a1,a5,a6
   19370:	00c797b3          	sll	a5,a5,a2
   19374:	8f4d                	or	a4,a4,a1
   19376:	00f037b3          	snez	a5,a5
   1937a:	8fd9                	or	a5,a5,a4
   1937c:	0106d6b3          	srl	a3,a3,a6
   19380:	b755                	j	19324 <__subtf3+0x414>
   19382:	c6cf0ce3          	beq	t5,a2,18ffa <__subtf3+0xea>
   19386:	4705                	li	a4,1
   19388:	174e                	slli	a4,a4,0x33
   1938a:	8ed9                	or	a3,a3,a4
   1938c:	b7d1                	j	19350 <__subtf3+0x440>
   1938e:	04000593          	li	a1,64
   19392:	0106d733          	srl	a4,a3,a6
   19396:	4601                	li	a2,0
   19398:	00b80863          	beq	a6,a1,193a8 <__subtf3+0x498>
   1939c:	08000613          	li	a2,128
   193a0:	4106083b          	subw	a6,a2,a6
   193a4:	01069633          	sll	a2,a3,a6
   193a8:	8fd1                	or	a5,a5,a2
   193aa:	00f037b3          	snez	a5,a5
   193ae:	8fd9                	or	a5,a5,a4
   193b0:	4681                	li	a3,0
   193b2:	bf8d                	j	19324 <__subtf3+0x414>
   193b4:	8edd                	or	a3,a3,a5
   193b6:	00d037b3          	snez	a5,a3
   193ba:	bfdd                	j	193b0 <__subtf3+0x4a0>
   193bc:	0c080663          	beqz	a6,19488 <__subtf3+0x578>
   193c0:	080f1163          	bnez	t5,19442 <__subtf3+0x532>
   193c4:	006e65b3          	or	a1,t3,t1
   193c8:	ed81                	bnez	a1,193e0 <__subtf3+0x4d0>
   193ca:	2ac89e63          	bne	a7,a2,19686 <__subtf3+0x776>
   193ce:	00f6e733          	or	a4,a3,a5
   193d2:	2e070d63          	beqz	a4,196cc <__subtf3+0x7bc>
   193d6:	00d69713          	slli	a4,a3,0xd
   193da:	89c6                	mv	s3,a7
   193dc:	84f6                	mv	s1,t4
   193de:	b97d                	j	1909c <__subtf3+0x18c>
   193e0:	55fd                	li	a1,-1
   193e2:	00b81b63          	bne	a6,a1,193f8 <__subtf3+0x4e8>
   193e6:	40678333          	sub	t1,a5,t1
   193ea:	41c686b3          	sub	a3,a3,t3
   193ee:	0067b7b3          	sltu	a5,a5,t1
   193f2:	8e9d                	sub	a3,a3,a5
   193f4:	84f6                	mv	s1,t4
   193f6:	b789                	j	19338 <__subtf3+0x428>
   193f8:	fff74713          	not	a4,a4
   193fc:	fcc889e3          	beq	a7,a2,193ce <__subtf3+0x4be>
   19400:	07400613          	li	a2,116
   19404:	06e64d63          	blt	a2,a4,1947e <__subtf3+0x56e>
   19408:	03f00613          	li	a2,63
   1940c:	04e64463          	blt	a2,a4,19454 <__subtf3+0x544>
   19410:	04000513          	li	a0,64
   19414:	9d19                	subw	a0,a0,a4
   19416:	00e35633          	srl	a2,t1,a4
   1941a:	00ae1433          	sll	s0,t3,a0
   1941e:	00a31333          	sll	t1,t1,a0
   19422:	8c51                	or	s0,s0,a2
   19424:	00603333          	snez	t1,t1
   19428:	00646333          	or	t1,s0,t1
   1942c:	00ee5733          	srl	a4,t3,a4
   19430:	40678333          	sub	t1,a5,t1
   19434:	40e68733          	sub	a4,a3,a4
   19438:	0067b6b3          	sltu	a3,a5,t1
   1943c:	40d706b3          	sub	a3,a4,a3
   19440:	bf55                	j	193f4 <__subtf3+0x4e4>
   19442:	f8c886e3          	beq	a7,a2,193ce <__subtf3+0x4be>
   19446:	4605                	li	a2,1
   19448:	164e                	slli	a2,a2,0x33
   1944a:	40e0073b          	negw	a4,a4
   1944e:	00ce6e33          	or	t3,t3,a2
   19452:	b77d                	j	19400 <__subtf3+0x4f0>
   19454:	04000613          	li	a2,64
   19458:	00ee5433          	srl	s0,t3,a4
   1945c:	4501                	li	a0,0
   1945e:	00c70863          	beq	a4,a2,1946e <__subtf3+0x55e>
   19462:	08000513          	li	a0,128
   19466:	40e5073b          	subw	a4,a0,a4
   1946a:	00ee1533          	sll	a0,t3,a4
   1946e:	00656333          	or	t1,a0,t1
   19472:	00603333          	snez	t1,t1
   19476:	00646333          	or	t1,s0,t1
   1947a:	4701                	li	a4,0
   1947c:	bf55                	j	19430 <__subtf3+0x520>
   1947e:	006e6733          	or	a4,t3,t1
   19482:	00e03333          	snez	t1,a4
   19486:	bfd5                	j	1947a <__subtf3+0x56a>
   19488:	001f0713          	addi	a4,t5,1
   1948c:	8f71                	and	a4,a4,a2
   1948e:	4585                	li	a1,1
   19490:	10e5c463          	blt	a1,a4,19598 <__subtf3+0x688>
   19494:	006e6fb3          	or	t6,t3,t1
   19498:	00f6e533          	or	a0,a3,a5
   1949c:	0a0f1463          	bnez	t5,19544 <__subtf3+0x634>
   194a0:	060f9363          	bnez	t6,19506 <__subtf3+0x5f6>
   194a4:	1e051663          	bnez	a0,19690 <__subtf3+0x780>
   194a8:	ffe90493          	addi	s1,s2,-2
   194ac:	0014b493          	seqz	s1,s1
   194b0:	4681                	li	a3,0
   194b2:	4301                	li	t1,0
   194b4:	00d367b3          	or	a5,t1,a3
   194b8:	20078f63          	beqz	a5,196d6 <__subtf3+0x7c6>
   194bc:	03f35793          	srli	a5,t1,0x3f
   194c0:	00169813          	slli	a6,a3,0x1
   194c4:	983e                	add	a6,a6,a5
   194c6:	00131793          	slli	a5,t1,0x1
   194ca:	0077f613          	andi	a2,a5,7
   194ce:	4701                	li	a4,0
   194d0:	c215                	beqz	a2,194f4 <__subtf3+0x5e4>
   194d2:	4709                	li	a4,2
   194d4:	1ce90e63          	beq	s2,a4,196b0 <__subtf3+0x7a0>
   194d8:	470d                	li	a4,3
   194da:	1ce90263          	beq	s2,a4,1969e <__subtf3+0x78e>
   194de:	4705                	li	a4,1
   194e0:	00091a63          	bnez	s2,194f4 <__subtf3+0x5e4>
   194e4:	00f7f613          	andi	a2,a5,15
   194e8:	4591                	li	a1,4
   194ea:	4705                	li	a4,1
   194ec:	ffc7b793          	sltiu	a5,a5,-4
   194f0:	1ab61c63          	bne	a2,a1,196a8 <__subtf3+0x798>
   194f4:	03485813          	srli	a6,a6,0x34
   194f8:	00184813          	xori	a6,a6,1
   194fc:	00187813          	andi	a6,a6,1
   19500:	879a                	mv	a5,t1
   19502:	4981                	li	s3,0
   19504:	b141                	j	19184 <__subtf3+0x274>
   19506:	18050763          	beqz	a0,19694 <__subtf3+0x784>
   1950a:	40f30633          	sub	a2,t1,a5
   1950e:	40de0733          	sub	a4,t3,a3
   19512:	00c33533          	sltu	a0,t1,a2
   19516:	8f09                	sub	a4,a4,a0
   19518:	15ce                	slli	a1,a1,0x33
   1951a:	8df9                	and	a1,a1,a4
   1951c:	c991                	beqz	a1,19530 <__subtf3+0x620>
   1951e:	40678333          	sub	t1,a5,t1
   19522:	41c686b3          	sub	a3,a3,t3
   19526:	0067b7b3          	sltu	a5,a5,t1
   1952a:	8e9d                	sub	a3,a3,a5
   1952c:	84f6                	mv	s1,t4
   1952e:	b759                	j	194b4 <__subtf3+0x5a4>
   19530:	00e66333          	or	t1,a2,a4
   19534:	16031263          	bnez	t1,19698 <__subtf3+0x788>
   19538:	ffe90493          	addi	s1,s2,-2
   1953c:	0014b493          	seqz	s1,s1
   19540:	4681                	li	a3,0
   19542:	bf8d                	j	194b4 <__subtf3+0x5a4>
   19544:	02cf1e63          	bne	t5,a2,19580 <__subtf3+0x670>
   19548:	1c0f8563          	beqz	t6,19712 <__subtf3+0x802>
   1954c:	15ca                	slli	a1,a1,0x32
   1954e:	00be75b3          	and	a1,t3,a1
   19552:	0015b713          	seqz	a4,a1
   19556:	0712                	slli	a4,a4,0x4
   19558:	03e89963          	bne	a7,t5,1958a <__subtf3+0x67a>
   1955c:	c511                	beqz	a0,19568 <__subtf3+0x658>
   1955e:	00d69613          	slli	a2,a3,0xd
   19562:	00064363          	bltz	a2,19568 <__subtf3+0x658>
   19566:	4741                	li	a4,16
   19568:	020f9163          	bnez	t6,1958a <__subtf3+0x67a>
   1956c:	84f6                	mv	s1,t4
   1956e:	e115                	bnez	a0,19592 <__subtf3+0x682>
   19570:	4685                	li	a3,1
   19572:	69a1                	lui	s3,0x8
   19574:	4781                	li	a5,0
   19576:	16ca                	slli	a3,a3,0x32
   19578:	19fd                	addi	s3,s3,-1
   1957a:	4481                	li	s1,0
   1957c:	4741                	li	a4,16
   1957e:	b9b9                	j	191dc <__subtf3+0x2cc>
   19580:	4701                	li	a4,0
   19582:	fec893e3          	bne	a7,a2,19568 <__subtf3+0x658>
   19586:	4701                	li	a4,0
   19588:	bfd1                	j	1955c <__subtf3+0x64c>
   1958a:	c40513e3          	bnez	a0,191d0 <__subtf3+0x2c0>
   1958e:	86f2                	mv	a3,t3
   19590:	879a                	mv	a5,t1
   19592:	69a1                	lui	s3,0x8
   19594:	19fd                	addi	s3,s3,-1
   19596:	b6fd                	j	19184 <__subtf3+0x274>
   19598:	40f30a33          	sub	s4,t1,a5
   1959c:	40de0433          	sub	s0,t3,a3
   195a0:	01433733          	sltu	a4,t1,s4
   195a4:	8c19                	sub	s0,s0,a4
   195a6:	15ce                	slli	a1,a1,0x33
   195a8:	8de1                	and	a1,a1,s0
   195aa:	cdb5                	beqz	a1,19626 <__subtf3+0x716>
   195ac:	40678a33          	sub	s4,a5,t1
   195b0:	41c68733          	sub	a4,a3,t3
   195b4:	0147b6b3          	sltu	a3,a5,s4
   195b8:	40d70433          	sub	s0,a4,a3
   195bc:	84f6                	mv	s1,t4
   195be:	c82d                	beqz	s0,19630 <__subtf3+0x720>
   195c0:	8522                	mv	a0,s0
   195c2:	594000ef          	jal	ra,19b56 <__clzdi2>
   195c6:	2501                	sext.w	a0,a0
   195c8:	ff450f9b          	addiw	t6,a0,-12
   195cc:	03f00793          	li	a5,63
   195d0:	877e                	mv	a4,t6
   195d2:	07f7c563          	blt	a5,t6,1963c <__subtf3+0x72c>
   195d6:	04000693          	li	a3,64
   195da:	41f686bb          	subw	a3,a3,t6
   195de:	01f41433          	sll	s0,s0,t6
   195e2:	00da56b3          	srl	a3,s4,a3
   195e6:	8c55                	or	s0,s0,a3
   195e8:	01fa1333          	sll	t1,s4,t6
   195ec:	093fc263          	blt	t6,s3,19670 <__subtf3+0x760>
   195f0:	413709bb          	subw	s3,a4,s3
   195f4:	2985                	addiw	s3,s3,1
   195f6:	0009869b          	sext.w	a3,s3
   195fa:	03f00793          	li	a5,63
   195fe:	04d7c563          	blt	a5,a3,19648 <__subtf3+0x738>
   19602:	04000513          	li	a0,64
   19606:	4135053b          	subw	a0,a0,s3
   1960a:	00d35733          	srl	a4,t1,a3
   1960e:	00a417b3          	sll	a5,s0,a0
   19612:	00a31333          	sll	t1,t1,a0
   19616:	8fd9                	or	a5,a5,a4
   19618:	00603333          	snez	t1,t1
   1961c:	0067e333          	or	t1,a5,t1
   19620:	00d456b3          	srl	a3,s0,a3
   19624:	bd41                	j	194b4 <__subtf3+0x5a4>
   19626:	008a6333          	or	t1,s4,s0
   1962a:	f8031ae3          	bnez	t1,195be <__subtf3+0x6ae>
   1962e:	b729                	j	19538 <__subtf3+0x628>
   19630:	8552                	mv	a0,s4
   19632:	524000ef          	jal	ra,19b56 <__clzdi2>
   19636:	0405051b          	addiw	a0,a0,64
   1963a:	b779                	j	195c8 <__subtf3+0x6b8>
   1963c:	fb45041b          	addiw	s0,a0,-76
   19640:	008a1433          	sll	s0,s4,s0
   19644:	4301                	li	t1,0
   19646:	b75d                	j	195ec <__subtf3+0x6dc>
   19648:	04000713          	li	a4,64
   1964c:	013457b3          	srl	a5,s0,s3
   19650:	4501                	li	a0,0
   19652:	00e68863          	beq	a3,a4,19662 <__subtf3+0x752>
   19656:	08000513          	li	a0,128
   1965a:	4135053b          	subw	a0,a0,s3
   1965e:	00a41533          	sll	a0,s0,a0
   19662:	00a36333          	or	t1,t1,a0
   19666:	006036b3          	snez	a3,t1
   1966a:	00d7e333          	or	t1,a5,a3
   1966e:	bdc9                	j	19540 <__subtf3+0x630>
   19670:	56fd                	li	a3,-1
   19672:	16ce                	slli	a3,a3,0x33
   19674:	16fd                	addi	a3,a3,-1
   19676:	41f98fb3          	sub	t6,s3,t6
   1967a:	8ee1                	and	a3,a3,s0
   1967c:	e20f8ce3          	beqz	t6,194b4 <__subtf3+0x5a4>
   19680:	879a                	mv	a5,t1
   19682:	89fe                	mv	s3,t6
   19684:	b2bd                	j	18ff2 <__subtf3+0xe2>
   19686:	833e                	mv	t1,a5
   19688:	84f6                	mv	s1,t4
   1968a:	bfcd                	j	1967c <__subtf3+0x76c>
   1968c:	833e                	mv	t1,a5
   1968e:	b51d                	j	194b4 <__subtf3+0x5a4>
   19690:	833e                	mv	t1,a5
   19692:	bd69                	j	1952c <__subtf3+0x61c>
   19694:	86f2                	mv	a3,t3
   19696:	bd39                	j	194b4 <__subtf3+0x5a4>
   19698:	86ba                	mv	a3,a4
   1969a:	8332                	mv	t1,a2
   1969c:	bd21                	j	194b4 <__subtf3+0x5a4>
   1969e:	4705                	li	a4,1
   196a0:	e4049ae3          	bnez	s1,194f4 <__subtf3+0x5e4>
   196a4:	ff87b793          	sltiu	a5,a5,-8
   196a8:	0017c793          	xori	a5,a5,1
   196ac:	983e                	add	a6,a6,a5
   196ae:	b599                	j	194f4 <__subtf3+0x5e4>
   196b0:	4705                	li	a4,1
   196b2:	e40481e3          	beqz	s1,194f4 <__subtf3+0x5e4>
   196b6:	b7fd                	j	196a4 <__subtf3+0x794>
   196b8:	4681                	li	a3,0
   196ba:	4781                	li	a5,0
   196bc:	89c6                	mv	s3,a7
   196be:	4701                	li	a4,0
   196c0:	be31                	j	191dc <__subtf3+0x2cc>
   196c2:	4681                	li	a3,0
   196c4:	bfed                	j	196be <__subtf3+0x7ae>
   196c6:	879a                	mv	a5,t1
   196c8:	4801                	li	a6,0
   196ca:	bae1                	j	190a2 <__subtf3+0x192>
   196cc:	4681                	li	a3,0
   196ce:	4781                	li	a5,0
   196d0:	89c6                	mv	s3,a7
   196d2:	84f6                	mv	s1,t4
   196d4:	b7ed                	j	196be <__subtf3+0x7ae>
   196d6:	4681                	li	a3,0
   196d8:	4981                	li	s3,0
   196da:	b7d5                	j	196be <__subtf3+0x7ae>
   196dc:	aa0498e3          	bnez	s1,1918c <__subtf3+0x27c>
   196e0:	00878593          	addi	a1,a5,8
   196e4:	b6ed                	j	192ce <__subtf3+0x3be>
   196e6:	aa0483e3          	beqz	s1,1918c <__subtf3+0x27c>
   196ea:	bfdd                	j	196e0 <__subtf3+0x7d0>
   196ec:	4781                	li	a5,0
   196ee:	00090e63          	beqz	s2,1970a <__subtf3+0x7fa>
   196f2:	468d                	li	a3,3
   196f4:	00d91763          	bne	s2,a3,19702 <__subtf3+0x7f2>
   196f8:	c889                	beqz	s1,1970a <__subtf3+0x7fa>
   196fa:	57fd                	li	a5,-1
   196fc:	ffe60993          	addi	s3,a2,-2
   19700:	a029                	j	1970a <__subtf3+0x7fa>
   19702:	4689                	li	a3,2
   19704:	fed91be3          	bne	s2,a3,196fa <__subtf3+0x7ea>
   19708:	d8ed                	beqz	s1,196fa <__subtf3+0x7ea>
   1970a:	00576713          	ori	a4,a4,5
   1970e:	86be                	mv	a3,a5
   19710:	b4e5                	j	191f8 <__subtf3+0x2e8>
   19712:	4701                	li	a4,0
   19714:	e5e89ce3          	bne	a7,t5,1956c <__subtf3+0x65c>
   19718:	b5bd                	j	19586 <__subtf3+0x676>
   1971a:	b7e89ce3          	bne	a7,t5,19292 <__subtf3+0x382>
   1971e:	be81                	j	1926e <__subtf3+0x35e>

0000000000019720 <__fixtfsi>:
   19720:	1141                	addi	sp,sp,-16
   19722:	002027f3          	frrm	a5
   19726:	57fd                	li	a5,-1
   19728:	00159613          	slli	a2,a1,0x1
   1972c:	6811                	lui	a6,0x4
   1972e:	83c1                	srli	a5,a5,0x10
   19730:	9245                	srli	a2,a2,0x31
   19732:	ffe80713          	addi	a4,a6,-2 # 3ffe <main-0xc0b2>
   19736:	8fed                	and	a5,a5,a1
   19738:	00c74963          	blt	a4,a2,1974a <__fixtfsi+0x2a>
   1973c:	e62d                	bnez	a2,197a6 <__fixtfsi+0x86>
   1973e:	8fc9                	or	a5,a5,a0
   19740:	4681                	li	a3,0
   19742:	eb95                	bnez	a5,19776 <__fixtfsi+0x56>
   19744:	8536                	mv	a0,a3
   19746:	0141                	addi	sp,sp,16
   19748:	8082                	ret
   1974a:	01d80713          	addi	a4,a6,29
   1974e:	91fd                	srli	a1,a1,0x3f
   19750:	02c75563          	ble	a2,a4,1977a <__fixtfsi+0x5a>
   19754:	800006b7          	lui	a3,0x80000
   19758:	fff6c693          	not	a3,a3
   1975c:	9ead                	addw	a3,a3,a1
   1975e:	c5b1                	beqz	a1,197aa <__fixtfsi+0x8a>
   19760:	0879                	addi	a6,a6,30
   19762:	45c1                	li	a1,16
   19764:	05061463          	bne	a2,a6,197ac <__fixtfsi+0x8c>
   19768:	0117d713          	srli	a4,a5,0x11
   1976c:	e321                	bnez	a4,197ac <__fixtfsi+0x8c>
   1976e:	02f79713          	slli	a4,a5,0x2f
   19772:	8f49                	or	a4,a4,a0
   19774:	db61                	beqz	a4,19744 <__fixtfsi+0x24>
   19776:	4585                	li	a1,1
   19778:	a815                	j	197ac <__fixtfsi+0x8c>
   1977a:	4705                	li	a4,1
   1977c:	1742                	slli	a4,a4,0x30
   1977e:	2601                	sext.w	a2,a2
   19780:	8fd9                	or	a5,a5,a4
   19782:	01160713          	addi	a4,a2,17
   19786:	00e79733          	sll	a4,a5,a4
   1978a:	8f49                	or	a4,a4,a0
   1978c:	6511                	lui	a0,0x4
   1978e:	02f5051b          	addiw	a0,a0,47
   19792:	40c5063b          	subw	a2,a0,a2
   19796:	00c7d7b3          	srl	a5,a5,a2
   1979a:	0007869b          	sext.w	a3,a5
   1979e:	d9f9                	beqz	a1,19774 <__fixtfsi+0x54>
   197a0:	40d006bb          	negw	a3,a3
   197a4:	bfc1                	j	19774 <__fixtfsi+0x54>
   197a6:	4681                	li	a3,0
   197a8:	b7f9                	j	19776 <__fixtfsi+0x56>
   197aa:	45c1                	li	a1,16
   197ac:	0015a073          	csrs	fflags,a1
   197b0:	bf51                	j	19744 <__fixtfsi+0x24>

00000000000197b2 <__floatsitf>:
   197b2:	7179                	addi	sp,sp,-48
   197b4:	f406                	sd	ra,40(sp)
   197b6:	f022                	sd	s0,32(sp)
   197b8:	ec26                	sd	s1,24(sp)
   197ba:	c53d                	beqz	a0,19828 <__floatsitf+0x76>
   197bc:	0005079b          	sext.w	a5,a0
   197c0:	03f55493          	srli	s1,a0,0x3f
   197c4:	00055463          	bgez	a0,197cc <__floatsitf+0x1a>
   197c8:	40f007bb          	negw	a5,a5
   197cc:	02079413          	slli	s0,a5,0x20
   197d0:	9001                	srli	s0,s0,0x20
   197d2:	8522                	mv	a0,s0
   197d4:	382000ef          	jal	ra,19b56 <__clzdi2>
   197d8:	6691                	lui	a3,0x4
   197da:	03e6879b          	addiw	a5,a3,62
   197de:	40a7873b          	subw	a4,a5,a0
   197e2:	02f6879b          	addiw	a5,a3,47
   197e6:	9f99                	subw	a5,a5,a4
   197e8:	00f417b3          	sll	a5,s0,a5
   197ec:	56fd                	li	a3,-1
   197ee:	0106d413          	srli	s0,a3,0x10
   197f2:	8fe1                	and	a5,a5,s0
   197f4:	6422                	ld	s0,8(sp)
   197f6:	03069613          	slli	a2,a3,0x30
   197fa:	65a1                	lui	a1,0x8
   197fc:	8c71                	and	s0,s0,a2
   197fe:	8fc1                	or	a5,a5,s0
   19800:	f8001437          	lui	s0,0xf8001
   19804:	15fd                	addi	a1,a1,-1
   19806:	1412                	slli	s0,s0,0x24
   19808:	8f6d                	and	a4,a4,a1
   1980a:	147d                	addi	s0,s0,-1
   1980c:	8fe1                	and	a5,a5,s0
   1980e:	70a2                	ld	ra,40(sp)
   19810:	7402                	ld	s0,32(sp)
   19812:	1742                	slli	a4,a4,0x30
   19814:	8fd9                	or	a5,a5,a4
   19816:	8285                	srli	a3,a3,0x1
   19818:	03f49593          	slli	a1,s1,0x3f
   1981c:	8ff5                	and	a5,a5,a3
   1981e:	64e2                	ld	s1,24(sp)
   19820:	4501                	li	a0,0
   19822:	8ddd                	or	a1,a1,a5
   19824:	6145                	addi	sp,sp,48
   19826:	8082                	ret
   19828:	4781                	li	a5,0
   1982a:	4701                	li	a4,0
   1982c:	4481                	li	s1,0
   1982e:	bf7d                	j	197ec <__floatsitf+0x3a>

0000000000019830 <__extenddftf2>:
   19830:	7179                	addi	sp,sp,-48
   19832:	ec26                	sd	s1,24(sp)
   19834:	f406                	sd	ra,40(sp)
   19836:	f022                	sd	s0,32(sp)
   19838:	e20504d3          	fmv.x.d	s1,fa0
   1983c:	002027f3          	frrm	a5
   19840:	0344d513          	srli	a0,s1,0x34
   19844:	7ff57513          	andi	a0,a0,2047
   19848:	547d                	li	s0,-1
   1984a:	00150793          	addi	a5,a0,1 # 4001 <main-0xc0af>
   1984e:	8031                	srli	s0,s0,0xc
   19850:	7ff7f793          	andi	a5,a5,2047
   19854:	4685                	li	a3,1
   19856:	8c65                	and	s0,s0,s1
   19858:	90fd                	srli	s1,s1,0x3f
   1985a:	00f6db63          	ble	a5,a3,19870 <__extenddftf2+0x40>
   1985e:	6791                	lui	a5,0x4
   19860:	c0078793          	addi	a5,a5,-1024 # 3c00 <main-0xc4b0>
   19864:	00445713          	srli	a4,s0,0x4
   19868:	953e                	add	a0,a0,a5
   1986a:	1472                	slli	s0,s0,0x3c
   1986c:	4781                	li	a5,0
   1986e:	a8b1                	j	198ca <__extenddftf2+0x9a>
   19870:	ed1d                	bnez	a0,198ae <__extenddftf2+0x7e>
   19872:	4701                	li	a4,0
   19874:	dc65                	beqz	s0,1986c <__extenddftf2+0x3c>
   19876:	8522                	mv	a0,s0
   19878:	2de000ef          	jal	ra,19b56 <__clzdi2>
   1987c:	0005071b          	sext.w	a4,a0
   19880:	47b9                	li	a5,14
   19882:	02e7c063          	blt	a5,a4,198a2 <__extenddftf2+0x72>
   19886:	473d                	li	a4,15
   19888:	9f09                	subw	a4,a4,a0
   1988a:	0315079b          	addiw	a5,a0,49
   1988e:	00e45733          	srl	a4,s0,a4
   19892:	00f41433          	sll	s0,s0,a5
   19896:	6791                	lui	a5,0x4
   19898:	c0c7879b          	addiw	a5,a5,-1012
   1989c:	40a7853b          	subw	a0,a5,a0
   198a0:	b7f1                	j	1986c <__extenddftf2+0x3c>
   198a2:	ff15071b          	addiw	a4,a0,-15
   198a6:	00e41733          	sll	a4,s0,a4
   198aa:	4401                	li	s0,0
   198ac:	b7ed                	j	19896 <__extenddftf2+0x66>
   198ae:	cc39                	beqz	s0,1990c <__extenddftf2+0xdc>
   198b0:	03369793          	slli	a5,a3,0x33
   198b4:	8fe1                	and	a5,a5,s0
   198b6:	00445713          	srli	a4,s0,0x4
   198ba:	0017b793          	seqz	a5,a5
   198be:	16be                	slli	a3,a3,0x2f
   198c0:	6521                	lui	a0,0x8
   198c2:	0792                	slli	a5,a5,0x4
   198c4:	8f55                	or	a4,a4,a3
   198c6:	1472                	slli	s0,s0,0x3c
   198c8:	157d                	addi	a0,a0,-1
   198ca:	56fd                	li	a3,-1
   198cc:	65a2                	ld	a1,8(sp)
   198ce:	0106d613          	srli	a2,a3,0x10
   198d2:	8f71                	and	a4,a4,a2
   198d4:	03069613          	slli	a2,a3,0x30
   198d8:	8df1                	and	a1,a1,a2
   198da:	8f4d                	or	a4,a4,a1
   198dc:	6621                	lui	a2,0x8
   198de:	f80015b7          	lui	a1,0xf8001
   198e2:	167d                	addi	a2,a2,-1
   198e4:	1592                	slli	a1,a1,0x24
   198e6:	8d71                	and	a0,a0,a2
   198e8:	15fd                	addi	a1,a1,-1
   198ea:	8df9                	and	a1,a1,a4
   198ec:	1542                	slli	a0,a0,0x30
   198ee:	8d4d                	or	a0,a0,a1
   198f0:	0016d593          	srli	a1,a3,0x1
   198f4:	14fe                	slli	s1,s1,0x3f
   198f6:	8de9                	and	a1,a1,a0
   198f8:	8dc5                	or	a1,a1,s1
   198fa:	c399                	beqz	a5,19900 <__extenddftf2+0xd0>
   198fc:	0017a073          	csrs	fflags,a5
   19900:	8522                	mv	a0,s0
   19902:	70a2                	ld	ra,40(sp)
   19904:	7402                	ld	s0,32(sp)
   19906:	64e2                	ld	s1,24(sp)
   19908:	6145                	addi	sp,sp,48
   1990a:	8082                	ret
   1990c:	6521                	lui	a0,0x8
   1990e:	4701                	li	a4,0
   19910:	157d                	addi	a0,a0,-1
   19912:	bfa9                	j	1986c <__extenddftf2+0x3c>

0000000000019914 <__trunctfdf2>:
   19914:	1141                	addi	sp,sp,-16
   19916:	002028f3          	frrm	a7
   1991a:	57fd                	li	a5,-1
   1991c:	83c1                	srli	a5,a5,0x10
   1991e:	6321                	lui	t1,0x8
   19920:	0305d713          	srli	a4,a1,0x30
   19924:	137d                	addi	t1,t1,-1
   19926:	03f5d813          	srli	a6,a1,0x3f
   1992a:	8dfd                	and	a1,a1,a5
   1992c:	00359793          	slli	a5,a1,0x3
   19930:	00677733          	and	a4,a4,t1
   19934:	03d55593          	srli	a1,a0,0x3d
   19938:	8ddd                	or	a1,a1,a5
   1993a:	00170793          	addi	a5,a4,1
   1993e:	0067f7b3          	and	a5,a5,t1
   19942:	4605                	li	a2,1
   19944:	2881                	sext.w	a7,a7
   19946:	00351e93          	slli	t4,a0,0x3
   1994a:	18f65163          	ble	a5,a2,19acc <__trunctfdf2+0x1b8>
   1994e:	77f1                	lui	a5,0xffffc
   19950:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__global_pointer$+0xfffffffffffdf218>
   19954:	973e                	add	a4,a4,a5
   19956:	7fe00793          	li	a5,2046
   1995a:	0ae7d063          	ble	a4,a5,199fa <__trunctfdf2+0xe6>
   1995e:	04088263          	beqz	a7,199a2 <__trunctfdf2+0x8e>
   19962:	478d                	li	a5,3
   19964:	02f89a63          	bne	a7,a5,19998 <__trunctfdf2+0x84>
   19968:	02080d63          	beqz	a6,199a2 <__trunctfdf2+0x8e>
   1996c:	57fd                	li	a5,-1
   1996e:	7fe00713          	li	a4,2046
   19972:	4681                	li	a3,0
   19974:	4e15                	li	t3,5
   19976:	4609                	li	a2,2
   19978:	001e6e13          	ori	t3,t3,1
   1997c:	1ac88663          	beq	a7,a2,19b28 <__trunctfdf2+0x214>
   19980:	460d                	li	a2,3
   19982:	18c88f63          	beq	a7,a2,19b20 <__trunctfdf2+0x20c>
   19986:	12089a63          	bnez	a7,19aba <__trunctfdf2+0x1a6>
   1998a:	00f7f613          	andi	a2,a5,15
   1998e:	4591                	li	a1,4
   19990:	12b60563          	beq	a2,a1,19aba <__trunctfdf2+0x1a6>
   19994:	0791                	addi	a5,a5,4
   19996:	a215                	j	19aba <__trunctfdf2+0x1a6>
   19998:	4789                	li	a5,2
   1999a:	fcf899e3          	bne	a7,a5,1996c <__trunctfdf2+0x58>
   1999e:	fc0807e3          	beqz	a6,1996c <__trunctfdf2+0x58>
   199a2:	4781                	li	a5,0
   199a4:	7ff00713          	li	a4,2047
   199a8:	4e15                	li	t3,5
   199aa:	00879693          	slli	a3,a5,0x8
   199ae:	0006db63          	bgez	a3,199c4 <__trunctfdf2+0xb0>
   199b2:	0705                	addi	a4,a4,1
   199b4:	7ff00693          	li	a3,2047
   199b8:	16d70b63          	beq	a4,a3,19b2e <__trunctfdf2+0x21a>
   199bc:	55fd                	li	a1,-1
   199be:	15de                	slli	a1,a1,0x37
   199c0:	15fd                	addi	a1,a1,-1
   199c2:	8fed                	and	a5,a5,a1
   199c4:	7ff00693          	li	a3,2047
   199c8:	838d                	srli	a5,a5,0x3
   199ca:	00d71663          	bne	a4,a3,199d6 <__trunctfdf2+0xc2>
   199ce:	c781                	beqz	a5,199d6 <__trunctfdf2+0xc2>
   199d0:	4785                	li	a5,1
   199d2:	17ce                	slli	a5,a5,0x33
   199d4:	4801                	li	a6,0
   199d6:	56fd                	li	a3,-1
   199d8:	82b1                	srli	a3,a3,0xc
   199da:	7ff77713          	andi	a4,a4,2047
   199de:	8ff5                	and	a5,a5,a3
   199e0:	1752                	slli	a4,a4,0x34
   199e2:	03f81693          	slli	a3,a6,0x3f
   199e6:	8fd9                	or	a5,a5,a4
   199e8:	8fd5                	or	a5,a5,a3
   199ea:	000e0463          	beqz	t3,199f2 <__trunctfdf2+0xde>
   199ee:	001e2073          	csrs	fflags,t3
   199f2:	f2078553          	fmv.d.x	fa0,a5
   199f6:	0141                	addi	sp,sp,16
   199f8:	8082                	ret
   199fa:	0ae04163          	bgtz	a4,19a9c <__trunctfdf2+0x188>
   199fe:	fcc00793          	li	a5,-52
   19a02:	10f74063          	blt	a4,a5,19b02 <__trunctfdf2+0x1ee>
   19a06:	164e                	slli	a2,a2,0x33
   19a08:	8dd1                	or	a1,a1,a2
   19a0a:	03d00613          	li	a2,61
   19a0e:	8e19                	sub	a2,a2,a4
   19a10:	03f00793          	li	a5,63
   19a14:	2701                	sext.w	a4,a4
   19a16:	06c7c063          	blt	a5,a2,19a76 <__trunctfdf2+0x162>
   19a1a:	0037061b          	addiw	a2,a4,3
   19a1e:	03d00793          	li	a5,61
   19a22:	9f99                	subw	a5,a5,a4
   19a24:	00ce96b3          	sll	a3,t4,a2
   19a28:	00fed7b3          	srl	a5,t4,a5
   19a2c:	00d036b3          	snez	a3,a3
   19a30:	8fd5                	or	a5,a5,a3
   19a32:	00c595b3          	sll	a1,a1,a2
   19a36:	8fcd                	or	a5,a5,a1
   19a38:	4701                	li	a4,0
   19a3a:	c3ed                	beqz	a5,19b1c <__trunctfdf2+0x208>
   19a3c:	00179713          	slli	a4,a5,0x1
   19a40:	00777693          	andi	a3,a4,7
   19a44:	4e01                	li	t3,0
   19a46:	c28d                	beqz	a3,19a68 <__trunctfdf2+0x154>
   19a48:	4689                	li	a3,2
   19a4a:	0cd88363          	beq	a7,a3,19b10 <__trunctfdf2+0x1fc>
   19a4e:	468d                	li	a3,3
   19a50:	0ad88b63          	beq	a7,a3,19b06 <__trunctfdf2+0x1f2>
   19a54:	4e05                	li	t3,1
   19a56:	00089963          	bnez	a7,19a68 <__trunctfdf2+0x154>
   19a5a:	00f77693          	andi	a3,a4,15
   19a5e:	4611                	li	a2,4
   19a60:	4e05                	li	t3,1
   19a62:	00c68363          	beq	a3,a2,19a68 <__trunctfdf2+0x154>
   19a66:	0711                	addi	a4,a4,4
   19a68:	03875693          	srli	a3,a4,0x38
   19a6c:	0016c693          	xori	a3,a3,1
   19a70:	8a85                	andi	a3,a3,1
   19a72:	4701                	li	a4,0
   19a74:	a83d                	j	19ab2 <__trunctfdf2+0x19e>
   19a76:	57f5                	li	a5,-3
   19a78:	9f99                	subw	a5,a5,a4
   19a7a:	04000513          	li	a0,64
   19a7e:	00f5d7b3          	srl	a5,a1,a5
   19a82:	4681                	li	a3,0
   19a84:	00a60663          	beq	a2,a0,19a90 <__trunctfdf2+0x17c>
   19a88:	0437071b          	addiw	a4,a4,67
   19a8c:	00e596b3          	sll	a3,a1,a4
   19a90:	01d6e6b3          	or	a3,a3,t4
   19a94:	00d036b3          	snez	a3,a3
   19a98:	8fd5                	or	a5,a5,a3
   19a9a:	bf79                	j	19a38 <__trunctfdf2+0x124>
   19a9c:	051e                	slli	a0,a0,0x7
   19a9e:	03ced693          	srli	a3,t4,0x3c
   19aa2:	00a03533          	snez	a0,a0
   19aa6:	8d55                	or	a0,a0,a3
   19aa8:	0592                	slli	a1,a1,0x4
   19aaa:	00a5e7b3          	or	a5,a1,a0
   19aae:	4681                	li	a3,0
   19ab0:	4e01                	li	t3,0
   19ab2:	0077f613          	andi	a2,a5,7
   19ab6:	ec0610e3          	bnez	a2,19976 <__trunctfdf2+0x62>
   19aba:	ee0688e3          	beqz	a3,199aa <__trunctfdf2+0x96>
   19abe:	001e7693          	andi	a3,t3,1
   19ac2:	ee0684e3          	beqz	a3,199aa <__trunctfdf2+0x96>
   19ac6:	002e6e13          	ori	t3,t3,2
   19aca:	b5c5                	j	199aa <__trunctfdf2+0x96>
   19acc:	01d5e7b3          	or	a5,a1,t4
   19ad0:	e701                	bnez	a4,19ad8 <__trunctfdf2+0x1c4>
   19ad2:	00f037b3          	snez	a5,a5
   19ad6:	b78d                	j	19a38 <__trunctfdf2+0x124>
   19ad8:	c3a1                	beqz	a5,19b18 <__trunctfdf2+0x204>
   19ada:	4e01                	li	t3,0
   19adc:	00671763          	bne	a4,t1,19aea <__trunctfdf2+0x1d6>
   19ae0:	164a                	slli	a2,a2,0x32
   19ae2:	8e6d                	and	a2,a2,a1
   19ae4:	00163e13          	seqz	t3,a2
   19ae8:	0e12                	slli	t3,t3,0x4
   19aea:	03ced513          	srli	a0,t4,0x3c
   19aee:	0592                	slli	a1,a1,0x4
   19af0:	8dc9                	or	a1,a1,a0
   19af2:	4785                	li	a5,1
   19af4:	99e1                	andi	a1,a1,-8
   19af6:	17da                	slli	a5,a5,0x36
   19af8:	8fcd                	or	a5,a5,a1
   19afa:	7ff00713          	li	a4,2047
   19afe:	4681                	li	a3,0
   19b00:	bf4d                	j	19ab2 <__trunctfdf2+0x19e>
   19b02:	4785                	li	a5,1
   19b04:	bf25                	j	19a3c <__trunctfdf2+0x128>
   19b06:	4e05                	li	t3,1
   19b08:	f60810e3          	bnez	a6,19a68 <__trunctfdf2+0x154>
   19b0c:	0721                	addi	a4,a4,8
   19b0e:	bfa9                	j	19a68 <__trunctfdf2+0x154>
   19b10:	4e05                	li	t3,1
   19b12:	f4080be3          	beqz	a6,19a68 <__trunctfdf2+0x154>
   19b16:	bfdd                	j	19b0c <__trunctfdf2+0x1f8>
   19b18:	7ff00713          	li	a4,2047
   19b1c:	4e01                	li	t3,0
   19b1e:	b571                	j	199aa <__trunctfdf2+0x96>
   19b20:	f8081de3          	bnez	a6,19aba <__trunctfdf2+0x1a6>
   19b24:	07a1                	addi	a5,a5,8
   19b26:	bf51                	j	19aba <__trunctfdf2+0x1a6>
   19b28:	f80809e3          	beqz	a6,19aba <__trunctfdf2+0x1a6>
   19b2c:	bfe5                	j	19b24 <__trunctfdf2+0x210>
   19b2e:	4781                	li	a5,0
   19b30:	02088063          	beqz	a7,19b50 <__trunctfdf2+0x23c>
   19b34:	468d                	li	a3,3
   19b36:	00d89863          	bne	a7,a3,19b46 <__trunctfdf2+0x232>
   19b3a:	00080b63          	beqz	a6,19b50 <__trunctfdf2+0x23c>
   19b3e:	57fd                	li	a5,-1
   19b40:	7fe00713          	li	a4,2046
   19b44:	a031                	j	19b50 <__trunctfdf2+0x23c>
   19b46:	4689                	li	a3,2
   19b48:	fed89be3          	bne	a7,a3,19b3e <__trunctfdf2+0x22a>
   19b4c:	fe0809e3          	beqz	a6,19b3e <__trunctfdf2+0x22a>
   19b50:	005e6e13          	ori	t3,t3,5
   19b54:	bd85                	j	199c4 <__trunctfdf2+0xb0>

0000000000019b56 <__clzdi2>:
   19b56:	03800793          	li	a5,56
   19b5a:	00f55733          	srl	a4,a0,a5
   19b5e:	0ff77713          	andi	a4,a4,255
   19b62:	e319                	bnez	a4,19b68 <__clzdi2+0x12>
   19b64:	17e1                	addi	a5,a5,-8
   19b66:	fbf5                	bnez	a5,19b5a <__clzdi2+0x4>
   19b68:	04000713          	li	a4,64
   19b6c:	8f1d                	sub	a4,a4,a5
   19b6e:	00f557b3          	srl	a5,a0,a5
   19b72:	6569                	lui	a0,0x1a
   19b74:	7d050513          	addi	a0,a0,2000 # 1a7d0 <__clz_tab>
   19b78:	97aa                	add	a5,a5,a0
   19b7a:	0007c503          	lbu	a0,0(a5)
   19b7e:	40a7053b          	subw	a0,a4,a0
   19b82:	8082                	ret
