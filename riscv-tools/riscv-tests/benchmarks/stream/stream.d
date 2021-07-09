
stream.out:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	0000d197          	auipc	gp,0xd
   100b4:	22818193          	addi	gp,gp,552 # 1d2d8 <__global_pointer$>
   100b8:	84818513          	addi	a0,gp,-1976 # 1cb20 <_edata>
   100bc:	8f818613          	addi	a2,gp,-1800 # 1cbd0 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	0a9000ef          	jal	ra,1096c <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	30650513          	addi	a0,a0,774 # 103ce <__libc_fini_array>
   100d0:	2d4000ef          	jal	ra,103a4 <atexit>
   100d4:	342000ef          	jal	ra,10416 <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	1b4000ef          	jal	ra,10292 <main>
   100e2:	2ce0006f          	j	103b0 <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6575                	lui	a0,0x1d
   100ea:	67f5                	lui	a5,0x1d
   100ec:	ad850713          	addi	a4,a0,-1320 # 1cad8 <__TMC_END__>
   100f0:	ad878793          	addi	a5,a5,-1320 # 1cad8 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	ad850513          	addi	a0,a0,-1320
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67f5                	lui	a5,0x1d
   1010e:	6575                	lui	a0,0x1d
   10110:	ad878593          	addi	a1,a5,-1320 # 1cad8 <__TMC_END__>
   10114:	ad850793          	addi	a5,a0,-1320 # 1cad8 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	ad850513          	addi	a0,a0,-1320
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8701c703          	lbu	a4,-1936(gp) # 1cb48 <completed.5212>
   1013c:	eb15                	bnez	a4,10170 <__do_global_dtors_aux+0x38>
   1013e:	1141                	addi	sp,sp,-16
   10140:	e022                	sd	s0,0(sp)
   10142:	e406                	sd	ra,8(sp)
   10144:	843e                	mv	s0,a5
   10146:	fa3ff0ef          	jal	ra,100e8 <deregister_tm_clones>
   1014a:	000007b7          	lui	a5,0x0
   1014e:	00078793          	mv	a5,a5
   10152:	cb81                	beqz	a5,10162 <__do_global_dtors_aux+0x2a>
   10154:	6571                	lui	a0,0x1c
   10156:	9c050513          	addi	a0,a0,-1600 # 1b9c0 <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	86f18823          	sb	a5,-1936(gp) # 1cb48 <completed.5212>
   10168:	60a2                	ld	ra,8(sp)
   1016a:	6402                	ld	s0,0(sp)
   1016c:	0141                	addi	sp,sp,16
   1016e:	8082                	ret
   10170:	8082                	ret

0000000000010172 <frame_dummy>:
   10172:	000007b7          	lui	a5,0x0
   10176:	00078793          	mv	a5,a5
   1017a:	cf91                	beqz	a5,10196 <frame_dummy+0x24>
   1017c:	6571                	lui	a0,0x1c
   1017e:	1141                	addi	sp,sp,-16
   10180:	87818593          	addi	a1,gp,-1928 # 1cb50 <object.5217>
   10184:	9c050513          	addi	a0,a0,-1600 # 1b9c0 <__EH_FRAME_BEGIN__>
   10188:	e406                	sd	ra,8(sp)
   1018a:	ffff0097          	auipc	ra,0xffff0
   1018e:	e76080e7          	jalr	-394(ra) # 0 <_start-0x100b0>
   10192:	60a2                	ld	ra,8(sp)
   10194:	0141                	addi	sp,sp,16
   10196:	f77ff06f          	j	1010c <register_tm_clones>

000000000001019a <setStats>:
   1019a:	715d                	addi	sp,sp,-80
   1019c:	e4a2                	sd	s0,72(sp)
   1019e:	0880                	addi	s0,sp,80
   101a0:	87aa                	mv	a5,a0
   101a2:	faf42e23          	sw	a5,-68(s0)
   101a6:	fc042e23          	sw	zero,-36(s0)
   101aa:	fdc42783          	lw	a5,-36(s0)
   101ae:	0007871b          	sext.w	a4,a5
   101b2:	4785                	li	a5,1
   101b4:	fee7cbe3          	blt	a5,a4,101aa <setStats+0x10>
   101b8:	c00027f3          	rdcycle	a5
   101bc:	fcf43823          	sd	a5,-48(s0)
   101c0:	fd043783          	ld	a5,-48(s0)
   101c4:	fef43423          	sd	a5,-24(s0)
   101c8:	fbc42783          	lw	a5,-68(s0)
   101cc:	2781                	sext.w	a5,a5
   101ce:	eb85                	bnez	a5,101fe <setStats+0x64>
   101d0:	fdc42703          	lw	a4,-36(s0)
   101d4:	070e                	slli	a4,a4,0x3
   101d6:	8a818793          	addi	a5,gp,-1880 # 1cb80 <counters>
   101da:	97ba                	add	a5,a5,a4
   101dc:	639c                	ld	a5,0(a5)
   101de:	fe843703          	ld	a4,-24(s0)
   101e2:	40f707b3          	sub	a5,a4,a5
   101e6:	fef43423          	sd	a5,-24(s0)
   101ea:	fdc42703          	lw	a4,-36(s0)
   101ee:	070e                	slli	a4,a4,0x3
   101f0:	8b818793          	addi	a5,gp,-1864 # 1cb90 <counter_names>
   101f4:	97ba                	add	a5,a5,a4
   101f6:	6769                	lui	a4,0x1a
   101f8:	c8070713          	addi	a4,a4,-896 # 19c80 <__clzdi2+0x36>
   101fc:	e398                	sd	a4,0(a5)
   101fe:	fdc42783          	lw	a5,-36(s0)
   10202:	0017871b          	addiw	a4,a5,1
   10206:	fce42e23          	sw	a4,-36(s0)
   1020a:	00379713          	slli	a4,a5,0x3
   1020e:	8a818793          	addi	a5,gp,-1880 # 1cb80 <counters>
   10212:	97ba                	add	a5,a5,a4
   10214:	fe843703          	ld	a4,-24(s0)
   10218:	e398                	sd	a4,0(a5)
   1021a:	fdc42783          	lw	a5,-36(s0)
   1021e:	0007871b          	sext.w	a4,a5
   10222:	4785                	li	a5,1
   10224:	fee7cbe3          	blt	a5,a4,1021a <setStats+0x80>
   10228:	c02027f3          	rdinstret	a5
   1022c:	fcf43423          	sd	a5,-56(s0)
   10230:	fc843783          	ld	a5,-56(s0)
   10234:	fef43023          	sd	a5,-32(s0)
   10238:	fbc42783          	lw	a5,-68(s0)
   1023c:	2781                	sext.w	a5,a5
   1023e:	eb85                	bnez	a5,1026e <setStats+0xd4>
   10240:	fdc42703          	lw	a4,-36(s0)
   10244:	070e                	slli	a4,a4,0x3
   10246:	8a818793          	addi	a5,gp,-1880 # 1cb80 <counters>
   1024a:	97ba                	add	a5,a5,a4
   1024c:	639c                	ld	a5,0(a5)
   1024e:	fe043703          	ld	a4,-32(s0)
   10252:	40f707b3          	sub	a5,a4,a5
   10256:	fef43023          	sd	a5,-32(s0)
   1025a:	fdc42703          	lw	a4,-36(s0)
   1025e:	070e                	slli	a4,a4,0x3
   10260:	8b818793          	addi	a5,gp,-1864 # 1cb90 <counter_names>
   10264:	97ba                	add	a5,a5,a4
   10266:	6769                	lui	a4,0x1a
   10268:	c8870713          	addi	a4,a4,-888 # 19c88 <__clzdi2+0x3e>
   1026c:	e398                	sd	a4,0(a5)
   1026e:	fdc42783          	lw	a5,-36(s0)
   10272:	0017871b          	addiw	a4,a5,1
   10276:	fce42e23          	sw	a4,-36(s0)
   1027a:	00379713          	slli	a4,a5,0x3
   1027e:	8a818793          	addi	a5,gp,-1880 # 1cb80 <counters>
   10282:	97ba                	add	a5,a5,a4
   10284:	fe043703          	ld	a4,-32(s0)
   10288:	e398                	sd	a4,0(a5)
   1028a:	0001                	nop
   1028c:	6426                	ld	s0,72(sp)
   1028e:	6161                	addi	sp,sp,80
   10290:	8082                	ret

0000000000010292 <main>:
   10292:	7139                	addi	sp,sp,-64
   10294:	fc06                	sd	ra,56(sp)
   10296:	f822                	sd	s0,48(sp)
   10298:	0080                	addi	s0,sp,64
   1029a:	00100537          	lui	a0,0x100
   1029e:	1da000ef          	jal	ra,10478 <malloc>
   102a2:	87aa                	mv	a5,a0
   102a4:	fcf43c23          	sd	a5,-40(s0)
   102a8:	fe042623          	sw	zero,-20(s0)
   102ac:	fe043023          	sd	zero,-32(s0)
   102b0:	20200793          	li	a5,514
   102b4:	fcf42a23          	sw	a5,-44(s0)
   102b8:	c0502573          	csrr	a0,hpmcounter5
   102bc:	87aa                	mv	a5,a0
   102be:	fcf42823          	sw	a5,-48(s0)
   102c2:	c0402573          	csrr	a0,hpmcounter4
   102c6:	87aa                	mv	a5,a0
   102c8:	fcf42623          	sw	a5,-52(s0)
   102cc:	a839                	j	102ea <main+0x58>
   102ce:	fec42783          	lw	a5,-20(s0)
   102d2:	078e                	slli	a5,a5,0x3
   102d4:	fd843703          	ld	a4,-40(s0)
   102d8:	97ba                	add	a5,a5,a4
   102da:	fec42703          	lw	a4,-20(s0)
   102de:	e398                	sd	a4,0(a5)
   102e0:	fec42783          	lw	a5,-20(s0)
   102e4:	2791                	addiw	a5,a5,4
   102e6:	fef42623          	sw	a5,-20(s0)
   102ea:	fec42783          	lw	a5,-20(s0)
   102ee:	0007871b          	sext.w	a4,a5
   102f2:	000207b7          	lui	a5,0x20
   102f6:	fcf74ce3          	blt	a4,a5,102ce <main+0x3c>
   102fa:	4505                	li	a0,1
   102fc:	e9fff0ef          	jal	ra,1019a <setStats>
   10300:	fe042623          	sw	zero,-20(s0)
   10304:	a015                	j	10328 <main+0x96>
   10306:	fec42783          	lw	a5,-20(s0)
   1030a:	078e                	slli	a5,a5,0x3
   1030c:	fd843703          	ld	a4,-40(s0)
   10310:	97ba                	add	a5,a5,a4
   10312:	639c                	ld	a5,0(a5)
   10314:	fe043703          	ld	a4,-32(s0)
   10318:	97ba                	add	a5,a5,a4
   1031a:	fef43023          	sd	a5,-32(s0)
   1031e:	fec42783          	lw	a5,-20(s0)
   10322:	2791                	addiw	a5,a5,4
   10324:	fef42623          	sw	a5,-20(s0)
   10328:	fec42783          	lw	a5,-20(s0)
   1032c:	0007871b          	sext.w	a4,a5
   10330:	000207b7          	lui	a5,0x20
   10334:	fcf749e3          	blt	a4,a5,10306 <main+0x74>
   10338:	4501                	li	a0,0
   1033a:	e61ff0ef          	jal	ra,1019a <setStats>
   1033e:	c0502573          	csrr	a0,hpmcounter5
   10342:	87aa                	mv	a5,a0
   10344:	0007871b          	sext.w	a4,a5
   10348:	fd042783          	lw	a5,-48(s0)
   1034c:	40f707bb          	subw	a5,a4,a5
   10350:	fcf42823          	sw	a5,-48(s0)
   10354:	c0402573          	csrr	a0,hpmcounter4
   10358:	87aa                	mv	a5,a0
   1035a:	0007871b          	sext.w	a4,a5
   1035e:	fcc42783          	lw	a5,-52(s0)
   10362:	40f707bb          	subw	a5,a4,a5
   10366:	fcf42623          	sw	a5,-52(s0)
   1036a:	fcc42703          	lw	a4,-52(s0)
   1036e:	fd042783          	lw	a5,-48(s0)
   10372:	863a                	mv	a2,a4
   10374:	85be                	mv	a1,a5
   10376:	67e9                	lui	a5,0x1a
   10378:	c9078513          	addi	a0,a5,-880 # 19c90 <__clzdi2+0x46>
   1037c:	6c0000ef          	jal	ra,10a3c <printf>
   10380:	8a81b703          	ld	a4,-1880(gp) # 1cb80 <counters>
   10384:	8a818793          	addi	a5,gp,-1880 # 1cb80 <counters>
   10388:	679c                	ld	a5,8(a5)
   1038a:	863e                	mv	a2,a5
   1038c:	85ba                	mv	a1,a4
   1038e:	67e9                	lui	a5,0x1a
   10390:	cb078513          	addi	a0,a5,-848 # 19cb0 <__clzdi2+0x66>
   10394:	6a8000ef          	jal	ra,10a3c <printf>
   10398:	4781                	li	a5,0
   1039a:	853e                	mv	a0,a5
   1039c:	70e2                	ld	ra,56(sp)
   1039e:	7442                	ld	s0,48(sp)
   103a0:	6121                	addi	sp,sp,64
   103a2:	8082                	ret

00000000000103a4 <atexit>:
   103a4:	85aa                	mv	a1,a0
   103a6:	4681                	li	a3,0
   103a8:	4601                	li	a2,0
   103aa:	4501                	li	a0,0
   103ac:	6110106f          	j	121bc <__register_exitproc>

00000000000103b0 <exit>:
   103b0:	1141                	addi	sp,sp,-16
   103b2:	4581                	li	a1,0
   103b4:	e022                	sd	s0,0(sp)
   103b6:	e406                	sd	ra,8(sp)
   103b8:	842a                	mv	s0,a0
   103ba:	667010ef          	jal	ra,12220 <__call_exitprocs>
   103be:	8281b503          	ld	a0,-2008(gp) # 1cb00 <_global_impure_ptr>
   103c2:	6d3c                	ld	a5,88(a0)
   103c4:	c391                	beqz	a5,103c8 <exit+0x18>
   103c6:	9782                	jalr	a5
   103c8:	8522                	mv	a0,s0
   103ca:	1de080ef          	jal	ra,185a8 <_exit>

00000000000103ce <__libc_fini_array>:
   103ce:	7179                	addi	sp,sp,-48
   103d0:	67f1                	lui	a5,0x1c
   103d2:	6771                	lui	a4,0x1c
   103d4:	f022                	sd	s0,32(sp)
   103d6:	9d070713          	addi	a4,a4,-1584 # 1b9d0 <__init_array_end>
   103da:	9d878413          	addi	s0,a5,-1576 # 1b9d8 <__fini_array_end>
   103de:	8c19                	sub	s0,s0,a4
   103e0:	ec26                	sd	s1,24(sp)
   103e2:	e84a                	sd	s2,16(sp)
   103e4:	e44e                	sd	s3,8(sp)
   103e6:	f406                	sd	ra,40(sp)
   103e8:	840d                	srai	s0,s0,0x3
   103ea:	4481                	li	s1,0
   103ec:	9d878913          	addi	s2,a5,-1576
   103f0:	59e1                	li	s3,-8
   103f2:	00941a63          	bne	s0,s1,10406 <__libc_fini_array+0x38>
   103f6:	7402                	ld	s0,32(sp)
   103f8:	70a2                	ld	ra,40(sp)
   103fa:	64e2                	ld	s1,24(sp)
   103fc:	6942                	ld	s2,16(sp)
   103fe:	69a2                	ld	s3,8(sp)
   10400:	6145                	addi	sp,sp,48
   10402:	ce5ff06f          	j	100e6 <_fini>
   10406:	033487b3          	mul	a5,s1,s3
   1040a:	0485                	addi	s1,s1,1
   1040c:	97ca                	add	a5,a5,s2
   1040e:	ff87b783          	ld	a5,-8(a5)
   10412:	9782                	jalr	a5
   10414:	bff9                	j	103f2 <__libc_fini_array+0x24>

0000000000010416 <__libc_init_array>:
   10416:	1101                	addi	sp,sp,-32
   10418:	e822                	sd	s0,16(sp)
   1041a:	e426                	sd	s1,8(sp)
   1041c:	6471                	lui	s0,0x1c
   1041e:	64f1                	lui	s1,0x1c
   10420:	9c448793          	addi	a5,s1,-1596 # 1b9c4 <__preinit_array_end>
   10424:	9c440413          	addi	s0,s0,-1596 # 1b9c4 <__preinit_array_end>
   10428:	8c1d                	sub	s0,s0,a5
   1042a:	e04a                	sd	s2,0(sp)
   1042c:	ec06                	sd	ra,24(sp)
   1042e:	840d                	srai	s0,s0,0x3
   10430:	9c448493          	addi	s1,s1,-1596
   10434:	4901                	li	s2,0
   10436:	02891763          	bne	s2,s0,10464 <__libc_init_array+0x4e>
   1043a:	64f1                	lui	s1,0x1c
   1043c:	cabff0ef          	jal	ra,100e6 <_fini>
   10440:	6471                	lui	s0,0x1c
   10442:	9c848793          	addi	a5,s1,-1592 # 1b9c8 <__frame_dummy_init_array_entry>
   10446:	9d040413          	addi	s0,s0,-1584 # 1b9d0 <__init_array_end>
   1044a:	8c1d                	sub	s0,s0,a5
   1044c:	840d                	srai	s0,s0,0x3
   1044e:	9c848493          	addi	s1,s1,-1592
   10452:	4901                	li	s2,0
   10454:	00891d63          	bne	s2,s0,1046e <__libc_init_array+0x58>
   10458:	60e2                	ld	ra,24(sp)
   1045a:	6442                	ld	s0,16(sp)
   1045c:	64a2                	ld	s1,8(sp)
   1045e:	6902                	ld	s2,0(sp)
   10460:	6105                	addi	sp,sp,32
   10462:	8082                	ret
   10464:	609c                	ld	a5,0(s1)
   10466:	0905                	addi	s2,s2,1
   10468:	04a1                	addi	s1,s1,8
   1046a:	9782                	jalr	a5
   1046c:	b7e9                	j	10436 <__libc_init_array+0x20>
   1046e:	609c                	ld	a5,0(s1)
   10470:	0905                	addi	s2,s2,1
   10472:	04a1                	addi	s1,s1,8
   10474:	9782                	jalr	a5
   10476:	bff9                	j	10454 <__libc_init_array+0x3e>

0000000000010478 <malloc>:
   10478:	85aa                	mv	a1,a0
   1047a:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   1047e:	00e0006f          	j	1048c <_malloc_r>

0000000000010482 <free>:
   10482:	85aa                	mv	a1,a0
   10484:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   10488:	2900206f          	j	12718 <_free_r>

000000000001048c <_malloc_r>:
   1048c:	715d                	addi	sp,sp,-80
   1048e:	fc26                	sd	s1,56(sp)
   10490:	f84a                	sd	s2,48(sp)
   10492:	e486                	sd	ra,72(sp)
   10494:	e0a2                	sd	s0,64(sp)
   10496:	f44e                	sd	s3,40(sp)
   10498:	f052                	sd	s4,32(sp)
   1049a:	ec56                	sd	s5,24(sp)
   1049c:	e85a                	sd	s6,16(sp)
   1049e:	e45e                	sd	s7,8(sp)
   104a0:	e062                	sd	s8,0(sp)
   104a2:	01758493          	addi	s1,a1,23
   104a6:	02e00793          	li	a5,46
   104aa:	892a                	mv	s2,a0
   104ac:	4a97f763          	bleu	s1,a5,1095a <_malloc_r+0x4ce>
   104b0:	800007b7          	lui	a5,0x80000
   104b4:	98c1                	andi	s1,s1,-16
   104b6:	fff7c793          	not	a5,a5
   104ba:	0097e463          	bltu	a5,s1,104c2 <_malloc_r+0x36>
   104be:	02b4f263          	bleu	a1,s1,104e2 <_malloc_r+0x56>
   104c2:	47b1                	li	a5,12
   104c4:	00f92023          	sw	a5,0(s2)
   104c8:	4501                	li	a0,0
   104ca:	60a6                	ld	ra,72(sp)
   104cc:	6406                	ld	s0,64(sp)
   104ce:	74e2                	ld	s1,56(sp)
   104d0:	7942                	ld	s2,48(sp)
   104d2:	79a2                	ld	s3,40(sp)
   104d4:	7a02                	ld	s4,32(sp)
   104d6:	6ae2                	ld	s5,24(sp)
   104d8:	6b42                	ld	s6,16(sp)
   104da:	6ba2                	ld	s7,8(sp)
   104dc:	6c02                	ld	s8,0(sp)
   104de:	6161                	addi	sp,sp,80
   104e0:	8082                	ret
   104e2:	534000ef          	jal	ra,10a16 <__malloc_lock>
   104e6:	1f700793          	li	a5,503
   104ea:	0497e863          	bltu	a5,s1,1053a <_malloc_r+0xae>
   104ee:	0034d793          	srli	a5,s1,0x3
   104f2:	2781                	sext.w	a5,a5
   104f4:	0017871b          	addiw	a4,a5,1
   104f8:	0017171b          	slliw	a4,a4,0x1
   104fc:	66f1                	lui	a3,0x1c
   104fe:	12068693          	addi	a3,a3,288 # 1c120 <__malloc_av_>
   10502:	070e                	slli	a4,a4,0x3
   10504:	9736                	add	a4,a4,a3
   10506:	6700                	ld	s0,8(a4)
   10508:	ff070693          	addi	a3,a4,-16
   1050c:	00d41663          	bne	s0,a3,10518 <_malloc_r+0x8c>
   10510:	6f00                	ld	s0,24(a4)
   10512:	2789                	addiw	a5,a5,2
   10514:	06870663          	beq	a4,s0,10580 <_malloc_r+0xf4>
   10518:	641c                	ld	a5,8(s0)
   1051a:	6c18                	ld	a4,24(s0)
   1051c:	6814                	ld	a3,16(s0)
   1051e:	9bf1                	andi	a5,a5,-4
   10520:	97a2                	add	a5,a5,s0
   10522:	ee98                	sd	a4,24(a3)
   10524:	eb14                	sd	a3,16(a4)
   10526:	6798                	ld	a4,8(a5)
   10528:	00176713          	ori	a4,a4,1
   1052c:	e798                	sd	a4,8(a5)
   1052e:	854a                	mv	a0,s2
   10530:	4e8000ef          	jal	ra,10a18 <__malloc_unlock>
   10534:	01040513          	addi	a0,s0,16
   10538:	bf49                	j	104ca <_malloc_r+0x3e>
   1053a:	0094d713          	srli	a4,s1,0x9
   1053e:	03f00793          	li	a5,63
   10542:	cb01                	beqz	a4,10552 <_malloc_r+0xc6>
   10544:	4791                	li	a5,4
   10546:	08e7e063          	bltu	a5,a4,105c6 <_malloc_r+0x13a>
   1054a:	0064d793          	srli	a5,s1,0x6
   1054e:	0387879b          	addiw	a5,a5,56
   10552:	0017871b          	addiw	a4,a5,1
   10556:	0017171b          	slliw	a4,a4,0x1
   1055a:	66f1                	lui	a3,0x1c
   1055c:	070e                	slli	a4,a4,0x3
   1055e:	12068693          	addi	a3,a3,288 # 1c120 <__malloc_av_>
   10562:	9736                	add	a4,a4,a3
   10564:	6700                	ld	s0,8(a4)
   10566:	ff070593          	addi	a1,a4,-16
   1056a:	457d                	li	a0,31
   1056c:	00b40963          	beq	s0,a1,1057e <_malloc_r+0xf2>
   10570:	6418                	ld	a4,8(s0)
   10572:	9b71                	andi	a4,a4,-4
   10574:	40970633          	sub	a2,a4,s1
   10578:	08c55a63          	ble	a2,a0,1060c <_malloc_r+0x180>
   1057c:	37fd                	addiw	a5,a5,-1
   1057e:	2785                	addiw	a5,a5,1
   10580:	69f1                	lui	s3,0x1c
   10582:	12098693          	addi	a3,s3,288 # 1c120 <__malloc_av_>
   10586:	7280                	ld	s0,32(a3)
   10588:	65f1                	lui	a1,0x1c
   1058a:	13058613          	addi	a2,a1,304 # 1c130 <__malloc_av_+0x10>
   1058e:	12098993          	addi	s3,s3,288
   10592:	13058593          	addi	a1,a1,304
   10596:	0cc40c63          	beq	s0,a2,1066e <_malloc_r+0x1e2>
   1059a:	6418                	ld	a4,8(s0)
   1059c:	487d                	li	a6,31
   1059e:	9b71                	andi	a4,a4,-4
   105a0:	40970533          	sub	a0,a4,s1
   105a4:	06a85f63          	ble	a0,a6,10622 <_malloc_r+0x196>
   105a8:	009407b3          	add	a5,s0,s1
   105ac:	0014e493          	ori	s1,s1,1
   105b0:	e404                	sd	s1,8(s0)
   105b2:	f69c                	sd	a5,40(a3)
   105b4:	f29c                	sd	a5,32(a3)
   105b6:	00156693          	ori	a3,a0,1
   105ba:	ef90                	sd	a2,24(a5)
   105bc:	eb90                	sd	a2,16(a5)
   105be:	e794                	sd	a3,8(a5)
   105c0:	9722                	add	a4,a4,s0
   105c2:	e308                	sd	a0,0(a4)
   105c4:	b7ad                	j	1052e <_malloc_r+0xa2>
   105c6:	47d1                	li	a5,20
   105c8:	00e7e563          	bltu	a5,a4,105d2 <_malloc_r+0x146>
   105cc:	05b7079b          	addiw	a5,a4,91
   105d0:	b749                	j	10552 <_malloc_r+0xc6>
   105d2:	05400793          	li	a5,84
   105d6:	00e7e763          	bltu	a5,a4,105e4 <_malloc_r+0x158>
   105da:	00c4d793          	srli	a5,s1,0xc
   105de:	06e7879b          	addiw	a5,a5,110
   105e2:	bf85                	j	10552 <_malloc_r+0xc6>
   105e4:	15400793          	li	a5,340
   105e8:	00e7e763          	bltu	a5,a4,105f6 <_malloc_r+0x16a>
   105ec:	00f4d793          	srli	a5,s1,0xf
   105f0:	0777879b          	addiw	a5,a5,119
   105f4:	bfb9                	j	10552 <_malloc_r+0xc6>
   105f6:	55400693          	li	a3,1364
   105fa:	07e00793          	li	a5,126
   105fe:	f4e6eae3          	bltu	a3,a4,10552 <_malloc_r+0xc6>
   10602:	0124d793          	srli	a5,s1,0x12
   10606:	07c7879b          	addiw	a5,a5,124
   1060a:	b7a1                	j	10552 <_malloc_r+0xc6>
   1060c:	6c14                	ld	a3,24(s0)
   1060e:	00064863          	bltz	a2,1061e <_malloc_r+0x192>
   10612:	681c                	ld	a5,16(s0)
   10614:	ef94                	sd	a3,24(a5)
   10616:	ea9c                	sd	a5,16(a3)
   10618:	00e407b3          	add	a5,s0,a4
   1061c:	b729                	j	10526 <_malloc_r+0x9a>
   1061e:	8436                	mv	s0,a3
   10620:	b7b1                	j	1056c <_malloc_r+0xe0>
   10622:	f690                	sd	a2,40(a3)
   10624:	f290                	sd	a2,32(a3)
   10626:	00054863          	bltz	a0,10636 <_malloc_r+0x1aa>
   1062a:	9722                	add	a4,a4,s0
   1062c:	671c                	ld	a5,8(a4)
   1062e:	0017e793          	ori	a5,a5,1
   10632:	e71c                	sd	a5,8(a4)
   10634:	bded                	j	1052e <_malloc_r+0xa2>
   10636:	1ff00693          	li	a3,511
   1063a:	12e6e863          	bltu	a3,a4,1076a <_malloc_r+0x2de>
   1063e:	830d                	srli	a4,a4,0x3
   10640:	2701                	sext.w	a4,a4
   10642:	4027561b          	sraiw	a2,a4,0x2
   10646:	4685                	li	a3,1
   10648:	00c696b3          	sll	a3,a3,a2
   1064c:	2705                	addiw	a4,a4,1
   1064e:	0089b603          	ld	a2,8(s3)
   10652:	0017171b          	slliw	a4,a4,0x1
   10656:	070e                	slli	a4,a4,0x3
   10658:	8ed1                	or	a3,a3,a2
   1065a:	974e                	add	a4,a4,s3
   1065c:	00d9b423          	sd	a3,8(s3)
   10660:	6314                	ld	a3,0(a4)
   10662:	ff070613          	addi	a2,a4,-16
   10666:	ec10                	sd	a2,24(s0)
   10668:	e814                	sd	a3,16(s0)
   1066a:	e300                	sd	s0,0(a4)
   1066c:	ee80                	sd	s0,24(a3)
   1066e:	4027d71b          	sraiw	a4,a5,0x2
   10672:	4305                	li	t1,1
   10674:	00e31333          	sll	t1,t1,a4
   10678:	0089b703          	ld	a4,8(s3)
   1067c:	06676063          	bltu	a4,t1,106dc <_malloc_r+0x250>
   10680:	006776b3          	and	a3,a4,t1
   10684:	e699                	bnez	a3,10692 <_malloc_r+0x206>
   10686:	9bf1                	andi	a5,a5,-4
   10688:	0306                	slli	t1,t1,0x1
   1068a:	006776b3          	and	a3,a4,t1
   1068e:	2791                	addiw	a5,a5,4
   10690:	dee5                	beqz	a3,10688 <_malloc_r+0x1fc>
   10692:	4e7d                	li	t3,31
   10694:	0017871b          	addiw	a4,a5,1
   10698:	0017171b          	slliw	a4,a4,0x1
   1069c:	070e                	slli	a4,a4,0x3
   1069e:	1741                	addi	a4,a4,-16
   106a0:	974e                	add	a4,a4,s3
   106a2:	883a                	mv	a6,a4
   106a4:	853e                	mv	a0,a5
   106a6:	01883403          	ld	s0,24(a6)
   106aa:	15041f63          	bne	s0,a6,10808 <_malloc_r+0x37c>
   106ae:	2505                	addiw	a0,a0,1
   106b0:	00357693          	andi	a3,a0,3
   106b4:	0841                	addi	a6,a6,16
   106b6:	fae5                	bnez	a3,106a6 <_malloc_r+0x21a>
   106b8:	0037f693          	andi	a3,a5,3
   106bc:	18069f63          	bnez	a3,1085a <_malloc_r+0x3ce>
   106c0:	0089b703          	ld	a4,8(s3)
   106c4:	fff34793          	not	a5,t1
   106c8:	8ff9                	and	a5,a5,a4
   106ca:	00f9b423          	sd	a5,8(s3)
   106ce:	0089b683          	ld	a3,8(s3)
   106d2:	0306                	slli	t1,t1,0x1
   106d4:	0066e463          	bltu	a3,t1,106dc <_malloc_r+0x250>
   106d8:	18031e63          	bnez	t1,10874 <_malloc_r+0x3e8>
   106dc:	0109bb03          	ld	s6,16(s3)
   106e0:	008b3403          	ld	s0,8(s6)
   106e4:	ffc47a13          	andi	s4,s0,-4
   106e8:	009a6763          	bltu	s4,s1,106f6 <_malloc_r+0x26a>
   106ec:	409a07b3          	sub	a5,s4,s1
   106f0:	477d                	li	a4,31
   106f2:	24f74863          	blt	a4,a5,10942 <_malloc_r+0x4b6>
   106f6:	8581b403          	ld	s0,-1960(gp) # 1cb30 <__malloc_top_pad>
   106fa:	8381b703          	ld	a4,-1992(gp) # 1cb10 <__malloc_sbrk_base>
   106fe:	57fd                	li	a5,-1
   10700:	9426                	add	s0,s0,s1
   10702:	16f71b63          	bne	a4,a5,10878 <_malloc_r+0x3ec>
   10706:	02040413          	addi	s0,s0,32
   1070a:	85a2                	mv	a1,s0
   1070c:	854a                	mv	a0,s2
   1070e:	358000ef          	jal	ra,10a66 <_sbrk_r>
   10712:	57fd                	li	a5,-1
   10714:	8aaa                	mv	s5,a0
   10716:	1cf50b63          	beq	a0,a5,108ec <_malloc_r+0x460>
   1071a:	014b07b3          	add	a5,s6,s4
   1071e:	00f57463          	bleu	a5,a0,10726 <_malloc_r+0x29a>
   10722:	1d3b1563          	bne	s6,s3,108ec <_malloc_r+0x460>
   10726:	8c818693          	addi	a3,gp,-1848 # 1cba0 <__malloc_current_mallinfo>
   1072a:	4298                	lw	a4,0(a3)
   1072c:	8c818b93          	addi	s7,gp,-1848 # 1cba0 <__malloc_current_mallinfo>
   10730:	9f21                	addw	a4,a4,s0
   10732:	c298                	sw	a4,0(a3)
   10734:	15579863          	bne	a5,s5,10884 <_malloc_r+0x3f8>
   10738:	03479693          	slli	a3,a5,0x34
   1073c:	14069463          	bnez	a3,10884 <_malloc_r+0x3f8>
   10740:	0109b783          	ld	a5,16(s3)
   10744:	9452                	add	s0,s0,s4
   10746:	00146413          	ori	s0,s0,1
   1074a:	e780                	sd	s0,8(a5)
   1074c:	000ba783          	lw	a5,0(s7)
   10750:	8501b683          	ld	a3,-1968(gp) # 1cb28 <__malloc_max_sbrked_mem>
   10754:	00f6f463          	bleu	a5,a3,1075c <_malloc_r+0x2d0>
   10758:	84f1b823          	sd	a5,-1968(gp) # 1cb28 <__malloc_max_sbrked_mem>
   1075c:	8481b683          	ld	a3,-1976(gp) # 1cb20 <_edata>
   10760:	18f6f663          	bleu	a5,a3,108ec <_malloc_r+0x460>
   10764:	84f1b423          	sd	a5,-1976(gp) # 1cb20 <_edata>
   10768:	a251                	j	108ec <_malloc_r+0x460>
   1076a:	00975613          	srli	a2,a4,0x9
   1076e:	4691                	li	a3,4
   10770:	04c6e063          	bltu	a3,a2,107b0 <_malloc_r+0x324>
   10774:	00675693          	srli	a3,a4,0x6
   10778:	0386869b          	addiw	a3,a3,56
   1077c:	0016861b          	addiw	a2,a3,1
   10780:	0016161b          	slliw	a2,a2,0x1
   10784:	060e                	slli	a2,a2,0x3
   10786:	964e                	add	a2,a2,s3
   10788:	ff060513          	addi	a0,a2,-16
   1078c:	6210                	ld	a2,0(a2)
   1078e:	06c51763          	bne	a0,a2,107fc <_malloc_r+0x370>
   10792:	4705                	li	a4,1
   10794:	4026d69b          	sraiw	a3,a3,0x2
   10798:	00d716b3          	sll	a3,a4,a3
   1079c:	0089b703          	ld	a4,8(s3)
   107a0:	8ed9                	or	a3,a3,a4
   107a2:	00d9b423          	sd	a3,8(s3)
   107a6:	ec08                	sd	a0,24(s0)
   107a8:	e810                	sd	a2,16(s0)
   107aa:	e900                	sd	s0,16(a0)
   107ac:	ee00                	sd	s0,24(a2)
   107ae:	b5c1                	j	1066e <_malloc_r+0x1e2>
   107b0:	46d1                	li	a3,20
   107b2:	00c6e563          	bltu	a3,a2,107bc <_malloc_r+0x330>
   107b6:	05b6069b          	addiw	a3,a2,91
   107ba:	b7c9                	j	1077c <_malloc_r+0x2f0>
   107bc:	05400693          	li	a3,84
   107c0:	00c6e763          	bltu	a3,a2,107ce <_malloc_r+0x342>
   107c4:	00c75693          	srli	a3,a4,0xc
   107c8:	06e6869b          	addiw	a3,a3,110
   107cc:	bf45                	j	1077c <_malloc_r+0x2f0>
   107ce:	15400693          	li	a3,340
   107d2:	00c6e763          	bltu	a3,a2,107e0 <_malloc_r+0x354>
   107d6:	00f75693          	srli	a3,a4,0xf
   107da:	0776869b          	addiw	a3,a3,119
   107de:	bf79                	j	1077c <_malloc_r+0x2f0>
   107e0:	55400513          	li	a0,1364
   107e4:	07e00693          	li	a3,126
   107e8:	f8c56ae3          	bltu	a0,a2,1077c <_malloc_r+0x2f0>
   107ec:	01275693          	srli	a3,a4,0x12
   107f0:	07c6869b          	addiw	a3,a3,124
   107f4:	b761                	j	1077c <_malloc_r+0x2f0>
   107f6:	6a10                	ld	a2,16(a2)
   107f8:	00c50663          	beq	a0,a2,10804 <_malloc_r+0x378>
   107fc:	6614                	ld	a3,8(a2)
   107fe:	9af1                	andi	a3,a3,-4
   10800:	fed76be3          	bltu	a4,a3,107f6 <_malloc_r+0x36a>
   10804:	6e08                	ld	a0,24(a2)
   10806:	b745                	j	107a6 <_malloc_r+0x31a>
   10808:	6414                	ld	a3,8(s0)
   1080a:	6c10                	ld	a2,24(s0)
   1080c:	9af1                	andi	a3,a3,-4
   1080e:	409688b3          	sub	a7,a3,s1
   10812:	031e5763          	ble	a7,t3,10840 <_malloc_r+0x3b4>
   10816:	6818                	ld	a4,16(s0)
   10818:	009407b3          	add	a5,s0,s1
   1081c:	0014e493          	ori	s1,s1,1
   10820:	e404                	sd	s1,8(s0)
   10822:	ef10                	sd	a2,24(a4)
   10824:	ea18                	sd	a4,16(a2)
   10826:	02f9b423          	sd	a5,40(s3)
   1082a:	02f9b023          	sd	a5,32(s3)
   1082e:	0018e713          	ori	a4,a7,1
   10832:	ef8c                	sd	a1,24(a5)
   10834:	eb8c                	sd	a1,16(a5)
   10836:	e798                	sd	a4,8(a5)
   10838:	96a2                	add	a3,a3,s0
   1083a:	0116b023          	sd	a7,0(a3)
   1083e:	b9c5                	j	1052e <_malloc_r+0xa2>
   10840:	0008cb63          	bltz	a7,10856 <_malloc_r+0x3ca>
   10844:	96a2                	add	a3,a3,s0
   10846:	669c                	ld	a5,8(a3)
   10848:	0017e793          	ori	a5,a5,1
   1084c:	e69c                	sd	a5,8(a3)
   1084e:	681c                	ld	a5,16(s0)
   10850:	ef90                	sd	a2,24(a5)
   10852:	ea1c                	sd	a5,16(a2)
   10854:	b9e9                	j	1052e <_malloc_r+0xa2>
   10856:	8432                	mv	s0,a2
   10858:	bd89                	j	106aa <_malloc_r+0x21e>
   1085a:	ff070693          	addi	a3,a4,-16
   1085e:	6318                	ld	a4,0(a4)
   10860:	37fd                	addiw	a5,a5,-1
   10862:	e4d70be3          	beq	a4,a3,106b8 <_malloc_r+0x22c>
   10866:	b5a5                	j	106ce <_malloc_r+0x242>
   10868:	2791                	addiw	a5,a5,4
   1086a:	0306                	slli	t1,t1,0x1
   1086c:	0066f733          	and	a4,a3,t1
   10870:	df65                	beqz	a4,10868 <_malloc_r+0x3dc>
   10872:	b50d                	j	10694 <_malloc_r+0x208>
   10874:	87aa                	mv	a5,a0
   10876:	bfdd                	j	1086c <_malloc_r+0x3e0>
   10878:	6785                	lui	a5,0x1
   1087a:	07fd                	addi	a5,a5,31
   1087c:	943e                	add	s0,s0,a5
   1087e:	77fd                	lui	a5,0xfffff
   10880:	8c7d                	and	s0,s0,a5
   10882:	b561                	j	1070a <_malloc_r+0x27e>
   10884:	8381b603          	ld	a2,-1992(gp) # 1cb10 <__malloc_sbrk_base>
   10888:	56fd                	li	a3,-1
   1088a:	08d61063          	bne	a2,a3,1090a <_malloc_r+0x47e>
   1088e:	8351bc23          	sd	s5,-1992(gp) # 1cb10 <__malloc_sbrk_base>
   10892:	00faf593          	andi	a1,s5,15
   10896:	c589                	beqz	a1,108a0 <_malloc_r+0x414>
   10898:	47c1                	li	a5,16
   1089a:	40b785b3          	sub	a1,a5,a1
   1089e:	9aae                	add	s5,s5,a1
   108a0:	6785                	lui	a5,0x1
   108a2:	95be                	add	a1,a1,a5
   108a4:	9456                	add	s0,s0,s5
   108a6:	17fd                	addi	a5,a5,-1
   108a8:	8c7d                	and	s0,s0,a5
   108aa:	40858433          	sub	s0,a1,s0
   108ae:	85a2                	mv	a1,s0
   108b0:	854a                	mv	a0,s2
   108b2:	1b4000ef          	jal	ra,10a66 <_sbrk_r>
   108b6:	57fd                	li	a5,-1
   108b8:	00f51463          	bne	a0,a5,108c0 <_malloc_r+0x434>
   108bc:	8556                	mv	a0,s5
   108be:	4401                	li	s0,0
   108c0:	000ba783          	lw	a5,0(s7)
   108c4:	41550533          	sub	a0,a0,s5
   108c8:	0159b823          	sd	s5,16(s3)
   108cc:	9fa1                	addw	a5,a5,s0
   108ce:	942a                	add	s0,s0,a0
   108d0:	00146413          	ori	s0,s0,1
   108d4:	00fba023          	sw	a5,0(s7)
   108d8:	008ab423          	sd	s0,8(s5)
   108dc:	e73b08e3          	beq	s6,s3,1074c <_malloc_r+0x2c0>
   108e0:	477d                	li	a4,31
   108e2:	03476a63          	bltu	a4,s4,10916 <_malloc_r+0x48a>
   108e6:	4785                	li	a5,1
   108e8:	00fab423          	sd	a5,8(s5)
   108ec:	0109b783          	ld	a5,16(s3)
   108f0:	6798                	ld	a4,8(a5)
   108f2:	9b71                	andi	a4,a4,-4
   108f4:	409707b3          	sub	a5,a4,s1
   108f8:	00976563          	bltu	a4,s1,10902 <_malloc_r+0x476>
   108fc:	477d                	li	a4,31
   108fe:	04f74263          	blt	a4,a5,10942 <_malloc_r+0x4b6>
   10902:	854a                	mv	a0,s2
   10904:	114000ef          	jal	ra,10a18 <__malloc_unlock>
   10908:	b6c1                	j	104c8 <_malloc_r+0x3c>
   1090a:	40fa87b3          	sub	a5,s5,a5
   1090e:	9fb9                	addw	a5,a5,a4
   10910:	00fba023          	sw	a5,0(s7)
   10914:	bfbd                	j	10892 <_malloc_r+0x406>
   10916:	008b3783          	ld	a5,8(s6)
   1091a:	fe8a0413          	addi	s0,s4,-24
   1091e:	9841                	andi	s0,s0,-16
   10920:	8b85                	andi	a5,a5,1
   10922:	8fc1                	or	a5,a5,s0
   10924:	00fb3423          	sd	a5,8(s6)
   10928:	46a5                	li	a3,9
   1092a:	008b07b3          	add	a5,s6,s0
   1092e:	e794                	sd	a3,8(a5)
   10930:	eb94                	sd	a3,16(a5)
   10932:	e0877de3          	bleu	s0,a4,1074c <_malloc_r+0x2c0>
   10936:	010b0593          	addi	a1,s6,16
   1093a:	854a                	mv	a0,s2
   1093c:	5dd010ef          	jal	ra,12718 <_free_r>
   10940:	b531                	j	1074c <_malloc_r+0x2c0>
   10942:	0109b403          	ld	s0,16(s3)
   10946:	0014e713          	ori	a4,s1,1
   1094a:	0017e793          	ori	a5,a5,1
   1094e:	e418                	sd	a4,8(s0)
   10950:	94a2                	add	s1,s1,s0
   10952:	0099b823          	sd	s1,16(s3)
   10956:	e49c                	sd	a5,8(s1)
   10958:	bed9                	j	1052e <_malloc_r+0xa2>
   1095a:	02000793          	li	a5,32
   1095e:	b6b7e2e3          	bltu	a5,a1,104c2 <_malloc_r+0x36>
   10962:	0b4000ef          	jal	ra,10a16 <__malloc_lock>
   10966:	02000493          	li	s1,32
   1096a:	b651                	j	104ee <_malloc_r+0x62>

000000000001096c <memset>:
   1096c:	433d                	li	t1,15
   1096e:	872a                	mv	a4,a0
   10970:	02c37163          	bleu	a2,t1,10992 <memset+0x26>
   10974:	00f77793          	andi	a5,a4,15
   10978:	e3c1                	bnez	a5,109f8 <memset+0x8c>
   1097a:	e1bd                	bnez	a1,109e0 <memset+0x74>
   1097c:	ff067693          	andi	a3,a2,-16
   10980:	8a3d                	andi	a2,a2,15
   10982:	96ba                	add	a3,a3,a4
   10984:	e30c                	sd	a1,0(a4)
   10986:	e70c                	sd	a1,8(a4)
   10988:	0741                	addi	a4,a4,16
   1098a:	fed76de3          	bltu	a4,a3,10984 <memset+0x18>
   1098e:	e211                	bnez	a2,10992 <memset+0x26>
   10990:	8082                	ret
   10992:	40c306b3          	sub	a3,t1,a2
   10996:	068a                	slli	a3,a3,0x2
   10998:	00000297          	auipc	t0,0x0
   1099c:	9696                	add	a3,a3,t0
   1099e:	00a68067          	jr	10(a3)
   109a2:	00b70723          	sb	a1,14(a4)
   109a6:	00b706a3          	sb	a1,13(a4)
   109aa:	00b70623          	sb	a1,12(a4)
   109ae:	00b705a3          	sb	a1,11(a4)
   109b2:	00b70523          	sb	a1,10(a4)
   109b6:	00b704a3          	sb	a1,9(a4)
   109ba:	00b70423          	sb	a1,8(a4)
   109be:	00b703a3          	sb	a1,7(a4)
   109c2:	00b70323          	sb	a1,6(a4)
   109c6:	00b702a3          	sb	a1,5(a4)
   109ca:	00b70223          	sb	a1,4(a4)
   109ce:	00b701a3          	sb	a1,3(a4)
   109d2:	00b70123          	sb	a1,2(a4)
   109d6:	00b700a3          	sb	a1,1(a4)
   109da:	00b70023          	sb	a1,0(a4)
   109de:	8082                	ret
   109e0:	0ff5f593          	andi	a1,a1,255
   109e4:	00859693          	slli	a3,a1,0x8
   109e8:	8dd5                	or	a1,a1,a3
   109ea:	01059693          	slli	a3,a1,0x10
   109ee:	8dd5                	or	a1,a1,a3
   109f0:	02059693          	slli	a3,a1,0x20
   109f4:	8dd5                	or	a1,a1,a3
   109f6:	b759                	j	1097c <memset+0x10>
   109f8:	00279693          	slli	a3,a5,0x2
   109fc:	00000297          	auipc	t0,0x0
   10a00:	9696                	add	a3,a3,t0
   10a02:	8286                	mv	t0,ra
   10a04:	fa2680e7          	jalr	-94(a3)
   10a08:	8096                	mv	ra,t0
   10a0a:	17c1                	addi	a5,a5,-16
   10a0c:	8f1d                	sub	a4,a4,a5
   10a0e:	963e                	add	a2,a2,a5
   10a10:	f8c371e3          	bleu	a2,t1,10992 <memset+0x26>
   10a14:	b79d                	j	1097a <memset+0xe>

0000000000010a16 <__malloc_lock>:
   10a16:	8082                	ret

0000000000010a18 <__malloc_unlock>:
   10a18:	8082                	ret

0000000000010a1a <_printf_r>:
   10a1a:	715d                	addi	sp,sp,-80
   10a1c:	f032                	sd	a2,32(sp)
   10a1e:	f436                	sd	a3,40(sp)
   10a20:	f83a                	sd	a4,48(sp)
   10a22:	fc3e                	sd	a5,56(sp)
   10a24:	e0c2                	sd	a6,64(sp)
   10a26:	e4c6                	sd	a7,72(sp)
   10a28:	862e                	mv	a2,a1
   10a2a:	690c                	ld	a1,16(a0)
   10a2c:	1014                	addi	a3,sp,32
   10a2e:	ec06                	sd	ra,24(sp)
   10a30:	e436                	sd	a3,8(sp)
   10a32:	060000ef          	jal	ra,10a92 <_vfprintf_r>
   10a36:	60e2                	ld	ra,24(sp)
   10a38:	6161                	addi	sp,sp,80
   10a3a:	8082                	ret

0000000000010a3c <printf>:
   10a3c:	711d                	addi	sp,sp,-96
   10a3e:	e4be                	sd	a5,72(sp)
   10a40:	8301b783          	ld	a5,-2000(gp) # 1cb08 <_impure_ptr>
   10a44:	f832                	sd	a2,48(sp)
   10a46:	fc36                	sd	a3,56(sp)
   10a48:	f42e                	sd	a1,40(sp)
   10a4a:	e0ba                	sd	a4,64(sp)
   10a4c:	e8c2                	sd	a6,80(sp)
   10a4e:	ecc6                	sd	a7,88(sp)
   10a50:	6b8c                	ld	a1,16(a5)
   10a52:	1034                	addi	a3,sp,40
   10a54:	862a                	mv	a2,a0
   10a56:	853e                	mv	a0,a5
   10a58:	ec06                	sd	ra,24(sp)
   10a5a:	e436                	sd	a3,8(sp)
   10a5c:	036000ef          	jal	ra,10a92 <_vfprintf_r>
   10a60:	60e2                	ld	ra,24(sp)
   10a62:	6125                	addi	sp,sp,96
   10a64:	8082                	ret

0000000000010a66 <_sbrk_r>:
   10a66:	1101                	addi	sp,sp,-32
   10a68:	e822                	sd	s0,16(sp)
   10a6a:	e426                	sd	s1,8(sp)
   10a6c:	84aa                	mv	s1,a0
   10a6e:	852e                	mv	a0,a1
   10a70:	ec06                	sd	ra,24(sp)
   10a72:	8e01a823          	sw	zero,-1808(gp) # 1cbc8 <errno>
   10a76:	421070ef          	jal	ra,18696 <_sbrk>
   10a7a:	57fd                	li	a5,-1
   10a7c:	00f51663          	bne	a0,a5,10a88 <_sbrk_r+0x22>
   10a80:	8f01a783          	lw	a5,-1808(gp) # 1cbc8 <errno>
   10a84:	c391                	beqz	a5,10a88 <_sbrk_r+0x22>
   10a86:	c09c                	sw	a5,0(s1)
   10a88:	60e2                	ld	ra,24(sp)
   10a8a:	6442                	ld	s0,16(sp)
   10a8c:	64a2                	ld	s1,8(sp)
   10a8e:	6105                	addi	sp,sp,32
   10a90:	8082                	ret

0000000000010a92 <_vfprintf_r>:
   10a92:	d9010113          	addi	sp,sp,-624
   10a96:	26113423          	sd	ra,616(sp)
   10a9a:	24913c23          	sd	s1,600(sp)
   10a9e:	25213823          	sd	s2,592(sp)
   10aa2:	25313423          	sd	s3,584(sp)
   10aa6:	23713423          	sd	s7,552(sp)
   10aaa:	892e                	mv	s2,a1
   10aac:	84b2                	mv	s1,a2
   10aae:	8bb6                	mv	s7,a3
   10ab0:	26813023          	sd	s0,608(sp)
   10ab4:	25413023          	sd	s4,576(sp)
   10ab8:	23513c23          	sd	s5,568(sp)
   10abc:	23613823          	sd	s6,560(sp)
   10ac0:	23813023          	sd	s8,544(sp)
   10ac4:	21913c23          	sd	s9,536(sp)
   10ac8:	21a13823          	sd	s10,528(sp)
   10acc:	21b13423          	sd	s11,520(sp)
   10ad0:	89aa                	mv	s3,a0
   10ad2:	5d6030ef          	jal	ra,140a8 <_localeconv_r>
   10ad6:	611c                	ld	a5,0(a0)
   10ad8:	853e                	mv	a0,a5
   10ada:	e4be                	sd	a5,72(sp)
   10adc:	588040ef          	jal	ra,15064 <strlen>
   10ae0:	ec2a                	sd	a0,24(sp)
   10ae2:	f982                	sd	zero,240(sp)
   10ae4:	fd82                	sd	zero,248(sp)
   10ae6:	00098863          	beqz	s3,10af6 <_vfprintf_r+0x64>
   10aea:	0509a783          	lw	a5,80(s3)
   10aee:	e781                	bnez	a5,10af6 <_vfprintf_r+0x64>
   10af0:	854e                	mv	a0,s3
   10af2:	257010ef          	jal	ra,12548 <__sinit>
   10af6:	01091783          	lh	a5,16(s2)
   10afa:	03279713          	slli	a4,a5,0x32
   10afe:	00074d63          	bltz	a4,10b18 <_vfprintf_r+0x86>
   10b02:	6689                	lui	a3,0x2
   10b04:	0ac92703          	lw	a4,172(s2)
   10b08:	8fd5                	or	a5,a5,a3
   10b0a:	00f91823          	sh	a5,16(s2)
   10b0e:	77f9                	lui	a5,0xffffe
   10b10:	17fd                	addi	a5,a5,-1
   10b12:	8ff9                	and	a5,a5,a4
   10b14:	0af92623          	sw	a5,172(s2)
   10b18:	01095783          	lhu	a5,16(s2)
   10b1c:	8ba1                	andi	a5,a5,8
   10b1e:	c3bd                	beqz	a5,10b84 <_vfprintf_r+0xf2>
   10b20:	01893783          	ld	a5,24(s2)
   10b24:	c3a5                	beqz	a5,10b84 <_vfprintf_r+0xf2>
   10b26:	01095783          	lhu	a5,16(s2)
   10b2a:	4729                	li	a4,10
   10b2c:	8be9                	andi	a5,a5,26
   10b2e:	06e79363          	bne	a5,a4,10b94 <_vfprintf_r+0x102>
   10b32:	01291783          	lh	a5,18(s2)
   10b36:	0407cf63          	bltz	a5,10b94 <_vfprintf_r+0x102>
   10b3a:	86de                	mv	a3,s7
   10b3c:	8626                	mv	a2,s1
   10b3e:	85ca                	mv	a1,s2
   10b40:	854e                	mv	a0,s3
   10b42:	512010ef          	jal	ra,12054 <__sbprintf>
   10b46:	f42a                	sd	a0,40(sp)
   10b48:	26813083          	ld	ra,616(sp)
   10b4c:	26013403          	ld	s0,608(sp)
   10b50:	7522                	ld	a0,40(sp)
   10b52:	25813483          	ld	s1,600(sp)
   10b56:	25013903          	ld	s2,592(sp)
   10b5a:	24813983          	ld	s3,584(sp)
   10b5e:	24013a03          	ld	s4,576(sp)
   10b62:	23813a83          	ld	s5,568(sp)
   10b66:	23013b03          	ld	s6,560(sp)
   10b6a:	22813b83          	ld	s7,552(sp)
   10b6e:	22013c03          	ld	s8,544(sp)
   10b72:	21813c83          	ld	s9,536(sp)
   10b76:	21013d03          	ld	s10,528(sp)
   10b7a:	20813d83          	ld	s11,520(sp)
   10b7e:	27010113          	addi	sp,sp,624
   10b82:	8082                	ret
   10b84:	85ca                	mv	a1,s2
   10b86:	854e                	mv	a0,s3
   10b88:	55a010ef          	jal	ra,120e2 <__swsetup_r>
   10b8c:	dd49                	beqz	a0,10b26 <_vfprintf_r+0x94>
   10b8e:	57fd                	li	a5,-1
   10b90:	f43e                	sd	a5,40(sp)
   10b92:	bf5d                	j	10b48 <_vfprintf_r+0xb6>
   10b94:	67e9                	lui	a5,0x1a
   10b96:	cd078793          	addi	a5,a5,-816 # 19cd0 <__clzdi2+0x86>
   10b9a:	ed3e                	sd	a5,152(sp)
   10b9c:	0001a7b7          	lui	a5,0x1a
   10ba0:	e687b783          	ld	a5,-408(a5) # 19e68 <zeroes.4441+0x18>
   10ba4:	18010a93          	addi	s5,sp,384
   10ba8:	e256                	sd	s5,256(sp)
   10baa:	f13e                	sd	a5,160(sp)
   10bac:	0001a7b7          	lui	a5,0x1a
   10bb0:	e787b783          	ld	a5,-392(a5) # 19e78 <zeroes.4441+0x28>
   10bb4:	ea02                	sd	zero,272(sp)
   10bb6:	10012423          	sw	zero,264(sp)
   10bba:	f53e                	sd	a5,168(sp)
   10bbc:	0001a7b7          	lui	a5,0x1a
   10bc0:	e887b783          	ld	a5,-376(a5) # 19e88 <zeroes.4441+0x38>
   10bc4:	4a01                	li	s4,0
   10bc6:	8cd6                	mv	s9,s5
   10bc8:	f082                	sd	zero,96(sp)
   10bca:	ec82                	sd	zero,88(sp)
   10bcc:	e002                	sd	zero,0(sp)
   10bce:	e082                	sd	zero,64(sp)
   10bd0:	e882                	sd	zero,80(sp)
   10bd2:	f402                	sd	zero,40(sp)
   10bd4:	e93e                	sd	a5,144(sp)
   10bd6:	8426                	mv	s0,s1
   10bd8:	02500713          	li	a4,37
   10bdc:	00044783          	lbu	a5,0(s0)
   10be0:	c399                	beqz	a5,10be6 <_vfprintf_r+0x154>
   10be2:	08e79663          	bne	a5,a4,10c6e <_vfprintf_r+0x1dc>
   10be6:	40940b3b          	subw	s6,s0,s1
   10bea:	020b0f63          	beqz	s6,10c28 <_vfprintf_r+0x196>
   10bee:	67d2                	ld	a5,272(sp)
   10bf0:	009cb023          	sd	s1,0(s9)
   10bf4:	016cb423          	sd	s6,8(s9)
   10bf8:	97da                	add	a5,a5,s6
   10bfa:	ea3e                	sd	a5,272(sp)
   10bfc:	10812783          	lw	a5,264(sp)
   10c00:	0cc1                	addi	s9,s9,16
   10c02:	0017871b          	addiw	a4,a5,1
   10c06:	10e12423          	sw	a4,264(sp)
   10c0a:	479d                	li	a5,7
   10c0c:	00e7da63          	ble	a4,a5,10c20 <_vfprintf_r+0x18e>
   10c10:	0210                	addi	a2,sp,256
   10c12:	85ca                	mv	a1,s2
   10c14:	854e                	mv	a0,s3
   10c16:	209050ef          	jal	ra,1661e <__sprint_r>
   10c1a:	54051363          	bnez	a0,11160 <_vfprintf_r+0x6ce>
   10c1e:	8cd6                	mv	s9,s5
   10c20:	57a2                	lw	a5,40(sp)
   10c22:	016787bb          	addw	a5,a5,s6
   10c26:	f43e                	sd	a5,40(sp)
   10c28:	00044783          	lbu	a5,0(s0)
   10c2c:	e399                	bnez	a5,10c32 <_vfprintf_r+0x1a0>
   10c2e:	4040106f          	j	12032 <_vfprintf_r+0x15a0>
   10c32:	00140793          	addi	a5,s0,1
   10c36:	0c0107a3          	sb	zero,207(sp)
   10c3a:	5dfd                	li	s11,-1
   10c3c:	f002                	sd	zero,32(sp)
   10c3e:	4401                	li	s0,0
   10c40:	05a00d13          	li	s10,90
   10c44:	4c29                	li	s8,10
   10c46:	0007cb03          	lbu	s6,0(a5)
   10c4a:	00178713          	addi	a4,a5,1
   10c4e:	e83a                	sd	a4,16(sp)
   10c50:	46a5                	li	a3,9
   10c52:	02a00613          	li	a2,42
   10c56:	fe0b079b          	addiw	a5,s6,-32
   10c5a:	0007871b          	sext.w	a4,a5
   10c5e:	3aed68e3          	bltu	s10,a4,1180e <_vfprintf_r+0xd7c>
   10c62:	676a                	ld	a4,152(sp)
   10c64:	1782                	slli	a5,a5,0x20
   10c66:	83f9                	srli	a5,a5,0x1e
   10c68:	97ba                	add	a5,a5,a4
   10c6a:	439c                	lw	a5,0(a5)
   10c6c:	8782                	jr	a5
   10c6e:	0405                	addi	s0,s0,1
   10c70:	b7b5                	j	10bdc <_vfprintf_r+0x14a>
   10c72:	0001a7b7          	lui	a5,0x1a
   10c76:	ec878793          	addi	a5,a5,-312 # 19ec8 <zeroes.4441+0x78>
   10c7a:	f0be                	sd	a5,96(sp)
   10c7c:	008b8793          	addi	a5,s7,8
   10c80:	f83e                	sd	a5,48(sp)
   10c82:	02047793          	andi	a5,s0,32
   10c86:	24078de3          	beqz	a5,116e0 <_vfprintf_r+0xc4e>
   10c8a:	000bbb83          	ld	s7,0(s7)
   10c8e:	00147793          	andi	a5,s0,1
   10c92:	cf81                	beqz	a5,10caa <_vfprintf_r+0x218>
   10c94:	000b8b63          	beqz	s7,10caa <_vfprintf_r+0x218>
   10c98:	03000793          	li	a5,48
   10c9c:	00246413          	ori	s0,s0,2
   10ca0:	0cf10823          	sb	a5,208(sp)
   10ca4:	0d6108a3          	sb	s6,209(sp)
   10ca8:	2401                	sext.w	s0,s0
   10caa:	bff47413          	andi	s0,s0,-1025
   10cae:	2401                	sext.w	s0,s0
   10cb0:	4789                	li	a5,2
   10cb2:	12b0006f          	j	115dc <_vfprintf_r+0xb4a>
   10cb6:	854e                	mv	a0,s3
   10cb8:	3f0030ef          	jal	ra,140a8 <_localeconv_r>
   10cbc:	651c                	ld	a5,8(a0)
   10cbe:	853e                	mv	a0,a5
   10cc0:	e8be                	sd	a5,80(sp)
   10cc2:	3a2040ef          	jal	ra,15064 <strlen>
   10cc6:	e0aa                	sd	a0,64(sp)
   10cc8:	854e                	mv	a0,s3
   10cca:	3de030ef          	jal	ra,140a8 <_localeconv_r>
   10cce:	691c                	ld	a5,16(a0)
   10cd0:	e03e                	sd	a5,0(sp)
   10cd2:	6786                	ld	a5,64(sp)
   10cd4:	c38d                	beqz	a5,10cf6 <_vfprintf_r+0x264>
   10cd6:	6782                	ld	a5,0(sp)
   10cd8:	cf99                	beqz	a5,10cf6 <_vfprintf_r+0x264>
   10cda:	0007c783          	lbu	a5,0(a5)
   10cde:	cf81                	beqz	a5,10cf6 <_vfprintf_r+0x264>
   10ce0:	40046413          	ori	s0,s0,1024
   10ce4:	2401                	sext.w	s0,s0
   10ce6:	a801                	j	10cf6 <_vfprintf_r+0x264>
   10ce8:	0cf14783          	lbu	a5,207(sp)
   10cec:	e789                	bnez	a5,10cf6 <_vfprintf_r+0x264>
   10cee:	02000793          	li	a5,32
   10cf2:	0cf107a3          	sb	a5,207(sp)
   10cf6:	67c2                	ld	a5,16(sp)
   10cf8:	b7b9                	j	10c46 <_vfprintf_r+0x1b4>
   10cfa:	00146413          	ori	s0,s0,1
   10cfe:	b7dd                	j	10ce4 <_vfprintf_r+0x252>
   10d00:	000ba783          	lw	a5,0(s7)
   10d04:	0ba1                	addi	s7,s7,8
   10d06:	f03e                	sd	a5,32(sp)
   10d08:	fe07d7e3          	bgez	a5,10cf6 <_vfprintf_r+0x264>
   10d0c:	5782                	lw	a5,32(sp)
   10d0e:	40f007bb          	negw	a5,a5
   10d12:	f03e                	sd	a5,32(sp)
   10d14:	00446413          	ori	s0,s0,4
   10d18:	b7f1                	j	10ce4 <_vfprintf_r+0x252>
   10d1a:	02b00793          	li	a5,43
   10d1e:	bfd1                	j	10cf2 <_vfprintf_r+0x260>
   10d20:	6742                	ld	a4,16(sp)
   10d22:	67c2                	ld	a5,16(sp)
   10d24:	00074b03          	lbu	s6,0(a4)
   10d28:	0785                	addi	a5,a5,1
   10d2a:	02cb1c63          	bne	s6,a2,10d62 <_vfprintf_r+0x2d0>
   10d2e:	000bae03          	lw	t3,0(s7)
   10d32:	008b8713          	addi	a4,s7,8
   10d36:	000e5363          	bgez	t3,10d3c <_vfprintf_r+0x2aa>
   10d3a:	5e7d                	li	t3,-1
   10d3c:	000e0d9b          	sext.w	s11,t3
   10d40:	8bba                	mv	s7,a4
   10d42:	e83e                	sd	a5,16(sp)
   10d44:	bf4d                	j	10cf6 <_vfprintf_r+0x264>
   10d46:	03bc0e3b          	mulw	t3,s8,s11
   10d4a:	0785                	addi	a5,a5,1
   10d4c:	fff7cb03          	lbu	s6,-1(a5)
   10d50:	00ee0dbb          	addw	s11,t3,a4
   10d54:	fd0b059b          	addiw	a1,s6,-48
   10d58:	872e                	mv	a4,a1
   10d5a:	feb6f6e3          	bleu	a1,a3,10d46 <_vfprintf_r+0x2b4>
   10d5e:	e83e                	sd	a5,16(sp)
   10d60:	bddd                	j	10c56 <_vfprintf_r+0x1c4>
   10d62:	4d81                	li	s11,0
   10d64:	bfc5                	j	10d54 <_vfprintf_r+0x2c2>
   10d66:	08046413          	ori	s0,s0,128
   10d6a:	bfad                	j	10ce4 <_vfprintf_r+0x252>
   10d6c:	67c2                	ld	a5,16(sp)
   10d6e:	f002                	sd	zero,32(sp)
   10d70:	5702                	lw	a4,32(sp)
   10d72:	fd0b0b1b          	addiw	s6,s6,-48
   10d76:	0785                	addi	a5,a5,1
   10d78:	02ec073b          	mulw	a4,s8,a4
   10d7c:	00eb073b          	addw	a4,s6,a4
   10d80:	fff7cb03          	lbu	s6,-1(a5)
   10d84:	f03a                	sd	a4,32(sp)
   10d86:	fd0b071b          	addiw	a4,s6,-48
   10d8a:	fee6f3e3          	bleu	a4,a3,10d70 <_vfprintf_r+0x2de>
   10d8e:	bfc1                	j	10d5e <_vfprintf_r+0x2cc>
   10d90:	00846413          	ori	s0,s0,8
   10d94:	bf81                	j	10ce4 <_vfprintf_r+0x252>
   10d96:	67c2                	ld	a5,16(sp)
   10d98:	0007c703          	lbu	a4,0(a5)
   10d9c:	06800793          	li	a5,104
   10da0:	00f71863          	bne	a4,a5,10db0 <_vfprintf_r+0x31e>
   10da4:	67c2                	ld	a5,16(sp)
   10da6:	20046413          	ori	s0,s0,512
   10daa:	0785                	addi	a5,a5,1
   10dac:	e83e                	sd	a5,16(sp)
   10dae:	bf1d                	j	10ce4 <_vfprintf_r+0x252>
   10db0:	04046413          	ori	s0,s0,64
   10db4:	bf05                	j	10ce4 <_vfprintf_r+0x252>
   10db6:	67c2                	ld	a5,16(sp)
   10db8:	0007c703          	lbu	a4,0(a5)
   10dbc:	06c00793          	li	a5,108
   10dc0:	00f71863          	bne	a4,a5,10dd0 <_vfprintf_r+0x33e>
   10dc4:	67c2                	ld	a5,16(sp)
   10dc6:	0785                	addi	a5,a5,1
   10dc8:	e83e                	sd	a5,16(sp)
   10dca:	02046413          	ori	s0,s0,32
   10dce:	bf19                	j	10ce4 <_vfprintf_r+0x252>
   10dd0:	01046413          	ori	s0,s0,16
   10dd4:	bf01                	j	10ce4 <_vfprintf_r+0x252>
   10dd6:	008b8793          	addi	a5,s7,8
   10dda:	f83e                	sd	a5,48(sp)
   10ddc:	000ba783          	lw	a5,0(s7)
   10de0:	0c0107a3          	sb	zero,207(sp)
   10de4:	10f10c23          	sb	a5,280(sp)
   10de8:	4b81                	li	s7,0
   10dea:	4d85                	li	s11,1
   10dec:	4701                	li	a4,0
   10dee:	e402                	sd	zero,8(sp)
   10df0:	4c01                	li	s8,0
   10df2:	4d01                	li	s10,0
   10df4:	0a24                	addi	s1,sp,280
   10df6:	86ba                	mv	a3,a4
   10df8:	01b75363          	ble	s11,a4,10dfe <_vfprintf_r+0x36c>
   10dfc:	86ee                	mv	a3,s11
   10dfe:	0cf14603          	lbu	a2,207(sp)
   10e02:	0006879b          	sext.w	a5,a3
   10e06:	fc3e                	sd	a5,56(sp)
   10e08:	c601                	beqz	a2,10e10 <_vfprintf_r+0x37e>
   10e0a:	0016879b          	addiw	a5,a3,1
   10e0e:	fc3e                	sd	a5,56(sp)
   10e10:	00247693          	andi	a3,s0,2
   10e14:	0006879b          	sext.w	a5,a3
   10e18:	f4be                	sd	a5,104(sp)
   10e1a:	c781                	beqz	a5,10e22 <_vfprintf_r+0x390>
   10e1c:	57e2                	lw	a5,56(sp)
   10e1e:	2789                	addiw	a5,a5,2
   10e20:	fc3e                	sd	a5,56(sp)
   10e22:	08447793          	andi	a5,s0,132
   10e26:	f8be                	sd	a5,112(sp)
   10e28:	efa9                	bnez	a5,10e82 <_vfprintf_r+0x3f0>
   10e2a:	5782                	lw	a5,32(sp)
   10e2c:	56e2                	lw	a3,56(sp)
   10e2e:	40d786bb          	subw	a3,a5,a3
   10e32:	04d05863          	blez	a3,10e82 <_vfprintf_r+0x3f0>
   10e36:	6869                	lui	a6,0x1a
   10e38:	48c1                	li	a7,16
   10e3a:	e4080813          	addi	a6,a6,-448 # 19e40 <blanks.4440>
   10e3e:	4e9d                	li	t4,7
   10e40:	10812583          	lw	a1,264(sp)
   10e44:	010cb023          	sd	a6,0(s9)
   10e48:	6652                	ld	a2,272(sp)
   10e4a:	0015851b          	addiw	a0,a1,1
   10e4e:	85aa                	mv	a1,a0
   10e50:	010c8f13          	addi	t5,s9,16
   10e54:	1cd8c6e3          	blt	a7,a3,11820 <_vfprintf_r+0xd8e>
   10e58:	00dcb423          	sd	a3,8(s9)
   10e5c:	96b2                	add	a3,a3,a2
   10e5e:	ea36                	sd	a3,272(sp)
   10e60:	10a12423          	sw	a0,264(sp)
   10e64:	469d                	li	a3,7
   10e66:	8cfa                	mv	s9,t5
   10e68:	00a6dd63          	ble	a0,a3,10e82 <_vfprintf_r+0x3f0>
   10e6c:	0210                	addi	a2,sp,256
   10e6e:	85ca                	mv	a1,s2
   10e70:	854e                	mv	a0,s3
   10e72:	fcba                	sd	a4,120(sp)
   10e74:	7aa050ef          	jal	ra,1661e <__sprint_r>
   10e78:	c119                	beqz	a0,10e7e <_vfprintf_r+0x3ec>
   10e7a:	17a0106f          	j	11ff4 <_vfprintf_r+0x1562>
   10e7e:	7766                	ld	a4,120(sp)
   10e80:	8cd6                	mv	s9,s5
   10e82:	0cf14683          	lbu	a3,207(sp)
   10e86:	c2a1                	beqz	a3,10ec6 <_vfprintf_r+0x434>
   10e88:	0cf10693          	addi	a3,sp,207
   10e8c:	00dcb023          	sd	a3,0(s9)
   10e90:	4685                	li	a3,1
   10e92:	00dcb423          	sd	a3,8(s9)
   10e96:	66d2                	ld	a3,272(sp)
   10e98:	0cc1                	addi	s9,s9,16
   10e9a:	0685                	addi	a3,a3,1
   10e9c:	ea36                	sd	a3,272(sp)
   10e9e:	10812683          	lw	a3,264(sp)
   10ea2:	0016861b          	addiw	a2,a3,1
   10ea6:	10c12423          	sw	a2,264(sp)
   10eaa:	469d                	li	a3,7
   10eac:	00c6dd63          	ble	a2,a3,10ec6 <_vfprintf_r+0x434>
   10eb0:	0210                	addi	a2,sp,256
   10eb2:	85ca                	mv	a1,s2
   10eb4:	854e                	mv	a0,s3
   10eb6:	fcba                	sd	a4,120(sp)
   10eb8:	766050ef          	jal	ra,1661e <__sprint_r>
   10ebc:	c119                	beqz	a0,10ec2 <_vfprintf_r+0x430>
   10ebe:	1360106f          	j	11ff4 <_vfprintf_r+0x1562>
   10ec2:	7766                	ld	a4,120(sp)
   10ec4:	8cd6                	mv	s9,s5
   10ec6:	77a6                	ld	a5,104(sp)
   10ec8:	cf9d                	beqz	a5,10f06 <_vfprintf_r+0x474>
   10eca:	0994                	addi	a3,sp,208
   10ecc:	00dcb023          	sd	a3,0(s9)
   10ed0:	4689                	li	a3,2
   10ed2:	00dcb423          	sd	a3,8(s9)
   10ed6:	66d2                	ld	a3,272(sp)
   10ed8:	0cc1                	addi	s9,s9,16
   10eda:	0689                	addi	a3,a3,2
   10edc:	ea36                	sd	a3,272(sp)
   10ede:	10812683          	lw	a3,264(sp)
   10ee2:	0016861b          	addiw	a2,a3,1
   10ee6:	10c12423          	sw	a2,264(sp)
   10eea:	469d                	li	a3,7
   10eec:	00c6dd63          	ble	a2,a3,10f06 <_vfprintf_r+0x474>
   10ef0:	0210                	addi	a2,sp,256
   10ef2:	85ca                	mv	a1,s2
   10ef4:	854e                	mv	a0,s3
   10ef6:	f4ba                	sd	a4,104(sp)
   10ef8:	726050ef          	jal	ra,1661e <__sprint_r>
   10efc:	c119                	beqz	a0,10f02 <_vfprintf_r+0x470>
   10efe:	0f60106f          	j	11ff4 <_vfprintf_r+0x1562>
   10f02:	7726                	ld	a4,104(sp)
   10f04:	8cd6                	mv	s9,s5
   10f06:	77c6                	ld	a5,112(sp)
   10f08:	08000693          	li	a3,128
   10f0c:	04d79e63          	bne	a5,a3,10f68 <_vfprintf_r+0x4d6>
   10f10:	5782                	lw	a5,32(sp)
   10f12:	56e2                	lw	a3,56(sp)
   10f14:	40d786bb          	subw	a3,a5,a3
   10f18:	04d05863          	blez	a3,10f68 <_vfprintf_r+0x4d6>
   10f1c:	6869                	lui	a6,0x1a
   10f1e:	48c1                	li	a7,16
   10f20:	e5080813          	addi	a6,a6,-432 # 19e50 <zeroes.4441>
   10f24:	4e9d                	li	t4,7
   10f26:	10812583          	lw	a1,264(sp)
   10f2a:	010cb023          	sd	a6,0(s9)
   10f2e:	6652                	ld	a2,272(sp)
   10f30:	0015851b          	addiw	a0,a1,1
   10f34:	85aa                	mv	a1,a0
   10f36:	010c8f13          	addi	t5,s9,16
   10f3a:	12d8c1e3          	blt	a7,a3,1185c <_vfprintf_r+0xdca>
   10f3e:	00dcb423          	sd	a3,8(s9)
   10f42:	96b2                	add	a3,a3,a2
   10f44:	ea36                	sd	a3,272(sp)
   10f46:	10a12423          	sw	a0,264(sp)
   10f4a:	469d                	li	a3,7
   10f4c:	8cfa                	mv	s9,t5
   10f4e:	00a6dd63          	ble	a0,a3,10f68 <_vfprintf_r+0x4d6>
   10f52:	0210                	addi	a2,sp,256
   10f54:	85ca                	mv	a1,s2
   10f56:	854e                	mv	a0,s3
   10f58:	f4ba                	sd	a4,104(sp)
   10f5a:	6c4050ef          	jal	ra,1661e <__sprint_r>
   10f5e:	c119                	beqz	a0,10f64 <_vfprintf_r+0x4d2>
   10f60:	0940106f          	j	11ff4 <_vfprintf_r+0x1562>
   10f64:	7726                	ld	a4,104(sp)
   10f66:	8cd6                	mv	s9,s5
   10f68:	41b7073b          	subw	a4,a4,s11
   10f6c:	04e05663          	blez	a4,10fb8 <_vfprintf_r+0x526>
   10f70:	6869                	lui	a6,0x1a
   10f72:	48c1                	li	a7,16
   10f74:	e5080813          	addi	a6,a6,-432 # 19e50 <zeroes.4441>
   10f78:	4e9d                	li	t4,7
   10f7a:	10812603          	lw	a2,264(sp)
   10f7e:	010cb023          	sd	a6,0(s9)
   10f82:	66d2                	ld	a3,272(sp)
   10f84:	0016059b          	addiw	a1,a2,1
   10f88:	862e                	mv	a2,a1
   10f8a:	010c8513          	addi	a0,s9,16
   10f8e:	10e8c5e3          	blt	a7,a4,11898 <_vfprintf_r+0xe06>
   10f92:	00ecb423          	sd	a4,8(s9)
   10f96:	9736                	add	a4,a4,a3
   10f98:	ea3a                	sd	a4,272(sp)
   10f9a:	10b12423          	sw	a1,264(sp)
   10f9e:	471d                	li	a4,7
   10fa0:	8caa                	mv	s9,a0
   10fa2:	00b75b63          	ble	a1,a4,10fb8 <_vfprintf_r+0x526>
   10fa6:	0210                	addi	a2,sp,256
   10fa8:	85ca                	mv	a1,s2
   10faa:	854e                	mv	a0,s3
   10fac:	672050ef          	jal	ra,1661e <__sprint_r>
   10fb0:	c119                	beqz	a0,10fb6 <_vfprintf_r+0x524>
   10fb2:	0420106f          	j	11ff4 <_vfprintf_r+0x1562>
   10fb6:	8cd6                	mv	s9,s5
   10fb8:	10047693          	andi	a3,s0,256
   10fbc:	6752                	ld	a4,272(sp)
   10fbe:	100699e3          	bnez	a3,118d0 <_vfprintf_r+0xe3e>
   10fc2:	10812783          	lw	a5,264(sp)
   10fc6:	00ed8e33          	add	t3,s11,a4
   10fca:	009cb023          	sd	s1,0(s9)
   10fce:	0017871b          	addiw	a4,a5,1
   10fd2:	01bcb423          	sd	s11,8(s9)
   10fd6:	ea72                	sd	t3,272(sp)
   10fd8:	10e12423          	sw	a4,264(sp)
   10fdc:	479d                	li	a5,7
   10fde:	0cc1                	addi	s9,s9,16
   10fe0:	1ce7d4e3          	ble	a4,a5,119a8 <_vfprintf_r+0xf16>
   10fe4:	0210                	addi	a2,sp,256
   10fe6:	85ca                	mv	a1,s2
   10fe8:	854e                	mv	a0,s3
   10fea:	634050ef          	jal	ra,1661e <__sprint_r>
   10fee:	c119                	beqz	a0,10ff4 <_vfprintf_r+0x562>
   10ff0:	0040106f          	j	11ff4 <_vfprintf_r+0x1562>
   10ff4:	8cd6                	mv	s9,s5
   10ff6:	1b30006f          	j	119a8 <_vfprintf_r+0xf16>
   10ffa:	01046413          	ori	s0,s0,16
   10ffe:	2401                	sext.w	s0,s0
   11000:	008b8793          	addi	a5,s7,8
   11004:	f83e                	sd	a5,48(sp)
   11006:	02047793          	andi	a5,s0,32
   1100a:	cb85                	beqz	a5,1103a <_vfprintf_r+0x5a8>
   1100c:	000bbb83          	ld	s7,0(s7)
   11010:	000bd863          	bgez	s7,11020 <_vfprintf_r+0x58e>
   11014:	02d00793          	li	a5,45
   11018:	41700bb3          	neg	s7,s7
   1101c:	0cf107a3          	sb	a5,207(sp)
   11020:	57fd                	li	a5,-1
   11022:	6efd9963          	bne	s11,a5,11714 <_vfprintf_r+0xc82>
   11026:	47a5                	li	a5,9
   11028:	7577e463          	bltu	a5,s7,11770 <_vfprintf_r+0xcde>
   1102c:	030b8b9b          	addiw	s7,s7,48
   11030:	17710da3          	sb	s7,379(sp)
   11034:	17b10493          	addi	s1,sp,379
   11038:	af39                	j	11756 <_vfprintf_r+0xcc4>
   1103a:	01047793          	andi	a5,s0,16
   1103e:	f7f9                	bnez	a5,1100c <_vfprintf_r+0x57a>
   11040:	04047793          	andi	a5,s0,64
   11044:	c781                	beqz	a5,1104c <_vfprintf_r+0x5ba>
   11046:	000b9b83          	lh	s7,0(s7)
   1104a:	b7d9                	j	11010 <_vfprintf_r+0x57e>
   1104c:	20047793          	andi	a5,s0,512
   11050:	c781                	beqz	a5,11058 <_vfprintf_r+0x5c6>
   11052:	000b8b83          	lb	s7,0(s7)
   11056:	bf6d                	j	11010 <_vfprintf_r+0x57e>
   11058:	000bab83          	lw	s7,0(s7)
   1105c:	bf55                	j	11010 <_vfprintf_r+0x57e>
   1105e:	00847793          	andi	a5,s0,8
   11062:	cfb9                	beqz	a5,110c0 <_vfprintf_r+0x62e>
   11064:	0bbd                	addi	s7,s7,15
   11066:	ff0bfb93          	andi	s7,s7,-16
   1106a:	010b8793          	addi	a5,s7,16
   1106e:	f83e                	sd	a5,48(sp)
   11070:	000bb783          	ld	a5,0(s7)
   11074:	f9be                	sd	a5,240(sp)
   11076:	008bb783          	ld	a5,8(s7)
   1107a:	fdbe                	sd	a5,248(sp)
   1107c:	1988                	addi	a0,sp,240
   1107e:	7ef020ef          	jal	ra,1406c <_ldcheck>
   11082:	cdaa                	sw	a0,216(sp)
   11084:	4789                	li	a5,2
   11086:	04f51c63          	bne	a0,a5,110de <_vfprintf_r+0x64c>
   1108a:	754e                	ld	a0,240(sp)
   1108c:	75ee                	ld	a1,248(sp)
   1108e:	4601                	li	a2,0
   11090:	4681                	li	a3,0
   11092:	069070ef          	jal	ra,188fa <__letf2>
   11096:	00055663          	bgez	a0,110a2 <_vfprintf_r+0x610>
   1109a:	02d00793          	li	a5,45
   1109e:	0cf107a3          	sb	a5,207(sp)
   110a2:	04700793          	li	a5,71
   110a6:	0367c763          	blt	a5,s6,110d4 <_vfprintf_r+0x642>
   110aa:	0001a4b7          	lui	s1,0x1a
   110ae:	e9048493          	addi	s1,s1,-368 # 19e90 <zeroes.4441+0x40>
   110b2:	f7f47413          	andi	s0,s0,-129
   110b6:	2401                	sext.w	s0,s0
   110b8:	4b81                	li	s7,0
   110ba:	4d8d                	li	s11,3
   110bc:	4701                	li	a4,0
   110be:	a555                	j	11762 <_vfprintf_r+0xcd0>
   110c0:	000bb507          	fld	fa0,0(s7)
   110c4:	008b8793          	addi	a5,s7,8
   110c8:	f83e                	sd	a5,48(sp)
   110ca:	05b080ef          	jal	ra,19924 <__extenddftf2>
   110ce:	f9aa                	sd	a0,240(sp)
   110d0:	fdae                	sd	a1,248(sp)
   110d2:	b76d                	j	1107c <_vfprintf_r+0x5ea>
   110d4:	0001a4b7          	lui	s1,0x1a
   110d8:	e9848493          	addi	s1,s1,-360 # 19e98 <zeroes.4441+0x48>
   110dc:	bfd9                	j	110b2 <_vfprintf_r+0x620>
   110de:	4785                	li	a5,1
   110e0:	02f51763          	bne	a0,a5,1110e <_vfprintf_r+0x67c>
   110e4:	77ee                	ld	a5,248(sp)
   110e6:	0007d663          	bgez	a5,110f2 <_vfprintf_r+0x660>
   110ea:	02d00793          	li	a5,45
   110ee:	0cf107a3          	sb	a5,207(sp)
   110f2:	04700793          	li	a5,71
   110f6:	0167c763          	blt	a5,s6,11104 <_vfprintf_r+0x672>
   110fa:	0001a4b7          	lui	s1,0x1a
   110fe:	ea048493          	addi	s1,s1,-352 # 19ea0 <zeroes.4441+0x50>
   11102:	bf45                	j	110b2 <_vfprintf_r+0x620>
   11104:	0001a4b7          	lui	s1,0x1a
   11108:	ea848493          	addi	s1,s1,-344 # 19ea8 <zeroes.4441+0x58>
   1110c:	b75d                	j	110b2 <_vfprintf_r+0x620>
   1110e:	fdfb7c13          	andi	s8,s6,-33
   11112:	04100793          	li	a5,65
   11116:	04fc1c63          	bne	s8,a5,1116e <_vfprintf_r+0x6dc>
   1111a:	03000793          	li	a5,48
   1111e:	0cf10823          	sb	a5,208(sp)
   11122:	06100713          	li	a4,97
   11126:	05800793          	li	a5,88
   1112a:	00eb1463          	bne	s6,a4,11132 <_vfprintf_r+0x6a0>
   1112e:	07800793          	li	a5,120
   11132:	0cf108a3          	sb	a5,209(sp)
   11136:	00246413          	ori	s0,s0,2
   1113a:	06300793          	li	a5,99
   1113e:	2401                	sext.w	s0,s0
   11140:	15b7db63          	ble	s11,a5,11296 <_vfprintf_r+0x804>
   11144:	001d859b          	addiw	a1,s11,1
   11148:	854e                	mv	a0,s3
   1114a:	b42ff0ef          	jal	ra,1048c <_malloc_r>
   1114e:	84aa                	mv	s1,a0
   11150:	14051663          	bnez	a0,1129c <_vfprintf_r+0x80a>
   11154:	01095783          	lhu	a5,16(s2)
   11158:	0407e793          	ori	a5,a5,64
   1115c:	00f91823          	sh	a5,16(s2)
   11160:	01095783          	lhu	a5,16(s2)
   11164:	0407f793          	andi	a5,a5,64
   11168:	9e0780e3          	beqz	a5,10b48 <_vfprintf_r+0xb6>
   1116c:	b40d                	j	10b8e <_vfprintf_r+0xfc>
   1116e:	57fd                	li	a5,-1
   11170:	12fd8863          	beq	s11,a5,112a0 <_vfprintf_r+0x80e>
   11174:	04700793          	li	a5,71
   11178:	4b81                	li	s7,0
   1117a:	00fc1463          	bne	s8,a5,11182 <_vfprintf_r+0x6f0>
   1117e:	120d8463          	beqz	s11,112a6 <_vfprintf_r+0x814>
   11182:	10046793          	ori	a5,s0,256
   11186:	7a6e                	ld	s4,248(sp)
   11188:	2781                	sext.w	a5,a5
   1118a:	fc3e                	sd	a5,56(sp)
   1118c:	fc82                	sd	zero,120(sp)
   1118e:	7ece                	ld	t4,240(sp)
   11190:	000a5963          	bgez	s4,111a2 <_vfprintf_r+0x710>
   11194:	57fd                	li	a5,-1
   11196:	17fe                	slli	a5,a5,0x3f
   11198:	00fa4a33          	xor	s4,s4,a5
   1119c:	02d00793          	li	a5,45
   111a0:	fcbe                	sd	a5,120(sp)
   111a2:	04100793          	li	a5,65
   111a6:	22fc1363          	bne	s8,a5,113cc <_vfprintf_r+0x93a>
   111aa:	8576                	mv	a0,t4
   111ac:	85d2                	mv	a1,s4
   111ae:	05b080ef          	jal	ra,19a08 <__trunctfdf2>
   111b2:	09a8                	addi	a0,sp,216
   111b4:	3f3030ef          	jal	ra,14da6 <frexp>
   111b8:	76c080ef          	jal	ra,19924 <__extenddftf2>
   111bc:	768a                	ld	a3,160(sp)
   111be:	4601                	li	a2,0
   111c0:	7fe070ef          	jal	ra,189be <__multf3>
   111c4:	4601                	li	a2,0
   111c6:	4681                	li	a3,0
   111c8:	e12a                	sd	a0,128(sp)
   111ca:	e52e                	sd	a1,136(sp)
   111cc:	5c6070ef          	jal	ra,18792 <__eqtf2>
   111d0:	e119                	bnez	a0,111d6 <_vfprintf_r+0x744>
   111d2:	4785                	li	a5,1
   111d4:	cdbe                	sw	a5,216(sp)
   111d6:	06100793          	li	a5,97
   111da:	0cfb1963          	bne	s6,a5,112ac <_vfprintf_r+0x81a>
   111de:	0001a7b7          	lui	a5,0x1a
   111e2:	eb078793          	addi	a5,a5,-336 # 19eb0 <zeroes.4441+0x60>
   111e6:	e43e                	sd	a5,8(sp)
   111e8:	fffd871b          	addiw	a4,s11,-1
   111ec:	8a26                	mv	s4,s1
   111ee:	76aa                	ld	a3,168(sp)
   111f0:	650a                	ld	a0,128(sp)
   111f2:	65aa                	ld	a1,136(sp)
   111f4:	4601                	li	a2,0
   111f6:	f93a                	sd	a4,176(sp)
   111f8:	7c6070ef          	jal	ra,189be <__multf3>
   111fc:	8d2a                	mv	s10,a0
   111fe:	f4ae                	sd	a1,104(sp)
   11200:	614080ef          	jal	ra,19814 <__fixtfsi>
   11204:	0005079b          	sext.w	a5,a0
   11208:	f8be                	sd	a5,112(sp)
   1120a:	69c080ef          	jal	ra,198a6 <__floatsitf>
   1120e:	77a6                	ld	a5,104(sp)
   11210:	86ae                	mv	a3,a1
   11212:	862a                	mv	a2,a0
   11214:	85be                	mv	a1,a5
   11216:	856a                	mv	a0,s10
   11218:	5ed070ef          	jal	ra,19004 <__subtf3>
   1121c:	67a2                	ld	a5,8(sp)
   1121e:	7746                	ld	a4,112(sp)
   11220:	0a05                	addi	s4,s4,1
   11222:	e12a                	sd	a0,128(sp)
   11224:	00e786b3          	add	a3,a5,a4
   11228:	774a                	ld	a4,176(sp)
   1122a:	0006c683          	lbu	a3,0(a3) # 2000 <_start-0xe0b0>
   1122e:	e52e                	sd	a1,136(sp)
   11230:	0007079b          	sext.w	a5,a4
   11234:	f4be                	sd	a5,104(sp)
   11236:	feda0fa3          	sb	a3,-1(s4)
   1123a:	57fd                	li	a5,-1
   1123c:	88aa                	mv	a7,a0
   1123e:	8d2e                	mv	s10,a1
   11240:	06f70b63          	beq	a4,a5,112b6 <_vfprintf_r+0x824>
   11244:	377d                	addiw	a4,a4,-1
   11246:	4601                	li	a2,0
   11248:	4681                	li	a3,0
   1124a:	f93a                	sd	a4,176(sp)
   1124c:	fd2a                	sd	a0,184(sp)
   1124e:	544070ef          	jal	ra,18792 <__eqtf2>
   11252:	774a                	ld	a4,176(sp)
   11254:	78ea                	ld	a7,184(sp)
   11256:	fd41                	bnez	a0,111ee <_vfprintf_r+0x75c>
   11258:	66ca                	ld	a3,144(sp)
   1125a:	4601                	li	a2,0
   1125c:	8546                	mv	a0,a7
   1125e:	85ea                	mv	a1,s10
   11260:	e146                	sd	a7,128(sp)
   11262:	5d4070ef          	jal	ra,18836 <__getf2>
   11266:	04a04b63          	bgtz	a0,112bc <_vfprintf_r+0x82a>
   1126a:	688a                	ld	a7,128(sp)
   1126c:	66ca                	ld	a3,144(sp)
   1126e:	4601                	li	a2,0
   11270:	8546                	mv	a0,a7
   11272:	85ea                	mv	a1,s10
   11274:	51e070ef          	jal	ra,18792 <__eqtf2>
   11278:	e509                	bnez	a0,11282 <_vfprintf_r+0x7f0>
   1127a:	77c6                	ld	a5,112(sp)
   1127c:	0017f713          	andi	a4,a5,1
   11280:	ef15                	bnez	a4,112bc <_vfprintf_r+0x82a>
   11282:	5726                	lw	a4,104(sp)
   11284:	03000693          	li	a3,48
   11288:	06074163          	bltz	a4,112ea <_vfprintf_r+0x858>
   1128c:	0a05                	addi	s4,s4,1
   1128e:	feda0fa3          	sb	a3,-1(s4)
   11292:	377d                	addiw	a4,a4,-1
   11294:	bfd5                	j	11288 <_vfprintf_r+0x7f6>
   11296:	4b81                	li	s7,0
   11298:	0a24                	addi	s1,sp,280
   1129a:	b5e5                	j	11182 <_vfprintf_r+0x6f0>
   1129c:	8baa                	mv	s7,a0
   1129e:	b5d5                	j	11182 <_vfprintf_r+0x6f0>
   112a0:	4b81                	li	s7,0
   112a2:	4d99                	li	s11,6
   112a4:	bdf9                	j	11182 <_vfprintf_r+0x6f0>
   112a6:	8bee                	mv	s7,s11
   112a8:	4d85                	li	s11,1
   112aa:	bde1                	j	11182 <_vfprintf_r+0x6f0>
   112ac:	0001a7b7          	lui	a5,0x1a
   112b0:	ec878793          	addi	a5,a5,-312 # 19ec8 <zeroes.4441+0x78>
   112b4:	bf0d                	j	111e6 <_vfprintf_r+0x754>
   112b6:	57fd                	li	a5,-1
   112b8:	f4be                	sd	a5,104(sp)
   112ba:	bf79                	j	11258 <_vfprintf_r+0x7c6>
   112bc:	67a2                	ld	a5,8(sp)
   112be:	f5d2                	sd	s4,232(sp)
   112c0:	03000593          	li	a1,48
   112c4:	00f7c603          	lbu	a2,15(a5)
   112c8:	76ae                	ld	a3,232(sp)
   112ca:	fff68713          	addi	a4,a3,-1
   112ce:	f5ba                	sd	a4,232(sp)
   112d0:	fff6c703          	lbu	a4,-1(a3)
   112d4:	0ec70563          	beq	a4,a2,113be <_vfprintf_r+0x92c>
   112d8:	03900613          	li	a2,57
   112dc:	0ec71463          	bne	a4,a2,113c4 <_vfprintf_r+0x932>
   112e0:	67a2                	ld	a5,8(sp)
   112e2:	00a7c703          	lbu	a4,10(a5)
   112e6:	fee68fa3          	sb	a4,-1(a3)
   112ea:	04700713          	li	a4,71
   112ee:	409a0a3b          	subw	s4,s4,s1
   112f2:	4d6e                	lw	s10,216(sp)
   112f4:	18ec1463          	bne	s8,a4,1147c <_vfprintf_r+0x9ea>
   112f8:	5775                	li	a4,-3
   112fa:	00ed4463          	blt	s10,a4,11302 <_vfprintf_r+0x870>
   112fe:	1fadd463          	ble	s10,s11,114e6 <_vfprintf_r+0xa54>
   11302:	3b79                	addiw	s6,s6,-2
   11304:	fffd069b          	addiw	a3,s10,-1
   11308:	cdb6                	sw	a3,216(sp)
   1130a:	fdfb7613          	andi	a2,s6,-33
   1130e:	04100513          	li	a0,65
   11312:	0ffb7713          	andi	a4,s6,255
   11316:	4581                	li	a1,0
   11318:	00a61663          	bne	a2,a0,11324 <_vfprintf_r+0x892>
   1131c:	273d                	addiw	a4,a4,15
   1131e:	0ff77713          	andi	a4,a4,255
   11322:	4585                	li	a1,1
   11324:	0ee10023          	sb	a4,224(sp)
   11328:	02b00793          	li	a5,43
   1132c:	0006d763          	bgez	a3,1133a <_vfprintf_r+0x8a8>
   11330:	4685                	li	a3,1
   11332:	41a686bb          	subw	a3,a3,s10
   11336:	02d00793          	li	a5,45
   1133a:	0ef100a3          	sb	a5,225(sp)
   1133e:	47a5                	li	a5,9
   11340:	16d7da63          	ble	a3,a5,114b4 <_vfprintf_r+0xa22>
   11344:	0ef10713          	addi	a4,sp,239
   11348:	853a                	mv	a0,a4
   1134a:	45a9                	li	a1,10
   1134c:	4825                	li	a6,9
   1134e:	02b6e7bb          	remw	a5,a3,a1
   11352:	fff70613          	addi	a2,a4,-1
   11356:	02b6c6bb          	divw	a3,a3,a1
   1135a:	0307879b          	addiw	a5,a5,48
   1135e:	fef70fa3          	sb	a5,-1(a4)
   11362:	14d84063          	blt	a6,a3,114a2 <_vfprintf_r+0xa10>
   11366:	0306879b          	addiw	a5,a3,48
   1136a:	fef60fa3          	sb	a5,-1(a2)
   1136e:	1779                	addi	a4,a4,-2
   11370:	0e210613          	addi	a2,sp,226
   11374:	12a76963          	bltu	a4,a0,114a6 <_vfprintf_r+0xa14>
   11378:	119c                	addi	a5,sp,224
   1137a:	40f607bb          	subw	a5,a2,a5
   1137e:	ecbe                	sd	a5,88(sp)
   11380:	47e6                	lw	a5,88(sp)
   11382:	4705                	li	a4,1
   11384:	01478dbb          	addw	s11,a5,s4
   11388:	87ee                	mv	a5,s11
   1138a:	01474563          	blt	a4,s4,11394 <_vfprintf_r+0x902>
   1138e:	00147713          	andi	a4,s0,1
   11392:	c701                	beqz	a4,1139a <_vfprintf_r+0x908>
   11394:	4762                	lw	a4,24(sp)
   11396:	00e78dbb          	addw	s11,a5,a4
   1139a:	bff47413          	andi	s0,s0,-1025
   1139e:	2401                	sext.w	s0,s0
   113a0:	10046793          	ori	a5,s0,256
   113a4:	fc3e                	sd	a5,56(sp)
   113a6:	e402                	sd	zero,8(sp)
   113a8:	4c01                	li	s8,0
   113aa:	4d01                	li	s10,0
   113ac:	77e6                	ld	a5,120(sp)
   113ae:	c789                	beqz	a5,113b8 <_vfprintf_r+0x926>
   113b0:	02d00713          	li	a4,45
   113b4:	0ce107a3          	sb	a4,207(sp)
   113b8:	7462                	ld	s0,56(sp)
   113ba:	4701                	li	a4,0
   113bc:	bc2d                	j	10df6 <_vfprintf_r+0x364>
   113be:	feb68fa3          	sb	a1,-1(a3)
   113c2:	b719                	j	112c8 <_vfprintf_r+0x836>
   113c4:	2705                	addiw	a4,a4,1
   113c6:	0ff77713          	andi	a4,a4,255
   113ca:	bf31                	j	112e6 <_vfprintf_r+0x854>
   113cc:	04600793          	li	a5,70
   113d0:	00fc0b63          	beq	s8,a5,113e6 <_vfprintf_r+0x954>
   113d4:	04500793          	li	a5,69
   113d8:	8d6e                	mv	s10,s11
   113da:	00fc1463          	bne	s8,a5,113e2 <_vfprintf_r+0x950>
   113de:	001d8d1b          	addiw	s10,s11,1
   113e2:	4689                	li	a3,2
   113e4:	a019                	j	113ea <_vfprintf_r+0x958>
   113e6:	8d6e                	mv	s10,s11
   113e8:	468d                	li	a3,3
   113ea:	09bc                	addi	a5,sp,216
   113ec:	85f6                	mv	a1,t4
   113ee:	0e810893          	addi	a7,sp,232
   113f2:	0dc10813          	addi	a6,sp,220
   113f6:	876a                	mv	a4,s10
   113f8:	8652                	mv	a2,s4
   113fa:	854e                	mv	a0,s3
   113fc:	e476                	sd	t4,8(sp)
   113fe:	358020ef          	jal	ra,13756 <_ldtoa_r>
   11402:	04700793          	li	a5,71
   11406:	84aa                	mv	s1,a0
   11408:	6ea2                	ld	t4,8(sp)
   1140a:	00fc1563          	bne	s8,a5,11414 <_vfprintf_r+0x982>
   1140e:	00147793          	andi	a5,s0,1
   11412:	cbb1                	beqz	a5,11466 <_vfprintf_r+0x9d4>
   11414:	04600713          	li	a4,70
   11418:	01a487b3          	add	a5,s1,s10
   1141c:	02ec1963          	bne	s8,a4,1144e <_vfprintf_r+0x9bc>
   11420:	0004c683          	lbu	a3,0(s1)
   11424:	03000713          	li	a4,48
   11428:	02e69163          	bne	a3,a4,1144a <_vfprintf_r+0x9b8>
   1142c:	8576                	mv	a0,t4
   1142e:	4601                	li	a2,0
   11430:	4681                	li	a3,0
   11432:	85d2                	mv	a1,s4
   11434:	f4be                	sd	a5,104(sp)
   11436:	e476                	sd	t4,8(sp)
   11438:	35a070ef          	jal	ra,18792 <__eqtf2>
   1143c:	6ea2                	ld	t4,8(sp)
   1143e:	77a6                	ld	a5,104(sp)
   11440:	c509                	beqz	a0,1144a <_vfprintf_r+0x9b8>
   11442:	4705                	li	a4,1
   11444:	41a70d3b          	subw	s10,a4,s10
   11448:	cdea                	sw	s10,216(sp)
   1144a:	476e                	lw	a4,216(sp)
   1144c:	97ba                	add	a5,a5,a4
   1144e:	4681                	li	a3,0
   11450:	4601                	li	a2,0
   11452:	8576                	mv	a0,t4
   11454:	85d2                	mv	a1,s4
   11456:	e43e                	sd	a5,8(sp)
   11458:	33a070ef          	jal	ra,18792 <__eqtf2>
   1145c:	67a2                	ld	a5,8(sp)
   1145e:	03000693          	li	a3,48
   11462:	e909                	bnez	a0,11474 <_vfprintf_r+0x9e2>
   11464:	f5be                	sd	a5,232(sp)
   11466:	7a2e                	ld	s4,232(sp)
   11468:	b549                	j	112ea <_vfprintf_r+0x858>
   1146a:	00170613          	addi	a2,a4,1
   1146e:	f5b2                	sd	a2,232(sp)
   11470:	00d70023          	sb	a3,0(a4)
   11474:	772e                	ld	a4,232(sp)
   11476:	fef76ae3          	bltu	a4,a5,1146a <_vfprintf_r+0x9d8>
   1147a:	b7f5                	j	11466 <_vfprintf_r+0x9d4>
   1147c:	04600713          	li	a4,70
   11480:	e8ec12e3          	bne	s8,a4,11304 <_vfprintf_r+0x872>
   11484:	05a05863          	blez	s10,114d4 <_vfprintf_r+0xa42>
   11488:	000d9563          	bnez	s11,11492 <_vfprintf_r+0xa00>
   1148c:	00147713          	andi	a4,s0,1
   11490:	cf59                	beqz	a4,1152e <_vfprintf_r+0xa9c>
   11492:	47e2                	lw	a5,24(sp)
   11494:	01a7873b          	addw	a4,a5,s10
   11498:	01b70dbb          	addw	s11,a4,s11
   1149c:	06600b13          	li	s6,102
   114a0:	a895                	j	11514 <_vfprintf_r+0xa82>
   114a2:	8732                	mv	a4,a2
   114a4:	b56d                	j	1134e <_vfprintf_r+0x8bc>
   114a6:	0705                	addi	a4,a4,1
   114a8:	fff74783          	lbu	a5,-1(a4)
   114ac:	0605                	addi	a2,a2,1
   114ae:	fef60fa3          	sb	a5,-1(a2)
   114b2:	b5c9                	j	11374 <_vfprintf_r+0x8e2>
   114b4:	0e210713          	addi	a4,sp,226
   114b8:	e599                	bnez	a1,114c6 <_vfprintf_r+0xa34>
   114ba:	03000793          	li	a5,48
   114be:	0ef10123          	sb	a5,226(sp)
   114c2:	0e310713          	addi	a4,sp,227
   114c6:	0306879b          	addiw	a5,a3,48
   114ca:	00170613          	addi	a2,a4,1
   114ce:	00f70023          	sb	a5,0(a4)
   114d2:	b55d                	j	11378 <_vfprintf_r+0x8e6>
   114d4:	000d9563          	bnez	s11,114de <_vfprintf_r+0xa4c>
   114d8:	00147713          	andi	a4,s0,1
   114dc:	cb39                	beqz	a4,11532 <_vfprintf_r+0xaa0>
   114de:	47e2                	lw	a5,24(sp)
   114e0:	0017871b          	addiw	a4,a5,1
   114e4:	bf55                	j	11498 <_vfprintf_r+0xa06>
   114e6:	014d4c63          	blt	s10,s4,114fe <_vfprintf_r+0xa6c>
   114ea:	00147713          	andi	a4,s0,1
   114ee:	8dea                	mv	s11,s10
   114f0:	c701                	beqz	a4,114f8 <_vfprintf_r+0xa66>
   114f2:	47e2                	lw	a5,24(sp)
   114f4:	01a78dbb          	addw	s11,a5,s10
   114f8:	06700b13          	li	s6,103
   114fc:	a821                	j	11514 <_vfprintf_r+0xa82>
   114fe:	47e2                	lw	a5,24(sp)
   11500:	06700b13          	li	s6,103
   11504:	01478dbb          	addw	s11,a5,s4
   11508:	01a04663          	bgtz	s10,11514 <_vfprintf_r+0xa82>
   1150c:	41ad8e3b          	subw	t3,s11,s10
   11510:	001e0d9b          	addiw	s11,t3,1
   11514:	40047413          	andi	s0,s0,1024
   11518:	00040c1b          	sext.w	s8,s0
   1151c:	e402                	sd	zero,8(sp)
   1151e:	e80c07e3          	beqz	s8,113ac <_vfprintf_r+0x91a>
   11522:	4c01                	li	s8,0
   11524:	e9a054e3          	blez	s10,113ac <_vfprintf_r+0x91a>
   11528:	0ff00693          	li	a3,255
   1152c:	a01d                	j	11552 <_vfprintf_r+0xac0>
   1152e:	8dea                	mv	s11,s10
   11530:	b7b5                	j	1149c <_vfprintf_r+0xa0a>
   11532:	06600b13          	li	s6,102
   11536:	4d85                	li	s11,1
   11538:	bff1                	j	11514 <_vfprintf_r+0xa82>
   1153a:	2701                	sext.w	a4,a4
   1153c:	03a75063          	ble	s10,a4,1155c <_vfprintf_r+0xaca>
   11540:	6782                	ld	a5,0(sp)
   11542:	40ed0d3b          	subw	s10,s10,a4
   11546:	0017c703          	lbu	a4,1(a5)
   1154a:	c315                	beqz	a4,1156e <_vfprintf_r+0xadc>
   1154c:	0785                	addi	a5,a5,1
   1154e:	2c05                	addiw	s8,s8,1
   11550:	e03e                	sd	a5,0(sp)
   11552:	6782                	ld	a5,0(sp)
   11554:	0007c703          	lbu	a4,0(a5)
   11558:	fed711e3          	bne	a4,a3,1153a <_vfprintf_r+0xaa8>
   1155c:	47a2                	lw	a5,8(sp)
   1155e:	00fc073b          	addw	a4,s8,a5
   11562:	4786                	lw	a5,64(sp)
   11564:	02f7073b          	mulw	a4,a4,a5
   11568:	01b70dbb          	addw	s11,a4,s11
   1156c:	b581                	j	113ac <_vfprintf_r+0x91a>
   1156e:	47a2                	lw	a5,8(sp)
   11570:	2785                	addiw	a5,a5,1
   11572:	e43e                	sd	a5,8(sp)
   11574:	bff9                	j	11552 <_vfprintf_r+0xac0>
   11576:	008b8713          	addi	a4,s7,8
   1157a:	f83a                	sd	a4,48(sp)
   1157c:	02047713          	andi	a4,s0,32
   11580:	000bb783          	ld	a5,0(s7)
   11584:	c719                	beqz	a4,11592 <_vfprintf_r+0xb00>
   11586:	7722                	ld	a4,40(sp)
   11588:	e398                	sd	a4,0(a5)
   1158a:	7bc2                	ld	s7,48(sp)
   1158c:	64c2                	ld	s1,16(sp)
   1158e:	e48ff06f          	j	10bd6 <_vfprintf_r+0x144>
   11592:	01047713          	andi	a4,s0,16
   11596:	fb65                	bnez	a4,11586 <_vfprintf_r+0xaf4>
   11598:	04047713          	andi	a4,s0,64
   1159c:	c711                	beqz	a4,115a8 <_vfprintf_r+0xb16>
   1159e:	02815703          	lhu	a4,40(sp)
   115a2:	00e79023          	sh	a4,0(a5)
   115a6:	b7d5                	j	1158a <_vfprintf_r+0xaf8>
   115a8:	20047413          	andi	s0,s0,512
   115ac:	c411                	beqz	s0,115b8 <_vfprintf_r+0xb26>
   115ae:	02814703          	lbu	a4,40(sp)
   115b2:	00e78023          	sb	a4,0(a5)
   115b6:	bfd1                	j	1158a <_vfprintf_r+0xaf8>
   115b8:	5722                	lw	a4,40(sp)
   115ba:	c398                	sw	a4,0(a5)
   115bc:	b7f9                	j	1158a <_vfprintf_r+0xaf8>
   115be:	01046413          	ori	s0,s0,16
   115c2:	2401                	sext.w	s0,s0
   115c4:	008b8793          	addi	a5,s7,8
   115c8:	f83e                	sd	a5,48(sp)
   115ca:	02047793          	andi	a5,s0,32
   115ce:	cb85                	beqz	a5,115fe <_vfprintf_r+0xb6c>
   115d0:	000bbb83          	ld	s7,0(s7)
   115d4:	bff47413          	andi	s0,s0,-1025
   115d8:	2401                	sext.w	s0,s0
   115da:	4781                	li	a5,0
   115dc:	0c0107a3          	sb	zero,207(sp)
   115e0:	577d                	li	a4,-1
   115e2:	12ed8c63          	beq	s11,a4,1171a <_vfprintf_r+0xc88>
   115e6:	8722                	mv	a4,s0
   115e8:	f7f47413          	andi	s0,s0,-129
   115ec:	2401                	sext.w	s0,s0
   115ee:	120b9663          	bnez	s7,1171a <_vfprintf_r+0xc88>
   115f2:	200d8463          	beqz	s11,117fa <_vfprintf_r+0xd68>
   115f6:	4705                	li	a4,1
   115f8:	12e79463          	bne	a5,a4,11720 <_vfprintf_r+0xc8e>
   115fc:	bc05                	j	1102c <_vfprintf_r+0x59a>
   115fe:	01047793          	andi	a5,s0,16
   11602:	f7f9                	bnez	a5,115d0 <_vfprintf_r+0xb3e>
   11604:	04047793          	andi	a5,s0,64
   11608:	000bab83          	lw	s7,0(s7)
   1160c:	c789                	beqz	a5,11616 <_vfprintf_r+0xb84>
   1160e:	1bc2                	slli	s7,s7,0x30
   11610:	030bdb93          	srli	s7,s7,0x30
   11614:	b7c1                	j	115d4 <_vfprintf_r+0xb42>
   11616:	20047793          	andi	a5,s0,512
   1161a:	c781                	beqz	a5,11622 <_vfprintf_r+0xb90>
   1161c:	0ffbfb93          	andi	s7,s7,255
   11620:	bf55                	j	115d4 <_vfprintf_r+0xb42>
   11622:	1b82                	slli	s7,s7,0x20
   11624:	020bdb93          	srli	s7,s7,0x20
   11628:	b775                	j	115d4 <_vfprintf_r+0xb42>
   1162a:	008b8793          	addi	a5,s7,8
   1162e:	f83e                	sd	a5,48(sp)
   11630:	77e1                	lui	a5,0xffff8
   11632:	8307c793          	xori	a5,a5,-2000
   11636:	0cf11823          	sh	a5,208(sp)
   1163a:	0001a7b7          	lui	a5,0x1a
   1163e:	eb078793          	addi	a5,a5,-336 # 19eb0 <zeroes.4441+0x60>
   11642:	00246413          	ori	s0,s0,2
   11646:	f0be                	sd	a5,96(sp)
   11648:	000bbb83          	ld	s7,0(s7)
   1164c:	2401                	sext.w	s0,s0
   1164e:	4789                	li	a5,2
   11650:	07800b13          	li	s6,120
   11654:	b761                	j	115dc <_vfprintf_r+0xb4a>
   11656:	008b8793          	addi	a5,s7,8
   1165a:	f83e                	sd	a5,48(sp)
   1165c:	0c0107a3          	sb	zero,207(sp)
   11660:	57fd                	li	a5,-1
   11662:	000bb483          	ld	s1,0(s7)
   11666:	00fd8e63          	beq	s11,a5,11682 <_vfprintf_r+0xbf0>
   1166a:	866e                	mv	a2,s11
   1166c:	4581                	li	a1,0
   1166e:	8526                	mv	a0,s1
   11670:	43b020ef          	jal	ra,142aa <memchr>
   11674:	8baa                	mv	s7,a0
   11676:	a40503e3          	beqz	a0,110bc <_vfprintf_r+0x62a>
   1167a:	40950dbb          	subw	s11,a0,s1
   1167e:	4b81                	li	s7,0
   11680:	bc35                	j	110bc <_vfprintf_r+0x62a>
   11682:	8526                	mv	a0,s1
   11684:	1e1030ef          	jal	ra,15064 <strlen>
   11688:	00050d9b          	sext.w	s11,a0
   1168c:	bfcd                	j	1167e <_vfprintf_r+0xbec>
   1168e:	01046413          	ori	s0,s0,16
   11692:	2401                	sext.w	s0,s0
   11694:	008b8793          	addi	a5,s7,8
   11698:	f83e                	sd	a5,48(sp)
   1169a:	02047793          	andi	a5,s0,32
   1169e:	c789                	beqz	a5,116a8 <_vfprintf_r+0xc16>
   116a0:	000bbb83          	ld	s7,0(s7)
   116a4:	4785                	li	a5,1
   116a6:	bf1d                	j	115dc <_vfprintf_r+0xb4a>
   116a8:	01047793          	andi	a5,s0,16
   116ac:	fbf5                	bnez	a5,116a0 <_vfprintf_r+0xc0e>
   116ae:	04047793          	andi	a5,s0,64
   116b2:	000bab83          	lw	s7,0(s7)
   116b6:	c789                	beqz	a5,116c0 <_vfprintf_r+0xc2e>
   116b8:	1bc2                	slli	s7,s7,0x30
   116ba:	030bdb93          	srli	s7,s7,0x30
   116be:	b7dd                	j	116a4 <_vfprintf_r+0xc12>
   116c0:	20047793          	andi	a5,s0,512
   116c4:	c781                	beqz	a5,116cc <_vfprintf_r+0xc3a>
   116c6:	0ffbfb93          	andi	s7,s7,255
   116ca:	bfe9                	j	116a4 <_vfprintf_r+0xc12>
   116cc:	1b82                	slli	s7,s7,0x20
   116ce:	020bdb93          	srli	s7,s7,0x20
   116d2:	bfc9                	j	116a4 <_vfprintf_r+0xc12>
   116d4:	0001a7b7          	lui	a5,0x1a
   116d8:	eb078793          	addi	a5,a5,-336 # 19eb0 <zeroes.4441+0x60>
   116dc:	d9eff06f          	j	10c7a <_vfprintf_r+0x1e8>
   116e0:	01047793          	andi	a5,s0,16
   116e4:	da079363          	bnez	a5,10c8a <_vfprintf_r+0x1f8>
   116e8:	04047793          	andi	a5,s0,64
   116ec:	000bab83          	lw	s7,0(s7)
   116f0:	c791                	beqz	a5,116fc <_vfprintf_r+0xc6a>
   116f2:	1bc2                	slli	s7,s7,0x30
   116f4:	030bdb93          	srli	s7,s7,0x30
   116f8:	d96ff06f          	j	10c8e <_vfprintf_r+0x1fc>
   116fc:	20047793          	andi	a5,s0,512
   11700:	c789                	beqz	a5,1170a <_vfprintf_r+0xc78>
   11702:	0ffbfb93          	andi	s7,s7,255
   11706:	d88ff06f          	j	10c8e <_vfprintf_r+0x1fc>
   1170a:	1b82                	slli	s7,s7,0x20
   1170c:	020bdb93          	srli	s7,s7,0x20
   11710:	d7eff06f          	j	10c8e <_vfprintf_r+0x1fc>
   11714:	8722                	mv	a4,s0
   11716:	4785                	li	a5,1
   11718:	bdc1                	j	115e8 <_vfprintf_r+0xb56>
   1171a:	4705                	li	a4,1
   1171c:	90e785e3          	beq	a5,a4,11026 <_vfprintf_r+0x594>
   11720:	4709                	li	a4,2
   11722:	0ae78d63          	beq	a5,a4,117dc <_vfprintf_r+0xd4a>
   11726:	1afc                	addi	a5,sp,380
   11728:	007bf713          	andi	a4,s7,7
   1172c:	03070713          	addi	a4,a4,48
   11730:	fee78fa3          	sb	a4,-1(a5)
   11734:	003bdb93          	srli	s7,s7,0x3
   11738:	fff78493          	addi	s1,a5,-1
   1173c:	020b9863          	bnez	s7,1176c <_vfprintf_r+0xcda>
   11740:	00147693          	andi	a3,s0,1
   11744:	ca89                	beqz	a3,11756 <_vfprintf_r+0xcc4>
   11746:	03000693          	li	a3,48
   1174a:	00d70663          	beq	a4,a3,11756 <_vfprintf_r+0xcc4>
   1174e:	fed48fa3          	sb	a3,-1(s1)
   11752:	ffe78493          	addi	s1,a5,-2
   11756:	17c10e13          	addi	t3,sp,380
   1175a:	876e                	mv	a4,s11
   1175c:	4b81                	li	s7,0
   1175e:	409e0dbb          	subw	s11,t3,s1
   11762:	e402                	sd	zero,8(sp)
   11764:	4c01                	li	s8,0
   11766:	4d01                	li	s10,0
   11768:	e8eff06f          	j	10df6 <_vfprintf_r+0x364>
   1176c:	87a6                	mv	a5,s1
   1176e:	bf6d                	j	11728 <_vfprintf_r+0xc96>
   11770:	40047c13          	andi	s8,s0,1024
   11774:	4a01                	li	s4,0
   11776:	1afc                	addi	a5,sp,380
   11778:	4d29                	li	s10,10
   1177a:	2c01                	sext.w	s8,s8
   1177c:	0ff00693          	li	a3,255
   11780:	4825                	li	a6,9
   11782:	03abf733          	remu	a4,s7,s10
   11786:	fff78493          	addi	s1,a5,-1
   1178a:	2a05                	addiw	s4,s4,1
   1178c:	0307071b          	addiw	a4,a4,48
   11790:	fee78fa3          	sb	a4,-1(a5)
   11794:	020c0e63          	beqz	s8,117d0 <_vfprintf_r+0xd3e>
   11798:	6782                	ld	a5,0(sp)
   1179a:	0007c783          	lbu	a5,0(a5)
   1179e:	02fa1963          	bne	s4,a5,117d0 <_vfprintf_r+0xd3e>
   117a2:	02d78763          	beq	a5,a3,117d0 <_vfprintf_r+0xd3e>
   117a6:	03787563          	bleu	s7,a6,117d0 <_vfprintf_r+0xd3e>
   117aa:	6786                	ld	a5,64(sp)
   117ac:	65c6                	ld	a1,80(sp)
   117ae:	fc42                	sd	a6,56(sp)
   117b0:	8c9d                	sub	s1,s1,a5
   117b2:	863e                	mv	a2,a5
   117b4:	8526                	mv	a0,s1
   117b6:	e436                	sd	a3,8(sp)
   117b8:	0bf030ef          	jal	ra,15076 <strncpy>
   117bc:	6782                	ld	a5,0(sp)
   117be:	4a01                	li	s4,0
   117c0:	66a2                	ld	a3,8(sp)
   117c2:	0017c783          	lbu	a5,1(a5)
   117c6:	7862                	ld	a6,56(sp)
   117c8:	c781                	beqz	a5,117d0 <_vfprintf_r+0xd3e>
   117ca:	6782                	ld	a5,0(sp)
   117cc:	0785                	addi	a5,a5,1
   117ce:	e03e                	sd	a5,0(sp)
   117d0:	03abdbb3          	divu	s7,s7,s10
   117d4:	f80b81e3          	beqz	s7,11756 <_vfprintf_r+0xcc4>
   117d8:	87a6                	mv	a5,s1
   117da:	b765                	j	11782 <_vfprintf_r+0xcf0>
   117dc:	1ae4                	addi	s1,sp,380
   117de:	7706                	ld	a4,96(sp)
   117e0:	00fbf793          	andi	a5,s7,15
   117e4:	14fd                	addi	s1,s1,-1
   117e6:	97ba                	add	a5,a5,a4
   117e8:	0007c783          	lbu	a5,0(a5)
   117ec:	004bdb93          	srli	s7,s7,0x4
   117f0:	00f48023          	sb	a5,0(s1)
   117f4:	fe0b95e3          	bnez	s7,117de <_vfprintf_r+0xd4c>
   117f8:	bfb9                	j	11756 <_vfprintf_r+0xcc4>
   117fa:	1ae4                	addi	s1,sp,380
   117fc:	ffa9                	bnez	a5,11756 <_vfprintf_r+0xcc4>
   117fe:	8b05                	andi	a4,a4,1
   11800:	db39                	beqz	a4,11756 <_vfprintf_r+0xcc4>
   11802:	03000793          	li	a5,48
   11806:	16f10da3          	sb	a5,379(sp)
   1180a:	82bff06f          	j	11034 <_vfprintf_r+0x5a2>
   1180e:	020b02e3          	beqz	s6,12032 <_vfprintf_r+0x15a0>
   11812:	11610c23          	sb	s6,280(sp)
   11816:	0c0107a3          	sb	zero,207(sp)
   1181a:	f85e                	sd	s7,48(sp)
   1181c:	dccff06f          	j	10de8 <_vfprintf_r+0x356>
   11820:	0641                	addi	a2,a2,16
   11822:	011cb423          	sd	a7,8(s9)
   11826:	ea32                	sd	a2,272(sp)
   11828:	10b12423          	sw	a1,264(sp)
   1182c:	02aed463          	ble	a0,t4,11854 <_vfprintf_r+0xdc2>
   11830:	0210                	addi	a2,sp,256
   11832:	85ca                	mv	a1,s2
   11834:	854e                	mv	a0,s3
   11836:	fd76                	sd	t4,184(sp)
   11838:	f942                	sd	a6,176(sp)
   1183a:	e546                	sd	a7,136(sp)
   1183c:	e13a                	sd	a4,128(sp)
   1183e:	fcb6                	sd	a3,120(sp)
   11840:	5df040ef          	jal	ra,1661e <__sprint_r>
   11844:	7a051863          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11848:	7eea                	ld	t4,184(sp)
   1184a:	784a                	ld	a6,176(sp)
   1184c:	68aa                	ld	a7,136(sp)
   1184e:	670a                	ld	a4,128(sp)
   11850:	76e6                	ld	a3,120(sp)
   11852:	8f56                	mv	t5,s5
   11854:	36c1                	addiw	a3,a3,-16
   11856:	8cfa                	mv	s9,t5
   11858:	de8ff06f          	j	10e40 <_vfprintf_r+0x3ae>
   1185c:	0641                	addi	a2,a2,16
   1185e:	011cb423          	sd	a7,8(s9)
   11862:	ea32                	sd	a2,272(sp)
   11864:	10b12423          	sw	a1,264(sp)
   11868:	02aed463          	ble	a0,t4,11890 <_vfprintf_r+0xdfe>
   1186c:	0210                	addi	a2,sp,256
   1186e:	85ca                	mv	a1,s2
   11870:	854e                	mv	a0,s3
   11872:	e576                	sd	t4,136(sp)
   11874:	e142                	sd	a6,128(sp)
   11876:	fcc6                	sd	a7,120(sp)
   11878:	f8ba                	sd	a4,112(sp)
   1187a:	f4b6                	sd	a3,104(sp)
   1187c:	5a3040ef          	jal	ra,1661e <__sprint_r>
   11880:	76051a63          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11884:	6eaa                	ld	t4,136(sp)
   11886:	680a                	ld	a6,128(sp)
   11888:	78e6                	ld	a7,120(sp)
   1188a:	7746                	ld	a4,112(sp)
   1188c:	76a6                	ld	a3,104(sp)
   1188e:	8f56                	mv	t5,s5
   11890:	36c1                	addiw	a3,a3,-16
   11892:	8cfa                	mv	s9,t5
   11894:	e92ff06f          	j	10f26 <_vfprintf_r+0x494>
   11898:	06c1                	addi	a3,a3,16
   1189a:	011cb423          	sd	a7,8(s9)
   1189e:	ea36                	sd	a3,272(sp)
   118a0:	10c12423          	sw	a2,264(sp)
   118a4:	02bed263          	ble	a1,t4,118c8 <_vfprintf_r+0xe36>
   118a8:	0210                	addi	a2,sp,256
   118aa:	85ca                	mv	a1,s2
   118ac:	854e                	mv	a0,s3
   118ae:	e176                	sd	t4,128(sp)
   118b0:	fcc2                	sd	a6,120(sp)
   118b2:	f8c6                	sd	a7,112(sp)
   118b4:	f4ba                	sd	a4,104(sp)
   118b6:	569040ef          	jal	ra,1661e <__sprint_r>
   118ba:	72051d63          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   118be:	6e8a                	ld	t4,128(sp)
   118c0:	7866                	ld	a6,120(sp)
   118c2:	78c6                	ld	a7,112(sp)
   118c4:	7726                	ld	a4,104(sp)
   118c6:	8556                	mv	a0,s5
   118c8:	3741                	addiw	a4,a4,-16
   118ca:	8caa                	mv	s9,a0
   118cc:	eaeff06f          	j	10f7a <_vfprintf_r+0x4e8>
   118d0:	06500693          	li	a3,101
   118d4:	5766df63          	ble	s6,a3,11e52 <_vfprintf_r+0x13c0>
   118d8:	754e                	ld	a0,240(sp)
   118da:	75ee                	ld	a1,248(sp)
   118dc:	4601                	li	a2,0
   118de:	4681                	li	a3,0
   118e0:	f4ba                	sd	a4,104(sp)
   118e2:	6b1060ef          	jal	ra,18792 <__eqtf2>
   118e6:	7726                	ld	a4,104(sp)
   118e8:	10051e63          	bnez	a0,11a04 <_vfprintf_r+0xf72>
   118ec:	0001a7b7          	lui	a5,0x1a
   118f0:	ee078793          	addi	a5,a5,-288 # 19ee0 <zeroes.4441+0x90>
   118f4:	00fcb023          	sd	a5,0(s9)
   118f8:	4785                	li	a5,1
   118fa:	00fcb423          	sd	a5,8(s9)
   118fe:	10812783          	lw	a5,264(sp)
   11902:	0705                	addi	a4,a4,1
   11904:	ea3a                	sd	a4,272(sp)
   11906:	0017871b          	addiw	a4,a5,1
   1190a:	10e12423          	sw	a4,264(sp)
   1190e:	479d                	li	a5,7
   11910:	0cc1                	addi	s9,s9,16
   11912:	00e7da63          	ble	a4,a5,11926 <_vfprintf_r+0xe94>
   11916:	0210                	addi	a2,sp,256
   11918:	85ca                	mv	a1,s2
   1191a:	854e                	mv	a0,s3
   1191c:	503040ef          	jal	ra,1661e <__sprint_r>
   11920:	6c051a63          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11924:	8cd6                	mv	s9,s5
   11926:	47ee                	lw	a5,216(sp)
   11928:	0147c563          	blt	a5,s4,11932 <_vfprintf_r+0xea0>
   1192c:	00147793          	andi	a5,s0,1
   11930:	cfa5                	beqz	a5,119a8 <_vfprintf_r+0xf16>
   11932:	67a6                	ld	a5,72(sp)
   11934:	6762                	ld	a4,24(sp)
   11936:	0cc1                	addi	s9,s9,16
   11938:	fefcb823          	sd	a5,-16(s9)
   1193c:	67e2                	ld	a5,24(sp)
   1193e:	fefcbc23          	sd	a5,-8(s9)
   11942:	67d2                	ld	a5,272(sp)
   11944:	97ba                	add	a5,a5,a4
   11946:	ea3e                	sd	a5,272(sp)
   11948:	10812783          	lw	a5,264(sp)
   1194c:	0017871b          	addiw	a4,a5,1
   11950:	10e12423          	sw	a4,264(sp)
   11954:	479d                	li	a5,7
   11956:	00e7da63          	ble	a4,a5,1196a <_vfprintf_r+0xed8>
   1195a:	0210                	addi	a2,sp,256
   1195c:	85ca                	mv	a1,s2
   1195e:	854e                	mv	a0,s3
   11960:	4bf040ef          	jal	ra,1661e <__sprint_r>
   11964:	68051863          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11968:	8cd6                	mv	s9,s5
   1196a:	fffa049b          	addiw	s1,s4,-1
   1196e:	02905d63          	blez	s1,119a8 <_vfprintf_r+0xf16>
   11972:	6b69                	lui	s6,0x1a
   11974:	4c41                	li	s8,16
   11976:	e50b0b13          	addi	s6,s6,-432 # 19e50 <zeroes.4441>
   1197a:	4d1d                	li	s10,7
   1197c:	10812703          	lw	a4,264(sp)
   11980:	016cb023          	sd	s6,0(s9)
   11984:	67d2                	ld	a5,272(sp)
   11986:	0017069b          	addiw	a3,a4,1
   1198a:	8736                	mv	a4,a3
   1198c:	010c8613          	addi	a2,s9,16
   11990:	049c4763          	blt	s8,s1,119de <_vfprintf_r+0xf4c>
   11994:	009cb423          	sd	s1,8(s9)
   11998:	94be                	add	s1,s1,a5
   1199a:	ea26                	sd	s1,272(sp)
   1199c:	10d12423          	sw	a3,264(sp)
   119a0:	479d                	li	a5,7
   119a2:	8cb2                	mv	s9,a2
   119a4:	e4d7c063          	blt	a5,a3,10fe4 <_vfprintf_r+0x552>
   119a8:	8811                	andi	s0,s0,4
   119aa:	60041063          	bnez	s0,11faa <_vfprintf_r+0x1518>
   119ae:	7702                	ld	a4,32(sp)
   119b0:	76e2                	ld	a3,56(sp)
   119b2:	5782                	lw	a5,32(sp)
   119b4:	00d75363          	ble	a3,a4,119ba <_vfprintf_r+0xf28>
   119b8:	57e2                	lw	a5,56(sp)
   119ba:	5722                	lw	a4,40(sp)
   119bc:	9fb9                	addw	a5,a5,a4
   119be:	f43e                	sd	a5,40(sp)
   119c0:	67d2                	ld	a5,272(sp)
   119c2:	cb81                	beqz	a5,119d2 <_vfprintf_r+0xf40>
   119c4:	0210                	addi	a2,sp,256
   119c6:	85ca                	mv	a1,s2
   119c8:	854e                	mv	a0,s3
   119ca:	455040ef          	jal	ra,1661e <__sprint_r>
   119ce:	62051363          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   119d2:	10012423          	sw	zero,264(sp)
   119d6:	640b9963          	bnez	s7,12028 <_vfprintf_r+0x1596>
   119da:	8cd6                	mv	s9,s5
   119dc:	b67d                	j	1158a <_vfprintf_r+0xaf8>
   119de:	07c1                	addi	a5,a5,16
   119e0:	018cb423          	sd	s8,8(s9)
   119e4:	ea3e                	sd	a5,272(sp)
   119e6:	10e12423          	sw	a4,264(sp)
   119ea:	00dd5a63          	ble	a3,s10,119fe <_vfprintf_r+0xf6c>
   119ee:	0210                	addi	a2,sp,256
   119f0:	85ca                	mv	a1,s2
   119f2:	854e                	mv	a0,s3
   119f4:	42b040ef          	jal	ra,1661e <__sprint_r>
   119f8:	5e051e63          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   119fc:	8656                	mv	a2,s5
   119fe:	34c1                	addiw	s1,s1,-16
   11a00:	8cb2                	mv	s9,a2
   11a02:	bfad                	j	1197c <_vfprintf_r+0xeea>
   11a04:	46ee                	lw	a3,216(sp)
   11a06:	12d04163          	bgtz	a3,11b28 <_vfprintf_r+0x1096>
   11a0a:	0001a7b7          	lui	a5,0x1a
   11a0e:	ee078793          	addi	a5,a5,-288 # 19ee0 <zeroes.4441+0x90>
   11a12:	00fcb023          	sd	a5,0(s9)
   11a16:	4785                	li	a5,1
   11a18:	00fcb423          	sd	a5,8(s9)
   11a1c:	10812783          	lw	a5,264(sp)
   11a20:	0705                	addi	a4,a4,1
   11a22:	ea3a                	sd	a4,272(sp)
   11a24:	0017871b          	addiw	a4,a5,1
   11a28:	10e12423          	sw	a4,264(sp)
   11a2c:	479d                	li	a5,7
   11a2e:	0cc1                	addi	s9,s9,16
   11a30:	00e7da63          	ble	a4,a5,11a44 <_vfprintf_r+0xfb2>
   11a34:	0210                	addi	a2,sp,256
   11a36:	85ca                	mv	a1,s2
   11a38:	854e                	mv	a0,s3
   11a3a:	3e5040ef          	jal	ra,1661e <__sprint_r>
   11a3e:	5a051b63          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11a42:	8cd6                	mv	s9,s5
   11a44:	47ee                	lw	a5,216(sp)
   11a46:	e791                	bnez	a5,11a52 <_vfprintf_r+0xfc0>
   11a48:	000a1563          	bnez	s4,11a52 <_vfprintf_r+0xfc0>
   11a4c:	00147793          	andi	a5,s0,1
   11a50:	dfa1                	beqz	a5,119a8 <_vfprintf_r+0xf16>
   11a52:	67a6                	ld	a5,72(sp)
   11a54:	6762                	ld	a4,24(sp)
   11a56:	010c8313          	addi	t1,s9,16
   11a5a:	00fcb023          	sd	a5,0(s9)
   11a5e:	67e2                	ld	a5,24(sp)
   11a60:	00fcb423          	sd	a5,8(s9)
   11a64:	67d2                	ld	a5,272(sp)
   11a66:	97ba                	add	a5,a5,a4
   11a68:	ea3e                	sd	a5,272(sp)
   11a6a:	10812783          	lw	a5,264(sp)
   11a6e:	0017871b          	addiw	a4,a5,1
   11a72:	10e12423          	sw	a4,264(sp)
   11a76:	479d                	li	a5,7
   11a78:	00e7da63          	ble	a4,a5,11a8c <_vfprintf_r+0xffa>
   11a7c:	0210                	addi	a2,sp,256
   11a7e:	85ca                	mv	a1,s2
   11a80:	854e                	mv	a0,s3
   11a82:	39d040ef          	jal	ra,1661e <__sprint_r>
   11a86:	56051763          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11a8a:	8356                	mv	t1,s5
   11a8c:	4b6e                	lw	s6,216(sp)
   11a8e:	040b5663          	bgez	s6,11ada <_vfprintf_r+0x1048>
   11a92:	6c69                	lui	s8,0x1a
   11a94:	41600b3b          	negw	s6,s6
   11a98:	879a                	mv	a5,t1
   11a9a:	4d41                	li	s10,16
   11a9c:	e50c0c13          	addi	s8,s8,-432 # 19e50 <zeroes.4441>
   11aa0:	4c9d                	li	s9,7
   11aa2:	10812683          	lw	a3,264(sp)
   11aa6:	0187b023          	sd	s8,0(a5)
   11aaa:	6752                	ld	a4,272(sp)
   11aac:	0016861b          	addiw	a2,a3,1
   11ab0:	86b2                	mv	a3,a2
   11ab2:	0341                	addi	t1,t1,16
   11ab4:	056d4763          	blt	s10,s6,11b02 <_vfprintf_r+0x1070>
   11ab8:	0167b423          	sd	s6,8(a5)
   11abc:	9b3a                	add	s6,s6,a4
   11abe:	ea5a                	sd	s6,272(sp)
   11ac0:	10c12423          	sw	a2,264(sp)
   11ac4:	479d                	li	a5,7
   11ac6:	00c7da63          	ble	a2,a5,11ada <_vfprintf_r+0x1048>
   11aca:	0210                	addi	a2,sp,256
   11acc:	85ca                	mv	a1,s2
   11ace:	854e                	mv	a0,s3
   11ad0:	34f040ef          	jal	ra,1661e <__sprint_r>
   11ad4:	52051063          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11ad8:	8356                	mv	t1,s5
   11ada:	67d2                	ld	a5,272(sp)
   11adc:	00933023          	sd	s1,0(t1) # 0 <_start-0x100b0>
   11ae0:	01433423          	sd	s4,8(t1)
   11ae4:	97d2                	add	a5,a5,s4
   11ae6:	ea3e                	sd	a5,272(sp)
   11ae8:	10812783          	lw	a5,264(sp)
   11aec:	01030c93          	addi	s9,t1,16
   11af0:	0017871b          	addiw	a4,a5,1
   11af4:	10e12423          	sw	a4,264(sp)
   11af8:	479d                	li	a5,7
   11afa:	eae7d7e3          	ble	a4,a5,119a8 <_vfprintf_r+0xf16>
   11afe:	ce6ff06f          	j	10fe4 <_vfprintf_r+0x552>
   11b02:	0741                	addi	a4,a4,16
   11b04:	01a7b423          	sd	s10,8(a5)
   11b08:	ea3a                	sd	a4,272(sp)
   11b0a:	10d12423          	sw	a3,264(sp)
   11b0e:	00ccda63          	ble	a2,s9,11b22 <_vfprintf_r+0x1090>
   11b12:	0210                	addi	a2,sp,256
   11b14:	85ca                	mv	a1,s2
   11b16:	854e                	mv	a0,s3
   11b18:	307040ef          	jal	ra,1661e <__sprint_r>
   11b1c:	4c051c63          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11b20:	8356                	mv	t1,s5
   11b22:	3b41                	addiw	s6,s6,-16
   11b24:	879a                	mv	a5,t1
   11b26:	bfb5                	j	11aa2 <_vfprintf_r+0x1010>
   11b28:	000d0b1b          	sext.w	s6,s10
   11b2c:	01aa5463          	ble	s10,s4,11b34 <_vfprintf_r+0x10a2>
   11b30:	000a0b1b          	sext.w	s6,s4
   11b34:	03605a63          	blez	s6,11b68 <_vfprintf_r+0x10d6>
   11b38:	975a                	add	a4,a4,s6
   11b3a:	ea3a                	sd	a4,272(sp)
   11b3c:	10812703          	lw	a4,264(sp)
   11b40:	009cb023          	sd	s1,0(s9)
   11b44:	016cb423          	sd	s6,8(s9)
   11b48:	0017069b          	addiw	a3,a4,1
   11b4c:	10d12423          	sw	a3,264(sp)
   11b50:	471d                	li	a4,7
   11b52:	0cc1                	addi	s9,s9,16
   11b54:	00d75a63          	ble	a3,a4,11b68 <_vfprintf_r+0x10d6>
   11b58:	0210                	addi	a2,sp,256
   11b5a:	85ca                	mv	a1,s2
   11b5c:	854e                	mv	a0,s3
   11b5e:	2c1040ef          	jal	ra,1661e <__sprint_r>
   11b62:	48051963          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11b66:	8cd6                	mv	s9,s5
   11b68:	875a                	mv	a4,s6
   11b6a:	000b5363          	bgez	s6,11b70 <_vfprintf_r+0x10de>
   11b6e:	4701                	li	a4,0
   11b70:	40ed0b3b          	subw	s6,s10,a4
   11b74:	05605563          	blez	s6,11bbe <_vfprintf_r+0x112c>
   11b78:	66e9                	lui	a3,0x1a
   11b7a:	4841                	li	a6,16
   11b7c:	e5068d93          	addi	s11,a3,-432 # 19e50 <zeroes.4441>
   11b80:	489d                	li	a7,7
   11b82:	10812603          	lw	a2,264(sp)
   11b86:	01bcb023          	sd	s11,0(s9)
   11b8a:	6752                	ld	a4,272(sp)
   11b8c:	0016059b          	addiw	a1,a2,1
   11b90:	862e                	mv	a2,a1
   11b92:	010c8513          	addi	a0,s9,16
   11b96:	15684263          	blt	a6,s6,11cda <_vfprintf_r+0x1248>
   11b9a:	016cb423          	sd	s6,8(s9)
   11b9e:	9b3a                	add	s6,s6,a4
   11ba0:	ea5a                	sd	s6,272(sp)
   11ba2:	10b12423          	sw	a1,264(sp)
   11ba6:	471d                	li	a4,7
   11ba8:	8caa                	mv	s9,a0
   11baa:	00b75a63          	ble	a1,a4,11bbe <_vfprintf_r+0x112c>
   11bae:	0210                	addi	a2,sp,256
   11bb0:	85ca                	mv	a1,s2
   11bb2:	854e                	mv	a0,s3
   11bb4:	26b040ef          	jal	ra,1661e <__sprint_r>
   11bb8:	42051e63          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11bbc:	8cd6                	mv	s9,s5
   11bbe:	40047793          	andi	a5,s0,1024
   11bc2:	01a48b33          	add	s6,s1,s10
   11bc6:	c39d                	beqz	a5,11bec <_vfprintf_r+0x115a>
   11bc8:	014487b3          	add	a5,s1,s4
   11bcc:	f4be                	sd	a5,104(sp)
   11bce:	67e9                	lui	a5,0x1a
   11bd0:	e5078793          	addi	a5,a5,-432 # 19e50 <zeroes.4441>
   11bd4:	4d9d                	li	s11,7
   11bd6:	8d3e                	mv	s10,a5
   11bd8:	67a2                	ld	a5,8(sp)
   11bda:	120c1763          	bnez	s8,11d08 <_vfprintf_r+0x1276>
   11bde:	12079663          	bnez	a5,11d0a <_vfprintf_r+0x1278>
   11be2:	014487b3          	add	a5,s1,s4
   11be6:	0167f363          	bleu	s6,a5,11bec <_vfprintf_r+0x115a>
   11bea:	8b3e                	mv	s6,a5
   11bec:	47ee                	lw	a5,216(sp)
   11bee:	0147c563          	blt	a5,s4,11bf8 <_vfprintf_r+0x1166>
   11bf2:	00147793          	andi	a5,s0,1
   11bf6:	cf8d                	beqz	a5,11c30 <_vfprintf_r+0x119e>
   11bf8:	67a6                	ld	a5,72(sp)
   11bfa:	6762                	ld	a4,24(sp)
   11bfc:	0cc1                	addi	s9,s9,16
   11bfe:	fefcb823          	sd	a5,-16(s9)
   11c02:	67e2                	ld	a5,24(sp)
   11c04:	fefcbc23          	sd	a5,-8(s9)
   11c08:	67d2                	ld	a5,272(sp)
   11c0a:	97ba                	add	a5,a5,a4
   11c0c:	ea3e                	sd	a5,272(sp)
   11c0e:	10812783          	lw	a5,264(sp)
   11c12:	0017871b          	addiw	a4,a5,1
   11c16:	10e12423          	sw	a4,264(sp)
   11c1a:	479d                	li	a5,7
   11c1c:	00e7da63          	ble	a4,a5,11c30 <_vfprintf_r+0x119e>
   11c20:	0210                	addi	a2,sp,256
   11c22:	85ca                	mv	a1,s2
   11c24:	854e                	mv	a0,s3
   11c26:	1f9040ef          	jal	ra,1661e <__sprint_r>
   11c2a:	3c051563          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11c2e:	8cd6                	mv	s9,s5
   11c30:	4c6e                	lw	s8,216(sp)
   11c32:	94d2                	add	s1,s1,s4
   11c34:	416484bb          	subw	s1,s1,s6
   11c38:	418a07bb          	subw	a5,s4,s8
   11c3c:	8c3e                	mv	s8,a5
   11c3e:	00f4d463          	ble	a5,s1,11c46 <_vfprintf_r+0x11b4>
   11c42:	00048c1b          	sext.w	s8,s1
   11c46:	03805b63          	blez	s8,11c7c <_vfprintf_r+0x11ea>
   11c4a:	67d2                	ld	a5,272(sp)
   11c4c:	016cb023          	sd	s6,0(s9)
   11c50:	018cb423          	sd	s8,8(s9)
   11c54:	97e2                	add	a5,a5,s8
   11c56:	ea3e                	sd	a5,272(sp)
   11c58:	10812783          	lw	a5,264(sp)
   11c5c:	0cc1                	addi	s9,s9,16
   11c5e:	0017871b          	addiw	a4,a5,1
   11c62:	10e12423          	sw	a4,264(sp)
   11c66:	479d                	li	a5,7
   11c68:	00e7da63          	ble	a4,a5,11c7c <_vfprintf_r+0x11ea>
   11c6c:	0210                	addi	a2,sp,256
   11c6e:	85ca                	mv	a1,s2
   11c70:	854e                	mv	a0,s3
   11c72:	1ad040ef          	jal	ra,1661e <__sprint_r>
   11c76:	36051f63          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11c7a:	8cd6                	mv	s9,s5
   11c7c:	87e2                	mv	a5,s8
   11c7e:	000c5363          	bgez	s8,11c84 <_vfprintf_r+0x11f2>
   11c82:	4781                	li	a5,0
   11c84:	44ee                	lw	s1,216(sp)
   11c86:	409a04bb          	subw	s1,s4,s1
   11c8a:	9c9d                	subw	s1,s1,a5
   11c8c:	d0905ee3          	blez	s1,119a8 <_vfprintf_r+0xf16>
   11c90:	6b69                	lui	s6,0x1a
   11c92:	4c41                	li	s8,16
   11c94:	e50b0b13          	addi	s6,s6,-432 # 19e50 <zeroes.4441>
   11c98:	4d1d                	li	s10,7
   11c9a:	10812703          	lw	a4,264(sp)
   11c9e:	016cb023          	sd	s6,0(s9)
   11ca2:	67d2                	ld	a5,272(sp)
   11ca4:	0017069b          	addiw	a3,a4,1
   11ca8:	8736                	mv	a4,a3
   11caa:	010c8613          	addi	a2,s9,16
   11cae:	169c4f63          	blt	s8,s1,11e2c <_vfprintf_r+0x139a>
   11cb2:	009cb423          	sd	s1,8(s9)
   11cb6:	94be                	add	s1,s1,a5
   11cb8:	ea26                	sd	s1,272(sp)
   11cba:	10d12423          	sw	a3,264(sp)
   11cbe:	479d                	li	a5,7
   11cc0:	8cb2                	mv	s9,a2
   11cc2:	ced7d3e3          	ble	a3,a5,119a8 <_vfprintf_r+0xf16>
   11cc6:	0210                	addi	a2,sp,256
   11cc8:	85ca                	mv	a1,s2
   11cca:	854e                	mv	a0,s3
   11ccc:	153040ef          	jal	ra,1661e <__sprint_r>
   11cd0:	32051263          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11cd4:	18010c93          	addi	s9,sp,384
   11cd8:	b9c1                	j	119a8 <_vfprintf_r+0xf16>
   11cda:	0741                	addi	a4,a4,16
   11cdc:	010cb423          	sd	a6,8(s9)
   11ce0:	ea3a                	sd	a4,272(sp)
   11ce2:	10c12423          	sw	a2,264(sp)
   11ce6:	00b8de63          	ble	a1,a7,11d02 <_vfprintf_r+0x1270>
   11cea:	0210                	addi	a2,sp,256
   11cec:	85ca                	mv	a1,s2
   11cee:	854e                	mv	a0,s3
   11cf0:	f8c6                	sd	a7,112(sp)
   11cf2:	f4c2                	sd	a6,104(sp)
   11cf4:	12b040ef          	jal	ra,1661e <__sprint_r>
   11cf8:	2e051e63          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11cfc:	78c6                	ld	a7,112(sp)
   11cfe:	7826                	ld	a6,104(sp)
   11d00:	8556                	mv	a0,s5
   11d02:	3b41                	addiw	s6,s6,-16
   11d04:	8caa                	mv	s9,a0
   11d06:	bdb5                	j	11b82 <_vfprintf_r+0x10f0>
   11d08:	c7d5                	beqz	a5,11db4 <_vfprintf_r+0x1322>
   11d0a:	47a2                	lw	a5,8(sp)
   11d0c:	37fd                	addiw	a5,a5,-1
   11d0e:	e43e                	sd	a5,8(sp)
   11d10:	67c6                	ld	a5,80(sp)
   11d12:	6706                	ld	a4,64(sp)
   11d14:	0cc1                	addi	s9,s9,16
   11d16:	fefcb823          	sd	a5,-16(s9)
   11d1a:	6786                	ld	a5,64(sp)
   11d1c:	fefcbc23          	sd	a5,-8(s9)
   11d20:	67d2                	ld	a5,272(sp)
   11d22:	97ba                	add	a5,a5,a4
   11d24:	ea3e                	sd	a5,272(sp)
   11d26:	10812783          	lw	a5,264(sp)
   11d2a:	0017871b          	addiw	a4,a5,1
   11d2e:	10e12423          	sw	a4,264(sp)
   11d32:	00edda63          	ble	a4,s11,11d46 <_vfprintf_r+0x12b4>
   11d36:	0210                	addi	a2,sp,256
   11d38:	85ca                	mv	a1,s2
   11d3a:	854e                	mv	a0,s3
   11d3c:	0e3040ef          	jal	ra,1661e <__sprint_r>
   11d40:	2a051a63          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11d44:	8cd6                	mv	s9,s5
   11d46:	6702                	ld	a4,0(sp)
   11d48:	57a6                	lw	a5,104(sp)
   11d4a:	00074703          	lbu	a4,0(a4)
   11d4e:	416787bb          	subw	a5,a5,s6
   11d52:	00e7d463          	ble	a4,a5,11d5a <_vfprintf_r+0x12c8>
   11d56:	0007871b          	sext.w	a4,a5
   11d5a:	02e05d63          	blez	a4,11d94 <_vfprintf_r+0x1302>
   11d5e:	67d2                	ld	a5,272(sp)
   11d60:	016cb023          	sd	s6,0(s9)
   11d64:	00ecb423          	sd	a4,8(s9)
   11d68:	97ba                	add	a5,a5,a4
   11d6a:	ea3e                	sd	a5,272(sp)
   11d6c:	10812783          	lw	a5,264(sp)
   11d70:	0cc1                	addi	s9,s9,16
   11d72:	0017869b          	addiw	a3,a5,1
   11d76:	10d12423          	sw	a3,264(sp)
   11d7a:	00dddd63          	ble	a3,s11,11d94 <_vfprintf_r+0x1302>
   11d7e:	0210                	addi	a2,sp,256
   11d80:	85ca                	mv	a1,s2
   11d82:	854e                	mv	a0,s3
   11d84:	f8ba                	sd	a4,112(sp)
   11d86:	099040ef          	jal	ra,1661e <__sprint_r>
   11d8a:	26051563          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11d8e:	7746                	ld	a4,112(sp)
   11d90:	18010c93          	addi	s9,sp,384
   11d94:	86ba                	mv	a3,a4
   11d96:	00075363          	bgez	a4,11d9c <_vfprintf_r+0x130a>
   11d9a:	4681                	li	a3,0
   11d9c:	6782                	ld	a5,0(sp)
   11d9e:	4841                	li	a6,16
   11da0:	0007c783          	lbu	a5,0(a5)
   11da4:	9f95                	subw	a5,a5,a3
   11da6:	04f04463          	bgtz	a5,11dee <_vfprintf_r+0x135c>
   11daa:	6782                	ld	a5,0(sp)
   11dac:	0007c783          	lbu	a5,0(a5)
   11db0:	9b3e                	add	s6,s6,a5
   11db2:	b51d                	j	11bd8 <_vfprintf_r+0x1146>
   11db4:	6782                	ld	a5,0(sp)
   11db6:	3c7d                	addiw	s8,s8,-1
   11db8:	17fd                	addi	a5,a5,-1
   11dba:	e03e                	sd	a5,0(sp)
   11dbc:	bf91                	j	11d10 <_vfprintf_r+0x127e>
   11dbe:	0741                	addi	a4,a4,16
   11dc0:	01acb023          	sd	s10,0(s9)
   11dc4:	010cb423          	sd	a6,8(s9)
   11dc8:	ea3a                	sd	a4,272(sp)
   11dca:	10d12423          	sw	a3,264(sp)
   11dce:	00cdde63          	ble	a2,s11,11dea <_vfprintf_r+0x1358>
   11dd2:	0210                	addi	a2,sp,256
   11dd4:	85ca                	mv	a1,s2
   11dd6:	854e                	mv	a0,s3
   11dd8:	fcc2                	sd	a6,120(sp)
   11dda:	f8be                	sd	a5,112(sp)
   11ddc:	043040ef          	jal	ra,1661e <__sprint_r>
   11de0:	20051a63          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11de4:	7866                	ld	a6,120(sp)
   11de6:	77c6                	ld	a5,112(sp)
   11de8:	030c                	addi	a1,sp,384
   11dea:	37c1                	addiw	a5,a5,-16
   11dec:	8cae                	mv	s9,a1
   11dee:	10812683          	lw	a3,264(sp)
   11df2:	6752                	ld	a4,272(sp)
   11df4:	010c8593          	addi	a1,s9,16
   11df8:	0016861b          	addiw	a2,a3,1
   11dfc:	86b2                	mv	a3,a2
   11dfe:	fcf840e3          	blt	a6,a5,11dbe <_vfprintf_r+0x132c>
   11e02:	00fcb423          	sd	a5,8(s9)
   11e06:	97ba                	add	a5,a5,a4
   11e08:	01acb023          	sd	s10,0(s9)
   11e0c:	ea3e                	sd	a5,272(sp)
   11e0e:	10c12423          	sw	a2,264(sp)
   11e12:	8cae                	mv	s9,a1
   11e14:	f8cddbe3          	ble	a2,s11,11daa <_vfprintf_r+0x1318>
   11e18:	0210                	addi	a2,sp,256
   11e1a:	85ca                	mv	a1,s2
   11e1c:	854e                	mv	a0,s3
   11e1e:	001040ef          	jal	ra,1661e <__sprint_r>
   11e22:	1c051963          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11e26:	18010c93          	addi	s9,sp,384
   11e2a:	b741                	j	11daa <_vfprintf_r+0x1318>
   11e2c:	07c1                	addi	a5,a5,16
   11e2e:	018cb423          	sd	s8,8(s9)
   11e32:	ea3e                	sd	a5,272(sp)
   11e34:	10e12423          	sw	a4,264(sp)
   11e38:	00dd5a63          	ble	a3,s10,11e4c <_vfprintf_r+0x13ba>
   11e3c:	0210                	addi	a2,sp,256
   11e3e:	85ca                	mv	a1,s2
   11e40:	854e                	mv	a0,s3
   11e42:	7dc040ef          	jal	ra,1661e <__sprint_r>
   11e46:	1a051763          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11e4a:	0310                	addi	a2,sp,384
   11e4c:	34c1                	addiw	s1,s1,-16
   11e4e:	8cb2                	mv	s9,a2
   11e50:	b5a9                	j	11c9a <_vfprintf_r+0x1208>
   11e52:	10812783          	lw	a5,264(sp)
   11e56:	4605                	li	a2,1
   11e58:	009cb023          	sd	s1,0(s9)
   11e5c:	0017869b          	addiw	a3,a5,1
   11e60:	0705                	addi	a4,a4,1
   11e62:	87b6                	mv	a5,a3
   11e64:	010c8c13          	addi	s8,s9,16
   11e68:	01464663          	blt	a2,s4,11e74 <_vfprintf_r+0x13e2>
   11e6c:	00147593          	andi	a1,s0,1
   11e70:	12058663          	beqz	a1,11f9c <_vfprintf_r+0x150a>
   11e74:	4605                	li	a2,1
   11e76:	10f12423          	sw	a5,264(sp)
   11e7a:	00ccb423          	sd	a2,8(s9)
   11e7e:	ea3a                	sd	a4,272(sp)
   11e80:	479d                	li	a5,7
   11e82:	00d7da63          	ble	a3,a5,11e96 <_vfprintf_r+0x1404>
   11e86:	0210                	addi	a2,sp,256
   11e88:	85ca                	mv	a1,s2
   11e8a:	854e                	mv	a0,s3
   11e8c:	792040ef          	jal	ra,1661e <__sprint_r>
   11e90:	16051263          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11e94:	8c56                	mv	s8,s5
   11e96:	67a6                	ld	a5,72(sp)
   11e98:	6762                	ld	a4,24(sp)
   11e9a:	0c41                	addi	s8,s8,16
   11e9c:	fefc3823          	sd	a5,-16(s8)
   11ea0:	67e2                	ld	a5,24(sp)
   11ea2:	fefc3c23          	sd	a5,-8(s8)
   11ea6:	67d2                	ld	a5,272(sp)
   11ea8:	97ba                	add	a5,a5,a4
   11eaa:	ea3e                	sd	a5,272(sp)
   11eac:	10812783          	lw	a5,264(sp)
   11eb0:	0017871b          	addiw	a4,a5,1
   11eb4:	10e12423          	sw	a4,264(sp)
   11eb8:	479d                	li	a5,7
   11eba:	00e7da63          	ble	a4,a5,11ece <_vfprintf_r+0x143c>
   11ebe:	0210                	addi	a2,sp,256
   11ec0:	85ca                	mv	a1,s2
   11ec2:	854e                	mv	a0,s3
   11ec4:	75a040ef          	jal	ra,1661e <__sprint_r>
   11ec8:	12051663          	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11ecc:	8c56                	mv	s8,s5
   11ece:	754e                	ld	a0,240(sp)
   11ed0:	75ee                	ld	a1,248(sp)
   11ed2:	4601                	li	a2,0
   11ed4:	4681                	li	a3,0
   11ed6:	fffa0b1b          	addiw	s6,s4,-1
   11eda:	0b9060ef          	jal	ra,18792 <__eqtf2>
   11ede:	c12d                	beqz	a0,11f40 <_vfprintf_r+0x14ae>
   11ee0:	10812703          	lw	a4,264(sp)
   11ee4:	67d2                	ld	a5,272(sp)
   11ee6:	0485                	addi	s1,s1,1
   11ee8:	0017069b          	addiw	a3,a4,1
   11eec:	97da                	add	a5,a5,s6
   11eee:	009c3023          	sd	s1,0(s8)
   11ef2:	016c3423          	sd	s6,8(s8)
   11ef6:	ea3e                	sd	a5,272(sp)
   11ef8:	10d12423          	sw	a3,264(sp)
   11efc:	479d                	li	a5,7
   11efe:	0c41                	addi	s8,s8,16
   11f00:	00d7d963          	ble	a3,a5,11f12 <_vfprintf_r+0x1480>
   11f04:	0210                	addi	a2,sp,256
   11f06:	85ca                	mv	a1,s2
   11f08:	854e                	mv	a0,s3
   11f0a:	714040ef          	jal	ra,1661e <__sprint_r>
   11f0e:	e17d                	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11f10:	8c56                	mv	s8,s5
   11f12:	119c                	addi	a5,sp,224
   11f14:	00fc3023          	sd	a5,0(s8)
   11f18:	67e6                	ld	a5,88(sp)
   11f1a:	6766                	ld	a4,88(sp)
   11f1c:	010c0c93          	addi	s9,s8,16
   11f20:	00fc3423          	sd	a5,8(s8)
   11f24:	67d2                	ld	a5,272(sp)
   11f26:	97ba                	add	a5,a5,a4
   11f28:	ea3e                	sd	a5,272(sp)
   11f2a:	10812783          	lw	a5,264(sp)
   11f2e:	0017871b          	addiw	a4,a5,1
   11f32:	10e12423          	sw	a4,264(sp)
   11f36:	479d                	li	a5,7
   11f38:	a6e7d8e3          	ble	a4,a5,119a8 <_vfprintf_r+0xf16>
   11f3c:	8a8ff06f          	j	10fe4 <_vfprintf_r+0x552>
   11f40:	fd6059e3          	blez	s6,11f12 <_vfprintf_r+0x1480>
   11f44:	64e9                	lui	s1,0x1a
   11f46:	4d41                	li	s10,16
   11f48:	e5048493          	addi	s1,s1,-432 # 19e50 <zeroes.4441>
   11f4c:	4c9d                	li	s9,7
   11f4e:	10812703          	lw	a4,264(sp)
   11f52:	009c3023          	sd	s1,0(s8)
   11f56:	67d2                	ld	a5,272(sp)
   11f58:	0017069b          	addiw	a3,a4,1
   11f5c:	8736                	mv	a4,a3
   11f5e:	010c0613          	addi	a2,s8,16
   11f62:	016d4b63          	blt	s10,s6,11f78 <_vfprintf_r+0x14e6>
   11f66:	97da                	add	a5,a5,s6
   11f68:	016c3423          	sd	s6,8(s8)
   11f6c:	ea3e                	sd	a5,272(sp)
   11f6e:	10d12423          	sw	a3,264(sp)
   11f72:	479d                	li	a5,7
   11f74:	8c32                	mv	s8,a2
   11f76:	b769                	j	11f00 <_vfprintf_r+0x146e>
   11f78:	07c1                	addi	a5,a5,16
   11f7a:	01ac3423          	sd	s10,8(s8)
   11f7e:	ea3e                	sd	a5,272(sp)
   11f80:	10e12423          	sw	a4,264(sp)
   11f84:	00dcd963          	ble	a3,s9,11f96 <_vfprintf_r+0x1504>
   11f88:	0210                	addi	a2,sp,256
   11f8a:	85ca                	mv	a1,s2
   11f8c:	854e                	mv	a0,s3
   11f8e:	690040ef          	jal	ra,1661e <__sprint_r>
   11f92:	e12d                	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   11f94:	8656                	mv	a2,s5
   11f96:	3b41                	addiw	s6,s6,-16
   11f98:	8c32                	mv	s8,a2
   11f9a:	bf55                	j	11f4e <_vfprintf_r+0x14bc>
   11f9c:	00ccb423          	sd	a2,8(s9)
   11fa0:	ea3a                	sd	a4,272(sp)
   11fa2:	10d12423          	sw	a3,264(sp)
   11fa6:	479d                	li	a5,7
   11fa8:	bfa1                	j	11f00 <_vfprintf_r+0x146e>
   11faa:	5782                	lw	a5,32(sp)
   11fac:	5762                	lw	a4,56(sp)
   11fae:	40e7843b          	subw	s0,a5,a4
   11fb2:	9e805ee3          	blez	s0,119ae <_vfprintf_r+0xf1c>
   11fb6:	64e9                	lui	s1,0x1a
   11fb8:	4b41                	li	s6,16
   11fba:	e4048493          	addi	s1,s1,-448 # 19e40 <blanks.4440>
   11fbe:	4c1d                	li	s8,7
   11fc0:	10812703          	lw	a4,264(sp)
   11fc4:	009cb023          	sd	s1,0(s9)
   11fc8:	67d2                	ld	a5,272(sp)
   11fca:	0017069b          	addiw	a3,a4,1
   11fce:	8736                	mv	a4,a3
   11fd0:	028b4a63          	blt	s6,s0,12004 <_vfprintf_r+0x1572>
   11fd4:	008cb423          	sd	s0,8(s9)
   11fd8:	943e                	add	s0,s0,a5
   11fda:	ea22                	sd	s0,272(sp)
   11fdc:	10d12423          	sw	a3,264(sp)
   11fe0:	479d                	li	a5,7
   11fe2:	9cd7d6e3          	ble	a3,a5,119ae <_vfprintf_r+0xf1c>
   11fe6:	0210                	addi	a2,sp,256
   11fe8:	85ca                	mv	a1,s2
   11fea:	854e                	mv	a0,s3
   11fec:	632040ef          	jal	ra,1661e <__sprint_r>
   11ff0:	9a050fe3          	beqz	a0,119ae <_vfprintf_r+0xf1c>
   11ff4:	960b8663          	beqz	s7,11160 <_vfprintf_r+0x6ce>
   11ff8:	85de                	mv	a1,s7
   11ffa:	854e                	mv	a0,s3
   11ffc:	71c000ef          	jal	ra,12718 <_free_r>
   12000:	960ff06f          	j	11160 <_vfprintf_r+0x6ce>
   12004:	07c1                	addi	a5,a5,16
   12006:	016cb423          	sd	s6,8(s9)
   1200a:	ea3e                	sd	a5,272(sp)
   1200c:	10e12423          	sw	a4,264(sp)
   12010:	0cc1                	addi	s9,s9,16
   12012:	00dc5963          	ble	a3,s8,12024 <_vfprintf_r+0x1592>
   12016:	0210                	addi	a2,sp,256
   12018:	85ca                	mv	a1,s2
   1201a:	854e                	mv	a0,s3
   1201c:	602040ef          	jal	ra,1661e <__sprint_r>
   12020:	f971                	bnez	a0,11ff4 <_vfprintf_r+0x1562>
   12022:	8cd6                	mv	s9,s5
   12024:	3441                	addiw	s0,s0,-16
   12026:	bf69                	j	11fc0 <_vfprintf_r+0x152e>
   12028:	85de                	mv	a1,s7
   1202a:	854e                	mv	a0,s3
   1202c:	6ec000ef          	jal	ra,12718 <_free_r>
   12030:	b26d                	j	119da <_vfprintf_r+0xf48>
   12032:	67d2                	ld	a5,272(sp)
   12034:	92078663          	beqz	a5,11160 <_vfprintf_r+0x6ce>
   12038:	0210                	addi	a2,sp,256
   1203a:	85ca                	mv	a1,s2
   1203c:	854e                	mv	a0,s3
   1203e:	5e0040ef          	jal	ra,1661e <__sprint_r>
   12042:	91eff06f          	j	11160 <_vfprintf_r+0x6ce>

0000000000012046 <vfprintf>:
   12046:	86b2                	mv	a3,a2
   12048:	862e                	mv	a2,a1
   1204a:	85aa                	mv	a1,a0
   1204c:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   12050:	a43fe06f          	j	10a92 <_vfprintf_r>

0000000000012054 <__sbprintf>:
   12054:	0105d783          	lhu	a5,16(a1)
   12058:	b3010113          	addi	sp,sp,-1232
   1205c:	4c813023          	sd	s0,1216(sp)
   12060:	9bf5                	andi	a5,a5,-3
   12062:	00f11823          	sh	a5,16(sp)
   12066:	0ac5a783          	lw	a5,172(a1)
   1206a:	842e                	mv	s0,a1
   1206c:	4a913c23          	sd	s1,1208(sp)
   12070:	d73e                	sw	a5,172(sp)
   12072:	0125d783          	lhu	a5,18(a1)
   12076:	4b213823          	sd	s2,1200(sp)
   1207a:	4c113423          	sd	ra,1224(sp)
   1207e:	00f11923          	sh	a5,18(sp)
   12082:	799c                	ld	a5,48(a1)
   12084:	892a                	mv	s2,a0
   12086:	d402                	sw	zero,40(sp)
   12088:	f83e                	sd	a5,48(sp)
   1208a:	61bc                	ld	a5,64(a1)
   1208c:	858a                	mv	a1,sp
   1208e:	e0be                	sd	a5,64(sp)
   12090:	191c                	addi	a5,sp,176
   12092:	e03e                	sd	a5,0(sp)
   12094:	ec3e                	sd	a5,24(sp)
   12096:	40000793          	li	a5,1024
   1209a:	c63e                	sw	a5,12(sp)
   1209c:	d03e                	sw	a5,32(sp)
   1209e:	9f5fe0ef          	jal	ra,10a92 <_vfprintf_r>
   120a2:	84aa                	mv	s1,a0
   120a4:	00054863          	bltz	a0,120b4 <__sbprintf+0x60>
   120a8:	858a                	mv	a1,sp
   120aa:	854a                	mv	a0,s2
   120ac:	384000ef          	jal	ra,12430 <_fflush_r>
   120b0:	c111                	beqz	a0,120b4 <__sbprintf+0x60>
   120b2:	54fd                	li	s1,-1
   120b4:	01015783          	lhu	a5,16(sp)
   120b8:	0407f793          	andi	a5,a5,64
   120bc:	c799                	beqz	a5,120ca <__sbprintf+0x76>
   120be:	01045783          	lhu	a5,16(s0)
   120c2:	0407e793          	ori	a5,a5,64
   120c6:	00f41823          	sh	a5,16(s0)
   120ca:	4c813083          	ld	ra,1224(sp)
   120ce:	4c013403          	ld	s0,1216(sp)
   120d2:	8526                	mv	a0,s1
   120d4:	4b013903          	ld	s2,1200(sp)
   120d8:	4b813483          	ld	s1,1208(sp)
   120dc:	4d010113          	addi	sp,sp,1232
   120e0:	8082                	ret

00000000000120e2 <__swsetup_r>:
   120e2:	1101                	addi	sp,sp,-32
   120e4:	e426                	sd	s1,8(sp)
   120e6:	84aa                	mv	s1,a0
   120e8:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   120ec:	e822                	sd	s0,16(sp)
   120ee:	ec06                	sd	ra,24(sp)
   120f0:	842e                	mv	s0,a1
   120f2:	c509                	beqz	a0,120fc <__swsetup_r+0x1a>
   120f4:	493c                	lw	a5,80(a0)
   120f6:	e399                	bnez	a5,120fc <__swsetup_r+0x1a>
   120f8:	450000ef          	jal	ra,12548 <__sinit>
   120fc:	01041703          	lh	a4,16(s0)
   12100:	03071793          	slli	a5,a4,0x30
   12104:	93c1                	srli	a5,a5,0x30
   12106:	0087f693          	andi	a3,a5,8
   1210a:	eea9                	bnez	a3,12164 <__swsetup_r+0x82>
   1210c:	0107f693          	andi	a3,a5,16
   12110:	ee89                	bnez	a3,1212a <__swsetup_r+0x48>
   12112:	47a5                	li	a5,9
   12114:	c09c                	sw	a5,0(s1)
   12116:	04076713          	ori	a4,a4,64
   1211a:	00e41823          	sh	a4,16(s0)
   1211e:	557d                	li	a0,-1
   12120:	60e2                	ld	ra,24(sp)
   12122:	6442                	ld	s0,16(sp)
   12124:	64a2                	ld	s1,8(sp)
   12126:	6105                	addi	sp,sp,32
   12128:	8082                	ret
   1212a:	8b91                	andi	a5,a5,4
   1212c:	c795                	beqz	a5,12158 <__swsetup_r+0x76>
   1212e:	6c2c                	ld	a1,88(s0)
   12130:	c991                	beqz	a1,12144 <__swsetup_r+0x62>
   12132:	07440793          	addi	a5,s0,116
   12136:	00f58563          	beq	a1,a5,12140 <__swsetup_r+0x5e>
   1213a:	8526                	mv	a0,s1
   1213c:	5dc000ef          	jal	ra,12718 <_free_r>
   12140:	04043c23          	sd	zero,88(s0)
   12144:	01045783          	lhu	a5,16(s0)
   12148:	00042423          	sw	zero,8(s0)
   1214c:	fdb7f793          	andi	a5,a5,-37
   12150:	00f41823          	sh	a5,16(s0)
   12154:	6c1c                	ld	a5,24(s0)
   12156:	e01c                	sd	a5,0(s0)
   12158:	01045783          	lhu	a5,16(s0)
   1215c:	0087e793          	ori	a5,a5,8
   12160:	00f41823          	sh	a5,16(s0)
   12164:	6c1c                	ld	a5,24(s0)
   12166:	ef89                	bnez	a5,12180 <__swsetup_r+0x9e>
   12168:	01045783          	lhu	a5,16(s0)
   1216c:	20000713          	li	a4,512
   12170:	2807f793          	andi	a5,a5,640
   12174:	00e78663          	beq	a5,a4,12180 <__swsetup_r+0x9e>
   12178:	85a2                	mv	a1,s0
   1217a:	8526                	mv	a0,s1
   1217c:	03e020ef          	jal	ra,141ba <__smakebuf_r>
   12180:	01045783          	lhu	a5,16(s0)
   12184:	0017f713          	andi	a4,a5,1
   12188:	c705                	beqz	a4,121b0 <__swsetup_r+0xce>
   1218a:	501c                	lw	a5,32(s0)
   1218c:	00042623          	sw	zero,12(s0)
   12190:	40f007bb          	negw	a5,a5
   12194:	d41c                	sw	a5,40(s0)
   12196:	6c1c                	ld	a5,24(s0)
   12198:	4501                	li	a0,0
   1219a:	f3d9                	bnez	a5,12120 <__swsetup_r+0x3e>
   1219c:	01041783          	lh	a5,16(s0)
   121a0:	0807f713          	andi	a4,a5,128
   121a4:	df35                	beqz	a4,12120 <__swsetup_r+0x3e>
   121a6:	0407e793          	ori	a5,a5,64
   121aa:	00f41823          	sh	a5,16(s0)
   121ae:	bf85                	j	1211e <__swsetup_r+0x3c>
   121b0:	8b89                	andi	a5,a5,2
   121b2:	4701                	li	a4,0
   121b4:	e391                	bnez	a5,121b8 <__swsetup_r+0xd6>
   121b6:	5018                	lw	a4,32(s0)
   121b8:	c458                	sw	a4,12(s0)
   121ba:	bff1                	j	12196 <__swsetup_r+0xb4>

00000000000121bc <__register_exitproc>:
   121bc:	8281b703          	ld	a4,-2008(gp) # 1cb00 <_global_impure_ptr>
   121c0:	832a                	mv	t1,a0
   121c2:	1f873783          	ld	a5,504(a4)
   121c6:	e789                	bnez	a5,121d0 <__register_exitproc+0x14>
   121c8:	20070793          	addi	a5,a4,512
   121cc:	1ef73c23          	sd	a5,504(a4)
   121d0:	4798                	lw	a4,8(a5)
   121d2:	487d                	li	a6,31
   121d4:	557d                	li	a0,-1
   121d6:	04e84463          	blt	a6,a4,1221e <__register_exitproc+0x62>
   121da:	02030a63          	beqz	t1,1220e <__register_exitproc+0x52>
   121de:	00371813          	slli	a6,a4,0x3
   121e2:	983e                	add	a6,a6,a5
   121e4:	10c83823          	sd	a2,272(a6)
   121e8:	3107a883          	lw	a7,784(a5)
   121ec:	4605                	li	a2,1
   121ee:	00e6163b          	sllw	a2,a2,a4
   121f2:	00c8e8b3          	or	a7,a7,a2
   121f6:	3117a823          	sw	a7,784(a5)
   121fa:	20d83823          	sd	a3,528(a6)
   121fe:	4689                	li	a3,2
   12200:	00d31763          	bne	t1,a3,1220e <__register_exitproc+0x52>
   12204:	3147a683          	lw	a3,788(a5)
   12208:	8e55                	or	a2,a2,a3
   1220a:	30c7aa23          	sw	a2,788(a5)
   1220e:	0017069b          	addiw	a3,a4,1
   12212:	0709                	addi	a4,a4,2
   12214:	070e                	slli	a4,a4,0x3
   12216:	c794                	sw	a3,8(a5)
   12218:	97ba                	add	a5,a5,a4
   1221a:	e38c                	sd	a1,0(a5)
   1221c:	4501                	li	a0,0
   1221e:	8082                	ret

0000000000012220 <__call_exitprocs>:
   12220:	715d                	addi	sp,sp,-80
   12222:	f44e                	sd	s3,40(sp)
   12224:	8281b983          	ld	s3,-2008(gp) # 1cb00 <_global_impure_ptr>
   12228:	f052                	sd	s4,32(sp)
   1222a:	ec56                	sd	s5,24(sp)
   1222c:	e85a                	sd	s6,16(sp)
   1222e:	e486                	sd	ra,72(sp)
   12230:	e0a2                	sd	s0,64(sp)
   12232:	fc26                	sd	s1,56(sp)
   12234:	f84a                	sd	s2,48(sp)
   12236:	e45e                	sd	s7,8(sp)
   12238:	8aaa                	mv	s5,a0
   1223a:	8a2e                	mv	s4,a1
   1223c:	4b05                	li	s6,1
   1223e:	1f89b403          	ld	s0,504(s3)
   12242:	c801                	beqz	s0,12252 <__call_exitprocs+0x32>
   12244:	4404                	lw	s1,8(s0)
   12246:	34fd                	addiw	s1,s1,-1
   12248:	00349913          	slli	s2,s1,0x3
   1224c:	9922                	add	s2,s2,s0
   1224e:	0004dd63          	bgez	s1,12268 <__call_exitprocs+0x48>
   12252:	60a6                	ld	ra,72(sp)
   12254:	6406                	ld	s0,64(sp)
   12256:	74e2                	ld	s1,56(sp)
   12258:	7942                	ld	s2,48(sp)
   1225a:	79a2                	ld	s3,40(sp)
   1225c:	7a02                	ld	s4,32(sp)
   1225e:	6ae2                	ld	s5,24(sp)
   12260:	6b42                	ld	s6,16(sp)
   12262:	6ba2                	ld	s7,8(sp)
   12264:	6161                	addi	sp,sp,80
   12266:	8082                	ret
   12268:	000a0963          	beqz	s4,1227a <__call_exitprocs+0x5a>
   1226c:	21093783          	ld	a5,528(s2)
   12270:	01478563          	beq	a5,s4,1227a <__call_exitprocs+0x5a>
   12274:	34fd                	addiw	s1,s1,-1
   12276:	1961                	addi	s2,s2,-8
   12278:	bfd9                	j	1224e <__call_exitprocs+0x2e>
   1227a:	441c                	lw	a5,8(s0)
   1227c:	01093683          	ld	a3,16(s2)
   12280:	37fd                	addiw	a5,a5,-1
   12282:	02979663          	bne	a5,s1,122ae <__call_exitprocs+0x8e>
   12286:	c404                	sw	s1,8(s0)
   12288:	d6f5                	beqz	a3,12274 <__call_exitprocs+0x54>
   1228a:	31042703          	lw	a4,784(s0)
   1228e:	009b163b          	sllw	a2,s6,s1
   12292:	00842b83          	lw	s7,8(s0)
   12296:	8f71                	and	a4,a4,a2
   12298:	2701                	sext.w	a4,a4
   1229a:	ef09                	bnez	a4,122b4 <__call_exitprocs+0x94>
   1229c:	9682                	jalr	a3
   1229e:	4418                	lw	a4,8(s0)
   122a0:	1f89b783          	ld	a5,504(s3)
   122a4:	f9771de3          	bne	a4,s7,1223e <__call_exitprocs+0x1e>
   122a8:	fcf406e3          	beq	s0,a5,12274 <__call_exitprocs+0x54>
   122ac:	bf49                	j	1223e <__call_exitprocs+0x1e>
   122ae:	00093823          	sd	zero,16(s2)
   122b2:	bfd9                	j	12288 <__call_exitprocs+0x68>
   122b4:	31442783          	lw	a5,788(s0)
   122b8:	11093583          	ld	a1,272(s2)
   122bc:	8ff1                	and	a5,a5,a2
   122be:	2781                	sext.w	a5,a5
   122c0:	e781                	bnez	a5,122c8 <__call_exitprocs+0xa8>
   122c2:	8556                	mv	a0,s5
   122c4:	9682                	jalr	a3
   122c6:	bfe1                	j	1229e <__call_exitprocs+0x7e>
   122c8:	852e                	mv	a0,a1
   122ca:	9682                	jalr	a3
   122cc:	bfc9                	j	1229e <__call_exitprocs+0x7e>

00000000000122ce <__sflush_r>:
   122ce:	01059783          	lh	a5,16(a1)
   122d2:	7179                	addi	sp,sp,-48
   122d4:	f022                	sd	s0,32(sp)
   122d6:	03079713          	slli	a4,a5,0x30
   122da:	9341                	srli	a4,a4,0x30
   122dc:	ec26                	sd	s1,24(sp)
   122de:	f406                	sd	ra,40(sp)
   122e0:	e84a                	sd	s2,16(sp)
   122e2:	e44e                	sd	s3,8(sp)
   122e4:	00877693          	andi	a3,a4,8
   122e8:	84aa                	mv	s1,a0
   122ea:	842e                	mv	s0,a1
   122ec:	10069063          	bnez	a3,123ec <__sflush_r+0x11e>
   122f0:	6705                	lui	a4,0x1
   122f2:	80070713          	addi	a4,a4,-2048 # 800 <_start-0xf8b0>
   122f6:	8fd9                	or	a5,a5,a4
   122f8:	4598                	lw	a4,8(a1)
   122fa:	00f59823          	sh	a5,16(a1)
   122fe:	00e04d63          	bgtz	a4,12318 <__sflush_r+0x4a>
   12302:	59b8                	lw	a4,112(a1)
   12304:	00e04a63          	bgtz	a4,12318 <__sflush_r+0x4a>
   12308:	4501                	li	a0,0
   1230a:	70a2                	ld	ra,40(sp)
   1230c:	7402                	ld	s0,32(sp)
   1230e:	64e2                	ld	s1,24(sp)
   12310:	6942                	ld	s2,16(sp)
   12312:	69a2                	ld	s3,8(sp)
   12314:	6145                	addi	sp,sp,48
   12316:	8082                	ret
   12318:	6438                	ld	a4,72(s0)
   1231a:	d77d                	beqz	a4,12308 <__sflush_r+0x3a>
   1231c:	0004a903          	lw	s2,0(s1)
   12320:	03379693          	slli	a3,a5,0x33
   12324:	0004a023          	sw	zero,0(s1)
   12328:	780c                	ld	a1,48(s0)
   1232a:	0806d863          	bgez	a3,123ba <__sflush_r+0xec>
   1232e:	6850                	ld	a2,144(s0)
   12330:	01045783          	lhu	a5,16(s0)
   12334:	8b91                	andi	a5,a5,4
   12336:	c799                	beqz	a5,12344 <__sflush_r+0x76>
   12338:	441c                	lw	a5,8(s0)
   1233a:	8e1d                	sub	a2,a2,a5
   1233c:	6c3c                	ld	a5,88(s0)
   1233e:	c399                	beqz	a5,12344 <__sflush_r+0x76>
   12340:	583c                	lw	a5,112(s0)
   12342:	8e1d                	sub	a2,a2,a5
   12344:	643c                	ld	a5,72(s0)
   12346:	780c                	ld	a1,48(s0)
   12348:	4681                	li	a3,0
   1234a:	8526                	mv	a0,s1
   1234c:	9782                	jalr	a5
   1234e:	57fd                	li	a5,-1
   12350:	01045683          	lhu	a3,16(s0)
   12354:	00f51d63          	bne	a0,a5,1236e <__sflush_r+0xa0>
   12358:	409c                	lw	a5,0(s1)
   1235a:	4775                	li	a4,29
   1235c:	08f76263          	bltu	a4,a5,123e0 <__sflush_r+0x112>
   12360:	20400737          	lui	a4,0x20400
   12364:	0705                	addi	a4,a4,1
   12366:	00f75733          	srl	a4,a4,a5
   1236a:	8b05                	andi	a4,a4,1
   1236c:	cb35                	beqz	a4,123e0 <__sflush_r+0x112>
   1236e:	77fd                	lui	a5,0xfffff
   12370:	7ff78793          	addi	a5,a5,2047 # fffffffffffff7ff <__global_pointer$+0xfffffffffffe2527>
   12374:	6c18                	ld	a4,24(s0)
   12376:	8ff5                	and	a5,a5,a3
   12378:	0107979b          	slliw	a5,a5,0x10
   1237c:	4107d79b          	sraiw	a5,a5,0x10
   12380:	e018                	sd	a4,0(s0)
   12382:	00f41823          	sh	a5,16(s0)
   12386:	00042423          	sw	zero,8(s0)
   1238a:	03379713          	slli	a4,a5,0x33
   1238e:	00075863          	bgez	a4,1239e <__sflush_r+0xd0>
   12392:	57fd                	li	a5,-1
   12394:	00f51463          	bne	a0,a5,1239c <__sflush_r+0xce>
   12398:	409c                	lw	a5,0(s1)
   1239a:	e391                	bnez	a5,1239e <__sflush_r+0xd0>
   1239c:	e848                	sd	a0,144(s0)
   1239e:	6c2c                	ld	a1,88(s0)
   123a0:	0124a023          	sw	s2,0(s1)
   123a4:	d1b5                	beqz	a1,12308 <__sflush_r+0x3a>
   123a6:	07440793          	addi	a5,s0,116
   123aa:	00f58563          	beq	a1,a5,123b4 <__sflush_r+0xe6>
   123ae:	8526                	mv	a0,s1
   123b0:	368000ef          	jal	ra,12718 <_free_r>
   123b4:	04043c23          	sd	zero,88(s0)
   123b8:	bf81                	j	12308 <__sflush_r+0x3a>
   123ba:	4601                	li	a2,0
   123bc:	4685                	li	a3,1
   123be:	8526                	mv	a0,s1
   123c0:	9702                	jalr	a4
   123c2:	57fd                	li	a5,-1
   123c4:	862a                	mv	a2,a0
   123c6:	f6f515e3          	bne	a0,a5,12330 <__sflush_r+0x62>
   123ca:	409c                	lw	a5,0(s1)
   123cc:	d3b5                	beqz	a5,12330 <__sflush_r+0x62>
   123ce:	4775                	li	a4,29
   123d0:	00e78563          	beq	a5,a4,123da <__sflush_r+0x10c>
   123d4:	4759                	li	a4,22
   123d6:	04e79463          	bne	a5,a4,1241e <__sflush_r+0x150>
   123da:	0124a023          	sw	s2,0(s1)
   123de:	b72d                	j	12308 <__sflush_r+0x3a>
   123e0:	0406e793          	ori	a5,a3,64
   123e4:	00f41823          	sh	a5,16(s0)
   123e8:	557d                	li	a0,-1
   123ea:	b705                	j	1230a <__sflush_r+0x3c>
   123ec:	0185b983          	ld	s3,24(a1)
   123f0:	f0098ce3          	beqz	s3,12308 <__sflush_r+0x3a>
   123f4:	0005b903          	ld	s2,0(a1)
   123f8:	8b0d                	andi	a4,a4,3
   123fa:	0135b023          	sd	s3,0(a1)
   123fe:	4139093b          	subw	s2,s2,s3
   12402:	4781                	li	a5,0
   12404:	e311                	bnez	a4,12408 <__sflush_r+0x13a>
   12406:	519c                	lw	a5,32(a1)
   12408:	c45c                	sw	a5,12(s0)
   1240a:	ef205fe3          	blez	s2,12308 <__sflush_r+0x3a>
   1240e:	603c                	ld	a5,64(s0)
   12410:	780c                	ld	a1,48(s0)
   12412:	86ca                	mv	a3,s2
   12414:	864e                	mv	a2,s3
   12416:	8526                	mv	a0,s1
   12418:	9782                	jalr	a5
   1241a:	00a04763          	bgtz	a0,12428 <__sflush_r+0x15a>
   1241e:	01045783          	lhu	a5,16(s0)
   12422:	0407e793          	ori	a5,a5,64
   12426:	bf7d                	j	123e4 <__sflush_r+0x116>
   12428:	99aa                	add	s3,s3,a0
   1242a:	40a9093b          	subw	s2,s2,a0
   1242e:	bff1                	j	1240a <__sflush_r+0x13c>

0000000000012430 <_fflush_r>:
   12430:	1101                	addi	sp,sp,-32
   12432:	e822                	sd	s0,16(sp)
   12434:	ec06                	sd	ra,24(sp)
   12436:	842a                	mv	s0,a0
   12438:	c519                	beqz	a0,12446 <_fflush_r+0x16>
   1243a:	493c                	lw	a5,80(a0)
   1243c:	e789                	bnez	a5,12446 <_fflush_r+0x16>
   1243e:	e42e                	sd	a1,8(sp)
   12440:	108000ef          	jal	ra,12548 <__sinit>
   12444:	65a2                	ld	a1,8(sp)
   12446:	01059783          	lh	a5,16(a1)
   1244a:	c799                	beqz	a5,12458 <_fflush_r+0x28>
   1244c:	8522                	mv	a0,s0
   1244e:	6442                	ld	s0,16(sp)
   12450:	60e2                	ld	ra,24(sp)
   12452:	6105                	addi	sp,sp,32
   12454:	e7bff06f          	j	122ce <__sflush_r>
   12458:	60e2                	ld	ra,24(sp)
   1245a:	6442                	ld	s0,16(sp)
   1245c:	4501                	li	a0,0
   1245e:	6105                	addi	sp,sp,32
   12460:	8082                	ret

0000000000012462 <fflush>:
   12462:	85aa                	mv	a1,a0
   12464:	e909                	bnez	a0,12476 <fflush+0x14>
   12466:	8281b503          	ld	a0,-2008(gp) # 1cb00 <_global_impure_ptr>
   1246a:	000125b7          	lui	a1,0x12
   1246e:	43058593          	addi	a1,a1,1072 # 12430 <_fflush_r>
   12472:	4bc0006f          	j	1292e <_fwalk_reent>
   12476:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   1247a:	fb7ff06f          	j	12430 <_fflush_r>

000000000001247e <__fp_lock>:
   1247e:	4501                	li	a0,0
   12480:	8082                	ret

0000000000012482 <_cleanup_r>:
   12482:	000175b7          	lui	a1,0x17
   12486:	0ce58593          	addi	a1,a1,206 # 170ce <_fclose_r>
   1248a:	4a40006f          	j	1292e <_fwalk_reent>

000000000001248e <std.isra.0>:
   1248e:	1141                	addi	sp,sp,-16
   12490:	e022                	sd	s0,0(sp)
   12492:	e406                	sd	ra,8(sp)
   12494:	842a                	mv	s0,a0
   12496:	00b51823          	sh	a1,16(a0) # 100010 <__global_pointer$+0xe2d38>
   1249a:	00c51923          	sh	a2,18(a0)
   1249e:	00053023          	sd	zero,0(a0)
   124a2:	00053423          	sd	zero,8(a0)
   124a6:	0a052623          	sw	zero,172(a0)
   124aa:	00053c23          	sd	zero,24(a0)
   124ae:	02052023          	sw	zero,32(a0)
   124b2:	02052423          	sw	zero,40(a0)
   124b6:	4621                	li	a2,8
   124b8:	4581                	li	a1,0
   124ba:	0a450513          	addi	a0,a0,164
   124be:	caefe0ef          	jal	ra,1096c <memset>
   124c2:	000157b7          	lui	a5,0x15
   124c6:	ea078793          	addi	a5,a5,-352 # 14ea0 <__sread>
   124ca:	fc1c                	sd	a5,56(s0)
   124cc:	000157b7          	lui	a5,0x15
   124d0:	ed678793          	addi	a5,a5,-298 # 14ed6 <__swrite>
   124d4:	e03c                	sd	a5,64(s0)
   124d6:	000157b7          	lui	a5,0x15
   124da:	f2878793          	addi	a5,a5,-216 # 14f28 <__sseek>
   124de:	e43c                	sd	a5,72(s0)
   124e0:	000157b7          	lui	a5,0x15
   124e4:	f6078793          	addi	a5,a5,-160 # 14f60 <__sclose>
   124e8:	f800                	sd	s0,48(s0)
   124ea:	e83c                	sd	a5,80(s0)
   124ec:	60a2                	ld	ra,8(sp)
   124ee:	6402                	ld	s0,0(sp)
   124f0:	0141                	addi	sp,sp,16
   124f2:	8082                	ret

00000000000124f4 <__fp_unlock>:
   124f4:	4501                	li	a0,0
   124f6:	8082                	ret

00000000000124f8 <__sfmoreglue>:
   124f8:	1101                	addi	sp,sp,-32
   124fa:	e426                	sd	s1,8(sp)
   124fc:	0b000613          	li	a2,176
   12500:	fff5849b          	addiw	s1,a1,-1
   12504:	02c484b3          	mul	s1,s1,a2
   12508:	e04a                	sd	s2,0(sp)
   1250a:	892e                	mv	s2,a1
   1250c:	e822                	sd	s0,16(sp)
   1250e:	ec06                	sd	ra,24(sp)
   12510:	0c848593          	addi	a1,s1,200
   12514:	f79fd0ef          	jal	ra,1048c <_malloc_r>
   12518:	842a                	mv	s0,a0
   1251a:	cd01                	beqz	a0,12532 <__sfmoreglue+0x3a>
   1251c:	00053023          	sd	zero,0(a0)
   12520:	01252423          	sw	s2,8(a0)
   12524:	0561                	addi	a0,a0,24
   12526:	e808                	sd	a0,16(s0)
   12528:	0b048613          	addi	a2,s1,176
   1252c:	4581                	li	a1,0
   1252e:	c3efe0ef          	jal	ra,1096c <memset>
   12532:	8522                	mv	a0,s0
   12534:	60e2                	ld	ra,24(sp)
   12536:	6442                	ld	s0,16(sp)
   12538:	64a2                	ld	s1,8(sp)
   1253a:	6902                	ld	s2,0(sp)
   1253c:	6105                	addi	sp,sp,32
   1253e:	8082                	ret

0000000000012540 <_cleanup>:
   12540:	8281b503          	ld	a0,-2008(gp) # 1cb00 <_global_impure_ptr>
   12544:	f3fff06f          	j	12482 <_cleanup_r>

0000000000012548 <__sinit>:
   12548:	493c                	lw	a5,80(a0)
   1254a:	eba1                	bnez	a5,1259a <__sinit+0x52>
   1254c:	1141                	addi	sp,sp,-16
   1254e:	000127b7          	lui	a5,0x12
   12552:	e406                	sd	ra,8(sp)
   12554:	e022                	sd	s0,0(sp)
   12556:	48278793          	addi	a5,a5,1154 # 12482 <_cleanup_r>
   1255a:	ed3c                	sd	a5,88(a0)
   1255c:	478d                	li	a5,3
   1255e:	52f52423          	sw	a5,1320(a0)
   12562:	53850793          	addi	a5,a0,1336
   12566:	842a                	mv	s0,a0
   12568:	52f53823          	sd	a5,1328(a0)
   1256c:	52053023          	sd	zero,1312(a0)
   12570:	6508                	ld	a0,8(a0)
   12572:	4601                	li	a2,0
   12574:	4591                	li	a1,4
   12576:	f19ff0ef          	jal	ra,1248e <std.isra.0>
   1257a:	6808                	ld	a0,16(s0)
   1257c:	4605                	li	a2,1
   1257e:	45a5                	li	a1,9
   12580:	f0fff0ef          	jal	ra,1248e <std.isra.0>
   12584:	6c08                	ld	a0,24(s0)
   12586:	4609                	li	a2,2
   12588:	45c9                	li	a1,18
   1258a:	f05ff0ef          	jal	ra,1248e <std.isra.0>
   1258e:	4785                	li	a5,1
   12590:	c83c                	sw	a5,80(s0)
   12592:	60a2                	ld	ra,8(sp)
   12594:	6402                	ld	s0,0(sp)
   12596:	0141                	addi	sp,sp,16
   12598:	8082                	ret
   1259a:	8082                	ret

000000000001259c <__sfp>:
   1259c:	1101                	addi	sp,sp,-32
   1259e:	e426                	sd	s1,8(sp)
   125a0:	8281b483          	ld	s1,-2008(gp) # 1cb00 <_global_impure_ptr>
   125a4:	e04a                	sd	s2,0(sp)
   125a6:	ec06                	sd	ra,24(sp)
   125a8:	48bc                	lw	a5,80(s1)
   125aa:	e822                	sd	s0,16(sp)
   125ac:	892a                	mv	s2,a0
   125ae:	e781                	bnez	a5,125b6 <__sfp+0x1a>
   125b0:	8526                	mv	a0,s1
   125b2:	f97ff0ef          	jal	ra,12548 <__sinit>
   125b6:	52048493          	addi	s1,s1,1312
   125ba:	6880                	ld	s0,16(s1)
   125bc:	449c                	lw	a5,8(s1)
   125be:	37fd                	addiw	a5,a5,-1
   125c0:	0007d663          	bgez	a5,125cc <__sfp+0x30>
   125c4:	609c                	ld	a5,0(s1)
   125c6:	cb89                	beqz	a5,125d8 <__sfp+0x3c>
   125c8:	6084                	ld	s1,0(s1)
   125ca:	bfc5                	j	125ba <__sfp+0x1e>
   125cc:	01041703          	lh	a4,16(s0)
   125d0:	c70d                	beqz	a4,125fa <__sfp+0x5e>
   125d2:	0b040413          	addi	s0,s0,176
   125d6:	b7e5                	j	125be <__sfp+0x22>
   125d8:	4591                	li	a1,4
   125da:	854a                	mv	a0,s2
   125dc:	f1dff0ef          	jal	ra,124f8 <__sfmoreglue>
   125e0:	e088                	sd	a0,0(s1)
   125e2:	f17d                	bnez	a0,125c8 <__sfp+0x2c>
   125e4:	47b1                	li	a5,12
   125e6:	00f92023          	sw	a5,0(s2)
   125ea:	4401                	li	s0,0
   125ec:	8522                	mv	a0,s0
   125ee:	60e2                	ld	ra,24(sp)
   125f0:	6442                	ld	s0,16(sp)
   125f2:	64a2                	ld	s1,8(sp)
   125f4:	6902                	ld	s2,0(sp)
   125f6:	6105                	addi	sp,sp,32
   125f8:	8082                	ret
   125fa:	77c1                	lui	a5,0xffff0
   125fc:	2785                	addiw	a5,a5,1
   125fe:	0a042623          	sw	zero,172(s0)
   12602:	00043023          	sd	zero,0(s0)
   12606:	00043423          	sd	zero,8(s0)
   1260a:	c81c                	sw	a5,16(s0)
   1260c:	00043c23          	sd	zero,24(s0)
   12610:	02042023          	sw	zero,32(s0)
   12614:	02042423          	sw	zero,40(s0)
   12618:	4621                	li	a2,8
   1261a:	4581                	li	a1,0
   1261c:	0a440513          	addi	a0,s0,164
   12620:	b4cfe0ef          	jal	ra,1096c <memset>
   12624:	04043c23          	sd	zero,88(s0)
   12628:	06042023          	sw	zero,96(s0)
   1262c:	06043c23          	sd	zero,120(s0)
   12630:	08042023          	sw	zero,128(s0)
   12634:	bf65                	j	125ec <__sfp+0x50>

0000000000012636 <__sfp_lock_acquire>:
   12636:	8082                	ret

0000000000012638 <__sfp_lock_release>:
   12638:	8082                	ret

000000000001263a <__sinit_lock_acquire>:
   1263a:	8082                	ret

000000000001263c <__sinit_lock_release>:
   1263c:	8082                	ret

000000000001263e <__fp_lock_all>:
   1263e:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   12642:	000125b7          	lui	a1,0x12
   12646:	47e58593          	addi	a1,a1,1150 # 1247e <__fp_lock>
   1264a:	2800006f          	j	128ca <_fwalk>

000000000001264e <__fp_unlock_all>:
   1264e:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   12652:	000125b7          	lui	a1,0x12
   12656:	4f458593          	addi	a1,a1,1268 # 124f4 <__fp_unlock>
   1265a:	2700006f          	j	128ca <_fwalk>

000000000001265e <_malloc_trim_r>:
   1265e:	7139                	addi	sp,sp,-64
   12660:	f04a                	sd	s2,32(sp)
   12662:	6971                	lui	s2,0x1c
   12664:	f822                	sd	s0,48(sp)
   12666:	f426                	sd	s1,40(sp)
   12668:	ec4e                	sd	s3,24(sp)
   1266a:	e42e                	sd	a1,8(sp)
   1266c:	fc06                	sd	ra,56(sp)
   1266e:	89aa                	mv	s3,a0
   12670:	12090913          	addi	s2,s2,288 # 1c120 <__malloc_av_>
   12674:	ba2fe0ef          	jal	ra,10a16 <__malloc_lock>
   12678:	01093783          	ld	a5,16(s2)
   1267c:	65a2                	ld	a1,8(sp)
   1267e:	6784                	ld	s1,8(a5)
   12680:	6785                	lui	a5,0x1
   12682:	fdf78413          	addi	s0,a5,-33 # fdf <_start-0xf0d1>
   12686:	98f1                	andi	s1,s1,-4
   12688:	8c0d                	sub	s0,s0,a1
   1268a:	9426                	add	s0,s0,s1
   1268c:	8031                	srli	s0,s0,0xc
   1268e:	147d                	addi	s0,s0,-1
   12690:	0432                	slli	s0,s0,0xc
   12692:	00f45d63          	ble	a5,s0,126ac <_malloc_trim_r+0x4e>
   12696:	854e                	mv	a0,s3
   12698:	b80fe0ef          	jal	ra,10a18 <__malloc_unlock>
   1269c:	4501                	li	a0,0
   1269e:	70e2                	ld	ra,56(sp)
   126a0:	7442                	ld	s0,48(sp)
   126a2:	74a2                	ld	s1,40(sp)
   126a4:	7902                	ld	s2,32(sp)
   126a6:	69e2                	ld	s3,24(sp)
   126a8:	6121                	addi	sp,sp,64
   126aa:	8082                	ret
   126ac:	4581                	li	a1,0
   126ae:	854e                	mv	a0,s3
   126b0:	bb6fe0ef          	jal	ra,10a66 <_sbrk_r>
   126b4:	01093783          	ld	a5,16(s2)
   126b8:	97a6                	add	a5,a5,s1
   126ba:	fcf51ee3          	bne	a0,a5,12696 <_malloc_trim_r+0x38>
   126be:	408005b3          	neg	a1,s0
   126c2:	854e                	mv	a0,s3
   126c4:	ba2fe0ef          	jal	ra,10a66 <_sbrk_r>
   126c8:	57fd                	li	a5,-1
   126ca:	02f51663          	bne	a0,a5,126f6 <_malloc_trim_r+0x98>
   126ce:	4581                	li	a1,0
   126d0:	854e                	mv	a0,s3
   126d2:	b94fe0ef          	jal	ra,10a66 <_sbrk_r>
   126d6:	01093703          	ld	a4,16(s2)
   126da:	46fd                	li	a3,31
   126dc:	40e507b3          	sub	a5,a0,a4
   126e0:	faf6dbe3          	ble	a5,a3,12696 <_malloc_trim_r+0x38>
   126e4:	8381b683          	ld	a3,-1992(gp) # 1cb10 <__malloc_sbrk_base>
   126e8:	0017e793          	ori	a5,a5,1
   126ec:	e71c                	sd	a5,8(a4)
   126ee:	8d15                	sub	a0,a0,a3
   126f0:	8ca1a423          	sw	a0,-1848(gp) # 1cba0 <__malloc_current_mallinfo>
   126f4:	b74d                	j	12696 <_malloc_trim_r+0x38>
   126f6:	01093783          	ld	a5,16(s2)
   126fa:	8c81                	sub	s1,s1,s0
   126fc:	0014e493          	ori	s1,s1,1
   12700:	e784                	sd	s1,8(a5)
   12702:	8c81a783          	lw	a5,-1848(gp) # 1cba0 <__malloc_current_mallinfo>
   12706:	854e                	mv	a0,s3
   12708:	4087843b          	subw	s0,a5,s0
   1270c:	8c81a423          	sw	s0,-1848(gp) # 1cba0 <__malloc_current_mallinfo>
   12710:	b08fe0ef          	jal	ra,10a18 <__malloc_unlock>
   12714:	4505                	li	a0,1
   12716:	b761                	j	1269e <_malloc_trim_r+0x40>

0000000000012718 <_free_r>:
   12718:	1a058863          	beqz	a1,128c8 <_free_r+0x1b0>
   1271c:	1101                	addi	sp,sp,-32
   1271e:	e822                	sd	s0,16(sp)
   12720:	e426                	sd	s1,8(sp)
   12722:	842a                	mv	s0,a0
   12724:	84ae                	mv	s1,a1
   12726:	ec06                	sd	ra,24(sp)
   12728:	aeefe0ef          	jal	ra,10a16 <__malloc_lock>
   1272c:	ff84b503          	ld	a0,-8(s1)
   12730:	6671                	lui	a2,0x1c
   12732:	ff048693          	addi	a3,s1,-16
   12736:	ffe57793          	andi	a5,a0,-2
   1273a:	12060813          	addi	a6,a2,288 # 1c120 <__malloc_av_>
   1273e:	00f685b3          	add	a1,a3,a5
   12742:	6598                	ld	a4,8(a1)
   12744:	01083803          	ld	a6,16(a6)
   12748:	12060613          	addi	a2,a2,288
   1274c:	9b71                	andi	a4,a4,-4
   1274e:	8905                	andi	a0,a0,1
   12750:	04b81063          	bne	a6,a1,12790 <_free_r+0x78>
   12754:	97ba                	add	a5,a5,a4
   12756:	e909                	bnez	a0,12768 <_free_r+0x50>
   12758:	ff04b703          	ld	a4,-16(s1)
   1275c:	8e99                	sub	a3,a3,a4
   1275e:	6a8c                	ld	a1,16(a3)
   12760:	97ba                	add	a5,a5,a4
   12762:	6e98                	ld	a4,24(a3)
   12764:	ed98                	sd	a4,24(a1)
   12766:	eb0c                	sd	a1,16(a4)
   12768:	0017e713          	ori	a4,a5,1
   1276c:	e698                	sd	a4,8(a3)
   1276e:	8401b703          	ld	a4,-1984(gp) # 1cb18 <__malloc_trim_threshold>
   12772:	ea14                	sd	a3,16(a2)
   12774:	00e7e763          	bltu	a5,a4,12782 <_free_r+0x6a>
   12778:	8581b583          	ld	a1,-1960(gp) # 1cb30 <__malloc_top_pad>
   1277c:	8522                	mv	a0,s0
   1277e:	ee1ff0ef          	jal	ra,1265e <_malloc_trim_r>
   12782:	8522                	mv	a0,s0
   12784:	6442                	ld	s0,16(sp)
   12786:	60e2                	ld	ra,24(sp)
   12788:	64a2                	ld	s1,8(sp)
   1278a:	6105                	addi	sp,sp,32
   1278c:	a8cfe06f          	j	10a18 <__malloc_unlock>
   12790:	e598                	sd	a4,8(a1)
   12792:	4801                	li	a6,0
   12794:	e10d                	bnez	a0,127b6 <_free_r+0x9e>
   12796:	ff04b503          	ld	a0,-16(s1)
   1279a:	68f1                	lui	a7,0x1c
   1279c:	13088893          	addi	a7,a7,304 # 1c130 <__malloc_av_+0x10>
   127a0:	8e89                	sub	a3,a3,a0
   127a2:	97aa                	add	a5,a5,a0
   127a4:	6a88                	ld	a0,16(a3)
   127a6:	07150e63          	beq	a0,a7,12822 <_free_r+0x10a>
   127aa:	0186b883          	ld	a7,24(a3)
   127ae:	01153c23          	sd	a7,24(a0)
   127b2:	00a8b823          	sd	a0,16(a7)
   127b6:	00e58533          	add	a0,a1,a4
   127ba:	6508                	ld	a0,8(a0)
   127bc:	8905                	andi	a0,a0,1
   127be:	ed19                	bnez	a0,127dc <_free_r+0xc4>
   127c0:	97ba                	add	a5,a5,a4
   127c2:	6998                	ld	a4,16(a1)
   127c4:	06081163          	bnez	a6,12826 <_free_r+0x10e>
   127c8:	6571                	lui	a0,0x1c
   127ca:	13050513          	addi	a0,a0,304 # 1c130 <__malloc_av_+0x10>
   127ce:	04a71c63          	bne	a4,a0,12826 <_free_r+0x10e>
   127d2:	f614                	sd	a3,40(a2)
   127d4:	f214                	sd	a3,32(a2)
   127d6:	ee98                	sd	a4,24(a3)
   127d8:	ea98                	sd	a4,16(a3)
   127da:	4805                	li	a6,1
   127dc:	0017e713          	ori	a4,a5,1
   127e0:	e698                	sd	a4,8(a3)
   127e2:	00f68733          	add	a4,a3,a5
   127e6:	e31c                	sd	a5,0(a4)
   127e8:	f8081de3          	bnez	a6,12782 <_free_r+0x6a>
   127ec:	1ff00713          	li	a4,511
   127f0:	02f76f63          	bltu	a4,a5,1282e <_free_r+0x116>
   127f4:	838d                	srli	a5,a5,0x3
   127f6:	2781                	sext.w	a5,a5
   127f8:	4027d59b          	sraiw	a1,a5,0x2
   127fc:	4705                	li	a4,1
   127fe:	00b71733          	sll	a4,a4,a1
   12802:	2785                	addiw	a5,a5,1
   12804:	660c                	ld	a1,8(a2)
   12806:	0017979b          	slliw	a5,a5,0x1
   1280a:	078e                	slli	a5,a5,0x3
   1280c:	97b2                	add	a5,a5,a2
   1280e:	8f4d                	or	a4,a4,a1
   12810:	e618                	sd	a4,8(a2)
   12812:	6398                	ld	a4,0(a5)
   12814:	ff078613          	addi	a2,a5,-16
   12818:	ee90                	sd	a2,24(a3)
   1281a:	ea98                	sd	a4,16(a3)
   1281c:	e394                	sd	a3,0(a5)
   1281e:	ef14                	sd	a3,24(a4)
   12820:	b78d                	j	12782 <_free_r+0x6a>
   12822:	4805                	li	a6,1
   12824:	bf49                	j	127b6 <_free_r+0x9e>
   12826:	6d8c                	ld	a1,24(a1)
   12828:	ef0c                	sd	a1,24(a4)
   1282a:	e998                	sd	a4,16(a1)
   1282c:	bf45                	j	127dc <_free_r+0xc4>
   1282e:	0097d593          	srli	a1,a5,0x9
   12832:	4711                	li	a4,4
   12834:	02b76e63          	bltu	a4,a1,12870 <_free_r+0x158>
   12838:	0067d713          	srli	a4,a5,0x6
   1283c:	0387071b          	addiw	a4,a4,56
   12840:	0017059b          	addiw	a1,a4,1
   12844:	0015959b          	slliw	a1,a1,0x1
   12848:	058e                	slli	a1,a1,0x3
   1284a:	95b2                	add	a1,a1,a2
   1284c:	ff058513          	addi	a0,a1,-16
   12850:	618c                	ld	a1,0(a1)
   12852:	06b51563          	bne	a0,a1,128bc <_free_r+0x1a4>
   12856:	4785                	li	a5,1
   12858:	4027571b          	sraiw	a4,a4,0x2
   1285c:	00e79733          	sll	a4,a5,a4
   12860:	661c                	ld	a5,8(a2)
   12862:	8f5d                	or	a4,a4,a5
   12864:	e618                	sd	a4,8(a2)
   12866:	ee88                	sd	a0,24(a3)
   12868:	ea8c                	sd	a1,16(a3)
   1286a:	e914                	sd	a3,16(a0)
   1286c:	ed94                	sd	a3,24(a1)
   1286e:	bf11                	j	12782 <_free_r+0x6a>
   12870:	4751                	li	a4,20
   12872:	00b76563          	bltu	a4,a1,1287c <_free_r+0x164>
   12876:	05b5871b          	addiw	a4,a1,91
   1287a:	b7d9                	j	12840 <_free_r+0x128>
   1287c:	05400713          	li	a4,84
   12880:	00b76763          	bltu	a4,a1,1288e <_free_r+0x176>
   12884:	00c7d713          	srli	a4,a5,0xc
   12888:	06e7071b          	addiw	a4,a4,110
   1288c:	bf55                	j	12840 <_free_r+0x128>
   1288e:	15400713          	li	a4,340
   12892:	00b76763          	bltu	a4,a1,128a0 <_free_r+0x188>
   12896:	00f7d713          	srli	a4,a5,0xf
   1289a:	0777071b          	addiw	a4,a4,119
   1289e:	b74d                	j	12840 <_free_r+0x128>
   128a0:	55400513          	li	a0,1364
   128a4:	07e00713          	li	a4,126
   128a8:	f8b56ce3          	bltu	a0,a1,12840 <_free_r+0x128>
   128ac:	0127d713          	srli	a4,a5,0x12
   128b0:	07c7071b          	addiw	a4,a4,124
   128b4:	b771                	j	12840 <_free_r+0x128>
   128b6:	698c                	ld	a1,16(a1)
   128b8:	00b50663          	beq	a0,a1,128c4 <_free_r+0x1ac>
   128bc:	6598                	ld	a4,8(a1)
   128be:	9b71                	andi	a4,a4,-4
   128c0:	fee7ebe3          	bltu	a5,a4,128b6 <_free_r+0x19e>
   128c4:	6d88                	ld	a0,24(a1)
   128c6:	b745                	j	12866 <_free_r+0x14e>
   128c8:	8082                	ret

00000000000128ca <_fwalk>:
   128ca:	715d                	addi	sp,sp,-80
   128cc:	e0a2                	sd	s0,64(sp)
   128ce:	fc26                	sd	s1,56(sp)
   128d0:	f052                	sd	s4,32(sp)
   128d2:	ec56                	sd	s5,24(sp)
   128d4:	e486                	sd	ra,72(sp)
   128d6:	f84a                	sd	s2,48(sp)
   128d8:	f44e                	sd	s3,40(sp)
   128da:	52050493          	addi	s1,a0,1312
   128de:	4401                	li	s0,0
   128e0:	4a05                	li	s4,1
   128e2:	5afd                	li	s5,-1
   128e4:	e899                	bnez	s1,128fa <_fwalk+0x30>
   128e6:	8522                	mv	a0,s0
   128e8:	60a6                	ld	ra,72(sp)
   128ea:	6406                	ld	s0,64(sp)
   128ec:	74e2                	ld	s1,56(sp)
   128ee:	7942                	ld	s2,48(sp)
   128f0:	79a2                	ld	s3,40(sp)
   128f2:	7a02                	ld	s4,32(sp)
   128f4:	6ae2                	ld	s5,24(sp)
   128f6:	6161                	addi	sp,sp,80
   128f8:	8082                	ret
   128fa:	0104b903          	ld	s2,16(s1)
   128fe:	0084a983          	lw	s3,8(s1)
   12902:	39fd                	addiw	s3,s3,-1
   12904:	0009d463          	bgez	s3,1290c <_fwalk+0x42>
   12908:	6084                	ld	s1,0(s1)
   1290a:	bfe9                	j	128e4 <_fwalk+0x1a>
   1290c:	01095783          	lhu	a5,16(s2)
   12910:	00fa7c63          	bleu	a5,s4,12928 <_fwalk+0x5e>
   12914:	01291783          	lh	a5,18(s2)
   12918:	01578863          	beq	a5,s5,12928 <_fwalk+0x5e>
   1291c:	854a                	mv	a0,s2
   1291e:	e42e                	sd	a1,8(sp)
   12920:	9582                	jalr	a1
   12922:	65a2                	ld	a1,8(sp)
   12924:	8c49                	or	s0,s0,a0
   12926:	2401                	sext.w	s0,s0
   12928:	0b090913          	addi	s2,s2,176
   1292c:	bfd9                	j	12902 <_fwalk+0x38>

000000000001292e <_fwalk_reent>:
   1292e:	715d                	addi	sp,sp,-80
   12930:	e0a2                	sd	s0,64(sp)
   12932:	fc26                	sd	s1,56(sp)
   12934:	f052                	sd	s4,32(sp)
   12936:	ec56                	sd	s5,24(sp)
   12938:	e85a                	sd	s6,16(sp)
   1293a:	e45e                	sd	s7,8(sp)
   1293c:	e486                	sd	ra,72(sp)
   1293e:	f84a                	sd	s2,48(sp)
   12940:	f44e                	sd	s3,40(sp)
   12942:	8a2a                	mv	s4,a0
   12944:	8aae                	mv	s5,a1
   12946:	52050493          	addi	s1,a0,1312
   1294a:	4401                	li	s0,0
   1294c:	4b05                	li	s6,1
   1294e:	5bfd                	li	s7,-1
   12950:	ec89                	bnez	s1,1296a <_fwalk_reent+0x3c>
   12952:	8522                	mv	a0,s0
   12954:	60a6                	ld	ra,72(sp)
   12956:	6406                	ld	s0,64(sp)
   12958:	74e2                	ld	s1,56(sp)
   1295a:	7942                	ld	s2,48(sp)
   1295c:	79a2                	ld	s3,40(sp)
   1295e:	7a02                	ld	s4,32(sp)
   12960:	6ae2                	ld	s5,24(sp)
   12962:	6b42                	ld	s6,16(sp)
   12964:	6ba2                	ld	s7,8(sp)
   12966:	6161                	addi	sp,sp,80
   12968:	8082                	ret
   1296a:	0104b903          	ld	s2,16(s1)
   1296e:	0084a983          	lw	s3,8(s1)
   12972:	39fd                	addiw	s3,s3,-1
   12974:	0009d463          	bgez	s3,1297c <_fwalk_reent+0x4e>
   12978:	6084                	ld	s1,0(s1)
   1297a:	bfd9                	j	12950 <_fwalk_reent+0x22>
   1297c:	01095783          	lhu	a5,16(s2)
   12980:	00fb7b63          	bleu	a5,s6,12996 <_fwalk_reent+0x68>
   12984:	01291783          	lh	a5,18(s2)
   12988:	01778763          	beq	a5,s7,12996 <_fwalk_reent+0x68>
   1298c:	85ca                	mv	a1,s2
   1298e:	8552                	mv	a0,s4
   12990:	9a82                	jalr	s5
   12992:	8c49                	or	s0,s0,a0
   12994:	2401                	sext.w	s0,s0
   12996:	0b090913          	addi	s2,s2,176
   1299a:	bfe1                	j	12972 <_fwalk_reent+0x44>

000000000001299c <eclear>:
   1299c:	01450793          	addi	a5,a0,20
   129a0:	0509                	addi	a0,a0,2
   129a2:	fe051f23          	sh	zero,-2(a0)
   129a6:	fef51de3          	bne	a0,a5,129a0 <eclear+0x4>
   129aa:	8082                	ret

00000000000129ac <emov>:
   129ac:	01450793          	addi	a5,a0,20
   129b0:	0509                	addi	a0,a0,2
   129b2:	ffe55703          	lhu	a4,-2(a0)
   129b6:	0589                	addi	a1,a1,2
   129b8:	fee59f23          	sh	a4,-2(a1)
   129bc:	fea79ae3          	bne	a5,a0,129b0 <emov+0x4>
   129c0:	8082                	ret

00000000000129c2 <ecleaz>:
   129c2:	01a50793          	addi	a5,a0,26
   129c6:	0509                	addi	a0,a0,2
   129c8:	fe051f23          	sh	zero,-2(a0)
   129cc:	fef51de3          	bne	a0,a5,129c6 <ecleaz+0x4>
   129d0:	8082                	ret

00000000000129d2 <emovz>:
   129d2:	01850713          	addi	a4,a0,24
   129d6:	87ae                	mv	a5,a1
   129d8:	0509                	addi	a0,a0,2
   129da:	ffe55683          	lhu	a3,-2(a0)
   129de:	0789                	addi	a5,a5,2
   129e0:	fed79f23          	sh	a3,-2(a5)
   129e4:	fea71ae3          	bne	a4,a0,129d8 <emovz+0x6>
   129e8:	00059c23          	sh	zero,24(a1)
   129ec:	8082                	ret

00000000000129ee <ecmpm>:
   129ee:	00450793          	addi	a5,a0,4
   129f2:	0591                	addi	a1,a1,4
   129f4:	0569                	addi	a0,a0,26
   129f6:	0789                	addi	a5,a5,2
   129f8:	0589                	addi	a1,a1,2
   129fa:	ffe7d683          	lhu	a3,-2(a5)
   129fe:	ffe5d703          	lhu	a4,-2(a1)
   12a02:	00e69663          	bne	a3,a4,12a0e <ecmpm+0x20>
   12a06:	fef518e3          	bne	a0,a5,129f6 <ecmpm+0x8>
   12a0a:	4501                	li	a0,0
   12a0c:	8082                	ret
   12a0e:	4505                	li	a0,1
   12a10:	00d76363          	bltu	a4,a3,12a16 <ecmpm+0x28>
   12a14:	557d                	li	a0,-1
   12a16:	8082                	ret

0000000000012a18 <eshdn1>:
   12a18:	00450693          	addi	a3,a0,4
   12a1c:	4781                	li	a5,0
   12a1e:	0569                	addi	a0,a0,26
   12a20:	7661                	lui	a2,0xffff8
   12a22:	0006d703          	lhu	a4,0(a3)
   12a26:	00177593          	andi	a1,a4,1
   12a2a:	c199                	beqz	a1,12a30 <eshdn1+0x18>
   12a2c:	0017e793          	ori	a5,a5,1
   12a30:	0027f593          	andi	a1,a5,2
   12a34:	8305                	srli	a4,a4,0x1
   12a36:	e999                	bnez	a1,12a4c <eshdn1+0x34>
   12a38:	0017979b          	slliw	a5,a5,0x1
   12a3c:	00e69023          	sh	a4,0(a3)
   12a40:	17c2                	slli	a5,a5,0x30
   12a42:	0689                	addi	a3,a3,2
   12a44:	93c1                	srli	a5,a5,0x30
   12a46:	fcd51ee3          	bne	a0,a3,12a22 <eshdn1+0xa>
   12a4a:	8082                	ret
   12a4c:	8f51                	or	a4,a4,a2
   12a4e:	b7ed                	j	12a38 <eshdn1+0x20>

0000000000012a50 <eshup1>:
   12a50:	01650693          	addi	a3,a0,22
   12a54:	4701                	li	a4,0
   12a56:	0026d783          	lhu	a5,2(a3)
   12a5a:	0107961b          	slliw	a2,a5,0x10
   12a5e:	4106561b          	sraiw	a2,a2,0x10
   12a62:	00065463          	bgez	a2,12a6a <eshup1+0x1a>
   12a66:	00176713          	ori	a4,a4,1
   12a6a:	0017979b          	slliw	a5,a5,0x1
   12a6e:	17c2                	slli	a5,a5,0x30
   12a70:	00277613          	andi	a2,a4,2
   12a74:	93c1                	srli	a5,a5,0x30
   12a76:	ea19                	bnez	a2,12a8c <eshup1+0x3c>
   12a78:	0017171b          	slliw	a4,a4,0x1
   12a7c:	00f69123          	sh	a5,2(a3)
   12a80:	1742                	slli	a4,a4,0x30
   12a82:	16f9                	addi	a3,a3,-2
   12a84:	9341                	srli	a4,a4,0x30
   12a86:	fcd518e3          	bne	a0,a3,12a56 <eshup1+0x6>
   12a8a:	8082                	ret
   12a8c:	0017e793          	ori	a5,a5,1
   12a90:	b7e5                	j	12a78 <eshup1+0x28>

0000000000012a92 <eshdn8>:
   12a92:	00450793          	addi	a5,a0,4
   12a96:	4701                	li	a4,0
   12a98:	0569                	addi	a0,a0,26
   12a9a:	0007d683          	lhu	a3,0(a5)
   12a9e:	0789                	addi	a5,a5,2
   12aa0:	0086d61b          	srliw	a2,a3,0x8
   12aa4:	8f51                	or	a4,a4,a2
   12aa6:	fee79f23          	sh	a4,-2(a5)
   12aaa:	0086971b          	slliw	a4,a3,0x8
   12aae:	1742                	slli	a4,a4,0x30
   12ab0:	9341                	srli	a4,a4,0x30
   12ab2:	fef514e3          	bne	a0,a5,12a9a <eshdn8+0x8>
   12ab6:	8082                	ret

0000000000012ab8 <eshup8>:
   12ab8:	01650793          	addi	a5,a0,22
   12abc:	4701                	li	a4,0
   12abe:	0027d683          	lhu	a3,2(a5)
   12ac2:	17f9                	addi	a5,a5,-2
   12ac4:	00869613          	slli	a2,a3,0x8
   12ac8:	8f51                	or	a4,a4,a2
   12aca:	00e79223          	sh	a4,4(a5)
   12ace:	0086d713          	srli	a4,a3,0x8
   12ad2:	fef516e3          	bne	a0,a5,12abe <eshup8+0x6>
   12ad6:	8082                	ret

0000000000012ad8 <eshup6>:
   12ad8:	00450793          	addi	a5,a0,4
   12adc:	01850713          	addi	a4,a0,24
   12ae0:	0789                	addi	a5,a5,2
   12ae2:	0007d683          	lhu	a3,0(a5)
   12ae6:	fed79f23          	sh	a3,-2(a5)
   12aea:	fef71be3          	bne	a4,a5,12ae0 <eshup6+0x8>
   12aee:	00051c23          	sh	zero,24(a0)
   12af2:	8082                	ret

0000000000012af4 <eshdn6>:
   12af4:	01850793          	addi	a5,a0,24
   12af8:	01a50713          	addi	a4,a0,26
   12afc:	00450693          	addi	a3,a0,4
   12b00:	17f9                	addi	a5,a5,-2
   12b02:	0007d603          	lhu	a2,0(a5)
   12b06:	1779                	addi	a4,a4,-2
   12b08:	00c71023          	sh	a2,0(a4) # 20400000 <__global_pointer$+0x203e2d28>
   12b0c:	fef69ae3          	bne	a3,a5,12b00 <eshdn6+0xc>
   12b10:	00051223          	sh	zero,4(a0)
   12b14:	8082                	ret

0000000000012b16 <eaddm>:
   12b16:	05e1                	addi	a1,a1,24
   12b18:	01650713          	addi	a4,a0,22
   12b1c:	4681                	li	a3,0
   12b1e:	0005d783          	lhu	a5,0(a1)
   12b22:	1779                	addi	a4,a4,-2
   12b24:	15f9                	addi	a1,a1,-2
   12b26:	97b6                	add	a5,a5,a3
   12b28:	00475683          	lhu	a3,4(a4)
   12b2c:	97b6                	add	a5,a5,a3
   12b2e:	00f59123          	sh	a5,2(a1)
   12b32:	83c1                	srli	a5,a5,0x10
   12b34:	0017f693          	andi	a3,a5,1
   12b38:	fee513e3          	bne	a0,a4,12b1e <eaddm+0x8>
   12b3c:	8082                	ret

0000000000012b3e <esubm>:
   12b3e:	05e1                	addi	a1,a1,24
   12b40:	01650713          	addi	a4,a0,22
   12b44:	4681                	li	a3,0
   12b46:	0005d783          	lhu	a5,0(a1)
   12b4a:	00275603          	lhu	a2,2(a4)
   12b4e:	1779                	addi	a4,a4,-2
   12b50:	15f9                	addi	a1,a1,-2
   12b52:	8f91                	sub	a5,a5,a2
   12b54:	8f95                	sub	a5,a5,a3
   12b56:	00f59123          	sh	a5,2(a1)
   12b5a:	83c1                	srli	a5,a5,0x10
   12b5c:	0017f693          	andi	a3,a5,1
   12b60:	fee513e3          	bne	a0,a4,12b46 <esubm+0x8>
   12b64:	8082                	ret

0000000000012b66 <m16m>:
   12b66:	1101                	addi	sp,sp,-32
   12b68:	6341                	lui	t1,0x10
   12b6a:	01858893          	addi	a7,a1,24
   12b6e:	00011b23          	sh	zero,22(sp)
   12b72:	00011c23          	sh	zero,24(sp)
   12b76:	0591                	addi	a1,a1,4
   12b78:	0834                	addi	a3,sp,24
   12b7a:	137d                	addi	t1,t1,-1
   12b7c:	0008d703          	lhu	a4,0(a7)
   12b80:	16f9                	addi	a3,a3,-2
   12b82:	18f9                	addi	a7,a7,-2
   12b84:	e705                	bnez	a4,12bac <m16m+0x46>
   12b86:	fe069f23          	sh	zero,-2(a3)
   12b8a:	ff1599e3          	bne	a1,a7,12b7c <m16m+0x16>
   12b8e:	4791                	li	a5,4
   12b90:	4769                	li	a4,26
   12b92:	00f105b3          	add	a1,sp,a5
   12b96:	0005d583          	lhu	a1,0(a1)
   12b9a:	00f606b3          	add	a3,a2,a5
   12b9e:	0789                	addi	a5,a5,2
   12ba0:	00b69023          	sh	a1,0(a3)
   12ba4:	fee797e3          	bne	a5,a4,12b92 <m16m+0x2c>
   12ba8:	6105                	addi	sp,sp,32
   12baa:	8082                	ret
   12bac:	02a70733          	mul	a4,a4,a0
   12bb0:	0026d803          	lhu	a6,2(a3)
   12bb4:	006777b3          	and	a5,a4,t1
   12bb8:	97c2                	add	a5,a5,a6
   12bba:	0107d813          	srli	a6,a5,0x10
   12bbe:	00f69123          	sh	a5,2(a3)
   12bc2:	01075793          	srli	a5,a4,0x10
   12bc6:	0006d703          	lhu	a4,0(a3)
   12bca:	97ba                	add	a5,a5,a4
   12bcc:	97c2                	add	a5,a5,a6
   12bce:	00f69023          	sh	a5,0(a3)
   12bd2:	83c1                	srli	a5,a5,0x10
   12bd4:	fef69f23          	sh	a5,-2(a3)
   12bd8:	bf4d                	j	12b8a <m16m+0x24>

0000000000012bda <eisnan>:
   12bda:	01255783          	lhu	a5,18(a0)
   12bde:	fff7c793          	not	a5,a5
   12be2:	03179713          	slli	a4,a5,0x31
   12be6:	eb09                	bnez	a4,12bf8 <eisnan+0x1e>
   12be8:	01250793          	addi	a5,a0,18
   12bec:	0509                	addi	a0,a0,2
   12bee:	ffe55703          	lhu	a4,-2(a0)
   12bf2:	e709                	bnez	a4,12bfc <eisnan+0x22>
   12bf4:	fea79ce3          	bne	a5,a0,12bec <eisnan+0x12>
   12bf8:	4501                	li	a0,0
   12bfa:	8082                	ret
   12bfc:	4505                	li	a0,1
   12bfe:	8082                	ret

0000000000012c00 <eisneg>:
   12c00:	1141                	addi	sp,sp,-16
   12c02:	e022                	sd	s0,0(sp)
   12c04:	e406                	sd	ra,8(sp)
   12c06:	842a                	mv	s0,a0
   12c08:	fd3ff0ef          	jal	ra,12bda <eisnan>
   12c0c:	e901                	bnez	a0,12c1c <eisneg+0x1c>
   12c0e:	01344503          	lbu	a0,19(s0)
   12c12:	811d                	srli	a0,a0,0x7
   12c14:	60a2                	ld	ra,8(sp)
   12c16:	6402                	ld	s0,0(sp)
   12c18:	0141                	addi	sp,sp,16
   12c1a:	8082                	ret
   12c1c:	4501                	li	a0,0
   12c1e:	bfdd                	j	12c14 <eisneg+0x14>

0000000000012c20 <emovi>:
   12c20:	01251783          	lh	a5,18(a0)
   12c24:	1101                	addi	sp,sp,-32
   12c26:	ec06                	sd	ra,24(sp)
   12c28:	e822                	sd	s0,16(sp)
   12c2a:	e426                	sd	s1,8(sp)
   12c2c:	e04a                	sd	s2,0(sp)
   12c2e:	0407d963          	bgez	a5,12c80 <emovi+0x60>
   12c32:	57fd                	li	a5,-1
   12c34:	00f59023          	sh	a5,0(a1)
   12c38:	01255703          	lhu	a4,18(a0)
   12c3c:	67a1                	lui	a5,0x8
   12c3e:	17fd                	addi	a5,a5,-1
   12c40:	8f7d                	and	a4,a4,a5
   12c42:	00e59123          	sh	a4,2(a1)
   12c46:	01050913          	addi	s2,a0,16
   12c4a:	04f71863          	bne	a4,a5,12c9a <emovi+0x7a>
   12c4e:	842e                	mv	s0,a1
   12c50:	84aa                	mv	s1,a0
   12c52:	f89ff0ef          	jal	ra,12bda <eisnan>
   12c56:	c905                	beqz	a0,12c86 <emovi+0x66>
   12c58:	00640793          	addi	a5,s0,6
   12c5c:	00041223          	sh	zero,4(s0)
   12c60:	ffc48513          	addi	a0,s1,-4
   12c64:	1979                	addi	s2,s2,-2
   12c66:	00295703          	lhu	a4,2(s2)
   12c6a:	0789                	addi	a5,a5,2
   12c6c:	fee79f23          	sh	a4,-2(a5) # 7ffe <_start-0x80b2>
   12c70:	fea91ae3          	bne	s2,a0,12c64 <emovi+0x44>
   12c74:	60e2                	ld	ra,24(sp)
   12c76:	6442                	ld	s0,16(sp)
   12c78:	64a2                	ld	s1,8(sp)
   12c7a:	6902                	ld	s2,0(sp)
   12c7c:	6105                	addi	sp,sp,32
   12c7e:	8082                	ret
   12c80:	00059023          	sh	zero,0(a1)
   12c84:	bf55                	j	12c38 <emovi+0x18>
   12c86:	00440793          	addi	a5,s0,4
   12c8a:	01a40593          	addi	a1,s0,26
   12c8e:	0789                	addi	a5,a5,2
   12c90:	fe079f23          	sh	zero,-2(a5)
   12c94:	feb79de3          	bne	a5,a1,12c8e <emovi+0x6e>
   12c98:	bff1                	j	12c74 <emovi+0x54>
   12c9a:	00658793          	addi	a5,a1,6
   12c9e:	00059223          	sh	zero,4(a1)
   12ca2:	1579                	addi	a0,a0,-2
   12ca4:	1979                	addi	s2,s2,-2
   12ca6:	00295703          	lhu	a4,2(s2)
   12caa:	0789                	addi	a5,a5,2
   12cac:	fee79f23          	sh	a4,-2(a5)
   12cb0:	fea91ae3          	bne	s2,a0,12ca4 <emovi+0x84>
   12cb4:	00059c23          	sh	zero,24(a1)
   12cb8:	bf75                	j	12c74 <emovi+0x54>

0000000000012cba <ecmp>:
   12cba:	711d                	addi	sp,sp,-96
   12cbc:	e4a6                	sd	s1,72(sp)
   12cbe:	e0ca                	sd	s2,64(sp)
   12cc0:	ec86                	sd	ra,88(sp)
   12cc2:	e8a2                	sd	s0,80(sp)
   12cc4:	892a                	mv	s2,a0
   12cc6:	84ae                	mv	s1,a1
   12cc8:	f13ff0ef          	jal	ra,12bda <eisnan>
   12ccc:	e559                	bnez	a0,12d5a <ecmp+0xa0>
   12cce:	8526                	mv	a0,s1
   12cd0:	f0bff0ef          	jal	ra,12bda <eisnan>
   12cd4:	842a                	mv	s0,a0
   12cd6:	e151                	bnez	a0,12d5a <ecmp+0xa0>
   12cd8:	858a                	mv	a1,sp
   12cda:	854a                	mv	a0,s2
   12cdc:	f45ff0ef          	jal	ra,12c20 <emovi>
   12ce0:	100c                	addi	a1,sp,32
   12ce2:	8526                	mv	a0,s1
   12ce4:	f3dff0ef          	jal	ra,12c20 <emovi>
   12ce8:	00015703          	lhu	a4,0(sp)
   12cec:	02015783          	lhu	a5,32(sp)
   12cf0:	02e78c63          	beq	a5,a4,12d28 <ecmp+0x6e>
   12cf4:	4789                	li	a5,2
   12cf6:	46e1                	li	a3,24
   12cf8:	00f10633          	add	a2,sp,a5
   12cfc:	00065603          	lhu	a2,0(a2) # ffffffffffff8000 <__global_pointer$+0xfffffffffffdad28>
   12d00:	e205                	bnez	a2,12d20 <ecmp+0x66>
   12d02:	1010                	addi	a2,sp,32
   12d04:	963e                	add	a2,a2,a5
   12d06:	00065603          	lhu	a2,0(a2)
   12d0a:	ea19                	bnez	a2,12d20 <ecmp+0x66>
   12d0c:	0789                	addi	a5,a5,2
   12d0e:	fed795e3          	bne	a5,a3,12cf8 <ecmp+0x3e>
   12d12:	8522                	mv	a0,s0
   12d14:	60e6                	ld	ra,88(sp)
   12d16:	6446                	ld	s0,80(sp)
   12d18:	64a6                	ld	s1,72(sp)
   12d1a:	6906                	ld	s2,64(sp)
   12d1c:	6125                	addi	sp,sp,96
   12d1e:	8082                	ret
   12d20:	4405                	li	s0,1
   12d22:	db65                	beqz	a4,12d12 <ecmp+0x58>
   12d24:	547d                	li	s0,-1
   12d26:	b7f5                	j	12d12 <ecmp+0x58>
   12d28:	4605                	li	a2,1
   12d2a:	c311                	beqz	a4,12d2e <ecmp+0x74>
   12d2c:	567d                	li	a2,-1
   12d2e:	4781                	li	a5,0
   12d30:	45e1                	li	a1,24
   12d32:	00f10733          	add	a4,sp,a5
   12d36:	00075683          	lhu	a3,0(a4)
   12d3a:	1018                	addi	a4,sp,32
   12d3c:	973e                	add	a4,a4,a5
   12d3e:	00075703          	lhu	a4,0(a4)
   12d42:	00e69663          	bne	a3,a4,12d4e <ecmp+0x94>
   12d46:	0789                	addi	a5,a5,2
   12d48:	feb795e3          	bne	a5,a1,12d32 <ecmp+0x78>
   12d4c:	b7d9                	j	12d12 <ecmp+0x58>
   12d4e:	8432                	mv	s0,a2
   12d50:	fcd761e3          	bltu	a4,a3,12d12 <ecmp+0x58>
   12d54:	40c0043b          	negw	s0,a2
   12d58:	bf6d                	j	12d12 <ecmp+0x58>
   12d5a:	5479                	li	s0,-2
   12d5c:	bf5d                	j	12d12 <ecmp+0x58>

0000000000012d5e <eisinf>:
   12d5e:	01255783          	lhu	a5,18(a0)
   12d62:	fff7c793          	not	a5,a5
   12d66:	03179713          	slli	a4,a5,0x31
   12d6a:	eb11                	bnez	a4,12d7e <eisinf+0x20>
   12d6c:	1141                	addi	sp,sp,-16
   12d6e:	e406                	sd	ra,8(sp)
   12d70:	e6bff0ef          	jal	ra,12bda <eisnan>
   12d74:	60a2                	ld	ra,8(sp)
   12d76:	00153513          	seqz	a0,a0
   12d7a:	0141                	addi	sp,sp,16
   12d7c:	8082                	ret
   12d7e:	4501                	li	a0,0
   12d80:	8082                	ret

0000000000012d82 <einfin.isra.2>:
   12d82:	01250793          	addi	a5,a0,18
   12d86:	0509                	addi	a0,a0,2
   12d88:	fe051f23          	sh	zero,-2(a0)
   12d8c:	fef51de3          	bne	a0,a5,12d86 <einfin.isra.2+0x4>
   12d90:	00055783          	lhu	a5,0(a0)
   12d94:	6721                	lui	a4,0x8
   12d96:	177d                	addi	a4,a4,-1
   12d98:	8fd9                	or	a5,a5,a4
   12d9a:	00f51023          	sh	a5,0(a0)
   12d9e:	8082                	ret

0000000000012da0 <eshift.part.3>:
   12da0:	7139                	addi	sp,sp,-64
   12da2:	f822                	sd	s0,48(sp)
   12da4:	ec4e                	sd	s3,24(sp)
   12da6:	fc06                	sd	ra,56(sp)
   12da8:	f426                	sd	s1,40(sp)
   12daa:	f04a                	sd	s2,32(sp)
   12dac:	e852                	sd	s4,16(sp)
   12dae:	e456                	sd	s5,8(sp)
   12db0:	89aa                	mv	s3,a0
   12db2:	842e                	mv	s0,a1
   12db4:	0a05d963          	bgez	a1,12e66 <eshift.part.3+0xc6>
   12db8:	40b00a3b          	negw	s4,a1
   12dbc:	8952                	mv	s2,s4
   12dbe:	4481                	li	s1,0
   12dc0:	4abd                	li	s5,15
   12dc2:	034ac763          	blt	s5,s4,12df0 <eshift.part.3+0x50>
   12dc6:	0049591b          	srliw	s2,s2,0x4
   12dca:	55c1                	li	a1,-16
   12dcc:	02b905bb          	mulw	a1,s2,a1
   12dd0:	4a1d                	li	s4,7
   12dd2:	4085893b          	subw	s2,a1,s0
   12dd6:	844a                	mv	s0,s2
   12dd8:	032a4463          	blt	s4,s2,12e00 <eshift.part.3+0x60>
   12ddc:	0034559b          	srliw	a1,s0,0x3
   12de0:	57e1                	li	a5,-8
   12de2:	02f585bb          	mulw	a1,a1,a5
   12de6:	9c2d                	addw	s0,s0,a1
   12de8:	e405                	bnez	s0,12e10 <eshift.part.3+0x70>
   12dea:	00903533          	snez	a0,s1
   12dee:	a09d                	j	12e54 <eshift.part.3+0xb4>
   12df0:	0189d783          	lhu	a5,24(s3)
   12df4:	854e                	mv	a0,s3
   12df6:	3a41                	addiw	s4,s4,-16
   12df8:	8cdd                	or	s1,s1,a5
   12dfa:	cfbff0ef          	jal	ra,12af4 <eshdn6>
   12dfe:	b7d1                	j	12dc2 <eshift.part.3+0x22>
   12e00:	0189c783          	lbu	a5,24(s3)
   12e04:	854e                	mv	a0,s3
   12e06:	3961                	addiw	s2,s2,-8
   12e08:	8cdd                	or	s1,s1,a5
   12e0a:	c89ff0ef          	jal	ra,12a92 <eshdn8>
   12e0e:	b7e9                	j	12dd8 <eshift.part.3+0x38>
   12e10:	0189d783          	lhu	a5,24(s3)
   12e14:	854e                	mv	a0,s3
   12e16:	347d                	addiw	s0,s0,-1
   12e18:	8b85                	andi	a5,a5,1
   12e1a:	8cdd                	or	s1,s1,a5
   12e1c:	bfdff0ef          	jal	ra,12a18 <eshdn1>
   12e20:	b7e1                	j	12de8 <eshift.part.3+0x48>
   12e22:	854e                	mv	a0,s3
   12e24:	cb5ff0ef          	jal	ra,12ad8 <eshup6>
   12e28:	34c1                	addiw	s1,s1,-16
   12e2a:	fe994ce3          	blt	s2,s1,12e22 <eshift.part.3+0x82>
   12e2e:	0044559b          	srliw	a1,s0,0x4
   12e32:	57c1                	li	a5,-16
   12e34:	02f585bb          	mulw	a1,a1,a5
   12e38:	491d                	li	s2,7
   12e3a:	00b404bb          	addw	s1,s0,a1
   12e3e:	8426                	mv	s0,s1
   12e40:	02994663          	blt	s2,s1,12e6c <eshift.part.3+0xcc>
   12e44:	0034559b          	srliw	a1,s0,0x3
   12e48:	57e1                	li	a5,-8
   12e4a:	02f585bb          	mulw	a1,a1,a5
   12e4e:	9c2d                	addw	s0,s0,a1
   12e50:	e01d                	bnez	s0,12e76 <eshift.part.3+0xd6>
   12e52:	4501                	li	a0,0
   12e54:	70e2                	ld	ra,56(sp)
   12e56:	7442                	ld	s0,48(sp)
   12e58:	74a2                	ld	s1,40(sp)
   12e5a:	7902                	ld	s2,32(sp)
   12e5c:	69e2                	ld	s3,24(sp)
   12e5e:	6a42                	ld	s4,16(sp)
   12e60:	6aa2                	ld	s5,8(sp)
   12e62:	6121                	addi	sp,sp,64
   12e64:	8082                	ret
   12e66:	84ae                	mv	s1,a1
   12e68:	493d                	li	s2,15
   12e6a:	b7c1                	j	12e2a <eshift.part.3+0x8a>
   12e6c:	854e                	mv	a0,s3
   12e6e:	c4bff0ef          	jal	ra,12ab8 <eshup8>
   12e72:	34e1                	addiw	s1,s1,-8
   12e74:	b7f1                	j	12e40 <eshift.part.3+0xa0>
   12e76:	854e                	mv	a0,s3
   12e78:	bd9ff0ef          	jal	ra,12a50 <eshup1>
   12e7c:	347d                	addiw	s0,s0,-1
   12e7e:	bfc9                	j	12e50 <eshift.part.3+0xb0>

0000000000012e80 <enormlz>:
   12e80:	00455783          	lhu	a5,4(a0)
   12e84:	1101                	addi	sp,sp,-32
   12e86:	e426                	sd	s1,8(sp)
   12e88:	ec06                	sd	ra,24(sp)
   12e8a:	e822                	sd	s0,16(sp)
   12e8c:	e04a                	sd	s2,0(sp)
   12e8e:	84aa                	mv	s1,a0
   12e90:	efb9                	bnez	a5,12eee <enormlz+0x6e>
   12e92:	00651783          	lh	a5,6(a0)
   12e96:	4401                	li	s0,0
   12e98:	0a000913          	li	s2,160
   12e9c:	0007df63          	bgez	a5,12eba <enormlz+0x3a>
   12ea0:	8522                	mv	a0,s0
   12ea2:	60e2                	ld	ra,24(sp)
   12ea4:	6442                	ld	s0,16(sp)
   12ea6:	64a2                	ld	s1,8(sp)
   12ea8:	6902                	ld	s2,0(sp)
   12eaa:	6105                	addi	sp,sp,32
   12eac:	8082                	ret
   12eae:	8526                	mv	a0,s1
   12eb0:	2441                	addiw	s0,s0,16
   12eb2:	c27ff0ef          	jal	ra,12ad8 <eshup6>
   12eb6:	ff2405e3          	beq	s0,s2,12ea0 <enormlz+0x20>
   12eba:	0064d783          	lhu	a5,6(s1)
   12ebe:	dbe5                	beqz	a5,12eae <enormlz+0x2e>
   12ec0:	0064d783          	lhu	a5,6(s1)
   12ec4:	f007f793          	andi	a5,a5,-256
   12ec8:	cf91                	beqz	a5,12ee4 <enormlz+0x64>
   12eca:	0a000913          	li	s2,160
   12ece:	00649783          	lh	a5,6(s1)
   12ed2:	fc07c7e3          	bltz	a5,12ea0 <enormlz+0x20>
   12ed6:	8526                	mv	a0,s1
   12ed8:	2405                	addiw	s0,s0,1
   12eda:	b77ff0ef          	jal	ra,12a50 <eshup1>
   12ede:	fe8958e3          	ble	s0,s2,12ece <enormlz+0x4e>
   12ee2:	bf7d                	j	12ea0 <enormlz+0x20>
   12ee4:	8526                	mv	a0,s1
   12ee6:	bd3ff0ef          	jal	ra,12ab8 <eshup8>
   12eea:	2421                	addiw	s0,s0,8
   12eec:	bfd1                	j	12ec0 <enormlz+0x40>
   12eee:	f007f793          	andi	a5,a5,-256
   12ef2:	4401                	li	s0,0
   12ef4:	c781                	beqz	a5,12efc <enormlz+0x7c>
   12ef6:	b9dff0ef          	jal	ra,12a92 <eshdn8>
   12efa:	5461                	li	s0,-8
   12efc:	f7000913          	li	s2,-144
   12f00:	a039                	j	12f0e <enormlz+0x8e>
   12f02:	8526                	mv	a0,s1
   12f04:	347d                	addiw	s0,s0,-1
   12f06:	b13ff0ef          	jal	ra,12a18 <eshdn1>
   12f0a:	f9244be3          	blt	s0,s2,12ea0 <enormlz+0x20>
   12f0e:	0044d783          	lhu	a5,4(s1)
   12f12:	fbe5                	bnez	a5,12f02 <enormlz+0x82>
   12f14:	b771                	j	12ea0 <enormlz+0x20>

0000000000012f16 <enan.constprop.12>:
   12f16:	01050793          	addi	a5,a0,16
   12f1a:	0509                	addi	a0,a0,2
   12f1c:	fe051f23          	sh	zero,-2(a0)
   12f20:	fef51de3          	bne	a0,a5,12f1a <enan.constprop.12+0x4>
   12f24:	77f1                	lui	a5,0xffffc
   12f26:	00f51023          	sh	a5,0(a0)
   12f2a:	77e1                	lui	a5,0xffff8
   12f2c:	fff7c793          	not	a5,a5
   12f30:	00f51123          	sh	a5,2(a0)
   12f34:	8082                	ret

0000000000012f36 <emovo.isra.6>:
   12f36:	872a                	mv	a4,a0
   12f38:	00075683          	lhu	a3,0(a4) # 8000 <_start-0x80b0>
   12f3c:	852e                	mv	a0,a1
   12f3e:	00275783          	lhu	a5,2(a4)
   12f42:	c299                	beqz	a3,12f48 <emovo.isra.6+0x12>
   12f44:	76e1                	lui	a3,0xffff8
   12f46:	8fd5                	or	a5,a5,a3
   12f48:	00f51923          	sh	a5,18(a0)
   12f4c:	00275603          	lhu	a2,2(a4)
   12f50:	66a1                	lui	a3,0x8
   12f52:	16fd                	addi	a3,a3,-1
   12f54:	00670793          	addi	a5,a4,6
   12f58:	00d61b63          	bne	a2,a3,12f6e <emovo.isra.6+0x38>
   12f5c:	0769                	addi	a4,a4,26
   12f5e:	0007d683          	lhu	a3,0(a5) # ffffffffffff8000 <__global_pointer$+0xfffffffffffdad28>
   12f62:	e28d                	bnez	a3,12f84 <emovo.isra.6+0x4e>
   12f64:	0789                	addi	a5,a5,2
   12f66:	fee79ce3          	bne	a5,a4,12f5e <emovo.isra.6+0x28>
   12f6a:	e19ff06f          	j	12d82 <einfin.isra.2>
   12f6e:	0541                	addi	a0,a0,16
   12f70:	0761                	addi	a4,a4,24
   12f72:	0789                	addi	a5,a5,2
   12f74:	ffe7d683          	lhu	a3,-2(a5)
   12f78:	1579                	addi	a0,a0,-2
   12f7a:	00d51123          	sh	a3,2(a0)
   12f7e:	fee79ae3          	bne	a5,a4,12f72 <emovo.isra.6+0x3c>
   12f82:	8082                	ret
   12f84:	f93ff06f          	j	12f16 <enan.constprop.12>

0000000000012f88 <e113toe.isra.8>:
   12f88:	7139                	addi	sp,sp,-64
   12f8a:	f426                	sd	s1,40(sp)
   12f8c:	84aa                	mv	s1,a0
   12f8e:	850a                	mv	a0,sp
   12f90:	f822                	sd	s0,48(sp)
   12f92:	fc06                	sd	ra,56(sp)
   12f94:	842e                	mv	s0,a1
   12f96:	a2dff0ef          	jal	ra,129c2 <ecleaz>
   12f9a:	00e4d703          	lhu	a4,14(s1)
   12f9e:	0107179b          	slliw	a5,a4,0x10
   12fa2:	4107d79b          	sraiw	a5,a5,0x10
   12fa6:	0207c763          	bltz	a5,12fd4 <e113toe.isra.8+0x4c>
   12faa:	00011023          	sh	zero,0(sp)
   12fae:	66a1                	lui	a3,0x8
   12fb0:	16fd                	addi	a3,a3,-1
   12fb2:	8f75                	and	a4,a4,a3
   12fb4:	00e48793          	addi	a5,s1,14
   12fb8:	04d71a63          	bne	a4,a3,1300c <e113toe.isra.8+0x84>
   12fbc:	8726                	mv	a4,s1
   12fbe:	00075683          	lhu	a3,0(a4)
   12fc2:	ce89                	beqz	a3,12fdc <e113toe.isra.8+0x54>
   12fc4:	8522                	mv	a0,s0
   12fc6:	f51ff0ef          	jal	ra,12f16 <enan.constprop.12>
   12fca:	70e2                	ld	ra,56(sp)
   12fcc:	7442                	ld	s0,48(sp)
   12fce:	74a2                	ld	s1,40(sp)
   12fd0:	6121                	addi	sp,sp,64
   12fd2:	8082                	ret
   12fd4:	57fd                	li	a5,-1
   12fd6:	00f11023          	sh	a5,0(sp)
   12fda:	bfd1                	j	12fae <e113toe.isra.8+0x26>
   12fdc:	0709                	addi	a4,a4,2
   12fde:	fee790e3          	bne	a5,a4,12fbe <e113toe.isra.8+0x36>
   12fe2:	8522                	mv	a0,s0
   12fe4:	9b9ff0ef          	jal	ra,1299c <eclear>
   12fe8:	8522                	mv	a0,s0
   12fea:	d99ff0ef          	jal	ra,12d82 <einfin.isra.2>
   12fee:	00e49783          	lh	a5,14(s1)
   12ff2:	fc07dce3          	bgez	a5,12fca <e113toe.isra.8+0x42>
   12ff6:	8522                	mv	a0,s0
   12ff8:	be3ff0ef          	jal	ra,12bda <eisnan>
   12ffc:	f579                	bnez	a0,12fca <e113toe.isra.8+0x42>
   12ffe:	01245783          	lhu	a5,18(s0)
   13002:	7761                	lui	a4,0xffff8
   13004:	8fb9                	xor	a5,a5,a4
   13006:	00f41923          	sh	a5,18(s0)
   1300a:	b7c1                	j	12fca <e113toe.isra.8+0x42>
   1300c:	00e11123          	sh	a4,2(sp)
   13010:	868a                	mv	a3,sp
   13012:	17f9                	addi	a5,a5,-2
   13014:	0007d603          	lhu	a2,0(a5)
   13018:	0689                	addi	a3,a3,2
   1301a:	00c69223          	sh	a2,4(a3) # 8004 <_start-0x80ac>
   1301e:	fef49ae3          	bne	s1,a5,13012 <e113toe.isra.8+0x8a>
   13022:	eb01                	bnez	a4,13032 <e113toe.isra.8+0xaa>
   13024:	00011223          	sh	zero,4(sp)
   13028:	85a2                	mv	a1,s0
   1302a:	850a                	mv	a0,sp
   1302c:	f0bff0ef          	jal	ra,12f36 <emovo.isra.6>
   13030:	bf69                	j	12fca <e113toe.isra.8+0x42>
   13032:	4785                	li	a5,1
   13034:	55fd                	li	a1,-1
   13036:	850a                	mv	a0,sp
   13038:	00f11223          	sh	a5,4(sp)
   1303c:	d65ff0ef          	jal	ra,12da0 <eshift.part.3>
   13040:	b7e5                	j	13028 <e113toe.isra.8+0xa0>

0000000000013042 <emdnorm>:
   13042:	7139                	addi	sp,sp,-64
   13044:	f822                	sd	s0,48(sp)
   13046:	f426                	sd	s1,40(sp)
   13048:	f04a                	sd	s2,32(sp)
   1304a:	ec4e                	sd	s3,24(sp)
   1304c:	e852                	sd	s4,16(sp)
   1304e:	e456                	sd	s5,8(sp)
   13050:	8936                	mv	s2,a3
   13052:	843e                	mv	s0,a5
   13054:	fc06                	sd	ra,56(sp)
   13056:	84aa                	mv	s1,a0
   13058:	89ae                	mv	s3,a1
   1305a:	8a32                	mv	s4,a2
   1305c:	8aba                	mv	s5,a4
   1305e:	e23ff0ef          	jal	ra,12e80 <enormlz>
   13062:	09000793          	li	a5,144
   13066:	40a90933          	sub	s2,s2,a0
   1306a:	02a7d763          	ble	a0,a5,13098 <emdnorm+0x56>
   1306e:	67a1                	lui	a5,0x8
   13070:	17f9                	addi	a5,a5,-2
   13072:	2327c663          	blt	a5,s2,1329e <emdnorm+0x25c>
   13076:	00248793          	addi	a5,s1,2
   1307a:	04e9                	addi	s1,s1,26
   1307c:	0789                	addi	a5,a5,2
   1307e:	fe079f23          	sh	zero,-2(a5) # 7ffe <_start-0x80b2>
   13082:	fe979de3          	bne	a5,s1,1307c <emdnorm+0x3a>
   13086:	70e2                	ld	ra,56(sp)
   13088:	7442                	ld	s0,48(sp)
   1308a:	74a2                	ld	s1,40(sp)
   1308c:	7902                	ld	s2,32(sp)
   1308e:	69e2                	ld	s3,24(sp)
   13090:	6a42                	ld	s4,16(sp)
   13092:	6aa2                	ld	s5,8(sp)
   13094:	6121                	addi	sp,sp,64
   13096:	8082                	ret
   13098:	00095d63          	bgez	s2,130b2 <emdnorm+0x70>
   1309c:	f7000793          	li	a5,-144
   130a0:	0ef94a63          	blt	s2,a5,13194 <emdnorm+0x152>
   130a4:	0009059b          	sext.w	a1,s2
   130a8:	8526                	mv	a0,s1
   130aa:	cf7ff0ef          	jal	ra,12da0 <eshift.part.3>
   130ae:	0e051c63          	bnez	a0,131a6 <emdnorm+0x164>
   130b2:	1a0a8a63          	beqz	s5,13266 <emdnorm+0x224>
   130b6:	4058                	lw	a4,4(s0)
   130b8:	401c                	lw	a5,0(s0)
   130ba:	04f70863          	beq	a4,a5,1310a <emdnorm+0xc8>
   130be:	01a40513          	addi	a0,s0,26
   130c2:	901ff0ef          	jal	ra,129c2 <ecleaz>
   130c6:	405c                	lw	a5,4(s0)
   130c8:	03800713          	li	a4,56
   130cc:	10e78d63          	beq	a5,a4,131e6 <emdnorm+0x1a4>
   130d0:	0cf74d63          	blt	a4,a5,131aa <emdnorm+0x168>
   130d4:	4761                	li	a4,24
   130d6:	12e78e63          	beq	a5,a4,13212 <emdnorm+0x1d0>
   130da:	03500713          	li	a4,53
   130de:	12e78163          	beq	a5,a4,13200 <emdnorm+0x1be>
   130e2:	80010737          	lui	a4,0x80010
   130e6:	377d                	addiw	a4,a4,-1
   130e8:	c858                	sw	a4,20(s0)
   130ea:	4705                	li	a4,1
   130ec:	00e41c23          	sh	a4,24(s0)
   130f0:	472d                	li	a4,11
   130f2:	1702                	slli	a4,a4,0x20
   130f4:	0731                	addi	a4,a4,12
   130f6:	e418                	sd	a4,8(s0)
   130f8:	4458                	lw	a4,12(s0)
   130fa:	01845683          	lhu	a3,24(s0)
   130fe:	0721                	addi	a4,a4,8
   13100:	0706                	slli	a4,a4,0x1
   13102:	9722                	add	a4,a4,s0
   13104:	00d71523          	sh	a3,10(a4) # ffffffff8001000a <__global_pointer$+0xffffffff7fff2d32>
   13108:	c01c                	sw	a5,0(s0)
   1310a:	01204f63          	bgtz	s2,13128 <emdnorm+0xe6>
   1310e:	4058                	lw	a4,4(s0)
   13110:	09000793          	li	a5,144
   13114:	00f70a63          	beq	a4,a5,13128 <emdnorm+0xe6>
   13118:	0184d783          	lhu	a5,24(s1)
   1311c:	8526                	mv	a0,s1
   1311e:	8b85                	andi	a5,a5,1
   13120:	00f9e9b3          	or	s3,s3,a5
   13124:	8f5ff0ef          	jal	ra,12a18 <eshdn1>
   13128:	4414                	lw	a3,8(s0)
   1312a:	01445583          	lhu	a1,20(s0)
   1312e:	4048                	lw	a0,4(s0)
   13130:	00169793          	slli	a5,a3,0x1
   13134:	00f48633          	add	a2,s1,a5
   13138:	00065703          	lhu	a4,0(a2)
   1313c:	8f6d                	and	a4,a4,a1
   1313e:	08f00593          	li	a1,143
   13142:	00a5c863          	blt	a1,a0,13152 <emdnorm+0x110>
   13146:	0789                	addi	a5,a5,2
   13148:	2685                	addiw	a3,a3,1
   1314a:	97a6                	add	a5,a5,s1
   1314c:	45b1                	li	a1,12
   1314e:	0cd5df63          	ble	a3,a1,1322c <emdnorm+0x1ea>
   13152:	01445783          	lhu	a5,20(s0)
   13156:	00065683          	lhu	a3,0(a2)
   1315a:	fff7c793          	not	a5,a5
   1315e:	8ff5                	and	a5,a5,a3
   13160:	00f61023          	sh	a5,0(a2)
   13164:	01645783          	lhu	a5,22(s0)
   13168:	00e7f6b3          	and	a3,a5,a4
   1316c:	cee1                	beqz	a3,13244 <emdnorm+0x202>
   1316e:	00e79d63          	bne	a5,a4,13188 <emdnorm+0x146>
   13172:	0c099763          	bnez	s3,13240 <emdnorm+0x1fe>
   13176:	445c                	lw	a5,12(s0)
   13178:	01845703          	lhu	a4,24(s0)
   1317c:	0786                	slli	a5,a5,0x1
   1317e:	97a6                	add	a5,a5,s1
   13180:	0007d783          	lhu	a5,0(a5)
   13184:	8ff9                	and	a5,a5,a4
   13186:	cfdd                	beqz	a5,13244 <emdnorm+0x202>
   13188:	85a6                	mv	a1,s1
   1318a:	01a40513          	addi	a0,s0,26
   1318e:	989ff0ef          	jal	ra,12b16 <eaddm>
   13192:	a84d                	j	13244 <emdnorm+0x202>
   13194:	00248793          	addi	a5,s1,2
   13198:	04e9                	addi	s1,s1,26
   1319a:	0789                	addi	a5,a5,2
   1319c:	fe079f23          	sh	zero,-2(a5)
   131a0:	fe979de3          	bne	a5,s1,1319a <emdnorm+0x158>
   131a4:	b5cd                	j	13086 <emdnorm+0x44>
   131a6:	4985                	li	s3,1
   131a8:	b729                	j	130b2 <emdnorm+0x70>
   131aa:	04000713          	li	a4,64
   131ae:	02e78163          	beq	a5,a4,131d0 <emdnorm+0x18e>
   131b2:	07100713          	li	a4,113
   131b6:	f2e796e3          	bne	a5,a4,130e2 <emdnorm+0xa0>
   131ba:	40008737          	lui	a4,0x40008
   131be:	377d                	addiw	a4,a4,-1
   131c0:	c858                	sw	a4,20(s0)
   131c2:	7761                	lui	a4,0xffff8
   131c4:	00e41c23          	sh	a4,24(s0)
   131c8:	4729                	li	a4,10
   131ca:	1702                	slli	a4,a4,0x20
   131cc:	0729                	addi	a4,a4,10
   131ce:	b725                	j	130f6 <emdnorm+0xb4>
   131d0:	80010737          	lui	a4,0x80010
   131d4:	377d                	addiw	a4,a4,-1
   131d6:	c858                	sw	a4,20(s0)
   131d8:	4705                	li	a4,1
   131da:	00e41c23          	sh	a4,24(s0)
   131de:	470d                	li	a4,3
   131e0:	1706                	slli	a4,a4,0x21
   131e2:	071d                	addi	a4,a4,7
   131e4:	bf09                	j	130f6 <emdnorm+0xb4>
   131e6:	00800737          	lui	a4,0x800
   131ea:	0ff7071b          	addiw	a4,a4,255
   131ee:	c858                	sw	a4,20(s0)
   131f0:	10000713          	li	a4,256
   131f4:	00e41c23          	sh	a4,24(s0)
   131f8:	4719                	li	a4,6
   131fa:	1702                	slli	a4,a4,0x20
   131fc:	0719                	addi	a4,a4,6
   131fe:	bde5                	j	130f6 <emdnorm+0xb4>
   13200:	04000737          	lui	a4,0x4000
   13204:	7ff7071b          	addiw	a4,a4,2047
   13208:	c858                	sw	a4,20(s0)
   1320a:	6705                	lui	a4,0x1
   1320c:	8007071b          	addiw	a4,a4,-2048
   13210:	b7d5                	j	131f4 <emdnorm+0x1b2>
   13212:	00800737          	lui	a4,0x800
   13216:	0ff7071b          	addiw	a4,a4,255
   1321a:	c858                	sw	a4,20(s0)
   1321c:	10000713          	li	a4,256
   13220:	00e41c23          	sh	a4,24(s0)
   13224:	4711                	li	a4,4
   13226:	1702                	slli	a4,a4,0x20
   13228:	0711                	addi	a4,a4,4
   1322a:	b5f1                	j	130f6 <emdnorm+0xb4>
   1322c:	0007d503          	lhu	a0,0(a5)
   13230:	c119                	beqz	a0,13236 <emdnorm+0x1f4>
   13232:	00176713          	ori	a4,a4,1
   13236:	00079023          	sh	zero,0(a5)
   1323a:	2685                	addiw	a3,a3,1
   1323c:	0789                	addi	a5,a5,2
   1323e:	bf01                	j	1314e <emdnorm+0x10c>
   13240:	f40a04e3          	beqz	s4,13188 <emdnorm+0x146>
   13244:	01204a63          	bgtz	s2,13258 <emdnorm+0x216>
   13248:	4058                	lw	a4,4(s0)
   1324a:	09000793          	li	a5,144
   1324e:	00f70563          	beq	a4,a5,13258 <emdnorm+0x216>
   13252:	8526                	mv	a0,s1
   13254:	ffcff0ef          	jal	ra,12a50 <eshup1>
   13258:	0044d783          	lhu	a5,4(s1)
   1325c:	c789                	beqz	a5,13266 <emdnorm+0x224>
   1325e:	8526                	mv	a0,s1
   13260:	fb8ff0ef          	jal	ra,12a18 <eshdn1>
   13264:	0905                	addi	s2,s2,1
   13266:	67a1                	lui	a5,0x8
   13268:	00049c23          	sh	zero,24(s1)
   1326c:	17f9                	addi	a5,a5,-2
   1326e:	0327d063          	ble	s2,a5,1328e <emdnorm+0x24c>
   13272:	77e1                	lui	a5,0xffff8
   13274:	fff7c793          	not	a5,a5
   13278:	00f49123          	sh	a5,2(s1)
   1327c:	00448793          	addi	a5,s1,4
   13280:	04e1                	addi	s1,s1,24
   13282:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__global_pointer$+0xfffffffffffdad28>
   13286:	0789                	addi	a5,a5,2
   13288:	fef49de3          	bne	s1,a5,13282 <emdnorm+0x240>
   1328c:	bbed                	j	13086 <emdnorm+0x44>
   1328e:	00095563          	bgez	s2,13298 <emdnorm+0x256>
   13292:	00049123          	sh	zero,2(s1)
   13296:	bbc5                	j	13086 <emdnorm+0x44>
   13298:	01249123          	sh	s2,2(s1)
   1329c:	b3ed                	j	13086 <emdnorm+0x44>
   1329e:	e00a9ce3          	bnez	s5,130b6 <emdnorm+0x74>
   132a2:	00049c23          	sh	zero,24(s1)
   132a6:	b7f1                	j	13272 <emdnorm+0x230>

00000000000132a8 <eiremain>:
   132a8:	7139                	addi	sp,sp,-64
   132aa:	e852                	sd	s4,16(sp)
   132ac:	00255a03          	lhu	s4,2(a0)
   132b0:	f822                	sd	s0,48(sp)
   132b2:	842e                	mv	s0,a1
   132b4:	fc06                	sd	ra,56(sp)
   132b6:	f426                	sd	s1,40(sp)
   132b8:	f04a                	sd	s2,32(sp)
   132ba:	e456                	sd	s5,8(sp)
   132bc:	e05a                	sd	s6,0(sp)
   132be:	8932                	mv	s2,a2
   132c0:	03460b13          	addi	s6,a2,52
   132c4:	ec4e                	sd	s3,24(sp)
   132c6:	8aaa                	mv	s5,a0
   132c8:	bb9ff0ef          	jal	ra,12e80 <enormlz>
   132cc:	00245483          	lhu	s1,2(s0)
   132d0:	40aa0a33          	sub	s4,s4,a0
   132d4:	8522                	mv	a0,s0
   132d6:	babff0ef          	jal	ra,12e80 <enormlz>
   132da:	8c89                	sub	s1,s1,a0
   132dc:	855a                	mv	a0,s6
   132de:	ee4ff0ef          	jal	ra,129c2 <ecleaz>
   132e2:	0344d363          	ble	s4,s1,13308 <eiremain+0x60>
   132e6:	8522                	mv	a0,s0
   132e8:	7442                	ld	s0,48(sp)
   132ea:	70e2                	ld	ra,56(sp)
   132ec:	69e2                	ld	s3,24(sp)
   132ee:	6a42                	ld	s4,16(sp)
   132f0:	6aa2                	ld	s5,8(sp)
   132f2:	6b02                	ld	s6,0(sp)
   132f4:	87ca                	mv	a5,s2
   132f6:	86a6                	mv	a3,s1
   132f8:	7902                	ld	s2,32(sp)
   132fa:	74a2                	ld	s1,40(sp)
   132fc:	4701                	li	a4,0
   132fe:	4601                	li	a2,0
   13300:	4581                	li	a1,0
   13302:	6121                	addi	sp,sp,64
   13304:	d3fff06f          	j	13042 <emdnorm>
   13308:	85a2                	mv	a1,s0
   1330a:	8556                	mv	a0,s5
   1330c:	ee2ff0ef          	jal	ra,129ee <ecmpm>
   13310:	4981                	li	s3,0
   13312:	00a04763          	bgtz	a0,13320 <eiremain+0x78>
   13316:	85a2                	mv	a1,s0
   13318:	8556                	mv	a0,s5
   1331a:	825ff0ef          	jal	ra,12b3e <esubm>
   1331e:	4985                	li	s3,1
   13320:	855a                	mv	a0,s6
   13322:	f2eff0ef          	jal	ra,12a50 <eshup1>
   13326:	04c95783          	lhu	a5,76(s2)
   1332a:	8522                	mv	a0,s0
   1332c:	14fd                	addi	s1,s1,-1
   1332e:	00f9e9b3          	or	s3,s3,a5
   13332:	05391623          	sh	s3,76(s2)
   13336:	f1aff0ef          	jal	ra,12a50 <eshup1>
   1333a:	b765                	j	132e2 <eiremain+0x3a>

000000000001333c <emul>:
   1333c:	7131                	addi	sp,sp,-192
   1333e:	f922                	sd	s0,176(sp)
   13340:	f526                	sd	s1,168(sp)
   13342:	f14a                	sd	s2,160(sp)
   13344:	ed4e                	sd	s3,152(sp)
   13346:	fd06                	sd	ra,184(sp)
   13348:	e952                	sd	s4,144(sp)
   1334a:	e556                	sd	s5,136(sp)
   1334c:	e15a                	sd	s6,128(sp)
   1334e:	fcde                	sd	s7,120(sp)
   13350:	f8e2                	sd	s8,112(sp)
   13352:	f4e6                	sd	s9,104(sp)
   13354:	84aa                	mv	s1,a0
   13356:	842e                	mv	s0,a1
   13358:	8932                	mv	s2,a2
   1335a:	89b6                	mv	s3,a3
   1335c:	87fff0ef          	jal	ra,12bda <eisnan>
   13360:	c115                	beqz	a0,13384 <emul+0x48>
   13362:	85ca                	mv	a1,s2
   13364:	8526                	mv	a0,s1
   13366:	e46ff0ef          	jal	ra,129ac <emov>
   1336a:	70ea                	ld	ra,184(sp)
   1336c:	744a                	ld	s0,176(sp)
   1336e:	74aa                	ld	s1,168(sp)
   13370:	790a                	ld	s2,160(sp)
   13372:	69ea                	ld	s3,152(sp)
   13374:	6a4a                	ld	s4,144(sp)
   13376:	6aaa                	ld	s5,136(sp)
   13378:	6b0a                	ld	s6,128(sp)
   1337a:	7be6                	ld	s7,120(sp)
   1337c:	7c46                	ld	s8,112(sp)
   1337e:	7ca6                	ld	s9,104(sp)
   13380:	6129                	addi	sp,sp,192
   13382:	8082                	ret
   13384:	8522                	mv	a0,s0
   13386:	855ff0ef          	jal	ra,12bda <eisnan>
   1338a:	c501                	beqz	a0,13392 <emul+0x56>
   1338c:	85ca                	mv	a1,s2
   1338e:	8522                	mv	a0,s0
   13390:	bfd9                	j	13366 <emul+0x2a>
   13392:	8526                	mv	a0,s1
   13394:	9cbff0ef          	jal	ra,12d5e <eisinf>
   13398:	e521                	bnez	a0,133e0 <emul+0xa4>
   1339a:	8522                	mv	a0,s0
   1339c:	9c3ff0ef          	jal	ra,12d5e <eisinf>
   133a0:	c901                	beqz	a0,133b0 <emul+0x74>
   133a2:	65e9                	lui	a1,0x1a
   133a4:	ee858593          	addi	a1,a1,-280 # 19ee8 <ezero>
   133a8:	8526                	mv	a0,s1
   133aa:	911ff0ef          	jal	ra,12cba <ecmp>
   133ae:	c121                	beqz	a0,133ee <emul+0xb2>
   133b0:	8526                	mv	a0,s1
   133b2:	9adff0ef          	jal	ra,12d5e <eisinf>
   133b6:	e509                	bnez	a0,133c0 <emul+0x84>
   133b8:	8522                	mv	a0,s0
   133ba:	9a5ff0ef          	jal	ra,12d5e <eisinf>
   133be:	cd1d                	beqz	a0,133fc <emul+0xc0>
   133c0:	8526                	mv	a0,s1
   133c2:	83fff0ef          	jal	ra,12c00 <eisneg>
   133c6:	84aa                	mv	s1,a0
   133c8:	8522                	mv	a0,s0
   133ca:	837ff0ef          	jal	ra,12c00 <eisneg>
   133ce:	02a48463          	beq	s1,a0,133f6 <emul+0xba>
   133d2:	77e1                	lui	a5,0xffff8
   133d4:	00f91923          	sh	a5,18(s2)
   133d8:	854a                	mv	a0,s2
   133da:	9a9ff0ef          	jal	ra,12d82 <einfin.isra.2>
   133de:	b771                	j	1336a <emul+0x2e>
   133e0:	65e9                	lui	a1,0x1a
   133e2:	ee858593          	addi	a1,a1,-280 # 19ee8 <ezero>
   133e6:	8522                	mv	a0,s0
   133e8:	8d3ff0ef          	jal	ra,12cba <ecmp>
   133ec:	f55d                	bnez	a0,1339a <emul+0x5e>
   133ee:	854a                	mv	a0,s2
   133f0:	b27ff0ef          	jal	ra,12f16 <enan.constprop.12>
   133f4:	bf9d                	j	1336a <emul+0x2e>
   133f6:	00091923          	sh	zero,18(s2)
   133fa:	bff9                	j	133d8 <emul+0x9c>
   133fc:	8526                	mv	a0,s1
   133fe:	858a                	mv	a1,sp
   13400:	821ff0ef          	jal	ra,12c20 <emovi>
   13404:	8522                	mv	a0,s0
   13406:	100c                	addi	a1,sp,32
   13408:	819ff0ef          	jal	ra,12c20 <emovi>
   1340c:	00215403          	lhu	s0,2(sp)
   13410:	02215483          	lhu	s1,34(sp)
   13414:	ec09                	bnez	s0,1342e <emul+0xf2>
   13416:	4781                	li	a5,0
   13418:	4759                	li	a4,22
   1341a:	00f106b3          	add	a3,sp,a5
   1341e:	0026d683          	lhu	a3,2(a3)
   13422:	c6e9                	beqz	a3,134ec <emul+0x1b0>
   13424:	850a                	mv	a0,sp
   13426:	a5bff0ef          	jal	ra,12e80 <enormlz>
   1342a:	40a00433          	neg	s0,a0
   1342e:	02215783          	lhu	a5,34(sp)
   13432:	8c26                	mv	s8,s1
   13434:	ef81                	bnez	a5,1344c <emul+0x110>
   13436:	4759                	li	a4,22
   13438:	1014                	addi	a3,sp,32
   1343a:	96be                	add	a3,a3,a5
   1343c:	0026d683          	lhu	a3,2(a3)
   13440:	cecd                	beqz	a3,134fa <emul+0x1be>
   13442:	1008                	addi	a0,sp,32
   13444:	a3dff0ef          	jal	ra,12e80 <enormlz>
   13448:	40a48c33          	sub	s8,s1,a0
   1344c:	02015783          	lhu	a5,32(sp)
   13450:	03498b93          	addi	s7,s3,52
   13454:	03898493          	addi	s1,s3,56
   13458:	02f99a23          	sh	a5,52(s3)
   1345c:	02215783          	lhu	a5,34(sp)
   13460:	8a5e                	mv	s4,s7
   13462:	02f99b23          	sh	a5,54(s3)
   13466:	04e98793          	addi	a5,s3,78
   1346a:	00049023          	sh	zero,0(s1)
   1346e:	0489                	addi	s1,s1,2
   13470:	fe979de3          	bne	a5,s1,1346a <emul+0x12e>
   13474:	4a81                	li	s5,0
   13476:	4b01                	li	s6,0
   13478:	5cb1                	li	s9,-20
   1347a:	015107b3          	add	a5,sp,s5
   1347e:	0187d503          	lhu	a0,24(a5) # ffffffffffff8018 <__global_pointer$+0xfffffffffffdad40>
   13482:	c909                	beqz	a0,13494 <emul+0x158>
   13484:	100c                	addi	a1,sp,32
   13486:	0090                	addi	a2,sp,64
   13488:	edeff0ef          	jal	ra,12b66 <m16m>
   1348c:	85de                	mv	a1,s7
   1348e:	0088                	addi	a0,sp,64
   13490:	e86ff0ef          	jal	ra,12b16 <eaddm>
   13494:	04c9d783          	lhu	a5,76(s3)
   13498:	855e                	mv	a0,s7
   1349a:	1af9                	addi	s5,s5,-2
   1349c:	00fb6b33          	or	s6,s6,a5
   134a0:	e54ff0ef          	jal	ra,12af4 <eshdn6>
   134a4:	fd9a9be3          	bne	s5,s9,1347a <emul+0x13e>
   134a8:	101c                	addi	a5,sp,32
   134aa:	000a5703          	lhu	a4,0(s4)
   134ae:	0a09                	addi	s4,s4,2
   134b0:	0789                	addi	a5,a5,2
   134b2:	fee79f23          	sh	a4,-2(a5)
   134b6:	fe9a1ae3          	bne	s4,s1,134aa <emul+0x16e>
   134ba:	76f1                	lui	a3,0xffffc
   134bc:	9462                	add	s0,s0,s8
   134be:	0689                	addi	a3,a3,2
   134c0:	87ce                	mv	a5,s3
   134c2:	04000713          	li	a4,64
   134c6:	96a2                	add	a3,a3,s0
   134c8:	4601                	li	a2,0
   134ca:	85da                	mv	a1,s6
   134cc:	1008                	addi	a0,sp,32
   134ce:	b75ff0ef          	jal	ra,13042 <emdnorm>
   134d2:	00015703          	lhu	a4,0(sp)
   134d6:	02015783          	lhu	a5,32(sp)
   134da:	02f71463          	bne	a4,a5,13502 <emul+0x1c6>
   134de:	02011023          	sh	zero,32(sp)
   134e2:	85ca                	mv	a1,s2
   134e4:	1008                	addi	a0,sp,32
   134e6:	a51ff0ef          	jal	ra,12f36 <emovo.isra.6>
   134ea:	b541                	j	1336a <emul+0x2e>
   134ec:	0789                	addi	a5,a5,2
   134ee:	f2e796e3          	bne	a5,a4,1341a <emul+0xde>
   134f2:	854a                	mv	a0,s2
   134f4:	ca8ff0ef          	jal	ra,1299c <eclear>
   134f8:	bd8d                	j	1336a <emul+0x2e>
   134fa:	0789                	addi	a5,a5,2
   134fc:	f2e79ee3          	bne	a5,a4,13438 <emul+0xfc>
   13500:	bfcd                	j	134f2 <emul+0x1b6>
   13502:	57fd                	li	a5,-1
   13504:	02f11023          	sh	a5,32(sp)
   13508:	bfe9                	j	134e2 <emul+0x1a6>

000000000001350a <ediv>:
   1350a:	7131                	addi	sp,sp,-192
   1350c:	f922                	sd	s0,176(sp)
   1350e:	f526                	sd	s1,168(sp)
   13510:	f14a                	sd	s2,160(sp)
   13512:	e556                	sd	s5,136(sp)
   13514:	fd06                	sd	ra,184(sp)
   13516:	ed4e                	sd	s3,152(sp)
   13518:	e952                	sd	s4,144(sp)
   1351a:	e15a                	sd	s6,128(sp)
   1351c:	fcde                	sd	s7,120(sp)
   1351e:	f8e2                	sd	s8,112(sp)
   13520:	f4e6                	sd	s9,104(sp)
   13522:	f0ea                	sd	s10,96(sp)
   13524:	84aa                	mv	s1,a0
   13526:	842e                	mv	s0,a1
   13528:	8932                	mv	s2,a2
   1352a:	8ab6                	mv	s5,a3
   1352c:	eaeff0ef          	jal	ra,12bda <eisnan>
   13530:	c11d                	beqz	a0,13556 <ediv+0x4c>
   13532:	85ca                	mv	a1,s2
   13534:	8526                	mv	a0,s1
   13536:	c76ff0ef          	jal	ra,129ac <emov>
   1353a:	70ea                	ld	ra,184(sp)
   1353c:	744a                	ld	s0,176(sp)
   1353e:	74aa                	ld	s1,168(sp)
   13540:	790a                	ld	s2,160(sp)
   13542:	69ea                	ld	s3,152(sp)
   13544:	6a4a                	ld	s4,144(sp)
   13546:	6aaa                	ld	s5,136(sp)
   13548:	6b0a                	ld	s6,128(sp)
   1354a:	7be6                	ld	s7,120(sp)
   1354c:	7c46                	ld	s8,112(sp)
   1354e:	7ca6                	ld	s9,104(sp)
   13550:	7d06                	ld	s10,96(sp)
   13552:	6129                	addi	sp,sp,192
   13554:	8082                	ret
   13556:	8522                	mv	a0,s0
   13558:	e82ff0ef          	jal	ra,12bda <eisnan>
   1355c:	c501                	beqz	a0,13564 <ediv+0x5a>
   1355e:	85ca                	mv	a1,s2
   13560:	8522                	mv	a0,s0
   13562:	bfd1                	j	13536 <ediv+0x2c>
   13564:	69e9                	lui	s3,0x1a
   13566:	ee898593          	addi	a1,s3,-280 # 19ee8 <ezero>
   1356a:	8526                	mv	a0,s1
   1356c:	f4eff0ef          	jal	ra,12cba <ecmp>
   13570:	16050763          	beqz	a0,136de <ediv+0x1d4>
   13574:	8526                	mv	a0,s1
   13576:	fe8ff0ef          	jal	ra,12d5e <eisinf>
   1357a:	89aa                	mv	s3,a0
   1357c:	8522                	mv	a0,s0
   1357e:	fe0ff0ef          	jal	ra,12d5e <eisinf>
   13582:	16099963          	bnez	s3,136f4 <ediv+0x1ea>
   13586:	16051c63          	bnez	a0,136fe <ediv+0x1f4>
   1358a:	8526                	mv	a0,s1
   1358c:	858a                	mv	a1,sp
   1358e:	e92ff0ef          	jal	ra,12c20 <emovi>
   13592:	8522                	mv	a0,s0
   13594:	100c                	addi	a1,sp,32
   13596:	e8aff0ef          	jal	ra,12c20 <emovi>
   1359a:	02215483          	lhu	s1,34(sp)
   1359e:	00215403          	lhu	s0,2(sp)
   135a2:	ec91                	bnez	s1,135be <ediv+0xb4>
   135a4:	4781                	li	a5,0
   135a6:	4759                	li	a4,22
   135a8:	1014                	addi	a3,sp,32
   135aa:	96be                	add	a3,a3,a5
   135ac:	0026d683          	lhu	a3,2(a3) # ffffffffffffc002 <__global_pointer$+0xfffffffffffded2a>
   135b0:	16068763          	beqz	a3,1371e <ediv+0x214>
   135b4:	1008                	addi	a0,sp,32
   135b6:	8cbff0ef          	jal	ra,12e80 <enormlz>
   135ba:	40a004b3          	neg	s1,a0
   135be:	00215783          	lhu	a5,2(sp)
   135c2:	8ba2                	mv	s7,s0
   135c4:	ef89                	bnez	a5,135de <ediv+0xd4>
   135c6:	4759                	li	a4,22
   135c8:	00f106b3          	add	a3,sp,a5
   135cc:	0026d683          	lhu	a3,2(a3)
   135d0:	14068b63          	beqz	a3,13726 <ediv+0x21c>
   135d4:	850a                	mv	a0,sp
   135d6:	8abff0ef          	jal	ra,12e80 <enormlz>
   135da:	40a40bb3          	sub	s7,s0,a0
   135de:	02015783          	lhu	a5,32(sp)
   135e2:	02215703          	lhu	a4,34(sp)
   135e6:	034a8993          	addi	s3,s5,52
   135ea:	02fa9a23          	sh	a5,52(s5)
   135ee:	038a8793          	addi	a5,s5,56
   135f2:	02ea9b23          	sh	a4,54(s5)
   135f6:	8a3e                	mv	s4,a5
   135f8:	04ea8713          	addi	a4,s5,78
   135fc:	0789                	addi	a5,a5,2
   135fe:	fe079f23          	sh	zero,-2(a5)
   13602:	fee79de3          	bne	a5,a4,135fc <ediv+0xf2>
   13606:	1008                	addi	a0,sp,32
   13608:	c10ff0ef          	jal	ra,12a18 <eshdn1>
   1360c:	00615c03          	lhu	s8,6(sp)
   13610:	6b41                	lui	s6,0x10
   13612:	1b7d                	addi	s6,s6,-1
   13614:	036c0d33          	mul	s10,s8,s6
   13618:	01a98c93          	addi	s9,s3,26
   1361c:	02415783          	lhu	a5,36(sp)
   13620:	02615403          	lhu	s0,38(sp)
   13624:	07c2                	slli	a5,a5,0x10
   13626:	97a2                	add	a5,a5,s0
   13628:	845a                	mv	s0,s6
   1362a:	00fd6663          	bltu	s10,a5,13636 <ediv+0x12c>
   1362e:	0387d433          	divu	s0,a5,s8
   13632:	1442                	slli	s0,s0,0x30
   13634:	9041                	srli	s0,s0,0x30
   13636:	858a                	mv	a1,sp
   13638:	8522                	mv	a0,s0
   1363a:	0090                	addi	a2,sp,64
   1363c:	d2aff0ef          	jal	ra,12b66 <m16m>
   13640:	100c                	addi	a1,sp,32
   13642:	0088                	addi	a0,sp,64
   13644:	baaff0ef          	jal	ra,129ee <ecmpm>
   13648:	00a05f63          	blez	a0,13666 <ediv+0x15c>
   1364c:	008c                	addi	a1,sp,64
   1364e:	850a                	mv	a0,sp
   13650:	ceeff0ef          	jal	ra,12b3e <esubm>
   13654:	100c                	addi	a1,sp,32
   13656:	0088                	addi	a0,sp,64
   13658:	b96ff0ef          	jal	ra,129ee <ecmpm>
   1365c:	0ea04163          	bgtz	a0,1373e <ediv+0x234>
   13660:	347d                	addiw	s0,s0,-1
   13662:	1442                	slli	s0,s0,0x30
   13664:	9041                	srli	s0,s0,0x30
   13666:	100c                	addi	a1,sp,32
   13668:	0088                	addi	a0,sp,64
   1366a:	cd4ff0ef          	jal	ra,12b3e <esubm>
   1366e:	1008                	addi	a0,sp,32
   13670:	008a1023          	sh	s0,0(s4)
   13674:	0a09                	addi	s4,s4,2
   13676:	c62ff0ef          	jal	ra,12ad8 <eshup6>
   1367a:	fb9a11e3          	bne	s4,s9,1361c <ediv+0x112>
   1367e:	4781                	li	a5,0
   13680:	4581                	li	a1,0
   13682:	4759                	li	a4,22
   13684:	1014                	addi	a3,sp,32
   13686:	96be                	add	a3,a3,a5
   13688:	0046d683          	lhu	a3,4(a3)
   1368c:	0789                	addi	a5,a5,2
   1368e:	8dd5                	or	a1,a1,a3
   13690:	fee79ae3          	bne	a5,a4,13684 <ediv+0x17a>
   13694:	2581                	sext.w	a1,a1
   13696:	00b035b3          	snez	a1,a1
   1369a:	101c                	addi	a5,sp,32
   1369c:	0009d703          	lhu	a4,0(s3)
   136a0:	0989                	addi	s3,s3,2
   136a2:	0789                	addi	a5,a5,2
   136a4:	fee79f23          	sh	a4,-2(a5)
   136a8:	ff3a1ae3          	bne	s4,s3,1369c <ediv+0x192>
   136ac:	6691                	lui	a3,0x4
   136ae:	417484b3          	sub	s1,s1,s7
   136b2:	16fd                	addi	a3,a3,-1
   136b4:	87d6                	mv	a5,s5
   136b6:	04000713          	li	a4,64
   136ba:	96a6                	add	a3,a3,s1
   136bc:	4601                	li	a2,0
   136be:	1008                	addi	a0,sp,32
   136c0:	983ff0ef          	jal	ra,13042 <emdnorm>
   136c4:	00015703          	lhu	a4,0(sp)
   136c8:	02015783          	lhu	a5,32(sp)
   136cc:	08f71163          	bne	a4,a5,1374e <ediv+0x244>
   136d0:	02011023          	sh	zero,32(sp)
   136d4:	85ca                	mv	a1,s2
   136d6:	1008                	addi	a0,sp,32
   136d8:	85fff0ef          	jal	ra,12f36 <emovo.isra.6>
   136dc:	bdb9                	j	1353a <ediv+0x30>
   136de:	ee898593          	addi	a1,s3,-280
   136e2:	8522                	mv	a0,s0
   136e4:	dd6ff0ef          	jal	ra,12cba <ecmp>
   136e8:	e80516e3          	bnez	a0,13574 <ediv+0x6a>
   136ec:	854a                	mv	a0,s2
   136ee:	829ff0ef          	jal	ra,12f16 <enan.constprop.12>
   136f2:	b5a1                	j	1353a <ediv+0x30>
   136f4:	fd65                	bnez	a0,136ec <ediv+0x1e2>
   136f6:	854a                	mv	a0,s2
   136f8:	aa4ff0ef          	jal	ra,1299c <eclear>
   136fc:	bd3d                	j	1353a <ediv+0x30>
   136fe:	8526                	mv	a0,s1
   13700:	d00ff0ef          	jal	ra,12c00 <eisneg>
   13704:	84aa                	mv	s1,a0
   13706:	8522                	mv	a0,s0
   13708:	cf8ff0ef          	jal	ra,12c00 <eisneg>
   1370c:	02a48663          	beq	s1,a0,13738 <ediv+0x22e>
   13710:	77e1                	lui	a5,0xffff8
   13712:	00f91923          	sh	a5,18(s2)
   13716:	854a                	mv	a0,s2
   13718:	e6aff0ef          	jal	ra,12d82 <einfin.isra.2>
   1371c:	bd39                	j	1353a <ediv+0x30>
   1371e:	0789                	addi	a5,a5,2
   13720:	e8e794e3          	bne	a5,a4,135a8 <ediv+0x9e>
   13724:	bfc9                	j	136f6 <ediv+0x1ec>
   13726:	0789                	addi	a5,a5,2
   13728:	eae790e3          	bne	a5,a4,135c8 <ediv+0xbe>
   1372c:	00015703          	lhu	a4,0(sp)
   13730:	02015783          	lhu	a5,32(sp)
   13734:	fcf71ee3          	bne	a4,a5,13710 <ediv+0x206>
   13738:	00091923          	sh	zero,18(s2)
   1373c:	bfe9                	j	13716 <ediv+0x20c>
   1373e:	3479                	addiw	s0,s0,-2
   13740:	1442                	slli	s0,s0,0x30
   13742:	008c                	addi	a1,sp,64
   13744:	850a                	mv	a0,sp
   13746:	9041                	srli	s0,s0,0x30
   13748:	bf6ff0ef          	jal	ra,12b3e <esubm>
   1374c:	bf29                	j	13666 <ediv+0x15c>
   1374e:	57fd                	li	a5,-1
   13750:	02f11023          	sh	a5,32(sp)
   13754:	b741                	j	136d4 <ediv+0x1ca>

0000000000013756 <_ldtoa_r>:
   13756:	db010113          	addi	sp,sp,-592
   1375a:	ffe6                	sd	s9,504(sp)
   1375c:	8cbe                	mv	s9,a5
   1375e:	09100793          	li	a5,145
   13762:	e0ae                	sd	a1,64(sp)
   13764:	1782                	slli	a5,a5,0x20
   13766:	712c                	ld	a1,96(a0)
   13768:	17fd                	addi	a5,a5,-1
   1376a:	24813023          	sd	s0,576(sp)
   1376e:	23413023          	sd	s4,544(sp)
   13772:	21513c23          	sd	s5,536(sp)
   13776:	21713423          	sd	s7,520(sp)
   1377a:	24113423          	sd	ra,584(sp)
   1377e:	22913c23          	sd	s1,568(sp)
   13782:	23213823          	sd	s2,560(sp)
   13786:	23313423          	sd	s3,552(sp)
   1378a:	21613823          	sd	s6,528(sp)
   1378e:	21813023          	sd	s8,512(sp)
   13792:	fbea                	sd	s10,496(sp)
   13794:	f7ee                	sd	s11,488(sp)
   13796:	ec46                	sd	a7,24(sp)
   13798:	e4b2                	sd	a2,72(sp)
   1379a:	eb3e                	sd	a5,400(sp)
   1379c:	8a2a                	mv	s4,a0
   1379e:	8bb6                	mv	s7,a3
   137a0:	8aba                	mv	s5,a4
   137a2:	8442                	mv	s0,a6
   137a4:	c999                	beqz	a1,137ba <_ldtoa_r+0x64>
   137a6:	5538                	lw	a4,104(a0)
   137a8:	4785                	li	a5,1
   137aa:	00e797bb          	sllw	a5,a5,a4
   137ae:	c598                	sw	a4,8(a1)
   137b0:	c5dc                	sw	a5,12(a1)
   137b2:	377000ef          	jal	ra,14328 <_Bfree>
   137b6:	060a3023          	sd	zero,96(s4)
   137ba:	0088                	addi	a0,sp,64
   137bc:	188c                	addi	a1,sp,112
   137be:	fcaff0ef          	jal	ra,12f88 <e113toe.isra.8>
   137c2:	1888                	addi	a0,sp,112
   137c4:	c3cff0ef          	jal	ra,12c00 <eisneg>
   137c8:	cd4d                	beqz	a0,13882 <_ldtoa_r+0x12c>
   137ca:	4785                	li	a5,1
   137cc:	c01c                	sw	a5,0(s0)
   137ce:	478d                	li	a5,3
   137d0:	0afb8c63          	beq	s7,a5,13888 <_ldtoa_r+0x132>
   137d4:	4951                	li	s2,20
   137d6:	000b8c63          	beqz	s7,137ee <_ldtoa_r+0x98>
   137da:	fffa879b          	addiw	a5,s5,-1
   137de:	02a00713          	li	a4,42
   137e2:	0007891b          	sext.w	s2,a5
   137e6:	00f75463          	ble	a5,a4,137ee <_ldtoa_r+0x98>
   137ea:	02a00913          	li	s2,42
   137ee:	19412783          	lw	a5,404(sp)
   137f2:	1888                	addi	a0,sp,112
   137f4:	f03e                	sd	a5,32(sp)
   137f6:	be4ff0ef          	jal	ra,12bda <eisnan>
   137fa:	842a                	mv	s0,a0
   137fc:	c941                	beqz	a0,1388c <_ldtoa_r+0x136>
   137fe:	0001a5b7          	lui	a1,0x1a
   13802:	15058593          	addi	a1,a1,336 # 1a150 <emtens+0x108>
   13806:	0a88                	addi	a0,sp,336
   13808:	6409                	lui	s0,0x2
   1380a:	652010ef          	jal	ra,14e5c <sprintf>
   1380e:	70f40413          	addi	s0,s0,1807 # 270f <_start-0xd9a1>
   13812:	5782                	lw	a5,32(sp)
   13814:	1888                	addi	a0,sp,112
   13816:	1a812023          	sw	s0,416(sp)
   1381a:	18f12a23          	sw	a5,404(sp)
   1381e:	d40ff0ef          	jal	ra,12d5e <eisinf>
   13822:	15010993          	addi	s3,sp,336
   13826:	e511                	bnez	a0,13832 <_ldtoa_r+0xdc>
   13828:	1888                	addi	a0,sp,112
   1382a:	bb0ff0ef          	jal	ra,12bda <eisnan>
   1382e:	6e050e63          	beqz	a0,13f2a <_ldtoa_r+0x7d4>
   13832:	6789                	lui	a5,0x2
   13834:	70f7879b          	addiw	a5,a5,1807
   13838:	00fca023          	sw	a5,0(s9)
   1383c:	87ce                	mv	a5,s3
   1383e:	02000613          	li	a2,32
   13842:	02d00693          	li	a3,45
   13846:	0007c703          	lbu	a4,0(a5) # 2000 <_start-0xe0b0>
   1384a:	72c70463          	beq	a4,a2,13f72 <_ldtoa_r+0x81c>
   1384e:	72d70263          	beq	a4,a3,13f72 <_ldtoa_r+0x81c>
   13852:	844e                	mv	s0,s3
   13854:	0785                	addi	a5,a5,1
   13856:	fff7c703          	lbu	a4,-1(a5)
   1385a:	00140693          	addi	a3,s0,1
   1385e:	fee68fa3          	sb	a4,-1(a3) # 3fff <_start-0xc0b1>
   13862:	70071b63          	bnez	a4,13f78 <_ldtoa_r+0x822>
   13866:	4709                	li	a4,2
   13868:	4785                	li	a5,1
   1386a:	00eb8863          	beq	s7,a4,1387a <_ldtoa_r+0x124>
   1386e:	1a012783          	lw	a5,416(sp)
   13872:	0127d363          	ble	s2,a5,13878 <_ldtoa_r+0x122>
   13876:	87ca                	mv	a5,s2
   13878:	2781                	sext.w	a5,a5
   1387a:	03000693          	li	a3,48
   1387e:	7060006f          	j	13f84 <_ldtoa_r+0x82e>
   13882:	00042023          	sw	zero,0(s0)
   13886:	b7a1                	j	137ce <_ldtoa_r+0x78>
   13888:	87d6                	mv	a5,s5
   1388a:	bf91                	j	137de <_ldtoa_r+0x88>
   1388c:	09000793          	li	a5,144
   13890:	090c                	addi	a1,sp,144
   13892:	1888                	addi	a0,sp,112
   13894:	18f12a23          	sw	a5,404(sp)
   13898:	914ff0ef          	jal	ra,129ac <emov>
   1389c:	0a215783          	lhu	a5,162(sp)
   138a0:	e402                	sd	zero,8(sp)
   138a2:	0107971b          	slliw	a4,a5,0x10
   138a6:	4107571b          	sraiw	a4,a4,0x10
   138aa:	00075a63          	bgez	a4,138be <_ldtoa_r+0x168>
   138ae:	6721                	lui	a4,0x8
   138b0:	177d                	addi	a4,a4,-1
   138b2:	8ff9                	and	a5,a5,a4
   138b4:	0af11123          	sh	a5,162(sp)
   138b8:	67c1                	lui	a5,0x10
   138ba:	17fd                	addi	a5,a5,-1
   138bc:	e43e                	sd	a5,8(sp)
   138be:	6b69                	lui	s6,0x1a
   138c0:	ee8b0513          	addi	a0,s6,-280 # 19ee8 <ezero>
   138c4:	190c                	addi	a1,sp,176
   138c6:	0561                	addi	a0,a0,24
   138c8:	8e4ff0ef          	jal	ra,129ac <emov>
   138cc:	0a215703          	lhu	a4,162(sp)
   138d0:	64e9                	lui	s1,0x1a
   138d2:	ee8b0993          	addi	s3,s6,-280
   138d6:	f0048493          	addi	s1,s1,-256 # 19f00 <eone>
   138da:	74071963          	bnez	a4,1402c <_ldtoa_r+0x8d6>
   138de:	091c                	addi	a5,sp,144
   138e0:	0a210713          	addi	a4,sp,162
   138e4:	0007d683          	lhu	a3,0(a5) # 10000 <_start-0xb0>
   138e8:	e6e1                	bnez	a3,139b0 <_ldtoa_r+0x25a>
   138ea:	0789                	addi	a5,a5,2
   138ec:	fef71ce3          	bne	a4,a5,138e4 <_ldtoa_r+0x18e>
   138f0:	198c                	addi	a1,sp,240
   138f2:	1908                	addi	a0,sp,176
   138f4:	b2cff0ef          	jal	ra,12c20 <emovi>
   138f8:	190c                	addi	a1,sp,176
   138fa:	1988                	addi	a0,sp,240
   138fc:	8d6ff0ef          	jal	ra,129d2 <emovz>
   13900:	198c                	addi	a1,sp,240
   13902:	0908                	addi	a0,sp,144
   13904:	b1cff0ef          	jal	ra,12c20 <emovi>
   13908:	090c                	addi	a1,sp,144
   1390a:	1988                	addi	a0,sp,240
   1390c:	8c6ff0ef          	jal	ra,129d2 <emovz>
   13910:	0b10                	addi	a2,sp,400
   13912:	090c                	addi	a1,sp,144
   13914:	1908                	addi	a0,sp,176
   13916:	993ff0ef          	jal	ra,132a8 <eiremain>
   1391a:	1dc15483          	lhu	s1,476(sp)
   1391e:	e881                	bnez	s1,1392e <_ldtoa_r+0x1d8>
   13920:	ee8b0593          	addi	a1,s6,-280
   13924:	0908                	addi	a0,sp,144
   13926:	b94ff0ef          	jal	ra,12cba <ecmp>
   1392a:	4c051463          	bnez	a0,13df2 <_ldtoa_r+0x69c>
   1392e:	67a2                	ld	a5,8(sp)
   13930:	4e078b63          	beqz	a5,13e26 <_ldtoa_r+0x6d0>
   13934:	02d00793          	li	a5,45
   13938:	14f10823          	sb	a5,336(sp)
   1393c:	478d                	li	a5,3
   1393e:	89ca                	mv	s3,s2
   13940:	00fb9863          	bne	s7,a5,13950 <_ldtoa_r+0x1fa>
   13944:	008909bb          	addw	s3,s2,s0
   13948:	02a00793          	li	a5,42
   1394c:	6f37cd63          	blt	a5,s3,14046 <_ldtoa_r+0x8f0>
   13950:	47a9                	li	a5,10
   13952:	4cf49d63          	bne	s1,a5,13e2c <_ldtoa_r+0x6d6>
   13956:	03100793          	li	a5,49
   1395a:	14f108a3          	sb	a5,337(sp)
   1395e:	02e00793          	li	a5,46
   13962:	14f10923          	sb	a5,338(sp)
   13966:	15310c13          	addi	s8,sp,339
   1396a:	01305963          	blez	s3,1397c <_ldtoa_r+0x226>
   1396e:	03000793          	li	a5,48
   13972:	14f109a3          	sb	a5,339(sp)
   13976:	39fd                	addiw	s3,s3,-1
   13978:	15410c13          	addi	s8,sp,340
   1397c:	2405                	addiw	s0,s0,1
   1397e:	4c09d163          	bgez	s3,13e40 <_ldtoa_r+0x6ea>
   13982:	0001a5b7          	lui	a1,0x1a
   13986:	8622                	mv	a2,s0
   13988:	18058593          	addi	a1,a1,384 # 1a180 <emtens+0x138>
   1398c:	8562                	mv	a0,s8
   1398e:	4ce010ef          	jal	ra,14e5c <sprintf>
   13992:	b541                	j	13812 <_ldtoa_r+0xbc>
   13994:	0001a5b7          	lui	a1,0x1a
   13998:	16858593          	addi	a1,a1,360 # 1a168 <emtens+0x120>
   1399c:	b5ad                	j	13806 <_ldtoa_r+0xb0>
   1399e:	0a011783          	lh	a5,160(sp)
   139a2:	0007c763          	bltz	a5,139b0 <_ldtoa_r+0x25a>
   139a6:	0001a5b7          	lui	a1,0x1a
   139aa:	17858593          	addi	a1,a1,376 # 1a178 <emtens+0x130>
   139ae:	bda1                	j	13806 <_ldtoa_r+0xb0>
   139b0:	090c                	addi	a1,sp,144
   139b2:	8526                	mv	a0,s1
   139b4:	b06ff0ef          	jal	ra,12cba <ecmp>
   139b8:	dd05                	beqz	a0,138f0 <_ldtoa_r+0x19a>
   139ba:	32055063          	bgez	a0,13cda <_ldtoa_r+0x584>
   139be:	098c                	addi	a1,sp,208
   139c0:	0908                	addi	a0,sp,144
   139c2:	febfe0ef          	jal	ra,129ac <emov>
   139c6:	6791                	lui	a5,0x4
   139c8:	08e7879b          	addiw	a5,a5,142
   139cc:	0ef11123          	sh	a5,226(sp)
   139d0:	47c1                	li	a5,16
   139d2:	e83e                	sd	a5,16(sp)
   139d4:	67a1                	lui	a5,0x8
   139d6:	17fd                	addi	a5,a5,-1
   139d8:	f43e                	sd	a5,40(sp)
   139da:	77f1                	lui	a5,0xffffc
   139dc:	2789                	addiw	a5,a5,2
   139de:	4d01                	li	s10,0
   139e0:	da3e                	sw	a5,52(sp)
   139e2:	67e9                	lui	a5,0x1a
   139e4:	fb878793          	addi	a5,a5,-72 # 19fb8 <etens+0xa0>
   139e8:	01a78533          	add	a0,a5,s10
   139ec:	0b14                	addi	a3,sp,400
   139ee:	1910                	addi	a2,sp,176
   139f0:	098c                	addi	a1,sp,208
   139f2:	b19ff0ef          	jal	ra,1350a <ediv>
   139f6:	08ac                	addi	a1,sp,88
   139f8:	1908                	addi	a0,sp,176
   139fa:	fb3fe0ef          	jal	ra,129ac <emov>
   139fe:	77a2                	ld	a5,40(sp)
   13a00:	06a15c03          	lhu	s8,106(sp)
   13a04:	00fc76b3          	and	a3,s8,a5
   13a08:	57d2                	lw	a5,52(sp)
   13a0a:	9ebd                	addw	a3,a3,a5
   13a0c:	02d04f63          	bgtz	a3,13a4a <_ldtoa_r+0x2f4>
   13a10:	1988                	addi	a0,sp,240
   13a12:	f8bfe0ef          	jal	ra,1299c <eclear>
   13a16:	010c1c1b          	slliw	s8,s8,0x10
   13a1a:	410c5c1b          	sraiw	s8,s8,0x10
   13a1e:	0c0c5063          	bgez	s8,13ade <_ldtoa_r+0x388>
   13a22:	4781                	li	a5,0
   13a24:	08b8                	addi	a4,sp,88
   13a26:	973e                	add	a4,a4,a5
   13a28:	00075683          	lhu	a3,0(a4) # 8000 <_start-0x80b0>
   13a2c:	1998                	addi	a4,sp,240
   13a2e:	973e                	add	a4,a4,a5
   13a30:	00075703          	lhu	a4,0(a4)
   13a34:	28e68e63          	beq	a3,a4,13cd0 <_ldtoa_r+0x57a>
   13a38:	8526                	mv	a0,s1
   13a3a:	9a0ff0ef          	jal	ra,12bda <eisnan>
   13a3e:	c135                	beqz	a0,13aa2 <_ldtoa_r+0x34c>
   13a40:	198c                	addi	a1,sp,240
   13a42:	8526                	mv	a0,s1
   13a44:	f69fe0ef          	jal	ra,129ac <emov>
   13a48:	a859                	j	13ade <_ldtoa_r+0x388>
   13a4a:	09000793          	li	a5,144
   13a4e:	40d7873b          	subw	a4,a5,a3
   13a52:	198c                	addi	a1,sp,240
   13a54:	08a8                	addi	a0,sp,88
   13a56:	8dba                	mv	s11,a4
   13a58:	fc3a                	sd	a4,56(sp)
   13a5a:	f53fe0ef          	jal	ra,129ac <emov>
   13a5e:	7762                	ld	a4,56(sp)
   13a60:	06e05f63          	blez	a4,13ade <_ldtoa_r+0x388>
   13a64:	199c                	addi	a5,sp,240
   13a66:	463d                	li	a2,15
   13a68:	02e64863          	blt	a2,a4,13a98 <_ldtoa_r+0x342>
   13a6c:	004dd61b          	srliw	a2,s11,0x4
   13a70:	02061713          	slli	a4,a2,0x20
   13a74:	199c                	addi	a5,sp,240
   13a76:	837d                	srli	a4,a4,0x1f
   13a78:	973e                	add	a4,a4,a5
   13a7a:	57c1                	li	a5,-16
   13a7c:	02c787bb          	mulw	a5,a5,a2
   13a80:	00075683          	lhu	a3,0(a4)
   13a84:	01b787bb          	addw	a5,a5,s11
   13a88:	0786                	slli	a5,a5,0x1
   13a8a:	97ce                	add	a5,a5,s3
   13a8c:	1387d783          	lhu	a5,312(a5)
   13a90:	8ff5                	and	a5,a5,a3
   13a92:	00f71023          	sh	a5,0(a4)
   13a96:	b741                	j	13a16 <_ldtoa_r+0x2c0>
   13a98:	00079023          	sh	zero,0(a5)
   13a9c:	3741                	addiw	a4,a4,-16
   13a9e:	0789                	addi	a5,a5,2
   13aa0:	b7e1                	j	13a68 <_ldtoa_r+0x312>
   13aa2:	1988                	addi	a0,sp,240
   13aa4:	936ff0ef          	jal	ra,12bda <eisnan>
   13aa8:	c501                	beqz	a0,13ab0 <_ldtoa_r+0x35a>
   13aaa:	198c                	addi	a1,sp,240
   13aac:	852e                	mv	a0,a1
   13aae:	bf59                	j	13a44 <_ldtoa_r+0x2ee>
   13ab0:	8526                	mv	a0,s1
   13ab2:	aacff0ef          	jal	ra,12d5e <eisinf>
   13ab6:	8daa                	mv	s11,a0
   13ab8:	1988                	addi	a0,sp,240
   13aba:	aa4ff0ef          	jal	ra,12d5e <eisinf>
   13abe:	8c2a                	mv	s8,a0
   13ac0:	0e0d8963          	beqz	s11,13bb2 <_ldtoa_r+0x45c>
   13ac4:	c961                	beqz	a0,13b94 <_ldtoa_r+0x43e>
   13ac6:	8526                	mv	a0,s1
   13ac8:	938ff0ef          	jal	ra,12c00 <eisneg>
   13acc:	8c2a                	mv	s8,a0
   13ace:	1988                	addi	a0,sp,240
   13ad0:	930ff0ef          	jal	ra,12c00 <eisneg>
   13ad4:	0cac1063          	bne	s8,a0,13b94 <_ldtoa_r+0x43e>
   13ad8:	1988                	addi	a0,sp,240
   13ada:	c3cff0ef          	jal	ra,12f16 <enan.constprop.12>
   13ade:	4781                	li	a5,0
   13ae0:	1918                	addi	a4,sp,176
   13ae2:	973e                	add	a4,a4,a5
   13ae4:	00075683          	lhu	a3,0(a4)
   13ae8:	1998                	addi	a4,sp,240
   13aea:	973e                	add	a4,a4,a5
   13aec:	00075703          	lhu	a4,0(a4)
   13af0:	00e69c63          	bne	a3,a4,13b08 <_ldtoa_r+0x3b2>
   13af4:	0789                	addi	a5,a5,2
   13af6:	4749                	li	a4,18
   13af8:	fee794e3          	bne	a5,a4,13ae0 <_ldtoa_r+0x38a>
   13afc:	098c                	addi	a1,sp,208
   13afe:	1908                	addi	a0,sp,176
   13b00:	eadfe0ef          	jal	ra,129ac <emov>
   13b04:	47c2                	lw	a5,16(sp)
   13b06:	9c3d                	addw	s0,s0,a5
   13b08:	67c2                	ld	a5,16(sp)
   13b0a:	0d51                	addi	s10,s10,20
   13b0c:	8385                	srli	a5,a5,0x1
   13b0e:	e83e                	sd	a5,16(sp)
   13b10:	06400793          	li	a5,100
   13b14:	ecfd17e3          	bne	s10,a5,139e2 <_ldtoa_r+0x28c>
   13b18:	0e215783          	lhu	a5,226(sp)
   13b1c:	0a215703          	lhu	a4,162(sp)
   13b20:	090c                	addi	a1,sp,144
   13b22:	0988                	addi	a0,sp,208
   13b24:	9fb9                	addw	a5,a5,a4
   13b26:	7771                	lui	a4,0xffffc
   13b28:	f727071b          	addiw	a4,a4,-142
   13b2c:	9fb9                	addw	a5,a5,a4
   13b2e:	0ef11123          	sh	a5,226(sp)
   13b32:	e7bfe0ef          	jal	ra,129ac <emov>
   13b36:	8526                	mv	a0,s1
   13b38:	190c                	addi	a1,sp,176
   13b3a:	e73fe0ef          	jal	ra,129ac <emov>
   13b3e:	4481                	li	s1,0
   13b40:	6d05                	lui	s10,0x1
   13b42:	12098993          	addi	s3,s3,288
   13b46:	10400d93          	li	s11,260
   13b4a:	67e9                	lui	a5,0x1a
   13b4c:	f1878793          	addi	a5,a5,-232 # 19f18 <etens>
   13b50:	098c                	addi	a1,sp,208
   13b52:	854e                	mv	a0,s3
   13b54:	00f48c33          	add	s8,s1,a5
   13b58:	962ff0ef          	jal	ra,12cba <ecmp>
   13b5c:	d8a04ae3          	bgtz	a0,138f0 <_ldtoa_r+0x19a>
   13b60:	098c                	addi	a1,sp,208
   13b62:	8562                	mv	a0,s8
   13b64:	956ff0ef          	jal	ra,12cba <ecmp>
   13b68:	02a04063          	bgtz	a0,13b88 <_ldtoa_r+0x432>
   13b6c:	0990                	addi	a2,sp,208
   13b6e:	85b2                	mv	a1,a2
   13b70:	0b14                	addi	a3,sp,400
   13b72:	8562                	mv	a0,s8
   13b74:	997ff0ef          	jal	ra,1350a <ediv>
   13b78:	1910                	addi	a2,sp,176
   13b7a:	0b14                	addi	a3,sp,400
   13b7c:	85b2                	mv	a1,a2
   13b7e:	8562                	mv	a0,s8
   13b80:	fbcff0ef          	jal	ra,1333c <emul>
   13b84:	008d043b          	addw	s0,s10,s0
   13b88:	04d1                	addi	s1,s1,20
   13b8a:	001d5d13          	srli	s10,s10,0x1
   13b8e:	fbb49ee3          	bne	s1,s11,13b4a <_ldtoa_r+0x3f4>
   13b92:	bbb9                	j	138f0 <_ldtoa_r+0x19a>
   13b94:	8526                	mv	a0,s1
   13b96:	198c                	addi	a1,sp,240
   13b98:	e15fe0ef          	jal	ra,129ac <emov>
   13b9c:	1988                	addi	a0,sp,240
   13b9e:	83cff0ef          	jal	ra,12bda <eisnan>
   13ba2:	fd15                	bnez	a0,13ade <_ldtoa_r+0x388>
   13ba4:	10215783          	lhu	a5,258(sp)
   13ba8:	7761                	lui	a4,0xffff8
   13baa:	8fb9                	xor	a5,a5,a4
   13bac:	10f11123          	sh	a5,258(sp)
   13bb0:	b73d                	j	13ade <_ldtoa_r+0x388>
   13bb2:	ee051ce3          	bnez	a0,13aaa <_ldtoa_r+0x354>
   13bb6:	0a0c                	addi	a1,sp,272
   13bb8:	8526                	mv	a0,s1
   13bba:	866ff0ef          	jal	ra,12c20 <emovi>
   13bbe:	1a0c                	addi	a1,sp,304
   13bc0:	1988                	addi	a0,sp,240
   13bc2:	85eff0ef          	jal	ra,12c20 <emovi>
   13bc6:	11015703          	lhu	a4,272(sp)
   13bca:	13215d83          	lhu	s11,306(sp)
   13bce:	11215783          	lhu	a5,274(sp)
   13bd2:	fff74713          	not	a4,a4
   13bd6:	1742                	slli	a4,a4,0x30
   13bd8:	9341                	srli	a4,a4,0x30
   13bda:	10e11823          	sh	a4,272(sp)
   13bde:	41b787b3          	sub	a5,a5,s11
   13be2:	06f05363          	blez	a5,13c48 <_ldtoa_r+0x4f2>
   13be6:	0a8c                	addi	a1,sp,336
   13be8:	1a08                	addi	a0,sp,304
   13bea:	fc3e                	sd	a5,56(sp)
   13bec:	de7fe0ef          	jal	ra,129d2 <emovz>
   13bf0:	1a0c                	addi	a1,sp,304
   13bf2:	0a08                	addi	a0,sp,272
   13bf4:	ddffe0ef          	jal	ra,129d2 <emovz>
   13bf8:	0a0c                	addi	a1,sp,272
   13bfa:	0a88                	addi	a0,sp,336
   13bfc:	dd7fe0ef          	jal	ra,129d2 <emovz>
   13c00:	77e2                	ld	a5,56(sp)
   13c02:	13215d83          	lhu	s11,306(sp)
   13c06:	40f007b3          	neg	a5,a5
   13c0a:	f6f00713          	li	a4,-145
   13c0e:	06e7c763          	blt	a5,a4,13c7c <_ldtoa_r+0x526>
   13c12:	85be                	mv	a1,a5
   13c14:	0a08                	addi	a0,sp,272
   13c16:	98aff0ef          	jal	ra,12da0 <eshift.part.3>
   13c1a:	882a                	mv	a6,a0
   13c1c:	11015703          	lhu	a4,272(sp)
   13c20:	13015783          	lhu	a5,304(sp)
   13c24:	fc42                	sd	a6,56(sp)
   13c26:	1a0c                	addi	a1,sp,304
   13c28:	0a08                	addi	a0,sp,272
   13c2a:	08f71f63          	bne	a4,a5,13cc8 <_ldtoa_r+0x572>
   13c2e:	ee9fe0ef          	jal	ra,12b16 <eaddm>
   13c32:	7862                	ld	a6,56(sp)
   13c34:	0b1c                	addi	a5,sp,400
   13c36:	04000713          	li	a4,64
   13c3a:	86ee                	mv	a3,s11
   13c3c:	8662                	mv	a2,s8
   13c3e:	85c2                	mv	a1,a6
   13c40:	1a08                	addi	a0,sp,304
   13c42:	c00ff0ef          	jal	ra,13042 <emdnorm>
   13c46:	a81d                	j	13c7c <_ldtoa_r+0x526>
   13c48:	f3e9                	bnez	a5,13c0a <_ldtoa_r+0x4b4>
   13c4a:	1a0c                	addi	a1,sp,304
   13c4c:	0a08                	addi	a0,sp,272
   13c4e:	fc3a                	sd	a4,56(sp)
   13c50:	d9ffe0ef          	jal	ra,129ee <ecmpm>
   13c54:	e929                	bnez	a0,13ca6 <_ldtoa_r+0x550>
   13c56:	13015783          	lhu	a5,304(sp)
   13c5a:	7762                	ld	a4,56(sp)
   13c5c:	00e78663          	beq	a5,a4,13c68 <_ldtoa_r+0x512>
   13c60:	1988                	addi	a0,sp,240
   13c62:	d3bfe0ef          	jal	ra,1299c <eclear>
   13c66:	bda5                	j	13ade <_ldtoa_r+0x388>
   13c68:	000d9f63          	bnez	s11,13c86 <_ldtoa_r+0x530>
   13c6c:	13611703          	lh	a4,310(sp)
   13c70:	4781                	li	a5,0
   13c72:	00074b63          	bltz	a4,13c88 <_ldtoa_r+0x532>
   13c76:	1a08                	addi	a0,sp,304
   13c78:	dd9fe0ef          	jal	ra,12a50 <eshup1>
   13c7c:	198c                	addi	a1,sp,240
   13c7e:	1a08                	addi	a0,sp,304
   13c80:	ab6ff0ef          	jal	ra,12f36 <emovo.isra.6>
   13c84:	bda9                	j	13ade <_ldtoa_r+0x388>
   13c86:	4781                	li	a5,0
   13c88:	4759                	li	a4,22
   13c8a:	1a14                	addi	a3,sp,304
   13c8c:	00f68633          	add	a2,a3,a5
   13c90:	00265603          	lhu	a2,2(a2)
   13c94:	c609                	beqz	a2,13c9e <_ldtoa_r+0x548>
   13c96:	0d85                	addi	s11,s11,1
   13c98:	13b11923          	sh	s11,306(sp)
   13c9c:	b7c5                	j	13c7c <_ldtoa_r+0x526>
   13c9e:	0789                	addi	a5,a5,2
   13ca0:	fee795e3          	bne	a5,a4,13c8a <_ldtoa_r+0x534>
   13ca4:	bfd5                	j	13c98 <_ldtoa_r+0x542>
   13ca6:	4801                	li	a6,0
   13ca8:	f6a05ae3          	blez	a0,13c1c <_ldtoa_r+0x4c6>
   13cac:	0a8c                	addi	a1,sp,336
   13cae:	1a08                	addi	a0,sp,304
   13cb0:	d23fe0ef          	jal	ra,129d2 <emovz>
   13cb4:	1a0c                	addi	a1,sp,304
   13cb6:	0a08                	addi	a0,sp,272
   13cb8:	d1bfe0ef          	jal	ra,129d2 <emovz>
   13cbc:	0a0c                	addi	a1,sp,272
   13cbe:	0a88                	addi	a0,sp,336
   13cc0:	d13fe0ef          	jal	ra,129d2 <emovz>
   13cc4:	8862                	mv	a6,s8
   13cc6:	bf99                	j	13c1c <_ldtoa_r+0x4c6>
   13cc8:	e77fe0ef          	jal	ra,12b3e <esubm>
   13ccc:	4c05                	li	s8,1
   13cce:	b795                	j	13c32 <_ldtoa_r+0x4dc>
   13cd0:	0789                	addi	a5,a5,2
   13cd2:	4749                	li	a4,18
   13cd4:	d4e798e3          	bne	a5,a4,13a24 <_ldtoa_r+0x2ce>
   13cd8:	b519                	j	13ade <_ldtoa_r+0x388>
   13cda:	0a215783          	lhu	a5,162(sp)
   13cde:	12098c13          	addi	s8,s3,288
   13ce2:	cfad                	beqz	a5,13d5c <_ldtoa_r+0x606>
   13ce4:	198c                	addi	a1,sp,240
   13ce6:	0908                	addi	a0,sp,144
   13ce8:	6c11                	lui	s8,0x4
   13cea:	f37fe0ef          	jal	ra,12c20 <emovi>
   13cee:	1c79                	addi	s8,s8,-2
   13cf0:	fd500d13          	li	s10,-43
   13cf4:	10815783          	lhu	a5,264(sp)
   13cf8:	8b9d                	andi	a5,a5,7
   13cfa:	e7a9                	bnez	a5,13d44 <_ldtoa_r+0x5ee>
   13cfc:	098c                	addi	a1,sp,208
   13cfe:	1988                	addi	a0,sp,240
   13d00:	cd3fe0ef          	jal	ra,129d2 <emovz>
   13d04:	0988                	addi	a0,sp,208
   13d06:	d13fe0ef          	jal	ra,12a18 <eshdn1>
   13d0a:	0988                	addi	a0,sp,208
   13d0c:	d0dfe0ef          	jal	ra,12a18 <eshdn1>
   13d10:	098c                	addi	a1,sp,208
   13d12:	1988                	addi	a0,sp,240
   13d14:	e03fe0ef          	jal	ra,12b16 <eaddm>
   13d18:	0d215783          	lhu	a5,210(sp)
   13d1c:	278d                	addiw	a5,a5,3
   13d1e:	0cf11923          	sh	a5,210(sp)
   13d22:	0d415783          	lhu	a5,212(sp)
   13d26:	efdd                	bnez	a5,13de4 <_ldtoa_r+0x68e>
   13d28:	0e815783          	lhu	a5,232(sp)
   13d2c:	ef81                	bnez	a5,13d44 <_ldtoa_r+0x5ee>
   13d2e:	0d215783          	lhu	a5,210(sp)
   13d32:	00fc6963          	bltu	s8,a5,13d44 <_ldtoa_r+0x5ee>
   13d36:	198c                	addi	a1,sp,240
   13d38:	0988                	addi	a0,sp,208
   13d3a:	347d                	addiw	s0,s0,-1
   13d3c:	c97fe0ef          	jal	ra,129d2 <emovz>
   13d40:	fba41ae3          	bne	s0,s10,13cf4 <_ldtoa_r+0x59e>
   13d44:	090c                	addi	a1,sp,144
   13d46:	1988                	addi	a0,sp,240
   13d48:	9eeff0ef          	jal	ra,12f36 <emovo.isra.6>
   13d4c:	a821                	j	13d64 <_ldtoa_r+0x60e>
   13d4e:	0910                	addi	a2,sp,144
   13d50:	0b14                	addi	a3,sp,400
   13d52:	85b2                	mv	a1,a2
   13d54:	8562                	mv	a0,s8
   13d56:	de6ff0ef          	jal	ra,1333c <emul>
   13d5a:	347d                	addiw	s0,s0,-1
   13d5c:	0a011783          	lh	a5,160(sp)
   13d60:	fe07d7e3          	bgez	a5,13d4e <_ldtoa_r+0x5f8>
   13d64:	198c                	addi	a1,sp,240
   13d66:	0908                	addi	a0,sp,144
   13d68:	c45fe0ef          	jal	ra,129ac <emov>
   13d6c:	190c                	addi	a1,sp,176
   13d6e:	8526                	mv	a0,s1
   13d70:	c3dfe0ef          	jal	ra,129ac <emov>
   13d74:	16098793          	addi	a5,s3,352
   13d78:	4d01                	li	s10,0
   13d7a:	7c7d                	lui	s8,0xfffff
   13d7c:	e83e                	sd	a5,16(sp)
   13d7e:	4d89                	li	s11,2
   13d80:	67e9                	lui	a5,0x1a
   13d82:	f1878793          	addi	a5,a5,-232 # 19f18 <etens>
   13d86:	01a789b3          	add	s3,a5,s10
   13d8a:	67c2                	ld	a5,16(sp)
   13d8c:	198c                	addi	a1,sp,240
   13d8e:	8526                	mv	a0,s1
   13d90:	01a78733          	add	a4,a5,s10
   13d94:	f43a                	sd	a4,40(sp)
   13d96:	f25fe0ef          	jal	ra,12cba <ecmp>
   13d9a:	7722                	ld	a4,40(sp)
   13d9c:	02a05d63          	blez	a0,13dd6 <_ldtoa_r+0x680>
   13da0:	198c                	addi	a1,sp,240
   13da2:	853a                	mv	a0,a4
   13da4:	f17fe0ef          	jal	ra,12cba <ecmp>
   13da8:	02054063          	bltz	a0,13dc8 <_ldtoa_r+0x672>
   13dac:	1990                	addi	a2,sp,240
   13dae:	85b2                	mv	a1,a2
   13db0:	0b14                	addi	a3,sp,400
   13db2:	854e                	mv	a0,s3
   13db4:	d88ff0ef          	jal	ra,1333c <emul>
   13db8:	1910                	addi	a2,sp,176
   13dba:	0b14                	addi	a3,sp,400
   13dbc:	85b2                	mv	a1,a2
   13dbe:	854e                	mv	a0,s3
   13dc0:	d7cff0ef          	jal	ra,1333c <emul>
   13dc4:	008c043b          	addw	s0,s8,s0
   13dc8:	0d51                	addi	s10,s10,20
   13dca:	10400793          	li	a5,260
   13dce:	03bc4c3b          	divw	s8,s8,s11
   13dd2:	fafd17e3          	bne	s10,a5,13d80 <_ldtoa_r+0x62a>
   13dd6:	1910                	addi	a2,sp,176
   13dd8:	0b14                	addi	a3,sp,400
   13dda:	85a6                	mv	a1,s1
   13ddc:	8532                	mv	a0,a2
   13dde:	f2cff0ef          	jal	ra,1350a <ediv>
   13de2:	b639                	j	138f0 <_ldtoa_r+0x19a>
   13de4:	0988                	addi	a0,sp,208
   13de6:	c33fe0ef          	jal	ra,12a18 <eshdn1>
   13dea:	0d215783          	lhu	a5,210(sp)
   13dee:	2785                	addiw	a5,a5,1
   13df0:	b73d                	j	13d1e <_ldtoa_r+0x5c8>
   13df2:	0908                	addi	a0,sp,144
   13df4:	c5dfe0ef          	jal	ra,12a50 <eshup1>
   13df8:	098c                	addi	a1,sp,208
   13dfa:	0908                	addi	a0,sp,144
   13dfc:	bd7fe0ef          	jal	ra,129d2 <emovz>
   13e00:	0988                	addi	a0,sp,208
   13e02:	c4ffe0ef          	jal	ra,12a50 <eshup1>
   13e06:	0988                	addi	a0,sp,208
   13e08:	c49fe0ef          	jal	ra,12a50 <eshup1>
   13e0c:	090c                	addi	a1,sp,144
   13e0e:	0988                	addi	a0,sp,208
   13e10:	d07fe0ef          	jal	ra,12b16 <eaddm>
   13e14:	0b10                	addi	a2,sp,400
   13e16:	090c                	addi	a1,sp,144
   13e18:	1908                	addi	a0,sp,176
   13e1a:	c8eff0ef          	jal	ra,132a8 <eiremain>
   13e1e:	347d                	addiw	s0,s0,-1
   13e20:	1dc15483          	lhu	s1,476(sp)
   13e24:	bced                	j	1391e <_ldtoa_r+0x1c8>
   13e26:	02000793          	li	a5,32
   13e2a:	b639                	j	13938 <_ldtoa_r+0x1e2>
   13e2c:	0304849b          	addiw	s1,s1,48
   13e30:	02e00793          	li	a5,46
   13e34:	149108a3          	sb	s1,337(sp)
   13e38:	14f10923          	sb	a5,338(sp)
   13e3c:	15310c13          	addi	s8,sp,339
   13e40:	84e2                	mv	s1,s8
   13e42:	418487bb          	subw	a5,s1,s8
   13e46:	04f9d063          	ble	a5,s3,13e86 <_ldtoa_r+0x730>
   13e4a:	1dc15783          	lhu	a5,476(sp)
   13e4e:	4711                	li	a4,4
   13e50:	fff48c13          	addi	s8,s1,-1
   13e54:	b2f757e3          	ble	a5,a4,13982 <_ldtoa_r+0x22c>
   13e58:	4715                	li	a4,5
   13e5a:	06e78463          	beq	a5,a4,13ec2 <_ldtoa_r+0x76c>
   13e5e:	87e2                	mv	a5,s8
   13e60:	02e00613          	li	a2,46
   13e64:	03800593          	li	a1,56
   13e68:	03000693          	li	a3,48
   13e6c:	17fd                	addi	a5,a5,-1
   13e6e:	0007c703          	lbu	a4,0(a5)
   13e72:	07f77713          	andi	a4,a4,127
   13e76:	0809d163          	bgez	s3,13ef8 <_ldtoa_r+0x7a2>
   13e7a:	03100713          	li	a4,49
   13e7e:	00e78023          	sb	a4,0(a5)
   13e82:	2405                	addiw	s0,s0,1
   13e84:	bcfd                	j	13982 <_ldtoa_r+0x22c>
   13e86:	0908                	addi	a0,sp,144
   13e88:	bc9fe0ef          	jal	ra,12a50 <eshup1>
   13e8c:	098c                	addi	a1,sp,208
   13e8e:	0908                	addi	a0,sp,144
   13e90:	b43fe0ef          	jal	ra,129d2 <emovz>
   13e94:	0988                	addi	a0,sp,208
   13e96:	bbbfe0ef          	jal	ra,12a50 <eshup1>
   13e9a:	0988                	addi	a0,sp,208
   13e9c:	bb5fe0ef          	jal	ra,12a50 <eshup1>
   13ea0:	090c                	addi	a1,sp,144
   13ea2:	0988                	addi	a0,sp,208
   13ea4:	c73fe0ef          	jal	ra,12b16 <eaddm>
   13ea8:	0b10                	addi	a2,sp,400
   13eaa:	090c                	addi	a1,sp,144
   13eac:	1908                	addi	a0,sp,176
   13eae:	bfaff0ef          	jal	ra,132a8 <eiremain>
   13eb2:	1dc14783          	lbu	a5,476(sp)
   13eb6:	0485                	addi	s1,s1,1
   13eb8:	0307879b          	addiw	a5,a5,48
   13ebc:	fef48fa3          	sb	a5,-1(s1)
   13ec0:	b749                	j	13e42 <_ldtoa_r+0x6ec>
   13ec2:	190c                	addi	a1,sp,176
   13ec4:	0908                	addi	a0,sp,144
   13ec6:	870ff0ef          	jal	ra,12f36 <emovo.isra.6>
   13eca:	ee8b0593          	addi	a1,s6,-280
   13ece:	1908                	addi	a0,sp,176
   13ed0:	debfe0ef          	jal	ra,12cba <ecmp>
   13ed4:	f549                	bnez	a0,13e5e <_ldtoa_r+0x708>
   13ed6:	aa09c6e3          	bltz	s3,13982 <_ldtoa_r+0x22c>
   13eda:	ffe4c783          	lbu	a5,-2(s1)
   13ede:	fd278793          	addi	a5,a5,-46
   13ee2:	0017b793          	seqz	a5,a5
   13ee6:	fff7c793          	not	a5,a5
   13eea:	97e2                	add	a5,a5,s8
   13eec:	0007c783          	lbu	a5,0(a5)
   13ef0:	8b85                	andi	a5,a5,1
   13ef2:	a80788e3          	beqz	a5,13982 <_ldtoa_r+0x22c>
   13ef6:	b7a5                	j	13e5e <_ldtoa_r+0x708>
   13ef8:	02c71063          	bne	a4,a2,13f18 <_ldtoa_r+0x7c2>
   13efc:	fff7c703          	lbu	a4,-1(a5)
   13f00:	03800693          	li	a3,56
   13f04:	00e6e663          	bltu	a3,a4,13f10 <_ldtoa_r+0x7ba>
   13f08:	2705                	addiw	a4,a4,1
   13f0a:	fee78fa3          	sb	a4,-1(a5)
   13f0e:	bc95                	j	13982 <_ldtoa_r+0x22c>
   13f10:	2405                	addiw	s0,s0,1
   13f12:	03100713          	li	a4,49
   13f16:	bfd5                	j	13f0a <_ldtoa_r+0x7b4>
   13f18:	00e5e663          	bltu	a1,a4,13f24 <_ldtoa_r+0x7ce>
   13f1c:	2705                	addiw	a4,a4,1
   13f1e:	00e78023          	sb	a4,0(a5)
   13f22:	b485                	j	13982 <_ldtoa_r+0x22c>
   13f24:	00d78023          	sb	a3,0(a5)
   13f28:	b791                	j	13e6c <_ldtoa_r+0x716>
   13f2a:	2405                	addiw	s0,s0,1
   13f2c:	008ca023          	sw	s0,0(s9)
   13f30:	87ce                	mv	a5,s3
   13f32:	02e00693          	li	a3,46
   13f36:	0007c703          	lbu	a4,0(a5)
   13f3a:	e701                	bnez	a4,13f42 <_ldtoa_r+0x7ec>
   13f3c:	04500713          	li	a4,69
   13f40:	a839                	j	13f5e <_ldtoa_r+0x808>
   13f42:	00d70963          	beq	a4,a3,13f54 <_ldtoa_r+0x7fe>
   13f46:	0785                	addi	a5,a5,1
   13f48:	b7fd                	j	13f36 <_ldtoa_r+0x7e0>
   13f4a:	0017c703          	lbu	a4,1(a5)
   13f4e:	0785                	addi	a5,a5,1
   13f50:	fee78fa3          	sb	a4,-1(a5)
   13f54:	0007c703          	lbu	a4,0(a5)
   13f58:	fb6d                	bnez	a4,13f4a <_ldtoa_r+0x7f4>
   13f5a:	b7cd                	j	13f3c <_ldtoa_r+0x7e6>
   13f5c:	17fd                	addi	a5,a5,-1
   13f5e:	0007c683          	lbu	a3,0(a5)
   13f62:	00e68463          	beq	a3,a4,13f6a <_ldtoa_r+0x814>
   13f66:	fef9ebe3          	bltu	s3,a5,13f5c <_ldtoa_r+0x806>
   13f6a:	00078023          	sb	zero,0(a5)
   13f6e:	8cfff06f          	j	1383c <_ldtoa_r+0xe6>
   13f72:	0785                	addi	a5,a5,1
   13f74:	8d3ff06f          	j	13846 <_ldtoa_r+0xf0>
   13f78:	8436                	mv	s0,a3
   13f7a:	8dbff06f          	j	13854 <_ldtoa_r+0xfe>
   13f7e:	147d                	addi	s0,s0,-1
   13f80:	00040023          	sb	zero,0(s0)
   13f84:	fff44703          	lbu	a4,-1(s0)
   13f88:	00d71663          	bne	a4,a3,13f94 <_ldtoa_r+0x83e>
   13f8c:	41340733          	sub	a4,s0,s3
   13f90:	fee7c7e3          	blt	a5,a4,13f7e <_ldtoa_r+0x828>
   13f94:	478d                	li	a5,3
   13f96:	0cfb9963          	bne	s7,a5,14068 <_ldtoa_r+0x912>
   13f9a:	1a012783          	lw	a5,416(sp)
   13f9e:	0127893b          	addw	s2,a5,s2
   13fa2:	00095763          	bgez	s2,13fb0 <_ldtoa_r+0x85a>
   13fa6:	14010823          	sb	zero,336(sp)
   13faa:	000ca023          	sw	zero,0(s9)
   13fae:	844e                	mv	s0,s3
   13fb0:	000ca783          	lw	a5,0(s9)
   13fb4:	01578abb          	addw	s5,a5,s5
   13fb8:	2a8d                	addiw	s5,s5,3
   13fba:	060a2423          	sw	zero,104(s4)
   13fbe:	4791                	li	a5,4
   13fc0:	01c78713          	addi	a4,a5,28
   13fc4:	068a2583          	lw	a1,104(s4)
   13fc8:	04eafc63          	bleu	a4,s5,14020 <_ldtoa_r+0x8ca>
   13fcc:	8552                	mv	a0,s4
   13fce:	2f6000ef          	jal	ra,142c4 <_Balloc>
   13fd2:	06aa3023          	sd	a0,96(s4)
   13fd6:	85ce                	mv	a1,s3
   13fd8:	84aa                	mv	s1,a0
   13fda:	078010ef          	jal	ra,15052 <strcpy>
   13fde:	67e2                	ld	a5,24(sp)
   13fe0:	c789                	beqz	a5,13fea <_ldtoa_r+0x894>
   13fe2:	41340433          	sub	s0,s0,s3
   13fe6:	9426                	add	s0,s0,s1
   13fe8:	e380                	sd	s0,0(a5)
   13fea:	24813083          	ld	ra,584(sp)
   13fee:	24013403          	ld	s0,576(sp)
   13ff2:	8526                	mv	a0,s1
   13ff4:	23013903          	ld	s2,560(sp)
   13ff8:	23813483          	ld	s1,568(sp)
   13ffc:	22813983          	ld	s3,552(sp)
   14000:	22013a03          	ld	s4,544(sp)
   14004:	21813a83          	ld	s5,536(sp)
   14008:	21013b03          	ld	s6,528(sp)
   1400c:	20813b83          	ld	s7,520(sp)
   14010:	20013c03          	ld	s8,512(sp)
   14014:	7cfe                	ld	s9,504(sp)
   14016:	7d5e                	ld	s10,496(sp)
   14018:	7dbe                	ld	s11,488(sp)
   1401a:	25010113          	addi	sp,sp,592
   1401e:	8082                	ret
   14020:	2585                	addiw	a1,a1,1
   14022:	06ba2423          	sw	a1,104(s4)
   14026:	0017979b          	slliw	a5,a5,0x1
   1402a:	bf59                	j	13fc0 <_ldtoa_r+0x86a>
   1402c:	67a1                	lui	a5,0x8
   1402e:	17fd                	addi	a5,a5,-1
   14030:	96f717e3          	bne	a4,a5,1399e <_ldtoa_r+0x248>
   14034:	67a2                	ld	a5,8(sp)
   14036:	94078fe3          	beqz	a5,13994 <_ldtoa_r+0x23e>
   1403a:	0001a5b7          	lui	a1,0x1a
   1403e:	15858593          	addi	a1,a1,344 # 1a158 <emtens+0x110>
   14042:	fc4ff06f          	j	13806 <_ldtoa_r+0xb0>
   14046:	47a9                	li	a5,10
   14048:	02a00993          	li	s3,42
   1404c:	def490e3          	bne	s1,a5,13e2c <_ldtoa_r+0x6d6>
   14050:	03100793          	li	a5,49
   14054:	14f108a3          	sb	a5,337(sp)
   14058:	02e00793          	li	a5,46
   1405c:	14f10923          	sb	a5,338(sp)
   14060:	02a00993          	li	s3,42
   14064:	90bff06f          	j	1396e <_ldtoa_r+0x218>
   14068:	2aa5                	addiw	s5,s5,9
   1406a:	bf81                	j	13fba <_ldtoa_r+0x864>

000000000001406c <_ldcheck>:
   1406c:	611c                	ld	a5,0(a0)
   1406e:	7139                	addi	sp,sp,-64
   14070:	080c                	addi	a1,sp,16
   14072:	e03e                	sd	a5,0(sp)
   14074:	651c                	ld	a5,8(a0)
   14076:	850a                	mv	a0,sp
   14078:	fc06                	sd	ra,56(sp)
   1407a:	e43e                	sd	a5,8(sp)
   1407c:	f0dfe0ef          	jal	ra,12f88 <e113toe.isra.8>
   14080:	02215783          	lhu	a5,34(sp)
   14084:	4501                	li	a0,0
   14086:	fff7c793          	not	a5,a5
   1408a:	03179713          	slli	a4,a5,0x31
   1408e:	e719                	bnez	a4,1409c <_ldcheck+0x30>
   14090:	0808                	addi	a0,sp,16
   14092:	b49fe0ef          	jal	ra,12bda <eisnan>
   14096:	00153513          	seqz	a0,a0
   1409a:	0505                	addi	a0,a0,1
   1409c:	70e2                	ld	ra,56(sp)
   1409e:	6121                	addi	sp,sp,64
   140a0:	8082                	ret

00000000000140a2 <__localeconv_l>:
   140a2:	10050513          	addi	a0,a0,256
   140a6:	8082                	ret

00000000000140a8 <_localeconv_r>:
   140a8:	8301b783          	ld	a5,-2000(gp) # 1cb08 <_impure_ptr>
   140ac:	67a8                	ld	a0,72(a5)
   140ae:	e501                	bnez	a0,140b6 <_localeconv_r+0xe>
   140b0:	6575                	lui	a0,0x1d
   140b2:	93050513          	addi	a0,a0,-1744 # 1c930 <__global_locale>
   140b6:	10050513          	addi	a0,a0,256
   140ba:	8082                	ret

00000000000140bc <localeconv>:
   140bc:	8301b783          	ld	a5,-2000(gp) # 1cb08 <_impure_ptr>
   140c0:	67a8                	ld	a0,72(a5)
   140c2:	e501                	bnez	a0,140ca <localeconv+0xe>
   140c4:	6575                	lui	a0,0x1d
   140c6:	93050513          	addi	a0,a0,-1744 # 1c930 <__global_locale>
   140ca:	10050513          	addi	a0,a0,256
   140ce:	8082                	ret

00000000000140d0 <_setlocale_r>:
   140d0:	1101                	addi	sp,sp,-32
   140d2:	e426                	sd	s1,8(sp)
   140d4:	ec06                	sd	ra,24(sp)
   140d6:	e822                	sd	s0,16(sp)
   140d8:	0001a4b7          	lui	s1,0x1a
   140dc:	ca0d                	beqz	a2,1410e <_setlocale_r+0x3e>
   140de:	0001a5b7          	lui	a1,0x1a
   140e2:	19058593          	addi	a1,a1,400 # 1a190 <emtens+0x148>
   140e6:	8532                	mv	a0,a2
   140e8:	8432                	mv	s0,a2
   140ea:	67f000ef          	jal	ra,14f68 <strcmp>
   140ee:	c105                	beqz	a0,1410e <_setlocale_r+0x3e>
   140f0:	18848593          	addi	a1,s1,392 # 1a188 <emtens+0x140>
   140f4:	8522                	mv	a0,s0
   140f6:	673000ef          	jal	ra,14f68 <strcmp>
   140fa:	c911                	beqz	a0,1410e <_setlocale_r+0x3e>
   140fc:	0001a5b7          	lui	a1,0x1a
   14100:	ed858593          	addi	a1,a1,-296 # 19ed8 <zeroes.4441+0x88>
   14104:	8522                	mv	a0,s0
   14106:	663000ef          	jal	ra,14f68 <strcmp>
   1410a:	4781                	li	a5,0
   1410c:	e119                	bnez	a0,14112 <_setlocale_r+0x42>
   1410e:	18848793          	addi	a5,s1,392
   14112:	60e2                	ld	ra,24(sp)
   14114:	6442                	ld	s0,16(sp)
   14116:	64a2                	ld	s1,8(sp)
   14118:	853e                	mv	a0,a5
   1411a:	6105                	addi	sp,sp,32
   1411c:	8082                	ret

000000000001411e <__locale_mb_cur_max>:
   1411e:	8301b783          	ld	a5,-2000(gp) # 1cb08 <_impure_ptr>
   14122:	67bc                	ld	a5,72(a5)
   14124:	e781                	bnez	a5,1412c <__locale_mb_cur_max+0xe>
   14126:	67f5                	lui	a5,0x1d
   14128:	93078793          	addi	a5,a5,-1744 # 1c930 <__global_locale>
   1412c:	1607c503          	lbu	a0,352(a5)
   14130:	8082                	ret

0000000000014132 <__locale_ctype_ptr_l>:
   14132:	7d68                	ld	a0,248(a0)
   14134:	8082                	ret

0000000000014136 <__locale_ctype_ptr>:
   14136:	8301b783          	ld	a5,-2000(gp) # 1cb08 <_impure_ptr>
   1413a:	67bc                	ld	a5,72(a5)
   1413c:	e781                	bnez	a5,14144 <__locale_ctype_ptr+0xe>
   1413e:	67f5                	lui	a5,0x1d
   14140:	93078793          	addi	a5,a5,-1744 # 1c930 <__global_locale>
   14144:	7fe8                	ld	a0,248(a5)
   14146:	8082                	ret

0000000000014148 <setlocale>:
   14148:	862e                	mv	a2,a1
   1414a:	85aa                	mv	a1,a0
   1414c:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   14150:	f81ff06f          	j	140d0 <_setlocale_r>

0000000000014154 <__swhatbuf_r>:
   14154:	7135                	addi	sp,sp,-160
   14156:	e526                	sd	s1,136(sp)
   14158:	84ae                	mv	s1,a1
   1415a:	01259583          	lh	a1,18(a1)
   1415e:	e922                	sd	s0,144(sp)
   14160:	ed06                	sd	ra,152(sp)
   14162:	8432                	mv	s0,a2
   14164:	0005dc63          	bgez	a1,1417c <__swhatbuf_r+0x28>
   14168:	0104d783          	lhu	a5,16(s1)
   1416c:	0006a023          	sw	zero,0(a3)
   14170:	0807f793          	andi	a5,a5,128
   14174:	eb95                	bnez	a5,141a8 <__swhatbuf_r+0x54>
   14176:	40000793          	li	a5,1024
   1417a:	a80d                	j	141ac <__swhatbuf_r+0x58>
   1417c:	0830                	addi	a2,sp,24
   1417e:	e436                	sd	a3,8(sp)
   14180:	0f2030ef          	jal	ra,17272 <_fstat_r>
   14184:	66a2                	ld	a3,8(sp)
   14186:	fe0541e3          	bltz	a0,14168 <__swhatbuf_r+0x14>
   1418a:	47f2                	lw	a5,28(sp)
   1418c:	673d                	lui	a4,0xf
   1418e:	6505                	lui	a0,0x1
   14190:	8ff9                	and	a5,a5,a4
   14192:	6709                	lui	a4,0x2
   14194:	8f99                	sub	a5,a5,a4
   14196:	0017b793          	seqz	a5,a5
   1419a:	c29c                	sw	a5,0(a3)
   1419c:	40000793          	li	a5,1024
   141a0:	e01c                	sd	a5,0(s0)
   141a2:	80050513          	addi	a0,a0,-2048 # 800 <_start-0xf8b0>
   141a6:	a029                	j	141b0 <__swhatbuf_r+0x5c>
   141a8:	04000793          	li	a5,64
   141ac:	e01c                	sd	a5,0(s0)
   141ae:	4501                	li	a0,0
   141b0:	60ea                	ld	ra,152(sp)
   141b2:	644a                	ld	s0,144(sp)
   141b4:	64aa                	ld	s1,136(sp)
   141b6:	610d                	addi	sp,sp,160
   141b8:	8082                	ret

00000000000141ba <__smakebuf_r>:
   141ba:	0105d783          	lhu	a5,16(a1)
   141be:	7179                	addi	sp,sp,-48
   141c0:	f022                	sd	s0,32(sp)
   141c2:	f406                	sd	ra,40(sp)
   141c4:	ec26                	sd	s1,24(sp)
   141c6:	e84a                	sd	s2,16(sp)
   141c8:	8b89                	andi	a5,a5,2
   141ca:	842e                	mv	s0,a1
   141cc:	cf89                	beqz	a5,141e6 <__smakebuf_r+0x2c>
   141ce:	07740793          	addi	a5,s0,119
   141d2:	e01c                	sd	a5,0(s0)
   141d4:	ec1c                	sd	a5,24(s0)
   141d6:	4785                	li	a5,1
   141d8:	d01c                	sw	a5,32(s0)
   141da:	70a2                	ld	ra,40(sp)
   141dc:	7402                	ld	s0,32(sp)
   141de:	64e2                	ld	s1,24(sp)
   141e0:	6942                	ld	s2,16(sp)
   141e2:	6145                	addi	sp,sp,48
   141e4:	8082                	ret
   141e6:	0054                	addi	a3,sp,4
   141e8:	0030                	addi	a2,sp,8
   141ea:	84aa                	mv	s1,a0
   141ec:	f69ff0ef          	jal	ra,14154 <__swhatbuf_r>
   141f0:	65a2                	ld	a1,8(sp)
   141f2:	892a                	mv	s2,a0
   141f4:	8526                	mv	a0,s1
   141f6:	a96fc0ef          	jal	ra,1048c <_malloc_r>
   141fa:	ed01                	bnez	a0,14212 <__smakebuf_r+0x58>
   141fc:	01041783          	lh	a5,16(s0)
   14200:	2007f713          	andi	a4,a5,512
   14204:	fb79                	bnez	a4,141da <__smakebuf_r+0x20>
   14206:	9bf1                	andi	a5,a5,-4
   14208:	0027e793          	ori	a5,a5,2
   1420c:	00f41823          	sh	a5,16(s0)
   14210:	bf7d                	j	141ce <__smakebuf_r+0x14>
   14212:	000127b7          	lui	a5,0x12
   14216:	48278793          	addi	a5,a5,1154 # 12482 <_cleanup_r>
   1421a:	ecbc                	sd	a5,88(s1)
   1421c:	01045783          	lhu	a5,16(s0)
   14220:	e008                	sd	a0,0(s0)
   14222:	ec08                	sd	a0,24(s0)
   14224:	0807e793          	ori	a5,a5,128
   14228:	00f41823          	sh	a5,16(s0)
   1422c:	67a2                	ld	a5,8(sp)
   1422e:	d01c                	sw	a5,32(s0)
   14230:	4792                	lw	a5,4(sp)
   14232:	cf91                	beqz	a5,1424e <__smakebuf_r+0x94>
   14234:	01241583          	lh	a1,18(s0)
   14238:	8526                	mv	a0,s1
   1423a:	350030ef          	jal	ra,1758a <_isatty_r>
   1423e:	c901                	beqz	a0,1424e <__smakebuf_r+0x94>
   14240:	01045783          	lhu	a5,16(s0)
   14244:	9bf1                	andi	a5,a5,-4
   14246:	0017e793          	ori	a5,a5,1
   1424a:	00f41823          	sh	a5,16(s0)
   1424e:	01045783          	lhu	a5,16(s0)
   14252:	00f96933          	or	s2,s2,a5
   14256:	01241823          	sh	s2,16(s0)
   1425a:	b741                	j	141da <__smakebuf_r+0x20>

000000000001425c <_mbtowc_r>:
   1425c:	8301b783          	ld	a5,-2000(gp) # 1cb08 <_impure_ptr>
   14260:	67bc                	ld	a5,72(a5)
   14262:	e781                	bnez	a5,1426a <_mbtowc_r+0xe>
   14264:	67f5                	lui	a5,0x1d
   14266:	93078793          	addi	a5,a5,-1744 # 1c930 <__global_locale>
   1426a:	0e87b303          	ld	t1,232(a5)
   1426e:	8302                	jr	t1

0000000000014270 <__ascii_mbtowc>:
   14270:	e185                	bnez	a1,14290 <__ascii_mbtowc+0x20>
   14272:	1141                	addi	sp,sp,-16
   14274:	006c                	addi	a1,sp,12
   14276:	4501                	li	a0,0
   14278:	ca11                	beqz	a2,1428c <__ascii_mbtowc+0x1c>
   1427a:	5579                	li	a0,-2
   1427c:	ca81                	beqz	a3,1428c <__ascii_mbtowc+0x1c>
   1427e:	00064783          	lbu	a5,0(a2)
   14282:	c19c                	sw	a5,0(a1)
   14284:	00064503          	lbu	a0,0(a2)
   14288:	00a03533          	snez	a0,a0
   1428c:	0141                	addi	sp,sp,16
   1428e:	8082                	ret
   14290:	4501                	li	a0,0
   14292:	ca19                	beqz	a2,142a8 <__ascii_mbtowc+0x38>
   14294:	5579                	li	a0,-2
   14296:	ca89                	beqz	a3,142a8 <__ascii_mbtowc+0x38>
   14298:	00064783          	lbu	a5,0(a2)
   1429c:	c19c                	sw	a5,0(a1)
   1429e:	00064503          	lbu	a0,0(a2)
   142a2:	00a03533          	snez	a0,a0
   142a6:	8082                	ret
   142a8:	8082                	ret

00000000000142aa <memchr>:
   142aa:	0ff5f593          	andi	a1,a1,255
   142ae:	962a                	add	a2,a2,a0
   142b0:	00c51463          	bne	a0,a2,142b8 <memchr+0xe>
   142b4:	4501                	li	a0,0
   142b6:	8082                	ret
   142b8:	00054783          	lbu	a5,0(a0)
   142bc:	feb78de3          	beq	a5,a1,142b6 <memchr+0xc>
   142c0:	0505                	addi	a0,a0,1
   142c2:	b7fd                	j	142b0 <memchr+0x6>

00000000000142c4 <_Balloc>:
   142c4:	7d3c                	ld	a5,120(a0)
   142c6:	1101                	addi	sp,sp,-32
   142c8:	e426                	sd	s1,8(sp)
   142ca:	e04a                	sd	s2,0(sp)
   142cc:	ec06                	sd	ra,24(sp)
   142ce:	e822                	sd	s0,16(sp)
   142d0:	84aa                	mv	s1,a0
   142d2:	892e                	mv	s2,a1
   142d4:	c79d                	beqz	a5,14302 <_Balloc+0x3e>
   142d6:	7cb8                	ld	a4,120(s1)
   142d8:	00391793          	slli	a5,s2,0x3
   142dc:	97ba                	add	a5,a5,a4
   142de:	6388                	ld	a0,0(a5)
   142e0:	ed1d                	bnez	a0,1431e <_Balloc+0x5a>
   142e2:	4405                	li	s0,1
   142e4:	0124143b          	sllw	s0,s0,s2
   142e8:	fff4061b          	addiw	a2,s0,-1
   142ec:	0621                	addi	a2,a2,8
   142ee:	060a                	slli	a2,a2,0x2
   142f0:	4585                	li	a1,1
   142f2:	8526                	mv	a0,s1
   142f4:	533020ef          	jal	ra,17026 <_calloc_r>
   142f8:	cd01                	beqz	a0,14310 <_Balloc+0x4c>
   142fa:	01252423          	sw	s2,8(a0)
   142fe:	c540                	sw	s0,12(a0)
   14300:	a00d                	j	14322 <_Balloc+0x5e>
   14302:	04100613          	li	a2,65
   14306:	45a1                	li	a1,8
   14308:	51f020ef          	jal	ra,17026 <_calloc_r>
   1430c:	fca8                	sd	a0,120(s1)
   1430e:	f561                	bnez	a0,142d6 <_Balloc+0x12>
   14310:	4501                	li	a0,0
   14312:	60e2                	ld	ra,24(sp)
   14314:	6442                	ld	s0,16(sp)
   14316:	64a2                	ld	s1,8(sp)
   14318:	6902                	ld	s2,0(sp)
   1431a:	6105                	addi	sp,sp,32
   1431c:	8082                	ret
   1431e:	6118                	ld	a4,0(a0)
   14320:	e398                	sd	a4,0(a5)
   14322:	00053823          	sd	zero,16(a0)
   14326:	b7f5                	j	14312 <_Balloc+0x4e>

0000000000014328 <_Bfree>:
   14328:	c989                	beqz	a1,1433a <_Bfree+0x12>
   1432a:	459c                	lw	a5,8(a1)
   1432c:	00379713          	slli	a4,a5,0x3
   14330:	7d3c                	ld	a5,120(a0)
   14332:	97ba                	add	a5,a5,a4
   14334:	6398                	ld	a4,0(a5)
   14336:	e198                	sd	a4,0(a1)
   14338:	e38c                	sd	a1,0(a5)
   1433a:	8082                	ret

000000000001433c <__multadd>:
   1433c:	7139                	addi	sp,sp,-64
   1433e:	ec4e                	sd	s3,24(sp)
   14340:	89aa                	mv	s3,a0
   14342:	6541                	lui	a0,0x10
   14344:	f822                	sd	s0,48(sp)
   14346:	f426                	sd	s1,40(sp)
   14348:	842e                	mv	s0,a1
   1434a:	49c4                	lw	s1,20(a1)
   1434c:	fc06                	sd	ra,56(sp)
   1434e:	f04a                	sd	s2,32(sp)
   14350:	05e1                	addi	a1,a1,24
   14352:	4801                	li	a6,0
   14354:	157d                	addi	a0,a0,-1
   14356:	419c                	lw	a5,0(a1)
   14358:	0591                	addi	a1,a1,4
   1435a:	2805                	addiw	a6,a6,1
   1435c:	00a7f733          	and	a4,a5,a0
   14360:	02c7073b          	mulw	a4,a4,a2
   14364:	0107d79b          	srliw	a5,a5,0x10
   14368:	02c787bb          	mulw	a5,a5,a2
   1436c:	9f35                	addw	a4,a4,a3
   1436e:	0107569b          	srliw	a3,a4,0x10
   14372:	8f69                	and	a4,a4,a0
   14374:	9fb5                	addw	a5,a5,a3
   14376:	0107d69b          	srliw	a3,a5,0x10
   1437a:	0107979b          	slliw	a5,a5,0x10
   1437e:	9fb9                	addw	a5,a5,a4
   14380:	fef5ae23          	sw	a5,-4(a1)
   14384:	2681                	sext.w	a3,a3
   14386:	fc9848e3          	blt	a6,s1,14356 <__multadd+0x1a>
   1438a:	c2a1                	beqz	a3,143ca <__multadd+0x8e>
   1438c:	445c                	lw	a5,12(s0)
   1438e:	02f4c763          	blt	s1,a5,143bc <__multadd+0x80>
   14392:	440c                	lw	a1,8(s0)
   14394:	854e                	mv	a0,s3
   14396:	e436                	sd	a3,8(sp)
   14398:	2585                	addiw	a1,a1,1
   1439a:	f2bff0ef          	jal	ra,142c4 <_Balloc>
   1439e:	4850                	lw	a2,20(s0)
   143a0:	01040593          	addi	a1,s0,16
   143a4:	892a                	mv	s2,a0
   143a6:	0609                	addi	a2,a2,2
   143a8:	060a                	slli	a2,a2,0x2
   143aa:	0541                	addi	a0,a0,16
   143ac:	23a030ef          	jal	ra,175e6 <memcpy>
   143b0:	85a2                	mv	a1,s0
   143b2:	854e                	mv	a0,s3
   143b4:	f75ff0ef          	jal	ra,14328 <_Bfree>
   143b8:	66a2                	ld	a3,8(sp)
   143ba:	844a                	mv	s0,s2
   143bc:	00448793          	addi	a5,s1,4
   143c0:	078a                	slli	a5,a5,0x2
   143c2:	97a2                	add	a5,a5,s0
   143c4:	c794                	sw	a3,8(a5)
   143c6:	2485                	addiw	s1,s1,1
   143c8:	c844                	sw	s1,20(s0)
   143ca:	8522                	mv	a0,s0
   143cc:	70e2                	ld	ra,56(sp)
   143ce:	7442                	ld	s0,48(sp)
   143d0:	74a2                	ld	s1,40(sp)
   143d2:	7902                	ld	s2,32(sp)
   143d4:	69e2                	ld	s3,24(sp)
   143d6:	6121                	addi	sp,sp,64
   143d8:	8082                	ret

00000000000143da <__s2b>:
   143da:	715d                	addi	sp,sp,-80
   143dc:	47a5                	li	a5,9
   143de:	f44e                	sd	s3,40(sp)
   143e0:	89b6                	mv	s3,a3
   143e2:	26a1                	addiw	a3,a3,8
   143e4:	e0a2                	sd	s0,64(sp)
   143e6:	f84a                	sd	s2,48(sp)
   143e8:	ec56                	sd	s5,24(sp)
   143ea:	842e                	mv	s0,a1
   143ec:	02f6c6bb          	divw	a3,a3,a5
   143f0:	e486                	sd	ra,72(sp)
   143f2:	fc26                	sd	s1,56(sp)
   143f4:	f052                	sd	s4,32(sp)
   143f6:	892a                	mv	s2,a0
   143f8:	8ab2                	mv	s5,a2
   143fa:	4785                	li	a5,1
   143fc:	4581                	li	a1,0
   143fe:	04d7ce63          	blt	a5,a3,1445a <__s2b+0x80>
   14402:	854a                	mv	a0,s2
   14404:	e43a                	sd	a4,8(sp)
   14406:	ebfff0ef          	jal	ra,142c4 <_Balloc>
   1440a:	6722                	ld	a4,8(sp)
   1440c:	4785                	li	a5,1
   1440e:	c95c                	sw	a5,20(a0)
   14410:	cd18                	sw	a4,24(a0)
   14412:	47a5                	li	a5,9
   14414:	0557d763          	ble	s5,a5,14462 <__s2b+0x88>
   14418:	0425                	addi	s0,s0,9
   1441a:	8a22                	mv	s4,s0
   1441c:	44a5                	li	s1,9
   1441e:	0a05                	addi	s4,s4,1
   14420:	fffa4683          	lbu	a3,-1(s4)
   14424:	85aa                	mv	a1,a0
   14426:	4629                	li	a2,10
   14428:	fd06869b          	addiw	a3,a3,-48
   1442c:	854a                	mv	a0,s2
   1442e:	2485                	addiw	s1,s1,1
   14430:	f0dff0ef          	jal	ra,1433c <__multadd>
   14434:	fe9a95e3          	bne	s5,s1,1441e <__s2b+0x44>
   14438:	ff64879b          	addiw	a5,s1,-10
   1443c:	1782                	slli	a5,a5,0x20
   1443e:	9381                	srli	a5,a5,0x20
   14440:	943e                	add	s0,s0,a5
   14442:	0409                	addi	s0,s0,2
   14444:	0334c263          	blt	s1,s3,14468 <__s2b+0x8e>
   14448:	60a6                	ld	ra,72(sp)
   1444a:	6406                	ld	s0,64(sp)
   1444c:	74e2                	ld	s1,56(sp)
   1444e:	7942                	ld	s2,48(sp)
   14450:	79a2                	ld	s3,40(sp)
   14452:	7a02                	ld	s4,32(sp)
   14454:	6ae2                	ld	s5,24(sp)
   14456:	6161                	addi	sp,sp,80
   14458:	8082                	ret
   1445a:	0017979b          	slliw	a5,a5,0x1
   1445e:	2585                	addiw	a1,a1,1
   14460:	bf79                	j	143fe <__s2b+0x24>
   14462:	0429                	addi	s0,s0,10
   14464:	44a5                	li	s1,9
   14466:	bff9                	j	14444 <__s2b+0x6a>
   14468:	00044683          	lbu	a3,0(s0)
   1446c:	85aa                	mv	a1,a0
   1446e:	4629                	li	a2,10
   14470:	fd06869b          	addiw	a3,a3,-48
   14474:	854a                	mv	a0,s2
   14476:	ec7ff0ef          	jal	ra,1433c <__multadd>
   1447a:	2485                	addiw	s1,s1,1
   1447c:	0405                	addi	s0,s0,1
   1447e:	b7d9                	j	14444 <__s2b+0x6a>

0000000000014480 <__hi0bits>:
   14480:	7741                	lui	a4,0xffff0
   14482:	8f69                	and	a4,a4,a0
   14484:	87aa                	mv	a5,a0
   14486:	4501                	li	a0,0
   14488:	e701                	bnez	a4,14490 <__hi0bits+0x10>
   1448a:	0107979b          	slliw	a5,a5,0x10
   1448e:	4541                	li	a0,16
   14490:	ff000737          	lui	a4,0xff000
   14494:	8f7d                	and	a4,a4,a5
   14496:	e701                	bnez	a4,1449e <__hi0bits+0x1e>
   14498:	2521                	addiw	a0,a0,8
   1449a:	0087979b          	slliw	a5,a5,0x8
   1449e:	f0000737          	lui	a4,0xf0000
   144a2:	8f7d                	and	a4,a4,a5
   144a4:	e701                	bnez	a4,144ac <__hi0bits+0x2c>
   144a6:	2511                	addiw	a0,a0,4
   144a8:	0047979b          	slliw	a5,a5,0x4
   144ac:	c0000737          	lui	a4,0xc0000
   144b0:	8f7d                	and	a4,a4,a5
   144b2:	e701                	bnez	a4,144ba <__hi0bits+0x3a>
   144b4:	2509                	addiw	a0,a0,2
   144b6:	0027979b          	slliw	a5,a5,0x2
   144ba:	0007ca63          	bltz	a5,144ce <__hi0bits+0x4e>
   144be:	02179713          	slli	a4,a5,0x21
   144c2:	00075463          	bgez	a4,144ca <__hi0bits+0x4a>
   144c6:	2505                	addiw	a0,a0,1
   144c8:	8082                	ret
   144ca:	02000513          	li	a0,32
   144ce:	8082                	ret

00000000000144d0 <__lo0bits>:
   144d0:	411c                	lw	a5,0(a0)
   144d2:	0077f713          	andi	a4,a5,7
   144d6:	86be                	mv	a3,a5
   144d8:	c31d                	beqz	a4,144fe <__lo0bits+0x2e>
   144da:	0017f613          	andi	a2,a5,1
   144de:	4701                	li	a4,0
   144e0:	ea01                	bnez	a2,144f0 <__lo0bits+0x20>
   144e2:	0026f713          	andi	a4,a3,2
   144e6:	c719                	beqz	a4,144f4 <__lo0bits+0x24>
   144e8:	0017d79b          	srliw	a5,a5,0x1
   144ec:	c11c                	sw	a5,0(a0)
   144ee:	4705                	li	a4,1
   144f0:	853a                	mv	a0,a4
   144f2:	8082                	ret
   144f4:	0027d79b          	srliw	a5,a5,0x2
   144f8:	c11c                	sw	a5,0(a0)
   144fa:	4709                	li	a4,2
   144fc:	bfd5                	j	144f0 <__lo0bits+0x20>
   144fe:	03079693          	slli	a3,a5,0x30
   14502:	92c1                	srli	a3,a3,0x30
   14504:	4701                	li	a4,0
   14506:	e689                	bnez	a3,14510 <__lo0bits+0x40>
   14508:	0107d79b          	srliw	a5,a5,0x10
   1450c:	2781                	sext.w	a5,a5
   1450e:	4741                	li	a4,16
   14510:	0ff7f693          	andi	a3,a5,255
   14514:	e689                	bnez	a3,1451e <__lo0bits+0x4e>
   14516:	0087d79b          	srliw	a5,a5,0x8
   1451a:	2721                	addiw	a4,a4,8
   1451c:	2781                	sext.w	a5,a5
   1451e:	00f7f693          	andi	a3,a5,15
   14522:	e689                	bnez	a3,1452c <__lo0bits+0x5c>
   14524:	0047d79b          	srliw	a5,a5,0x4
   14528:	2711                	addiw	a4,a4,4
   1452a:	2781                	sext.w	a5,a5
   1452c:	0037f693          	andi	a3,a5,3
   14530:	e689                	bnez	a3,1453a <__lo0bits+0x6a>
   14532:	0027d79b          	srliw	a5,a5,0x2
   14536:	2709                	addiw	a4,a4,2
   14538:	2781                	sext.w	a5,a5
   1453a:	0017f693          	andi	a3,a5,1
   1453e:	e691                	bnez	a3,1454a <__lo0bits+0x7a>
   14540:	0017d79b          	srliw	a5,a5,0x1
   14544:	2781                	sext.w	a5,a5
   14546:	c781                	beqz	a5,1454e <__lo0bits+0x7e>
   14548:	2705                	addiw	a4,a4,1
   1454a:	c11c                	sw	a5,0(a0)
   1454c:	b755                	j	144f0 <__lo0bits+0x20>
   1454e:	02000713          	li	a4,32
   14552:	bf79                	j	144f0 <__lo0bits+0x20>

0000000000014554 <__i2b>:
   14554:	1141                	addi	sp,sp,-16
   14556:	e022                	sd	s0,0(sp)
   14558:	842e                	mv	s0,a1
   1455a:	4585                	li	a1,1
   1455c:	e406                	sd	ra,8(sp)
   1455e:	d67ff0ef          	jal	ra,142c4 <_Balloc>
   14562:	cd00                	sw	s0,24(a0)
   14564:	60a2                	ld	ra,8(sp)
   14566:	6402                	ld	s0,0(sp)
   14568:	4705                	li	a4,1
   1456a:	c958                	sw	a4,20(a0)
   1456c:	0141                	addi	sp,sp,16
   1456e:	8082                	ret

0000000000014570 <__multiply>:
   14570:	49d8                	lw	a4,20(a1)
   14572:	4a5c                	lw	a5,20(a2)
   14574:	7139                	addi	sp,sp,-64
   14576:	f426                	sd	s1,40(sp)
   14578:	fc06                	sd	ra,56(sp)
   1457a:	f822                	sd	s0,48(sp)
   1457c:	f04a                	sd	s2,32(sp)
   1457e:	ec4e                	sd	s3,24(sp)
   14580:	84ae                	mv	s1,a1
   14582:	00f75463          	ble	a5,a4,1458a <__multiply+0x1a>
   14586:	84b2                	mv	s1,a2
   14588:	862e                	mv	a2,a1
   1458a:	0144a983          	lw	s3,20(s1)
   1458e:	01462903          	lw	s2,20(a2)
   14592:	44dc                	lw	a5,12(s1)
   14594:	448c                	lw	a1,8(s1)
   14596:	0129843b          	addw	s0,s3,s2
   1459a:	0087d363          	ble	s0,a5,145a0 <__multiply+0x30>
   1459e:	2585                	addiw	a1,a1,1
   145a0:	e432                	sd	a2,8(sp)
   145a2:	d23ff0ef          	jal	ra,142c4 <_Balloc>
   145a6:	6622                	ld	a2,8(sp)
   145a8:	01850813          	addi	a6,a0,24 # 10018 <_start-0x98>
   145ac:	00241313          	slli	t1,s0,0x2
   145b0:	9342                	add	t1,t1,a6
   145b2:	87c2                	mv	a5,a6
   145b4:	0267ed63          	bltu	a5,t1,145ee <__multiply+0x7e>
   145b8:	01848593          	addi	a1,s1,24
   145bc:	00299893          	slli	a7,s3,0x2
   145c0:	0661                	addi	a2,a2,24
   145c2:	00291e13          	slli	t3,s2,0x2
   145c6:	66c1                	lui	a3,0x10
   145c8:	98ae                	add	a7,a7,a1
   145ca:	9e32                	add	t3,t3,a2
   145cc:	16fd                	addi	a3,a3,-1
   145ce:	03c66463          	bltu	a2,t3,145f6 <__multiply+0x86>
   145d2:	00805663          	blez	s0,145de <__multiply+0x6e>
   145d6:	1371                	addi	t1,t1,-4
   145d8:	00032783          	lw	a5,0(t1) # 10000 <_start-0xb0>
   145dc:	cbf5                	beqz	a5,146d0 <__multiply+0x160>
   145de:	c940                	sw	s0,20(a0)
   145e0:	70e2                	ld	ra,56(sp)
   145e2:	7442                	ld	s0,48(sp)
   145e4:	74a2                	ld	s1,40(sp)
   145e6:	7902                	ld	s2,32(sp)
   145e8:	69e2                	ld	s3,24(sp)
   145ea:	6121                	addi	sp,sp,64
   145ec:	8082                	ret
   145ee:	0007a023          	sw	zero,0(a5)
   145f2:	0791                	addi	a5,a5,4
   145f4:	b7c1                	j	145b4 <__multiply+0x44>
   145f6:	00062f83          	lw	t6,0(a2)
   145fa:	01f6ffb3          	and	t6,a3,t6
   145fe:	040f8f63          	beqz	t6,1465c <__multiply+0xec>
   14602:	82c2                	mv	t0,a6
   14604:	83ae                	mv	t2,a1
   14606:	4f01                	li	t5,0
   14608:	0003a703          	lw	a4,0(t2)
   1460c:	0002a483          	lw	s1,0(t0) # 109fc <memset+0x90>
   14610:	0391                	addi	t2,t2,4
   14612:	00d77eb3          	and	t4,a4,a3
   14616:	03fe8ebb          	mulw	t4,t4,t6
   1461a:	00d4f7b3          	and	a5,s1,a3
   1461e:	0104d49b          	srliw	s1,s1,0x10
   14622:	00fe8ebb          	addw	t4,t4,a5
   14626:	0107579b          	srliw	a5,a4,0x10
   1462a:	03f787bb          	mulw	a5,a5,t6
   1462e:	01ee8ebb          	addw	t4,t4,t5
   14632:	010ed71b          	srliw	a4,t4,0x10
   14636:	01d6feb3          	and	t4,a3,t4
   1463a:	9fa5                	addw	a5,a5,s1
   1463c:	9fb9                	addw	a5,a5,a4
   1463e:	0107df1b          	srliw	t5,a5,0x10
   14642:	0107979b          	slliw	a5,a5,0x10
   14646:	00428713          	addi	a4,t0,4
   1464a:	00fee7b3          	or	a5,t4,a5
   1464e:	fef72e23          	sw	a5,-4(a4) # ffffffffbffffffc <__global_pointer$+0xffffffffbffe2d24>
   14652:	2f01                	sext.w	t5,t5
   14654:	0713ea63          	bltu	t2,a7,146c8 <__multiply+0x158>
   14658:	01e2a223          	sw	t5,4(t0)
   1465c:	00265283          	lhu	t0,2(a2)
   14660:	06028163          	beqz	t0,146c2 <__multiply+0x152>
   14664:	00082e83          	lw	t4,0(a6)
   14668:	8f42                	mv	t5,a6
   1466a:	8fae                	mv	t6,a1
   1466c:	4781                	li	a5,0
   1466e:	000fa703          	lw	a4,0(t6)
   14672:	002f5383          	lhu	t2,2(t5)
   14676:	00defeb3          	and	t4,t4,a3
   1467a:	8f75                	and	a4,a4,a3
   1467c:	0257073b          	mulw	a4,a4,t0
   14680:	0f91                	addi	t6,t6,4
   14682:	0077073b          	addw	a4,a4,t2
   14686:	9f3d                	addw	a4,a4,a5
   14688:	0107179b          	slliw	a5,a4,0x10
   1468c:	00feeeb3          	or	t4,t4,a5
   14690:	004f0393          	addi	t2,t5,4
   14694:	ffd3ae23          	sw	t4,-4(t2)
   14698:	ffefd783          	lhu	a5,-2(t6)
   1469c:	004f2e83          	lw	t4,4(t5)
   146a0:	0107571b          	srliw	a4,a4,0x10
   146a4:	025787bb          	mulw	a5,a5,t0
   146a8:	00defeb3          	and	t4,t4,a3
   146ac:	01d787bb          	addw	a5,a5,t4
   146b0:	00e78ebb          	addw	t4,a5,a4
   146b4:	010ed79b          	srliw	a5,t4,0x10
   146b8:	2781                	sext.w	a5,a5
   146ba:	011fe963          	bltu	t6,a7,146cc <__multiply+0x15c>
   146be:	01df2223          	sw	t4,4(t5)
   146c2:	0611                	addi	a2,a2,4
   146c4:	0811                	addi	a6,a6,4
   146c6:	b721                	j	145ce <__multiply+0x5e>
   146c8:	82ba                	mv	t0,a4
   146ca:	bf3d                	j	14608 <__multiply+0x98>
   146cc:	8f1e                	mv	t5,t2
   146ce:	b745                	j	1466e <__multiply+0xfe>
   146d0:	347d                	addiw	s0,s0,-1
   146d2:	b701                	j	145d2 <__multiply+0x62>

00000000000146d4 <__pow5mult>:
   146d4:	7179                	addi	sp,sp,-48
   146d6:	ec26                	sd	s1,24(sp)
   146d8:	e84a                	sd	s2,16(sp)
   146da:	e44e                	sd	s3,8(sp)
   146dc:	f406                	sd	ra,40(sp)
   146de:	f022                	sd	s0,32(sp)
   146e0:	e052                	sd	s4,0(sp)
   146e2:	00367793          	andi	a5,a2,3
   146e6:	892a                	mv	s2,a0
   146e8:	84b2                	mv	s1,a2
   146ea:	89ae                	mv	s3,a1
   146ec:	cf81                	beqz	a5,14704 <__pow5mult+0x30>
   146ee:	37fd                	addiw	a5,a5,-1
   146f0:	6769                	lui	a4,0x1a
   146f2:	1a070713          	addi	a4,a4,416 # 1a1a0 <p05.3264>
   146f6:	078a                	slli	a5,a5,0x2
   146f8:	97ba                	add	a5,a5,a4
   146fa:	4390                	lw	a2,0(a5)
   146fc:	4681                	li	a3,0
   146fe:	c3fff0ef          	jal	ra,1433c <__multadd>
   14702:	89aa                	mv	s3,a0
   14704:	8489                	srai	s1,s1,0x2
   14706:	c8b1                	beqz	s1,1475a <__pow5mult+0x86>
   14708:	07093403          	ld	s0,112(s2)
   1470c:	e819                	bnez	s0,14722 <__pow5mult+0x4e>
   1470e:	27100593          	li	a1,625
   14712:	854a                	mv	a0,s2
   14714:	e41ff0ef          	jal	ra,14554 <__i2b>
   14718:	06a93823          	sd	a0,112(s2)
   1471c:	842a                	mv	s0,a0
   1471e:	00053023          	sd	zero,0(a0)
   14722:	0014f793          	andi	a5,s1,1
   14726:	cf81                	beqz	a5,1473e <__pow5mult+0x6a>
   14728:	85ce                	mv	a1,s3
   1472a:	8622                	mv	a2,s0
   1472c:	854a                	mv	a0,s2
   1472e:	e43ff0ef          	jal	ra,14570 <__multiply>
   14732:	8a2a                	mv	s4,a0
   14734:	85ce                	mv	a1,s3
   14736:	854a                	mv	a0,s2
   14738:	bf1ff0ef          	jal	ra,14328 <_Bfree>
   1473c:	89d2                	mv	s3,s4
   1473e:	8485                	srai	s1,s1,0x1
   14740:	cc89                	beqz	s1,1475a <__pow5mult+0x86>
   14742:	6008                	ld	a0,0(s0)
   14744:	e909                	bnez	a0,14756 <__pow5mult+0x82>
   14746:	8622                	mv	a2,s0
   14748:	85a2                	mv	a1,s0
   1474a:	854a                	mv	a0,s2
   1474c:	e25ff0ef          	jal	ra,14570 <__multiply>
   14750:	e008                	sd	a0,0(s0)
   14752:	00053023          	sd	zero,0(a0)
   14756:	842a                	mv	s0,a0
   14758:	b7e9                	j	14722 <__pow5mult+0x4e>
   1475a:	70a2                	ld	ra,40(sp)
   1475c:	7402                	ld	s0,32(sp)
   1475e:	854e                	mv	a0,s3
   14760:	64e2                	ld	s1,24(sp)
   14762:	6942                	ld	s2,16(sp)
   14764:	69a2                	ld	s3,8(sp)
   14766:	6a02                	ld	s4,0(sp)
   14768:	6145                	addi	sp,sp,48
   1476a:	8082                	ret

000000000001476c <__lshift>:
   1476c:	715d                	addi	sp,sp,-80
   1476e:	fc26                	sd	s1,56(sp)
   14770:	84ae                	mv	s1,a1
   14772:	f44e                	sd	s3,40(sp)
   14774:	0144a983          	lw	s3,20(s1)
   14778:	e85a                	sd	s6,16(sp)
   1477a:	458c                	lw	a1,8(a1)
   1477c:	40565b1b          	sraiw	s6,a2,0x5
   14780:	44dc                	lw	a5,12(s1)
   14782:	016989bb          	addw	s3,s3,s6
   14786:	e0a2                	sd	s0,64(sp)
   14788:	f84a                	sd	s2,48(sp)
   1478a:	ec56                	sd	s5,24(sp)
   1478c:	e486                	sd	ra,72(sp)
   1478e:	f052                	sd	s4,32(sp)
   14790:	8aaa                	mv	s5,a0
   14792:	845a                	mv	s0,s6
   14794:	0019891b          	addiw	s2,s3,1
   14798:	0927c463          	blt	a5,s2,14820 <__lshift+0xb4>
   1479c:	8556                	mv	a0,s5
   1479e:	e432                	sd	a2,8(sp)
   147a0:	b25ff0ef          	jal	ra,142c4 <_Balloc>
   147a4:	6622                	ld	a2,8(sp)
   147a6:	01850793          	addi	a5,a0,24
   147aa:	8a2a                	mv	s4,a0
   147ac:	86be                	mv	a3,a5
   147ae:	4701                	li	a4,0
   147b0:	0691                	addi	a3,a3,4
   147b2:	07674b63          	blt	a4,s6,14828 <__lshift+0xbc>
   147b6:	000b5363          	bgez	s6,147bc <__lshift+0x50>
   147ba:	4401                	li	s0,0
   147bc:	48d4                	lw	a3,20(s1)
   147be:	040a                	slli	s0,s0,0x2
   147c0:	943e                	add	s0,s0,a5
   147c2:	068a                	slli	a3,a3,0x2
   147c4:	01848793          	addi	a5,s1,24
   147c8:	8a7d                	andi	a2,a2,31
   147ca:	96be                	add	a3,a3,a5
   147cc:	c625                	beqz	a2,14834 <__lshift+0xc8>
   147ce:	02000593          	li	a1,32
   147d2:	9d91                	subw	a1,a1,a2
   147d4:	4701                	li	a4,0
   147d6:	4388                	lw	a0,0(a5)
   147d8:	00440813          	addi	a6,s0,4
   147dc:	0791                	addi	a5,a5,4
   147de:	00c5153b          	sllw	a0,a0,a2
   147e2:	8f49                	or	a4,a4,a0
   147e4:	fee82e23          	sw	a4,-4(a6)
   147e8:	ffc7a703          	lw	a4,-4(a5)
   147ec:	00b7573b          	srlw	a4,a4,a1
   147f0:	04d7e063          	bltu	a5,a3,14830 <__lshift+0xc4>
   147f4:	c058                	sw	a4,4(s0)
   147f6:	c319                	beqz	a4,147fc <__lshift+0x90>
   147f8:	0029891b          	addiw	s2,s3,2
   147fc:	397d                	addiw	s2,s2,-1
   147fe:	012a2a23          	sw	s2,20(s4)
   14802:	8556                	mv	a0,s5
   14804:	85a6                	mv	a1,s1
   14806:	b23ff0ef          	jal	ra,14328 <_Bfree>
   1480a:	60a6                	ld	ra,72(sp)
   1480c:	6406                	ld	s0,64(sp)
   1480e:	8552                	mv	a0,s4
   14810:	74e2                	ld	s1,56(sp)
   14812:	7942                	ld	s2,48(sp)
   14814:	79a2                	ld	s3,40(sp)
   14816:	7a02                	ld	s4,32(sp)
   14818:	6ae2                	ld	s5,24(sp)
   1481a:	6b42                	ld	s6,16(sp)
   1481c:	6161                	addi	sp,sp,80
   1481e:	8082                	ret
   14820:	2585                	addiw	a1,a1,1
   14822:	0017979b          	slliw	a5,a5,0x1
   14826:	bf8d                	j	14798 <__lshift+0x2c>
   14828:	fe06ae23          	sw	zero,-4(a3) # fffc <_start-0xb4>
   1482c:	2705                	addiw	a4,a4,1
   1482e:	b749                	j	147b0 <__lshift+0x44>
   14830:	8442                	mv	s0,a6
   14832:	b755                	j	147d6 <__lshift+0x6a>
   14834:	0791                	addi	a5,a5,4
   14836:	ffc7a703          	lw	a4,-4(a5)
   1483a:	0411                	addi	s0,s0,4
   1483c:	fee42e23          	sw	a4,-4(s0)
   14840:	fed7eae3          	bltu	a5,a3,14834 <__lshift+0xc8>
   14844:	bf65                	j	147fc <__lshift+0x90>

0000000000014846 <__mcmp>:
   14846:	495c                	lw	a5,20(a0)
   14848:	49d8                	lw	a4,20(a1)
   1484a:	9f99                	subw	a5,a5,a4
   1484c:	e38d                	bnez	a5,1486e <__mcmp+0x28>
   1484e:	070a                	slli	a4,a4,0x2
   14850:	0561                	addi	a0,a0,24
   14852:	05e1                	addi	a1,a1,24
   14854:	00e506b3          	add	a3,a0,a4
   14858:	95ba                	add	a1,a1,a4
   1485a:	16f1                	addi	a3,a3,-4
   1485c:	15f1                	addi	a1,a1,-4
   1485e:	4290                	lw	a2,0(a3)
   14860:	4198                	lw	a4,0(a1)
   14862:	00e60863          	beq	a2,a4,14872 <__mcmp+0x2c>
   14866:	57fd                	li	a5,-1
   14868:	00e66363          	bltu	a2,a4,1486e <__mcmp+0x28>
   1486c:	4785                	li	a5,1
   1486e:	853e                	mv	a0,a5
   14870:	8082                	ret
   14872:	fed564e3          	bltu	a0,a3,1485a <__mcmp+0x14>
   14876:	bfe5                	j	1486e <__mcmp+0x28>

0000000000014878 <__mdiff>:
   14878:	7179                	addi	sp,sp,-48
   1487a:	ec26                	sd	s1,24(sp)
   1487c:	84ae                	mv	s1,a1
   1487e:	e44e                	sd	s3,8(sp)
   14880:	85b2                	mv	a1,a2
   14882:	89aa                	mv	s3,a0
   14884:	8526                	mv	a0,s1
   14886:	f022                	sd	s0,32(sp)
   14888:	f406                	sd	ra,40(sp)
   1488a:	e84a                	sd	s2,16(sp)
   1488c:	8432                	mv	s0,a2
   1488e:	fb9ff0ef          	jal	ra,14846 <__mcmp>
   14892:	e105                	bnez	a0,148b2 <__mdiff+0x3a>
   14894:	4581                	li	a1,0
   14896:	854e                	mv	a0,s3
   14898:	a2dff0ef          	jal	ra,142c4 <_Balloc>
   1489c:	4785                	li	a5,1
   1489e:	c95c                	sw	a5,20(a0)
   148a0:	00052c23          	sw	zero,24(a0)
   148a4:	70a2                	ld	ra,40(sp)
   148a6:	7402                	ld	s0,32(sp)
   148a8:	64e2                	ld	s1,24(sp)
   148aa:	6942                	ld	s2,16(sp)
   148ac:	69a2                	ld	s3,8(sp)
   148ae:	6145                	addi	sp,sp,48
   148b0:	8082                	ret
   148b2:	4905                	li	s2,1
   148b4:	00054663          	bltz	a0,148c0 <__mdiff+0x48>
   148b8:	87a2                	mv	a5,s0
   148ba:	4901                	li	s2,0
   148bc:	8426                	mv	s0,s1
   148be:	84be                	mv	s1,a5
   148c0:	440c                	lw	a1,8(s0)
   148c2:	854e                	mv	a0,s3
   148c4:	a01ff0ef          	jal	ra,142c4 <_Balloc>
   148c8:	01442303          	lw	t1,20(s0)
   148cc:	0144a883          	lw	a7,20(s1)
   148d0:	01840613          	addi	a2,s0,24
   148d4:	00231e13          	slli	t3,t1,0x2
   148d8:	01848813          	addi	a6,s1,24
   148dc:	088a                	slli	a7,a7,0x2
   148de:	6f41                	lui	t5,0x10
   148e0:	01252823          	sw	s2,16(a0)
   148e4:	9e32                	add	t3,t3,a2
   148e6:	98c2                	add	a7,a7,a6
   148e8:	01850693          	addi	a3,a0,24
   148ec:	4f81                	li	t6,0
   148ee:	1f7d                	addi	t5,t5,-1
   148f0:	4218                	lw	a4,0(a2)
   148f2:	00082783          	lw	a5,0(a6)
   148f6:	0691                	addi	a3,a3,4
   148f8:	01e775b3          	and	a1,a4,t5
   148fc:	01f585bb          	addw	a1,a1,t6
   14900:	01e7feb3          	and	t4,a5,t5
   14904:	41d58ebb          	subw	t4,a1,t4
   14908:	0107571b          	srliw	a4,a4,0x10
   1490c:	0107d79b          	srliw	a5,a5,0x10
   14910:	40f707bb          	subw	a5,a4,a5
   14914:	410ed59b          	sraiw	a1,t4,0x10
   14918:	9fad                	addw	a5,a5,a1
   1491a:	4107df9b          	sraiw	t6,a5,0x10
   1491e:	01eef733          	and	a4,t4,t5
   14922:	0107979b          	slliw	a5,a5,0x10
   14926:	8fd9                	or	a5,a5,a4
   14928:	0811                	addi	a6,a6,4
   1492a:	fef6ae23          	sw	a5,-4(a3)
   1492e:	0611                	addi	a2,a2,4
   14930:	fd1860e3          	bltu	a6,a7,148f0 <__mdiff+0x78>
   14934:	68c1                	lui	a7,0x10
   14936:	18fd                	addi	a7,a7,-1
   14938:	01c66863          	bltu	a2,t3,14948 <__mdiff+0xd0>
   1493c:	16f1                	addi	a3,a3,-4
   1493e:	429c                	lw	a5,0(a3)
   14940:	cb9d                	beqz	a5,14976 <__mdiff+0xfe>
   14942:	00652a23          	sw	t1,20(a0)
   14946:	bfb9                	j	148a4 <__mdiff+0x2c>
   14948:	4218                	lw	a4,0(a2)
   1494a:	0691                	addi	a3,a3,4
   1494c:	0611                	addi	a2,a2,4
   1494e:	011775b3          	and	a1,a4,a7
   14952:	01f5883b          	addw	a6,a1,t6
   14956:	0107571b          	srliw	a4,a4,0x10
   1495a:	4108559b          	sraiw	a1,a6,0x10
   1495e:	00b707bb          	addw	a5,a4,a1
   14962:	4107df9b          	sraiw	t6,a5,0x10
   14966:	01187733          	and	a4,a6,a7
   1496a:	0107979b          	slliw	a5,a5,0x10
   1496e:	8fd9                	or	a5,a5,a4
   14970:	fef6ae23          	sw	a5,-4(a3)
   14974:	b7d1                	j	14938 <__mdiff+0xc0>
   14976:	337d                	addiw	t1,t1,-1
   14978:	b7d1                	j	1493c <__mdiff+0xc4>

000000000001497a <__ulp>:
   1497a:	e20507d3          	fmv.x.d	a5,fa0
   1497e:	7ff00737          	lui	a4,0x7ff00
   14982:	9381                	srli	a5,a5,0x20
   14984:	8f7d                	and	a4,a4,a5
   14986:	fcc007b7          	lui	a5,0xfcc00
   1498a:	9fb9                	addw	a5,a5,a4
   1498c:	0007871b          	sext.w	a4,a5
   14990:	00e05763          	blez	a4,1499e <__ulp+0x24>
   14994:	02079713          	slli	a4,a5,0x20
   14998:	f2070553          	fmv.d.x	fa0,a4
   1499c:	8082                	ret
   1499e:	40f007bb          	negw	a5,a5
   149a2:	4147d79b          	sraiw	a5,a5,0x14
   149a6:	474d                	li	a4,19
   149a8:	00f74763          	blt	a4,a5,149b6 <__ulp+0x3c>
   149ac:	00080737          	lui	a4,0x80
   149b0:	40f757bb          	sraw	a5,a4,a5
   149b4:	b7c5                	j	14994 <__ulp+0x1a>
   149b6:	37b1                	addiw	a5,a5,-20
   149b8:	4679                	li	a2,30
   149ba:	4701                	li	a4,0
   149bc:	4685                	li	a3,1
   149be:	00f64663          	blt	a2,a5,149ca <__ulp+0x50>
   149c2:	fff7c793          	not	a5,a5
   149c6:	00f696bb          	sllw	a3,a3,a5
   149ca:	57fd                	li	a5,-1
   149cc:	1682                	slli	a3,a3,0x20
   149ce:	1782                	slli	a5,a5,0x20
   149d0:	9281                	srli	a3,a3,0x20
   149d2:	8ff9                	and	a5,a5,a4
   149d4:	00d7e733          	or	a4,a5,a3
   149d8:	b7c1                	j	14998 <__ulp+0x1e>

00000000000149da <__b2d>:
   149da:	7139                	addi	sp,sp,-64
   149dc:	f426                	sd	s1,40(sp)
   149de:	4944                	lw	s1,20(a0)
   149e0:	ec4e                	sd	s3,24(sp)
   149e2:	01850993          	addi	s3,a0,24
   149e6:	048a                	slli	s1,s1,0x2
   149e8:	94ce                	add	s1,s1,s3
   149ea:	f822                	sd	s0,48(sp)
   149ec:	ffc4a403          	lw	s0,-4(s1)
   149f0:	f04a                	sd	s2,32(sp)
   149f2:	e42e                	sd	a1,8(sp)
   149f4:	8522                	mv	a0,s0
   149f6:	fc06                	sd	ra,56(sp)
   149f8:	a89ff0ef          	jal	ra,14480 <__hi0bits>
   149fc:	65a2                	ld	a1,8(sp)
   149fe:	02000793          	li	a5,32
   14a02:	9f89                	subw	a5,a5,a0
   14a04:	c19c                	sw	a5,0(a1)
   14a06:	47a9                	li	a5,10
   14a08:	ffc48913          	addi	s2,s1,-4
   14a0c:	04a7c763          	blt	a5,a0,14a5a <__b2d+0x80>
   14a10:	46ad                	li	a3,11
   14a12:	40a6863b          	subw	a2,a3,a0
   14a16:	00c4573b          	srlw	a4,s0,a2
   14a1a:	3ff007b7          	lui	a5,0x3ff00
   14a1e:	8f5d                	or	a4,a4,a5
   14a20:	1702                	slli	a4,a4,0x20
   14a22:	4681                	li	a3,0
   14a24:	0129f463          	bleu	s2,s3,14a2c <__b2d+0x52>
   14a28:	ff84a683          	lw	a3,-8(s1)
   14a2c:	0155079b          	addiw	a5,a0,21
   14a30:	00f417bb          	sllw	a5,s0,a5
   14a34:	00c6d6bb          	srlw	a3,a3,a2
   14a38:	8fd5                	or	a5,a5,a3
   14a3a:	547d                	li	s0,-1
   14a3c:	1782                	slli	a5,a5,0x20
   14a3e:	1402                	slli	s0,s0,0x20
   14a40:	9381                	srli	a5,a5,0x20
   14a42:	8c79                	and	s0,s0,a4
   14a44:	00f46733          	or	a4,s0,a5
   14a48:	70e2                	ld	ra,56(sp)
   14a4a:	7442                	ld	s0,48(sp)
   14a4c:	74a2                	ld	s1,40(sp)
   14a4e:	7902                	ld	s2,32(sp)
   14a50:	69e2                	ld	s3,24(sp)
   14a52:	f2070553          	fmv.d.x	fa0,a4
   14a56:	6121                	addi	sp,sp,64
   14a58:	8082                	ret
   14a5a:	4681                	li	a3,0
   14a5c:	0129f663          	bleu	s2,s3,14a68 <__b2d+0x8e>
   14a60:	ff84a683          	lw	a3,-8(s1)
   14a64:	ff848913          	addi	s2,s1,-8
   14a68:	ff55079b          	addiw	a5,a0,-11
   14a6c:	853e                	mv	a0,a5
   14a6e:	c3a9                	beqz	a5,14ab0 <__b2d+0xd6>
   14a70:	02000793          	li	a5,32
   14a74:	40a7863b          	subw	a2,a5,a0
   14a78:	00a4143b          	sllw	s0,s0,a0
   14a7c:	3ff007b7          	lui	a5,0x3ff00
   14a80:	8c5d                	or	s0,s0,a5
   14a82:	00c6d7bb          	srlw	a5,a3,a2
   14a86:	8c5d                	or	s0,s0,a5
   14a88:	02041713          	slli	a4,s0,0x20
   14a8c:	4781                	li	a5,0
   14a8e:	0129f463          	bleu	s2,s3,14a96 <__b2d+0xbc>
   14a92:	ffc92783          	lw	a5,-4(s2)
   14a96:	00a696bb          	sllw	a3,a3,a0
   14a9a:	00c7d7bb          	srlw	a5,a5,a2
   14a9e:	8edd                	or	a3,a3,a5
   14aa0:	547d                	li	s0,-1
   14aa2:	1682                	slli	a3,a3,0x20
   14aa4:	1402                	slli	s0,s0,0x20
   14aa6:	9281                	srli	a3,a3,0x20
   14aa8:	8c79                	and	s0,s0,a4
   14aaa:	00d46733          	or	a4,s0,a3
   14aae:	bf69                	j	14a48 <__b2d+0x6e>
   14ab0:	3ff007b7          	lui	a5,0x3ff00
   14ab4:	02069713          	slli	a4,a3,0x20
   14ab8:	8c5d                	or	s0,s0,a5
   14aba:	9301                	srli	a4,a4,0x20
   14abc:	1402                	slli	s0,s0,0x20
   14abe:	8f41                	or	a4,a4,s0
   14ac0:	b761                	j	14a48 <__b2d+0x6e>

0000000000014ac2 <__d2b>:
   14ac2:	7139                	addi	sp,sp,-64
   14ac4:	f822                	sd	s0,48(sp)
   14ac6:	e852                	sd	s4,16(sp)
   14ac8:	e2050453          	fmv.x.d	s0,fa0
   14acc:	8a2e                	mv	s4,a1
   14ace:	4585                	li	a1,1
   14ad0:	f426                	sd	s1,40(sp)
   14ad2:	f04a                	sd	s2,32(sp)
   14ad4:	ec4e                	sd	s3,24(sp)
   14ad6:	fc06                	sd	ra,56(sp)
   14ad8:	8932                	mv	s2,a2
   14ada:	feaff0ef          	jal	ra,142c4 <_Balloc>
   14ade:	001007b7          	lui	a5,0x100
   14ae2:	42045493          	srai	s1,s0,0x20
   14ae6:	17fd                	addi	a5,a5,-1
   14ae8:	8fe5                	and	a5,a5,s1
   14aea:	0144d49b          	srliw	s1,s1,0x14
   14aee:	7ff4f493          	andi	s1,s1,2047
   14af2:	89aa                	mv	s3,a0
   14af4:	e0bd                	bnez	s1,14b5a <__d2b+0x98>
   14af6:	c63e                	sw	a5,12(sp)
   14af8:	2401                	sext.w	s0,s0
   14afa:	c43d                	beqz	s0,14b68 <__d2b+0xa6>
   14afc:	0028                	addi	a0,sp,8
   14afe:	c422                	sw	s0,8(sp)
   14b00:	9d1ff0ef          	jal	ra,144d0 <__lo0bits>
   14b04:	46a2                	lw	a3,8(sp)
   14b06:	cd31                	beqz	a0,14b62 <__d2b+0xa0>
   14b08:	4732                	lw	a4,12(sp)
   14b0a:	02000793          	li	a5,32
   14b0e:	9f89                	subw	a5,a5,a0
   14b10:	00f717bb          	sllw	a5,a4,a5
   14b14:	8fd5                	or	a5,a5,a3
   14b16:	00a7573b          	srlw	a4,a4,a0
   14b1a:	00f9ac23          	sw	a5,24(s3)
   14b1e:	c63a                	sw	a4,12(sp)
   14b20:	4432                	lw	s0,12(sp)
   14b22:	0089ae23          	sw	s0,28(s3)
   14b26:	00803433          	snez	s0,s0
   14b2a:	0405                	addi	s0,s0,1
   14b2c:	0089aa23          	sw	s0,20(s3)
   14b30:	c8a9                	beqz	s1,14b82 <__d2b+0xc0>
   14b32:	bcd4849b          	addiw	s1,s1,-1075
   14b36:	9ca9                	addw	s1,s1,a0
   14b38:	03500793          	li	a5,53
   14b3c:	009a2023          	sw	s1,0(s4)
   14b40:	40a7853b          	subw	a0,a5,a0
   14b44:	00a92023          	sw	a0,0(s2)
   14b48:	70e2                	ld	ra,56(sp)
   14b4a:	7442                	ld	s0,48(sp)
   14b4c:	854e                	mv	a0,s3
   14b4e:	74a2                	ld	s1,40(sp)
   14b50:	7902                	ld	s2,32(sp)
   14b52:	69e2                	ld	s3,24(sp)
   14b54:	6a42                	ld	s4,16(sp)
   14b56:	6121                	addi	sp,sp,64
   14b58:	8082                	ret
   14b5a:	00100737          	lui	a4,0x100
   14b5e:	8fd9                	or	a5,a5,a4
   14b60:	bf59                	j	14af6 <__d2b+0x34>
   14b62:	00d9ac23          	sw	a3,24(s3)
   14b66:	bf6d                	j	14b20 <__d2b+0x5e>
   14b68:	0068                	addi	a0,sp,12
   14b6a:	967ff0ef          	jal	ra,144d0 <__lo0bits>
   14b6e:	47b2                	lw	a5,12(sp)
   14b70:	0205051b          	addiw	a0,a0,32
   14b74:	4405                	li	s0,1
   14b76:	00f9ac23          	sw	a5,24(s3)
   14b7a:	4785                	li	a5,1
   14b7c:	00f9aa23          	sw	a5,20(s3)
   14b80:	bf45                	j	14b30 <__d2b+0x6e>
   14b82:	bce5051b          	addiw	a0,a0,-1074
   14b86:	00241793          	slli	a5,s0,0x2
   14b8a:	00aa2023          	sw	a0,0(s4)
   14b8e:	97ce                	add	a5,a5,s3
   14b90:	4bc8                	lw	a0,20(a5)
   14b92:	0054141b          	slliw	s0,s0,0x5
   14b96:	8ebff0ef          	jal	ra,14480 <__hi0bits>
   14b9a:	9c09                	subw	s0,s0,a0
   14b9c:	00892023          	sw	s0,0(s2)
   14ba0:	b765                	j	14b48 <__d2b+0x86>

0000000000014ba2 <__ratio>:
   14ba2:	7139                	addi	sp,sp,-64
   14ba4:	f04a                	sd	s2,32(sp)
   14ba6:	892e                	mv	s2,a1
   14ba8:	002c                	addi	a1,sp,8
   14baa:	fc06                	sd	ra,56(sp)
   14bac:	f426                	sd	s1,40(sp)
   14bae:	ec4e                	sd	s3,24(sp)
   14bb0:	f822                	sd	s0,48(sp)
   14bb2:	89aa                	mv	s3,a0
   14bb4:	e27ff0ef          	jal	ra,149da <__b2d>
   14bb8:	006c                	addi	a1,sp,12
   14bba:	854a                	mv	a0,s2
   14bbc:	e20504d3          	fmv.x.d	s1,fa0
   14bc0:	e1bff0ef          	jal	ra,149da <__b2d>
   14bc4:	01492683          	lw	a3,20(s2)
   14bc8:	0149a783          	lw	a5,20(s3)
   14bcc:	45b2                	lw	a1,12(sp)
   14bce:	e2050653          	fmv.x.d	a2,fa0
   14bd2:	9f95                	subw	a5,a5,a3
   14bd4:	46a2                	lw	a3,8(sp)
   14bd6:	0057979b          	slliw	a5,a5,0x5
   14bda:	9e8d                	subw	a3,a3,a1
   14bdc:	9ebd                	addw	a3,a3,a5
   14bde:	87b6                	mv	a5,a3
   14be0:	02d05a63          	blez	a3,14c14 <__ratio+0x72>
   14be4:	0146979b          	slliw	a5,a3,0x14
   14be8:	547d                	li	s0,-1
   14bea:	0204d693          	srli	a3,s1,0x20
   14bee:	9fb5                	addw	a5,a5,a3
   14bf0:	9001                	srli	s0,s0,0x20
   14bf2:	1782                	slli	a5,a5,0x20
   14bf4:	8c65                	and	s0,s0,s1
   14bf6:	8732                	mv	a4,a2
   14bf8:	8c5d                	or	s0,s0,a5
   14bfa:	f20407d3          	fmv.d.x	fa5,s0
   14bfe:	70e2                	ld	ra,56(sp)
   14c00:	7442                	ld	s0,48(sp)
   14c02:	f2070753          	fmv.d.x	fa4,a4
   14c06:	74a2                	ld	s1,40(sp)
   14c08:	7902                	ld	s2,32(sp)
   14c0a:	69e2                	ld	s3,24(sp)
   14c0c:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   14c10:	6121                	addi	sp,sp,64
   14c12:	8082                	ret
   14c14:	fff006b7          	lui	a3,0xfff00
   14c18:	02f687bb          	mulw	a5,a3,a5
   14c1c:	02065713          	srli	a4,a2,0x20
   14c20:	8426                	mv	s0,s1
   14c22:	9fb9                	addw	a5,a5,a4
   14c24:	577d                	li	a4,-1
   14c26:	9301                	srli	a4,a4,0x20
   14c28:	1782                	slli	a5,a5,0x20
   14c2a:	8f71                	and	a4,a4,a2
   14c2c:	8f5d                	or	a4,a4,a5
   14c2e:	b7f1                	j	14bfa <__ratio+0x58>

0000000000014c30 <_mprec_log10>:
   14c30:	47dd                	li	a5,23
   14c32:	00a7c963          	blt	a5,a0,14c44 <_mprec_log10+0x14>
   14c36:	67e9                	lui	a5,0x1a
   14c38:	1a078793          	addi	a5,a5,416 # 1a1a0 <p05.3264>
   14c3c:	050e                	slli	a0,a0,0x3
   14c3e:	953e                	add	a0,a0,a5
   14c40:	2908                	fld	fa0,16(a0)
   14c42:	8082                	ret
   14c44:	0001d7b7          	lui	a5,0x1d
   14c48:	ad87b507          	fld	fa0,-1320(a5) # 1cad8 <__TMC_END__>
   14c4c:	0001d7b7          	lui	a5,0x1d
   14c50:	ae07b787          	fld	fa5,-1312(a5) # 1cae0 <__TMC_END__+0x8>
   14c54:	357d                	addiw	a0,a0,-1
   14c56:	12f57553          	fmul.d	fa0,fa0,fa5
   14c5a:	fd6d                	bnez	a0,14c54 <_mprec_log10+0x24>
   14c5c:	8082                	ret

0000000000014c5e <__copybits>:
   14c5e:	fff5879b          	addiw	a5,a1,-1
   14c62:	4a58                	lw	a4,20(a2)
   14c64:	4057d79b          	sraiw	a5,a5,0x5
   14c68:	0785                	addi	a5,a5,1
   14c6a:	078a                	slli	a5,a5,0x2
   14c6c:	01860693          	addi	a3,a2,24
   14c70:	070a                	slli	a4,a4,0x2
   14c72:	97aa                	add	a5,a5,a0
   14c74:	9736                	add	a4,a4,a3
   14c76:	00e6e563          	bltu	a3,a4,14c80 <__copybits+0x22>
   14c7a:	00f56a63          	bltu	a0,a5,14c8e <__copybits+0x30>
   14c7e:	8082                	ret
   14c80:	0691                	addi	a3,a3,4
   14c82:	ffc6a603          	lw	a2,-4(a3) # ffffffffffeffffc <__global_pointer$+0xffffffffffee2d24>
   14c86:	0511                	addi	a0,a0,4
   14c88:	fec52e23          	sw	a2,-4(a0)
   14c8c:	b7ed                	j	14c76 <__copybits+0x18>
   14c8e:	0511                	addi	a0,a0,4
   14c90:	fe052e23          	sw	zero,-4(a0)
   14c94:	b7dd                	j	14c7a <__copybits+0x1c>

0000000000014c96 <__any_on>:
   14c96:	4954                	lw	a3,20(a0)
   14c98:	4055d793          	srai	a5,a1,0x5
   14c9c:	01850713          	addi	a4,a0,24
   14ca0:	02f6c763          	blt	a3,a5,14cce <__any_on+0x38>
   14ca4:	00d7df63          	ble	a3,a5,14cc2 <__any_on+0x2c>
   14ca8:	89fd                	andi	a1,a1,31
   14caa:	cd81                	beqz	a1,14cc2 <__any_on+0x2c>
   14cac:	00279693          	slli	a3,a5,0x2
   14cb0:	96ba                	add	a3,a3,a4
   14cb2:	4290                	lw	a2,0(a3)
   14cb4:	4505                	li	a0,1
   14cb6:	00b656bb          	srlw	a3,a2,a1
   14cba:	00b695bb          	sllw	a1,a3,a1
   14cbe:	00c59e63          	bne	a1,a2,14cda <__any_on+0x44>
   14cc2:	078a                	slli	a5,a5,0x2
   14cc4:	97ba                	add	a5,a5,a4
   14cc6:	00f76663          	bltu	a4,a5,14cd2 <__any_on+0x3c>
   14cca:	4501                	li	a0,0
   14ccc:	8082                	ret
   14cce:	87b6                	mv	a5,a3
   14cd0:	bfcd                	j	14cc2 <__any_on+0x2c>
   14cd2:	17f1                	addi	a5,a5,-4
   14cd4:	4394                	lw	a3,0(a5)
   14cd6:	dae5                	beqz	a3,14cc6 <__any_on+0x30>
   14cd8:	4505                	li	a0,1
   14cda:	8082                	ret

0000000000014cdc <cleanup_glue>:
   14cdc:	1101                	addi	sp,sp,-32
   14cde:	e822                	sd	s0,16(sp)
   14ce0:	842e                	mv	s0,a1
   14ce2:	618c                	ld	a1,0(a1)
   14ce4:	e426                	sd	s1,8(sp)
   14ce6:	ec06                	sd	ra,24(sp)
   14ce8:	84aa                	mv	s1,a0
   14cea:	c199                	beqz	a1,14cf0 <cleanup_glue+0x14>
   14cec:	ff1ff0ef          	jal	ra,14cdc <cleanup_glue>
   14cf0:	85a2                	mv	a1,s0
   14cf2:	6442                	ld	s0,16(sp)
   14cf4:	60e2                	ld	ra,24(sp)
   14cf6:	8526                	mv	a0,s1
   14cf8:	64a2                	ld	s1,8(sp)
   14cfa:	6105                	addi	sp,sp,32
   14cfc:	a1dfd06f          	j	12718 <_free_r>

0000000000014d00 <_reclaim_reent>:
   14d00:	8301b783          	ld	a5,-2000(gp) # 1cb08 <_impure_ptr>
   14d04:	0aa78063          	beq	a5,a0,14da4 <_reclaim_reent+0xa4>
   14d08:	7d3c                	ld	a5,120(a0)
   14d0a:	7179                	addi	sp,sp,-48
   14d0c:	f022                	sd	s0,32(sp)
   14d0e:	ec26                	sd	s1,24(sp)
   14d10:	e84a                	sd	s2,16(sp)
   14d12:	f406                	sd	ra,40(sp)
   14d14:	e44e                	sd	s3,8(sp)
   14d16:	842a                	mv	s0,a0
   14d18:	4481                	li	s1,0
   14d1a:	20000913          	li	s2,512
   14d1e:	eb85                	bnez	a5,14d4e <_reclaim_reent+0x4e>
   14d20:	702c                	ld	a1,96(s0)
   14d22:	c581                	beqz	a1,14d2a <_reclaim_reent+0x2a>
   14d24:	8522                	mv	a0,s0
   14d26:	9f3fd0ef          	jal	ra,12718 <_free_r>
   14d2a:	1f843583          	ld	a1,504(s0)
   14d2e:	cd95                	beqz	a1,14d6a <_reclaim_reent+0x6a>
   14d30:	20040493          	addi	s1,s0,512
   14d34:	02958b63          	beq	a1,s1,14d6a <_reclaim_reent+0x6a>
   14d38:	0005b903          	ld	s2,0(a1)
   14d3c:	8522                	mv	a0,s0
   14d3e:	9dbfd0ef          	jal	ra,12718 <_free_r>
   14d42:	85ca                	mv	a1,s2
   14d44:	bfc5                	j	14d34 <_reclaim_reent+0x34>
   14d46:	95a6                	add	a1,a1,s1
   14d48:	618c                	ld	a1,0(a1)
   14d4a:	e989                	bnez	a1,14d5c <_reclaim_reent+0x5c>
   14d4c:	04a1                	addi	s1,s1,8
   14d4e:	7c2c                	ld	a1,120(s0)
   14d50:	ff249be3          	bne	s1,s2,14d46 <_reclaim_reent+0x46>
   14d54:	8522                	mv	a0,s0
   14d56:	9c3fd0ef          	jal	ra,12718 <_free_r>
   14d5a:	b7d9                	j	14d20 <_reclaim_reent+0x20>
   14d5c:	0005b983          	ld	s3,0(a1)
   14d60:	8522                	mv	a0,s0
   14d62:	9b7fd0ef          	jal	ra,12718 <_free_r>
   14d66:	85ce                	mv	a1,s3
   14d68:	b7cd                	j	14d4a <_reclaim_reent+0x4a>
   14d6a:	644c                	ld	a1,136(s0)
   14d6c:	c581                	beqz	a1,14d74 <_reclaim_reent+0x74>
   14d6e:	8522                	mv	a0,s0
   14d70:	9a9fd0ef          	jal	ra,12718 <_free_r>
   14d74:	483c                	lw	a5,80(s0)
   14d76:	c385                	beqz	a5,14d96 <_reclaim_reent+0x96>
   14d78:	6c3c                	ld	a5,88(s0)
   14d7a:	8522                	mv	a0,s0
   14d7c:	9782                	jalr	a5
   14d7e:	52043583          	ld	a1,1312(s0)
   14d82:	c991                	beqz	a1,14d96 <_reclaim_reent+0x96>
   14d84:	8522                	mv	a0,s0
   14d86:	7402                	ld	s0,32(sp)
   14d88:	70a2                	ld	ra,40(sp)
   14d8a:	64e2                	ld	s1,24(sp)
   14d8c:	6942                	ld	s2,16(sp)
   14d8e:	69a2                	ld	s3,8(sp)
   14d90:	6145                	addi	sp,sp,48
   14d92:	f4bff06f          	j	14cdc <cleanup_glue>
   14d96:	70a2                	ld	ra,40(sp)
   14d98:	7402                	ld	s0,32(sp)
   14d9a:	64e2                	ld	s1,24(sp)
   14d9c:	6942                	ld	s2,16(sp)
   14d9e:	69a2                	ld	s3,8(sp)
   14da0:	6145                	addi	sp,sp,48
   14da2:	8082                	ret
   14da4:	8082                	ret

0000000000014da6 <frexp>:
   14da6:	e20507d3          	fmv.x.d	a5,fa0
   14daa:	80000637          	lui	a2,0x80000
   14dae:	fff64613          	not	a2,a2
   14db2:	4207d713          	srai	a4,a5,0x20
   14db6:	00c776b3          	and	a3,a4,a2
   14dba:	00052023          	sw	zero,0(a0)
   14dbe:	7ff005b7          	lui	a1,0x7ff00
   14dc2:	04b6dc63          	ble	a1,a3,14e1a <frexp+0x74>
   14dc6:	00f6e5b3          	or	a1,a3,a5
   14dca:	2581                	sext.w	a1,a1
   14dcc:	c5b9                	beqz	a1,14e1a <frexp+0x74>
   14dce:	001005b7          	lui	a1,0x100
   14dd2:	02b6d163          	ble	a1,a3,14df4 <frexp+0x4e>
   14dd6:	0001d737          	lui	a4,0x1d
   14dda:	ae873787          	fld	fa5,-1304(a4) # 1cae8 <__TMC_END__+0x10>
   14dde:	12f577d3          	fmul.d	fa5,fa0,fa5
   14de2:	e20787d3          	fmv.x.d	a5,fa5
   14de6:	4207d713          	srai	a4,a5,0x20
   14dea:	00c776b3          	and	a3,a4,a2
   14dee:	fca00613          	li	a2,-54
   14df2:	c110                	sw	a2,0(a0)
   14df4:	4110                	lw	a2,0(a0)
   14df6:	4146d69b          	sraiw	a3,a3,0x14
   14dfa:	c026869b          	addiw	a3,a3,-1022
   14dfe:	9eb1                	addw	a3,a3,a2
   14e00:	c114                	sw	a3,0(a0)
   14e02:	801006b7          	lui	a3,0x80100
   14e06:	16fd                	addi	a3,a3,-1
   14e08:	8f75                	and	a4,a4,a3
   14e0a:	3fe006b7          	lui	a3,0x3fe00
   14e0e:	8f55                	or	a4,a4,a3
   14e10:	56fd                	li	a3,-1
   14e12:	9281                	srli	a3,a3,0x20
   14e14:	1702                	slli	a4,a4,0x20
   14e16:	8ff5                	and	a5,a5,a3
   14e18:	8fd9                	or	a5,a5,a4
   14e1a:	f2078553          	fmv.d.x	fa0,a5
   14e1e:	8082                	ret

0000000000014e20 <_sprintf_r>:
   14e20:	7111                	addi	sp,sp,-256
   14e22:	f5be                	sd	a5,232(sp)
   14e24:	800007b7          	lui	a5,0x80000
   14e28:	fff7c793          	not	a5,a5
   14e2c:	d83e                	sw	a5,48(sp)
   14e2e:	ce3e                	sw	a5,28(sp)
   14e30:	77c1                	lui	a5,0xffff0
   14e32:	edb6                	sd	a3,216(sp)
   14e34:	e82e                	sd	a1,16(sp)
   14e36:	f42e                	sd	a1,40(sp)
   14e38:	2087879b          	addiw	a5,a5,520
   14e3c:	09b4                	addi	a3,sp,216
   14e3e:	080c                	addi	a1,sp,16
   14e40:	e586                	sd	ra,200(sp)
   14e42:	d03e                	sw	a5,32(sp)
   14e44:	f1ba                	sd	a4,224(sp)
   14e46:	f9c2                	sd	a6,240(sp)
   14e48:	fdc6                	sd	a7,248(sp)
   14e4a:	e436                	sd	a3,8(sp)
   14e4c:	25a000ef          	jal	ra,150a6 <_svfprintf_r>
   14e50:	67c2                	ld	a5,16(sp)
   14e52:	00078023          	sb	zero,0(a5) # ffffffffffff0000 <__global_pointer$+0xfffffffffffd2d28>
   14e56:	60ae                	ld	ra,200(sp)
   14e58:	6111                	addi	sp,sp,256
   14e5a:	8082                	ret

0000000000014e5c <sprintf>:
   14e5c:	7111                	addi	sp,sp,-256
   14e5e:	f5be                	sd	a5,232(sp)
   14e60:	800007b7          	lui	a5,0x80000
   14e64:	fff7c793          	not	a5,a5
   14e68:	d83e                	sw	a5,48(sp)
   14e6a:	ce3e                	sw	a5,28(sp)
   14e6c:	77c1                	lui	a5,0xffff0
   14e6e:	2087879b          	addiw	a5,a5,520
   14e72:	d03e                	sw	a5,32(sp)
   14e74:	e82a                	sd	a0,16(sp)
   14e76:	f42a                	sd	a0,40(sp)
   14e78:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   14e7c:	e9b2                	sd	a2,208(sp)
   14e7e:	edb6                	sd	a3,216(sp)
   14e80:	862e                	mv	a2,a1
   14e82:	0994                	addi	a3,sp,208
   14e84:	080c                	addi	a1,sp,16
   14e86:	e586                	sd	ra,200(sp)
   14e88:	f1ba                	sd	a4,224(sp)
   14e8a:	f9c2                	sd	a6,240(sp)
   14e8c:	fdc6                	sd	a7,248(sp)
   14e8e:	e436                	sd	a3,8(sp)
   14e90:	216000ef          	jal	ra,150a6 <_svfprintf_r>
   14e94:	67c2                	ld	a5,16(sp)
   14e96:	00078023          	sb	zero,0(a5) # ffffffffffff0000 <__global_pointer$+0xfffffffffffd2d28>
   14e9a:	60ae                	ld	ra,200(sp)
   14e9c:	6111                	addi	sp,sp,256
   14e9e:	8082                	ret

0000000000014ea0 <__sread>:
   14ea0:	1141                	addi	sp,sp,-16
   14ea2:	e022                	sd	s0,0(sp)
   14ea4:	842e                	mv	s0,a1
   14ea6:	01259583          	lh	a1,18(a1) # 100012 <__global_pointer$+0xe2d3a>
   14eaa:	e406                	sd	ra,8(sp)
   14eac:	037020ef          	jal	ra,176e2 <_read_r>
   14eb0:	00054963          	bltz	a0,14ec2 <__sread+0x22>
   14eb4:	685c                	ld	a5,144(s0)
   14eb6:	97aa                	add	a5,a5,a0
   14eb8:	e85c                	sd	a5,144(s0)
   14eba:	60a2                	ld	ra,8(sp)
   14ebc:	6402                	ld	s0,0(sp)
   14ebe:	0141                	addi	sp,sp,16
   14ec0:	8082                	ret
   14ec2:	01045783          	lhu	a5,16(s0)
   14ec6:	777d                	lui	a4,0xfffff
   14ec8:	177d                	addi	a4,a4,-1
   14eca:	8ff9                	and	a5,a5,a4
   14ecc:	00f41823          	sh	a5,16(s0)
   14ed0:	b7ed                	j	14eba <__sread+0x1a>

0000000000014ed2 <__seofread>:
   14ed2:	4501                	li	a0,0
   14ed4:	8082                	ret

0000000000014ed6 <__swrite>:
   14ed6:	0105d783          	lhu	a5,16(a1)
   14eda:	7179                	addi	sp,sp,-48
   14edc:	f022                	sd	s0,32(sp)
   14ede:	ec26                	sd	s1,24(sp)
   14ee0:	e84a                	sd	s2,16(sp)
   14ee2:	e44e                	sd	s3,8(sp)
   14ee4:	f406                	sd	ra,40(sp)
   14ee6:	1007f793          	andi	a5,a5,256
   14eea:	84aa                	mv	s1,a0
   14eec:	842e                	mv	s0,a1
   14eee:	8932                	mv	s2,a2
   14ef0:	89b6                	mv	s3,a3
   14ef2:	c799                	beqz	a5,14f00 <__swrite+0x2a>
   14ef4:	01259583          	lh	a1,18(a1)
   14ef8:	4689                	li	a3,2
   14efa:	4601                	li	a2,0
   14efc:	6ba020ef          	jal	ra,175b6 <_lseek_r>
   14f00:	01045783          	lhu	a5,16(s0)
   14f04:	777d                	lui	a4,0xfffff
   14f06:	177d                	addi	a4,a4,-1
   14f08:	8ff9                	and	a5,a5,a4
   14f0a:	00f41823          	sh	a5,16(s0)
   14f0e:	01241583          	lh	a1,18(s0)
   14f12:	7402                	ld	s0,32(sp)
   14f14:	70a2                	ld	ra,40(sp)
   14f16:	86ce                	mv	a3,s3
   14f18:	864a                	mv	a2,s2
   14f1a:	69a2                	ld	s3,8(sp)
   14f1c:	6942                	ld	s2,16(sp)
   14f1e:	8526                	mv	a0,s1
   14f20:	64e2                	ld	s1,24(sp)
   14f22:	6145                	addi	sp,sp,48
   14f24:	0d20206f          	j	16ff6 <_write_r>

0000000000014f28 <__sseek>:
   14f28:	1141                	addi	sp,sp,-16
   14f2a:	e022                	sd	s0,0(sp)
   14f2c:	842e                	mv	s0,a1
   14f2e:	01259583          	lh	a1,18(a1)
   14f32:	e406                	sd	ra,8(sp)
   14f34:	682020ef          	jal	ra,175b6 <_lseek_r>
   14f38:	57fd                	li	a5,-1
   14f3a:	01045703          	lhu	a4,16(s0)
   14f3e:	00f51b63          	bne	a0,a5,14f54 <__sseek+0x2c>
   14f42:	77fd                	lui	a5,0xfffff
   14f44:	17fd                	addi	a5,a5,-1
   14f46:	8ff9                	and	a5,a5,a4
   14f48:	00f41823          	sh	a5,16(s0)
   14f4c:	60a2                	ld	ra,8(sp)
   14f4e:	6402                	ld	s0,0(sp)
   14f50:	0141                	addi	sp,sp,16
   14f52:	8082                	ret
   14f54:	6785                	lui	a5,0x1
   14f56:	8fd9                	or	a5,a5,a4
   14f58:	00f41823          	sh	a5,16(s0)
   14f5c:	e848                	sd	a0,144(s0)
   14f5e:	b7fd                	j	14f4c <__sseek+0x24>

0000000000014f60 <__sclose>:
   14f60:	01259583          	lh	a1,18(a1)
   14f64:	13e0206f          	j	170a2 <_close_r>

0000000000014f68 <strcmp>:
   14f68:	00b56733          	or	a4,a0,a1
   14f6c:	53fd                	li	t2,-1
   14f6e:	8b1d                	andi	a4,a4,7
   14f70:	eb4d                	bnez	a4,15022 <strcmp+0xba>
   14f72:	00008797          	auipc	a5,0x8
   14f76:	b7e7b783          	ld	a5,-1154(a5) # 1caf0 <mask>
   14f7a:	6110                	ld	a2,0(a0)
   14f7c:	6194                	ld	a3,0(a1)
   14f7e:	00f672b3          	and	t0,a2,a5
   14f82:	00f66333          	or	t1,a2,a5
   14f86:	92be                	add	t0,t0,a5
   14f88:	0062e2b3          	or	t0,t0,t1
   14f8c:	0a729963          	bne	t0,t2,1503e <strcmp+0xd6>
   14f90:	02d61e63          	bne	a2,a3,14fcc <strcmp+0x64>
   14f94:	6510                	ld	a2,8(a0)
   14f96:	6594                	ld	a3,8(a1)
   14f98:	00f672b3          	and	t0,a2,a5
   14f9c:	00f66333          	or	t1,a2,a5
   14fa0:	92be                	add	t0,t0,a5
   14fa2:	0062e2b3          	or	t0,t0,t1
   14fa6:	08729a63          	bne	t0,t2,1503a <strcmp+0xd2>
   14faa:	02d61163          	bne	a2,a3,14fcc <strcmp+0x64>
   14fae:	6910                	ld	a2,16(a0)
   14fb0:	6994                	ld	a3,16(a1)
   14fb2:	00f672b3          	and	t0,a2,a5
   14fb6:	00f66333          	or	t1,a2,a5
   14fba:	92be                	add	t0,t0,a5
   14fbc:	0062e2b3          	or	t0,t0,t1
   14fc0:	08729363          	bne	t0,t2,15046 <strcmp+0xde>
   14fc4:	0561                	addi	a0,a0,24
   14fc6:	05e1                	addi	a1,a1,24
   14fc8:	fad609e3          	beq	a2,a3,14f7a <strcmp+0x12>
   14fcc:	03061713          	slli	a4,a2,0x30
   14fd0:	03069793          	slli	a5,a3,0x30
   14fd4:	02f71863          	bne	a4,a5,15004 <strcmp+0x9c>
   14fd8:	02061713          	slli	a4,a2,0x20
   14fdc:	02069793          	slli	a5,a3,0x20
   14fe0:	02f71263          	bne	a4,a5,15004 <strcmp+0x9c>
   14fe4:	01061713          	slli	a4,a2,0x10
   14fe8:	01069793          	slli	a5,a3,0x10
   14fec:	00f71c63          	bne	a4,a5,15004 <strcmp+0x9c>
   14ff0:	03065713          	srli	a4,a2,0x30
   14ff4:	0306d793          	srli	a5,a3,0x30
   14ff8:	40f70533          	sub	a0,a4,a5
   14ffc:	0ff57593          	andi	a1,a0,255
   15000:	e991                	bnez	a1,15014 <strcmp+0xac>
   15002:	8082                	ret
   15004:	9341                	srli	a4,a4,0x30
   15006:	93c1                	srli	a5,a5,0x30
   15008:	40f70533          	sub	a0,a4,a5
   1500c:	0ff57593          	andi	a1,a0,255
   15010:	e191                	bnez	a1,15014 <strcmp+0xac>
   15012:	8082                	ret
   15014:	0ff77713          	andi	a4,a4,255
   15018:	0ff7f793          	andi	a5,a5,255
   1501c:	40f70533          	sub	a0,a4,a5
   15020:	8082                	ret
   15022:	00054603          	lbu	a2,0(a0)
   15026:	0005c683          	lbu	a3,0(a1)
   1502a:	0505                	addi	a0,a0,1
   1502c:	0585                	addi	a1,a1,1
   1502e:	00d61363          	bne	a2,a3,15034 <strcmp+0xcc>
   15032:	fa65                	bnez	a2,15022 <strcmp+0xba>
   15034:	40d60533          	sub	a0,a2,a3
   15038:	8082                	ret
   1503a:	0521                	addi	a0,a0,8
   1503c:	05a1                	addi	a1,a1,8
   1503e:	fed612e3          	bne	a2,a3,15022 <strcmp+0xba>
   15042:	4501                	li	a0,0
   15044:	8082                	ret
   15046:	0541                	addi	a0,a0,16
   15048:	05c1                	addi	a1,a1,16
   1504a:	fcd61ce3          	bne	a2,a3,15022 <strcmp+0xba>
   1504e:	4501                	li	a0,0
   15050:	8082                	ret

0000000000015052 <strcpy>:
   15052:	87aa                	mv	a5,a0
   15054:	0005c703          	lbu	a4,0(a1)
   15058:	0785                	addi	a5,a5,1
   1505a:	0585                	addi	a1,a1,1
   1505c:	fee78fa3          	sb	a4,-1(a5)
   15060:	fb75                	bnez	a4,15054 <strcpy+0x2>
   15062:	8082                	ret

0000000000015064 <strlen>:
   15064:	87aa                	mv	a5,a0
   15066:	0785                	addi	a5,a5,1
   15068:	fff7c703          	lbu	a4,-1(a5)
   1506c:	ff6d                	bnez	a4,15066 <strlen+0x2>
   1506e:	40a78533          	sub	a0,a5,a0
   15072:	157d                	addi	a0,a0,-1
   15074:	8082                	ret

0000000000015076 <strncpy>:
   15076:	872a                	mv	a4,a0
   15078:	e211                	bnez	a2,1507c <strncpy+0x6>
   1507a:	8082                	ret
   1507c:	0585                	addi	a1,a1,1
   1507e:	fff5c683          	lbu	a3,-1(a1)
   15082:	00170793          	addi	a5,a4,1 # fffffffffffff001 <__global_pointer$+0xfffffffffffe1d29>
   15086:	fff60813          	addi	a6,a2,-1 # ffffffff7fffffff <__global_pointer$+0xffffffff7ffe2d27>
   1508a:	fed78fa3          	sb	a3,-1(a5)
   1508e:	e689                	bnez	a3,15098 <strncpy+0x22>
   15090:	9732                	add	a4,a4,a2
   15092:	00e79663          	bne	a5,a4,1509e <strncpy+0x28>
   15096:	8082                	ret
   15098:	873e                	mv	a4,a5
   1509a:	8642                	mv	a2,a6
   1509c:	bff1                	j	15078 <strncpy+0x2>
   1509e:	0785                	addi	a5,a5,1
   150a0:	fe078fa3          	sb	zero,-1(a5)
   150a4:	b7fd                	j	15092 <strncpy+0x1c>

00000000000150a6 <_svfprintf_r>:
   150a6:	d9010113          	addi	sp,sp,-624
   150aa:	26113423          	sd	ra,616(sp)
   150ae:	24913c23          	sd	s1,600(sp)
   150b2:	25213823          	sd	s2,592(sp)
   150b6:	25313423          	sd	s3,584(sp)
   150ba:	23713423          	sd	s7,552(sp)
   150be:	89ae                	mv	s3,a1
   150c0:	84b2                	mv	s1,a2
   150c2:	8bb6                	mv	s7,a3
   150c4:	26813023          	sd	s0,608(sp)
   150c8:	25413023          	sd	s4,576(sp)
   150cc:	23513c23          	sd	s5,568(sp)
   150d0:	23613823          	sd	s6,560(sp)
   150d4:	23813023          	sd	s8,544(sp)
   150d8:	21913c23          	sd	s9,536(sp)
   150dc:	21a13823          	sd	s10,528(sp)
   150e0:	21b13423          	sd	s11,520(sp)
   150e4:	892a                	mv	s2,a0
   150e6:	fc3fe0ef          	jal	ra,140a8 <_localeconv_r>
   150ea:	611c                	ld	a5,0(a0)
   150ec:	853e                	mv	a0,a5
   150ee:	e4be                	sd	a5,72(sp)
   150f0:	f75ff0ef          	jal	ra,15064 <strlen>
   150f4:	0109d783          	lhu	a5,16(s3)
   150f8:	ec2a                	sd	a0,24(sp)
   150fa:	f982                	sd	zero,240(sp)
   150fc:	fd82                	sd	zero,248(sp)
   150fe:	0807f793          	andi	a5,a5,128
   15102:	cb85                	beqz	a5,15132 <_svfprintf_r+0x8c>
   15104:	0189b783          	ld	a5,24(s3)
   15108:	e78d                	bnez	a5,15132 <_svfprintf_r+0x8c>
   1510a:	04000593          	li	a1,64
   1510e:	854a                	mv	a0,s2
   15110:	b7cfb0ef          	jal	ra,1048c <_malloc_r>
   15114:	00a9b023          	sd	a0,0(s3)
   15118:	00a9bc23          	sd	a0,24(s3)
   1511c:	e519                	bnez	a0,1512a <_svfprintf_r+0x84>
   1511e:	47b1                	li	a5,12
   15120:	00f92023          	sw	a5,0(s2)
   15124:	57fd                	li	a5,-1
   15126:	f43e                	sd	a5,40(sp)
   15128:	a3cd                	j	1570a <_svfprintf_r+0x664>
   1512a:	04000793          	li	a5,64
   1512e:	02f9a023          	sw	a5,32(s3)
   15132:	67e9                	lui	a5,0x1a
   15134:	2c878793          	addi	a5,a5,712 # 1a2c8 <__mprec_bigtens+0x28>
   15138:	ed3e                	sd	a5,152(sp)
   1513a:	0001a7b7          	lui	a5,0x1a
   1513e:	e687b783          	ld	a5,-408(a5) # 19e68 <zeroes.4441+0x18>
   15142:	18010a93          	addi	s5,sp,384
   15146:	e256                	sd	s5,256(sp)
   15148:	f13e                	sd	a5,160(sp)
   1514a:	0001a7b7          	lui	a5,0x1a
   1514e:	e787b783          	ld	a5,-392(a5) # 19e78 <zeroes.4441+0x28>
   15152:	ea02                	sd	zero,272(sp)
   15154:	10012423          	sw	zero,264(sp)
   15158:	f53e                	sd	a5,168(sp)
   1515a:	0001a7b7          	lui	a5,0x1a
   1515e:	e887b783          	ld	a5,-376(a5) # 19e88 <zeroes.4441+0x38>
   15162:	4a01                	li	s4,0
   15164:	8cd6                	mv	s9,s5
   15166:	f082                	sd	zero,96(sp)
   15168:	ec82                	sd	zero,88(sp)
   1516a:	e002                	sd	zero,0(sp)
   1516c:	e082                	sd	zero,64(sp)
   1516e:	e882                	sd	zero,80(sp)
   15170:	f402                	sd	zero,40(sp)
   15172:	e93e                	sd	a5,144(sp)
   15174:	8426                	mv	s0,s1
   15176:	02500713          	li	a4,37
   1517a:	00044783          	lbu	a5,0(s0)
   1517e:	c399                	beqz	a5,15184 <_svfprintf_r+0xde>
   15180:	08e79663          	bne	a5,a4,1520c <_svfprintf_r+0x166>
   15184:	40940b3b          	subw	s6,s0,s1
   15188:	020b0f63          	beqz	s6,151c6 <_svfprintf_r+0x120>
   1518c:	67d2                	ld	a5,272(sp)
   1518e:	009cb023          	sd	s1,0(s9)
   15192:	016cb423          	sd	s6,8(s9)
   15196:	97da                	add	a5,a5,s6
   15198:	ea3e                	sd	a5,272(sp)
   1519a:	10812783          	lw	a5,264(sp)
   1519e:	0cc1                	addi	s9,s9,16
   151a0:	0017871b          	addiw	a4,a5,1
   151a4:	10e12423          	sw	a4,264(sp)
   151a8:	479d                	li	a5,7
   151aa:	00e7da63          	ble	a4,a5,151be <_svfprintf_r+0x118>
   151ae:	0210                	addi	a2,sp,256
   151b0:	85ce                	mv	a1,s3
   151b2:	854a                	mv	a0,s2
   151b4:	129020ef          	jal	ra,17adc <__ssprint_r>
   151b8:	54051363          	bnez	a0,156fe <_svfprintf_r+0x658>
   151bc:	8cd6                	mv	s9,s5
   151be:	57a2                	lw	a5,40(sp)
   151c0:	016787bb          	addw	a5,a5,s6
   151c4:	f43e                	sd	a5,40(sp)
   151c6:	00044783          	lbu	a5,0(s0)
   151ca:	e399                	bnez	a5,151d0 <_svfprintf_r+0x12a>
   151cc:	43e0106f          	j	1660a <_svfprintf_r+0x1564>
   151d0:	00140793          	addi	a5,s0,1
   151d4:	0c0107a3          	sb	zero,207(sp)
   151d8:	5dfd                	li	s11,-1
   151da:	f002                	sd	zero,32(sp)
   151dc:	4401                	li	s0,0
   151de:	05a00d13          	li	s10,90
   151e2:	4c29                	li	s8,10
   151e4:	0007cb03          	lbu	s6,0(a5)
   151e8:	00178713          	addi	a4,a5,1
   151ec:	e83a                	sd	a4,16(sp)
   151ee:	46a5                	li	a3,9
   151f0:	02a00613          	li	a2,42
   151f4:	fe0b079b          	addiw	a5,s6,-32
   151f8:	0007871b          	sext.w	a4,a5
   151fc:	3eed65e3          	bltu	s10,a4,15de6 <_svfprintf_r+0xd40>
   15200:	676a                	ld	a4,152(sp)
   15202:	1782                	slli	a5,a5,0x20
   15204:	83f9                	srli	a5,a5,0x1e
   15206:	97ba                	add	a5,a5,a4
   15208:	439c                	lw	a5,0(a5)
   1520a:	8782                	jr	a5
   1520c:	0405                	addi	s0,s0,1
   1520e:	b7b5                	j	1517a <_svfprintf_r+0xd4>
   15210:	0001a7b7          	lui	a5,0x1a
   15214:	ec878793          	addi	a5,a5,-312 # 19ec8 <zeroes.4441+0x78>
   15218:	f0be                	sd	a5,96(sp)
   1521a:	008b8793          	addi	a5,s7,8
   1521e:	f83e                	sd	a5,48(sp)
   15220:	02047793          	andi	a5,s0,32
   15224:	28078ae3          	beqz	a5,15cb8 <_svfprintf_r+0xc12>
   15228:	000bbb83          	ld	s7,0(s7)
   1522c:	00147793          	andi	a5,s0,1
   15230:	cf81                	beqz	a5,15248 <_svfprintf_r+0x1a2>
   15232:	000b8b63          	beqz	s7,15248 <_svfprintf_r+0x1a2>
   15236:	03000793          	li	a5,48
   1523a:	00246413          	ori	s0,s0,2
   1523e:	0cf10823          	sb	a5,208(sp)
   15242:	0d6108a3          	sb	s6,209(sp)
   15246:	2401                	sext.w	s0,s0
   15248:	bff47413          	andi	s0,s0,-1025
   1524c:	2401                	sext.w	s0,s0
   1524e:	4789                	li	a5,2
   15250:	1650006f          	j	15bb4 <_svfprintf_r+0xb0e>
   15254:	854a                	mv	a0,s2
   15256:	e53fe0ef          	jal	ra,140a8 <_localeconv_r>
   1525a:	651c                	ld	a5,8(a0)
   1525c:	853e                	mv	a0,a5
   1525e:	e8be                	sd	a5,80(sp)
   15260:	e05ff0ef          	jal	ra,15064 <strlen>
   15264:	e0aa                	sd	a0,64(sp)
   15266:	854a                	mv	a0,s2
   15268:	e41fe0ef          	jal	ra,140a8 <_localeconv_r>
   1526c:	691c                	ld	a5,16(a0)
   1526e:	e03e                	sd	a5,0(sp)
   15270:	6786                	ld	a5,64(sp)
   15272:	c38d                	beqz	a5,15294 <_svfprintf_r+0x1ee>
   15274:	6782                	ld	a5,0(sp)
   15276:	cf99                	beqz	a5,15294 <_svfprintf_r+0x1ee>
   15278:	0007c783          	lbu	a5,0(a5)
   1527c:	cf81                	beqz	a5,15294 <_svfprintf_r+0x1ee>
   1527e:	40046413          	ori	s0,s0,1024
   15282:	2401                	sext.w	s0,s0
   15284:	a801                	j	15294 <_svfprintf_r+0x1ee>
   15286:	0cf14783          	lbu	a5,207(sp)
   1528a:	e789                	bnez	a5,15294 <_svfprintf_r+0x1ee>
   1528c:	02000793          	li	a5,32
   15290:	0cf107a3          	sb	a5,207(sp)
   15294:	67c2                	ld	a5,16(sp)
   15296:	b7b9                	j	151e4 <_svfprintf_r+0x13e>
   15298:	00146413          	ori	s0,s0,1
   1529c:	b7dd                	j	15282 <_svfprintf_r+0x1dc>
   1529e:	000ba783          	lw	a5,0(s7)
   152a2:	0ba1                	addi	s7,s7,8
   152a4:	f03e                	sd	a5,32(sp)
   152a6:	fe07d7e3          	bgez	a5,15294 <_svfprintf_r+0x1ee>
   152aa:	5782                	lw	a5,32(sp)
   152ac:	40f007bb          	negw	a5,a5
   152b0:	f03e                	sd	a5,32(sp)
   152b2:	00446413          	ori	s0,s0,4
   152b6:	b7f1                	j	15282 <_svfprintf_r+0x1dc>
   152b8:	02b00793          	li	a5,43
   152bc:	bfd1                	j	15290 <_svfprintf_r+0x1ea>
   152be:	6742                	ld	a4,16(sp)
   152c0:	67c2                	ld	a5,16(sp)
   152c2:	00074b03          	lbu	s6,0(a4)
   152c6:	0785                	addi	a5,a5,1
   152c8:	02cb1c63          	bne	s6,a2,15300 <_svfprintf_r+0x25a>
   152cc:	000bae03          	lw	t3,0(s7)
   152d0:	008b8713          	addi	a4,s7,8
   152d4:	000e5363          	bgez	t3,152da <_svfprintf_r+0x234>
   152d8:	5e7d                	li	t3,-1
   152da:	000e0d9b          	sext.w	s11,t3
   152de:	8bba                	mv	s7,a4
   152e0:	e83e                	sd	a5,16(sp)
   152e2:	bf4d                	j	15294 <_svfprintf_r+0x1ee>
   152e4:	03bc0e3b          	mulw	t3,s8,s11
   152e8:	0785                	addi	a5,a5,1
   152ea:	fff7cb03          	lbu	s6,-1(a5)
   152ee:	00ee0dbb          	addw	s11,t3,a4
   152f2:	fd0b059b          	addiw	a1,s6,-48
   152f6:	872e                	mv	a4,a1
   152f8:	feb6f6e3          	bleu	a1,a3,152e4 <_svfprintf_r+0x23e>
   152fc:	e83e                	sd	a5,16(sp)
   152fe:	bddd                	j	151f4 <_svfprintf_r+0x14e>
   15300:	4d81                	li	s11,0
   15302:	bfc5                	j	152f2 <_svfprintf_r+0x24c>
   15304:	08046413          	ori	s0,s0,128
   15308:	bfad                	j	15282 <_svfprintf_r+0x1dc>
   1530a:	67c2                	ld	a5,16(sp)
   1530c:	f002                	sd	zero,32(sp)
   1530e:	5702                	lw	a4,32(sp)
   15310:	fd0b0b1b          	addiw	s6,s6,-48
   15314:	0785                	addi	a5,a5,1
   15316:	02ec073b          	mulw	a4,s8,a4
   1531a:	00eb073b          	addw	a4,s6,a4
   1531e:	fff7cb03          	lbu	s6,-1(a5)
   15322:	f03a                	sd	a4,32(sp)
   15324:	fd0b071b          	addiw	a4,s6,-48
   15328:	fee6f3e3          	bleu	a4,a3,1530e <_svfprintf_r+0x268>
   1532c:	bfc1                	j	152fc <_svfprintf_r+0x256>
   1532e:	00846413          	ori	s0,s0,8
   15332:	bf81                	j	15282 <_svfprintf_r+0x1dc>
   15334:	67c2                	ld	a5,16(sp)
   15336:	0007c703          	lbu	a4,0(a5)
   1533a:	06800793          	li	a5,104
   1533e:	00f71863          	bne	a4,a5,1534e <_svfprintf_r+0x2a8>
   15342:	67c2                	ld	a5,16(sp)
   15344:	20046413          	ori	s0,s0,512
   15348:	0785                	addi	a5,a5,1
   1534a:	e83e                	sd	a5,16(sp)
   1534c:	bf1d                	j	15282 <_svfprintf_r+0x1dc>
   1534e:	04046413          	ori	s0,s0,64
   15352:	bf05                	j	15282 <_svfprintf_r+0x1dc>
   15354:	67c2                	ld	a5,16(sp)
   15356:	0007c703          	lbu	a4,0(a5)
   1535a:	06c00793          	li	a5,108
   1535e:	00f71863          	bne	a4,a5,1536e <_svfprintf_r+0x2c8>
   15362:	67c2                	ld	a5,16(sp)
   15364:	0785                	addi	a5,a5,1
   15366:	e83e                	sd	a5,16(sp)
   15368:	02046413          	ori	s0,s0,32
   1536c:	bf19                	j	15282 <_svfprintf_r+0x1dc>
   1536e:	01046413          	ori	s0,s0,16
   15372:	bf01                	j	15282 <_svfprintf_r+0x1dc>
   15374:	008b8793          	addi	a5,s7,8
   15378:	f83e                	sd	a5,48(sp)
   1537a:	000ba783          	lw	a5,0(s7)
   1537e:	0c0107a3          	sb	zero,207(sp)
   15382:	10f10c23          	sb	a5,280(sp)
   15386:	4b81                	li	s7,0
   15388:	4d85                	li	s11,1
   1538a:	4701                	li	a4,0
   1538c:	e402                	sd	zero,8(sp)
   1538e:	4c01                	li	s8,0
   15390:	4d01                	li	s10,0
   15392:	0a24                	addi	s1,sp,280
   15394:	86ba                	mv	a3,a4
   15396:	01b75363          	ble	s11,a4,1539c <_svfprintf_r+0x2f6>
   1539a:	86ee                	mv	a3,s11
   1539c:	0cf14603          	lbu	a2,207(sp)
   153a0:	0006879b          	sext.w	a5,a3
   153a4:	fc3e                	sd	a5,56(sp)
   153a6:	c601                	beqz	a2,153ae <_svfprintf_r+0x308>
   153a8:	0016879b          	addiw	a5,a3,1
   153ac:	fc3e                	sd	a5,56(sp)
   153ae:	00247693          	andi	a3,s0,2
   153b2:	0006879b          	sext.w	a5,a3
   153b6:	f4be                	sd	a5,104(sp)
   153b8:	c781                	beqz	a5,153c0 <_svfprintf_r+0x31a>
   153ba:	57e2                	lw	a5,56(sp)
   153bc:	2789                	addiw	a5,a5,2
   153be:	fc3e                	sd	a5,56(sp)
   153c0:	08447793          	andi	a5,s0,132
   153c4:	f8be                	sd	a5,112(sp)
   153c6:	efa9                	bnez	a5,15420 <_svfprintf_r+0x37a>
   153c8:	5782                	lw	a5,32(sp)
   153ca:	56e2                	lw	a3,56(sp)
   153cc:	40d786bb          	subw	a3,a5,a3
   153d0:	04d05863          	blez	a3,15420 <_svfprintf_r+0x37a>
   153d4:	6869                	lui	a6,0x1a
   153d6:	48c1                	li	a7,16
   153d8:	43880813          	addi	a6,a6,1080 # 1a438 <blanks.4425>
   153dc:	4e9d                	li	t4,7
   153de:	10812583          	lw	a1,264(sp)
   153e2:	010cb023          	sd	a6,0(s9)
   153e6:	6652                	ld	a2,272(sp)
   153e8:	0015851b          	addiw	a0,a1,1
   153ec:	85aa                	mv	a1,a0
   153ee:	010c8f13          	addi	t5,s9,16
   153f2:	20d8c3e3          	blt	a7,a3,15df8 <_svfprintf_r+0xd52>
   153f6:	00dcb423          	sd	a3,8(s9)
   153fa:	96b2                	add	a3,a3,a2
   153fc:	ea36                	sd	a3,272(sp)
   153fe:	10a12423          	sw	a0,264(sp)
   15402:	469d                	li	a3,7
   15404:	8cfa                	mv	s9,t5
   15406:	00a6dd63          	ble	a0,a3,15420 <_svfprintf_r+0x37a>
   1540a:	0210                	addi	a2,sp,256
   1540c:	85ce                	mv	a1,s3
   1540e:	854a                	mv	a0,s2
   15410:	fcba                	sd	a4,120(sp)
   15412:	6ca020ef          	jal	ra,17adc <__ssprint_r>
   15416:	c119                	beqz	a0,1541c <_svfprintf_r+0x376>
   15418:	1b40106f          	j	165cc <_svfprintf_r+0x1526>
   1541c:	7766                	ld	a4,120(sp)
   1541e:	8cd6                	mv	s9,s5
   15420:	0cf14683          	lbu	a3,207(sp)
   15424:	c2a1                	beqz	a3,15464 <_svfprintf_r+0x3be>
   15426:	0cf10693          	addi	a3,sp,207
   1542a:	00dcb023          	sd	a3,0(s9)
   1542e:	4685                	li	a3,1
   15430:	00dcb423          	sd	a3,8(s9)
   15434:	66d2                	ld	a3,272(sp)
   15436:	0cc1                	addi	s9,s9,16
   15438:	0685                	addi	a3,a3,1
   1543a:	ea36                	sd	a3,272(sp)
   1543c:	10812683          	lw	a3,264(sp)
   15440:	0016861b          	addiw	a2,a3,1
   15444:	10c12423          	sw	a2,264(sp)
   15448:	469d                	li	a3,7
   1544a:	00c6dd63          	ble	a2,a3,15464 <_svfprintf_r+0x3be>
   1544e:	0210                	addi	a2,sp,256
   15450:	85ce                	mv	a1,s3
   15452:	854a                	mv	a0,s2
   15454:	fcba                	sd	a4,120(sp)
   15456:	686020ef          	jal	ra,17adc <__ssprint_r>
   1545a:	c119                	beqz	a0,15460 <_svfprintf_r+0x3ba>
   1545c:	1700106f          	j	165cc <_svfprintf_r+0x1526>
   15460:	7766                	ld	a4,120(sp)
   15462:	8cd6                	mv	s9,s5
   15464:	77a6                	ld	a5,104(sp)
   15466:	cf9d                	beqz	a5,154a4 <_svfprintf_r+0x3fe>
   15468:	0994                	addi	a3,sp,208
   1546a:	00dcb023          	sd	a3,0(s9)
   1546e:	4689                	li	a3,2
   15470:	00dcb423          	sd	a3,8(s9)
   15474:	66d2                	ld	a3,272(sp)
   15476:	0cc1                	addi	s9,s9,16
   15478:	0689                	addi	a3,a3,2
   1547a:	ea36                	sd	a3,272(sp)
   1547c:	10812683          	lw	a3,264(sp)
   15480:	0016861b          	addiw	a2,a3,1
   15484:	10c12423          	sw	a2,264(sp)
   15488:	469d                	li	a3,7
   1548a:	00c6dd63          	ble	a2,a3,154a4 <_svfprintf_r+0x3fe>
   1548e:	0210                	addi	a2,sp,256
   15490:	85ce                	mv	a1,s3
   15492:	854a                	mv	a0,s2
   15494:	f4ba                	sd	a4,104(sp)
   15496:	646020ef          	jal	ra,17adc <__ssprint_r>
   1549a:	c119                	beqz	a0,154a0 <_svfprintf_r+0x3fa>
   1549c:	1300106f          	j	165cc <_svfprintf_r+0x1526>
   154a0:	7726                	ld	a4,104(sp)
   154a2:	8cd6                	mv	s9,s5
   154a4:	77c6                	ld	a5,112(sp)
   154a6:	08000693          	li	a3,128
   154aa:	04d79e63          	bne	a5,a3,15506 <_svfprintf_r+0x460>
   154ae:	5782                	lw	a5,32(sp)
   154b0:	56e2                	lw	a3,56(sp)
   154b2:	40d786bb          	subw	a3,a5,a3
   154b6:	04d05863          	blez	a3,15506 <_svfprintf_r+0x460>
   154ba:	6869                	lui	a6,0x1a
   154bc:	48c1                	li	a7,16
   154be:	44880813          	addi	a6,a6,1096 # 1a448 <zeroes.4426>
   154c2:	4e9d                	li	t4,7
   154c4:	10812583          	lw	a1,264(sp)
   154c8:	010cb023          	sd	a6,0(s9)
   154cc:	6652                	ld	a2,272(sp)
   154ce:	0015851b          	addiw	a0,a1,1
   154d2:	85aa                	mv	a1,a0
   154d4:	010c8f13          	addi	t5,s9,16
   154d8:	14d8cee3          	blt	a7,a3,15e34 <_svfprintf_r+0xd8e>
   154dc:	00dcb423          	sd	a3,8(s9)
   154e0:	96b2                	add	a3,a3,a2
   154e2:	ea36                	sd	a3,272(sp)
   154e4:	10a12423          	sw	a0,264(sp)
   154e8:	469d                	li	a3,7
   154ea:	8cfa                	mv	s9,t5
   154ec:	00a6dd63          	ble	a0,a3,15506 <_svfprintf_r+0x460>
   154f0:	0210                	addi	a2,sp,256
   154f2:	85ce                	mv	a1,s3
   154f4:	854a                	mv	a0,s2
   154f6:	f4ba                	sd	a4,104(sp)
   154f8:	5e4020ef          	jal	ra,17adc <__ssprint_r>
   154fc:	c119                	beqz	a0,15502 <_svfprintf_r+0x45c>
   154fe:	0ce0106f          	j	165cc <_svfprintf_r+0x1526>
   15502:	7726                	ld	a4,104(sp)
   15504:	8cd6                	mv	s9,s5
   15506:	41b7073b          	subw	a4,a4,s11
   1550a:	04e05663          	blez	a4,15556 <_svfprintf_r+0x4b0>
   1550e:	6869                	lui	a6,0x1a
   15510:	48c1                	li	a7,16
   15512:	44880813          	addi	a6,a6,1096 # 1a448 <zeroes.4426>
   15516:	4e9d                	li	t4,7
   15518:	10812603          	lw	a2,264(sp)
   1551c:	010cb023          	sd	a6,0(s9)
   15520:	66d2                	ld	a3,272(sp)
   15522:	0016059b          	addiw	a1,a2,1
   15526:	862e                	mv	a2,a1
   15528:	010c8513          	addi	a0,s9,16
   1552c:	14e8c2e3          	blt	a7,a4,15e70 <_svfprintf_r+0xdca>
   15530:	00ecb423          	sd	a4,8(s9)
   15534:	9736                	add	a4,a4,a3
   15536:	ea3a                	sd	a4,272(sp)
   15538:	10b12423          	sw	a1,264(sp)
   1553c:	471d                	li	a4,7
   1553e:	8caa                	mv	s9,a0
   15540:	00b75b63          	ble	a1,a4,15556 <_svfprintf_r+0x4b0>
   15544:	0210                	addi	a2,sp,256
   15546:	85ce                	mv	a1,s3
   15548:	854a                	mv	a0,s2
   1554a:	592020ef          	jal	ra,17adc <__ssprint_r>
   1554e:	c119                	beqz	a0,15554 <_svfprintf_r+0x4ae>
   15550:	07c0106f          	j	165cc <_svfprintf_r+0x1526>
   15554:	8cd6                	mv	s9,s5
   15556:	10047693          	andi	a3,s0,256
   1555a:	6752                	ld	a4,272(sp)
   1555c:	140696e3          	bnez	a3,15ea8 <_svfprintf_r+0xe02>
   15560:	10812783          	lw	a5,264(sp)
   15564:	00ed8e33          	add	t3,s11,a4
   15568:	009cb023          	sd	s1,0(s9)
   1556c:	0017871b          	addiw	a4,a5,1
   15570:	01bcb423          	sd	s11,8(s9)
   15574:	ea72                	sd	t3,272(sp)
   15576:	10e12423          	sw	a4,264(sp)
   1557a:	479d                	li	a5,7
   1557c:	0cc1                	addi	s9,s9,16
   1557e:	20e7d1e3          	ble	a4,a5,15f80 <_svfprintf_r+0xeda>
   15582:	0210                	addi	a2,sp,256
   15584:	85ce                	mv	a1,s3
   15586:	854a                	mv	a0,s2
   15588:	554020ef          	jal	ra,17adc <__ssprint_r>
   1558c:	c119                	beqz	a0,15592 <_svfprintf_r+0x4ec>
   1558e:	03e0106f          	j	165cc <_svfprintf_r+0x1526>
   15592:	8cd6                	mv	s9,s5
   15594:	1ed0006f          	j	15f80 <_svfprintf_r+0xeda>
   15598:	01046413          	ori	s0,s0,16
   1559c:	2401                	sext.w	s0,s0
   1559e:	008b8793          	addi	a5,s7,8
   155a2:	f83e                	sd	a5,48(sp)
   155a4:	02047793          	andi	a5,s0,32
   155a8:	cb85                	beqz	a5,155d8 <_svfprintf_r+0x532>
   155aa:	000bbb83          	ld	s7,0(s7)
   155ae:	000bd863          	bgez	s7,155be <_svfprintf_r+0x518>
   155b2:	02d00793          	li	a5,45
   155b6:	41700bb3          	neg	s7,s7
   155ba:	0cf107a3          	sb	a5,207(sp)
   155be:	57fd                	li	a5,-1
   155c0:	72fd9663          	bne	s11,a5,15cec <_svfprintf_r+0xc46>
   155c4:	47a5                	li	a5,9
   155c6:	7977e163          	bltu	a5,s7,15d48 <_svfprintf_r+0xca2>
   155ca:	030b8b9b          	addiw	s7,s7,48
   155ce:	17710da3          	sb	s7,379(sp)
   155d2:	17b10493          	addi	s1,sp,379
   155d6:	afa1                	j	15d2e <_svfprintf_r+0xc88>
   155d8:	01047793          	andi	a5,s0,16
   155dc:	f7f9                	bnez	a5,155aa <_svfprintf_r+0x504>
   155de:	04047793          	andi	a5,s0,64
   155e2:	c781                	beqz	a5,155ea <_svfprintf_r+0x544>
   155e4:	000b9b83          	lh	s7,0(s7)
   155e8:	b7d9                	j	155ae <_svfprintf_r+0x508>
   155ea:	20047793          	andi	a5,s0,512
   155ee:	c781                	beqz	a5,155f6 <_svfprintf_r+0x550>
   155f0:	000b8b83          	lb	s7,0(s7)
   155f4:	bf6d                	j	155ae <_svfprintf_r+0x508>
   155f6:	000bab83          	lw	s7,0(s7)
   155fa:	bf55                	j	155ae <_svfprintf_r+0x508>
   155fc:	00847793          	andi	a5,s0,8
   15600:	cfb9                	beqz	a5,1565e <_svfprintf_r+0x5b8>
   15602:	0bbd                	addi	s7,s7,15
   15604:	ff0bfb93          	andi	s7,s7,-16
   15608:	010b8793          	addi	a5,s7,16
   1560c:	f83e                	sd	a5,48(sp)
   1560e:	000bb783          	ld	a5,0(s7)
   15612:	f9be                	sd	a5,240(sp)
   15614:	008bb783          	ld	a5,8(s7)
   15618:	fdbe                	sd	a5,248(sp)
   1561a:	1988                	addi	a0,sp,240
   1561c:	a51fe0ef          	jal	ra,1406c <_ldcheck>
   15620:	cdaa                	sw	a0,216(sp)
   15622:	4789                	li	a5,2
   15624:	04f51c63          	bne	a0,a5,1567c <_svfprintf_r+0x5d6>
   15628:	754e                	ld	a0,240(sp)
   1562a:	75ee                	ld	a1,248(sp)
   1562c:	4601                	li	a2,0
   1562e:	4681                	li	a3,0
   15630:	2ca030ef          	jal	ra,188fa <__letf2>
   15634:	00055663          	bgez	a0,15640 <_svfprintf_r+0x59a>
   15638:	02d00793          	li	a5,45
   1563c:	0cf107a3          	sb	a5,207(sp)
   15640:	04700793          	li	a5,71
   15644:	0367c763          	blt	a5,s6,15672 <_svfprintf_r+0x5cc>
   15648:	0001a4b7          	lui	s1,0x1a
   1564c:	e9048493          	addi	s1,s1,-368 # 19e90 <zeroes.4441+0x40>
   15650:	f7f47413          	andi	s0,s0,-129
   15654:	2401                	sext.w	s0,s0
   15656:	4b81                	li	s7,0
   15658:	4d8d                	li	s11,3
   1565a:	4701                	li	a4,0
   1565c:	adf9                	j	15d3a <_svfprintf_r+0xc94>
   1565e:	000bb507          	fld	fa0,0(s7)
   15662:	008b8793          	addi	a5,s7,8
   15666:	f83e                	sd	a5,48(sp)
   15668:	2bc040ef          	jal	ra,19924 <__extenddftf2>
   1566c:	f9aa                	sd	a0,240(sp)
   1566e:	fdae                	sd	a1,248(sp)
   15670:	b76d                	j	1561a <_svfprintf_r+0x574>
   15672:	0001a4b7          	lui	s1,0x1a
   15676:	e9848493          	addi	s1,s1,-360 # 19e98 <zeroes.4441+0x48>
   1567a:	bfd9                	j	15650 <_svfprintf_r+0x5aa>
   1567c:	4785                	li	a5,1
   1567e:	02f51763          	bne	a0,a5,156ac <_svfprintf_r+0x606>
   15682:	77ee                	ld	a5,248(sp)
   15684:	0007d663          	bgez	a5,15690 <_svfprintf_r+0x5ea>
   15688:	02d00793          	li	a5,45
   1568c:	0cf107a3          	sb	a5,207(sp)
   15690:	04700793          	li	a5,71
   15694:	0167c763          	blt	a5,s6,156a2 <_svfprintf_r+0x5fc>
   15698:	0001a4b7          	lui	s1,0x1a
   1569c:	ea048493          	addi	s1,s1,-352 # 19ea0 <zeroes.4441+0x50>
   156a0:	bf45                	j	15650 <_svfprintf_r+0x5aa>
   156a2:	0001a4b7          	lui	s1,0x1a
   156a6:	ea848493          	addi	s1,s1,-344 # 19ea8 <zeroes.4441+0x58>
   156aa:	b75d                	j	15650 <_svfprintf_r+0x5aa>
   156ac:	fdfb7c13          	andi	s8,s6,-33
   156b0:	04100793          	li	a5,65
   156b4:	08fc1963          	bne	s8,a5,15746 <_svfprintf_r+0x6a0>
   156b8:	03000793          	li	a5,48
   156bc:	0cf10823          	sb	a5,208(sp)
   156c0:	06100713          	li	a4,97
   156c4:	05800793          	li	a5,88
   156c8:	00eb1463          	bne	s6,a4,156d0 <_svfprintf_r+0x62a>
   156cc:	07800793          	li	a5,120
   156d0:	0cf108a3          	sb	a5,209(sp)
   156d4:	00246413          	ori	s0,s0,2
   156d8:	06300793          	li	a5,99
   156dc:	2401                	sext.w	s0,s0
   156de:	19b7d863          	ble	s11,a5,1586e <_svfprintf_r+0x7c8>
   156e2:	001d859b          	addiw	a1,s11,1
   156e6:	854a                	mv	a0,s2
   156e8:	da5fa0ef          	jal	ra,1048c <_malloc_r>
   156ec:	84aa                	mv	s1,a0
   156ee:	18051363          	bnez	a0,15874 <_svfprintf_r+0x7ce>
   156f2:	0109d783          	lhu	a5,16(s3)
   156f6:	0407e793          	ori	a5,a5,64
   156fa:	00f99823          	sh	a5,16(s3)
   156fe:	0109d783          	lhu	a5,16(s3)
   15702:	0407f793          	andi	a5,a5,64
   15706:	a0079fe3          	bnez	a5,15124 <_svfprintf_r+0x7e>
   1570a:	26813083          	ld	ra,616(sp)
   1570e:	26013403          	ld	s0,608(sp)
   15712:	7522                	ld	a0,40(sp)
   15714:	25813483          	ld	s1,600(sp)
   15718:	25013903          	ld	s2,592(sp)
   1571c:	24813983          	ld	s3,584(sp)
   15720:	24013a03          	ld	s4,576(sp)
   15724:	23813a83          	ld	s5,568(sp)
   15728:	23013b03          	ld	s6,560(sp)
   1572c:	22813b83          	ld	s7,552(sp)
   15730:	22013c03          	ld	s8,544(sp)
   15734:	21813c83          	ld	s9,536(sp)
   15738:	21013d03          	ld	s10,528(sp)
   1573c:	20813d83          	ld	s11,520(sp)
   15740:	27010113          	addi	sp,sp,624
   15744:	8082                	ret
   15746:	57fd                	li	a5,-1
   15748:	12fd8863          	beq	s11,a5,15878 <_svfprintf_r+0x7d2>
   1574c:	04700793          	li	a5,71
   15750:	4b81                	li	s7,0
   15752:	00fc1463          	bne	s8,a5,1575a <_svfprintf_r+0x6b4>
   15756:	120d8463          	beqz	s11,1587e <_svfprintf_r+0x7d8>
   1575a:	10046793          	ori	a5,s0,256
   1575e:	7a6e                	ld	s4,248(sp)
   15760:	2781                	sext.w	a5,a5
   15762:	fc3e                	sd	a5,56(sp)
   15764:	fc82                	sd	zero,120(sp)
   15766:	7ece                	ld	t4,240(sp)
   15768:	000a5963          	bgez	s4,1577a <_svfprintf_r+0x6d4>
   1576c:	57fd                	li	a5,-1
   1576e:	17fe                	slli	a5,a5,0x3f
   15770:	00fa4a33          	xor	s4,s4,a5
   15774:	02d00793          	li	a5,45
   15778:	fcbe                	sd	a5,120(sp)
   1577a:	04100793          	li	a5,65
   1577e:	22fc1363          	bne	s8,a5,159a4 <_svfprintf_r+0x8fe>
   15782:	8576                	mv	a0,t4
   15784:	85d2                	mv	a1,s4
   15786:	282040ef          	jal	ra,19a08 <__trunctfdf2>
   1578a:	09a8                	addi	a0,sp,216
   1578c:	e1aff0ef          	jal	ra,14da6 <frexp>
   15790:	194040ef          	jal	ra,19924 <__extenddftf2>
   15794:	768a                	ld	a3,160(sp)
   15796:	4601                	li	a2,0
   15798:	226030ef          	jal	ra,189be <__multf3>
   1579c:	4601                	li	a2,0
   1579e:	4681                	li	a3,0
   157a0:	e12a                	sd	a0,128(sp)
   157a2:	e52e                	sd	a1,136(sp)
   157a4:	7ef020ef          	jal	ra,18792 <__eqtf2>
   157a8:	e119                	bnez	a0,157ae <_svfprintf_r+0x708>
   157aa:	4785                	li	a5,1
   157ac:	cdbe                	sw	a5,216(sp)
   157ae:	06100793          	li	a5,97
   157b2:	0cfb1963          	bne	s6,a5,15884 <_svfprintf_r+0x7de>
   157b6:	0001a7b7          	lui	a5,0x1a
   157ba:	eb078793          	addi	a5,a5,-336 # 19eb0 <zeroes.4441+0x60>
   157be:	e43e                	sd	a5,8(sp)
   157c0:	fffd871b          	addiw	a4,s11,-1
   157c4:	8a26                	mv	s4,s1
   157c6:	76aa                	ld	a3,168(sp)
   157c8:	650a                	ld	a0,128(sp)
   157ca:	65aa                	ld	a1,136(sp)
   157cc:	4601                	li	a2,0
   157ce:	f93a                	sd	a4,176(sp)
   157d0:	1ee030ef          	jal	ra,189be <__multf3>
   157d4:	8d2a                	mv	s10,a0
   157d6:	f4ae                	sd	a1,104(sp)
   157d8:	03c040ef          	jal	ra,19814 <__fixtfsi>
   157dc:	0005079b          	sext.w	a5,a0
   157e0:	f8be                	sd	a5,112(sp)
   157e2:	0c4040ef          	jal	ra,198a6 <__floatsitf>
   157e6:	77a6                	ld	a5,104(sp)
   157e8:	86ae                	mv	a3,a1
   157ea:	862a                	mv	a2,a0
   157ec:	85be                	mv	a1,a5
   157ee:	856a                	mv	a0,s10
   157f0:	015030ef          	jal	ra,19004 <__subtf3>
   157f4:	67a2                	ld	a5,8(sp)
   157f6:	7746                	ld	a4,112(sp)
   157f8:	0a05                	addi	s4,s4,1
   157fa:	e12a                	sd	a0,128(sp)
   157fc:	00e786b3          	add	a3,a5,a4
   15800:	774a                	ld	a4,176(sp)
   15802:	0006c683          	lbu	a3,0(a3) # 3fe00000 <__global_pointer$+0x3fde2d28>
   15806:	e52e                	sd	a1,136(sp)
   15808:	0007079b          	sext.w	a5,a4
   1580c:	f4be                	sd	a5,104(sp)
   1580e:	feda0fa3          	sb	a3,-1(s4)
   15812:	57fd                	li	a5,-1
   15814:	88aa                	mv	a7,a0
   15816:	8d2e                	mv	s10,a1
   15818:	06f70b63          	beq	a4,a5,1588e <_svfprintf_r+0x7e8>
   1581c:	377d                	addiw	a4,a4,-1
   1581e:	4601                	li	a2,0
   15820:	4681                	li	a3,0
   15822:	f93a                	sd	a4,176(sp)
   15824:	fd2a                	sd	a0,184(sp)
   15826:	76d020ef          	jal	ra,18792 <__eqtf2>
   1582a:	774a                	ld	a4,176(sp)
   1582c:	78ea                	ld	a7,184(sp)
   1582e:	fd41                	bnez	a0,157c6 <_svfprintf_r+0x720>
   15830:	66ca                	ld	a3,144(sp)
   15832:	4601                	li	a2,0
   15834:	8546                	mv	a0,a7
   15836:	85ea                	mv	a1,s10
   15838:	e146                	sd	a7,128(sp)
   1583a:	7fd020ef          	jal	ra,18836 <__getf2>
   1583e:	04a04b63          	bgtz	a0,15894 <_svfprintf_r+0x7ee>
   15842:	688a                	ld	a7,128(sp)
   15844:	66ca                	ld	a3,144(sp)
   15846:	4601                	li	a2,0
   15848:	8546                	mv	a0,a7
   1584a:	85ea                	mv	a1,s10
   1584c:	747020ef          	jal	ra,18792 <__eqtf2>
   15850:	e509                	bnez	a0,1585a <_svfprintf_r+0x7b4>
   15852:	77c6                	ld	a5,112(sp)
   15854:	0017f713          	andi	a4,a5,1
   15858:	ef15                	bnez	a4,15894 <_svfprintf_r+0x7ee>
   1585a:	5726                	lw	a4,104(sp)
   1585c:	03000693          	li	a3,48
   15860:	06074163          	bltz	a4,158c2 <_svfprintf_r+0x81c>
   15864:	0a05                	addi	s4,s4,1
   15866:	feda0fa3          	sb	a3,-1(s4)
   1586a:	377d                	addiw	a4,a4,-1
   1586c:	bfd5                	j	15860 <_svfprintf_r+0x7ba>
   1586e:	4b81                	li	s7,0
   15870:	0a24                	addi	s1,sp,280
   15872:	b5e5                	j	1575a <_svfprintf_r+0x6b4>
   15874:	8baa                	mv	s7,a0
   15876:	b5d5                	j	1575a <_svfprintf_r+0x6b4>
   15878:	4b81                	li	s7,0
   1587a:	4d99                	li	s11,6
   1587c:	bdf9                	j	1575a <_svfprintf_r+0x6b4>
   1587e:	8bee                	mv	s7,s11
   15880:	4d85                	li	s11,1
   15882:	bde1                	j	1575a <_svfprintf_r+0x6b4>
   15884:	0001a7b7          	lui	a5,0x1a
   15888:	ec878793          	addi	a5,a5,-312 # 19ec8 <zeroes.4441+0x78>
   1588c:	bf0d                	j	157be <_svfprintf_r+0x718>
   1588e:	57fd                	li	a5,-1
   15890:	f4be                	sd	a5,104(sp)
   15892:	bf79                	j	15830 <_svfprintf_r+0x78a>
   15894:	67a2                	ld	a5,8(sp)
   15896:	f5d2                	sd	s4,232(sp)
   15898:	03000593          	li	a1,48
   1589c:	00f7c603          	lbu	a2,15(a5)
   158a0:	76ae                	ld	a3,232(sp)
   158a2:	fff68713          	addi	a4,a3,-1
   158a6:	f5ba                	sd	a4,232(sp)
   158a8:	fff6c703          	lbu	a4,-1(a3)
   158ac:	0ec70563          	beq	a4,a2,15996 <_svfprintf_r+0x8f0>
   158b0:	03900613          	li	a2,57
   158b4:	0ec71463          	bne	a4,a2,1599c <_svfprintf_r+0x8f6>
   158b8:	67a2                	ld	a5,8(sp)
   158ba:	00a7c703          	lbu	a4,10(a5)
   158be:	fee68fa3          	sb	a4,-1(a3)
   158c2:	04700713          	li	a4,71
   158c6:	409a0a3b          	subw	s4,s4,s1
   158ca:	4d6e                	lw	s10,216(sp)
   158cc:	18ec1463          	bne	s8,a4,15a54 <_svfprintf_r+0x9ae>
   158d0:	5775                	li	a4,-3
   158d2:	00ed4463          	blt	s10,a4,158da <_svfprintf_r+0x834>
   158d6:	1fadd463          	ble	s10,s11,15abe <_svfprintf_r+0xa18>
   158da:	3b79                	addiw	s6,s6,-2
   158dc:	fffd069b          	addiw	a3,s10,-1
   158e0:	cdb6                	sw	a3,216(sp)
   158e2:	fdfb7613          	andi	a2,s6,-33
   158e6:	04100513          	li	a0,65
   158ea:	0ffb7713          	andi	a4,s6,255
   158ee:	4581                	li	a1,0
   158f0:	00a61663          	bne	a2,a0,158fc <_svfprintf_r+0x856>
   158f4:	273d                	addiw	a4,a4,15
   158f6:	0ff77713          	andi	a4,a4,255
   158fa:	4585                	li	a1,1
   158fc:	0ee10023          	sb	a4,224(sp)
   15900:	02b00793          	li	a5,43
   15904:	0006d763          	bgez	a3,15912 <_svfprintf_r+0x86c>
   15908:	4685                	li	a3,1
   1590a:	41a686bb          	subw	a3,a3,s10
   1590e:	02d00793          	li	a5,45
   15912:	0ef100a3          	sb	a5,225(sp)
   15916:	47a5                	li	a5,9
   15918:	16d7da63          	ble	a3,a5,15a8c <_svfprintf_r+0x9e6>
   1591c:	0ef10713          	addi	a4,sp,239
   15920:	853a                	mv	a0,a4
   15922:	45a9                	li	a1,10
   15924:	4825                	li	a6,9
   15926:	02b6e7bb          	remw	a5,a3,a1
   1592a:	fff70613          	addi	a2,a4,-1
   1592e:	02b6c6bb          	divw	a3,a3,a1
   15932:	0307879b          	addiw	a5,a5,48
   15936:	fef70fa3          	sb	a5,-1(a4)
   1593a:	14d84063          	blt	a6,a3,15a7a <_svfprintf_r+0x9d4>
   1593e:	0306879b          	addiw	a5,a3,48
   15942:	fef60fa3          	sb	a5,-1(a2)
   15946:	1779                	addi	a4,a4,-2
   15948:	0e210613          	addi	a2,sp,226
   1594c:	12a76963          	bltu	a4,a0,15a7e <_svfprintf_r+0x9d8>
   15950:	119c                	addi	a5,sp,224
   15952:	40f607bb          	subw	a5,a2,a5
   15956:	ecbe                	sd	a5,88(sp)
   15958:	47e6                	lw	a5,88(sp)
   1595a:	4705                	li	a4,1
   1595c:	01478dbb          	addw	s11,a5,s4
   15960:	87ee                	mv	a5,s11
   15962:	01474563          	blt	a4,s4,1596c <_svfprintf_r+0x8c6>
   15966:	00147713          	andi	a4,s0,1
   1596a:	c701                	beqz	a4,15972 <_svfprintf_r+0x8cc>
   1596c:	4762                	lw	a4,24(sp)
   1596e:	00e78dbb          	addw	s11,a5,a4
   15972:	bff47413          	andi	s0,s0,-1025
   15976:	2401                	sext.w	s0,s0
   15978:	10046793          	ori	a5,s0,256
   1597c:	fc3e                	sd	a5,56(sp)
   1597e:	e402                	sd	zero,8(sp)
   15980:	4c01                	li	s8,0
   15982:	4d01                	li	s10,0
   15984:	77e6                	ld	a5,120(sp)
   15986:	c789                	beqz	a5,15990 <_svfprintf_r+0x8ea>
   15988:	02d00713          	li	a4,45
   1598c:	0ce107a3          	sb	a4,207(sp)
   15990:	7462                	ld	s0,56(sp)
   15992:	4701                	li	a4,0
   15994:	b401                	j	15394 <_svfprintf_r+0x2ee>
   15996:	feb68fa3          	sb	a1,-1(a3)
   1599a:	b719                	j	158a0 <_svfprintf_r+0x7fa>
   1599c:	2705                	addiw	a4,a4,1
   1599e:	0ff77713          	andi	a4,a4,255
   159a2:	bf31                	j	158be <_svfprintf_r+0x818>
   159a4:	04600793          	li	a5,70
   159a8:	00fc0b63          	beq	s8,a5,159be <_svfprintf_r+0x918>
   159ac:	04500793          	li	a5,69
   159b0:	8d6e                	mv	s10,s11
   159b2:	00fc1463          	bne	s8,a5,159ba <_svfprintf_r+0x914>
   159b6:	001d8d1b          	addiw	s10,s11,1
   159ba:	4689                	li	a3,2
   159bc:	a019                	j	159c2 <_svfprintf_r+0x91c>
   159be:	8d6e                	mv	s10,s11
   159c0:	468d                	li	a3,3
   159c2:	09bc                	addi	a5,sp,216
   159c4:	85f6                	mv	a1,t4
   159c6:	0e810893          	addi	a7,sp,232
   159ca:	0dc10813          	addi	a6,sp,220
   159ce:	876a                	mv	a4,s10
   159d0:	8652                	mv	a2,s4
   159d2:	854a                	mv	a0,s2
   159d4:	e476                	sd	t4,8(sp)
   159d6:	d81fd0ef          	jal	ra,13756 <_ldtoa_r>
   159da:	04700793          	li	a5,71
   159de:	84aa                	mv	s1,a0
   159e0:	6ea2                	ld	t4,8(sp)
   159e2:	00fc1563          	bne	s8,a5,159ec <_svfprintf_r+0x946>
   159e6:	00147793          	andi	a5,s0,1
   159ea:	cbb1                	beqz	a5,15a3e <_svfprintf_r+0x998>
   159ec:	04600713          	li	a4,70
   159f0:	01a487b3          	add	a5,s1,s10
   159f4:	02ec1963          	bne	s8,a4,15a26 <_svfprintf_r+0x980>
   159f8:	0004c683          	lbu	a3,0(s1)
   159fc:	03000713          	li	a4,48
   15a00:	02e69163          	bne	a3,a4,15a22 <_svfprintf_r+0x97c>
   15a04:	8576                	mv	a0,t4
   15a06:	4601                	li	a2,0
   15a08:	4681                	li	a3,0
   15a0a:	85d2                	mv	a1,s4
   15a0c:	f4be                	sd	a5,104(sp)
   15a0e:	e476                	sd	t4,8(sp)
   15a10:	583020ef          	jal	ra,18792 <__eqtf2>
   15a14:	6ea2                	ld	t4,8(sp)
   15a16:	77a6                	ld	a5,104(sp)
   15a18:	c509                	beqz	a0,15a22 <_svfprintf_r+0x97c>
   15a1a:	4705                	li	a4,1
   15a1c:	41a70d3b          	subw	s10,a4,s10
   15a20:	cdea                	sw	s10,216(sp)
   15a22:	476e                	lw	a4,216(sp)
   15a24:	97ba                	add	a5,a5,a4
   15a26:	4681                	li	a3,0
   15a28:	4601                	li	a2,0
   15a2a:	8576                	mv	a0,t4
   15a2c:	85d2                	mv	a1,s4
   15a2e:	e43e                	sd	a5,8(sp)
   15a30:	563020ef          	jal	ra,18792 <__eqtf2>
   15a34:	67a2                	ld	a5,8(sp)
   15a36:	03000693          	li	a3,48
   15a3a:	e909                	bnez	a0,15a4c <_svfprintf_r+0x9a6>
   15a3c:	f5be                	sd	a5,232(sp)
   15a3e:	7a2e                	ld	s4,232(sp)
   15a40:	b549                	j	158c2 <_svfprintf_r+0x81c>
   15a42:	00170613          	addi	a2,a4,1
   15a46:	f5b2                	sd	a2,232(sp)
   15a48:	00d70023          	sb	a3,0(a4)
   15a4c:	772e                	ld	a4,232(sp)
   15a4e:	fef76ae3          	bltu	a4,a5,15a42 <_svfprintf_r+0x99c>
   15a52:	b7f5                	j	15a3e <_svfprintf_r+0x998>
   15a54:	04600713          	li	a4,70
   15a58:	e8ec12e3          	bne	s8,a4,158dc <_svfprintf_r+0x836>
   15a5c:	05a05863          	blez	s10,15aac <_svfprintf_r+0xa06>
   15a60:	000d9563          	bnez	s11,15a6a <_svfprintf_r+0x9c4>
   15a64:	00147713          	andi	a4,s0,1
   15a68:	cf59                	beqz	a4,15b06 <_svfprintf_r+0xa60>
   15a6a:	47e2                	lw	a5,24(sp)
   15a6c:	01a7873b          	addw	a4,a5,s10
   15a70:	01b70dbb          	addw	s11,a4,s11
   15a74:	06600b13          	li	s6,102
   15a78:	a895                	j	15aec <_svfprintf_r+0xa46>
   15a7a:	8732                	mv	a4,a2
   15a7c:	b56d                	j	15926 <_svfprintf_r+0x880>
   15a7e:	0705                	addi	a4,a4,1
   15a80:	fff74783          	lbu	a5,-1(a4)
   15a84:	0605                	addi	a2,a2,1
   15a86:	fef60fa3          	sb	a5,-1(a2)
   15a8a:	b5c9                	j	1594c <_svfprintf_r+0x8a6>
   15a8c:	0e210713          	addi	a4,sp,226
   15a90:	e599                	bnez	a1,15a9e <_svfprintf_r+0x9f8>
   15a92:	03000793          	li	a5,48
   15a96:	0ef10123          	sb	a5,226(sp)
   15a9a:	0e310713          	addi	a4,sp,227
   15a9e:	0306879b          	addiw	a5,a3,48
   15aa2:	00170613          	addi	a2,a4,1
   15aa6:	00f70023          	sb	a5,0(a4)
   15aaa:	b55d                	j	15950 <_svfprintf_r+0x8aa>
   15aac:	000d9563          	bnez	s11,15ab6 <_svfprintf_r+0xa10>
   15ab0:	00147713          	andi	a4,s0,1
   15ab4:	cb39                	beqz	a4,15b0a <_svfprintf_r+0xa64>
   15ab6:	47e2                	lw	a5,24(sp)
   15ab8:	0017871b          	addiw	a4,a5,1
   15abc:	bf55                	j	15a70 <_svfprintf_r+0x9ca>
   15abe:	014d4c63          	blt	s10,s4,15ad6 <_svfprintf_r+0xa30>
   15ac2:	00147713          	andi	a4,s0,1
   15ac6:	8dea                	mv	s11,s10
   15ac8:	c701                	beqz	a4,15ad0 <_svfprintf_r+0xa2a>
   15aca:	47e2                	lw	a5,24(sp)
   15acc:	01a78dbb          	addw	s11,a5,s10
   15ad0:	06700b13          	li	s6,103
   15ad4:	a821                	j	15aec <_svfprintf_r+0xa46>
   15ad6:	47e2                	lw	a5,24(sp)
   15ad8:	06700b13          	li	s6,103
   15adc:	01478dbb          	addw	s11,a5,s4
   15ae0:	01a04663          	bgtz	s10,15aec <_svfprintf_r+0xa46>
   15ae4:	41ad8e3b          	subw	t3,s11,s10
   15ae8:	001e0d9b          	addiw	s11,t3,1
   15aec:	40047413          	andi	s0,s0,1024
   15af0:	00040c1b          	sext.w	s8,s0
   15af4:	e402                	sd	zero,8(sp)
   15af6:	e80c07e3          	beqz	s8,15984 <_svfprintf_r+0x8de>
   15afa:	4c01                	li	s8,0
   15afc:	e9a054e3          	blez	s10,15984 <_svfprintf_r+0x8de>
   15b00:	0ff00693          	li	a3,255
   15b04:	a01d                	j	15b2a <_svfprintf_r+0xa84>
   15b06:	8dea                	mv	s11,s10
   15b08:	b7b5                	j	15a74 <_svfprintf_r+0x9ce>
   15b0a:	06600b13          	li	s6,102
   15b0e:	4d85                	li	s11,1
   15b10:	bff1                	j	15aec <_svfprintf_r+0xa46>
   15b12:	2701                	sext.w	a4,a4
   15b14:	03a75063          	ble	s10,a4,15b34 <_svfprintf_r+0xa8e>
   15b18:	6782                	ld	a5,0(sp)
   15b1a:	40ed0d3b          	subw	s10,s10,a4
   15b1e:	0017c703          	lbu	a4,1(a5)
   15b22:	c315                	beqz	a4,15b46 <_svfprintf_r+0xaa0>
   15b24:	0785                	addi	a5,a5,1
   15b26:	2c05                	addiw	s8,s8,1
   15b28:	e03e                	sd	a5,0(sp)
   15b2a:	6782                	ld	a5,0(sp)
   15b2c:	0007c703          	lbu	a4,0(a5)
   15b30:	fed711e3          	bne	a4,a3,15b12 <_svfprintf_r+0xa6c>
   15b34:	47a2                	lw	a5,8(sp)
   15b36:	00fc073b          	addw	a4,s8,a5
   15b3a:	4786                	lw	a5,64(sp)
   15b3c:	02f7073b          	mulw	a4,a4,a5
   15b40:	01b70dbb          	addw	s11,a4,s11
   15b44:	b581                	j	15984 <_svfprintf_r+0x8de>
   15b46:	47a2                	lw	a5,8(sp)
   15b48:	2785                	addiw	a5,a5,1
   15b4a:	e43e                	sd	a5,8(sp)
   15b4c:	bff9                	j	15b2a <_svfprintf_r+0xa84>
   15b4e:	008b8713          	addi	a4,s7,8
   15b52:	f83a                	sd	a4,48(sp)
   15b54:	02047713          	andi	a4,s0,32
   15b58:	000bb783          	ld	a5,0(s7)
   15b5c:	c719                	beqz	a4,15b6a <_svfprintf_r+0xac4>
   15b5e:	7722                	ld	a4,40(sp)
   15b60:	e398                	sd	a4,0(a5)
   15b62:	7bc2                	ld	s7,48(sp)
   15b64:	64c2                	ld	s1,16(sp)
   15b66:	e0eff06f          	j	15174 <_svfprintf_r+0xce>
   15b6a:	01047713          	andi	a4,s0,16
   15b6e:	fb65                	bnez	a4,15b5e <_svfprintf_r+0xab8>
   15b70:	04047713          	andi	a4,s0,64
   15b74:	c711                	beqz	a4,15b80 <_svfprintf_r+0xada>
   15b76:	02815703          	lhu	a4,40(sp)
   15b7a:	00e79023          	sh	a4,0(a5)
   15b7e:	b7d5                	j	15b62 <_svfprintf_r+0xabc>
   15b80:	20047413          	andi	s0,s0,512
   15b84:	c411                	beqz	s0,15b90 <_svfprintf_r+0xaea>
   15b86:	02814703          	lbu	a4,40(sp)
   15b8a:	00e78023          	sb	a4,0(a5)
   15b8e:	bfd1                	j	15b62 <_svfprintf_r+0xabc>
   15b90:	5722                	lw	a4,40(sp)
   15b92:	c398                	sw	a4,0(a5)
   15b94:	b7f9                	j	15b62 <_svfprintf_r+0xabc>
   15b96:	01046413          	ori	s0,s0,16
   15b9a:	2401                	sext.w	s0,s0
   15b9c:	008b8793          	addi	a5,s7,8
   15ba0:	f83e                	sd	a5,48(sp)
   15ba2:	02047793          	andi	a5,s0,32
   15ba6:	cb85                	beqz	a5,15bd6 <_svfprintf_r+0xb30>
   15ba8:	000bbb83          	ld	s7,0(s7)
   15bac:	bff47413          	andi	s0,s0,-1025
   15bb0:	2401                	sext.w	s0,s0
   15bb2:	4781                	li	a5,0
   15bb4:	0c0107a3          	sb	zero,207(sp)
   15bb8:	577d                	li	a4,-1
   15bba:	12ed8c63          	beq	s11,a4,15cf2 <_svfprintf_r+0xc4c>
   15bbe:	8722                	mv	a4,s0
   15bc0:	f7f47413          	andi	s0,s0,-129
   15bc4:	2401                	sext.w	s0,s0
   15bc6:	120b9663          	bnez	s7,15cf2 <_svfprintf_r+0xc4c>
   15bca:	200d8463          	beqz	s11,15dd2 <_svfprintf_r+0xd2c>
   15bce:	4705                	li	a4,1
   15bd0:	12e79463          	bne	a5,a4,15cf8 <_svfprintf_r+0xc52>
   15bd4:	badd                	j	155ca <_svfprintf_r+0x524>
   15bd6:	01047793          	andi	a5,s0,16
   15bda:	f7f9                	bnez	a5,15ba8 <_svfprintf_r+0xb02>
   15bdc:	04047793          	andi	a5,s0,64
   15be0:	000bab83          	lw	s7,0(s7)
   15be4:	c789                	beqz	a5,15bee <_svfprintf_r+0xb48>
   15be6:	1bc2                	slli	s7,s7,0x30
   15be8:	030bdb93          	srli	s7,s7,0x30
   15bec:	b7c1                	j	15bac <_svfprintf_r+0xb06>
   15bee:	20047793          	andi	a5,s0,512
   15bf2:	c781                	beqz	a5,15bfa <_svfprintf_r+0xb54>
   15bf4:	0ffbfb93          	andi	s7,s7,255
   15bf8:	bf55                	j	15bac <_svfprintf_r+0xb06>
   15bfa:	1b82                	slli	s7,s7,0x20
   15bfc:	020bdb93          	srli	s7,s7,0x20
   15c00:	b775                	j	15bac <_svfprintf_r+0xb06>
   15c02:	008b8793          	addi	a5,s7,8
   15c06:	f83e                	sd	a5,48(sp)
   15c08:	77e1                	lui	a5,0xffff8
   15c0a:	8307c793          	xori	a5,a5,-2000
   15c0e:	0cf11823          	sh	a5,208(sp)
   15c12:	0001a7b7          	lui	a5,0x1a
   15c16:	eb078793          	addi	a5,a5,-336 # 19eb0 <zeroes.4441+0x60>
   15c1a:	00246413          	ori	s0,s0,2
   15c1e:	f0be                	sd	a5,96(sp)
   15c20:	000bbb83          	ld	s7,0(s7)
   15c24:	2401                	sext.w	s0,s0
   15c26:	4789                	li	a5,2
   15c28:	07800b13          	li	s6,120
   15c2c:	b761                	j	15bb4 <_svfprintf_r+0xb0e>
   15c2e:	008b8793          	addi	a5,s7,8
   15c32:	f83e                	sd	a5,48(sp)
   15c34:	0c0107a3          	sb	zero,207(sp)
   15c38:	57fd                	li	a5,-1
   15c3a:	000bb483          	ld	s1,0(s7)
   15c3e:	00fd8e63          	beq	s11,a5,15c5a <_svfprintf_r+0xbb4>
   15c42:	866e                	mv	a2,s11
   15c44:	4581                	li	a1,0
   15c46:	8526                	mv	a0,s1
   15c48:	e62fe0ef          	jal	ra,142aa <memchr>
   15c4c:	8baa                	mv	s7,a0
   15c4e:	a00506e3          	beqz	a0,1565a <_svfprintf_r+0x5b4>
   15c52:	40950dbb          	subw	s11,a0,s1
   15c56:	4b81                	li	s7,0
   15c58:	b409                	j	1565a <_svfprintf_r+0x5b4>
   15c5a:	8526                	mv	a0,s1
   15c5c:	c08ff0ef          	jal	ra,15064 <strlen>
   15c60:	00050d9b          	sext.w	s11,a0
   15c64:	bfcd                	j	15c56 <_svfprintf_r+0xbb0>
   15c66:	01046413          	ori	s0,s0,16
   15c6a:	2401                	sext.w	s0,s0
   15c6c:	008b8793          	addi	a5,s7,8
   15c70:	f83e                	sd	a5,48(sp)
   15c72:	02047793          	andi	a5,s0,32
   15c76:	c789                	beqz	a5,15c80 <_svfprintf_r+0xbda>
   15c78:	000bbb83          	ld	s7,0(s7)
   15c7c:	4785                	li	a5,1
   15c7e:	bf1d                	j	15bb4 <_svfprintf_r+0xb0e>
   15c80:	01047793          	andi	a5,s0,16
   15c84:	fbf5                	bnez	a5,15c78 <_svfprintf_r+0xbd2>
   15c86:	04047793          	andi	a5,s0,64
   15c8a:	000bab83          	lw	s7,0(s7)
   15c8e:	c789                	beqz	a5,15c98 <_svfprintf_r+0xbf2>
   15c90:	1bc2                	slli	s7,s7,0x30
   15c92:	030bdb93          	srli	s7,s7,0x30
   15c96:	b7dd                	j	15c7c <_svfprintf_r+0xbd6>
   15c98:	20047793          	andi	a5,s0,512
   15c9c:	c781                	beqz	a5,15ca4 <_svfprintf_r+0xbfe>
   15c9e:	0ffbfb93          	andi	s7,s7,255
   15ca2:	bfe9                	j	15c7c <_svfprintf_r+0xbd6>
   15ca4:	1b82                	slli	s7,s7,0x20
   15ca6:	020bdb93          	srli	s7,s7,0x20
   15caa:	bfc9                	j	15c7c <_svfprintf_r+0xbd6>
   15cac:	0001a7b7          	lui	a5,0x1a
   15cb0:	eb078793          	addi	a5,a5,-336 # 19eb0 <zeroes.4441+0x60>
   15cb4:	d64ff06f          	j	15218 <_svfprintf_r+0x172>
   15cb8:	01047793          	andi	a5,s0,16
   15cbc:	d6079663          	bnez	a5,15228 <_svfprintf_r+0x182>
   15cc0:	04047793          	andi	a5,s0,64
   15cc4:	000bab83          	lw	s7,0(s7)
   15cc8:	c791                	beqz	a5,15cd4 <_svfprintf_r+0xc2e>
   15cca:	1bc2                	slli	s7,s7,0x30
   15ccc:	030bdb93          	srli	s7,s7,0x30
   15cd0:	d5cff06f          	j	1522c <_svfprintf_r+0x186>
   15cd4:	20047793          	andi	a5,s0,512
   15cd8:	c789                	beqz	a5,15ce2 <_svfprintf_r+0xc3c>
   15cda:	0ffbfb93          	andi	s7,s7,255
   15cde:	d4eff06f          	j	1522c <_svfprintf_r+0x186>
   15ce2:	1b82                	slli	s7,s7,0x20
   15ce4:	020bdb93          	srli	s7,s7,0x20
   15ce8:	d44ff06f          	j	1522c <_svfprintf_r+0x186>
   15cec:	8722                	mv	a4,s0
   15cee:	4785                	li	a5,1
   15cf0:	bdc1                	j	15bc0 <_svfprintf_r+0xb1a>
   15cf2:	4705                	li	a4,1
   15cf4:	8ce788e3          	beq	a5,a4,155c4 <_svfprintf_r+0x51e>
   15cf8:	4709                	li	a4,2
   15cfa:	0ae78d63          	beq	a5,a4,15db4 <_svfprintf_r+0xd0e>
   15cfe:	1afc                	addi	a5,sp,380
   15d00:	007bf713          	andi	a4,s7,7
   15d04:	03070713          	addi	a4,a4,48
   15d08:	fee78fa3          	sb	a4,-1(a5)
   15d0c:	003bdb93          	srli	s7,s7,0x3
   15d10:	fff78493          	addi	s1,a5,-1
   15d14:	020b9863          	bnez	s7,15d44 <_svfprintf_r+0xc9e>
   15d18:	00147693          	andi	a3,s0,1
   15d1c:	ca89                	beqz	a3,15d2e <_svfprintf_r+0xc88>
   15d1e:	03000693          	li	a3,48
   15d22:	00d70663          	beq	a4,a3,15d2e <_svfprintf_r+0xc88>
   15d26:	fed48fa3          	sb	a3,-1(s1)
   15d2a:	ffe78493          	addi	s1,a5,-2
   15d2e:	17c10e13          	addi	t3,sp,380
   15d32:	876e                	mv	a4,s11
   15d34:	4b81                	li	s7,0
   15d36:	409e0dbb          	subw	s11,t3,s1
   15d3a:	e402                	sd	zero,8(sp)
   15d3c:	4c01                	li	s8,0
   15d3e:	4d01                	li	s10,0
   15d40:	e54ff06f          	j	15394 <_svfprintf_r+0x2ee>
   15d44:	87a6                	mv	a5,s1
   15d46:	bf6d                	j	15d00 <_svfprintf_r+0xc5a>
   15d48:	40047c13          	andi	s8,s0,1024
   15d4c:	4a01                	li	s4,0
   15d4e:	1afc                	addi	a5,sp,380
   15d50:	4d29                	li	s10,10
   15d52:	2c01                	sext.w	s8,s8
   15d54:	0ff00693          	li	a3,255
   15d58:	4825                	li	a6,9
   15d5a:	03abf733          	remu	a4,s7,s10
   15d5e:	fff78493          	addi	s1,a5,-1
   15d62:	2a05                	addiw	s4,s4,1
   15d64:	0307071b          	addiw	a4,a4,48
   15d68:	fee78fa3          	sb	a4,-1(a5)
   15d6c:	020c0e63          	beqz	s8,15da8 <_svfprintf_r+0xd02>
   15d70:	6782                	ld	a5,0(sp)
   15d72:	0007c783          	lbu	a5,0(a5)
   15d76:	02fa1963          	bne	s4,a5,15da8 <_svfprintf_r+0xd02>
   15d7a:	02d78763          	beq	a5,a3,15da8 <_svfprintf_r+0xd02>
   15d7e:	03787563          	bleu	s7,a6,15da8 <_svfprintf_r+0xd02>
   15d82:	6786                	ld	a5,64(sp)
   15d84:	65c6                	ld	a1,80(sp)
   15d86:	fc42                	sd	a6,56(sp)
   15d88:	8c9d                	sub	s1,s1,a5
   15d8a:	863e                	mv	a2,a5
   15d8c:	8526                	mv	a0,s1
   15d8e:	e436                	sd	a3,8(sp)
   15d90:	ae6ff0ef          	jal	ra,15076 <strncpy>
   15d94:	6782                	ld	a5,0(sp)
   15d96:	4a01                	li	s4,0
   15d98:	66a2                	ld	a3,8(sp)
   15d9a:	0017c783          	lbu	a5,1(a5)
   15d9e:	7862                	ld	a6,56(sp)
   15da0:	c781                	beqz	a5,15da8 <_svfprintf_r+0xd02>
   15da2:	6782                	ld	a5,0(sp)
   15da4:	0785                	addi	a5,a5,1
   15da6:	e03e                	sd	a5,0(sp)
   15da8:	03abdbb3          	divu	s7,s7,s10
   15dac:	f80b81e3          	beqz	s7,15d2e <_svfprintf_r+0xc88>
   15db0:	87a6                	mv	a5,s1
   15db2:	b765                	j	15d5a <_svfprintf_r+0xcb4>
   15db4:	1ae4                	addi	s1,sp,380
   15db6:	7706                	ld	a4,96(sp)
   15db8:	00fbf793          	andi	a5,s7,15
   15dbc:	14fd                	addi	s1,s1,-1
   15dbe:	97ba                	add	a5,a5,a4
   15dc0:	0007c783          	lbu	a5,0(a5)
   15dc4:	004bdb93          	srli	s7,s7,0x4
   15dc8:	00f48023          	sb	a5,0(s1)
   15dcc:	fe0b95e3          	bnez	s7,15db6 <_svfprintf_r+0xd10>
   15dd0:	bfb9                	j	15d2e <_svfprintf_r+0xc88>
   15dd2:	1ae4                	addi	s1,sp,380
   15dd4:	ffa9                	bnez	a5,15d2e <_svfprintf_r+0xc88>
   15dd6:	8b05                	andi	a4,a4,1
   15dd8:	db39                	beqz	a4,15d2e <_svfprintf_r+0xc88>
   15dda:	03000793          	li	a5,48
   15dde:	16f10da3          	sb	a5,379(sp)
   15de2:	ff0ff06f          	j	155d2 <_svfprintf_r+0x52c>
   15de6:	020b02e3          	beqz	s6,1660a <_svfprintf_r+0x1564>
   15dea:	11610c23          	sb	s6,280(sp)
   15dee:	0c0107a3          	sb	zero,207(sp)
   15df2:	f85e                	sd	s7,48(sp)
   15df4:	d92ff06f          	j	15386 <_svfprintf_r+0x2e0>
   15df8:	0641                	addi	a2,a2,16
   15dfa:	011cb423          	sd	a7,8(s9)
   15dfe:	ea32                	sd	a2,272(sp)
   15e00:	10b12423          	sw	a1,264(sp)
   15e04:	02aed463          	ble	a0,t4,15e2c <_svfprintf_r+0xd86>
   15e08:	0210                	addi	a2,sp,256
   15e0a:	85ce                	mv	a1,s3
   15e0c:	854a                	mv	a0,s2
   15e0e:	fd76                	sd	t4,184(sp)
   15e10:	f942                	sd	a6,176(sp)
   15e12:	e546                	sd	a7,136(sp)
   15e14:	e13a                	sd	a4,128(sp)
   15e16:	fcb6                	sd	a3,120(sp)
   15e18:	4c5010ef          	jal	ra,17adc <__ssprint_r>
   15e1c:	7a051863          	bnez	a0,165cc <_svfprintf_r+0x1526>
   15e20:	7eea                	ld	t4,184(sp)
   15e22:	784a                	ld	a6,176(sp)
   15e24:	68aa                	ld	a7,136(sp)
   15e26:	670a                	ld	a4,128(sp)
   15e28:	76e6                	ld	a3,120(sp)
   15e2a:	8f56                	mv	t5,s5
   15e2c:	36c1                	addiw	a3,a3,-16
   15e2e:	8cfa                	mv	s9,t5
   15e30:	daeff06f          	j	153de <_svfprintf_r+0x338>
   15e34:	0641                	addi	a2,a2,16
   15e36:	011cb423          	sd	a7,8(s9)
   15e3a:	ea32                	sd	a2,272(sp)
   15e3c:	10b12423          	sw	a1,264(sp)
   15e40:	02aed463          	ble	a0,t4,15e68 <_svfprintf_r+0xdc2>
   15e44:	0210                	addi	a2,sp,256
   15e46:	85ce                	mv	a1,s3
   15e48:	854a                	mv	a0,s2
   15e4a:	e576                	sd	t4,136(sp)
   15e4c:	e142                	sd	a6,128(sp)
   15e4e:	fcc6                	sd	a7,120(sp)
   15e50:	f8ba                	sd	a4,112(sp)
   15e52:	f4b6                	sd	a3,104(sp)
   15e54:	489010ef          	jal	ra,17adc <__ssprint_r>
   15e58:	76051a63          	bnez	a0,165cc <_svfprintf_r+0x1526>
   15e5c:	6eaa                	ld	t4,136(sp)
   15e5e:	680a                	ld	a6,128(sp)
   15e60:	78e6                	ld	a7,120(sp)
   15e62:	7746                	ld	a4,112(sp)
   15e64:	76a6                	ld	a3,104(sp)
   15e66:	8f56                	mv	t5,s5
   15e68:	36c1                	addiw	a3,a3,-16
   15e6a:	8cfa                	mv	s9,t5
   15e6c:	e58ff06f          	j	154c4 <_svfprintf_r+0x41e>
   15e70:	06c1                	addi	a3,a3,16
   15e72:	011cb423          	sd	a7,8(s9)
   15e76:	ea36                	sd	a3,272(sp)
   15e78:	10c12423          	sw	a2,264(sp)
   15e7c:	02bed263          	ble	a1,t4,15ea0 <_svfprintf_r+0xdfa>
   15e80:	0210                	addi	a2,sp,256
   15e82:	85ce                	mv	a1,s3
   15e84:	854a                	mv	a0,s2
   15e86:	e176                	sd	t4,128(sp)
   15e88:	fcc2                	sd	a6,120(sp)
   15e8a:	f8c6                	sd	a7,112(sp)
   15e8c:	f4ba                	sd	a4,104(sp)
   15e8e:	44f010ef          	jal	ra,17adc <__ssprint_r>
   15e92:	72051d63          	bnez	a0,165cc <_svfprintf_r+0x1526>
   15e96:	6e8a                	ld	t4,128(sp)
   15e98:	7866                	ld	a6,120(sp)
   15e9a:	78c6                	ld	a7,112(sp)
   15e9c:	7726                	ld	a4,104(sp)
   15e9e:	8556                	mv	a0,s5
   15ea0:	3741                	addiw	a4,a4,-16
   15ea2:	8caa                	mv	s9,a0
   15ea4:	e74ff06f          	j	15518 <_svfprintf_r+0x472>
   15ea8:	06500693          	li	a3,101
   15eac:	5766df63          	ble	s6,a3,1642a <_svfprintf_r+0x1384>
   15eb0:	754e                	ld	a0,240(sp)
   15eb2:	75ee                	ld	a1,248(sp)
   15eb4:	4601                	li	a2,0
   15eb6:	4681                	li	a3,0
   15eb8:	f4ba                	sd	a4,104(sp)
   15eba:	0d9020ef          	jal	ra,18792 <__eqtf2>
   15ebe:	7726                	ld	a4,104(sp)
   15ec0:	10051e63          	bnez	a0,15fdc <_svfprintf_r+0xf36>
   15ec4:	0001a7b7          	lui	a5,0x1a
   15ec8:	ee078793          	addi	a5,a5,-288 # 19ee0 <zeroes.4441+0x90>
   15ecc:	00fcb023          	sd	a5,0(s9)
   15ed0:	4785                	li	a5,1
   15ed2:	00fcb423          	sd	a5,8(s9)
   15ed6:	10812783          	lw	a5,264(sp)
   15eda:	0705                	addi	a4,a4,1
   15edc:	ea3a                	sd	a4,272(sp)
   15ede:	0017871b          	addiw	a4,a5,1
   15ee2:	10e12423          	sw	a4,264(sp)
   15ee6:	479d                	li	a5,7
   15ee8:	0cc1                	addi	s9,s9,16
   15eea:	00e7da63          	ble	a4,a5,15efe <_svfprintf_r+0xe58>
   15eee:	0210                	addi	a2,sp,256
   15ef0:	85ce                	mv	a1,s3
   15ef2:	854a                	mv	a0,s2
   15ef4:	3e9010ef          	jal	ra,17adc <__ssprint_r>
   15ef8:	6c051a63          	bnez	a0,165cc <_svfprintf_r+0x1526>
   15efc:	8cd6                	mv	s9,s5
   15efe:	47ee                	lw	a5,216(sp)
   15f00:	0147c563          	blt	a5,s4,15f0a <_svfprintf_r+0xe64>
   15f04:	00147793          	andi	a5,s0,1
   15f08:	cfa5                	beqz	a5,15f80 <_svfprintf_r+0xeda>
   15f0a:	67a6                	ld	a5,72(sp)
   15f0c:	6762                	ld	a4,24(sp)
   15f0e:	0cc1                	addi	s9,s9,16
   15f10:	fefcb823          	sd	a5,-16(s9)
   15f14:	67e2                	ld	a5,24(sp)
   15f16:	fefcbc23          	sd	a5,-8(s9)
   15f1a:	67d2                	ld	a5,272(sp)
   15f1c:	97ba                	add	a5,a5,a4
   15f1e:	ea3e                	sd	a5,272(sp)
   15f20:	10812783          	lw	a5,264(sp)
   15f24:	0017871b          	addiw	a4,a5,1
   15f28:	10e12423          	sw	a4,264(sp)
   15f2c:	479d                	li	a5,7
   15f2e:	00e7da63          	ble	a4,a5,15f42 <_svfprintf_r+0xe9c>
   15f32:	0210                	addi	a2,sp,256
   15f34:	85ce                	mv	a1,s3
   15f36:	854a                	mv	a0,s2
   15f38:	3a5010ef          	jal	ra,17adc <__ssprint_r>
   15f3c:	68051863          	bnez	a0,165cc <_svfprintf_r+0x1526>
   15f40:	8cd6                	mv	s9,s5
   15f42:	fffa049b          	addiw	s1,s4,-1
   15f46:	02905d63          	blez	s1,15f80 <_svfprintf_r+0xeda>
   15f4a:	6b69                	lui	s6,0x1a
   15f4c:	4c41                	li	s8,16
   15f4e:	448b0b13          	addi	s6,s6,1096 # 1a448 <zeroes.4426>
   15f52:	4d1d                	li	s10,7
   15f54:	10812703          	lw	a4,264(sp)
   15f58:	016cb023          	sd	s6,0(s9)
   15f5c:	67d2                	ld	a5,272(sp)
   15f5e:	0017069b          	addiw	a3,a4,1
   15f62:	8736                	mv	a4,a3
   15f64:	010c8613          	addi	a2,s9,16
   15f68:	049c4763          	blt	s8,s1,15fb6 <_svfprintf_r+0xf10>
   15f6c:	009cb423          	sd	s1,8(s9)
   15f70:	94be                	add	s1,s1,a5
   15f72:	ea26                	sd	s1,272(sp)
   15f74:	10d12423          	sw	a3,264(sp)
   15f78:	479d                	li	a5,7
   15f7a:	8cb2                	mv	s9,a2
   15f7c:	e0d7c363          	blt	a5,a3,15582 <_svfprintf_r+0x4dc>
   15f80:	8811                	andi	s0,s0,4
   15f82:	60041063          	bnez	s0,16582 <_svfprintf_r+0x14dc>
   15f86:	7702                	ld	a4,32(sp)
   15f88:	76e2                	ld	a3,56(sp)
   15f8a:	5782                	lw	a5,32(sp)
   15f8c:	00d75363          	ble	a3,a4,15f92 <_svfprintf_r+0xeec>
   15f90:	57e2                	lw	a5,56(sp)
   15f92:	5722                	lw	a4,40(sp)
   15f94:	9fb9                	addw	a5,a5,a4
   15f96:	f43e                	sd	a5,40(sp)
   15f98:	67d2                	ld	a5,272(sp)
   15f9a:	cb81                	beqz	a5,15faa <_svfprintf_r+0xf04>
   15f9c:	0210                	addi	a2,sp,256
   15f9e:	85ce                	mv	a1,s3
   15fa0:	854a                	mv	a0,s2
   15fa2:	33b010ef          	jal	ra,17adc <__ssprint_r>
   15fa6:	62051363          	bnez	a0,165cc <_svfprintf_r+0x1526>
   15faa:	10012423          	sw	zero,264(sp)
   15fae:	640b9963          	bnez	s7,16600 <_svfprintf_r+0x155a>
   15fb2:	8cd6                	mv	s9,s5
   15fb4:	b67d                	j	15b62 <_svfprintf_r+0xabc>
   15fb6:	07c1                	addi	a5,a5,16
   15fb8:	018cb423          	sd	s8,8(s9)
   15fbc:	ea3e                	sd	a5,272(sp)
   15fbe:	10e12423          	sw	a4,264(sp)
   15fc2:	00dd5a63          	ble	a3,s10,15fd6 <_svfprintf_r+0xf30>
   15fc6:	0210                	addi	a2,sp,256
   15fc8:	85ce                	mv	a1,s3
   15fca:	854a                	mv	a0,s2
   15fcc:	311010ef          	jal	ra,17adc <__ssprint_r>
   15fd0:	5e051e63          	bnez	a0,165cc <_svfprintf_r+0x1526>
   15fd4:	8656                	mv	a2,s5
   15fd6:	34c1                	addiw	s1,s1,-16
   15fd8:	8cb2                	mv	s9,a2
   15fda:	bfad                	j	15f54 <_svfprintf_r+0xeae>
   15fdc:	46ee                	lw	a3,216(sp)
   15fde:	12d04163          	bgtz	a3,16100 <_svfprintf_r+0x105a>
   15fe2:	0001a7b7          	lui	a5,0x1a
   15fe6:	ee078793          	addi	a5,a5,-288 # 19ee0 <zeroes.4441+0x90>
   15fea:	00fcb023          	sd	a5,0(s9)
   15fee:	4785                	li	a5,1
   15ff0:	00fcb423          	sd	a5,8(s9)
   15ff4:	10812783          	lw	a5,264(sp)
   15ff8:	0705                	addi	a4,a4,1
   15ffa:	ea3a                	sd	a4,272(sp)
   15ffc:	0017871b          	addiw	a4,a5,1
   16000:	10e12423          	sw	a4,264(sp)
   16004:	479d                	li	a5,7
   16006:	0cc1                	addi	s9,s9,16
   16008:	00e7da63          	ble	a4,a5,1601c <_svfprintf_r+0xf76>
   1600c:	0210                	addi	a2,sp,256
   1600e:	85ce                	mv	a1,s3
   16010:	854a                	mv	a0,s2
   16012:	2cb010ef          	jal	ra,17adc <__ssprint_r>
   16016:	5a051b63          	bnez	a0,165cc <_svfprintf_r+0x1526>
   1601a:	8cd6                	mv	s9,s5
   1601c:	47ee                	lw	a5,216(sp)
   1601e:	e791                	bnez	a5,1602a <_svfprintf_r+0xf84>
   16020:	000a1563          	bnez	s4,1602a <_svfprintf_r+0xf84>
   16024:	00147793          	andi	a5,s0,1
   16028:	dfa1                	beqz	a5,15f80 <_svfprintf_r+0xeda>
   1602a:	67a6                	ld	a5,72(sp)
   1602c:	6762                	ld	a4,24(sp)
   1602e:	010c8313          	addi	t1,s9,16
   16032:	00fcb023          	sd	a5,0(s9)
   16036:	67e2                	ld	a5,24(sp)
   16038:	00fcb423          	sd	a5,8(s9)
   1603c:	67d2                	ld	a5,272(sp)
   1603e:	97ba                	add	a5,a5,a4
   16040:	ea3e                	sd	a5,272(sp)
   16042:	10812783          	lw	a5,264(sp)
   16046:	0017871b          	addiw	a4,a5,1
   1604a:	10e12423          	sw	a4,264(sp)
   1604e:	479d                	li	a5,7
   16050:	00e7da63          	ble	a4,a5,16064 <_svfprintf_r+0xfbe>
   16054:	0210                	addi	a2,sp,256
   16056:	85ce                	mv	a1,s3
   16058:	854a                	mv	a0,s2
   1605a:	283010ef          	jal	ra,17adc <__ssprint_r>
   1605e:	56051763          	bnez	a0,165cc <_svfprintf_r+0x1526>
   16062:	8356                	mv	t1,s5
   16064:	4b6e                	lw	s6,216(sp)
   16066:	040b5663          	bgez	s6,160b2 <_svfprintf_r+0x100c>
   1606a:	6c69                	lui	s8,0x1a
   1606c:	41600b3b          	negw	s6,s6
   16070:	879a                	mv	a5,t1
   16072:	4d41                	li	s10,16
   16074:	448c0c13          	addi	s8,s8,1096 # 1a448 <zeroes.4426>
   16078:	4c9d                	li	s9,7
   1607a:	10812683          	lw	a3,264(sp)
   1607e:	0187b023          	sd	s8,0(a5)
   16082:	6752                	ld	a4,272(sp)
   16084:	0016861b          	addiw	a2,a3,1
   16088:	86b2                	mv	a3,a2
   1608a:	0341                	addi	t1,t1,16
   1608c:	056d4763          	blt	s10,s6,160da <_svfprintf_r+0x1034>
   16090:	0167b423          	sd	s6,8(a5)
   16094:	9b3a                	add	s6,s6,a4
   16096:	ea5a                	sd	s6,272(sp)
   16098:	10c12423          	sw	a2,264(sp)
   1609c:	479d                	li	a5,7
   1609e:	00c7da63          	ble	a2,a5,160b2 <_svfprintf_r+0x100c>
   160a2:	0210                	addi	a2,sp,256
   160a4:	85ce                	mv	a1,s3
   160a6:	854a                	mv	a0,s2
   160a8:	235010ef          	jal	ra,17adc <__ssprint_r>
   160ac:	52051063          	bnez	a0,165cc <_svfprintf_r+0x1526>
   160b0:	8356                	mv	t1,s5
   160b2:	67d2                	ld	a5,272(sp)
   160b4:	00933023          	sd	s1,0(t1)
   160b8:	01433423          	sd	s4,8(t1)
   160bc:	97d2                	add	a5,a5,s4
   160be:	ea3e                	sd	a5,272(sp)
   160c0:	10812783          	lw	a5,264(sp)
   160c4:	01030c93          	addi	s9,t1,16
   160c8:	0017871b          	addiw	a4,a5,1
   160cc:	10e12423          	sw	a4,264(sp)
   160d0:	479d                	li	a5,7
   160d2:	eae7d7e3          	ble	a4,a5,15f80 <_svfprintf_r+0xeda>
   160d6:	cacff06f          	j	15582 <_svfprintf_r+0x4dc>
   160da:	0741                	addi	a4,a4,16
   160dc:	01a7b423          	sd	s10,8(a5)
   160e0:	ea3a                	sd	a4,272(sp)
   160e2:	10d12423          	sw	a3,264(sp)
   160e6:	00ccda63          	ble	a2,s9,160fa <_svfprintf_r+0x1054>
   160ea:	0210                	addi	a2,sp,256
   160ec:	85ce                	mv	a1,s3
   160ee:	854a                	mv	a0,s2
   160f0:	1ed010ef          	jal	ra,17adc <__ssprint_r>
   160f4:	4c051c63          	bnez	a0,165cc <_svfprintf_r+0x1526>
   160f8:	8356                	mv	t1,s5
   160fa:	3b41                	addiw	s6,s6,-16
   160fc:	879a                	mv	a5,t1
   160fe:	bfb5                	j	1607a <_svfprintf_r+0xfd4>
   16100:	000d0b1b          	sext.w	s6,s10
   16104:	01aa5463          	ble	s10,s4,1610c <_svfprintf_r+0x1066>
   16108:	000a0b1b          	sext.w	s6,s4
   1610c:	03605a63          	blez	s6,16140 <_svfprintf_r+0x109a>
   16110:	975a                	add	a4,a4,s6
   16112:	ea3a                	sd	a4,272(sp)
   16114:	10812703          	lw	a4,264(sp)
   16118:	009cb023          	sd	s1,0(s9)
   1611c:	016cb423          	sd	s6,8(s9)
   16120:	0017069b          	addiw	a3,a4,1
   16124:	10d12423          	sw	a3,264(sp)
   16128:	471d                	li	a4,7
   1612a:	0cc1                	addi	s9,s9,16
   1612c:	00d75a63          	ble	a3,a4,16140 <_svfprintf_r+0x109a>
   16130:	0210                	addi	a2,sp,256
   16132:	85ce                	mv	a1,s3
   16134:	854a                	mv	a0,s2
   16136:	1a7010ef          	jal	ra,17adc <__ssprint_r>
   1613a:	48051963          	bnez	a0,165cc <_svfprintf_r+0x1526>
   1613e:	8cd6                	mv	s9,s5
   16140:	875a                	mv	a4,s6
   16142:	000b5363          	bgez	s6,16148 <_svfprintf_r+0x10a2>
   16146:	4701                	li	a4,0
   16148:	40ed0b3b          	subw	s6,s10,a4
   1614c:	05605563          	blez	s6,16196 <_svfprintf_r+0x10f0>
   16150:	66e9                	lui	a3,0x1a
   16152:	4841                	li	a6,16
   16154:	44868d93          	addi	s11,a3,1096 # 1a448 <zeroes.4426>
   16158:	489d                	li	a7,7
   1615a:	10812603          	lw	a2,264(sp)
   1615e:	01bcb023          	sd	s11,0(s9)
   16162:	6752                	ld	a4,272(sp)
   16164:	0016059b          	addiw	a1,a2,1
   16168:	862e                	mv	a2,a1
   1616a:	010c8513          	addi	a0,s9,16
   1616e:	15684263          	blt	a6,s6,162b2 <_svfprintf_r+0x120c>
   16172:	016cb423          	sd	s6,8(s9)
   16176:	9b3a                	add	s6,s6,a4
   16178:	ea5a                	sd	s6,272(sp)
   1617a:	10b12423          	sw	a1,264(sp)
   1617e:	471d                	li	a4,7
   16180:	8caa                	mv	s9,a0
   16182:	00b75a63          	ble	a1,a4,16196 <_svfprintf_r+0x10f0>
   16186:	0210                	addi	a2,sp,256
   16188:	85ce                	mv	a1,s3
   1618a:	854a                	mv	a0,s2
   1618c:	151010ef          	jal	ra,17adc <__ssprint_r>
   16190:	42051e63          	bnez	a0,165cc <_svfprintf_r+0x1526>
   16194:	8cd6                	mv	s9,s5
   16196:	40047793          	andi	a5,s0,1024
   1619a:	01a48b33          	add	s6,s1,s10
   1619e:	c39d                	beqz	a5,161c4 <_svfprintf_r+0x111e>
   161a0:	014487b3          	add	a5,s1,s4
   161a4:	f4be                	sd	a5,104(sp)
   161a6:	67e9                	lui	a5,0x1a
   161a8:	44878793          	addi	a5,a5,1096 # 1a448 <zeroes.4426>
   161ac:	4d9d                	li	s11,7
   161ae:	8d3e                	mv	s10,a5
   161b0:	67a2                	ld	a5,8(sp)
   161b2:	120c1763          	bnez	s8,162e0 <_svfprintf_r+0x123a>
   161b6:	12079663          	bnez	a5,162e2 <_svfprintf_r+0x123c>
   161ba:	014487b3          	add	a5,s1,s4
   161be:	0167f363          	bleu	s6,a5,161c4 <_svfprintf_r+0x111e>
   161c2:	8b3e                	mv	s6,a5
   161c4:	47ee                	lw	a5,216(sp)
   161c6:	0147c563          	blt	a5,s4,161d0 <_svfprintf_r+0x112a>
   161ca:	00147793          	andi	a5,s0,1
   161ce:	cf8d                	beqz	a5,16208 <_svfprintf_r+0x1162>
   161d0:	67a6                	ld	a5,72(sp)
   161d2:	6762                	ld	a4,24(sp)
   161d4:	0cc1                	addi	s9,s9,16
   161d6:	fefcb823          	sd	a5,-16(s9)
   161da:	67e2                	ld	a5,24(sp)
   161dc:	fefcbc23          	sd	a5,-8(s9)
   161e0:	67d2                	ld	a5,272(sp)
   161e2:	97ba                	add	a5,a5,a4
   161e4:	ea3e                	sd	a5,272(sp)
   161e6:	10812783          	lw	a5,264(sp)
   161ea:	0017871b          	addiw	a4,a5,1
   161ee:	10e12423          	sw	a4,264(sp)
   161f2:	479d                	li	a5,7
   161f4:	00e7da63          	ble	a4,a5,16208 <_svfprintf_r+0x1162>
   161f8:	0210                	addi	a2,sp,256
   161fa:	85ce                	mv	a1,s3
   161fc:	854a                	mv	a0,s2
   161fe:	0df010ef          	jal	ra,17adc <__ssprint_r>
   16202:	3c051563          	bnez	a0,165cc <_svfprintf_r+0x1526>
   16206:	8cd6                	mv	s9,s5
   16208:	4c6e                	lw	s8,216(sp)
   1620a:	94d2                	add	s1,s1,s4
   1620c:	416484bb          	subw	s1,s1,s6
   16210:	418a07bb          	subw	a5,s4,s8
   16214:	8c3e                	mv	s8,a5
   16216:	00f4d463          	ble	a5,s1,1621e <_svfprintf_r+0x1178>
   1621a:	00048c1b          	sext.w	s8,s1
   1621e:	03805b63          	blez	s8,16254 <_svfprintf_r+0x11ae>
   16222:	67d2                	ld	a5,272(sp)
   16224:	016cb023          	sd	s6,0(s9)
   16228:	018cb423          	sd	s8,8(s9)
   1622c:	97e2                	add	a5,a5,s8
   1622e:	ea3e                	sd	a5,272(sp)
   16230:	10812783          	lw	a5,264(sp)
   16234:	0cc1                	addi	s9,s9,16
   16236:	0017871b          	addiw	a4,a5,1
   1623a:	10e12423          	sw	a4,264(sp)
   1623e:	479d                	li	a5,7
   16240:	00e7da63          	ble	a4,a5,16254 <_svfprintf_r+0x11ae>
   16244:	0210                	addi	a2,sp,256
   16246:	85ce                	mv	a1,s3
   16248:	854a                	mv	a0,s2
   1624a:	093010ef          	jal	ra,17adc <__ssprint_r>
   1624e:	36051f63          	bnez	a0,165cc <_svfprintf_r+0x1526>
   16252:	8cd6                	mv	s9,s5
   16254:	87e2                	mv	a5,s8
   16256:	000c5363          	bgez	s8,1625c <_svfprintf_r+0x11b6>
   1625a:	4781                	li	a5,0
   1625c:	44ee                	lw	s1,216(sp)
   1625e:	409a04bb          	subw	s1,s4,s1
   16262:	9c9d                	subw	s1,s1,a5
   16264:	d0905ee3          	blez	s1,15f80 <_svfprintf_r+0xeda>
   16268:	6b69                	lui	s6,0x1a
   1626a:	4c41                	li	s8,16
   1626c:	448b0b13          	addi	s6,s6,1096 # 1a448 <zeroes.4426>
   16270:	4d1d                	li	s10,7
   16272:	10812703          	lw	a4,264(sp)
   16276:	016cb023          	sd	s6,0(s9)
   1627a:	67d2                	ld	a5,272(sp)
   1627c:	0017069b          	addiw	a3,a4,1
   16280:	8736                	mv	a4,a3
   16282:	010c8613          	addi	a2,s9,16
   16286:	169c4f63          	blt	s8,s1,16404 <_svfprintf_r+0x135e>
   1628a:	009cb423          	sd	s1,8(s9)
   1628e:	94be                	add	s1,s1,a5
   16290:	ea26                	sd	s1,272(sp)
   16292:	10d12423          	sw	a3,264(sp)
   16296:	479d                	li	a5,7
   16298:	8cb2                	mv	s9,a2
   1629a:	ced7d3e3          	ble	a3,a5,15f80 <_svfprintf_r+0xeda>
   1629e:	0210                	addi	a2,sp,256
   162a0:	85ce                	mv	a1,s3
   162a2:	854a                	mv	a0,s2
   162a4:	039010ef          	jal	ra,17adc <__ssprint_r>
   162a8:	32051263          	bnez	a0,165cc <_svfprintf_r+0x1526>
   162ac:	18010c93          	addi	s9,sp,384
   162b0:	b9c1                	j	15f80 <_svfprintf_r+0xeda>
   162b2:	0741                	addi	a4,a4,16
   162b4:	010cb423          	sd	a6,8(s9)
   162b8:	ea3a                	sd	a4,272(sp)
   162ba:	10c12423          	sw	a2,264(sp)
   162be:	00b8de63          	ble	a1,a7,162da <_svfprintf_r+0x1234>
   162c2:	0210                	addi	a2,sp,256
   162c4:	85ce                	mv	a1,s3
   162c6:	854a                	mv	a0,s2
   162c8:	f8c6                	sd	a7,112(sp)
   162ca:	f4c2                	sd	a6,104(sp)
   162cc:	011010ef          	jal	ra,17adc <__ssprint_r>
   162d0:	2e051e63          	bnez	a0,165cc <_svfprintf_r+0x1526>
   162d4:	78c6                	ld	a7,112(sp)
   162d6:	7826                	ld	a6,104(sp)
   162d8:	8556                	mv	a0,s5
   162da:	3b41                	addiw	s6,s6,-16
   162dc:	8caa                	mv	s9,a0
   162de:	bdb5                	j	1615a <_svfprintf_r+0x10b4>
   162e0:	c7d5                	beqz	a5,1638c <_svfprintf_r+0x12e6>
   162e2:	47a2                	lw	a5,8(sp)
   162e4:	37fd                	addiw	a5,a5,-1
   162e6:	e43e                	sd	a5,8(sp)
   162e8:	67c6                	ld	a5,80(sp)
   162ea:	6706                	ld	a4,64(sp)
   162ec:	0cc1                	addi	s9,s9,16
   162ee:	fefcb823          	sd	a5,-16(s9)
   162f2:	6786                	ld	a5,64(sp)
   162f4:	fefcbc23          	sd	a5,-8(s9)
   162f8:	67d2                	ld	a5,272(sp)
   162fa:	97ba                	add	a5,a5,a4
   162fc:	ea3e                	sd	a5,272(sp)
   162fe:	10812783          	lw	a5,264(sp)
   16302:	0017871b          	addiw	a4,a5,1
   16306:	10e12423          	sw	a4,264(sp)
   1630a:	00edda63          	ble	a4,s11,1631e <_svfprintf_r+0x1278>
   1630e:	0210                	addi	a2,sp,256
   16310:	85ce                	mv	a1,s3
   16312:	854a                	mv	a0,s2
   16314:	7c8010ef          	jal	ra,17adc <__ssprint_r>
   16318:	2a051a63          	bnez	a0,165cc <_svfprintf_r+0x1526>
   1631c:	8cd6                	mv	s9,s5
   1631e:	6702                	ld	a4,0(sp)
   16320:	57a6                	lw	a5,104(sp)
   16322:	00074703          	lbu	a4,0(a4)
   16326:	416787bb          	subw	a5,a5,s6
   1632a:	00e7d463          	ble	a4,a5,16332 <_svfprintf_r+0x128c>
   1632e:	0007871b          	sext.w	a4,a5
   16332:	02e05d63          	blez	a4,1636c <_svfprintf_r+0x12c6>
   16336:	67d2                	ld	a5,272(sp)
   16338:	016cb023          	sd	s6,0(s9)
   1633c:	00ecb423          	sd	a4,8(s9)
   16340:	97ba                	add	a5,a5,a4
   16342:	ea3e                	sd	a5,272(sp)
   16344:	10812783          	lw	a5,264(sp)
   16348:	0cc1                	addi	s9,s9,16
   1634a:	0017869b          	addiw	a3,a5,1
   1634e:	10d12423          	sw	a3,264(sp)
   16352:	00dddd63          	ble	a3,s11,1636c <_svfprintf_r+0x12c6>
   16356:	0210                	addi	a2,sp,256
   16358:	85ce                	mv	a1,s3
   1635a:	854a                	mv	a0,s2
   1635c:	f8ba                	sd	a4,112(sp)
   1635e:	77e010ef          	jal	ra,17adc <__ssprint_r>
   16362:	26051563          	bnez	a0,165cc <_svfprintf_r+0x1526>
   16366:	7746                	ld	a4,112(sp)
   16368:	18010c93          	addi	s9,sp,384
   1636c:	86ba                	mv	a3,a4
   1636e:	00075363          	bgez	a4,16374 <_svfprintf_r+0x12ce>
   16372:	4681                	li	a3,0
   16374:	6782                	ld	a5,0(sp)
   16376:	4841                	li	a6,16
   16378:	0007c783          	lbu	a5,0(a5)
   1637c:	9f95                	subw	a5,a5,a3
   1637e:	04f04463          	bgtz	a5,163c6 <_svfprintf_r+0x1320>
   16382:	6782                	ld	a5,0(sp)
   16384:	0007c783          	lbu	a5,0(a5)
   16388:	9b3e                	add	s6,s6,a5
   1638a:	b51d                	j	161b0 <_svfprintf_r+0x110a>
   1638c:	6782                	ld	a5,0(sp)
   1638e:	3c7d                	addiw	s8,s8,-1
   16390:	17fd                	addi	a5,a5,-1
   16392:	e03e                	sd	a5,0(sp)
   16394:	bf91                	j	162e8 <_svfprintf_r+0x1242>
   16396:	0741                	addi	a4,a4,16
   16398:	01acb023          	sd	s10,0(s9)
   1639c:	010cb423          	sd	a6,8(s9)
   163a0:	ea3a                	sd	a4,272(sp)
   163a2:	10d12423          	sw	a3,264(sp)
   163a6:	00cdde63          	ble	a2,s11,163c2 <_svfprintf_r+0x131c>
   163aa:	0210                	addi	a2,sp,256
   163ac:	85ce                	mv	a1,s3
   163ae:	854a                	mv	a0,s2
   163b0:	fcc2                	sd	a6,120(sp)
   163b2:	f8be                	sd	a5,112(sp)
   163b4:	728010ef          	jal	ra,17adc <__ssprint_r>
   163b8:	20051a63          	bnez	a0,165cc <_svfprintf_r+0x1526>
   163bc:	7866                	ld	a6,120(sp)
   163be:	77c6                	ld	a5,112(sp)
   163c0:	030c                	addi	a1,sp,384
   163c2:	37c1                	addiw	a5,a5,-16
   163c4:	8cae                	mv	s9,a1
   163c6:	10812683          	lw	a3,264(sp)
   163ca:	6752                	ld	a4,272(sp)
   163cc:	010c8593          	addi	a1,s9,16
   163d0:	0016861b          	addiw	a2,a3,1
   163d4:	86b2                	mv	a3,a2
   163d6:	fcf840e3          	blt	a6,a5,16396 <_svfprintf_r+0x12f0>
   163da:	00fcb423          	sd	a5,8(s9)
   163de:	97ba                	add	a5,a5,a4
   163e0:	01acb023          	sd	s10,0(s9)
   163e4:	ea3e                	sd	a5,272(sp)
   163e6:	10c12423          	sw	a2,264(sp)
   163ea:	8cae                	mv	s9,a1
   163ec:	f8cddbe3          	ble	a2,s11,16382 <_svfprintf_r+0x12dc>
   163f0:	0210                	addi	a2,sp,256
   163f2:	85ce                	mv	a1,s3
   163f4:	854a                	mv	a0,s2
   163f6:	6e6010ef          	jal	ra,17adc <__ssprint_r>
   163fa:	1c051963          	bnez	a0,165cc <_svfprintf_r+0x1526>
   163fe:	18010c93          	addi	s9,sp,384
   16402:	b741                	j	16382 <_svfprintf_r+0x12dc>
   16404:	07c1                	addi	a5,a5,16
   16406:	018cb423          	sd	s8,8(s9)
   1640a:	ea3e                	sd	a5,272(sp)
   1640c:	10e12423          	sw	a4,264(sp)
   16410:	00dd5a63          	ble	a3,s10,16424 <_svfprintf_r+0x137e>
   16414:	0210                	addi	a2,sp,256
   16416:	85ce                	mv	a1,s3
   16418:	854a                	mv	a0,s2
   1641a:	6c2010ef          	jal	ra,17adc <__ssprint_r>
   1641e:	1a051763          	bnez	a0,165cc <_svfprintf_r+0x1526>
   16422:	0310                	addi	a2,sp,384
   16424:	34c1                	addiw	s1,s1,-16
   16426:	8cb2                	mv	s9,a2
   16428:	b5a9                	j	16272 <_svfprintf_r+0x11cc>
   1642a:	10812783          	lw	a5,264(sp)
   1642e:	4605                	li	a2,1
   16430:	009cb023          	sd	s1,0(s9)
   16434:	0017869b          	addiw	a3,a5,1
   16438:	0705                	addi	a4,a4,1
   1643a:	87b6                	mv	a5,a3
   1643c:	010c8c13          	addi	s8,s9,16
   16440:	01464663          	blt	a2,s4,1644c <_svfprintf_r+0x13a6>
   16444:	00147593          	andi	a1,s0,1
   16448:	12058663          	beqz	a1,16574 <_svfprintf_r+0x14ce>
   1644c:	4605                	li	a2,1
   1644e:	10f12423          	sw	a5,264(sp)
   16452:	00ccb423          	sd	a2,8(s9)
   16456:	ea3a                	sd	a4,272(sp)
   16458:	479d                	li	a5,7
   1645a:	00d7da63          	ble	a3,a5,1646e <_svfprintf_r+0x13c8>
   1645e:	0210                	addi	a2,sp,256
   16460:	85ce                	mv	a1,s3
   16462:	854a                	mv	a0,s2
   16464:	678010ef          	jal	ra,17adc <__ssprint_r>
   16468:	16051263          	bnez	a0,165cc <_svfprintf_r+0x1526>
   1646c:	8c56                	mv	s8,s5
   1646e:	67a6                	ld	a5,72(sp)
   16470:	6762                	ld	a4,24(sp)
   16472:	0c41                	addi	s8,s8,16
   16474:	fefc3823          	sd	a5,-16(s8)
   16478:	67e2                	ld	a5,24(sp)
   1647a:	fefc3c23          	sd	a5,-8(s8)
   1647e:	67d2                	ld	a5,272(sp)
   16480:	97ba                	add	a5,a5,a4
   16482:	ea3e                	sd	a5,272(sp)
   16484:	10812783          	lw	a5,264(sp)
   16488:	0017871b          	addiw	a4,a5,1
   1648c:	10e12423          	sw	a4,264(sp)
   16490:	479d                	li	a5,7
   16492:	00e7da63          	ble	a4,a5,164a6 <_svfprintf_r+0x1400>
   16496:	0210                	addi	a2,sp,256
   16498:	85ce                	mv	a1,s3
   1649a:	854a                	mv	a0,s2
   1649c:	640010ef          	jal	ra,17adc <__ssprint_r>
   164a0:	12051663          	bnez	a0,165cc <_svfprintf_r+0x1526>
   164a4:	8c56                	mv	s8,s5
   164a6:	754e                	ld	a0,240(sp)
   164a8:	75ee                	ld	a1,248(sp)
   164aa:	4601                	li	a2,0
   164ac:	4681                	li	a3,0
   164ae:	fffa0b1b          	addiw	s6,s4,-1
   164b2:	2e0020ef          	jal	ra,18792 <__eqtf2>
   164b6:	c12d                	beqz	a0,16518 <_svfprintf_r+0x1472>
   164b8:	10812703          	lw	a4,264(sp)
   164bc:	67d2                	ld	a5,272(sp)
   164be:	0485                	addi	s1,s1,1
   164c0:	0017069b          	addiw	a3,a4,1
   164c4:	97da                	add	a5,a5,s6
   164c6:	009c3023          	sd	s1,0(s8)
   164ca:	016c3423          	sd	s6,8(s8)
   164ce:	ea3e                	sd	a5,272(sp)
   164d0:	10d12423          	sw	a3,264(sp)
   164d4:	479d                	li	a5,7
   164d6:	0c41                	addi	s8,s8,16
   164d8:	00d7d963          	ble	a3,a5,164ea <_svfprintf_r+0x1444>
   164dc:	0210                	addi	a2,sp,256
   164de:	85ce                	mv	a1,s3
   164e0:	854a                	mv	a0,s2
   164e2:	5fa010ef          	jal	ra,17adc <__ssprint_r>
   164e6:	e17d                	bnez	a0,165cc <_svfprintf_r+0x1526>
   164e8:	8c56                	mv	s8,s5
   164ea:	119c                	addi	a5,sp,224
   164ec:	00fc3023          	sd	a5,0(s8)
   164f0:	67e6                	ld	a5,88(sp)
   164f2:	6766                	ld	a4,88(sp)
   164f4:	010c0c93          	addi	s9,s8,16
   164f8:	00fc3423          	sd	a5,8(s8)
   164fc:	67d2                	ld	a5,272(sp)
   164fe:	97ba                	add	a5,a5,a4
   16500:	ea3e                	sd	a5,272(sp)
   16502:	10812783          	lw	a5,264(sp)
   16506:	0017871b          	addiw	a4,a5,1
   1650a:	10e12423          	sw	a4,264(sp)
   1650e:	479d                	li	a5,7
   16510:	a6e7d8e3          	ble	a4,a5,15f80 <_svfprintf_r+0xeda>
   16514:	86eff06f          	j	15582 <_svfprintf_r+0x4dc>
   16518:	fd6059e3          	blez	s6,164ea <_svfprintf_r+0x1444>
   1651c:	64e9                	lui	s1,0x1a
   1651e:	4d41                	li	s10,16
   16520:	44848493          	addi	s1,s1,1096 # 1a448 <zeroes.4426>
   16524:	4c9d                	li	s9,7
   16526:	10812703          	lw	a4,264(sp)
   1652a:	009c3023          	sd	s1,0(s8)
   1652e:	67d2                	ld	a5,272(sp)
   16530:	0017069b          	addiw	a3,a4,1
   16534:	8736                	mv	a4,a3
   16536:	010c0613          	addi	a2,s8,16
   1653a:	016d4b63          	blt	s10,s6,16550 <_svfprintf_r+0x14aa>
   1653e:	97da                	add	a5,a5,s6
   16540:	016c3423          	sd	s6,8(s8)
   16544:	ea3e                	sd	a5,272(sp)
   16546:	10d12423          	sw	a3,264(sp)
   1654a:	479d                	li	a5,7
   1654c:	8c32                	mv	s8,a2
   1654e:	b769                	j	164d8 <_svfprintf_r+0x1432>
   16550:	07c1                	addi	a5,a5,16
   16552:	01ac3423          	sd	s10,8(s8)
   16556:	ea3e                	sd	a5,272(sp)
   16558:	10e12423          	sw	a4,264(sp)
   1655c:	00dcd963          	ble	a3,s9,1656e <_svfprintf_r+0x14c8>
   16560:	0210                	addi	a2,sp,256
   16562:	85ce                	mv	a1,s3
   16564:	854a                	mv	a0,s2
   16566:	576010ef          	jal	ra,17adc <__ssprint_r>
   1656a:	e12d                	bnez	a0,165cc <_svfprintf_r+0x1526>
   1656c:	8656                	mv	a2,s5
   1656e:	3b41                	addiw	s6,s6,-16
   16570:	8c32                	mv	s8,a2
   16572:	bf55                	j	16526 <_svfprintf_r+0x1480>
   16574:	00ccb423          	sd	a2,8(s9)
   16578:	ea3a                	sd	a4,272(sp)
   1657a:	10d12423          	sw	a3,264(sp)
   1657e:	479d                	li	a5,7
   16580:	bfa1                	j	164d8 <_svfprintf_r+0x1432>
   16582:	5782                	lw	a5,32(sp)
   16584:	5762                	lw	a4,56(sp)
   16586:	40e7843b          	subw	s0,a5,a4
   1658a:	9e805ee3          	blez	s0,15f86 <_svfprintf_r+0xee0>
   1658e:	64e9                	lui	s1,0x1a
   16590:	4b41                	li	s6,16
   16592:	43848493          	addi	s1,s1,1080 # 1a438 <blanks.4425>
   16596:	4c1d                	li	s8,7
   16598:	10812703          	lw	a4,264(sp)
   1659c:	009cb023          	sd	s1,0(s9)
   165a0:	67d2                	ld	a5,272(sp)
   165a2:	0017069b          	addiw	a3,a4,1
   165a6:	8736                	mv	a4,a3
   165a8:	028b4a63          	blt	s6,s0,165dc <_svfprintf_r+0x1536>
   165ac:	008cb423          	sd	s0,8(s9)
   165b0:	943e                	add	s0,s0,a5
   165b2:	ea22                	sd	s0,272(sp)
   165b4:	10d12423          	sw	a3,264(sp)
   165b8:	479d                	li	a5,7
   165ba:	9cd7d6e3          	ble	a3,a5,15f86 <_svfprintf_r+0xee0>
   165be:	0210                	addi	a2,sp,256
   165c0:	85ce                	mv	a1,s3
   165c2:	854a                	mv	a0,s2
   165c4:	518010ef          	jal	ra,17adc <__ssprint_r>
   165c8:	9a050fe3          	beqz	a0,15f86 <_svfprintf_r+0xee0>
   165cc:	920b8963          	beqz	s7,156fe <_svfprintf_r+0x658>
   165d0:	85de                	mv	a1,s7
   165d2:	854a                	mv	a0,s2
   165d4:	944fc0ef          	jal	ra,12718 <_free_r>
   165d8:	926ff06f          	j	156fe <_svfprintf_r+0x658>
   165dc:	07c1                	addi	a5,a5,16
   165de:	016cb423          	sd	s6,8(s9)
   165e2:	ea3e                	sd	a5,272(sp)
   165e4:	10e12423          	sw	a4,264(sp)
   165e8:	0cc1                	addi	s9,s9,16
   165ea:	00dc5963          	ble	a3,s8,165fc <_svfprintf_r+0x1556>
   165ee:	0210                	addi	a2,sp,256
   165f0:	85ce                	mv	a1,s3
   165f2:	854a                	mv	a0,s2
   165f4:	4e8010ef          	jal	ra,17adc <__ssprint_r>
   165f8:	f971                	bnez	a0,165cc <_svfprintf_r+0x1526>
   165fa:	8cd6                	mv	s9,s5
   165fc:	3441                	addiw	s0,s0,-16
   165fe:	bf69                	j	16598 <_svfprintf_r+0x14f2>
   16600:	85de                	mv	a1,s7
   16602:	854a                	mv	a0,s2
   16604:	914fc0ef          	jal	ra,12718 <_free_r>
   16608:	b26d                	j	15fb2 <_svfprintf_r+0xf0c>
   1660a:	67d2                	ld	a5,272(sp)
   1660c:	8e078963          	beqz	a5,156fe <_svfprintf_r+0x658>
   16610:	0210                	addi	a2,sp,256
   16612:	85ce                	mv	a1,s3
   16614:	854a                	mv	a0,s2
   16616:	4c6010ef          	jal	ra,17adc <__ssprint_r>
   1661a:	8e4ff06f          	j	156fe <_svfprintf_r+0x658>

000000000001661e <__sprint_r>:
   1661e:	6a1c                	ld	a5,16(a2)
   16620:	715d                	addi	sp,sp,-80
   16622:	e0a2                	sd	s0,64(sp)
   16624:	e486                	sd	ra,72(sp)
   16626:	fc26                	sd	s1,56(sp)
   16628:	f84a                	sd	s2,48(sp)
   1662a:	f44e                	sd	s3,40(sp)
   1662c:	f052                	sd	s4,32(sp)
   1662e:	ec56                	sd	s5,24(sp)
   16630:	e85a                	sd	s6,16(sp)
   16632:	e45e                	sd	s7,8(sp)
   16634:	8432                	mv	s0,a2
   16636:	ef99                	bnez	a5,16654 <__sprint_r+0x36>
   16638:	00062423          	sw	zero,8(a2)
   1663c:	4501                	li	a0,0
   1663e:	60a6                	ld	ra,72(sp)
   16640:	6406                	ld	s0,64(sp)
   16642:	74e2                	ld	s1,56(sp)
   16644:	7942                	ld	s2,48(sp)
   16646:	79a2                	ld	s3,40(sp)
   16648:	7a02                	ld	s4,32(sp)
   1664a:	6ae2                	ld	s5,24(sp)
   1664c:	6b42                	ld	s6,16(sp)
   1664e:	6ba2                	ld	s7,8(sp)
   16650:	6161                	addi	sp,sp,80
   16652:	8082                	ret
   16654:	0ac5a783          	lw	a5,172(a1)
   16658:	89ae                	mv	s3,a1
   1665a:	03279713          	slli	a4,a5,0x32
   1665e:	04075a63          	bgez	a4,166b2 <__sprint_r+0x94>
   16662:	00063903          	ld	s2,0(a2)
   16666:	8a2a                	mv	s4,a0
   16668:	5bfd                	li	s7,-1
   1666a:	681c                	ld	a5,16(s0)
   1666c:	e799                	bnez	a5,1667a <__sprint_r+0x5c>
   1666e:	4501                	li	a0,0
   16670:	00043823          	sd	zero,16(s0)
   16674:	00042423          	sw	zero,8(s0)
   16678:	b7d9                	j	1663e <__sprint_r+0x20>
   1667a:	00893483          	ld	s1,8(s2)
   1667e:	00093b03          	ld	s6,0(s2)
   16682:	4a81                	li	s5,0
   16684:	8089                	srli	s1,s1,0x2
   16686:	2481                	sext.w	s1,s1
   16688:	009ac963          	blt	s5,s1,1669a <__sprint_r+0x7c>
   1668c:	681c                	ld	a5,16(s0)
   1668e:	048a                	slli	s1,s1,0x2
   16690:	0941                	addi	s2,s2,16
   16692:	409784b3          	sub	s1,a5,s1
   16696:	e804                	sd	s1,16(s0)
   16698:	bfc9                	j	1666a <__sprint_r+0x4c>
   1669a:	000b2583          	lw	a1,0(s6)
   1669e:	864e                	mv	a2,s3
   166a0:	8552                	mv	a0,s4
   166a2:	37d000ef          	jal	ra,1721e <_fputwc_r>
   166a6:	2501                	sext.w	a0,a0
   166a8:	0b11                	addi	s6,s6,4
   166aa:	01750763          	beq	a0,s7,166b8 <__sprint_r+0x9a>
   166ae:	2a85                	addiw	s5,s5,1
   166b0:	bfe1                	j	16688 <__sprint_r+0x6a>
   166b2:	3ef000ef          	jal	ra,172a0 <__sfvwrite_r>
   166b6:	bf6d                	j	16670 <__sprint_r+0x52>
   166b8:	557d                	li	a0,-1
   166ba:	bf5d                	j	16670 <__sprint_r+0x52>

00000000000166bc <_vfiprintf_r>:
   166bc:	7141                	addi	sp,sp,-496
   166be:	efa6                	sd	s1,472(sp)
   166c0:	ebca                	sd	s2,464(sp)
   166c2:	e7ce                	sd	s3,456(sp)
   166c4:	e3d2                	sd	s4,448(sp)
   166c6:	f786                	sd	ra,488(sp)
   166c8:	f3a2                	sd	s0,480(sp)
   166ca:	ff56                	sd	s5,440(sp)
   166cc:	fb5a                	sd	s6,432(sp)
   166ce:	f75e                	sd	s7,424(sp)
   166d0:	f362                	sd	s8,416(sp)
   166d2:	ef66                	sd	s9,408(sp)
   166d4:	eb6a                	sd	s10,400(sp)
   166d6:	e76e                	sd	s11,392(sp)
   166d8:	892a                	mv	s2,a0
   166da:	84ae                	mv	s1,a1
   166dc:	89b2                	mv	s3,a2
   166de:	8a36                	mv	s4,a3
   166e0:	c509                	beqz	a0,166ea <_vfiprintf_r+0x2e>
   166e2:	493c                	lw	a5,80(a0)
   166e4:	e399                	bnez	a5,166ea <_vfiprintf_r+0x2e>
   166e6:	e63fb0ef          	jal	ra,12548 <__sinit>
   166ea:	01049783          	lh	a5,16(s1)
   166ee:	03279713          	slli	a4,a5,0x32
   166f2:	00074d63          	bltz	a4,1670c <_vfiprintf_r+0x50>
   166f6:	6689                	lui	a3,0x2
   166f8:	0ac4a703          	lw	a4,172(s1)
   166fc:	8fd5                	or	a5,a5,a3
   166fe:	00f49823          	sh	a5,16(s1)
   16702:	77f9                	lui	a5,0xffffe
   16704:	17fd                	addi	a5,a5,-1
   16706:	8ff9                	and	a5,a5,a4
   16708:	0af4a623          	sw	a5,172(s1)
   1670c:	0104d783          	lhu	a5,16(s1)
   16710:	8ba1                	andi	a5,a5,8
   16712:	c7a1                	beqz	a5,1675a <_vfiprintf_r+0x9e>
   16714:	6c9c                	ld	a5,24(s1)
   16716:	c3b1                	beqz	a5,1675a <_vfiprintf_r+0x9e>
   16718:	0104d783          	lhu	a5,16(s1)
   1671c:	4729                	li	a4,10
   1671e:	8be9                	andi	a5,a5,26
   16720:	04e79463          	bne	a5,a4,16768 <_vfiprintf_r+0xac>
   16724:	01249783          	lh	a5,18(s1)
   16728:	0407c063          	bltz	a5,16768 <_vfiprintf_r+0xac>
   1672c:	86d2                	mv	a3,s4
   1672e:	864e                	mv	a2,s3
   16730:	85a6                	mv	a1,s1
   16732:	854a                	mv	a0,s2
   16734:	001000ef          	jal	ra,16f34 <__sbprintf>
   16738:	8baa                	mv	s7,a0
   1673a:	70be                	ld	ra,488(sp)
   1673c:	741e                	ld	s0,480(sp)
   1673e:	855e                	mv	a0,s7
   16740:	64fe                	ld	s1,472(sp)
   16742:	695e                	ld	s2,464(sp)
   16744:	69be                	ld	s3,456(sp)
   16746:	6a1e                	ld	s4,448(sp)
   16748:	7afa                	ld	s5,440(sp)
   1674a:	7b5a                	ld	s6,432(sp)
   1674c:	7bba                	ld	s7,424(sp)
   1674e:	7c1a                	ld	s8,416(sp)
   16750:	6cfa                	ld	s9,408(sp)
   16752:	6d5a                	ld	s10,400(sp)
   16754:	6dba                	ld	s11,392(sp)
   16756:	617d                	addi	sp,sp,496
   16758:	8082                	ret
   1675a:	85a6                	mv	a1,s1
   1675c:	854a                	mv	a0,s2
   1675e:	985fb0ef          	jal	ra,120e2 <__swsetup_r>
   16762:	d95d                	beqz	a0,16718 <_vfiprintf_r+0x5c>
   16764:	5bfd                	li	s7,-1
   16766:	bfd1                	j	1673a <_vfiprintf_r+0x7e>
   16768:	67e9                	lui	a5,0x1a
   1676a:	45878793          	addi	a5,a5,1112 # 1a458 <zeroes.4426+0x10>
   1676e:	e8be                	sd	a5,80(sp)
   16770:	67e9                	lui	a5,0x1a
   16772:	5d878793          	addi	a5,a5,1496 # 1a5d8 <zeroes.4417>
   16776:	f43e                	sd	a5,40(sp)
   16778:	67e9                	lui	a5,0x1a
   1677a:	10010b13          	addi	s6,sp,256
   1677e:	5c878793          	addi	a5,a5,1480 # 1a5c8 <blanks.4416>
   16782:	e15a                	sd	s6,128(sp)
   16784:	e902                	sd	zero,144(sp)
   16786:	c502                	sw	zero,136(sp)
   16788:	8dda                	mv	s11,s6
   1678a:	f002                	sd	zero,32(sp)
   1678c:	e802                	sd	zero,16(sp)
   1678e:	ec02                	sd	zero,24(sp)
   16790:	fc02                	sd	zero,56(sp)
   16792:	4b81                	li	s7,0
   16794:	f83e                	sd	a5,48(sp)
   16796:	844e                	mv	s0,s3
   16798:	02500693          	li	a3,37
   1679c:	00044783          	lbu	a5,0(s0)
   167a0:	c399                	beqz	a5,167a6 <_vfiprintf_r+0xea>
   167a2:	06d79e63          	bne	a5,a3,1681e <_vfiprintf_r+0x162>
   167a6:	41340abb          	subw	s5,s0,s3
   167aa:	020a8b63          	beqz	s5,167e0 <_vfiprintf_r+0x124>
   167ae:	67ca                	ld	a5,144(sp)
   167b0:	013db023          	sd	s3,0(s11)
   167b4:	015db423          	sd	s5,8(s11)
   167b8:	97d6                	add	a5,a5,s5
   167ba:	e93e                	sd	a5,144(sp)
   167bc:	47aa                	lw	a5,136(sp)
   167be:	0dc1                	addi	s11,s11,16
   167c0:	0017869b          	addiw	a3,a5,1
   167c4:	c536                	sw	a3,136(sp)
   167c6:	479d                	li	a5,7
   167c8:	00d7da63          	ble	a3,a5,167dc <_vfiprintf_r+0x120>
   167cc:	0110                	addi	a2,sp,128
   167ce:	85a6                	mv	a1,s1
   167d0:	854a                	mv	a0,s2
   167d2:	e4dff0ef          	jal	ra,1661e <__sprint_r>
   167d6:	70051663          	bnez	a0,16ee2 <_vfiprintf_r+0x826>
   167da:	8dda                	mv	s11,s6
   167dc:	015b8bbb          	addw	s7,s7,s5
   167e0:	00044783          	lbu	a5,0(s0)
   167e4:	72078963          	beqz	a5,16f16 <_vfiprintf_r+0x85a>
   167e8:	00140693          	addi	a3,s0,1
   167ec:	06010ba3          	sb	zero,119(sp)
   167f0:	547d                	li	s0,-1
   167f2:	4a81                	li	s5,0
   167f4:	4d01                	li	s10,0
   167f6:	05a00c93          	li	s9,90
   167fa:	4c29                	li	s8,10
   167fc:	00168993          	addi	s3,a3,1 # 2001 <_start-0xe0af>
   16800:	0006c683          	lbu	a3,0(a3)
   16804:	4525                	li	a0,9
   16806:	02a00813          	li	a6,42
   1680a:	fe06861b          	addiw	a2,a3,-32
   1680e:	60cce263          	bltu	s9,a2,16e12 <_vfiprintf_r+0x756>
   16812:	67c6                	ld	a5,80(sp)
   16814:	1602                	slli	a2,a2,0x20
   16816:	8279                	srli	a2,a2,0x1e
   16818:	963e                	add	a2,a2,a5
   1681a:	4210                	lw	a2,0(a2)
   1681c:	8602                	jr	a2
   1681e:	0405                	addi	s0,s0,1
   16820:	bfb5                	j	1679c <_vfiprintf_r+0xe0>
   16822:	0001a637          	lui	a2,0x1a
   16826:	ec860793          	addi	a5,a2,-312 # 19ec8 <zeroes.4441+0x78>
   1682a:	f03e                	sd	a5,32(sp)
   1682c:	008a0793          	addi	a5,s4,8
   16830:	e43e                	sd	a5,8(sp)
   16832:	020d7613          	andi	a2,s10,32
   16836:	4e060663          	beqz	a2,16d22 <_vfiprintf_r+0x666>
   1683a:	000a3a03          	ld	s4,0(s4)
   1683e:	001d7613          	andi	a2,s10,1
   16842:	ca19                	beqz	a2,16858 <_vfiprintf_r+0x19c>
   16844:	000a0a63          	beqz	s4,16858 <_vfiprintf_r+0x19c>
   16848:	03000613          	li	a2,48
   1684c:	06c10c23          	sb	a2,120(sp)
   16850:	06d10ca3          	sb	a3,121(sp)
   16854:	002d6d13          	ori	s10,s10,2
   16858:	bffd7d13          	andi	s10,s10,-1025
   1685c:	a4ad                	j	16ac6 <_vfiprintf_r+0x40a>
   1685e:	854a                	mv	a0,s2
   16860:	849fd0ef          	jal	ra,140a8 <_localeconv_r>
   16864:	651c                	ld	a5,8(a0)
   16866:	853e                	mv	a0,a5
   16868:	fc3e                	sd	a5,56(sp)
   1686a:	ffafe0ef          	jal	ra,15064 <strlen>
   1686e:	ec2a                	sd	a0,24(sp)
   16870:	854a                	mv	a0,s2
   16872:	837fd0ef          	jal	ra,140a8 <_localeconv_r>
   16876:	691c                	ld	a5,16(a0)
   16878:	e83e                	sd	a5,16(sp)
   1687a:	67e2                	ld	a5,24(sp)
   1687c:	cb81                	beqz	a5,1688c <_vfiprintf_r+0x1d0>
   1687e:	67c2                	ld	a5,16(sp)
   16880:	c791                	beqz	a5,1688c <_vfiprintf_r+0x1d0>
   16882:	0007c683          	lbu	a3,0(a5)
   16886:	c299                	beqz	a3,1688c <_vfiprintf_r+0x1d0>
   16888:	400d6d13          	ori	s10,s10,1024
   1688c:	86ce                	mv	a3,s3
   1688e:	b7bd                	j	167fc <_vfiprintf_r+0x140>
   16890:	07714683          	lbu	a3,119(sp)
   16894:	fee5                	bnez	a3,1688c <_vfiprintf_r+0x1d0>
   16896:	02000693          	li	a3,32
   1689a:	06d10ba3          	sb	a3,119(sp)
   1689e:	b7fd                	j	1688c <_vfiprintf_r+0x1d0>
   168a0:	001d6d13          	ori	s10,s10,1
   168a4:	b7e5                	j	1688c <_vfiprintf_r+0x1d0>
   168a6:	000a2a83          	lw	s5,0(s4)
   168aa:	0a21                	addi	s4,s4,8
   168ac:	fe0ad0e3          	bgez	s5,1688c <_vfiprintf_r+0x1d0>
   168b0:	41500abb          	negw	s5,s5
   168b4:	004d6d13          	ori	s10,s10,4
   168b8:	bfd1                	j	1688c <_vfiprintf_r+0x1d0>
   168ba:	02b00693          	li	a3,43
   168be:	bff1                	j	1689a <_vfiprintf_r+0x1de>
   168c0:	0009c683          	lbu	a3,0(s3)
   168c4:	00198613          	addi	a2,s3,1
   168c8:	03069963          	bne	a3,a6,168fa <_vfiprintf_r+0x23e>
   168cc:	000a2403          	lw	s0,0(s4)
   168d0:	008a0693          	addi	a3,s4,8
   168d4:	00045363          	bgez	s0,168da <_vfiprintf_r+0x21e>
   168d8:	547d                	li	s0,-1
   168da:	2401                	sext.w	s0,s0
   168dc:	8a36                	mv	s4,a3
   168de:	89b2                	mv	s3,a2
   168e0:	b775                	j	1688c <_vfiprintf_r+0x1d0>
   168e2:	028c043b          	mulw	s0,s8,s0
   168e6:	0605                	addi	a2,a2,1
   168e8:	fff64683          	lbu	a3,-1(a2)
   168ec:	9c2d                	addw	s0,s0,a1
   168ee:	fd06859b          	addiw	a1,a3,-48
   168f2:	feb578e3          	bleu	a1,a0,168e2 <_vfiprintf_r+0x226>
   168f6:	89b2                	mv	s3,a2
   168f8:	bf09                	j	1680a <_vfiprintf_r+0x14e>
   168fa:	4401                	li	s0,0
   168fc:	bfcd                	j	168ee <_vfiprintf_r+0x232>
   168fe:	080d6d13          	ori	s10,s10,128
   16902:	b769                	j	1688c <_vfiprintf_r+0x1d0>
   16904:	864e                	mv	a2,s3
   16906:	4a81                	li	s5,0
   16908:	035c0abb          	mulw	s5,s8,s5
   1690c:	fd06869b          	addiw	a3,a3,-48
   16910:	0605                	addi	a2,a2,1
   16912:	01568abb          	addw	s5,a3,s5
   16916:	fff64683          	lbu	a3,-1(a2)
   1691a:	fd06859b          	addiw	a1,a3,-48
   1691e:	feb575e3          	bleu	a1,a0,16908 <_vfiprintf_r+0x24c>
   16922:	bfd1                	j	168f6 <_vfiprintf_r+0x23a>
   16924:	0009c603          	lbu	a2,0(s3)
   16928:	06800693          	li	a3,104
   1692c:	00d61663          	bne	a2,a3,16938 <_vfiprintf_r+0x27c>
   16930:	0985                	addi	s3,s3,1
   16932:	200d6d13          	ori	s10,s10,512
   16936:	bf99                	j	1688c <_vfiprintf_r+0x1d0>
   16938:	040d6d13          	ori	s10,s10,64
   1693c:	bf81                	j	1688c <_vfiprintf_r+0x1d0>
   1693e:	0009c603          	lbu	a2,0(s3)
   16942:	06c00693          	li	a3,108
   16946:	00d61663          	bne	a2,a3,16952 <_vfiprintf_r+0x296>
   1694a:	0985                	addi	s3,s3,1
   1694c:	020d6d13          	ori	s10,s10,32
   16950:	bf35                	j	1688c <_vfiprintf_r+0x1d0>
   16952:	010d6d13          	ori	s10,s10,16
   16956:	bf1d                	j	1688c <_vfiprintf_r+0x1d0>
   16958:	000a2683          	lw	a3,0(s4)
   1695c:	008a0793          	addi	a5,s4,8
   16960:	e43e                	sd	a5,8(sp)
   16962:	08d10c23          	sb	a3,152(sp)
   16966:	06010ba3          	sb	zero,119(sp)
   1696a:	4405                	li	s0,1
   1696c:	4a01                	li	s4,0
   1696e:	09810c13          	addi	s8,sp,152
   16972:	aabd                	j	16af0 <_vfiprintf_r+0x434>
   16974:	010d6d13          	ori	s10,s10,16
   16978:	008a0793          	addi	a5,s4,8
   1697c:	e43e                	sd	a5,8(sp)
   1697e:	020d7693          	andi	a3,s10,32
   16982:	ca85                	beqz	a3,169b2 <_vfiprintf_r+0x2f6>
   16984:	000a3a03          	ld	s4,0(s4)
   16988:	000a5863          	bgez	s4,16998 <_vfiprintf_r+0x2dc>
   1698c:	02d00693          	li	a3,45
   16990:	41400a33          	neg	s4,s4
   16994:	06d10ba3          	sb	a3,119(sp)
   16998:	56fd                	li	a3,-1
   1699a:	3ad41b63          	bne	s0,a3,16d50 <_vfiprintf_r+0x694>
   1699e:	46a5                	li	a3,9
   169a0:	3d46e563          	bltu	a3,s4,16d6a <_vfiprintf_r+0x6ae>
   169a4:	030a0a1b          	addiw	s4,s4,48
   169a8:	0f410da3          	sb	s4,251(sp)
   169ac:	0fb10c13          	addi	s8,sp,251
   169b0:	a87d                	j	16a6e <_vfiprintf_r+0x3b2>
   169b2:	010d7693          	andi	a3,s10,16
   169b6:	f6f9                	bnez	a3,16984 <_vfiprintf_r+0x2c8>
   169b8:	040d7693          	andi	a3,s10,64
   169bc:	c681                	beqz	a3,169c4 <_vfiprintf_r+0x308>
   169be:	000a1a03          	lh	s4,0(s4)
   169c2:	b7d9                	j	16988 <_vfiprintf_r+0x2cc>
   169c4:	200d7693          	andi	a3,s10,512
   169c8:	c681                	beqz	a3,169d0 <_vfiprintf_r+0x314>
   169ca:	000a0a03          	lb	s4,0(s4)
   169ce:	bf6d                	j	16988 <_vfiprintf_r+0x2cc>
   169d0:	000a2a03          	lw	s4,0(s4)
   169d4:	bf55                	j	16988 <_vfiprintf_r+0x2cc>
   169d6:	020d7613          	andi	a2,s10,32
   169da:	000a3683          	ld	a3,0(s4)
   169de:	0a21                	addi	s4,s4,8
   169e0:	c601                	beqz	a2,169e8 <_vfiprintf_r+0x32c>
   169e2:	0176b023          	sd	s7,0(a3)
   169e6:	bb45                	j	16796 <_vfiprintf_r+0xda>
   169e8:	010d7613          	andi	a2,s10,16
   169ec:	fa7d                	bnez	a2,169e2 <_vfiprintf_r+0x326>
   169ee:	040d7613          	andi	a2,s10,64
   169f2:	c601                	beqz	a2,169fa <_vfiprintf_r+0x33e>
   169f4:	01769023          	sh	s7,0(a3)
   169f8:	bb79                	j	16796 <_vfiprintf_r+0xda>
   169fa:	200d7793          	andi	a5,s10,512
   169fe:	c781                	beqz	a5,16a06 <_vfiprintf_r+0x34a>
   16a00:	01768023          	sb	s7,0(a3)
   16a04:	bb49                	j	16796 <_vfiprintf_r+0xda>
   16a06:	0176a023          	sw	s7,0(a3)
   16a0a:	b371                	j	16796 <_vfiprintf_r+0xda>
   16a0c:	010d6d13          	ori	s10,s10,16
   16a10:	008a0793          	addi	a5,s4,8
   16a14:	e43e                	sd	a5,8(sp)
   16a16:	020d7693          	andi	a3,s10,32
   16a1a:	ceb9                	beqz	a3,16a78 <_vfiprintf_r+0x3bc>
   16a1c:	000a3a03          	ld	s4,0(s4)
   16a20:	bffd7d13          	andi	s10,s10,-1025
   16a24:	4601                	li	a2,0
   16a26:	06010ba3          	sb	zero,119(sp)
   16a2a:	56fd                	li	a3,-1
   16a2c:	85ea                	mv	a1,s10
   16a2e:	32d41363          	bne	s0,a3,16d54 <_vfiprintf_r+0x698>
   16a32:	4685                	li	a3,1
   16a34:	f6d605e3          	beq	a2,a3,1699e <_vfiprintf_r+0x2e2>
   16a38:	4689                	li	a3,2
   16a3a:	3ad60063          	beq	a2,a3,16dda <_vfiprintf_r+0x71e>
   16a3e:	19f0                	addi	a2,sp,252
   16a40:	007a7593          	andi	a1,s4,7
   16a44:	03058593          	addi	a1,a1,48
   16a48:	feb60fa3          	sb	a1,-1(a2)
   16a4c:	003a5a13          	srli	s4,s4,0x3
   16a50:	fff60c13          	addi	s8,a2,-1
   16a54:	300a1963          	bnez	s4,16d66 <_vfiprintf_r+0x6aa>
   16a58:	001d7513          	andi	a0,s10,1
   16a5c:	c909                	beqz	a0,16a6e <_vfiprintf_r+0x3b2>
   16a5e:	03000513          	li	a0,48
   16a62:	00a58663          	beq	a1,a0,16a6e <_vfiprintf_r+0x3b2>
   16a66:	feac0fa3          	sb	a0,-1(s8)
   16a6a:	ffe60c13          	addi	s8,a2,-2
   16a6e:	8a22                	mv	s4,s0
   16a70:	19e0                	addi	s0,sp,252
   16a72:	4184043b          	subw	s0,s0,s8
   16a76:	a8ad                	j	16af0 <_vfiprintf_r+0x434>
   16a78:	010d7693          	andi	a3,s10,16
   16a7c:	f2c5                	bnez	a3,16a1c <_vfiprintf_r+0x360>
   16a7e:	040d7693          	andi	a3,s10,64
   16a82:	000a2a03          	lw	s4,0(s4)
   16a86:	c689                	beqz	a3,16a90 <_vfiprintf_r+0x3d4>
   16a88:	1a42                	slli	s4,s4,0x30
   16a8a:	030a5a13          	srli	s4,s4,0x30
   16a8e:	bf49                	j	16a20 <_vfiprintf_r+0x364>
   16a90:	200d7693          	andi	a3,s10,512
   16a94:	c681                	beqz	a3,16a9c <_vfiprintf_r+0x3e0>
   16a96:	0ffa7a13          	andi	s4,s4,255
   16a9a:	b759                	j	16a20 <_vfiprintf_r+0x364>
   16a9c:	1a02                	slli	s4,s4,0x20
   16a9e:	020a5a13          	srli	s4,s4,0x20
   16aa2:	bfbd                	j	16a20 <_vfiprintf_r+0x364>
   16aa4:	76e1                	lui	a3,0xffff8
   16aa6:	8306c693          	xori	a3,a3,-2000
   16aaa:	008a0793          	addi	a5,s4,8
   16aae:	06d11c23          	sh	a3,120(sp)
   16ab2:	000a3a03          	ld	s4,0(s4)
   16ab6:	0001a6b7          	lui	a3,0x1a
   16aba:	e43e                	sd	a5,8(sp)
   16abc:	eb068793          	addi	a5,a3,-336 # 19eb0 <zeroes.4441+0x60>
   16ac0:	002d6d13          	ori	s10,s10,2
   16ac4:	f03e                	sd	a5,32(sp)
   16ac6:	4609                	li	a2,2
   16ac8:	bfb9                	j	16a26 <_vfiprintf_r+0x36a>
   16aca:	008a0793          	addi	a5,s4,8
   16ace:	e43e                	sd	a5,8(sp)
   16ad0:	06010ba3          	sb	zero,119(sp)
   16ad4:	567d                	li	a2,-1
   16ad6:	000a3c03          	ld	s8,0(s4)
   16ada:	1ec40663          	beq	s0,a2,16cc6 <_vfiprintf_r+0x60a>
   16ade:	8622                	mv	a2,s0
   16ae0:	4581                	li	a1,0
   16ae2:	8562                	mv	a0,s8
   16ae4:	fc6fd0ef          	jal	ra,142aa <memchr>
   16ae8:	4a01                	li	s4,0
   16aea:	c119                	beqz	a0,16af0 <_vfiprintf_r+0x434>
   16aec:	4185043b          	subw	s0,a0,s8
   16af0:	8652                	mv	a2,s4
   16af2:	008a5363          	ble	s0,s4,16af8 <_vfiprintf_r+0x43c>
   16af6:	8622                	mv	a2,s0
   16af8:	07714583          	lbu	a1,119(sp)
   16afc:	00060c9b          	sext.w	s9,a2
   16b00:	c199                	beqz	a1,16b06 <_vfiprintf_r+0x44a>
   16b02:	00160c9b          	addiw	s9,a2,1
   16b06:	002d7613          	andi	a2,s10,2
   16b0a:	0006079b          	sext.w	a5,a2
   16b0e:	e0be                	sd	a5,64(sp)
   16b10:	c391                	beqz	a5,16b14 <_vfiprintf_r+0x458>
   16b12:	2c89                	addiw	s9,s9,2
   16b14:	084d7793          	andi	a5,s10,132
   16b18:	e4be                	sd	a5,72(sp)
   16b1a:	e7a1                	bnez	a5,16b62 <_vfiprintf_r+0x4a6>
   16b1c:	419a883b          	subw	a6,s5,s9
   16b20:	05005163          	blez	a6,16b62 <_vfiprintf_r+0x4a6>
   16b24:	4341                	li	t1,16
   16b26:	4e1d                	li	t3,7
   16b28:	45aa                	lw	a1,136(sp)
   16b2a:	77c2                	ld	a5,48(sp)
   16b2c:	664a                	ld	a2,144(sp)
   16b2e:	0015851b          	addiw	a0,a1,1
   16b32:	00fdb023          	sd	a5,0(s11)
   16b36:	85aa                	mv	a1,a0
   16b38:	010d8893          	addi	a7,s11,16
   16b3c:	2f034363          	blt	t1,a6,16e22 <_vfiprintf_r+0x766>
   16b40:	010db423          	sd	a6,8(s11)
   16b44:	9832                	add	a6,a6,a2
   16b46:	e942                	sd	a6,144(sp)
   16b48:	c52a                	sw	a0,136(sp)
   16b4a:	461d                	li	a2,7
   16b4c:	8dc6                	mv	s11,a7
   16b4e:	00a65a63          	ble	a0,a2,16b62 <_vfiprintf_r+0x4a6>
   16b52:	0110                	addi	a2,sp,128
   16b54:	85a6                	mv	a1,s1
   16b56:	854a                	mv	a0,s2
   16b58:	ac7ff0ef          	jal	ra,1661e <__sprint_r>
   16b5c:	38051363          	bnez	a0,16ee2 <_vfiprintf_r+0x826>
   16b60:	8dda                	mv	s11,s6
   16b62:	07714603          	lbu	a2,119(sp)
   16b66:	ca1d                	beqz	a2,16b9c <_vfiprintf_r+0x4e0>
   16b68:	07710593          	addi	a1,sp,119
   16b6c:	00bdb023          	sd	a1,0(s11)
   16b70:	4585                	li	a1,1
   16b72:	462a                	lw	a2,136(sp)
   16b74:	00bdb423          	sd	a1,8(s11)
   16b78:	65ca                	ld	a1,144(sp)
   16b7a:	0016051b          	addiw	a0,a2,1
   16b7e:	c52a                	sw	a0,136(sp)
   16b80:	0585                	addi	a1,a1,1
   16b82:	e92e                	sd	a1,144(sp)
   16b84:	461d                	li	a2,7
   16b86:	0dc1                	addi	s11,s11,16
   16b88:	00a65a63          	ble	a0,a2,16b9c <_vfiprintf_r+0x4e0>
   16b8c:	0110                	addi	a2,sp,128
   16b8e:	85a6                	mv	a1,s1
   16b90:	854a                	mv	a0,s2
   16b92:	a8dff0ef          	jal	ra,1661e <__sprint_r>
   16b96:	34051663          	bnez	a0,16ee2 <_vfiprintf_r+0x826>
   16b9a:	8dda                	mv	s11,s6
   16b9c:	6786                	ld	a5,64(sp)
   16b9e:	cb95                	beqz	a5,16bd2 <_vfiprintf_r+0x516>
   16ba0:	18ac                	addi	a1,sp,120
   16ba2:	00bdb023          	sd	a1,0(s11)
   16ba6:	4589                	li	a1,2
   16ba8:	462a                	lw	a2,136(sp)
   16baa:	00bdb423          	sd	a1,8(s11)
   16bae:	65ca                	ld	a1,144(sp)
   16bb0:	0016051b          	addiw	a0,a2,1
   16bb4:	c52a                	sw	a0,136(sp)
   16bb6:	0589                	addi	a1,a1,2
   16bb8:	e92e                	sd	a1,144(sp)
   16bba:	461d                	li	a2,7
   16bbc:	0dc1                	addi	s11,s11,16
   16bbe:	00a65a63          	ble	a0,a2,16bd2 <_vfiprintf_r+0x516>
   16bc2:	0110                	addi	a2,sp,128
   16bc4:	85a6                	mv	a1,s1
   16bc6:	854a                	mv	a0,s2
   16bc8:	a57ff0ef          	jal	ra,1661e <__sprint_r>
   16bcc:	30051b63          	bnez	a0,16ee2 <_vfiprintf_r+0x826>
   16bd0:	8dda                	mv	s11,s6
   16bd2:	67a6                	ld	a5,72(sp)
   16bd4:	08000613          	li	a2,128
   16bd8:	04c79563          	bne	a5,a2,16c22 <_vfiprintf_r+0x566>
   16bdc:	419a883b          	subw	a6,s5,s9
   16be0:	05005163          	blez	a6,16c22 <_vfiprintf_r+0x566>
   16be4:	4341                	li	t1,16
   16be6:	4e1d                	li	t3,7
   16be8:	45aa                	lw	a1,136(sp)
   16bea:	77a2                	ld	a5,40(sp)
   16bec:	664a                	ld	a2,144(sp)
   16bee:	0015851b          	addiw	a0,a1,1
   16bf2:	00fdb023          	sd	a5,0(s11)
   16bf6:	85aa                	mv	a1,a0
   16bf8:	010d8893          	addi	a7,s11,16
   16bfc:	25034a63          	blt	t1,a6,16e50 <_vfiprintf_r+0x794>
   16c00:	010db423          	sd	a6,8(s11)
   16c04:	9832                	add	a6,a6,a2
   16c06:	e942                	sd	a6,144(sp)
   16c08:	c52a                	sw	a0,136(sp)
   16c0a:	461d                	li	a2,7
   16c0c:	8dc6                	mv	s11,a7
   16c0e:	00a65a63          	ble	a0,a2,16c22 <_vfiprintf_r+0x566>
   16c12:	0110                	addi	a2,sp,128
   16c14:	85a6                	mv	a1,s1
   16c16:	854a                	mv	a0,s2
   16c18:	a07ff0ef          	jal	ra,1661e <__sprint_r>
   16c1c:	2c051363          	bnez	a0,16ee2 <_vfiprintf_r+0x826>
   16c20:	8dda                	mv	s11,s6
   16c22:	408a0a3b          	subw	s4,s4,s0
   16c26:	05405163          	blez	s4,16c68 <_vfiprintf_r+0x5ac>
   16c2a:	48c1                	li	a7,16
   16c2c:	431d                	li	t1,7
   16c2e:	45aa                	lw	a1,136(sp)
   16c30:	77a2                	ld	a5,40(sp)
   16c32:	664a                	ld	a2,144(sp)
   16c34:	0015851b          	addiw	a0,a1,1
   16c38:	00fdb023          	sd	a5,0(s11)
   16c3c:	85aa                	mv	a1,a0
   16c3e:	010d8813          	addi	a6,s11,16
   16c42:	2348ce63          	blt	a7,s4,16e7e <_vfiprintf_r+0x7c2>
   16c46:	014db423          	sd	s4,8(s11)
   16c4a:	9a32                	add	s4,s4,a2
   16c4c:	e952                	sd	s4,144(sp)
   16c4e:	c52a                	sw	a0,136(sp)
   16c50:	461d                	li	a2,7
   16c52:	8dc2                	mv	s11,a6
   16c54:	00a65a63          	ble	a0,a2,16c68 <_vfiprintf_r+0x5ac>
   16c58:	0110                	addi	a2,sp,128
   16c5a:	85a6                	mv	a1,s1
   16c5c:	854a                	mv	a0,s2
   16c5e:	9c1ff0ef          	jal	ra,1661e <__sprint_r>
   16c62:	28051063          	bnez	a0,16ee2 <_vfiprintf_r+0x826>
   16c66:	8dda                	mv	s11,s6
   16c68:	66ca                	ld	a3,144(sp)
   16c6a:	008db423          	sd	s0,8(s11)
   16c6e:	018db023          	sd	s8,0(s11)
   16c72:	9436                	add	s0,s0,a3
   16c74:	46aa                	lw	a3,136(sp)
   16c76:	e922                	sd	s0,144(sp)
   16c78:	010d8713          	addi	a4,s11,16
   16c7c:	0016861b          	addiw	a2,a3,1
   16c80:	c532                	sw	a2,136(sp)
   16c82:	469d                	li	a3,7
   16c84:	00c6da63          	ble	a2,a3,16c98 <_vfiprintf_r+0x5dc>
   16c88:	0110                	addi	a2,sp,128
   16c8a:	85a6                	mv	a1,s1
   16c8c:	854a                	mv	a0,s2
   16c8e:	991ff0ef          	jal	ra,1661e <__sprint_r>
   16c92:	24051863          	bnez	a0,16ee2 <_vfiprintf_r+0x826>
   16c96:	875a                	mv	a4,s6
   16c98:	004d7793          	andi	a5,s10,4
   16c9c:	20079663          	bnez	a5,16ea8 <_vfiprintf_r+0x7ec>
   16ca0:	87d6                	mv	a5,s5
   16ca2:	019ad363          	ble	s9,s5,16ca8 <_vfiprintf_r+0x5ec>
   16ca6:	87e6                	mv	a5,s9
   16ca8:	01778bbb          	addw	s7,a5,s7
   16cac:	67ca                	ld	a5,144(sp)
   16cae:	cb81                	beqz	a5,16cbe <_vfiprintf_r+0x602>
   16cb0:	0110                	addi	a2,sp,128
   16cb2:	85a6                	mv	a1,s1
   16cb4:	854a                	mv	a0,s2
   16cb6:	969ff0ef          	jal	ra,1661e <__sprint_r>
   16cba:	22051463          	bnez	a0,16ee2 <_vfiprintf_r+0x826>
   16cbe:	c502                	sw	zero,136(sp)
   16cc0:	6a22                	ld	s4,8(sp)
   16cc2:	8dda                	mv	s11,s6
   16cc4:	bcc9                	j	16796 <_vfiprintf_r+0xda>
   16cc6:	8562                	mv	a0,s8
   16cc8:	b9cfe0ef          	jal	ra,15064 <strlen>
   16ccc:	0005041b          	sext.w	s0,a0
   16cd0:	4a01                	li	s4,0
   16cd2:	bd39                	j	16af0 <_vfiprintf_r+0x434>
   16cd4:	010d6d13          	ori	s10,s10,16
   16cd8:	008a0793          	addi	a5,s4,8
   16cdc:	e43e                	sd	a5,8(sp)
   16cde:	020d7693          	andi	a3,s10,32
   16ce2:	c689                	beqz	a3,16cec <_vfiprintf_r+0x630>
   16ce4:	000a3a03          	ld	s4,0(s4)
   16ce8:	4605                	li	a2,1
   16cea:	bb35                	j	16a26 <_vfiprintf_r+0x36a>
   16cec:	010d7693          	andi	a3,s10,16
   16cf0:	faf5                	bnez	a3,16ce4 <_vfiprintf_r+0x628>
   16cf2:	040d7693          	andi	a3,s10,64
   16cf6:	000a2a03          	lw	s4,0(s4)
   16cfa:	c689                	beqz	a3,16d04 <_vfiprintf_r+0x648>
   16cfc:	1a42                	slli	s4,s4,0x30
   16cfe:	030a5a13          	srli	s4,s4,0x30
   16d02:	b7dd                	j	16ce8 <_vfiprintf_r+0x62c>
   16d04:	200d7693          	andi	a3,s10,512
   16d08:	c681                	beqz	a3,16d10 <_vfiprintf_r+0x654>
   16d0a:	0ffa7a13          	andi	s4,s4,255
   16d0e:	bfe9                	j	16ce8 <_vfiprintf_r+0x62c>
   16d10:	1a02                	slli	s4,s4,0x20
   16d12:	020a5a13          	srli	s4,s4,0x20
   16d16:	bfc9                	j	16ce8 <_vfiprintf_r+0x62c>
   16d18:	0001a637          	lui	a2,0x1a
   16d1c:	eb060793          	addi	a5,a2,-336 # 19eb0 <zeroes.4441+0x60>
   16d20:	b629                	j	1682a <_vfiprintf_r+0x16e>
   16d22:	010d7613          	andi	a2,s10,16
   16d26:	b0061ae3          	bnez	a2,1683a <_vfiprintf_r+0x17e>
   16d2a:	040d7613          	andi	a2,s10,64
   16d2e:	000a2a03          	lw	s4,0(s4)
   16d32:	c609                	beqz	a2,16d3c <_vfiprintf_r+0x680>
   16d34:	1a42                	slli	s4,s4,0x30
   16d36:	030a5a13          	srli	s4,s4,0x30
   16d3a:	b611                	j	1683e <_vfiprintf_r+0x182>
   16d3c:	200d7613          	andi	a2,s10,512
   16d40:	c601                	beqz	a2,16d48 <_vfiprintf_r+0x68c>
   16d42:	0ffa7a13          	andi	s4,s4,255
   16d46:	bce5                	j	1683e <_vfiprintf_r+0x182>
   16d48:	1a02                	slli	s4,s4,0x20
   16d4a:	020a5a13          	srli	s4,s4,0x20
   16d4e:	bcc5                	j	1683e <_vfiprintf_r+0x182>
   16d50:	85ea                	mv	a1,s10
   16d52:	4605                	li	a2,1
   16d54:	f7fd7d13          	andi	s10,s10,-129
   16d58:	cc0a1de3          	bnez	s4,16a32 <_vfiprintf_r+0x376>
   16d5c:	cc59                	beqz	s0,16dfa <_vfiprintf_r+0x73e>
   16d5e:	4685                	li	a3,1
   16d60:	ccd61ce3          	bne	a2,a3,16a38 <_vfiprintf_r+0x37c>
   16d64:	b181                	j	169a4 <_vfiprintf_r+0x2e8>
   16d66:	8662                	mv	a2,s8
   16d68:	b9e1                	j	16a40 <_vfiprintf_r+0x384>
   16d6a:	400d7c93          	andi	s9,s10,1024
   16d6e:	4601                	li	a2,0
   16d70:	19ec                	addi	a1,sp,252
   16d72:	4829                	li	a6,10
   16d74:	2c81                	sext.w	s9,s9
   16d76:	0ff00893          	li	a7,255
   16d7a:	4325                	li	t1,9
   16d7c:	030a7533          	remu	a0,s4,a6
   16d80:	fff58c13          	addi	s8,a1,-1
   16d84:	2605                	addiw	a2,a2,1
   16d86:	0305051b          	addiw	a0,a0,48
   16d8a:	fea58fa3          	sb	a0,-1(a1)
   16d8e:	040c8063          	beqz	s9,16dce <_vfiprintf_r+0x712>
   16d92:	67c2                	ld	a5,16(sp)
   16d94:	0007c583          	lbu	a1,0(a5)
   16d98:	02c59b63          	bne	a1,a2,16dce <_vfiprintf_r+0x712>
   16d9c:	03158963          	beq	a1,a7,16dce <_vfiprintf_r+0x712>
   16da0:	03437763          	bleu	s4,t1,16dce <_vfiprintf_r+0x712>
   16da4:	67e2                	ld	a5,24(sp)
   16da6:	75e2                	ld	a1,56(sp)
   16da8:	ec9a                	sd	t1,88(sp)
   16daa:	40fc0c33          	sub	s8,s8,a5
   16dae:	863e                	mv	a2,a5
   16db0:	8562                	mv	a0,s8
   16db2:	e4c6                	sd	a7,72(sp)
   16db4:	e0c2                	sd	a6,64(sp)
   16db6:	ac0fe0ef          	jal	ra,15076 <strncpy>
   16dba:	67c2                	ld	a5,16(sp)
   16dbc:	4601                	li	a2,0
   16dbe:	6806                	ld	a6,64(sp)
   16dc0:	0017c583          	lbu	a1,1(a5)
   16dc4:	68a6                	ld	a7,72(sp)
   16dc6:	6366                	ld	t1,88(sp)
   16dc8:	c199                	beqz	a1,16dce <_vfiprintf_r+0x712>
   16dca:	0785                	addi	a5,a5,1
   16dcc:	e83e                	sd	a5,16(sp)
   16dce:	030a5a33          	divu	s4,s4,a6
   16dd2:	c80a0ee3          	beqz	s4,16a6e <_vfiprintf_r+0x3b2>
   16dd6:	85e2                	mv	a1,s8
   16dd8:	b755                	j	16d7c <_vfiprintf_r+0x6c0>
   16dda:	0fc10c13          	addi	s8,sp,252
   16dde:	7782                	ld	a5,32(sp)
   16de0:	00fa7613          	andi	a2,s4,15
   16de4:	1c7d                	addi	s8,s8,-1
   16de6:	963e                	add	a2,a2,a5
   16de8:	00064603          	lbu	a2,0(a2)
   16dec:	004a5a13          	srli	s4,s4,0x4
   16df0:	00cc0023          	sb	a2,0(s8)
   16df4:	fe0a15e3          	bnez	s4,16dde <_vfiprintf_r+0x722>
   16df8:	b99d                	j	16a6e <_vfiprintf_r+0x3b2>
   16dfa:	0fc10c13          	addi	s8,sp,252
   16dfe:	c60618e3          	bnez	a2,16a6e <_vfiprintf_r+0x3b2>
   16e02:	8985                	andi	a1,a1,1
   16e04:	c60585e3          	beqz	a1,16a6e <_vfiprintf_r+0x3b2>
   16e08:	03000693          	li	a3,48
   16e0c:	0ed10da3          	sb	a3,251(sp)
   16e10:	be71                	j	169ac <_vfiprintf_r+0x2f0>
   16e12:	10068263          	beqz	a3,16f16 <_vfiprintf_r+0x85a>
   16e16:	08d10c23          	sb	a3,152(sp)
   16e1a:	06010ba3          	sb	zero,119(sp)
   16e1e:	e452                	sd	s4,8(sp)
   16e20:	b6a9                	j	1696a <_vfiprintf_r+0x2ae>
   16e22:	0641                	addi	a2,a2,16
   16e24:	006db423          	sd	t1,8(s11)
   16e28:	e932                	sd	a2,144(sp)
   16e2a:	c52e                	sw	a1,136(sp)
   16e2c:	00ae5f63          	ble	a0,t3,16e4a <_vfiprintf_r+0x78e>
   16e30:	0110                	addi	a2,sp,128
   16e32:	85a6                	mv	a1,s1
   16e34:	854a                	mv	a0,s2
   16e36:	f4f2                	sd	t3,104(sp)
   16e38:	f09a                	sd	t1,96(sp)
   16e3a:	ecc2                	sd	a6,88(sp)
   16e3c:	fe2ff0ef          	jal	ra,1661e <__sprint_r>
   16e40:	e14d                	bnez	a0,16ee2 <_vfiprintf_r+0x826>
   16e42:	7e26                	ld	t3,104(sp)
   16e44:	7306                	ld	t1,96(sp)
   16e46:	6866                	ld	a6,88(sp)
   16e48:	88da                	mv	a7,s6
   16e4a:	3841                	addiw	a6,a6,-16
   16e4c:	8dc6                	mv	s11,a7
   16e4e:	b9e9                	j	16b28 <_vfiprintf_r+0x46c>
   16e50:	0641                	addi	a2,a2,16
   16e52:	006db423          	sd	t1,8(s11)
   16e56:	e932                	sd	a2,144(sp)
   16e58:	c52e                	sw	a1,136(sp)
   16e5a:	00ae5f63          	ble	a0,t3,16e78 <_vfiprintf_r+0x7bc>
   16e5e:	0110                	addi	a2,sp,128
   16e60:	85a6                	mv	a1,s1
   16e62:	854a                	mv	a0,s2
   16e64:	ecf2                	sd	t3,88(sp)
   16e66:	e49a                	sd	t1,72(sp)
   16e68:	e0c2                	sd	a6,64(sp)
   16e6a:	fb4ff0ef          	jal	ra,1661e <__sprint_r>
   16e6e:	e935                	bnez	a0,16ee2 <_vfiprintf_r+0x826>
   16e70:	6e66                	ld	t3,88(sp)
   16e72:	6326                	ld	t1,72(sp)
   16e74:	6806                	ld	a6,64(sp)
   16e76:	88da                	mv	a7,s6
   16e78:	3841                	addiw	a6,a6,-16
   16e7a:	8dc6                	mv	s11,a7
   16e7c:	b3b5                	j	16be8 <_vfiprintf_r+0x52c>
   16e7e:	0641                	addi	a2,a2,16
   16e80:	011db423          	sd	a7,8(s11)
   16e84:	e932                	sd	a2,144(sp)
   16e86:	c52e                	sw	a1,136(sp)
   16e88:	00a35d63          	ble	a0,t1,16ea2 <_vfiprintf_r+0x7e6>
   16e8c:	0110                	addi	a2,sp,128
   16e8e:	85a6                	mv	a1,s1
   16e90:	854a                	mv	a0,s2
   16e92:	e49a                	sd	t1,72(sp)
   16e94:	e0c6                	sd	a7,64(sp)
   16e96:	f88ff0ef          	jal	ra,1661e <__sprint_r>
   16e9a:	e521                	bnez	a0,16ee2 <_vfiprintf_r+0x826>
   16e9c:	6326                	ld	t1,72(sp)
   16e9e:	6886                	ld	a7,64(sp)
   16ea0:	885a                	mv	a6,s6
   16ea2:	3a41                	addiw	s4,s4,-16
   16ea4:	8dc2                	mv	s11,a6
   16ea6:	b361                	j	16c2e <_vfiprintf_r+0x572>
   16ea8:	419a843b          	subw	s0,s5,s9
   16eac:	de805ae3          	blez	s0,16ca0 <_vfiprintf_r+0x5e4>
   16eb0:	4a41                	li	s4,16
   16eb2:	4d1d                	li	s10,7
   16eb4:	46aa                	lw	a3,136(sp)
   16eb6:	67ca                	ld	a5,144(sp)
   16eb8:	0016861b          	addiw	a2,a3,1
   16ebc:	86b2                	mv	a3,a2
   16ebe:	028a4963          	blt	s4,s0,16ef0 <_vfiprintf_r+0x834>
   16ec2:	76c2                	ld	a3,48(sp)
   16ec4:	e700                	sd	s0,8(a4)
   16ec6:	943e                	add	s0,s0,a5
   16ec8:	e314                	sd	a3,0(a4)
   16eca:	e922                	sd	s0,144(sp)
   16ecc:	c532                	sw	a2,136(sp)
   16ece:	479d                	li	a5,7
   16ed0:	dcc7d8e3          	ble	a2,a5,16ca0 <_vfiprintf_r+0x5e4>
   16ed4:	0110                	addi	a2,sp,128
   16ed6:	85a6                	mv	a1,s1
   16ed8:	854a                	mv	a0,s2
   16eda:	f44ff0ef          	jal	ra,1661e <__sprint_r>
   16ede:	dc0501e3          	beqz	a0,16ca0 <_vfiprintf_r+0x5e4>
   16ee2:	0104d783          	lhu	a5,16(s1)
   16ee6:	0407f793          	andi	a5,a5,64
   16eea:	840788e3          	beqz	a5,1673a <_vfiprintf_r+0x7e>
   16eee:	b89d                	j	16764 <_vfiprintf_r+0xa8>
   16ef0:	75c2                	ld	a1,48(sp)
   16ef2:	07c1                	addi	a5,a5,16
   16ef4:	01473423          	sd	s4,8(a4)
   16ef8:	e30c                	sd	a1,0(a4)
   16efa:	e93e                	sd	a5,144(sp)
   16efc:	c536                	sw	a3,136(sp)
   16efe:	0741                	addi	a4,a4,16
   16f00:	00cd5963          	ble	a2,s10,16f12 <_vfiprintf_r+0x856>
   16f04:	0110                	addi	a2,sp,128
   16f06:	85a6                	mv	a1,s1
   16f08:	854a                	mv	a0,s2
   16f0a:	f14ff0ef          	jal	ra,1661e <__sprint_r>
   16f0e:	f971                	bnez	a0,16ee2 <_vfiprintf_r+0x826>
   16f10:	875a                	mv	a4,s6
   16f12:	3441                	addiw	s0,s0,-16
   16f14:	b745                	j	16eb4 <_vfiprintf_r+0x7f8>
   16f16:	67ca                	ld	a5,144(sp)
   16f18:	d7e9                	beqz	a5,16ee2 <_vfiprintf_r+0x826>
   16f1a:	0110                	addi	a2,sp,128
   16f1c:	85a6                	mv	a1,s1
   16f1e:	854a                	mv	a0,s2
   16f20:	efeff0ef          	jal	ra,1661e <__sprint_r>
   16f24:	bf7d                	j	16ee2 <_vfiprintf_r+0x826>

0000000000016f26 <vfiprintf>:
   16f26:	86b2                	mv	a3,a2
   16f28:	862e                	mv	a2,a1
   16f2a:	85aa                	mv	a1,a0
   16f2c:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   16f30:	f8cff06f          	j	166bc <_vfiprintf_r>

0000000000016f34 <__sbprintf>:
   16f34:	0105d783          	lhu	a5,16(a1)
   16f38:	b3010113          	addi	sp,sp,-1232
   16f3c:	4c813023          	sd	s0,1216(sp)
   16f40:	9bf5                	andi	a5,a5,-3
   16f42:	00f11823          	sh	a5,16(sp)
   16f46:	0ac5a783          	lw	a5,172(a1)
   16f4a:	842e                	mv	s0,a1
   16f4c:	4a913c23          	sd	s1,1208(sp)
   16f50:	d73e                	sw	a5,172(sp)
   16f52:	0125d783          	lhu	a5,18(a1)
   16f56:	4b213823          	sd	s2,1200(sp)
   16f5a:	4c113423          	sd	ra,1224(sp)
   16f5e:	00f11923          	sh	a5,18(sp)
   16f62:	799c                	ld	a5,48(a1)
   16f64:	892a                	mv	s2,a0
   16f66:	d402                	sw	zero,40(sp)
   16f68:	f83e                	sd	a5,48(sp)
   16f6a:	61bc                	ld	a5,64(a1)
   16f6c:	858a                	mv	a1,sp
   16f6e:	e0be                	sd	a5,64(sp)
   16f70:	191c                	addi	a5,sp,176
   16f72:	e03e                	sd	a5,0(sp)
   16f74:	ec3e                	sd	a5,24(sp)
   16f76:	40000793          	li	a5,1024
   16f7a:	c63e                	sw	a5,12(sp)
   16f7c:	d03e                	sw	a5,32(sp)
   16f7e:	f3eff0ef          	jal	ra,166bc <_vfiprintf_r>
   16f82:	84aa                	mv	s1,a0
   16f84:	00054863          	bltz	a0,16f94 <__sbprintf+0x60>
   16f88:	858a                	mv	a1,sp
   16f8a:	854a                	mv	a0,s2
   16f8c:	ca4fb0ef          	jal	ra,12430 <_fflush_r>
   16f90:	c111                	beqz	a0,16f94 <__sbprintf+0x60>
   16f92:	54fd                	li	s1,-1
   16f94:	01015783          	lhu	a5,16(sp)
   16f98:	0407f793          	andi	a5,a5,64
   16f9c:	c799                	beqz	a5,16faa <__sbprintf+0x76>
   16f9e:	01045783          	lhu	a5,16(s0)
   16fa2:	0407e793          	ori	a5,a5,64
   16fa6:	00f41823          	sh	a5,16(s0)
   16faa:	4c813083          	ld	ra,1224(sp)
   16fae:	4c013403          	ld	s0,1216(sp)
   16fb2:	8526                	mv	a0,s1
   16fb4:	4b013903          	ld	s2,1200(sp)
   16fb8:	4b813483          	ld	s1,1208(sp)
   16fbc:	4d010113          	addi	sp,sp,1232
   16fc0:	8082                	ret

0000000000016fc2 <_wctomb_r>:
   16fc2:	8301b783          	ld	a5,-2000(gp) # 1cb08 <_impure_ptr>
   16fc6:	67bc                	ld	a5,72(a5)
   16fc8:	e781                	bnez	a5,16fd0 <_wctomb_r+0xe>
   16fca:	67f5                	lui	a5,0x1d
   16fcc:	93078793          	addi	a5,a5,-1744 # 1c930 <__global_locale>
   16fd0:	0e07b303          	ld	t1,224(a5)
   16fd4:	8302                	jr	t1

0000000000016fd6 <__ascii_wctomb>:
   16fd6:	cd91                	beqz	a1,16ff2 <__ascii_wctomb+0x1c>
   16fd8:	0ff00793          	li	a5,255
   16fdc:	00c7f763          	bleu	a2,a5,16fea <__ascii_wctomb+0x14>
   16fe0:	08a00793          	li	a5,138
   16fe4:	c11c                	sw	a5,0(a0)
   16fe6:	557d                	li	a0,-1
   16fe8:	8082                	ret
   16fea:	00c58023          	sb	a2,0(a1)
   16fee:	4505                	li	a0,1
   16ff0:	8082                	ret
   16ff2:	4501                	li	a0,0
   16ff4:	8082                	ret

0000000000016ff6 <_write_r>:
   16ff6:	1101                	addi	sp,sp,-32
   16ff8:	e822                	sd	s0,16(sp)
   16ffa:	e426                	sd	s1,8(sp)
   16ffc:	84aa                	mv	s1,a0
   16ffe:	852e                	mv	a0,a1
   17000:	85b2                	mv	a1,a2
   17002:	8636                	mv	a2,a3
   17004:	ec06                	sd	ra,24(sp)
   17006:	8e01a823          	sw	zero,-1808(gp) # 1cbc8 <errno>
   1700a:	710010ef          	jal	ra,1871a <_write>
   1700e:	57fd                	li	a5,-1
   17010:	00f51663          	bne	a0,a5,1701c <_write_r+0x26>
   17014:	8f01a783          	lw	a5,-1808(gp) # 1cbc8 <errno>
   17018:	c391                	beqz	a5,1701c <_write_r+0x26>
   1701a:	c09c                	sw	a5,0(s1)
   1701c:	60e2                	ld	ra,24(sp)
   1701e:	6442                	ld	s0,16(sp)
   17020:	64a2                	ld	s1,8(sp)
   17022:	6105                	addi	sp,sp,32
   17024:	8082                	ret

0000000000017026 <_calloc_r>:
   17026:	02c585b3          	mul	a1,a1,a2
   1702a:	1141                	addi	sp,sp,-16
   1702c:	e022                	sd	s0,0(sp)
   1702e:	e406                	sd	ra,8(sp)
   17030:	c5cf90ef          	jal	ra,1048c <_malloc_r>
   17034:	842a                	mv	s0,a0
   17036:	cd15                	beqz	a0,17072 <_calloc_r+0x4c>
   17038:	ff853603          	ld	a2,-8(a0)
   1703c:	04800713          	li	a4,72
   17040:	9a71                	andi	a2,a2,-4
   17042:	1661                	addi	a2,a2,-8
   17044:	04c76b63          	bltu	a4,a2,1709a <_calloc_r+0x74>
   17048:	02700693          	li	a3,39
   1704c:	87aa                	mv	a5,a0
   1704e:	00c6fc63          	bleu	a2,a3,17066 <_calloc_r+0x40>
   17052:	00053023          	sd	zero,0(a0)
   17056:	00053423          	sd	zero,8(a0)
   1705a:	03700793          	li	a5,55
   1705e:	00c7ef63          	bltu	a5,a2,1707c <_calloc_r+0x56>
   17062:	01050793          	addi	a5,a0,16
   17066:	0007b023          	sd	zero,0(a5)
   1706a:	0007b423          	sd	zero,8(a5)
   1706e:	0007b823          	sd	zero,16(a5)
   17072:	8522                	mv	a0,s0
   17074:	60a2                	ld	ra,8(sp)
   17076:	6402                	ld	s0,0(sp)
   17078:	0141                	addi	sp,sp,16
   1707a:	8082                	ret
   1707c:	00053823          	sd	zero,16(a0)
   17080:	00053c23          	sd	zero,24(a0)
   17084:	02050793          	addi	a5,a0,32
   17088:	fce61fe3          	bne	a2,a4,17066 <_calloc_r+0x40>
   1708c:	02053023          	sd	zero,32(a0)
   17090:	03050793          	addi	a5,a0,48
   17094:	02053423          	sd	zero,40(a0)
   17098:	b7f9                	j	17066 <_calloc_r+0x40>
   1709a:	4581                	li	a1,0
   1709c:	8d1f90ef          	jal	ra,1096c <memset>
   170a0:	bfc9                	j	17072 <_calloc_r+0x4c>

00000000000170a2 <_close_r>:
   170a2:	1101                	addi	sp,sp,-32
   170a4:	e822                	sd	s0,16(sp)
   170a6:	e426                	sd	s1,8(sp)
   170a8:	84aa                	mv	s1,a0
   170aa:	852e                	mv	a0,a1
   170ac:	ec06                	sd	ra,24(sp)
   170ae:	8e01a823          	sw	zero,-1808(gp) # 1cbc8 <errno>
   170b2:	4c0010ef          	jal	ra,18572 <_close>
   170b6:	57fd                	li	a5,-1
   170b8:	00f51663          	bne	a0,a5,170c4 <_close_r+0x22>
   170bc:	8f01a783          	lw	a5,-1808(gp) # 1cbc8 <errno>
   170c0:	c391                	beqz	a5,170c4 <_close_r+0x22>
   170c2:	c09c                	sw	a5,0(s1)
   170c4:	60e2                	ld	ra,24(sp)
   170c6:	6442                	ld	s0,16(sp)
   170c8:	64a2                	ld	s1,8(sp)
   170ca:	6105                	addi	sp,sp,32
   170cc:	8082                	ret

00000000000170ce <_fclose_r>:
   170ce:	1101                	addi	sp,sp,-32
   170d0:	ec06                	sd	ra,24(sp)
   170d2:	e822                	sd	s0,16(sp)
   170d4:	e426                	sd	s1,8(sp)
   170d6:	e04a                	sd	s2,0(sp)
   170d8:	e989                	bnez	a1,170ea <_fclose_r+0x1c>
   170da:	4901                	li	s2,0
   170dc:	60e2                	ld	ra,24(sp)
   170de:	6442                	ld	s0,16(sp)
   170e0:	854a                	mv	a0,s2
   170e2:	64a2                	ld	s1,8(sp)
   170e4:	6902                	ld	s2,0(sp)
   170e6:	6105                	addi	sp,sp,32
   170e8:	8082                	ret
   170ea:	84aa                	mv	s1,a0
   170ec:	842e                	mv	s0,a1
   170ee:	c509                	beqz	a0,170f8 <_fclose_r+0x2a>
   170f0:	493c                	lw	a5,80(a0)
   170f2:	e399                	bnez	a5,170f8 <_fclose_r+0x2a>
   170f4:	c54fb0ef          	jal	ra,12548 <__sinit>
   170f8:	01041783          	lh	a5,16(s0)
   170fc:	dff9                	beqz	a5,170da <_fclose_r+0xc>
   170fe:	85a2                	mv	a1,s0
   17100:	8526                	mv	a0,s1
   17102:	9ccfb0ef          	jal	ra,122ce <__sflush_r>
   17106:	683c                	ld	a5,80(s0)
   17108:	892a                	mv	s2,a0
   1710a:	c799                	beqz	a5,17118 <_fclose_r+0x4a>
   1710c:	780c                	ld	a1,48(s0)
   1710e:	8526                	mv	a0,s1
   17110:	9782                	jalr	a5
   17112:	00055363          	bgez	a0,17118 <_fclose_r+0x4a>
   17116:	597d                	li	s2,-1
   17118:	01045783          	lhu	a5,16(s0)
   1711c:	0807f793          	andi	a5,a5,128
   17120:	c789                	beqz	a5,1712a <_fclose_r+0x5c>
   17122:	6c0c                	ld	a1,24(s0)
   17124:	8526                	mv	a0,s1
   17126:	df2fb0ef          	jal	ra,12718 <_free_r>
   1712a:	6c2c                	ld	a1,88(s0)
   1712c:	c991                	beqz	a1,17140 <_fclose_r+0x72>
   1712e:	07440793          	addi	a5,s0,116
   17132:	00f58563          	beq	a1,a5,1713c <_fclose_r+0x6e>
   17136:	8526                	mv	a0,s1
   17138:	de0fb0ef          	jal	ra,12718 <_free_r>
   1713c:	04043c23          	sd	zero,88(s0)
   17140:	7c2c                	ld	a1,120(s0)
   17142:	c591                	beqz	a1,1714e <_fclose_r+0x80>
   17144:	8526                	mv	a0,s1
   17146:	dd2fb0ef          	jal	ra,12718 <_free_r>
   1714a:	06043c23          	sd	zero,120(s0)
   1714e:	ce8fb0ef          	jal	ra,12636 <__sfp_lock_acquire>
   17152:	00041823          	sh	zero,16(s0)
   17156:	ce2fb0ef          	jal	ra,12638 <__sfp_lock_release>
   1715a:	b749                	j	170dc <_fclose_r+0xe>

000000000001715c <fclose>:
   1715c:	85aa                	mv	a1,a0
   1715e:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   17162:	f6dff06f          	j	170ce <_fclose_r>

0000000000017166 <__fputwc>:
   17166:	715d                	addi	sp,sp,-80
   17168:	e0a2                	sd	s0,64(sp)
   1716a:	fc26                	sd	s1,56(sp)
   1716c:	f052                	sd	s4,32(sp)
   1716e:	e486                	sd	ra,72(sp)
   17170:	f84a                	sd	s2,48(sp)
   17172:	f44e                	sd	s3,40(sp)
   17174:	ec56                	sd	s5,24(sp)
   17176:	e85a                	sd	s6,16(sp)
   17178:	8a2a                	mv	s4,a0
   1717a:	84ae                	mv	s1,a1
   1717c:	8432                	mv	s0,a2
   1717e:	fa1fc0ef          	jal	ra,1411e <__locale_mb_cur_max>
   17182:	4785                	li	a5,1
   17184:	02f51c63          	bne	a0,a5,171bc <__fputwc+0x56>
   17188:	fff4879b          	addiw	a5,s1,-1
   1718c:	0fe00713          	li	a4,254
   17190:	02f76663          	bltu	a4,a5,171bc <__fputwc+0x56>
   17194:	00910423          	sb	s1,8(sp)
   17198:	4985                	li	s3,1
   1719a:	4901                	li	s2,0
   1719c:	5afd                	li	s5,-1
   1719e:	4b29                	li	s6,10
   171a0:	05391163          	bne	s2,s3,171e2 <__fputwc+0x7c>
   171a4:	0004851b          	sext.w	a0,s1
   171a8:	60a6                	ld	ra,72(sp)
   171aa:	6406                	ld	s0,64(sp)
   171ac:	74e2                	ld	s1,56(sp)
   171ae:	7942                	ld	s2,48(sp)
   171b0:	79a2                	ld	s3,40(sp)
   171b2:	7a02                	ld	s4,32(sp)
   171b4:	6ae2                	ld	s5,24(sp)
   171b6:	6b42                	ld	s6,16(sp)
   171b8:	6161                	addi	sp,sp,80
   171ba:	8082                	ret
   171bc:	0a440693          	addi	a3,s0,164
   171c0:	8626                	mv	a2,s1
   171c2:	002c                	addi	a1,sp,8
   171c4:	8552                	mv	a0,s4
   171c6:	34e010ef          	jal	ra,18514 <_wcrtomb_r>
   171ca:	57fd                	li	a5,-1
   171cc:	89aa                	mv	s3,a0
   171ce:	fcf516e3          	bne	a0,a5,1719a <__fputwc+0x34>
   171d2:	01045783          	lhu	a5,16(s0)
   171d6:	0407e793          	ori	a5,a5,64
   171da:	00f41823          	sh	a5,16(s0)
   171de:	557d                	li	a0,-1
   171e0:	b7e1                	j	171a8 <__fputwc+0x42>
   171e2:	003c                	addi	a5,sp,8
   171e4:	97ca                	add	a5,a5,s2
   171e6:	0007c583          	lbu	a1,0(a5)
   171ea:	445c                	lw	a5,12(s0)
   171ec:	fff7871b          	addiw	a4,a5,-1
   171f0:	c458                	sw	a4,12(s0)
   171f2:	00075763          	bgez	a4,17200 <__fputwc+0x9a>
   171f6:	541c                	lw	a5,40(s0)
   171f8:	00f74c63          	blt	a4,a5,17210 <__fputwc+0xaa>
   171fc:	01658a63          	beq	a1,s6,17210 <__fputwc+0xaa>
   17200:	601c                	ld	a5,0(s0)
   17202:	00178713          	addi	a4,a5,1
   17206:	e018                	sd	a4,0(s0)
   17208:	00b78023          	sb	a1,0(a5)
   1720c:	0905                	addi	s2,s2,1
   1720e:	bf49                	j	171a0 <__fputwc+0x3a>
   17210:	8622                	mv	a2,s0
   17212:	8552                	mv	a0,s4
   17214:	238010ef          	jal	ra,1844c <__swbuf_r>
   17218:	ff551ae3          	bne	a0,s5,1720c <__fputwc+0xa6>
   1721c:	b7c9                	j	171de <__fputwc+0x78>

000000000001721e <_fputwc_r>:
   1721e:	01061783          	lh	a5,16(a2)
   17222:	03279713          	slli	a4,a5,0x32
   17226:	00074c63          	bltz	a4,1723e <_fputwc_r+0x20>
   1722a:	0ac62703          	lw	a4,172(a2)
   1722e:	6689                	lui	a3,0x2
   17230:	8fd5                	or	a5,a5,a3
   17232:	00f61823          	sh	a5,16(a2)
   17236:	6789                	lui	a5,0x2
   17238:	8fd9                	or	a5,a5,a4
   1723a:	0af62623          	sw	a5,172(a2)
   1723e:	f29ff06f          	j	17166 <__fputwc>

0000000000017242 <fputwc>:
   17242:	7179                	addi	sp,sp,-48
   17244:	f022                	sd	s0,32(sp)
   17246:	8301b403          	ld	s0,-2000(gp) # 1cb08 <_impure_ptr>
   1724a:	ec26                	sd	s1,24(sp)
   1724c:	f406                	sd	ra,40(sp)
   1724e:	84aa                	mv	s1,a0
   17250:	862e                	mv	a2,a1
   17252:	c801                	beqz	s0,17262 <fputwc+0x20>
   17254:	483c                	lw	a5,80(s0)
   17256:	e791                	bnez	a5,17262 <fputwc+0x20>
   17258:	8522                	mv	a0,s0
   1725a:	e42e                	sd	a1,8(sp)
   1725c:	aecfb0ef          	jal	ra,12548 <__sinit>
   17260:	6622                	ld	a2,8(sp)
   17262:	8522                	mv	a0,s0
   17264:	7402                	ld	s0,32(sp)
   17266:	70a2                	ld	ra,40(sp)
   17268:	85a6                	mv	a1,s1
   1726a:	64e2                	ld	s1,24(sp)
   1726c:	6145                	addi	sp,sp,48
   1726e:	fb1ff06f          	j	1721e <_fputwc_r>

0000000000017272 <_fstat_r>:
   17272:	1101                	addi	sp,sp,-32
   17274:	e822                	sd	s0,16(sp)
   17276:	e426                	sd	s1,8(sp)
   17278:	84aa                	mv	s1,a0
   1727a:	852e                	mv	a0,a1
   1727c:	85b2                	mv	a1,a2
   1727e:	ec06                	sd	ra,24(sp)
   17280:	8e01a823          	sw	zero,-1808(gp) # 1cbc8 <errno>
   17284:	350010ef          	jal	ra,185d4 <_fstat>
   17288:	57fd                	li	a5,-1
   1728a:	00f51663          	bne	a0,a5,17296 <_fstat_r+0x24>
   1728e:	8f01a783          	lw	a5,-1808(gp) # 1cbc8 <errno>
   17292:	c391                	beqz	a5,17296 <_fstat_r+0x24>
   17294:	c09c                	sw	a5,0(s1)
   17296:	60e2                	ld	ra,24(sp)
   17298:	6442                	ld	s0,16(sp)
   1729a:	64a2                	ld	s1,8(sp)
   1729c:	6105                	addi	sp,sp,32
   1729e:	8082                	ret

00000000000172a0 <__sfvwrite_r>:
   172a0:	6a1c                	ld	a5,16(a2)
   172a2:	e781                	bnez	a5,172aa <__sfvwrite_r+0xa>
   172a4:	4781                	li	a5,0
   172a6:	853e                	mv	a0,a5
   172a8:	8082                	ret
   172aa:	0105d783          	lhu	a5,16(a1)
   172ae:	7119                	addi	sp,sp,-128
   172b0:	f8a2                	sd	s0,112(sp)
   172b2:	f0ca                	sd	s2,96(sp)
   172b4:	e8d2                	sd	s4,80(sp)
   172b6:	fc86                	sd	ra,120(sp)
   172b8:	f4a6                	sd	s1,104(sp)
   172ba:	ecce                	sd	s3,88(sp)
   172bc:	e4d6                	sd	s5,72(sp)
   172be:	e0da                	sd	s6,64(sp)
   172c0:	fc5e                	sd	s7,56(sp)
   172c2:	f862                	sd	s8,48(sp)
   172c4:	f466                	sd	s9,40(sp)
   172c6:	f06a                	sd	s10,32(sp)
   172c8:	ec6e                	sd	s11,24(sp)
   172ca:	8ba1                	andi	a5,a5,8
   172cc:	8a32                	mv	s4,a2
   172ce:	842e                	mv	s0,a1
   172d0:	892a                	mv	s2,a0
   172d2:	cfd1                	beqz	a5,1736e <__sfvwrite_r+0xce>
   172d4:	6d9c                	ld	a5,24(a1)
   172d6:	cfc1                	beqz	a5,1736e <__sfvwrite_r+0xce>
   172d8:	01045783          	lhu	a5,16(s0)
   172dc:	000a3983          	ld	s3,0(s4)
   172e0:	0027f713          	andi	a4,a5,2
   172e4:	0e071863          	bnez	a4,173d4 <__sfvwrite_r+0x134>
   172e8:	8b85                	andi	a5,a5,1
   172ea:	4a81                	li	s5,0
   172ec:	16078463          	beqz	a5,17454 <__sfvwrite_r+0x1b4>
   172f0:	4501                	li	a0,0
   172f2:	4b81                	li	s7,0
   172f4:	4b01                	li	s6,0
   172f6:	240b0863          	beqz	s6,17546 <__sfvwrite_r+0x2a6>
   172fa:	e919                	bnez	a0,17310 <__sfvwrite_r+0x70>
   172fc:	865a                	mv	a2,s6
   172fe:	45a9                	li	a1,10
   17300:	855e                	mv	a0,s7
   17302:	fa9fc0ef          	jal	ra,142aa <memchr>
   17306:	24050763          	beqz	a0,17554 <__sfvwrite_r+0x2b4>
   1730a:	0505                	addi	a0,a0,1
   1730c:	41750abb          	subw	s5,a0,s7
   17310:	8c56                	mv	s8,s5
   17312:	015b7363          	bleu	s5,s6,17318 <__sfvwrite_r+0x78>
   17316:	8c5a                	mv	s8,s6
   17318:	6008                	ld	a0,0(s0)
   1731a:	6c1c                	ld	a5,24(s0)
   1731c:	5014                	lw	a3,32(s0)
   1731e:	22a7fe63          	bleu	a0,a5,1755a <__sfvwrite_r+0x2ba>
   17322:	4444                	lw	s1,12(s0)
   17324:	9cb5                	addw	s1,s1,a3
   17326:	2384da63          	ble	s8,s1,1755a <__sfvwrite_r+0x2ba>
   1732a:	85de                	mv	a1,s7
   1732c:	8626                	mv	a2,s1
   1732e:	376000ef          	jal	ra,176a4 <memmove>
   17332:	601c                	ld	a5,0(s0)
   17334:	85a2                	mv	a1,s0
   17336:	854a                	mv	a0,s2
   17338:	97a6                	add	a5,a5,s1
   1733a:	e01c                	sd	a5,0(s0)
   1733c:	8f4fb0ef          	jal	ra,12430 <_fflush_r>
   17340:	10051263          	bnez	a0,17444 <__sfvwrite_r+0x1a4>
   17344:	409a8abb          	subw	s5,s5,s1
   17348:	4505                	li	a0,1
   1734a:	000a9763          	bnez	s5,17358 <__sfvwrite_r+0xb8>
   1734e:	85a2                	mv	a1,s0
   17350:	854a                	mv	a0,s2
   17352:	8defb0ef          	jal	ra,12430 <_fflush_r>
   17356:	e57d                	bnez	a0,17444 <__sfvwrite_r+0x1a4>
   17358:	010a3783          	ld	a5,16(s4)
   1735c:	9ba6                	add	s7,s7,s1
   1735e:	409b0b33          	sub	s6,s6,s1
   17362:	409784b3          	sub	s1,a5,s1
   17366:	009a3823          	sd	s1,16(s4)
   1736a:	f4d1                	bnez	s1,172f6 <__sfvwrite_r+0x56>
   1736c:	a099                	j	173b2 <__sfvwrite_r+0x112>
   1736e:	85a2                	mv	a1,s0
   17370:	854a                	mv	a0,s2
   17372:	d71fa0ef          	jal	ra,120e2 <__swsetup_r>
   17376:	57fd                	li	a5,-1
   17378:	d125                	beqz	a0,172d8 <__sfvwrite_r+0x38>
   1737a:	a82d                	j	173b4 <__sfvwrite_r+0x114>
   1737c:	0009ba83          	ld	s5,0(s3)
   17380:	0089b483          	ld	s1,8(s3)
   17384:	09c1                	addi	s3,s3,16
   17386:	d8fd                	beqz	s1,1737c <__sfvwrite_r+0xdc>
   17388:	86a6                	mv	a3,s1
   1738a:	009b7363          	bleu	s1,s6,17390 <__sfvwrite_r+0xf0>
   1738e:	86da                	mv	a3,s6
   17390:	603c                	ld	a5,64(s0)
   17392:	780c                	ld	a1,48(s0)
   17394:	2681                	sext.w	a3,a3
   17396:	8656                	mv	a2,s5
   17398:	854a                	mv	a0,s2
   1739a:	9782                	jalr	a5
   1739c:	0aa05463          	blez	a0,17444 <__sfvwrite_r+0x1a4>
   173a0:	010a3783          	ld	a5,16(s4)
   173a4:	9aaa                	add	s5,s5,a0
   173a6:	8c89                	sub	s1,s1,a0
   173a8:	40a78533          	sub	a0,a5,a0
   173ac:	00aa3823          	sd	a0,16(s4)
   173b0:	f979                	bnez	a0,17386 <__sfvwrite_r+0xe6>
   173b2:	4781                	li	a5,0
   173b4:	70e6                	ld	ra,120(sp)
   173b6:	7446                	ld	s0,112(sp)
   173b8:	74a6                	ld	s1,104(sp)
   173ba:	7906                	ld	s2,96(sp)
   173bc:	69e6                	ld	s3,88(sp)
   173be:	6a46                	ld	s4,80(sp)
   173c0:	6aa6                	ld	s5,72(sp)
   173c2:	6b06                	ld	s6,64(sp)
   173c4:	7be2                	ld	s7,56(sp)
   173c6:	7c42                	ld	s8,48(sp)
   173c8:	7ca2                	ld	s9,40(sp)
   173ca:	7d02                	ld	s10,32(sp)
   173cc:	6de2                	ld	s11,24(sp)
   173ce:	853e                	mv	a0,a5
   173d0:	6109                	addi	sp,sp,128
   173d2:	8082                	ret
   173d4:	80000b37          	lui	s6,0x80000
   173d8:	4a81                	li	s5,0
   173da:	4481                	li	s1,0
   173dc:	c00b4b13          	xori	s6,s6,-1024
   173e0:	b75d                	j	17386 <__sfvwrite_r+0xe6>
   173e2:	0009ba83          	ld	s5,0(s3)
   173e6:	0089bd03          	ld	s10,8(s3)
   173ea:	09c1                	addi	s3,s3,16
   173ec:	4444                	lw	s1,12(s0)
   173ee:	87a6                	mv	a5,s1
   173f0:	fe0d09e3          	beqz	s10,173e2 <__sfvwrite_r+0x142>
   173f4:	01045703          	lhu	a4,16(s0)
   173f8:	6008                	ld	a0,0(s0)
   173fa:	20077693          	andi	a3,a4,512
   173fe:	0e068863          	beqz	a3,174ee <__sfvwrite_r+0x24e>
   17402:	089d6963          	bltu	s10,s1,17494 <__sfvwrite_r+0x1f4>
   17406:	48077693          	andi	a3,a4,1152
   1740a:	c6c9                	beqz	a3,17494 <__sfvwrite_r+0x1f4>
   1740c:	5004                	lw	s1,32(s0)
   1740e:	6c0c                	ld	a1,24(s0)
   17410:	029c04bb          	mulw	s1,s8,s1
   17414:	8d0d                	sub	a0,a0,a1
   17416:	00050d9b          	sext.w	s11,a0
   1741a:	001d8793          	addi	a5,s11,1
   1741e:	97ea                	add	a5,a5,s10
   17420:	0394c4bb          	divw	s1,s1,s9
   17424:	00f4f563          	bleu	a5,s1,1742e <__sfvwrite_r+0x18e>
   17428:	2505                	addiw	a0,a0,1
   1742a:	01a504bb          	addw	s1,a0,s10
   1742e:	40077713          	andi	a4,a4,1024
   17432:	cf49                	beqz	a4,174cc <__sfvwrite_r+0x22c>
   17434:	85a6                	mv	a1,s1
   17436:	854a                	mv	a0,s2
   17438:	854f90ef          	jal	ra,1048c <_malloc_r>
   1743c:	e515                	bnez	a0,17468 <__sfvwrite_r+0x1c8>
   1743e:	47b1                	li	a5,12
   17440:	00f92023          	sw	a5,0(s2)
   17444:	01045783          	lhu	a5,16(s0)
   17448:	0407e793          	ori	a5,a5,64
   1744c:	00f41823          	sh	a5,16(s0)
   17450:	57fd                	li	a5,-1
   17452:	b78d                	j	173b4 <__sfvwrite_r+0x114>
   17454:	80000b37          	lui	s6,0x80000
   17458:	ffeb4b93          	xori	s7,s6,-2
   1745c:	4d01                	li	s10,0
   1745e:	fffb4b13          	not	s6,s6
   17462:	4c0d                	li	s8,3
   17464:	4c89                	li	s9,2
   17466:	b759                	j	173ec <__sfvwrite_r+0x14c>
   17468:	6c0c                	ld	a1,24(s0)
   1746a:	866e                	mv	a2,s11
   1746c:	e42a                	sd	a0,8(sp)
   1746e:	178000ef          	jal	ra,175e6 <memcpy>
   17472:	01045703          	lhu	a4,16(s0)
   17476:	67a2                	ld	a5,8(sp)
   17478:	b7f77713          	andi	a4,a4,-1153
   1747c:	08076713          	ori	a4,a4,128
   17480:	00e41823          	sh	a4,16(s0)
   17484:	ec1c                	sd	a5,24(s0)
   17486:	d004                	sw	s1,32(s0)
   17488:	97ee                	add	a5,a5,s11
   1748a:	41b484bb          	subw	s1,s1,s11
   1748e:	e01c                	sd	a5,0(s0)
   17490:	c444                	sw	s1,12(s0)
   17492:	87ea                	mv	a5,s10
   17494:	84ea                	mv	s1,s10
   17496:	00fd7363          	bleu	a5,s10,1749c <__sfvwrite_r+0x1fc>
   1749a:	87ea                	mv	a5,s10
   1749c:	6008                	ld	a0,0(s0)
   1749e:	863e                	mv	a2,a5
   174a0:	85d6                	mv	a1,s5
   174a2:	e43e                	sd	a5,8(sp)
   174a4:	200000ef          	jal	ra,176a4 <memmove>
   174a8:	4458                	lw	a4,12(s0)
   174aa:	67a2                	ld	a5,8(sp)
   174ac:	9f1d                	subw	a4,a4,a5
   174ae:	c458                	sw	a4,12(s0)
   174b0:	6018                	ld	a4,0(s0)
   174b2:	97ba                	add	a5,a5,a4
   174b4:	e01c                	sd	a5,0(s0)
   174b6:	010a3783          	ld	a5,16(s4)
   174ba:	9aa6                	add	s5,s5,s1
   174bc:	409d0d33          	sub	s10,s10,s1
   174c0:	409784b3          	sub	s1,a5,s1
   174c4:	009a3823          	sd	s1,16(s4)
   174c8:	f095                	bnez	s1,173ec <__sfvwrite_r+0x14c>
   174ca:	b5e5                	j	173b2 <__sfvwrite_r+0x112>
   174cc:	8626                	mv	a2,s1
   174ce:	854a                	mv	a0,s2
   174d0:	242000ef          	jal	ra,17712 <_realloc_r>
   174d4:	87aa                	mv	a5,a0
   174d6:	f55d                	bnez	a0,17484 <__sfvwrite_r+0x1e4>
   174d8:	6c0c                	ld	a1,24(s0)
   174da:	854a                	mv	a0,s2
   174dc:	a3cfb0ef          	jal	ra,12718 <_free_r>
   174e0:	01045783          	lhu	a5,16(s0)
   174e4:	f7f7f793          	andi	a5,a5,-129
   174e8:	00f41823          	sh	a5,16(s0)
   174ec:	bf89                	j	1743e <__sfvwrite_r+0x19e>
   174ee:	6c1c                	ld	a5,24(s0)
   174f0:	00a7e563          	bltu	a5,a0,174fa <__sfvwrite_r+0x25a>
   174f4:	5014                	lw	a3,32(s0)
   174f6:	02dd7763          	bleu	a3,s10,17524 <__sfvwrite_r+0x284>
   174fa:	009d7363          	bleu	s1,s10,17500 <__sfvwrite_r+0x260>
   174fe:	84ea                	mv	s1,s10
   17500:	8626                	mv	a2,s1
   17502:	85d6                	mv	a1,s5
   17504:	1a0000ef          	jal	ra,176a4 <memmove>
   17508:	445c                	lw	a5,12(s0)
   1750a:	4097873b          	subw	a4,a5,s1
   1750e:	601c                	ld	a5,0(s0)
   17510:	c458                	sw	a4,12(s0)
   17512:	97a6                	add	a5,a5,s1
   17514:	e01c                	sd	a5,0(s0)
   17516:	f345                	bnez	a4,174b6 <__sfvwrite_r+0x216>
   17518:	85a2                	mv	a1,s0
   1751a:	854a                	mv	a0,s2
   1751c:	f15fa0ef          	jal	ra,12430 <_fflush_r>
   17520:	d959                	beqz	a0,174b6 <__sfvwrite_r+0x216>
   17522:	b70d                	j	17444 <__sfvwrite_r+0x1a4>
   17524:	87da                	mv	a5,s6
   17526:	01abe363          	bltu	s7,s10,1752c <__sfvwrite_r+0x28c>
   1752a:	87ea                	mv	a5,s10
   1752c:	02d7c7bb          	divw	a5,a5,a3
   17530:	6038                	ld	a4,64(s0)
   17532:	780c                	ld	a1,48(s0)
   17534:	8656                	mv	a2,s5
   17536:	854a                	mv	a0,s2
   17538:	02d786bb          	mulw	a3,a5,a3
   1753c:	9702                	jalr	a4
   1753e:	84aa                	mv	s1,a0
   17540:	f6a04be3          	bgtz	a0,174b6 <__sfvwrite_r+0x216>
   17544:	b701                	j	17444 <__sfvwrite_r+0x1a4>
   17546:	0009bb83          	ld	s7,0(s3)
   1754a:	0089bb03          	ld	s6,8(s3)
   1754e:	4501                	li	a0,0
   17550:	09c1                	addi	s3,s3,16
   17552:	b355                	j	172f6 <__sfvwrite_r+0x56>
   17554:	001b0a9b          	addiw	s5,s6,1
   17558:	bb65                	j	17310 <__sfvwrite_r+0x70>
   1755a:	00dc4b63          	blt	s8,a3,17570 <__sfvwrite_r+0x2d0>
   1755e:	603c                	ld	a5,64(s0)
   17560:	780c                	ld	a1,48(s0)
   17562:	865e                	mv	a2,s7
   17564:	854a                	mv	a0,s2
   17566:	9782                	jalr	a5
   17568:	84aa                	mv	s1,a0
   1756a:	dca04de3          	bgtz	a0,17344 <__sfvwrite_r+0xa4>
   1756e:	bdd9                	j	17444 <__sfvwrite_r+0x1a4>
   17570:	8662                	mv	a2,s8
   17572:	85de                	mv	a1,s7
   17574:	130000ef          	jal	ra,176a4 <memmove>
   17578:	445c                	lw	a5,12(s0)
   1757a:	84e2                	mv	s1,s8
   1757c:	418787bb          	subw	a5,a5,s8
   17580:	c45c                	sw	a5,12(s0)
   17582:	601c                	ld	a5,0(s0)
   17584:	97e2                	add	a5,a5,s8
   17586:	e01c                	sd	a5,0(s0)
   17588:	bb75                	j	17344 <__sfvwrite_r+0xa4>

000000000001758a <_isatty_r>:
   1758a:	1101                	addi	sp,sp,-32
   1758c:	e822                	sd	s0,16(sp)
   1758e:	e426                	sd	s1,8(sp)
   17590:	84aa                	mv	s1,a0
   17592:	852e                	mv	a0,a1
   17594:	ec06                	sd	ra,24(sp)
   17596:	8e01a823          	sw	zero,-1808(gp) # 1cbc8 <errno>
   1759a:	07e010ef          	jal	ra,18618 <_isatty>
   1759e:	57fd                	li	a5,-1
   175a0:	00f51663          	bne	a0,a5,175ac <_isatty_r+0x22>
   175a4:	8f01a783          	lw	a5,-1808(gp) # 1cbc8 <errno>
   175a8:	c391                	beqz	a5,175ac <_isatty_r+0x22>
   175aa:	c09c                	sw	a5,0(s1)
   175ac:	60e2                	ld	ra,24(sp)
   175ae:	6442                	ld	s0,16(sp)
   175b0:	64a2                	ld	s1,8(sp)
   175b2:	6105                	addi	sp,sp,32
   175b4:	8082                	ret

00000000000175b6 <_lseek_r>:
   175b6:	1101                	addi	sp,sp,-32
   175b8:	e822                	sd	s0,16(sp)
   175ba:	e426                	sd	s1,8(sp)
   175bc:	84aa                	mv	s1,a0
   175be:	852e                	mv	a0,a1
   175c0:	85b2                	mv	a1,a2
   175c2:	8636                	mv	a2,a3
   175c4:	ec06                	sd	ra,24(sp)
   175c6:	8e01a823          	sw	zero,-1808(gp) # 1cbc8 <errno>
   175ca:	06c010ef          	jal	ra,18636 <_lseek>
   175ce:	57fd                	li	a5,-1
   175d0:	00f51663          	bne	a0,a5,175dc <_lseek_r+0x26>
   175d4:	8f01a783          	lw	a5,-1808(gp) # 1cbc8 <errno>
   175d8:	c391                	beqz	a5,175dc <_lseek_r+0x26>
   175da:	c09c                	sw	a5,0(s1)
   175dc:	60e2                	ld	ra,24(sp)
   175de:	6442                	ld	s0,16(sp)
   175e0:	64a2                	ld	s1,8(sp)
   175e2:	6105                	addi	sp,sp,32
   175e4:	8082                	ret

00000000000175e6 <memcpy>:
   175e6:	00a5c7b3          	xor	a5,a1,a0
   175ea:	8b9d                	andi	a5,a5,7
   175ec:	00c50733          	add	a4,a0,a2
   175f0:	e781                	bnez	a5,175f8 <memcpy+0x12>
   175f2:	479d                	li	a5,7
   175f4:	00c7ef63          	bltu	a5,a2,17612 <memcpy+0x2c>
   175f8:	87aa                	mv	a5,a0
   175fa:	00e56963          	bltu	a0,a4,1760c <memcpy+0x26>
   175fe:	8082                	ret
   17600:	0005c683          	lbu	a3,0(a1)
   17604:	0785                	addi	a5,a5,1
   17606:	0585                	addi	a1,a1,1
   17608:	fed78fa3          	sb	a3,-1(a5) # 1fff <_start-0xe0b1>
   1760c:	fee7eae3          	bltu	a5,a4,17600 <memcpy+0x1a>
   17610:	8082                	ret
   17612:	00757793          	andi	a5,a0,7
   17616:	ebbd                	bnez	a5,1768c <memcpy+0xa6>
   17618:	87aa                	mv	a5,a0
   1761a:	ff877693          	andi	a3,a4,-8
   1761e:	fc068613          	addi	a2,a3,-64 # 1fc0 <_start-0xe0f0>
   17622:	06c7fc63          	bleu	a2,a5,1769a <memcpy+0xb4>
   17626:	0005b383          	ld	t2,0(a1)
   1762a:	0085b283          	ld	t0,8(a1)
   1762e:	0105bf83          	ld	t6,16(a1)
   17632:	0185bf03          	ld	t5,24(a1)
   17636:	0205be83          	ld	t4,32(a1)
   1763a:	0285be03          	ld	t3,40(a1)
   1763e:	0305b303          	ld	t1,48(a1)
   17642:	0385b883          	ld	a7,56(a1)
   17646:	04858593          	addi	a1,a1,72
   1764a:	04878793          	addi	a5,a5,72
   1764e:	ff85b803          	ld	a6,-8(a1)
   17652:	fa77bc23          	sd	t2,-72(a5)
   17656:	fc57b023          	sd	t0,-64(a5)
   1765a:	fdf7b423          	sd	t6,-56(a5)
   1765e:	fde7b823          	sd	t5,-48(a5)
   17662:	fdd7bc23          	sd	t4,-40(a5)
   17666:	ffc7b023          	sd	t3,-32(a5)
   1766a:	fe67b423          	sd	t1,-24(a5)
   1766e:	ff17b823          	sd	a7,-16(a5)
   17672:	ff07bc23          	sd	a6,-8(a5)
   17676:	b775                	j	17622 <memcpy+0x3c>
   17678:	0005c683          	lbu	a3,0(a1)
   1767c:	0785                	addi	a5,a5,1
   1767e:	0585                	addi	a1,a1,1
   17680:	fed78fa3          	sb	a3,-1(a5)
   17684:	0077f693          	andi	a3,a5,7
   17688:	fae5                	bnez	a3,17678 <memcpy+0x92>
   1768a:	bf41                	j	1761a <memcpy+0x34>
   1768c:	87aa                	mv	a5,a0
   1768e:	bfdd                	j	17684 <memcpy+0x9e>
   17690:	6190                	ld	a2,0(a1)
   17692:	07a1                	addi	a5,a5,8
   17694:	05a1                	addi	a1,a1,8
   17696:	fec7bc23          	sd	a2,-8(a5)
   1769a:	fed7ebe3          	bltu	a5,a3,17690 <memcpy+0xaa>
   1769e:	f6e7e7e3          	bltu	a5,a4,1760c <memcpy+0x26>
   176a2:	8082                	ret

00000000000176a4 <memmove>:
   176a4:	00c50733          	add	a4,a0,a2
   176a8:	00a5e663          	bltu	a1,a0,176b4 <memmove+0x10>
   176ac:	87aa                	mv	a5,a0
   176ae:	02e79363          	bne	a5,a4,176d4 <memmove+0x30>
   176b2:	8082                	ret
   176b4:	00c587b3          	add	a5,a1,a2
   176b8:	8e1d                	sub	a2,a2,a5
   176ba:	fef579e3          	bleu	a5,a0,176ac <memmove+0x8>
   176be:	00c786b3          	add	a3,a5,a2
   176c2:	e291                	bnez	a3,176c6 <memmove+0x22>
   176c4:	8082                	ret
   176c6:	17fd                	addi	a5,a5,-1
   176c8:	0007c683          	lbu	a3,0(a5)
   176cc:	177d                	addi	a4,a4,-1
   176ce:	00d70023          	sb	a3,0(a4)
   176d2:	b7f5                	j	176be <memmove+0x1a>
   176d4:	0585                	addi	a1,a1,1
   176d6:	fff5c683          	lbu	a3,-1(a1)
   176da:	0785                	addi	a5,a5,1
   176dc:	fed78fa3          	sb	a3,-1(a5)
   176e0:	b7f9                	j	176ae <memmove+0xa>

00000000000176e2 <_read_r>:
   176e2:	1101                	addi	sp,sp,-32
   176e4:	e822                	sd	s0,16(sp)
   176e6:	e426                	sd	s1,8(sp)
   176e8:	84aa                	mv	s1,a0
   176ea:	852e                	mv	a0,a1
   176ec:	85b2                	mv	a1,a2
   176ee:	8636                	mv	a2,a3
   176f0:	ec06                	sd	ra,24(sp)
   176f2:	8e01a823          	sw	zero,-1808(gp) # 1cbc8 <errno>
   176f6:	771000ef          	jal	ra,18666 <_read>
   176fa:	57fd                	li	a5,-1
   176fc:	00f51663          	bne	a0,a5,17708 <_read_r+0x26>
   17700:	8f01a783          	lw	a5,-1808(gp) # 1cbc8 <errno>
   17704:	c391                	beqz	a5,17708 <_read_r+0x26>
   17706:	c09c                	sw	a5,0(s1)
   17708:	60e2                	ld	ra,24(sp)
   1770a:	6442                	ld	s0,16(sp)
   1770c:	64a2                	ld	s1,8(sp)
   1770e:	6105                	addi	sp,sp,32
   17710:	8082                	ret

0000000000017712 <_realloc_r>:
   17712:	711d                	addi	sp,sp,-96
   17714:	e8a2                	sd	s0,80(sp)
   17716:	ec86                	sd	ra,88(sp)
   17718:	842e                	mv	s0,a1
   1771a:	e4a6                	sd	s1,72(sp)
   1771c:	e0ca                	sd	s2,64(sp)
   1771e:	fc4e                	sd	s3,56(sp)
   17720:	f852                	sd	s4,48(sp)
   17722:	f456                	sd	s5,40(sp)
   17724:	f05a                	sd	s6,32(sp)
   17726:	ec5e                	sd	s7,24(sp)
   17728:	e862                	sd	s8,16(sp)
   1772a:	85b2                	mv	a1,a2
   1772c:	ec11                	bnez	s0,17748 <_realloc_r+0x36>
   1772e:	6446                	ld	s0,80(sp)
   17730:	60e6                	ld	ra,88(sp)
   17732:	64a6                	ld	s1,72(sp)
   17734:	6906                	ld	s2,64(sp)
   17736:	79e2                	ld	s3,56(sp)
   17738:	7a42                	ld	s4,48(sp)
   1773a:	7aa2                	ld	s5,40(sp)
   1773c:	7b02                	ld	s6,32(sp)
   1773e:	6be2                	ld	s7,24(sp)
   17740:	6c42                	ld	s8,16(sp)
   17742:	6125                	addi	sp,sp,96
   17744:	d49f806f          	j	1048c <_malloc_r>
   17748:	8aaa                	mv	s5,a0
   1774a:	e432                	sd	a2,8(sp)
   1774c:	acaf90ef          	jal	ra,10a16 <__malloc_lock>
   17750:	65a2                	ld	a1,8(sp)
   17752:	ff843683          	ld	a3,-8(s0)
   17756:	02e00793          	li	a5,46
   1775a:	01758993          	addi	s3,a1,23
   1775e:	ff040b93          	addi	s7,s0,-16
   17762:	ffc6f913          	andi	s2,a3,-4
   17766:	0337fb63          	bleu	s3,a5,1779c <_realloc_r+0x8a>
   1776a:	800007b7          	lui	a5,0x80000
   1776e:	ff09fb13          	andi	s6,s3,-16
   17772:	fff7c793          	not	a5,a5
   17776:	0367f563          	bleu	s6,a5,177a0 <_realloc_r+0x8e>
   1777a:	47b1                	li	a5,12
   1777c:	00faa023          	sw	a5,0(s5)
   17780:	4a01                	li	s4,0
   17782:	60e6                	ld	ra,88(sp)
   17784:	6446                	ld	s0,80(sp)
   17786:	8552                	mv	a0,s4
   17788:	64a6                	ld	s1,72(sp)
   1778a:	6906                	ld	s2,64(sp)
   1778c:	79e2                	ld	s3,56(sp)
   1778e:	7a42                	ld	s4,48(sp)
   17790:	7aa2                	ld	s5,40(sp)
   17792:	7b02                	ld	s6,32(sp)
   17794:	6be2                	ld	s7,24(sp)
   17796:	6c42                	ld	s8,16(sp)
   17798:	6125                	addi	sp,sp,96
   1779a:	8082                	ret
   1779c:	02000b13          	li	s6,32
   177a0:	fcbb6de3          	bltu	s6,a1,1777a <_realloc_r+0x68>
   177a4:	33695163          	ble	s6,s2,17ac6 <_realloc_r+0x3b4>
   177a8:	6c71                	lui	s8,0x1c
   177aa:	120c0713          	addi	a4,s8,288 # 1c120 <__malloc_av_>
   177ae:	6b10                	ld	a2,16(a4)
   177b0:	012b87b3          	add	a5,s7,s2
   177b4:	6798                	ld	a4,8(a5)
   177b6:	120c0c13          	addi	s8,s8,288
   177ba:	00f60863          	beq	a2,a5,177ca <_realloc_r+0xb8>
   177be:	ffe77513          	andi	a0,a4,-2
   177c2:	953e                	add	a0,a0,a5
   177c4:	6508                	ld	a0,8(a0)
   177c6:	8905                	andi	a0,a0,1
   177c8:	e559                	bnez	a0,17856 <_realloc_r+0x144>
   177ca:	9b71                	andi	a4,a4,-4
   177cc:	00e909b3          	add	s3,s2,a4
   177d0:	02f61c63          	bne	a2,a5,17808 <_realloc_r+0xf6>
   177d4:	020b0513          	addi	a0,s6,32 # ffffffff80000020 <__global_pointer$+0xffffffff7ffe2d48>
   177d8:	08a9c163          	blt	s3,a0,1785a <_realloc_r+0x148>
   177dc:	9bda                	add	s7,s7,s6
   177de:	416989b3          	sub	s3,s3,s6
   177e2:	017c3823          	sd	s7,16(s8)
   177e6:	0019e993          	ori	s3,s3,1
   177ea:	013bb423          	sd	s3,8(s7)
   177ee:	ff843983          	ld	s3,-8(s0)
   177f2:	8556                	mv	a0,s5
   177f4:	8a22                	mv	s4,s0
   177f6:	0019f993          	andi	s3,s3,1
   177fa:	0169e9b3          	or	s3,s3,s6
   177fe:	ff343c23          	sd	s3,-8(s0)
   17802:	a16f90ef          	jal	ra,10a18 <__malloc_unlock>
   17806:	bfb5                	j	17782 <_realloc_r+0x70>
   17808:	0569c963          	blt	s3,s6,1785a <_realloc_r+0x148>
   1780c:	6f98                	ld	a4,24(a5)
   1780e:	6b9c                	ld	a5,16(a5)
   17810:	ef98                	sd	a4,24(a5)
   17812:	eb1c                	sd	a5,16(a4)
   17814:	008bb703          	ld	a4,8(s7)
   17818:	416986b3          	sub	a3,s3,s6
   1781c:	467d                	li	a2,31
   1781e:	8b05                	andi	a4,a4,1
   17820:	013b87b3          	add	a5,s7,s3
   17824:	2ad67363          	bleu	a3,a2,17aca <_realloc_r+0x3b8>
   17828:	00eb69b3          	or	s3,s6,a4
   1782c:	013bb423          	sd	s3,8(s7)
   17830:	016b85b3          	add	a1,s7,s6
   17834:	0016e693          	ori	a3,a3,1
   17838:	e594                	sd	a3,8(a1)
   1783a:	6798                	ld	a4,8(a5)
   1783c:	05c1                	addi	a1,a1,16
   1783e:	8556                	mv	a0,s5
   17840:	00176713          	ori	a4,a4,1
   17844:	e798                	sd	a4,8(a5)
   17846:	ed3fa0ef          	jal	ra,12718 <_free_r>
   1784a:	8556                	mv	a0,s5
   1784c:	9ccf90ef          	jal	ra,10a18 <__malloc_unlock>
   17850:	010b8a13          	addi	s4,s7,16
   17854:	b73d                	j	17782 <_realloc_r+0x70>
   17856:	4701                	li	a4,0
   17858:	4781                	li	a5,0
   1785a:	8a85                	andi	a3,a3,1
   1785c:	1c069563          	bnez	a3,17a26 <_realloc_r+0x314>
   17860:	ff043483          	ld	s1,-16(s0)
   17864:	409b84b3          	sub	s1,s7,s1
   17868:	0084ba03          	ld	s4,8(s1)
   1786c:	ffca7a13          	andi	s4,s4,-4
   17870:	9a4a                	add	s4,s4,s2
   17872:	12078c63          	beqz	a5,179aa <_realloc_r+0x298>
   17876:	014709b3          	add	s3,a4,s4
   1787a:	0af61663          	bne	a2,a5,17926 <_realloc_r+0x214>
   1787e:	020b0793          	addi	a5,s6,32
   17882:	12f9c463          	blt	s3,a5,179aa <_realloc_r+0x298>
   17886:	6898                	ld	a4,16(s1)
   17888:	6c9c                	ld	a5,24(s1)
   1788a:	ff890613          	addi	a2,s2,-8
   1788e:	01048a13          	addi	s4,s1,16
   17892:	ef1c                	sd	a5,24(a4)
   17894:	eb98                	sd	a4,16(a5)
   17896:	04800713          	li	a4,72
   1789a:	08c76163          	bltu	a4,a2,1791c <_realloc_r+0x20a>
   1789e:	02700693          	li	a3,39
   178a2:	87d2                	mv	a5,s4
   178a4:	00c6fd63          	bleu	a2,a3,178be <_realloc_r+0x1ac>
   178a8:	601c                	ld	a5,0(s0)
   178aa:	e89c                	sd	a5,16(s1)
   178ac:	641c                	ld	a5,8(s0)
   178ae:	ec9c                	sd	a5,24(s1)
   178b0:	03700793          	li	a5,55
   178b4:	02c7ef63          	bltu	a5,a2,178f2 <_realloc_r+0x1e0>
   178b8:	0441                	addi	s0,s0,16
   178ba:	02048793          	addi	a5,s1,32
   178be:	6018                	ld	a4,0(s0)
   178c0:	e398                	sd	a4,0(a5)
   178c2:	6418                	ld	a4,8(s0)
   178c4:	e798                	sd	a4,8(a5)
   178c6:	6818                	ld	a4,16(s0)
   178c8:	eb98                	sd	a4,16(a5)
   178ca:	016487b3          	add	a5,s1,s6
   178ce:	416989b3          	sub	s3,s3,s6
   178d2:	00fc3823          	sd	a5,16(s8)
   178d6:	0019e993          	ori	s3,s3,1
   178da:	0137b423          	sd	s3,8(a5) # ffffffff80000008 <__global_pointer$+0xffffffff7ffe2d30>
   178de:	649c                	ld	a5,8(s1)
   178e0:	8b85                	andi	a5,a5,1
   178e2:	0167e9b3          	or	s3,a5,s6
   178e6:	0134b423          	sd	s3,8(s1)
   178ea:	8556                	mv	a0,s5
   178ec:	92cf90ef          	jal	ra,10a18 <__malloc_unlock>
   178f0:	bd49                	j	17782 <_realloc_r+0x70>
   178f2:	681c                	ld	a5,16(s0)
   178f4:	f09c                	sd	a5,32(s1)
   178f6:	6c1c                	ld	a5,24(s0)
   178f8:	f49c                	sd	a5,40(s1)
   178fa:	00e60763          	beq	a2,a4,17908 <_realloc_r+0x1f6>
   178fe:	02040413          	addi	s0,s0,32
   17902:	03048793          	addi	a5,s1,48
   17906:	bf65                	j	178be <_realloc_r+0x1ac>
   17908:	701c                	ld	a5,32(s0)
   1790a:	03040413          	addi	s0,s0,48
   1790e:	f89c                	sd	a5,48(s1)
   17910:	ff843703          	ld	a4,-8(s0)
   17914:	04048793          	addi	a5,s1,64
   17918:	fc98                	sd	a4,56(s1)
   1791a:	b755                	j	178be <_realloc_r+0x1ac>
   1791c:	85a2                	mv	a1,s0
   1791e:	8552                	mv	a0,s4
   17920:	d85ff0ef          	jal	ra,176a4 <memmove>
   17924:	b75d                	j	178ca <_realloc_r+0x1b8>
   17926:	0969c263          	blt	s3,s6,179aa <_realloc_r+0x298>
   1792a:	6f98                	ld	a4,24(a5)
   1792c:	6b9c                	ld	a5,16(a5)
   1792e:	ff890613          	addi	a2,s2,-8
   17932:	01048513          	addi	a0,s1,16
   17936:	ef98                	sd	a4,24(a5)
   17938:	eb1c                	sd	a5,16(a4)
   1793a:	6898                	ld	a4,16(s1)
   1793c:	6c9c                	ld	a5,24(s1)
   1793e:	ef1c                	sd	a5,24(a4)
   17940:	eb98                	sd	a4,16(a5)
   17942:	04800793          	li	a5,72
   17946:	04c7ee63          	bltu	a5,a2,179a2 <_realloc_r+0x290>
   1794a:	02700713          	li	a4,39
   1794e:	00c77d63          	bleu	a2,a4,17968 <_realloc_r+0x256>
   17952:	6018                	ld	a4,0(s0)
   17954:	e898                	sd	a4,16(s1)
   17956:	6418                	ld	a4,8(s0)
   17958:	ec98                	sd	a4,24(s1)
   1795a:	03700713          	li	a4,55
   1795e:	00c76d63          	bltu	a4,a2,17978 <_realloc_r+0x266>
   17962:	0441                	addi	s0,s0,16
   17964:	02048513          	addi	a0,s1,32
   17968:	601c                	ld	a5,0(s0)
   1796a:	e11c                	sd	a5,0(a0)
   1796c:	641c                	ld	a5,8(s0)
   1796e:	e51c                	sd	a5,8(a0)
   17970:	681c                	ld	a5,16(s0)
   17972:	e91c                	sd	a5,16(a0)
   17974:	8ba6                	mv	s7,s1
   17976:	bd79                	j	17814 <_realloc_r+0x102>
   17978:	6818                	ld	a4,16(s0)
   1797a:	f098                	sd	a4,32(s1)
   1797c:	6c18                	ld	a4,24(s0)
   1797e:	f498                	sd	a4,40(s1)
   17980:	00f60763          	beq	a2,a5,1798e <_realloc_r+0x27c>
   17984:	02040413          	addi	s0,s0,32
   17988:	03048513          	addi	a0,s1,48
   1798c:	bff1                	j	17968 <_realloc_r+0x256>
   1798e:	701c                	ld	a5,32(s0)
   17990:	04048513          	addi	a0,s1,64
   17994:	03040413          	addi	s0,s0,48
   17998:	f89c                	sd	a5,48(s1)
   1799a:	ff843783          	ld	a5,-8(s0)
   1799e:	fc9c                	sd	a5,56(s1)
   179a0:	b7e1                	j	17968 <_realloc_r+0x256>
   179a2:	85a2                	mv	a1,s0
   179a4:	d01ff0ef          	jal	ra,176a4 <memmove>
   179a8:	b7f1                	j	17974 <_realloc_r+0x262>
   179aa:	076a4e63          	blt	s4,s6,17a26 <_realloc_r+0x314>
   179ae:	6c9c                	ld	a5,24(s1)
   179b0:	6898                	ld	a4,16(s1)
   179b2:	ff890613          	addi	a2,s2,-8
   179b6:	01048513          	addi	a0,s1,16
   179ba:	ef1c                	sd	a5,24(a4)
   179bc:	eb98                	sd	a4,16(a5)
   179be:	04800793          	li	a5,72
   179c2:	04c7ee63          	bltu	a5,a2,17a1e <_realloc_r+0x30c>
   179c6:	02700713          	li	a4,39
   179ca:	00c77d63          	bleu	a2,a4,179e4 <_realloc_r+0x2d2>
   179ce:	6018                	ld	a4,0(s0)
   179d0:	e898                	sd	a4,16(s1)
   179d2:	6418                	ld	a4,8(s0)
   179d4:	ec98                	sd	a4,24(s1)
   179d6:	03700713          	li	a4,55
   179da:	00c76d63          	bltu	a4,a2,179f4 <_realloc_r+0x2e2>
   179de:	0441                	addi	s0,s0,16
   179e0:	02048513          	addi	a0,s1,32
   179e4:	601c                	ld	a5,0(s0)
   179e6:	e11c                	sd	a5,0(a0)
   179e8:	641c                	ld	a5,8(s0)
   179ea:	e51c                	sd	a5,8(a0)
   179ec:	681c                	ld	a5,16(s0)
   179ee:	e91c                	sd	a5,16(a0)
   179f0:	89d2                	mv	s3,s4
   179f2:	b749                	j	17974 <_realloc_r+0x262>
   179f4:	6818                	ld	a4,16(s0)
   179f6:	f098                	sd	a4,32(s1)
   179f8:	6c18                	ld	a4,24(s0)
   179fa:	f498                	sd	a4,40(s1)
   179fc:	00f60763          	beq	a2,a5,17a0a <_realloc_r+0x2f8>
   17a00:	02040413          	addi	s0,s0,32
   17a04:	03048513          	addi	a0,s1,48
   17a08:	bff1                	j	179e4 <_realloc_r+0x2d2>
   17a0a:	701c                	ld	a5,32(s0)
   17a0c:	04048513          	addi	a0,s1,64
   17a10:	03040413          	addi	s0,s0,48
   17a14:	f89c                	sd	a5,48(s1)
   17a16:	ff843783          	ld	a5,-8(s0)
   17a1a:	fc9c                	sd	a5,56(s1)
   17a1c:	b7e1                	j	179e4 <_realloc_r+0x2d2>
   17a1e:	85a2                	mv	a1,s0
   17a20:	c85ff0ef          	jal	ra,176a4 <memmove>
   17a24:	b7f1                	j	179f0 <_realloc_r+0x2de>
   17a26:	8556                	mv	a0,s5
   17a28:	a65f80ef          	jal	ra,1048c <_malloc_r>
   17a2c:	8a2a                	mv	s4,a0
   17a2e:	ea050ee3          	beqz	a0,178ea <_realloc_r+0x1d8>
   17a32:	ff843783          	ld	a5,-8(s0)
   17a36:	ff050713          	addi	a4,a0,-16
   17a3a:	9bf9                	andi	a5,a5,-2
   17a3c:	97de                	add	a5,a5,s7
   17a3e:	00e79863          	bne	a5,a4,17a4e <_realloc_r+0x33c>
   17a42:	ff853983          	ld	s3,-8(a0)
   17a46:	ffc9f993          	andi	s3,s3,-4
   17a4a:	99ca                	add	s3,s3,s2
   17a4c:	b3e1                	j	17814 <_realloc_r+0x102>
   17a4e:	ff890613          	addi	a2,s2,-8
   17a52:	04800793          	li	a5,72
   17a56:	06c7e463          	bltu	a5,a2,17abe <_realloc_r+0x3ac>
   17a5a:	02700713          	li	a4,39
   17a5e:	04c77d63          	bleu	a2,a4,17ab8 <_realloc_r+0x3a6>
   17a62:	6018                	ld	a4,0(s0)
   17a64:	e118                	sd	a4,0(a0)
   17a66:	6418                	ld	a4,8(s0)
   17a68:	e518                	sd	a4,8(a0)
   17a6a:	03700713          	li	a4,55
   17a6e:	02c76163          	bltu	a4,a2,17a90 <_realloc_r+0x37e>
   17a72:	01040713          	addi	a4,s0,16
   17a76:	01050793          	addi	a5,a0,16
   17a7a:	6314                	ld	a3,0(a4)
   17a7c:	e394                	sd	a3,0(a5)
   17a7e:	6714                	ld	a3,8(a4)
   17a80:	e794                	sd	a3,8(a5)
   17a82:	6b18                	ld	a4,16(a4)
   17a84:	eb98                	sd	a4,16(a5)
   17a86:	85a2                	mv	a1,s0
   17a88:	8556                	mv	a0,s5
   17a8a:	c8ffa0ef          	jal	ra,12718 <_free_r>
   17a8e:	bdb1                	j	178ea <_realloc_r+0x1d8>
   17a90:	6818                	ld	a4,16(s0)
   17a92:	e918                	sd	a4,16(a0)
   17a94:	6c18                	ld	a4,24(s0)
   17a96:	ed18                	sd	a4,24(a0)
   17a98:	00f60763          	beq	a2,a5,17aa6 <_realloc_r+0x394>
   17a9c:	02040713          	addi	a4,s0,32
   17aa0:	02050793          	addi	a5,a0,32
   17aa4:	bfd9                	j	17a7a <_realloc_r+0x368>
   17aa6:	701c                	ld	a5,32(s0)
   17aa8:	03040713          	addi	a4,s0,48
   17aac:	f11c                	sd	a5,32(a0)
   17aae:	7414                	ld	a3,40(s0)
   17ab0:	03050793          	addi	a5,a0,48
   17ab4:	f514                	sd	a3,40(a0)
   17ab6:	b7d1                	j	17a7a <_realloc_r+0x368>
   17ab8:	87aa                	mv	a5,a0
   17aba:	8722                	mv	a4,s0
   17abc:	bf7d                	j	17a7a <_realloc_r+0x368>
   17abe:	85a2                	mv	a1,s0
   17ac0:	be5ff0ef          	jal	ra,176a4 <memmove>
   17ac4:	b7c9                	j	17a86 <_realloc_r+0x374>
   17ac6:	89ca                	mv	s3,s2
   17ac8:	b3b1                	j	17814 <_realloc_r+0x102>
   17aca:	00e9e9b3          	or	s3,s3,a4
   17ace:	013bb423          	sd	s3,8(s7)
   17ad2:	6798                	ld	a4,8(a5)
   17ad4:	00176713          	ori	a4,a4,1
   17ad8:	e798                	sd	a4,8(a5)
   17ada:	bb85                	j	1784a <_realloc_r+0x138>

0000000000017adc <__ssprint_r>:
   17adc:	6a1c                	ld	a5,16(a2)
   17ade:	711d                	addi	sp,sp,-96
   17ae0:	fc4e                	sd	s3,56(sp)
   17ae2:	ec86                	sd	ra,88(sp)
   17ae4:	e8a2                	sd	s0,80(sp)
   17ae6:	e4a6                	sd	s1,72(sp)
   17ae8:	e0ca                	sd	s2,64(sp)
   17aea:	f852                	sd	s4,48(sp)
   17aec:	f456                	sd	s5,40(sp)
   17aee:	f05a                	sd	s6,32(sp)
   17af0:	ec5e                	sd	s7,24(sp)
   17af2:	e862                	sd	s8,16(sp)
   17af4:	e466                	sd	s9,8(sp)
   17af6:	e06a                	sd	s10,0(sp)
   17af8:	89b2                	mv	s3,a2
   17afa:	c7fd                	beqz	a5,17be8 <__ssprint_r+0x10c>
   17afc:	00063b03          	ld	s6,0(a2)
   17b00:	8a2a                	mv	s4,a0
   17b02:	842e                	mv	s0,a1
   17b04:	4a81                	li	s5,0
   17b06:	4901                	li	s2,0
   17b08:	4b8d                	li	s7,3
   17b0a:	4c09                	li	s8,2
   17b0c:	06090663          	beqz	s2,17b78 <__ssprint_r+0x9c>
   17b10:	00c42d03          	lw	s10,12(s0)
   17b14:	09a96f63          	bltu	s2,s10,17bb2 <__ssprint_r+0xd6>
   17b18:	01045703          	lhu	a4,16(s0)
   17b1c:	48077793          	andi	a5,a4,1152
   17b20:	cbc9                	beqz	a5,17bb2 <__ssprint_r+0xd6>
   17b22:	5004                	lw	s1,32(s0)
   17b24:	6c0c                	ld	a1,24(s0)
   17b26:	601c                	ld	a5,0(s0)
   17b28:	029b84bb          	mulw	s1,s7,s1
   17b2c:	8f8d                	sub	a5,a5,a1
   17b2e:	00078c9b          	sext.w	s9,a5
   17b32:	001c8693          	addi	a3,s9,1
   17b36:	96ca                	add	a3,a3,s2
   17b38:	0384c4bb          	divw	s1,s1,s8
   17b3c:	00d4f663          	bleu	a3,s1,17b48 <__ssprint_r+0x6c>
   17b40:	0017849b          	addiw	s1,a5,1
   17b44:	012484bb          	addw	s1,s1,s2
   17b48:	40077713          	andi	a4,a4,1024
   17b4c:	cf5d                	beqz	a4,17c0a <__ssprint_r+0x12e>
   17b4e:	85a6                	mv	a1,s1
   17b50:	8552                	mv	a0,s4
   17b52:	93bf80ef          	jal	ra,1048c <_malloc_r>
   17b56:	8d2a                	mv	s10,a0
   17b58:	e515                	bnez	a0,17b84 <__ssprint_r+0xa8>
   17b5a:	47b1                	li	a5,12
   17b5c:	00fa2023          	sw	a5,0(s4)
   17b60:	01045783          	lhu	a5,16(s0)
   17b64:	557d                	li	a0,-1
   17b66:	0407e793          	ori	a5,a5,64
   17b6a:	00f41823          	sh	a5,16(s0)
   17b6e:	0009b823          	sd	zero,16(s3)
   17b72:	0009a423          	sw	zero,8(s3)
   17b76:	a8a5                	j	17bee <__ssprint_r+0x112>
   17b78:	000b3a83          	ld	s5,0(s6)
   17b7c:	008b3903          	ld	s2,8(s6)
   17b80:	0b41                	addi	s6,s6,16
   17b82:	b769                	j	17b0c <__ssprint_r+0x30>
   17b84:	6c0c                	ld	a1,24(s0)
   17b86:	8666                	mv	a2,s9
   17b88:	a5fff0ef          	jal	ra,175e6 <memcpy>
   17b8c:	01045783          	lhu	a5,16(s0)
   17b90:	b7f7f793          	andi	a5,a5,-1153
   17b94:	0807e793          	ori	a5,a5,128
   17b98:	00f41823          	sh	a5,16(s0)
   17b9c:	01a43c23          	sd	s10,24(s0)
   17ba0:	d004                	sw	s1,32(s0)
   17ba2:	9d66                	add	s10,s10,s9
   17ba4:	419484bb          	subw	s1,s1,s9
   17ba8:	01a43023          	sd	s10,0(s0)
   17bac:	c444                	sw	s1,12(s0)
   17bae:	00090d1b          	sext.w	s10,s2
   17bb2:	0009049b          	sext.w	s1,s2
   17bb6:	01a97363          	bleu	s10,s2,17bbc <__ssprint_r+0xe0>
   17bba:	8d26                	mv	s10,s1
   17bbc:	6008                	ld	a0,0(s0)
   17bbe:	866a                	mv	a2,s10
   17bc0:	85d6                	mv	a1,s5
   17bc2:	ae3ff0ef          	jal	ra,176a4 <memmove>
   17bc6:	445c                	lw	a5,12(s0)
   17bc8:	9aa6                	add	s5,s5,s1
   17bca:	40990933          	sub	s2,s2,s1
   17bce:	41a787bb          	subw	a5,a5,s10
   17bd2:	c45c                	sw	a5,12(s0)
   17bd4:	601c                	ld	a5,0(s0)
   17bd6:	9d3e                	add	s10,s10,a5
   17bd8:	0109b783          	ld	a5,16(s3)
   17bdc:	01a43023          	sd	s10,0(s0)
   17be0:	8f85                	sub	a5,a5,s1
   17be2:	00f9b823          	sd	a5,16(s3)
   17be6:	f39d                	bnez	a5,17b0c <__ssprint_r+0x30>
   17be8:	0009a423          	sw	zero,8(s3)
   17bec:	4501                	li	a0,0
   17bee:	60e6                	ld	ra,88(sp)
   17bf0:	6446                	ld	s0,80(sp)
   17bf2:	64a6                	ld	s1,72(sp)
   17bf4:	6906                	ld	s2,64(sp)
   17bf6:	79e2                	ld	s3,56(sp)
   17bf8:	7a42                	ld	s4,48(sp)
   17bfa:	7aa2                	ld	s5,40(sp)
   17bfc:	7b02                	ld	s6,32(sp)
   17bfe:	6be2                	ld	s7,24(sp)
   17c00:	6c42                	ld	s8,16(sp)
   17c02:	6ca2                	ld	s9,8(sp)
   17c04:	6d02                	ld	s10,0(sp)
   17c06:	6125                	addi	sp,sp,96
   17c08:	8082                	ret
   17c0a:	8626                	mv	a2,s1
   17c0c:	8552                	mv	a0,s4
   17c0e:	b05ff0ef          	jal	ra,17712 <_realloc_r>
   17c12:	8d2a                	mv	s10,a0
   17c14:	f541                	bnez	a0,17b9c <__ssprint_r+0xc0>
   17c16:	6c0c                	ld	a1,24(s0)
   17c18:	8552                	mv	a0,s4
   17c1a:	afffa0ef          	jal	ra,12718 <_free_r>
   17c1e:	bf35                	j	17b5a <__ssprint_r+0x7e>

0000000000017c20 <_svfiprintf_r>:
   17c20:	0105d783          	lhu	a5,16(a1)
   17c24:	7141                	addi	sp,sp,-496
   17c26:	efa6                	sd	s1,472(sp)
   17c28:	ebca                	sd	s2,464(sp)
   17c2a:	e7ce                	sd	s3,456(sp)
   17c2c:	ff56                	sd	s5,440(sp)
   17c2e:	f786                	sd	ra,488(sp)
   17c30:	f3a2                	sd	s0,480(sp)
   17c32:	e3d2                	sd	s4,448(sp)
   17c34:	fb5a                	sd	s6,432(sp)
   17c36:	f75e                	sd	s7,424(sp)
   17c38:	f362                	sd	s8,416(sp)
   17c3a:	ef66                	sd	s9,408(sp)
   17c3c:	eb6a                	sd	s10,400(sp)
   17c3e:	e76e                	sd	s11,392(sp)
   17c40:	0807f793          	andi	a5,a5,128
   17c44:	892a                	mv	s2,a0
   17c46:	84ae                	mv	s1,a1
   17c48:	8ab2                	mv	s5,a2
   17c4a:	89b6                	mv	s3,a3
   17c4c:	c395                	beqz	a5,17c70 <_svfiprintf_r+0x50>
   17c4e:	6d9c                	ld	a5,24(a1)
   17c50:	e385                	bnez	a5,17c70 <_svfiprintf_r+0x50>
   17c52:	04000593          	li	a1,64
   17c56:	837f80ef          	jal	ra,1048c <_malloc_r>
   17c5a:	e088                	sd	a0,0(s1)
   17c5c:	ec88                	sd	a0,24(s1)
   17c5e:	e511                	bnez	a0,17c6a <_svfiprintf_r+0x4a>
   17c60:	47b1                	li	a5,12
   17c62:	00f92023          	sw	a5,0(s2)
   17c66:	5bfd                	li	s7,-1
   17c68:	a779                	j	183f6 <_svfiprintf_r+0x7d6>
   17c6a:	04000793          	li	a5,64
   17c6e:	d09c                	sw	a5,32(s1)
   17c70:	67e9                	lui	a5,0x1a
   17c72:	6f078793          	addi	a5,a5,1776 # 1a6f0 <_ctype_+0x108>
   17c76:	e8be                	sd	a5,80(sp)
   17c78:	67ed                	lui	a5,0x1b
   17c7a:	87078793          	addi	a5,a5,-1936 # 1a870 <zeroes.4403>
   17c7e:	f43e                	sd	a5,40(sp)
   17c80:	67ed                	lui	a5,0x1b
   17c82:	10010b13          	addi	s6,sp,256
   17c86:	86078793          	addi	a5,a5,-1952 # 1a860 <blanks.4402>
   17c8a:	e15a                	sd	s6,128(sp)
   17c8c:	e902                	sd	zero,144(sp)
   17c8e:	c502                	sw	zero,136(sp)
   17c90:	8dda                	mv	s11,s6
   17c92:	f002                	sd	zero,32(sp)
   17c94:	e802                	sd	zero,16(sp)
   17c96:	ec02                	sd	zero,24(sp)
   17c98:	fc02                	sd	zero,56(sp)
   17c9a:	4b81                	li	s7,0
   17c9c:	f83e                	sd	a5,48(sp)
   17c9e:	8456                	mv	s0,s5
   17ca0:	02500693          	li	a3,37
   17ca4:	00044783          	lbu	a5,0(s0)
   17ca8:	c399                	beqz	a5,17cae <_svfiprintf_r+0x8e>
   17caa:	06d79e63          	bne	a5,a3,17d26 <_svfiprintf_r+0x106>
   17cae:	41540a3b          	subw	s4,s0,s5
   17cb2:	020a0b63          	beqz	s4,17ce8 <_svfiprintf_r+0xc8>
   17cb6:	67ca                	ld	a5,144(sp)
   17cb8:	015db023          	sd	s5,0(s11)
   17cbc:	014db423          	sd	s4,8(s11)
   17cc0:	97d2                	add	a5,a5,s4
   17cc2:	e93e                	sd	a5,144(sp)
   17cc4:	47aa                	lw	a5,136(sp)
   17cc6:	0dc1                	addi	s11,s11,16
   17cc8:	0017869b          	addiw	a3,a5,1
   17ccc:	c536                	sw	a3,136(sp)
   17cce:	479d                	li	a5,7
   17cd0:	00d7da63          	ble	a3,a5,17ce4 <_svfiprintf_r+0xc4>
   17cd4:	0110                	addi	a2,sp,128
   17cd6:	85a6                	mv	a1,s1
   17cd8:	854a                	mv	a0,s2
   17cda:	e03ff0ef          	jal	ra,17adc <__ssprint_r>
   17cde:	70051663          	bnez	a0,183ea <_svfiprintf_r+0x7ca>
   17ce2:	8dda                	mv	s11,s6
   17ce4:	014b8bbb          	addw	s7,s7,s4
   17ce8:	00044783          	lbu	a5,0(s0)
   17cec:	74078863          	beqz	a5,1843c <_svfiprintf_r+0x81c>
   17cf0:	00140693          	addi	a3,s0,1
   17cf4:	06010ba3          	sb	zero,119(sp)
   17cf8:	547d                	li	s0,-1
   17cfa:	4a01                	li	s4,0
   17cfc:	4d01                	li	s10,0
   17cfe:	05a00c93          	li	s9,90
   17d02:	4c29                	li	s8,10
   17d04:	00168a93          	addi	s5,a3,1
   17d08:	0006c683          	lbu	a3,0(a3)
   17d0c:	4525                	li	a0,9
   17d0e:	02a00813          	li	a6,42
   17d12:	fe06861b          	addiw	a2,a3,-32
   17d16:	60cce263          	bltu	s9,a2,1831a <_svfiprintf_r+0x6fa>
   17d1a:	67c6                	ld	a5,80(sp)
   17d1c:	1602                	slli	a2,a2,0x20
   17d1e:	8279                	srli	a2,a2,0x1e
   17d20:	963e                	add	a2,a2,a5
   17d22:	4210                	lw	a2,0(a2)
   17d24:	8602                	jr	a2
   17d26:	0405                	addi	s0,s0,1
   17d28:	bfb5                	j	17ca4 <_svfiprintf_r+0x84>
   17d2a:	0001a637          	lui	a2,0x1a
   17d2e:	ec860793          	addi	a5,a2,-312 # 19ec8 <zeroes.4441+0x78>
   17d32:	f03e                	sd	a5,32(sp)
   17d34:	00898793          	addi	a5,s3,8
   17d38:	e43e                	sd	a5,8(sp)
   17d3a:	020d7613          	andi	a2,s10,32
   17d3e:	4e060663          	beqz	a2,1822a <_svfiprintf_r+0x60a>
   17d42:	0009b983          	ld	s3,0(s3)
   17d46:	001d7613          	andi	a2,s10,1
   17d4a:	ca19                	beqz	a2,17d60 <_svfiprintf_r+0x140>
   17d4c:	00098a63          	beqz	s3,17d60 <_svfiprintf_r+0x140>
   17d50:	03000613          	li	a2,48
   17d54:	06c10c23          	sb	a2,120(sp)
   17d58:	06d10ca3          	sb	a3,121(sp)
   17d5c:	002d6d13          	ori	s10,s10,2
   17d60:	bffd7d13          	andi	s10,s10,-1025
   17d64:	a4ad                	j	17fce <_svfiprintf_r+0x3ae>
   17d66:	854a                	mv	a0,s2
   17d68:	b40fc0ef          	jal	ra,140a8 <_localeconv_r>
   17d6c:	651c                	ld	a5,8(a0)
   17d6e:	853e                	mv	a0,a5
   17d70:	fc3e                	sd	a5,56(sp)
   17d72:	af2fd0ef          	jal	ra,15064 <strlen>
   17d76:	ec2a                	sd	a0,24(sp)
   17d78:	854a                	mv	a0,s2
   17d7a:	b2efc0ef          	jal	ra,140a8 <_localeconv_r>
   17d7e:	691c                	ld	a5,16(a0)
   17d80:	e83e                	sd	a5,16(sp)
   17d82:	67e2                	ld	a5,24(sp)
   17d84:	cb81                	beqz	a5,17d94 <_svfiprintf_r+0x174>
   17d86:	67c2                	ld	a5,16(sp)
   17d88:	c791                	beqz	a5,17d94 <_svfiprintf_r+0x174>
   17d8a:	0007c683          	lbu	a3,0(a5)
   17d8e:	c299                	beqz	a3,17d94 <_svfiprintf_r+0x174>
   17d90:	400d6d13          	ori	s10,s10,1024
   17d94:	86d6                	mv	a3,s5
   17d96:	b7bd                	j	17d04 <_svfiprintf_r+0xe4>
   17d98:	07714683          	lbu	a3,119(sp)
   17d9c:	fee5                	bnez	a3,17d94 <_svfiprintf_r+0x174>
   17d9e:	02000693          	li	a3,32
   17da2:	06d10ba3          	sb	a3,119(sp)
   17da6:	b7fd                	j	17d94 <_svfiprintf_r+0x174>
   17da8:	001d6d13          	ori	s10,s10,1
   17dac:	b7e5                	j	17d94 <_svfiprintf_r+0x174>
   17dae:	0009aa03          	lw	s4,0(s3)
   17db2:	09a1                	addi	s3,s3,8
   17db4:	fe0a50e3          	bgez	s4,17d94 <_svfiprintf_r+0x174>
   17db8:	41400a3b          	negw	s4,s4
   17dbc:	004d6d13          	ori	s10,s10,4
   17dc0:	bfd1                	j	17d94 <_svfiprintf_r+0x174>
   17dc2:	02b00693          	li	a3,43
   17dc6:	bff1                	j	17da2 <_svfiprintf_r+0x182>
   17dc8:	000ac683          	lbu	a3,0(s5)
   17dcc:	001a8613          	addi	a2,s5,1
   17dd0:	03069963          	bne	a3,a6,17e02 <_svfiprintf_r+0x1e2>
   17dd4:	0009a403          	lw	s0,0(s3)
   17dd8:	00898693          	addi	a3,s3,8
   17ddc:	00045363          	bgez	s0,17de2 <_svfiprintf_r+0x1c2>
   17de0:	547d                	li	s0,-1
   17de2:	2401                	sext.w	s0,s0
   17de4:	89b6                	mv	s3,a3
   17de6:	8ab2                	mv	s5,a2
   17de8:	b775                	j	17d94 <_svfiprintf_r+0x174>
   17dea:	028c043b          	mulw	s0,s8,s0
   17dee:	0605                	addi	a2,a2,1
   17df0:	fff64683          	lbu	a3,-1(a2)
   17df4:	9c2d                	addw	s0,s0,a1
   17df6:	fd06859b          	addiw	a1,a3,-48
   17dfa:	feb578e3          	bleu	a1,a0,17dea <_svfiprintf_r+0x1ca>
   17dfe:	8ab2                	mv	s5,a2
   17e00:	bf09                	j	17d12 <_svfiprintf_r+0xf2>
   17e02:	4401                	li	s0,0
   17e04:	bfcd                	j	17df6 <_svfiprintf_r+0x1d6>
   17e06:	080d6d13          	ori	s10,s10,128
   17e0a:	b769                	j	17d94 <_svfiprintf_r+0x174>
   17e0c:	8656                	mv	a2,s5
   17e0e:	4a01                	li	s4,0
   17e10:	034c0a3b          	mulw	s4,s8,s4
   17e14:	fd06869b          	addiw	a3,a3,-48
   17e18:	0605                	addi	a2,a2,1
   17e1a:	01468a3b          	addw	s4,a3,s4
   17e1e:	fff64683          	lbu	a3,-1(a2)
   17e22:	fd06859b          	addiw	a1,a3,-48
   17e26:	feb575e3          	bleu	a1,a0,17e10 <_svfiprintf_r+0x1f0>
   17e2a:	bfd1                	j	17dfe <_svfiprintf_r+0x1de>
   17e2c:	000ac603          	lbu	a2,0(s5)
   17e30:	06800693          	li	a3,104
   17e34:	00d61663          	bne	a2,a3,17e40 <_svfiprintf_r+0x220>
   17e38:	0a85                	addi	s5,s5,1
   17e3a:	200d6d13          	ori	s10,s10,512
   17e3e:	bf99                	j	17d94 <_svfiprintf_r+0x174>
   17e40:	040d6d13          	ori	s10,s10,64
   17e44:	bf81                	j	17d94 <_svfiprintf_r+0x174>
   17e46:	000ac603          	lbu	a2,0(s5)
   17e4a:	06c00693          	li	a3,108
   17e4e:	00d61663          	bne	a2,a3,17e5a <_svfiprintf_r+0x23a>
   17e52:	0a85                	addi	s5,s5,1
   17e54:	020d6d13          	ori	s10,s10,32
   17e58:	bf35                	j	17d94 <_svfiprintf_r+0x174>
   17e5a:	010d6d13          	ori	s10,s10,16
   17e5e:	bf1d                	j	17d94 <_svfiprintf_r+0x174>
   17e60:	0009a683          	lw	a3,0(s3)
   17e64:	00898793          	addi	a5,s3,8
   17e68:	e43e                	sd	a5,8(sp)
   17e6a:	08d10c23          	sb	a3,152(sp)
   17e6e:	06010ba3          	sb	zero,119(sp)
   17e72:	4405                	li	s0,1
   17e74:	4981                	li	s3,0
   17e76:	09810c13          	addi	s8,sp,152
   17e7a:	aabd                	j	17ff8 <_svfiprintf_r+0x3d8>
   17e7c:	010d6d13          	ori	s10,s10,16
   17e80:	00898793          	addi	a5,s3,8
   17e84:	e43e                	sd	a5,8(sp)
   17e86:	020d7693          	andi	a3,s10,32
   17e8a:	ca85                	beqz	a3,17eba <_svfiprintf_r+0x29a>
   17e8c:	0009b983          	ld	s3,0(s3)
   17e90:	0009d863          	bgez	s3,17ea0 <_svfiprintf_r+0x280>
   17e94:	02d00693          	li	a3,45
   17e98:	413009b3          	neg	s3,s3
   17e9c:	06d10ba3          	sb	a3,119(sp)
   17ea0:	56fd                	li	a3,-1
   17ea2:	3ad41b63          	bne	s0,a3,18258 <_svfiprintf_r+0x638>
   17ea6:	46a5                	li	a3,9
   17ea8:	3d36e563          	bltu	a3,s3,18272 <_svfiprintf_r+0x652>
   17eac:	0309899b          	addiw	s3,s3,48
   17eb0:	0f310da3          	sb	s3,251(sp)
   17eb4:	0fb10c13          	addi	s8,sp,251
   17eb8:	a87d                	j	17f76 <_svfiprintf_r+0x356>
   17eba:	010d7693          	andi	a3,s10,16
   17ebe:	f6f9                	bnez	a3,17e8c <_svfiprintf_r+0x26c>
   17ec0:	040d7693          	andi	a3,s10,64
   17ec4:	c681                	beqz	a3,17ecc <_svfiprintf_r+0x2ac>
   17ec6:	00099983          	lh	s3,0(s3)
   17eca:	b7d9                	j	17e90 <_svfiprintf_r+0x270>
   17ecc:	200d7693          	andi	a3,s10,512
   17ed0:	c681                	beqz	a3,17ed8 <_svfiprintf_r+0x2b8>
   17ed2:	00098983          	lb	s3,0(s3)
   17ed6:	bf6d                	j	17e90 <_svfiprintf_r+0x270>
   17ed8:	0009a983          	lw	s3,0(s3)
   17edc:	bf55                	j	17e90 <_svfiprintf_r+0x270>
   17ede:	020d7613          	andi	a2,s10,32
   17ee2:	0009b683          	ld	a3,0(s3)
   17ee6:	09a1                	addi	s3,s3,8
   17ee8:	c601                	beqz	a2,17ef0 <_svfiprintf_r+0x2d0>
   17eea:	0176b023          	sd	s7,0(a3)
   17eee:	bb45                	j	17c9e <_svfiprintf_r+0x7e>
   17ef0:	010d7613          	andi	a2,s10,16
   17ef4:	fa7d                	bnez	a2,17eea <_svfiprintf_r+0x2ca>
   17ef6:	040d7613          	andi	a2,s10,64
   17efa:	c601                	beqz	a2,17f02 <_svfiprintf_r+0x2e2>
   17efc:	01769023          	sh	s7,0(a3)
   17f00:	bb79                	j	17c9e <_svfiprintf_r+0x7e>
   17f02:	200d7793          	andi	a5,s10,512
   17f06:	c781                	beqz	a5,17f0e <_svfiprintf_r+0x2ee>
   17f08:	01768023          	sb	s7,0(a3)
   17f0c:	bb49                	j	17c9e <_svfiprintf_r+0x7e>
   17f0e:	0176a023          	sw	s7,0(a3)
   17f12:	b371                	j	17c9e <_svfiprintf_r+0x7e>
   17f14:	010d6d13          	ori	s10,s10,16
   17f18:	00898793          	addi	a5,s3,8
   17f1c:	e43e                	sd	a5,8(sp)
   17f1e:	020d7693          	andi	a3,s10,32
   17f22:	ceb9                	beqz	a3,17f80 <_svfiprintf_r+0x360>
   17f24:	0009b983          	ld	s3,0(s3)
   17f28:	bffd7d13          	andi	s10,s10,-1025
   17f2c:	4601                	li	a2,0
   17f2e:	06010ba3          	sb	zero,119(sp)
   17f32:	56fd                	li	a3,-1
   17f34:	85ea                	mv	a1,s10
   17f36:	32d41363          	bne	s0,a3,1825c <_svfiprintf_r+0x63c>
   17f3a:	4685                	li	a3,1
   17f3c:	f6d605e3          	beq	a2,a3,17ea6 <_svfiprintf_r+0x286>
   17f40:	4689                	li	a3,2
   17f42:	3ad60063          	beq	a2,a3,182e2 <_svfiprintf_r+0x6c2>
   17f46:	19f0                	addi	a2,sp,252
   17f48:	0079f593          	andi	a1,s3,7
   17f4c:	03058593          	addi	a1,a1,48
   17f50:	feb60fa3          	sb	a1,-1(a2)
   17f54:	0039d993          	srli	s3,s3,0x3
   17f58:	fff60c13          	addi	s8,a2,-1
   17f5c:	30099963          	bnez	s3,1826e <_svfiprintf_r+0x64e>
   17f60:	001d7513          	andi	a0,s10,1
   17f64:	c909                	beqz	a0,17f76 <_svfiprintf_r+0x356>
   17f66:	03000513          	li	a0,48
   17f6a:	00a58663          	beq	a1,a0,17f76 <_svfiprintf_r+0x356>
   17f6e:	feac0fa3          	sb	a0,-1(s8)
   17f72:	ffe60c13          	addi	s8,a2,-2
   17f76:	89a2                	mv	s3,s0
   17f78:	19e0                	addi	s0,sp,252
   17f7a:	4184043b          	subw	s0,s0,s8
   17f7e:	a8ad                	j	17ff8 <_svfiprintf_r+0x3d8>
   17f80:	010d7693          	andi	a3,s10,16
   17f84:	f2c5                	bnez	a3,17f24 <_svfiprintf_r+0x304>
   17f86:	040d7693          	andi	a3,s10,64
   17f8a:	0009a983          	lw	s3,0(s3)
   17f8e:	c689                	beqz	a3,17f98 <_svfiprintf_r+0x378>
   17f90:	19c2                	slli	s3,s3,0x30
   17f92:	0309d993          	srli	s3,s3,0x30
   17f96:	bf49                	j	17f28 <_svfiprintf_r+0x308>
   17f98:	200d7693          	andi	a3,s10,512
   17f9c:	c681                	beqz	a3,17fa4 <_svfiprintf_r+0x384>
   17f9e:	0ff9f993          	andi	s3,s3,255
   17fa2:	b759                	j	17f28 <_svfiprintf_r+0x308>
   17fa4:	1982                	slli	s3,s3,0x20
   17fa6:	0209d993          	srli	s3,s3,0x20
   17faa:	bfbd                	j	17f28 <_svfiprintf_r+0x308>
   17fac:	76e1                	lui	a3,0xffff8
   17fae:	8306c693          	xori	a3,a3,-2000
   17fb2:	00898793          	addi	a5,s3,8
   17fb6:	06d11c23          	sh	a3,120(sp)
   17fba:	0009b983          	ld	s3,0(s3)
   17fbe:	0001a6b7          	lui	a3,0x1a
   17fc2:	e43e                	sd	a5,8(sp)
   17fc4:	eb068793          	addi	a5,a3,-336 # 19eb0 <zeroes.4441+0x60>
   17fc8:	002d6d13          	ori	s10,s10,2
   17fcc:	f03e                	sd	a5,32(sp)
   17fce:	4609                	li	a2,2
   17fd0:	bfb9                	j	17f2e <_svfiprintf_r+0x30e>
   17fd2:	00898793          	addi	a5,s3,8
   17fd6:	e43e                	sd	a5,8(sp)
   17fd8:	06010ba3          	sb	zero,119(sp)
   17fdc:	567d                	li	a2,-1
   17fde:	0009bc03          	ld	s8,0(s3)
   17fe2:	1ec40663          	beq	s0,a2,181ce <_svfiprintf_r+0x5ae>
   17fe6:	8622                	mv	a2,s0
   17fe8:	4581                	li	a1,0
   17fea:	8562                	mv	a0,s8
   17fec:	abefc0ef          	jal	ra,142aa <memchr>
   17ff0:	4981                	li	s3,0
   17ff2:	c119                	beqz	a0,17ff8 <_svfiprintf_r+0x3d8>
   17ff4:	4185043b          	subw	s0,a0,s8
   17ff8:	864e                	mv	a2,s3
   17ffa:	0089d363          	ble	s0,s3,18000 <_svfiprintf_r+0x3e0>
   17ffe:	8622                	mv	a2,s0
   18000:	07714583          	lbu	a1,119(sp)
   18004:	00060c9b          	sext.w	s9,a2
   18008:	c199                	beqz	a1,1800e <_svfiprintf_r+0x3ee>
   1800a:	00160c9b          	addiw	s9,a2,1
   1800e:	002d7613          	andi	a2,s10,2
   18012:	0006079b          	sext.w	a5,a2
   18016:	e0be                	sd	a5,64(sp)
   18018:	c391                	beqz	a5,1801c <_svfiprintf_r+0x3fc>
   1801a:	2c89                	addiw	s9,s9,2
   1801c:	084d7793          	andi	a5,s10,132
   18020:	e4be                	sd	a5,72(sp)
   18022:	e7a1                	bnez	a5,1806a <_svfiprintf_r+0x44a>
   18024:	419a083b          	subw	a6,s4,s9
   18028:	05005163          	blez	a6,1806a <_svfiprintf_r+0x44a>
   1802c:	4341                	li	t1,16
   1802e:	4e1d                	li	t3,7
   18030:	45aa                	lw	a1,136(sp)
   18032:	77c2                	ld	a5,48(sp)
   18034:	664a                	ld	a2,144(sp)
   18036:	0015851b          	addiw	a0,a1,1
   1803a:	00fdb023          	sd	a5,0(s11)
   1803e:	85aa                	mv	a1,a0
   18040:	010d8893          	addi	a7,s11,16
   18044:	2f034363          	blt	t1,a6,1832a <_svfiprintf_r+0x70a>
   18048:	010db423          	sd	a6,8(s11)
   1804c:	9832                	add	a6,a6,a2
   1804e:	e942                	sd	a6,144(sp)
   18050:	c52a                	sw	a0,136(sp)
   18052:	461d                	li	a2,7
   18054:	8dc6                	mv	s11,a7
   18056:	00a65a63          	ble	a0,a2,1806a <_svfiprintf_r+0x44a>
   1805a:	0110                	addi	a2,sp,128
   1805c:	85a6                	mv	a1,s1
   1805e:	854a                	mv	a0,s2
   18060:	a7dff0ef          	jal	ra,17adc <__ssprint_r>
   18064:	38051363          	bnez	a0,183ea <_svfiprintf_r+0x7ca>
   18068:	8dda                	mv	s11,s6
   1806a:	07714603          	lbu	a2,119(sp)
   1806e:	ca1d                	beqz	a2,180a4 <_svfiprintf_r+0x484>
   18070:	07710593          	addi	a1,sp,119
   18074:	00bdb023          	sd	a1,0(s11)
   18078:	4585                	li	a1,1
   1807a:	462a                	lw	a2,136(sp)
   1807c:	00bdb423          	sd	a1,8(s11)
   18080:	65ca                	ld	a1,144(sp)
   18082:	0016051b          	addiw	a0,a2,1
   18086:	c52a                	sw	a0,136(sp)
   18088:	0585                	addi	a1,a1,1
   1808a:	e92e                	sd	a1,144(sp)
   1808c:	461d                	li	a2,7
   1808e:	0dc1                	addi	s11,s11,16
   18090:	00a65a63          	ble	a0,a2,180a4 <_svfiprintf_r+0x484>
   18094:	0110                	addi	a2,sp,128
   18096:	85a6                	mv	a1,s1
   18098:	854a                	mv	a0,s2
   1809a:	a43ff0ef          	jal	ra,17adc <__ssprint_r>
   1809e:	34051663          	bnez	a0,183ea <_svfiprintf_r+0x7ca>
   180a2:	8dda                	mv	s11,s6
   180a4:	6786                	ld	a5,64(sp)
   180a6:	cb95                	beqz	a5,180da <_svfiprintf_r+0x4ba>
   180a8:	18ac                	addi	a1,sp,120
   180aa:	00bdb023          	sd	a1,0(s11)
   180ae:	4589                	li	a1,2
   180b0:	462a                	lw	a2,136(sp)
   180b2:	00bdb423          	sd	a1,8(s11)
   180b6:	65ca                	ld	a1,144(sp)
   180b8:	0016051b          	addiw	a0,a2,1
   180bc:	c52a                	sw	a0,136(sp)
   180be:	0589                	addi	a1,a1,2
   180c0:	e92e                	sd	a1,144(sp)
   180c2:	461d                	li	a2,7
   180c4:	0dc1                	addi	s11,s11,16
   180c6:	00a65a63          	ble	a0,a2,180da <_svfiprintf_r+0x4ba>
   180ca:	0110                	addi	a2,sp,128
   180cc:	85a6                	mv	a1,s1
   180ce:	854a                	mv	a0,s2
   180d0:	a0dff0ef          	jal	ra,17adc <__ssprint_r>
   180d4:	30051b63          	bnez	a0,183ea <_svfiprintf_r+0x7ca>
   180d8:	8dda                	mv	s11,s6
   180da:	67a6                	ld	a5,72(sp)
   180dc:	08000613          	li	a2,128
   180e0:	04c79563          	bne	a5,a2,1812a <_svfiprintf_r+0x50a>
   180e4:	419a083b          	subw	a6,s4,s9
   180e8:	05005163          	blez	a6,1812a <_svfiprintf_r+0x50a>
   180ec:	4341                	li	t1,16
   180ee:	4e1d                	li	t3,7
   180f0:	45aa                	lw	a1,136(sp)
   180f2:	77a2                	ld	a5,40(sp)
   180f4:	664a                	ld	a2,144(sp)
   180f6:	0015851b          	addiw	a0,a1,1
   180fa:	00fdb023          	sd	a5,0(s11)
   180fe:	85aa                	mv	a1,a0
   18100:	010d8893          	addi	a7,s11,16
   18104:	25034a63          	blt	t1,a6,18358 <_svfiprintf_r+0x738>
   18108:	010db423          	sd	a6,8(s11)
   1810c:	9832                	add	a6,a6,a2
   1810e:	e942                	sd	a6,144(sp)
   18110:	c52a                	sw	a0,136(sp)
   18112:	461d                	li	a2,7
   18114:	8dc6                	mv	s11,a7
   18116:	00a65a63          	ble	a0,a2,1812a <_svfiprintf_r+0x50a>
   1811a:	0110                	addi	a2,sp,128
   1811c:	85a6                	mv	a1,s1
   1811e:	854a                	mv	a0,s2
   18120:	9bdff0ef          	jal	ra,17adc <__ssprint_r>
   18124:	2c051363          	bnez	a0,183ea <_svfiprintf_r+0x7ca>
   18128:	8dda                	mv	s11,s6
   1812a:	408989bb          	subw	s3,s3,s0
   1812e:	05305163          	blez	s3,18170 <_svfiprintf_r+0x550>
   18132:	48c1                	li	a7,16
   18134:	431d                	li	t1,7
   18136:	45aa                	lw	a1,136(sp)
   18138:	77a2                	ld	a5,40(sp)
   1813a:	664a                	ld	a2,144(sp)
   1813c:	0015851b          	addiw	a0,a1,1
   18140:	00fdb023          	sd	a5,0(s11)
   18144:	85aa                	mv	a1,a0
   18146:	010d8813          	addi	a6,s11,16
   1814a:	2338ce63          	blt	a7,s3,18386 <_svfiprintf_r+0x766>
   1814e:	013db423          	sd	s3,8(s11)
   18152:	99b2                	add	s3,s3,a2
   18154:	e94e                	sd	s3,144(sp)
   18156:	c52a                	sw	a0,136(sp)
   18158:	461d                	li	a2,7
   1815a:	8dc2                	mv	s11,a6
   1815c:	00a65a63          	ble	a0,a2,18170 <_svfiprintf_r+0x550>
   18160:	0110                	addi	a2,sp,128
   18162:	85a6                	mv	a1,s1
   18164:	854a                	mv	a0,s2
   18166:	977ff0ef          	jal	ra,17adc <__ssprint_r>
   1816a:	28051063          	bnez	a0,183ea <_svfiprintf_r+0x7ca>
   1816e:	8dda                	mv	s11,s6
   18170:	66ca                	ld	a3,144(sp)
   18172:	008db423          	sd	s0,8(s11)
   18176:	018db023          	sd	s8,0(s11)
   1817a:	9436                	add	s0,s0,a3
   1817c:	46aa                	lw	a3,136(sp)
   1817e:	e922                	sd	s0,144(sp)
   18180:	010d8713          	addi	a4,s11,16
   18184:	0016861b          	addiw	a2,a3,1
   18188:	c532                	sw	a2,136(sp)
   1818a:	469d                	li	a3,7
   1818c:	00c6da63          	ble	a2,a3,181a0 <_svfiprintf_r+0x580>
   18190:	0110                	addi	a2,sp,128
   18192:	85a6                	mv	a1,s1
   18194:	854a                	mv	a0,s2
   18196:	947ff0ef          	jal	ra,17adc <__ssprint_r>
   1819a:	24051863          	bnez	a0,183ea <_svfiprintf_r+0x7ca>
   1819e:	875a                	mv	a4,s6
   181a0:	004d7793          	andi	a5,s10,4
   181a4:	20079663          	bnez	a5,183b0 <_svfiprintf_r+0x790>
   181a8:	87d2                	mv	a5,s4
   181aa:	019a5363          	ble	s9,s4,181b0 <_svfiprintf_r+0x590>
   181ae:	87e6                	mv	a5,s9
   181b0:	01778bbb          	addw	s7,a5,s7
   181b4:	67ca                	ld	a5,144(sp)
   181b6:	cb81                	beqz	a5,181c6 <_svfiprintf_r+0x5a6>
   181b8:	0110                	addi	a2,sp,128
   181ba:	85a6                	mv	a1,s1
   181bc:	854a                	mv	a0,s2
   181be:	91fff0ef          	jal	ra,17adc <__ssprint_r>
   181c2:	22051463          	bnez	a0,183ea <_svfiprintf_r+0x7ca>
   181c6:	c502                	sw	zero,136(sp)
   181c8:	69a2                	ld	s3,8(sp)
   181ca:	8dda                	mv	s11,s6
   181cc:	bcc9                	j	17c9e <_svfiprintf_r+0x7e>
   181ce:	8562                	mv	a0,s8
   181d0:	e95fc0ef          	jal	ra,15064 <strlen>
   181d4:	0005041b          	sext.w	s0,a0
   181d8:	4981                	li	s3,0
   181da:	bd39                	j	17ff8 <_svfiprintf_r+0x3d8>
   181dc:	010d6d13          	ori	s10,s10,16
   181e0:	00898793          	addi	a5,s3,8
   181e4:	e43e                	sd	a5,8(sp)
   181e6:	020d7693          	andi	a3,s10,32
   181ea:	c689                	beqz	a3,181f4 <_svfiprintf_r+0x5d4>
   181ec:	0009b983          	ld	s3,0(s3)
   181f0:	4605                	li	a2,1
   181f2:	bb35                	j	17f2e <_svfiprintf_r+0x30e>
   181f4:	010d7693          	andi	a3,s10,16
   181f8:	faf5                	bnez	a3,181ec <_svfiprintf_r+0x5cc>
   181fa:	040d7693          	andi	a3,s10,64
   181fe:	0009a983          	lw	s3,0(s3)
   18202:	c689                	beqz	a3,1820c <_svfiprintf_r+0x5ec>
   18204:	19c2                	slli	s3,s3,0x30
   18206:	0309d993          	srli	s3,s3,0x30
   1820a:	b7dd                	j	181f0 <_svfiprintf_r+0x5d0>
   1820c:	200d7693          	andi	a3,s10,512
   18210:	c681                	beqz	a3,18218 <_svfiprintf_r+0x5f8>
   18212:	0ff9f993          	andi	s3,s3,255
   18216:	bfe9                	j	181f0 <_svfiprintf_r+0x5d0>
   18218:	1982                	slli	s3,s3,0x20
   1821a:	0209d993          	srli	s3,s3,0x20
   1821e:	bfc9                	j	181f0 <_svfiprintf_r+0x5d0>
   18220:	0001a637          	lui	a2,0x1a
   18224:	eb060793          	addi	a5,a2,-336 # 19eb0 <zeroes.4441+0x60>
   18228:	b629                	j	17d32 <_svfiprintf_r+0x112>
   1822a:	010d7613          	andi	a2,s10,16
   1822e:	b0061ae3          	bnez	a2,17d42 <_svfiprintf_r+0x122>
   18232:	040d7613          	andi	a2,s10,64
   18236:	0009a983          	lw	s3,0(s3)
   1823a:	c609                	beqz	a2,18244 <_svfiprintf_r+0x624>
   1823c:	19c2                	slli	s3,s3,0x30
   1823e:	0309d993          	srli	s3,s3,0x30
   18242:	b611                	j	17d46 <_svfiprintf_r+0x126>
   18244:	200d7613          	andi	a2,s10,512
   18248:	c601                	beqz	a2,18250 <_svfiprintf_r+0x630>
   1824a:	0ff9f993          	andi	s3,s3,255
   1824e:	bce5                	j	17d46 <_svfiprintf_r+0x126>
   18250:	1982                	slli	s3,s3,0x20
   18252:	0209d993          	srli	s3,s3,0x20
   18256:	bcc5                	j	17d46 <_svfiprintf_r+0x126>
   18258:	85ea                	mv	a1,s10
   1825a:	4605                	li	a2,1
   1825c:	f7fd7d13          	andi	s10,s10,-129
   18260:	cc099de3          	bnez	s3,17f3a <_svfiprintf_r+0x31a>
   18264:	cc59                	beqz	s0,18302 <_svfiprintf_r+0x6e2>
   18266:	4685                	li	a3,1
   18268:	ccd61ce3          	bne	a2,a3,17f40 <_svfiprintf_r+0x320>
   1826c:	b181                	j	17eac <_svfiprintf_r+0x28c>
   1826e:	8662                	mv	a2,s8
   18270:	b9e1                	j	17f48 <_svfiprintf_r+0x328>
   18272:	400d7c93          	andi	s9,s10,1024
   18276:	4601                	li	a2,0
   18278:	19ec                	addi	a1,sp,252
   1827a:	4829                	li	a6,10
   1827c:	2c81                	sext.w	s9,s9
   1827e:	0ff00893          	li	a7,255
   18282:	4325                	li	t1,9
   18284:	0309f533          	remu	a0,s3,a6
   18288:	fff58c13          	addi	s8,a1,-1
   1828c:	2605                	addiw	a2,a2,1
   1828e:	0305051b          	addiw	a0,a0,48
   18292:	fea58fa3          	sb	a0,-1(a1)
   18296:	040c8063          	beqz	s9,182d6 <_svfiprintf_r+0x6b6>
   1829a:	67c2                	ld	a5,16(sp)
   1829c:	0007c583          	lbu	a1,0(a5)
   182a0:	02c59b63          	bne	a1,a2,182d6 <_svfiprintf_r+0x6b6>
   182a4:	03158963          	beq	a1,a7,182d6 <_svfiprintf_r+0x6b6>
   182a8:	03337763          	bleu	s3,t1,182d6 <_svfiprintf_r+0x6b6>
   182ac:	67e2                	ld	a5,24(sp)
   182ae:	75e2                	ld	a1,56(sp)
   182b0:	ec9a                	sd	t1,88(sp)
   182b2:	40fc0c33          	sub	s8,s8,a5
   182b6:	863e                	mv	a2,a5
   182b8:	8562                	mv	a0,s8
   182ba:	e4c6                	sd	a7,72(sp)
   182bc:	e0c2                	sd	a6,64(sp)
   182be:	db9fc0ef          	jal	ra,15076 <strncpy>
   182c2:	67c2                	ld	a5,16(sp)
   182c4:	4601                	li	a2,0
   182c6:	6806                	ld	a6,64(sp)
   182c8:	0017c583          	lbu	a1,1(a5)
   182cc:	68a6                	ld	a7,72(sp)
   182ce:	6366                	ld	t1,88(sp)
   182d0:	c199                	beqz	a1,182d6 <_svfiprintf_r+0x6b6>
   182d2:	0785                	addi	a5,a5,1
   182d4:	e83e                	sd	a5,16(sp)
   182d6:	0309d9b3          	divu	s3,s3,a6
   182da:	c8098ee3          	beqz	s3,17f76 <_svfiprintf_r+0x356>
   182de:	85e2                	mv	a1,s8
   182e0:	b755                	j	18284 <_svfiprintf_r+0x664>
   182e2:	0fc10c13          	addi	s8,sp,252
   182e6:	7782                	ld	a5,32(sp)
   182e8:	00f9f613          	andi	a2,s3,15
   182ec:	1c7d                	addi	s8,s8,-1
   182ee:	963e                	add	a2,a2,a5
   182f0:	00064603          	lbu	a2,0(a2)
   182f4:	0049d993          	srli	s3,s3,0x4
   182f8:	00cc0023          	sb	a2,0(s8)
   182fc:	fe0995e3          	bnez	s3,182e6 <_svfiprintf_r+0x6c6>
   18300:	b99d                	j	17f76 <_svfiprintf_r+0x356>
   18302:	0fc10c13          	addi	s8,sp,252
   18306:	c60618e3          	bnez	a2,17f76 <_svfiprintf_r+0x356>
   1830a:	8985                	andi	a1,a1,1
   1830c:	c60585e3          	beqz	a1,17f76 <_svfiprintf_r+0x356>
   18310:	03000693          	li	a3,48
   18314:	0ed10da3          	sb	a3,251(sp)
   18318:	be71                	j	17eb4 <_svfiprintf_r+0x294>
   1831a:	12068163          	beqz	a3,1843c <_svfiprintf_r+0x81c>
   1831e:	08d10c23          	sb	a3,152(sp)
   18322:	06010ba3          	sb	zero,119(sp)
   18326:	e44e                	sd	s3,8(sp)
   18328:	b6a9                	j	17e72 <_svfiprintf_r+0x252>
   1832a:	0641                	addi	a2,a2,16
   1832c:	006db423          	sd	t1,8(s11)
   18330:	e932                	sd	a2,144(sp)
   18332:	c52e                	sw	a1,136(sp)
   18334:	00ae5f63          	ble	a0,t3,18352 <_svfiprintf_r+0x732>
   18338:	0110                	addi	a2,sp,128
   1833a:	85a6                	mv	a1,s1
   1833c:	854a                	mv	a0,s2
   1833e:	f4f2                	sd	t3,104(sp)
   18340:	f09a                	sd	t1,96(sp)
   18342:	ecc2                	sd	a6,88(sp)
   18344:	f98ff0ef          	jal	ra,17adc <__ssprint_r>
   18348:	e14d                	bnez	a0,183ea <_svfiprintf_r+0x7ca>
   1834a:	7e26                	ld	t3,104(sp)
   1834c:	7306                	ld	t1,96(sp)
   1834e:	6866                	ld	a6,88(sp)
   18350:	88da                	mv	a7,s6
   18352:	3841                	addiw	a6,a6,-16
   18354:	8dc6                	mv	s11,a7
   18356:	b9e9                	j	18030 <_svfiprintf_r+0x410>
   18358:	0641                	addi	a2,a2,16
   1835a:	006db423          	sd	t1,8(s11)
   1835e:	e932                	sd	a2,144(sp)
   18360:	c52e                	sw	a1,136(sp)
   18362:	00ae5f63          	ble	a0,t3,18380 <_svfiprintf_r+0x760>
   18366:	0110                	addi	a2,sp,128
   18368:	85a6                	mv	a1,s1
   1836a:	854a                	mv	a0,s2
   1836c:	ecf2                	sd	t3,88(sp)
   1836e:	e49a                	sd	t1,72(sp)
   18370:	e0c2                	sd	a6,64(sp)
   18372:	f6aff0ef          	jal	ra,17adc <__ssprint_r>
   18376:	e935                	bnez	a0,183ea <_svfiprintf_r+0x7ca>
   18378:	6e66                	ld	t3,88(sp)
   1837a:	6326                	ld	t1,72(sp)
   1837c:	6806                	ld	a6,64(sp)
   1837e:	88da                	mv	a7,s6
   18380:	3841                	addiw	a6,a6,-16
   18382:	8dc6                	mv	s11,a7
   18384:	b3b5                	j	180f0 <_svfiprintf_r+0x4d0>
   18386:	0641                	addi	a2,a2,16
   18388:	011db423          	sd	a7,8(s11)
   1838c:	e932                	sd	a2,144(sp)
   1838e:	c52e                	sw	a1,136(sp)
   18390:	00a35d63          	ble	a0,t1,183aa <_svfiprintf_r+0x78a>
   18394:	0110                	addi	a2,sp,128
   18396:	85a6                	mv	a1,s1
   18398:	854a                	mv	a0,s2
   1839a:	e49a                	sd	t1,72(sp)
   1839c:	e0c6                	sd	a7,64(sp)
   1839e:	f3eff0ef          	jal	ra,17adc <__ssprint_r>
   183a2:	e521                	bnez	a0,183ea <_svfiprintf_r+0x7ca>
   183a4:	6326                	ld	t1,72(sp)
   183a6:	6886                	ld	a7,64(sp)
   183a8:	885a                	mv	a6,s6
   183aa:	39c1                	addiw	s3,s3,-16
   183ac:	8dc2                	mv	s11,a6
   183ae:	b361                	j	18136 <_svfiprintf_r+0x516>
   183b0:	419a043b          	subw	s0,s4,s9
   183b4:	de805ae3          	blez	s0,181a8 <_svfiprintf_r+0x588>
   183b8:	49c1                	li	s3,16
   183ba:	4d1d                	li	s10,7
   183bc:	46aa                	lw	a3,136(sp)
   183be:	67ca                	ld	a5,144(sp)
   183c0:	0016861b          	addiw	a2,a3,1
   183c4:	86b2                	mv	a3,a2
   183c6:	0489c863          	blt	s3,s0,18416 <_svfiprintf_r+0x7f6>
   183ca:	76c2                	ld	a3,48(sp)
   183cc:	e700                	sd	s0,8(a4)
   183ce:	943e                	add	s0,s0,a5
   183d0:	e314                	sd	a3,0(a4)
   183d2:	e922                	sd	s0,144(sp)
   183d4:	c532                	sw	a2,136(sp)
   183d6:	479d                	li	a5,7
   183d8:	dcc7d8e3          	ble	a2,a5,181a8 <_svfiprintf_r+0x588>
   183dc:	0110                	addi	a2,sp,128
   183de:	85a6                	mv	a1,s1
   183e0:	854a                	mv	a0,s2
   183e2:	efaff0ef          	jal	ra,17adc <__ssprint_r>
   183e6:	dc0501e3          	beqz	a0,181a8 <_svfiprintf_r+0x588>
   183ea:	0104d783          	lhu	a5,16(s1)
   183ee:	0407f793          	andi	a5,a5,64
   183f2:	86079ae3          	bnez	a5,17c66 <_svfiprintf_r+0x46>
   183f6:	70be                	ld	ra,488(sp)
   183f8:	741e                	ld	s0,480(sp)
   183fa:	855e                	mv	a0,s7
   183fc:	64fe                	ld	s1,472(sp)
   183fe:	695e                	ld	s2,464(sp)
   18400:	69be                	ld	s3,456(sp)
   18402:	6a1e                	ld	s4,448(sp)
   18404:	7afa                	ld	s5,440(sp)
   18406:	7b5a                	ld	s6,432(sp)
   18408:	7bba                	ld	s7,424(sp)
   1840a:	7c1a                	ld	s8,416(sp)
   1840c:	6cfa                	ld	s9,408(sp)
   1840e:	6d5a                	ld	s10,400(sp)
   18410:	6dba                	ld	s11,392(sp)
   18412:	617d                	addi	sp,sp,496
   18414:	8082                	ret
   18416:	75c2                	ld	a1,48(sp)
   18418:	07c1                	addi	a5,a5,16
   1841a:	01373423          	sd	s3,8(a4)
   1841e:	e30c                	sd	a1,0(a4)
   18420:	e93e                	sd	a5,144(sp)
   18422:	c536                	sw	a3,136(sp)
   18424:	0741                	addi	a4,a4,16
   18426:	00cd5963          	ble	a2,s10,18438 <_svfiprintf_r+0x818>
   1842a:	0110                	addi	a2,sp,128
   1842c:	85a6                	mv	a1,s1
   1842e:	854a                	mv	a0,s2
   18430:	eacff0ef          	jal	ra,17adc <__ssprint_r>
   18434:	f95d                	bnez	a0,183ea <_svfiprintf_r+0x7ca>
   18436:	875a                	mv	a4,s6
   18438:	3441                	addiw	s0,s0,-16
   1843a:	b749                	j	183bc <_svfiprintf_r+0x79c>
   1843c:	67ca                	ld	a5,144(sp)
   1843e:	d7d5                	beqz	a5,183ea <_svfiprintf_r+0x7ca>
   18440:	0110                	addi	a2,sp,128
   18442:	85a6                	mv	a1,s1
   18444:	854a                	mv	a0,s2
   18446:	e96ff0ef          	jal	ra,17adc <__ssprint_r>
   1844a:	b745                	j	183ea <_svfiprintf_r+0x7ca>

000000000001844c <__swbuf_r>:
   1844c:	7179                	addi	sp,sp,-48
   1844e:	f022                	sd	s0,32(sp)
   18450:	ec26                	sd	s1,24(sp)
   18452:	e84a                	sd	s2,16(sp)
   18454:	f406                	sd	ra,40(sp)
   18456:	e44e                	sd	s3,8(sp)
   18458:	892a                	mv	s2,a0
   1845a:	84ae                	mv	s1,a1
   1845c:	8432                	mv	s0,a2
   1845e:	c509                	beqz	a0,18468 <__swbuf_r+0x1c>
   18460:	493c                	lw	a5,80(a0)
   18462:	e399                	bnez	a5,18468 <__swbuf_r+0x1c>
   18464:	8e4fa0ef          	jal	ra,12548 <__sinit>
   18468:	541c                	lw	a5,40(s0)
   1846a:	c45c                	sw	a5,12(s0)
   1846c:	01045783          	lhu	a5,16(s0)
   18470:	8ba1                	andi	a5,a5,8
   18472:	c3ad                	beqz	a5,184d4 <__swbuf_r+0x88>
   18474:	6c1c                	ld	a5,24(s0)
   18476:	cfb9                	beqz	a5,184d4 <__swbuf_r+0x88>
   18478:	01041783          	lh	a5,16(s0)
   1847c:	0ff4f993          	andi	s3,s1,255
   18480:	84ce                	mv	s1,s3
   18482:	03279713          	slli	a4,a5,0x32
   18486:	06075563          	bgez	a4,184f0 <__swbuf_r+0xa4>
   1848a:	6c1c                	ld	a5,24(s0)
   1848c:	6008                	ld	a0,0(s0)
   1848e:	9d1d                	subw	a0,a0,a5
   18490:	501c                	lw	a5,32(s0)
   18492:	00f54763          	blt	a0,a5,184a0 <__swbuf_r+0x54>
   18496:	85a2                	mv	a1,s0
   18498:	854a                	mv	a0,s2
   1849a:	f97f90ef          	jal	ra,12430 <_fflush_r>
   1849e:	e121                	bnez	a0,184de <__swbuf_r+0x92>
   184a0:	445c                	lw	a5,12(s0)
   184a2:	2505                	addiw	a0,a0,1
   184a4:	37fd                	addiw	a5,a5,-1
   184a6:	c45c                	sw	a5,12(s0)
   184a8:	601c                	ld	a5,0(s0)
   184aa:	00178713          	addi	a4,a5,1
   184ae:	e018                	sd	a4,0(s0)
   184b0:	01378023          	sb	s3,0(a5)
   184b4:	501c                	lw	a5,32(s0)
   184b6:	00a78963          	beq	a5,a0,184c8 <__swbuf_r+0x7c>
   184ba:	01045783          	lhu	a5,16(s0)
   184be:	8b85                	andi	a5,a5,1
   184c0:	c385                	beqz	a5,184e0 <__swbuf_r+0x94>
   184c2:	47a9                	li	a5,10
   184c4:	00f49e63          	bne	s1,a5,184e0 <__swbuf_r+0x94>
   184c8:	85a2                	mv	a1,s0
   184ca:	854a                	mv	a0,s2
   184cc:	f65f90ef          	jal	ra,12430 <_fflush_r>
   184d0:	c901                	beqz	a0,184e0 <__swbuf_r+0x94>
   184d2:	a031                	j	184de <__swbuf_r+0x92>
   184d4:	85a2                	mv	a1,s0
   184d6:	854a                	mv	a0,s2
   184d8:	c0bf90ef          	jal	ra,120e2 <__swsetup_r>
   184dc:	dd51                	beqz	a0,18478 <__swbuf_r+0x2c>
   184de:	54fd                	li	s1,-1
   184e0:	70a2                	ld	ra,40(sp)
   184e2:	7402                	ld	s0,32(sp)
   184e4:	8526                	mv	a0,s1
   184e6:	6942                	ld	s2,16(sp)
   184e8:	64e2                	ld	s1,24(sp)
   184ea:	69a2                	ld	s3,8(sp)
   184ec:	6145                	addi	sp,sp,48
   184ee:	8082                	ret
   184f0:	6709                	lui	a4,0x2
   184f2:	8fd9                	or	a5,a5,a4
   184f4:	00f41823          	sh	a5,16(s0)
   184f8:	0ac42783          	lw	a5,172(s0)
   184fc:	7779                	lui	a4,0xffffe
   184fe:	177d                	addi	a4,a4,-1
   18500:	8ff9                	and	a5,a5,a4
   18502:	0af42623          	sw	a5,172(s0)
   18506:	b751                	j	1848a <__swbuf_r+0x3e>

0000000000018508 <__swbuf>:
   18508:	862e                	mv	a2,a1
   1850a:	85aa                	mv	a1,a0
   1850c:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   18510:	f3dff06f          	j	1844c <__swbuf_r>

0000000000018514 <_wcrtomb_r>:
   18514:	8301b783          	ld	a5,-2000(gp) # 1cb08 <_impure_ptr>
   18518:	7179                	addi	sp,sp,-48
   1851a:	f022                	sd	s0,32(sp)
   1851c:	ec26                	sd	s1,24(sp)
   1851e:	f406                	sd	ra,40(sp)
   18520:	842a                	mv	s0,a0
   18522:	84b6                	mv	s1,a3
   18524:	67bc                	ld	a5,72(a5)
   18526:	e985                	bnez	a1,18556 <_wcrtomb_r+0x42>
   18528:	e781                	bnez	a5,18530 <_wcrtomb_r+0x1c>
   1852a:	67f5                	lui	a5,0x1d
   1852c:	93078793          	addi	a5,a5,-1744 # 1c930 <__global_locale>
   18530:	73fc                	ld	a5,224(a5)
   18532:	86a6                	mv	a3,s1
   18534:	4601                	li	a2,0
   18536:	858a                	mv	a1,sp
   18538:	8522                	mv	a0,s0
   1853a:	9782                	jalr	a5
   1853c:	57fd                	li	a5,-1
   1853e:	00f51763          	bne	a0,a5,1854c <_wcrtomb_r+0x38>
   18542:	0004a023          	sw	zero,0(s1)
   18546:	08a00793          	li	a5,138
   1854a:	c01c                	sw	a5,0(s0)
   1854c:	70a2                	ld	ra,40(sp)
   1854e:	7402                	ld	s0,32(sp)
   18550:	64e2                	ld	s1,24(sp)
   18552:	6145                	addi	sp,sp,48
   18554:	8082                	ret
   18556:	e781                	bnez	a5,1855e <_wcrtomb_r+0x4a>
   18558:	67f5                	lui	a5,0x1d
   1855a:	93078793          	addi	a5,a5,-1744 # 1c930 <__global_locale>
   1855e:	73fc                	ld	a5,224(a5)
   18560:	86a6                	mv	a3,s1
   18562:	bfd9                	j	18538 <_wcrtomb_r+0x24>

0000000000018564 <wcrtomb>:
   18564:	86b2                	mv	a3,a2
   18566:	862e                	mv	a2,a1
   18568:	85aa                	mv	a1,a0
   1856a:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   1856e:	fa7ff06f          	j	18514 <_wcrtomb_r>

0000000000018572 <_close>:
   18572:	1141                	addi	sp,sp,-16
   18574:	e406                	sd	ra,8(sp)
   18576:	e022                	sd	s0,0(sp)
   18578:	4581                	li	a1,0
   1857a:	4601                	li	a2,0
   1857c:	4681                	li	a3,0
   1857e:	4701                	li	a4,0
   18580:	4781                	li	a5,0
   18582:	03900893          	li	a7,57
   18586:	00000073          	ecall
   1858a:	842a                	mv	s0,a0
   1858c:	00055863          	bgez	a0,1859c <_close+0x2a>
   18590:	4080043b          	negw	s0,s0
   18594:	1f8000ef          	jal	ra,1878c <__errno>
   18598:	c100                	sw	s0,0(a0)
   1859a:	547d                	li	s0,-1
   1859c:	0004051b          	sext.w	a0,s0
   185a0:	60a2                	ld	ra,8(sp)
   185a2:	6402                	ld	s0,0(sp)
   185a4:	0141                	addi	sp,sp,16
   185a6:	8082                	ret

00000000000185a8 <_exit>:
   185a8:	4581                	li	a1,0
   185aa:	4601                	li	a2,0
   185ac:	4681                	li	a3,0
   185ae:	4701                	li	a4,0
   185b0:	4781                	li	a5,0
   185b2:	05d00893          	li	a7,93
   185b6:	00000073          	ecall
   185ba:	00055c63          	bgez	a0,185d2 <_exit+0x2a>
   185be:	1141                	addi	sp,sp,-16
   185c0:	e022                	sd	s0,0(sp)
   185c2:	842a                	mv	s0,a0
   185c4:	e406                	sd	ra,8(sp)
   185c6:	4080043b          	negw	s0,s0
   185ca:	1c2000ef          	jal	ra,1878c <__errno>
   185ce:	c100                	sw	s0,0(a0)
   185d0:	a001                	j	185d0 <_exit+0x28>
   185d2:	a001                	j	185d2 <_exit+0x2a>

00000000000185d4 <_fstat>:
   185d4:	7135                	addi	sp,sp,-160
   185d6:	e526                	sd	s1,136(sp)
   185d8:	ed06                	sd	ra,152(sp)
   185da:	84ae                	mv	s1,a1
   185dc:	e922                	sd	s0,144(sp)
   185de:	858a                	mv	a1,sp
   185e0:	4601                	li	a2,0
   185e2:	4681                	li	a3,0
   185e4:	4701                	li	a4,0
   185e6:	4781                	li	a5,0
   185e8:	05000893          	li	a7,80
   185ec:	00000073          	ecall
   185f0:	842a                	mv	s0,a0
   185f2:	00055863          	bgez	a0,18602 <_fstat+0x2e>
   185f6:	4080043b          	negw	s0,s0
   185fa:	192000ef          	jal	ra,1878c <__errno>
   185fe:	c100                	sw	s0,0(a0)
   18600:	547d                	li	s0,-1
   18602:	8526                	mv	a0,s1
   18604:	858a                	mv	a1,sp
   18606:	144000ef          	jal	ra,1874a <_conv_stat>
   1860a:	0004051b          	sext.w	a0,s0
   1860e:	60ea                	ld	ra,152(sp)
   18610:	644a                	ld	s0,144(sp)
   18612:	64aa                	ld	s1,136(sp)
   18614:	610d                	addi	sp,sp,160
   18616:	8082                	ret

0000000000018618 <_isatty>:
   18618:	7119                	addi	sp,sp,-128
   1861a:	002c                	addi	a1,sp,8
   1861c:	fc86                	sd	ra,120(sp)
   1861e:	fb7ff0ef          	jal	ra,185d4 <_fstat>
   18622:	57fd                	li	a5,-1
   18624:	00f50663          	beq	a0,a5,18630 <_isatty+0x18>
   18628:	4532                	lw	a0,12(sp)
   1862a:	40d5551b          	sraiw	a0,a0,0xd
   1862e:	8905                	andi	a0,a0,1
   18630:	70e6                	ld	ra,120(sp)
   18632:	6109                	addi	sp,sp,128
   18634:	8082                	ret

0000000000018636 <_lseek>:
   18636:	1141                	addi	sp,sp,-16
   18638:	e406                	sd	ra,8(sp)
   1863a:	e022                	sd	s0,0(sp)
   1863c:	4681                	li	a3,0
   1863e:	4701                	li	a4,0
   18640:	4781                	li	a5,0
   18642:	03e00893          	li	a7,62
   18646:	00000073          	ecall
   1864a:	842a                	mv	s0,a0
   1864c:	00055863          	bgez	a0,1865c <_lseek+0x26>
   18650:	4080043b          	negw	s0,s0
   18654:	138000ef          	jal	ra,1878c <__errno>
   18658:	c100                	sw	s0,0(a0)
   1865a:	547d                	li	s0,-1
   1865c:	8522                	mv	a0,s0
   1865e:	60a2                	ld	ra,8(sp)
   18660:	6402                	ld	s0,0(sp)
   18662:	0141                	addi	sp,sp,16
   18664:	8082                	ret

0000000000018666 <_read>:
   18666:	1141                	addi	sp,sp,-16
   18668:	e406                	sd	ra,8(sp)
   1866a:	e022                	sd	s0,0(sp)
   1866c:	4681                	li	a3,0
   1866e:	4701                	li	a4,0
   18670:	4781                	li	a5,0
   18672:	03f00893          	li	a7,63
   18676:	00000073          	ecall
   1867a:	842a                	mv	s0,a0
   1867c:	00055863          	bgez	a0,1868c <_read+0x26>
   18680:	4080043b          	negw	s0,s0
   18684:	108000ef          	jal	ra,1878c <__errno>
   18688:	c100                	sw	s0,0(a0)
   1868a:	547d                	li	s0,-1
   1868c:	8522                	mv	a0,s0
   1868e:	60a2                	ld	ra,8(sp)
   18690:	6402                	ld	s0,0(sp)
   18692:	0141                	addi	sp,sp,16
   18694:	8082                	ret

0000000000018696 <_sbrk>:
   18696:	1101                	addi	sp,sp,-32
   18698:	e822                	sd	s0,16(sp)
   1869a:	8681b783          	ld	a5,-1944(gp) # 1cb40 <heap_end.2510>
   1869e:	e04a                	sd	s2,0(sp)
   186a0:	ec06                	sd	ra,24(sp)
   186a2:	e426                	sd	s1,8(sp)
   186a4:	892a                	mv	s2,a0
   186a6:	eb9d                	bnez	a5,186dc <_sbrk+0x46>
   186a8:	4501                	li	a0,0
   186aa:	4581                	li	a1,0
   186ac:	4601                	li	a2,0
   186ae:	4681                	li	a3,0
   186b0:	4701                	li	a4,0
   186b2:	0d600893          	li	a7,214
   186b6:	00000073          	ecall
   186ba:	84aa                	mv	s1,a0
   186bc:	00055e63          	bgez	a0,186d8 <_sbrk+0x42>
   186c0:	0cc000ef          	jal	ra,1878c <__errno>
   186c4:	409004bb          	negw	s1,s1
   186c8:	c104                	sw	s1,0(a0)
   186ca:	557d                	li	a0,-1
   186cc:	60e2                	ld	ra,24(sp)
   186ce:	6442                	ld	s0,16(sp)
   186d0:	64a2                	ld	s1,8(sp)
   186d2:	6902                	ld	s2,0(sp)
   186d4:	6105                	addi	sp,sp,32
   186d6:	8082                	ret
   186d8:	86a1b423          	sd	a0,-1944(gp) # 1cb40 <heap_end.2510>
   186dc:	8681b503          	ld	a0,-1944(gp) # 1cb40 <heap_end.2510>
   186e0:	4581                	li	a1,0
   186e2:	4601                	li	a2,0
   186e4:	954a                	add	a0,a0,s2
   186e6:	4681                	li	a3,0
   186e8:	4701                	li	a4,0
   186ea:	4781                	li	a5,0
   186ec:	0d600893          	li	a7,214
   186f0:	00000073          	ecall
   186f4:	84aa                	mv	s1,a0
   186f6:	00055863          	bgez	a0,18706 <_sbrk+0x70>
   186fa:	409004bb          	negw	s1,s1
   186fe:	08e000ef          	jal	ra,1878c <__errno>
   18702:	c104                	sw	s1,0(a0)
   18704:	54fd                	li	s1,-1
   18706:	8681b783          	ld	a5,-1944(gp) # 1cb40 <heap_end.2510>
   1870a:	557d                	li	a0,-1
   1870c:	993e                	add	s2,s2,a5
   1870e:	fb249fe3          	bne	s1,s2,186cc <_sbrk+0x36>
   18712:	8691b423          	sd	s1,-1944(gp) # 1cb40 <heap_end.2510>
   18716:	853e                	mv	a0,a5
   18718:	bf55                	j	186cc <_sbrk+0x36>

000000000001871a <_write>:
   1871a:	1141                	addi	sp,sp,-16
   1871c:	e406                	sd	ra,8(sp)
   1871e:	e022                	sd	s0,0(sp)
   18720:	4681                	li	a3,0
   18722:	4701                	li	a4,0
   18724:	4781                	li	a5,0
   18726:	04000893          	li	a7,64
   1872a:	00000073          	ecall
   1872e:	842a                	mv	s0,a0
   18730:	00055863          	bgez	a0,18740 <_write+0x26>
   18734:	4080043b          	negw	s0,s0
   18738:	054000ef          	jal	ra,1878c <__errno>
   1873c:	c100                	sw	s0,0(a0)
   1873e:	547d                	li	s0,-1
   18740:	8522                	mv	a0,s0
   18742:	60a2                	ld	ra,8(sp)
   18744:	6402                	ld	s0,0(sp)
   18746:	0141                	addi	sp,sp,16
   18748:	8082                	ret

000000000001874a <_conv_stat>:
   1874a:	619c                	ld	a5,0(a1)
   1874c:	00f51023          	sh	a5,0(a0)
   18750:	659c                	ld	a5,8(a1)
   18752:	00f51123          	sh	a5,2(a0)
   18756:	499c                	lw	a5,16(a1)
   18758:	c15c                	sw	a5,4(a0)
   1875a:	49dc                	lw	a5,20(a1)
   1875c:	00f51423          	sh	a5,8(a0)
   18760:	4d9c                	lw	a5,24(a1)
   18762:	00f51523          	sh	a5,10(a0)
   18766:	4ddc                	lw	a5,28(a1)
   18768:	00f51623          	sh	a5,12(a0)
   1876c:	719c                	ld	a5,32(a1)
   1876e:	00f51723          	sh	a5,14(a0)
   18772:	799c                	ld	a5,48(a1)
   18774:	e91c                	sd	a5,16(a0)
   18776:	61bc                	ld	a5,64(a1)
   18778:	e93c                	sd	a5,80(a0)
   1877a:	5d9c                	lw	a5,56(a1)
   1877c:	e53c                	sd	a5,72(a0)
   1877e:	65bc                	ld	a5,72(a1)
   18780:	ed1c                	sd	a5,24(a0)
   18782:	6dbc                	ld	a5,88(a1)
   18784:	f51c                	sd	a5,40(a0)
   18786:	75bc                	ld	a5,104(a1)
   18788:	fd1c                	sd	a5,56(a0)
   1878a:	8082                	ret

000000000001878c <__errno>:
   1878c:	8301b503          	ld	a0,-2000(gp) # 1cb08 <_impure_ptr>
   18790:	8082                	ret

0000000000018792 <__eqtf2>:
   18792:	1141                	addi	sp,sp,-16
   18794:	002027f3          	frrm	a5
   18798:	6721                	lui	a4,0x8
   1879a:	0305d893          	srli	a7,a1,0x30
   1879e:	177d                	addi	a4,a4,-1
   187a0:	57fd                	li	a5,-1
   187a2:	83c1                	srli	a5,a5,0x10
   187a4:	0306d313          	srli	t1,a3,0x30
   187a8:	00e8f8b3          	and	a7,a7,a4
   187ac:	00f5f833          	and	a6,a1,a5
   187b0:	00e37333          	and	t1,t1,a4
   187b4:	8ff5                	and	a5,a5,a3
   187b6:	91fd                	srli	a1,a1,0x3f
   187b8:	92fd                	srli	a3,a3,0x3f
   187ba:	00e89963          	bne	a7,a4,187cc <__eqtf2+0x3a>
   187be:	00a86733          	or	a4,a6,a0
   187c2:	ef11                	bnez	a4,187de <__eqtf2+0x4c>
   187c4:	4705                	li	a4,1
   187c6:	07131063          	bne	t1,a7,18826 <__eqtf2+0x94>
   187ca:	a019                	j	187d0 <__eqtf2+0x3e>
   187cc:	02e31e63          	bne	t1,a4,18808 <__eqtf2+0x76>
   187d0:	00c7e733          	or	a4,a5,a2
   187d4:	cb15                	beqz	a4,18808 <__eqtf2+0x76>
   187d6:	6721                	lui	a4,0x8
   187d8:	177d                	addi	a4,a4,-1
   187da:	00e89e63          	bne	a7,a4,187f6 <__eqtf2+0x64>
   187de:	00a86533          	or	a0,a6,a0
   187e2:	c509                	beqz	a0,187ec <__eqtf2+0x5a>
   187e4:	02f85813          	srli	a6,a6,0x2f
   187e8:	04080363          	beqz	a6,1882e <__eqtf2+0x9c>
   187ec:	6721                	lui	a4,0x8
   187ee:	177d                	addi	a4,a4,-1
   187f0:	4505                	li	a0,1
   187f2:	00e31963          	bne	t1,a4,18804 <__eqtf2+0x72>
   187f6:	8e5d                	or	a2,a2,a5
   187f8:	4505                	li	a0,1
   187fa:	c609                	beqz	a2,18804 <__eqtf2+0x72>
   187fc:	02f51713          	slli	a4,a0,0x2f
   18800:	8ff9                	and	a5,a5,a4
   18802:	c795                	beqz	a5,1882e <__eqtf2+0x9c>
   18804:	0141                	addi	sp,sp,16
   18806:	8082                	ret
   18808:	4705                	li	a4,1
   1880a:	00689e63          	bne	a7,t1,18826 <__eqtf2+0x94>
   1880e:	00f81c63          	bne	a6,a5,18826 <__eqtf2+0x94>
   18812:	00c51a63          	bne	a0,a2,18826 <__eqtf2+0x94>
   18816:	00d58a63          	beq	a1,a3,1882a <__eqtf2+0x98>
   1881a:	00089663          	bnez	a7,18826 <__eqtf2+0x94>
   1881e:	00a86533          	or	a0,a6,a0
   18822:	00a03733          	snez	a4,a0
   18826:	853a                	mv	a0,a4
   18828:	bff1                	j	18804 <__eqtf2+0x72>
   1882a:	4701                	li	a4,0
   1882c:	bfed                	j	18826 <__eqtf2+0x94>
   1882e:	00186073          	csrsi	fflags,16
   18832:	4505                	li	a0,1
   18834:	bfc1                	j	18804 <__eqtf2+0x72>

0000000000018836 <__getf2>:
   18836:	1141                	addi	sp,sp,-16
   18838:	002027f3          	frrm	a5
   1883c:	68a1                	lui	a7,0x8
   1883e:	0305d713          	srli	a4,a1,0x30
   18842:	18fd                	addi	a7,a7,-1
   18844:	57fd                	li	a5,-1
   18846:	83c1                	srli	a5,a5,0x10
   18848:	0306d813          	srli	a6,a3,0x30
   1884c:	01177733          	and	a4,a4,a7
   18850:	00f5f333          	and	t1,a1,a5
   18854:	01187833          	and	a6,a6,a7
   18858:	8ff5                	and	a5,a5,a3
   1885a:	91fd                	srli	a1,a1,0x3f
   1885c:	92fd                	srli	a3,a3,0x3f
   1885e:	01171a63          	bne	a4,a7,18872 <__getf2+0x3c>
   18862:	00a368b3          	or	a7,t1,a0
   18866:	08088463          	beqz	a7,188ee <__getf2+0xb8>
   1886a:	00186073          	csrsi	fflags,16
   1886e:	57f9                	li	a5,-2
   18870:	a089                	j	188b2 <__getf2+0x7c>
   18872:	01181c63          	bne	a6,a7,1888a <__getf2+0x54>
   18876:	00c7e8b3          	or	a7,a5,a2
   1887a:	fe0898e3          	bnez	a7,1886a <__getf2+0x34>
   1887e:	e31d                	bnez	a4,188a4 <__getf2+0x6e>
   18880:	00a368b3          	or	a7,t1,a0
   18884:	0018b893          	seqz	a7,a7
   18888:	a821                	j	188a0 <__getf2+0x6a>
   1888a:	e725                	bnez	a4,188f2 <__getf2+0xbc>
   1888c:	00a368b3          	or	a7,t1,a0
   18890:	0018b893          	seqz	a7,a7
   18894:	00081663          	bnez	a6,188a0 <__getf2+0x6a>
   18898:	00c7ee33          	or	t3,a5,a2
   1889c:	040e0563          	beqz	t3,188e6 <__getf2+0xb0>
   188a0:	00089c63          	bnez	a7,188b8 <__getf2+0x82>
   188a4:	00d59463          	bne	a1,a3,188ac <__getf2+0x76>
   188a8:	00e85c63          	ble	a4,a6,188c0 <__getf2+0x8a>
   188ac:	4785                	li	a5,1
   188ae:	c191                	beqz	a1,188b2 <__getf2+0x7c>
   188b0:	57fd                	li	a5,-1
   188b2:	853e                	mv	a0,a5
   188b4:	0141                	addi	sp,sp,16
   188b6:	8082                	ret
   188b8:	57fd                	li	a5,-1
   188ba:	dee5                	beqz	a3,188b2 <__getf2+0x7c>
   188bc:	4785                	li	a5,1
   188be:	bfd5                	j	188b2 <__getf2+0x7c>
   188c0:	01075563          	ble	a6,a4,188ca <__getf2+0x94>
   188c4:	57fd                	li	a5,-1
   188c6:	f9fd                	bnez	a1,188bc <__getf2+0x86>
   188c8:	b7ed                	j	188b2 <__getf2+0x7c>
   188ca:	fe67e1e3          	bltu	a5,t1,188ac <__getf2+0x76>
   188ce:	00f31863          	bne	t1,a5,188de <__getf2+0xa8>
   188d2:	fca66de3          	bltu	a2,a0,188ac <__getf2+0x76>
   188d6:	4781                	li	a5,0
   188d8:	fcc57de3          	bleu	a2,a0,188b2 <__getf2+0x7c>
   188dc:	b7e5                	j	188c4 <__getf2+0x8e>
   188de:	fef363e3          	bltu	t1,a5,188c4 <__getf2+0x8e>
   188e2:	4781                	li	a5,0
   188e4:	b7f9                	j	188b2 <__getf2+0x7c>
   188e6:	4781                	li	a5,0
   188e8:	fc0895e3          	bnez	a7,188b2 <__getf2+0x7c>
   188ec:	b7c1                	j	188ac <__getf2+0x76>
   188ee:	f8e804e3          	beq	a6,a4,18876 <__getf2+0x40>
   188f2:	4881                	li	a7,0
   188f4:	fa0802e3          	beqz	a6,18898 <__getf2+0x62>
   188f8:	b775                	j	188a4 <__getf2+0x6e>

00000000000188fa <__letf2>:
   188fa:	1141                	addi	sp,sp,-16
   188fc:	002027f3          	frrm	a5
   18900:	68a1                	lui	a7,0x8
   18902:	0305d713          	srli	a4,a1,0x30
   18906:	18fd                	addi	a7,a7,-1
   18908:	57fd                	li	a5,-1
   1890a:	83c1                	srli	a5,a5,0x10
   1890c:	0306d813          	srli	a6,a3,0x30
   18910:	01177733          	and	a4,a4,a7
   18914:	00f5f333          	and	t1,a1,a5
   18918:	01187833          	and	a6,a6,a7
   1891c:	8ff5                	and	a5,a5,a3
   1891e:	91fd                	srli	a1,a1,0x3f
   18920:	92fd                	srli	a3,a3,0x3f
   18922:	01171a63          	bne	a4,a7,18936 <__letf2+0x3c>
   18926:	00a368b3          	or	a7,t1,a0
   1892a:	08088463          	beqz	a7,189b2 <__letf2+0xb8>
   1892e:	00186073          	csrsi	fflags,16
   18932:	4789                	li	a5,2
   18934:	a089                	j	18976 <__letf2+0x7c>
   18936:	01181c63          	bne	a6,a7,1894e <__letf2+0x54>
   1893a:	00c7e8b3          	or	a7,a5,a2
   1893e:	fe0898e3          	bnez	a7,1892e <__letf2+0x34>
   18942:	e31d                	bnez	a4,18968 <__letf2+0x6e>
   18944:	00a368b3          	or	a7,t1,a0
   18948:	0018b893          	seqz	a7,a7
   1894c:	a821                	j	18964 <__letf2+0x6a>
   1894e:	e725                	bnez	a4,189b6 <__letf2+0xbc>
   18950:	00a368b3          	or	a7,t1,a0
   18954:	0018b893          	seqz	a7,a7
   18958:	00081663          	bnez	a6,18964 <__letf2+0x6a>
   1895c:	00c7ee33          	or	t3,a5,a2
   18960:	040e0563          	beqz	t3,189aa <__letf2+0xb0>
   18964:	00089c63          	bnez	a7,1897c <__letf2+0x82>
   18968:	00d59463          	bne	a1,a3,18970 <__letf2+0x76>
   1896c:	00e85c63          	ble	a4,a6,18984 <__letf2+0x8a>
   18970:	4785                	li	a5,1
   18972:	c191                	beqz	a1,18976 <__letf2+0x7c>
   18974:	57fd                	li	a5,-1
   18976:	853e                	mv	a0,a5
   18978:	0141                	addi	sp,sp,16
   1897a:	8082                	ret
   1897c:	57fd                	li	a5,-1
   1897e:	dee5                	beqz	a3,18976 <__letf2+0x7c>
   18980:	4785                	li	a5,1
   18982:	bfd5                	j	18976 <__letf2+0x7c>
   18984:	01075563          	ble	a6,a4,1898e <__letf2+0x94>
   18988:	57fd                	li	a5,-1
   1898a:	f9fd                	bnez	a1,18980 <__letf2+0x86>
   1898c:	b7ed                	j	18976 <__letf2+0x7c>
   1898e:	fe67e1e3          	bltu	a5,t1,18970 <__letf2+0x76>
   18992:	00f31863          	bne	t1,a5,189a2 <__letf2+0xa8>
   18996:	fca66de3          	bltu	a2,a0,18970 <__letf2+0x76>
   1899a:	4781                	li	a5,0
   1899c:	fcc57de3          	bleu	a2,a0,18976 <__letf2+0x7c>
   189a0:	b7e5                	j	18988 <__letf2+0x8e>
   189a2:	fef363e3          	bltu	t1,a5,18988 <__letf2+0x8e>
   189a6:	4781                	li	a5,0
   189a8:	b7f9                	j	18976 <__letf2+0x7c>
   189aa:	4781                	li	a5,0
   189ac:	fc0895e3          	bnez	a7,18976 <__letf2+0x7c>
   189b0:	b7c1                	j	18970 <__letf2+0x76>
   189b2:	f8e804e3          	beq	a6,a4,1893a <__letf2+0x40>
   189b6:	4881                	li	a7,0
   189b8:	fa0802e3          	beqz	a6,1895c <__letf2+0x62>
   189bc:	b775                	j	18968 <__letf2+0x6e>

00000000000189be <__multf3>:
   189be:	7159                	addi	sp,sp,-112
   189c0:	f85a                	sd	s6,48(sp)
   189c2:	ec66                	sd	s9,24(sp)
   189c4:	f486                	sd	ra,104(sp)
   189c6:	f0a2                	sd	s0,96(sp)
   189c8:	eca6                	sd	s1,88(sp)
   189ca:	e8ca                	sd	s2,80(sp)
   189cc:	e4ce                	sd	s3,72(sp)
   189ce:	e0d2                	sd	s4,64(sp)
   189d0:	fc56                	sd	s5,56(sp)
   189d2:	f45e                	sd	s7,40(sp)
   189d4:	f062                	sd	s8,32(sp)
   189d6:	8cb2                	mv	s9,a2
   189d8:	8b36                	mv	s6,a3
   189da:	00202af3          	frrm	s5
   189de:	57fd                	li	a5,-1
   189e0:	83c1                	srli	a5,a5,0x10
   189e2:	00f5f933          	and	s2,a1,a5
   189e6:	67a1                	lui	a5,0x8
   189e8:	0305da13          	srli	s4,a1,0x30
   189ec:	17fd                	addi	a5,a5,-1
   189ee:	00fa76b3          	and	a3,s4,a5
   189f2:	00068a1b          	sext.w	s4,a3
   189f6:	2a81                	sext.w	s5,s5
   189f8:	03f5db93          	srli	s7,a1,0x3f
   189fc:	020a0663          	beqz	s4,18a28 <__multf3+0x6a>
   18a00:	842a                	mv	s0,a0
   18a02:	08fa0463          	beq	s4,a5,18a8a <__multf3+0xcc>
   18a06:	4585                	li	a1,1
   18a08:	03d55613          	srli	a2,a0,0x3d
   18a0c:	15ce                	slli	a1,a1,0x33
   18a0e:	7a71                	lui	s4,0xffffc
   18a10:	00391793          	slli	a5,s2,0x3
   18a14:	8e4d                	or	a2,a2,a1
   18a16:	0a05                	addi	s4,s4,1
   18a18:	00f66933          	or	s2,a2,a5
   18a1c:	00351413          	slli	s0,a0,0x3
   18a20:	9a36                	add	s4,s4,a3
   18a22:	4c01                	li	s8,0
   18a24:	4481                	li	s1,0
   18a26:	a89d                	j	18a9c <__multf3+0xde>
   18a28:	00a967b3          	or	a5,s2,a0
   18a2c:	84aa                	mv	s1,a0
   18a2e:	cfe1                	beqz	a5,18b06 <__multf3+0x148>
   18a30:	04090163          	beqz	s2,18a72 <__multf3+0xb4>
   18a34:	854a                	mv	a0,s2
   18a36:	214010ef          	jal	ra,19c4a <__clzdi2>
   18a3a:	2501                	sext.w	a0,a0
   18a3c:	ff150793          	addi	a5,a0,-15
   18a40:	03c00713          	li	a4,60
   18a44:	0007861b          	sext.w	a2,a5
   18a48:	02f74b63          	blt	a4,a5,18a7e <__multf3+0xc0>
   18a4c:	03d00593          	li	a1,61
   18a50:	0036041b          	addiw	s0,a2,3
   18a54:	40c5863b          	subw	a2,a1,a2
   18a58:	008917b3          	sll	a5,s2,s0
   18a5c:	00c4d633          	srl	a2,s1,a2
   18a60:	00f66933          	or	s2,a2,a5
   18a64:	00849433          	sll	s0,s1,s0
   18a68:	7a71                	lui	s4,0xffffc
   18a6a:	0a45                	addi	s4,s4,17
   18a6c:	40aa0a33          	sub	s4,s4,a0
   18a70:	bf4d                	j	18a22 <__multf3+0x64>
   18a72:	1d8010ef          	jal	ra,19c4a <__clzdi2>
   18a76:	2501                	sext.w	a0,a0
   18a78:	04050513          	addi	a0,a0,64
   18a7c:	b7c1                	j	18a3c <__multf3+0x7e>
   18a7e:	fc36079b          	addiw	a5,a2,-61
   18a82:	00f49933          	sll	s2,s1,a5
   18a86:	4401                	li	s0,0
   18a88:	b7c5                	j	18a68 <__multf3+0xaa>
   18a8a:	00a967b3          	or	a5,s2,a0
   18a8e:	c3c9                	beqz	a5,18b10 <__multf3+0x152>
   18a90:	01091793          	slli	a5,s2,0x10
   18a94:	4c0d                	li	s8,3
   18a96:	44c1                	li	s1,16
   18a98:	f807c6e3          	bltz	a5,18a24 <__multf3+0x66>
   18a9c:	6621                	lui	a2,0x8
   18a9e:	030b5513          	srli	a0,s6,0x30
   18aa2:	167d                	addi	a2,a2,-1
   18aa4:	59fd                	li	s3,-1
   18aa6:	00c577b3          	and	a5,a0,a2
   18aaa:	e45a                	sd	s6,8(sp)
   18aac:	0109d993          	srli	s3,s3,0x10
   18ab0:	0007851b          	sext.w	a0,a5
   18ab4:	013b79b3          	and	s3,s6,s3
   18ab8:	8766                	mv	a4,s9
   18aba:	03fb5b13          	srli	s6,s6,0x3f
   18abe:	cd29                	beqz	a0,18b18 <__multf3+0x15a>
   18ac0:	0ac50d63          	beq	a0,a2,18b7a <__multf3+0x1bc>
   18ac4:	4605                	li	a2,1
   18ac6:	03dcd693          	srli	a3,s9,0x3d
   18aca:	164e                	slli	a2,a2,0x33
   18acc:	7571                	lui	a0,0xffffc
   18ace:	098e                	slli	s3,s3,0x3
   18ad0:	8ed1                	or	a3,a3,a2
   18ad2:	0505                	addi	a0,a0,1
   18ad4:	0136e9b3          	or	s3,a3,s3
   18ad8:	003c9713          	slli	a4,s9,0x3
   18adc:	953e                	add	a0,a0,a5
   18ade:	4681                	li	a3,0
   18ae0:	002c1793          	slli	a5,s8,0x2
   18ae4:	8fd5                	or	a5,a5,a3
   18ae6:	9a2a                	add	s4,s4,a0
   18ae8:	17fd                	addi	a5,a5,-1
   18aea:	4639                	li	a2,14
   18aec:	016bc833          	xor	a6,s7,s6
   18af0:	001a0893          	addi	a7,s4,1 # ffffffffffffc001 <__global_pointer$+0xfffffffffffded29>
   18af4:	0cf66963          	bltu	a2,a5,18bc6 <__multf3+0x208>
   18af8:	666d                	lui	a2,0x1b
   18afa:	078a                	slli	a5,a5,0x2
   18afc:	88060613          	addi	a2,a2,-1920 # 1a880 <zeroes.4403+0x10>
   18b00:	97b2                	add	a5,a5,a2
   18b02:	439c                	lw	a5,0(a5)
   18b04:	8782                	jr	a5
   18b06:	4901                	li	s2,0
   18b08:	4401                	li	s0,0
   18b0a:	4a01                	li	s4,0
   18b0c:	4c05                	li	s8,1
   18b0e:	bf19                	j	18a24 <__multf3+0x66>
   18b10:	4901                	li	s2,0
   18b12:	4401                	li	s0,0
   18b14:	4c09                	li	s8,2
   18b16:	b739                	j	18a24 <__multf3+0x66>
   18b18:	0199e7b3          	or	a5,s3,s9
   18b1c:	cbad                	beqz	a5,18b8e <__multf3+0x1d0>
   18b1e:	04098163          	beqz	s3,18b60 <__multf3+0x1a2>
   18b22:	854e                	mv	a0,s3
   18b24:	126010ef          	jal	ra,19c4a <__clzdi2>
   18b28:	2501                	sext.w	a0,a0
   18b2a:	ff150713          	addi	a4,a0,-15 # ffffffffffffbff1 <__global_pointer$+0xfffffffffffded19>
   18b2e:	03c00693          	li	a3,60
   18b32:	0007079b          	sext.w	a5,a4
   18b36:	02e6cc63          	blt	a3,a4,18b6e <__multf3+0x1b0>
   18b3a:	03d00693          	li	a3,61
   18b3e:	0037871b          	addiw	a4,a5,3
   18b42:	40f687bb          	subw	a5,a3,a5
   18b46:	00e999b3          	sll	s3,s3,a4
   18b4a:	00fcd7b3          	srl	a5,s9,a5
   18b4e:	0137e9b3          	or	s3,a5,s3
   18b52:	00ec9733          	sll	a4,s9,a4
   18b56:	77f1                	lui	a5,0xffffc
   18b58:	07c5                	addi	a5,a5,17
   18b5a:	40a78533          	sub	a0,a5,a0
   18b5e:	b741                	j	18ade <__multf3+0x120>
   18b60:	8566                	mv	a0,s9
   18b62:	0e8010ef          	jal	ra,19c4a <__clzdi2>
   18b66:	2501                	sext.w	a0,a0
   18b68:	04050513          	addi	a0,a0,64
   18b6c:	bf7d                	j	18b2a <__multf3+0x16c>
   18b6e:	fc37899b          	addiw	s3,a5,-61
   18b72:	013c99b3          	sll	s3,s9,s3
   18b76:	4701                	li	a4,0
   18b78:	bff9                	j	18b56 <__multf3+0x198>
   18b7a:	0199e7b3          	or	a5,s3,s9
   18b7e:	cf89                	beqz	a5,18b98 <__multf3+0x1da>
   18b80:	01099793          	slli	a5,s3,0x10
   18b84:	468d                	li	a3,3
   18b86:	f407cde3          	bltz	a5,18ae0 <__multf3+0x122>
   18b8a:	44c1                	li	s1,16
   18b8c:	bf91                	j	18ae0 <__multf3+0x122>
   18b8e:	4981                	li	s3,0
   18b90:	4701                	li	a4,0
   18b92:	4501                	li	a0,0
   18b94:	4685                	li	a3,1
   18b96:	b7a9                	j	18ae0 <__multf3+0x122>
   18b98:	4981                	li	s3,0
   18b9a:	4701                	li	a4,0
   18b9c:	4689                	li	a3,2
   18b9e:	b789                	j	18ae0 <__multf3+0x122>
   18ba0:	4785                	li	a5,1
   18ba2:	02f79913          	slli	s2,a5,0x2f
   18ba6:	4401                	li	s0,0
   18ba8:	4801                	li	a6,0
   18baa:	4c0d                	li	s8,3
   18bac:	4789                	li	a5,2
   18bae:	44fc0663          	beq	s8,a5,18ffa <__multf3+0x63c>
   18bb2:	478d                	li	a5,3
   18bb4:	42fc0263          	beq	s8,a5,18fd8 <__multf3+0x61a>
   18bb8:	4785                	li	a5,1
   18bba:	1afc1d63          	bne	s8,a5,18d74 <__multf3+0x3b6>
   18bbe:	4701                	li	a4,0
   18bc0:	4501                	li	a0,0
   18bc2:	4781                	li	a5,0
   18bc4:	ac25                	j	18dfc <__multf3+0x43e>
   18bc6:	57fd                	li	a5,-1
   18bc8:	9381                	srli	a5,a5,0x20
   18bca:	00890333          	add	t1,s2,s0
   18bce:	01370e33          	add	t3,a4,s3
   18bd2:	02045e93          	srli	t4,s0,0x20
   18bd6:	02075693          	srli	a3,a4,0x20
   18bda:	00833f33          	sltu	t5,t1,s0
   18bde:	00ee3fb3          	sltu	t6,t3,a4
   18be2:	8c7d                	and	s0,s0,a5
   18be4:	8f7d                	and	a4,a4,a5
   18be6:	028705b3          	mul	a1,a4,s0
   18bea:	000f029b          	sext.w	t0,t5
   18bee:	000f839b          	sext.w	t2,t6
   18bf2:	02ee8733          	mul	a4,t4,a4
   18bf6:	02de87b3          	mul	a5,t4,a3
   18bfa:	028686b3          	mul	a3,a3,s0
   18bfe:	0205d413          	srli	s0,a1,0x20
   18c02:	96ba                	add	a3,a3,a4
   18c04:	9436                	add	s0,s0,a3
   18c06:	00e47563          	bleu	a4,s0,18c10 <__multf3+0x252>
   18c0a:	4705                	li	a4,1
   18c0c:	1702                	slli	a4,a4,0x20
   18c0e:	97ba                	add	a5,a5,a4
   18c10:	577d                	li	a4,-1
   18c12:	9301                	srli	a4,a4,0x20
   18c14:	02045e93          	srli	t4,s0,0x20
   18c18:	00e47633          	and	a2,s0,a4
   18c1c:	8df9                	and	a1,a1,a4
   18c1e:	02035513          	srli	a0,t1,0x20
   18c22:	020e5693          	srli	a3,t3,0x20
   18c26:	9ebe                	add	t4,t4,a5
   18c28:	00e377b3          	and	a5,t1,a4
   18c2c:	00ee7733          	and	a4,t3,a4
   18c30:	02e78433          	mul	s0,a5,a4
   18c34:	1602                	slli	a2,a2,0x20
   18c36:	962e                	add	a2,a2,a1
   18c38:	02e50733          	mul	a4,a0,a4
   18c3c:	02d50bb3          	mul	s7,a0,a3
   18c40:	02f686b3          	mul	a3,a3,a5
   18c44:	02045793          	srli	a5,s0,0x20
   18c48:	96ba                	add	a3,a3,a4
   18c4a:	97b6                	add	a5,a5,a3
   18c4c:	00e7f563          	bleu	a4,a5,18c56 <__multf3+0x298>
   18c50:	4705                	li	a4,1
   18c52:	1702                	slli	a4,a4,0x20
   18c54:	9bba                	add	s7,s7,a4
   18c56:	557d                	li	a0,-1
   18c58:	9101                	srli	a0,a0,0x20
   18c5a:	0207db13          	srli	s6,a5,0x20
   18c5e:	8fe9                	and	a5,a5,a0
   18c60:	1782                	slli	a5,a5,0x20
   18c62:	8c69                	and	s0,s0,a0
   18c64:	02095693          	srli	a3,s2,0x20
   18c68:	0209d593          	srli	a1,s3,0x20
   18c6c:	943e                	add	s0,s0,a5
   18c6e:	00a9f9b3          	and	s3,s3,a0
   18c72:	00a977b3          	and	a5,s2,a0
   18c76:	03378533          	mul	a0,a5,s3
   18c7a:	033689b3          	mul	s3,a3,s3
   18c7e:	02055913          	srli	s2,a0,0x20
   18c82:	02b686b3          	mul	a3,a3,a1
   18c86:	02f585b3          	mul	a1,a1,a5
   18c8a:	95ce                	add	a1,a1,s3
   18c8c:	992e                	add	s2,s2,a1
   18c8e:	01397563          	bleu	s3,s2,18c98 <__multf3+0x2da>
   18c92:	4785                	li	a5,1
   18c94:	1782                	slli	a5,a5,0x20
   18c96:	96be                	add	a3,a3,a5
   18c98:	577d                	li	a4,-1
   18c9a:	02095793          	srli	a5,s2,0x20
   18c9e:	9301                	srli	a4,a4,0x20
   18ca0:	8d79                	and	a0,a0,a4
   18ca2:	96be                	add	a3,a3,a5
   18ca4:	00e977b3          	and	a5,s2,a4
   18ca8:	01d40733          	add	a4,s0,t4
   18cac:	01d735b3          	sltu	a1,a4,t4
   18cb0:	1782                	slli	a5,a5,0x20
   18cb2:	97aa                	add	a5,a5,a0
   18cb4:	407003bb          	negw	t2,t2
   18cb8:	00bb0533          	add	a0,s6,a1
   18cbc:	955e                	add	a0,a0,s7
   18cbe:	405002bb          	negw	t0,t0
   18cc2:	00737333          	and	t1,t1,t2
   18cc6:	932a                	add	t1,t1,a0
   18cc8:	005e7e33          	and	t3,t3,t0
   18ccc:	00b535b3          	sltu	a1,a0,a1
   18cd0:	01ff7f33          	and	t5,t5,t6
   18cd4:	9e1a                	add	t3,t3,t1
   18cd6:	00a33533          	sltu	a0,t1,a0
   18cda:	95fa                	add	a1,a1,t5
   18cdc:	95aa                	add	a1,a1,a0
   18cde:	006e3333          	sltu	t1,t3,t1
   18ce2:	40c70f33          	sub	t5,a4,a2
   18ce6:	41de0533          	sub	a0,t3,t4
   18cea:	959a                	add	a1,a1,t1
   18cec:	01e73333          	sltu	t1,a4,t5
   18cf0:	00ae3933          	sltu	s2,t3,a0
   18cf4:	4281                	li	t0,0
   18cf6:	40650533          	sub	a0,a0,t1
   18cfa:	01e77663          	bleu	t5,a4,18d06 <__multf3+0x348>
   18cfe:	41ce8e33          	sub	t3,t4,t3
   18d02:	001e3293          	seqz	t0,t3
   18d06:	40ff0333          	sub	t1,t5,a5
   18d0a:	95b6                	add	a1,a1,a3
   18d0c:	006f3433          	sltu	s0,t5,t1
   18d10:	40d506b3          	sub	a3,a0,a3
   18d14:	0122ee33          	or	t3,t0,s2
   18d18:	00d53533          	sltu	a0,a0,a3
   18d1c:	40878433          	sub	s0,a5,s0
   18d20:	4901                	li	s2,0
   18d22:	006f7463          	bleu	t1,t5,18d2a <__multf3+0x36c>
   18d26:	0016b913          	seqz	s2,a3
   18d2a:	96a2                	add	a3,a3,s0
   18d2c:	00f6b7b3          	sltu	a5,a3,a5
   18d30:	97ae                	add	a5,a5,a1
   18d32:	00a96533          	or	a0,s2,a0
   18d36:	41c787b3          	sub	a5,a5,t3
   18d3a:	8f89                	sub	a5,a5,a0
   18d3c:	00d31413          	slli	s0,t1,0xd
   18d40:	07b6                	slli	a5,a5,0xd
   18d42:	0336d713          	srli	a4,a3,0x33
   18d46:	8c51                	or	s0,s0,a2
   18d48:	00e7e933          	or	s2,a5,a4
   18d4c:	00803433          	snez	s0,s0
   18d50:	03335513          	srli	a0,t1,0x33
   18d54:	8c49                	or	s0,s0,a0
   18d56:	06b6                	slli	a3,a3,0xd
   18d58:	00b91793          	slli	a5,s2,0xb
   18d5c:	8c55                	or	s0,s0,a3
   18d5e:	0607d063          	bgez	a5,18dbe <__multf3+0x400>
   18d62:	00145793          	srli	a5,s0,0x1
   18d66:	8805                	andi	s0,s0,1
   18d68:	03f91513          	slli	a0,s2,0x3f
   18d6c:	8c5d                	or	s0,s0,a5
   18d6e:	8c49                	or	s0,s0,a0
   18d70:	00195913          	srli	s2,s2,0x1
   18d74:	6791                	lui	a5,0x4
   18d76:	17fd                	addi	a5,a5,-1
   18d78:	97c6                	add	a5,a5,a7
   18d7a:	10f05463          	blez	a5,18e82 <__multf3+0x4c4>
   18d7e:	00747713          	andi	a4,s0,7
   18d82:	c739                	beqz	a4,18dd0 <__multf3+0x412>
   18d84:	4709                	li	a4,2
   18d86:	0014e493          	ori	s1,s1,1
   18d8a:	04ea8163          	beq	s5,a4,18dcc <__multf3+0x40e>
   18d8e:	470d                	li	a4,3
   18d90:	02ea8963          	beq	s5,a4,18dc2 <__multf3+0x404>
   18d94:	020a9e63          	bnez	s5,18dd0 <__multf3+0x412>
   18d98:	00f47713          	andi	a4,s0,15
   18d9c:	4691                	li	a3,4
   18d9e:	02d70963          	beq	a4,a3,18dd0 <__multf3+0x412>
   18da2:	00440713          	addi	a4,s0,4
   18da6:	00873433          	sltu	s0,a4,s0
   18daa:	9922                	add	s2,s2,s0
   18dac:	843a                	mv	s0,a4
   18dae:	a00d                	j	18dd0 <__multf3+0x412>
   18db0:	885e                	mv	a6,s7
   18db2:	bbed                	j	18bac <__multf3+0x1ee>
   18db4:	885a                	mv	a6,s6
   18db6:	894e                	mv	s2,s3
   18db8:	843a                	mv	s0,a4
   18dba:	8c36                	mv	s8,a3
   18dbc:	bbc5                	j	18bac <__multf3+0x1ee>
   18dbe:	88d2                	mv	a7,s4
   18dc0:	bf55                	j	18d74 <__multf3+0x3b6>
   18dc2:	00081763          	bnez	a6,18dd0 <__multf3+0x412>
   18dc6:	00840713          	addi	a4,s0,8
   18dca:	bff1                	j	18da6 <__multf3+0x3e8>
   18dcc:	fe081de3          	bnez	a6,18dc6 <__multf3+0x408>
   18dd0:	00b91713          	slli	a4,s2,0xb
   18dd4:	00075963          	bgez	a4,18de6 <__multf3+0x428>
   18dd8:	57fd                	li	a5,-1
   18dda:	17d2                	slli	a5,a5,0x34
   18ddc:	17fd                	addi	a5,a5,-1
   18dde:	00f97933          	and	s2,s2,a5
   18de2:	6791                	lui	a5,0x4
   18de4:	97c6                	add	a5,a5,a7
   18de6:	6721                	lui	a4,0x8
   18de8:	ffe70693          	addi	a3,a4,-2 # 7ffe <_start-0x80b2>
   18dec:	06f6c163          	blt	a3,a5,18e4e <__multf3+0x490>
   18df0:	800d                	srli	s0,s0,0x3
   18df2:	03d91513          	slli	a0,s2,0x3d
   18df6:	8d41                	or	a0,a0,s0
   18df8:	00395713          	srli	a4,s2,0x3
   18dfc:	56fd                	li	a3,-1
   18dfe:	65a2                	ld	a1,8(sp)
   18e00:	0106d613          	srli	a2,a3,0x10
   18e04:	8f71                	and	a4,a4,a2
   18e06:	03069613          	slli	a2,a3,0x30
   18e0a:	8df1                	and	a1,a1,a2
   18e0c:	8f4d                	or	a4,a4,a1
   18e0e:	6621                	lui	a2,0x8
   18e10:	f80015b7          	lui	a1,0xf8001
   18e14:	167d                	addi	a2,a2,-1
   18e16:	1592                	slli	a1,a1,0x24
   18e18:	8ff1                	and	a5,a5,a2
   18e1a:	15fd                	addi	a1,a1,-1
   18e1c:	8df9                	and	a1,a1,a4
   18e1e:	17c2                	slli	a5,a5,0x30
   18e20:	8fcd                	or	a5,a5,a1
   18e22:	0016d593          	srli	a1,a3,0x1
   18e26:	187e                	slli	a6,a6,0x3f
   18e28:	8dfd                	and	a1,a1,a5
   18e2a:	0105e5b3          	or	a1,a1,a6
   18e2e:	c099                	beqz	s1,18e34 <__multf3+0x476>
   18e30:	0014a073          	csrs	fflags,s1
   18e34:	70a6                	ld	ra,104(sp)
   18e36:	7406                	ld	s0,96(sp)
   18e38:	64e6                	ld	s1,88(sp)
   18e3a:	6946                	ld	s2,80(sp)
   18e3c:	69a6                	ld	s3,72(sp)
   18e3e:	6a06                	ld	s4,64(sp)
   18e40:	7ae2                	ld	s5,56(sp)
   18e42:	7b42                	ld	s6,48(sp)
   18e44:	7ba2                	ld	s7,40(sp)
   18e46:	7c02                	ld	s8,32(sp)
   18e48:	6ce2                	ld	s9,24(sp)
   18e4a:	6165                	addi	sp,sp,112
   18e4c:	8082                	ret
   18e4e:	4789                	li	a5,2
   18e50:	02fa8363          	beq	s5,a5,18e76 <__multf3+0x4b8>
   18e54:	460d                	li	a2,3
   18e56:	fff70793          	addi	a5,a4,-1
   18e5a:	00ca8663          	beq	s5,a2,18e66 <__multf3+0x4a8>
   18e5e:	000a9663          	bnez	s5,18e6a <__multf3+0x4ac>
   18e62:	4501                	li	a0,0
   18e64:	a029                	j	18e6e <__multf3+0x4b0>
   18e66:	fe080ee3          	beqz	a6,18e62 <__multf3+0x4a4>
   18e6a:	557d                	li	a0,-1
   18e6c:	87b6                	mv	a5,a3
   18e6e:	0054e493          	ori	s1,s1,5
   18e72:	872a                	mv	a4,a0
   18e74:	b761                	j	18dfc <__multf3+0x43e>
   18e76:	fe080ae3          	beqz	a6,18e6a <__multf3+0x4ac>
   18e7a:	4501                	li	a0,0
   18e7c:	fff70793          	addi	a5,a4,-1
   18e80:	b7fd                	j	18e6e <__multf3+0x4b0>
   18e82:	4585                	li	a1,1
   18e84:	e7b1                	bnez	a5,18ed0 <__multf3+0x512>
   18e86:	00747713          	andi	a4,s0,7
   18e8a:	86ca                	mv	a3,s2
   18e8c:	cf0d                	beqz	a4,18ec6 <__multf3+0x508>
   18e8e:	4709                	li	a4,2
   18e90:	0014e493          	ori	s1,s1,1
   18e94:	02ea8763          	beq	s5,a4,18ec2 <__multf3+0x504>
   18e98:	470d                	li	a4,3
   18e9a:	00ea8f63          	beq	s5,a4,18eb8 <__multf3+0x4fa>
   18e9e:	020a9463          	bnez	s5,18ec6 <__multf3+0x508>
   18ea2:	00f47713          	andi	a4,s0,15
   18ea6:	4611                	li	a2,4
   18ea8:	00c70f63          	beq	a4,a2,18ec6 <__multf3+0x508>
   18eac:	ffc43693          	sltiu	a3,s0,-4
   18eb0:	0016c693          	xori	a3,a3,1
   18eb4:	96ca                	add	a3,a3,s2
   18eb6:	a801                	j	18ec6 <__multf3+0x508>
   18eb8:	00081763          	bnez	a6,18ec6 <__multf3+0x508>
   18ebc:	ff843693          	sltiu	a3,s0,-8
   18ec0:	bfc5                	j	18eb0 <__multf3+0x4f2>
   18ec2:	fe081de3          	bnez	a6,18ebc <__multf3+0x4fe>
   18ec6:	92d1                	srli	a3,a3,0x34
   18ec8:	0016c693          	xori	a3,a3,1
   18ecc:	0016f593          	andi	a1,a3,1
   18ed0:	4705                	li	a4,1
   18ed2:	8f1d                	sub	a4,a4,a5
   18ed4:	07400793          	li	a5,116
   18ed8:	0ce7c363          	blt	a5,a4,18f9e <__multf3+0x5e0>
   18edc:	03f00793          	li	a5,63
   18ee0:	0007069b          	sext.w	a3,a4
   18ee4:	04e7ca63          	blt	a5,a4,18f38 <__multf3+0x57a>
   18ee8:	04000513          	li	a0,64
   18eec:	9d15                	subw	a0,a0,a3
   18eee:	00d457b3          	srl	a5,s0,a3
   18ef2:	00a91633          	sll	a2,s2,a0
   18ef6:	00a41433          	sll	s0,s0,a0
   18efa:	8e5d                	or	a2,a2,a5
   18efc:	00803433          	snez	s0,s0
   18f00:	8c51                	or	s0,s0,a2
   18f02:	00d957b3          	srl	a5,s2,a3
   18f06:	00747713          	andi	a4,s0,7
   18f0a:	c325                	beqz	a4,18f6a <__multf3+0x5ac>
   18f0c:	4709                	li	a4,2
   18f0e:	0014e493          	ori	s1,s1,1
   18f12:	04ea8a63          	beq	s5,a4,18f66 <__multf3+0x5a8>
   18f16:	470d                	li	a4,3
   18f18:	04ea8263          	beq	s5,a4,18f5c <__multf3+0x59e>
   18f1c:	040a9763          	bnez	s5,18f6a <__multf3+0x5ac>
   18f20:	00f47713          	andi	a4,s0,15
   18f24:	4691                	li	a3,4
   18f26:	04d70263          	beq	a4,a3,18f6a <__multf3+0x5ac>
   18f2a:	00440713          	addi	a4,s0,4
   18f2e:	00873433          	sltu	s0,a4,s0
   18f32:	97a2                	add	a5,a5,s0
   18f34:	843a                	mv	s0,a4
   18f36:	a815                	j	18f6a <__multf3+0x5ac>
   18f38:	04000513          	li	a0,64
   18f3c:	00d95633          	srl	a2,s2,a3
   18f40:	4781                	li	a5,0
   18f42:	00a70763          	beq	a4,a0,18f50 <__multf3+0x592>
   18f46:	08000793          	li	a5,128
   18f4a:	9f95                	subw	a5,a5,a3
   18f4c:	00f917b3          	sll	a5,s2,a5
   18f50:	8c5d                	or	s0,s0,a5
   18f52:	00803433          	snez	s0,s0
   18f56:	8c51                	or	s0,s0,a2
   18f58:	4781                	li	a5,0
   18f5a:	b775                	j	18f06 <__multf3+0x548>
   18f5c:	00081763          	bnez	a6,18f6a <__multf3+0x5ac>
   18f60:	00840713          	addi	a4,s0,8
   18f64:	b7e9                	j	18f2e <__multf3+0x570>
   18f66:	fe081de3          	bnez	a6,18f60 <__multf3+0x5a2>
   18f6a:	00c79713          	slli	a4,a5,0xc
   18f6e:	02075063          	bgez	a4,18f8e <__multf3+0x5d0>
   18f72:	0014e493          	ori	s1,s1,1
   18f76:	4701                	li	a4,0
   18f78:	4501                	li	a0,0
   18f7a:	4785                	li	a5,1
   18f7c:	e80580e3          	beqz	a1,18dfc <__multf3+0x43e>
   18f80:	0014f693          	andi	a3,s1,1
   18f84:	e6068ce3          	beqz	a3,18dfc <__multf3+0x43e>
   18f88:	0024e493          	ori	s1,s1,2
   18f8c:	bd85                	j	18dfc <__multf3+0x43e>
   18f8e:	03d79513          	slli	a0,a5,0x3d
   18f92:	800d                	srli	s0,s0,0x3
   18f94:	0037d713          	srli	a4,a5,0x3
   18f98:	8d41                	or	a0,a0,s0
   18f9a:	4781                	li	a5,0
   18f9c:	b7c5                	j	18f7c <__multf3+0x5be>
   18f9e:	01246533          	or	a0,s0,s2
   18fa2:	c11d                	beqz	a0,18fc8 <__multf3+0x60a>
   18fa4:	4789                	li	a5,2
   18fa6:	0014e493          	ori	s1,s1,1
   18faa:	02fa8363          	beq	s5,a5,18fd0 <__multf3+0x612>
   18fae:	478d                	li	a5,3
   18fb0:	00fa8763          	beq	s5,a5,18fbe <__multf3+0x600>
   18fb4:	4415                	li	s0,5
   18fb6:	000a8763          	beqz	s5,18fc4 <__multf3+0x606>
   18fba:	4405                	li	s0,1
   18fbc:	a021                	j	18fc4 <__multf3+0x606>
   18fbe:	4425                	li	s0,9
   18fc0:	fe081de3          	bnez	a6,18fba <__multf3+0x5fc>
   18fc4:	00345513          	srli	a0,s0,0x3
   18fc8:	0024e493          	ori	s1,s1,2
   18fcc:	4701                	li	a4,0
   18fce:	bed5                	j	18bc2 <__multf3+0x204>
   18fd0:	4425                	li	s0,9
   18fd2:	fe0819e3          	bnez	a6,18fc4 <__multf3+0x606>
   18fd6:	b7d5                	j	18fba <__multf3+0x5fc>
   18fd8:	4785                	li	a5,1
   18fda:	02f79713          	slli	a4,a5,0x2f
   18fde:	67a1                	lui	a5,0x8
   18fe0:	4501                	li	a0,0
   18fe2:	17fd                	addi	a5,a5,-1
   18fe4:	4801                	li	a6,0
   18fe6:	bd19                	j	18dfc <__multf3+0x43e>
   18fe8:	4785                	li	a5,1
   18fea:	02f79713          	slli	a4,a5,0x2f
   18fee:	67a1                	lui	a5,0x8
   18ff0:	4501                	li	a0,0
   18ff2:	17fd                	addi	a5,a5,-1
   18ff4:	4801                	li	a6,0
   18ff6:	44c1                	li	s1,16
   18ff8:	b511                	j	18dfc <__multf3+0x43e>
   18ffa:	67a1                	lui	a5,0x8
   18ffc:	4701                	li	a4,0
   18ffe:	4501                	li	a0,0
   19000:	17fd                	addi	a5,a5,-1
   19002:	bbed                	j	18dfc <__multf3+0x43e>

0000000000019004 <__subtf3>:
   19004:	7139                	addi	sp,sp,-64
   19006:	fc06                	sd	ra,56(sp)
   19008:	f822                	sd	s0,48(sp)
   1900a:	f426                	sd	s1,40(sp)
   1900c:	f04a                	sd	s2,32(sp)
   1900e:	ec4e                	sd	s3,24(sp)
   19010:	e852                	sd	s4,16(sp)
   19012:	00202973          	frrm	s2
   19016:	53fd                	li	t2,-1
   19018:	0103d393          	srli	t2,t2,0x10
   1901c:	62a1                	lui	t0,0x8
   1901e:	0305df13          	srli	t5,a1,0x30
   19022:	12fd                	addi	t0,t0,-1
   19024:	0306d893          	srli	a7,a3,0x30
   19028:	03f5d493          	srli	s1,a1,0x3f
   1902c:	e436                	sd	a3,8(sp)
   1902e:	0075f5b3          	and	a1,a1,t2
   19032:	03f6de93          	srli	t4,a3,0x3f
   19036:	0076f6b3          	and	a3,a3,t2
   1903a:	03d55713          	srli	a4,a0,0x3d
   1903e:	005f7f33          	and	t5,t5,t0
   19042:	058e                	slli	a1,a1,0x3
   19044:	00351313          	slli	t1,a0,0x3
   19048:	0058f8b3          	and	a7,a7,t0
   1904c:	068e                	slli	a3,a3,0x3
   1904e:	03d65513          	srli	a0,a2,0x3d
   19052:	2901                	sext.w	s2,s2
   19054:	89fa                	mv	s3,t5
   19056:	00b76e33          	or	t3,a4,a1
   1905a:	8fc6                	mv	t6,a7
   1905c:	8ec9                	or	a3,a3,a0
   1905e:	00361793          	slli	a5,a2,0x3
   19062:	00589563          	bne	a7,t0,1906c <__subtf3+0x68>
   19066:	00f6e733          	or	a4,a3,a5
   1906a:	e319                	bnez	a4,19070 <__subtf3+0x6c>
   1906c:	001ece93          	xori	t4,t4,1
   19070:	411f073b          	subw	a4,t5,a7
   19074:	65a1                	lui	a1,0x8
   19076:	0007081b          	sext.w	a6,a4
   1907a:	fff58613          	addi	a2,a1,-1 # 7fff <_start-0x80b1>
   1907e:	389e9163          	bne	t4,s1,19400 <__subtf3+0x3fc>
   19082:	0f005663          	blez	a6,1916e <__subtf3+0x16a>
   19086:	06089f63          	bnez	a7,19104 <__subtf3+0x100>
   1908a:	00f6e5b3          	or	a1,a3,a5
   1908e:	e591                	bnez	a1,1909a <__subtf3+0x96>
   19090:	04cf0f63          	beq	t5,a2,190ee <__subtf3+0xea>
   19094:	86f2                	mv	a3,t3
   19096:	8ffa                	mv	t6,t5
   19098:	ade1                	j	19770 <__subtf3+0x76c>
   1909a:	fff7081b          	addiw	a6,a4,-1
   1909e:	04081663          	bnez	a6,190ea <__subtf3+0xe6>
   190a2:	979a                	add	a5,a5,t1
   190a4:	0067b333          	sltu	t1,a5,t1
   190a8:	96f2                	add	a3,a3,t3
   190aa:	969a                	add	a3,a3,t1
   190ac:	8ffa                	mv	t6,t5
   190ae:	833e                	mv	t1,a5
   190b0:	00c69793          	slli	a5,a3,0xc
   190b4:	6a07de63          	bgez	a5,19770 <__subtf3+0x76c>
   190b8:	6721                	lui	a4,0x8
   190ba:	001f8993          	addi	s3,t6,1
   190be:	fff70793          	addi	a5,a4,-1 # 7fff <_start-0x80b1>
   190c2:	30f98b63          	beq	s3,a5,193d8 <__subtf3+0x3d4>
   190c6:	55fd                	li	a1,-1
   190c8:	15ce                	slli	a1,a1,0x33
   190ca:	15fd                	addi	a1,a1,-1
   190cc:	00135793          	srli	a5,t1,0x1
   190d0:	8df5                	and	a1,a1,a3
   190d2:	00137313          	andi	t1,t1,1
   190d6:	03f59693          	slli	a3,a1,0x3f
   190da:	0067e333          	or	t1,a5,t1
   190de:	0066e7b3          	or	a5,a3,t1
   190e2:	0015d693          	srli	a3,a1,0x1
   190e6:	4801                	li	a6,0
   190e8:	ac79                	j	19386 <__subtf3+0x382>
   190ea:	02cf1263          	bne	t5,a2,1910e <__subtf3+0x10a>
   190ee:	006e67b3          	or	a5,t3,t1
   190f2:	6c078263          	beqz	a5,197b6 <__subtf3+0x7b2>
   190f6:	00de1793          	slli	a5,t3,0xd
   190fa:	86f2                	mv	a3,t3
   190fc:	6a07df63          	bgez	a5,197ba <__subtf3+0x7b6>
   19100:	879a                	mv	a5,t1
   19102:	b7d5                	j	190e6 <__subtf3+0xe2>
   19104:	fecf05e3          	beq	t5,a2,190ee <__subtf3+0xea>
   19108:	4705                	li	a4,1
   1910a:	174e                	slli	a4,a4,0x33
   1910c:	8ed9                	or	a3,a3,a4
   1910e:	07400713          	li	a4,116
   19112:	05074a63          	blt	a4,a6,19166 <__subtf3+0x162>
   19116:	03f00713          	li	a4,63
   1911a:	03074363          	blt	a4,a6,19140 <__subtf3+0x13c>
   1911e:	04000613          	li	a2,64
   19122:	4106063b          	subw	a2,a2,a6
   19126:	00c69733          	sll	a4,a3,a2
   1912a:	0107d5b3          	srl	a1,a5,a6
   1912e:	00c797b3          	sll	a5,a5,a2
   19132:	8f4d                	or	a4,a4,a1
   19134:	00f037b3          	snez	a5,a5
   19138:	8fd9                	or	a5,a5,a4
   1913a:	0106d6b3          	srl	a3,a3,a6
   1913e:	b795                	j	190a2 <__subtf3+0x9e>
   19140:	04000593          	li	a1,64
   19144:	0106d733          	srl	a4,a3,a6
   19148:	4601                	li	a2,0
   1914a:	00b80863          	beq	a6,a1,1915a <__subtf3+0x156>
   1914e:	08000613          	li	a2,128
   19152:	4106083b          	subw	a6,a2,a6
   19156:	01069633          	sll	a2,a3,a6
   1915a:	8fd1                	or	a5,a5,a2
   1915c:	00f037b3          	snez	a5,a5
   19160:	8fd9                	or	a5,a5,a4
   19162:	4681                	li	a3,0
   19164:	bf3d                	j	190a2 <__subtf3+0x9e>
   19166:	8edd                	or	a3,a3,a5
   19168:	00d037b3          	snez	a5,a3
   1916c:	bfdd                	j	19162 <__subtf3+0x15e>
   1916e:	0c080463          	beqz	a6,19236 <__subtf3+0x232>
   19172:	060f1f63          	bnez	t5,191f0 <__subtf3+0x1ec>
   19176:	006e65b3          	or	a1,t3,t1
   1917a:	e185                	bnez	a1,1919a <__subtf3+0x196>
   1917c:	833e                	mv	t1,a5
   1917e:	5ec89963          	bne	a7,a2,19770 <__subtf3+0x76c>
   19182:	00f6e733          	or	a4,a3,a5
   19186:	62070363          	beqz	a4,197ac <__subtf3+0x7a8>
   1918a:	00d69713          	slli	a4,a3,0xd
   1918e:	89c6                	mv	s3,a7
   19190:	4801                	li	a6,0
   19192:	1e074a63          	bltz	a4,19386 <__subtf3+0x382>
   19196:	4741                	li	a4,16
   19198:	a0c5                	j	19278 <__subtf3+0x274>
   1919a:	55fd                	li	a1,-1
   1919c:	00b81863          	bne	a6,a1,191ac <__subtf3+0x1a8>
   191a0:	933e                	add	t1,t1,a5
   191a2:	96f2                	add	a3,a3,t3
   191a4:	00f337b3          	sltu	a5,t1,a5
   191a8:	96be                	add	a3,a3,a5
   191aa:	b719                	j	190b0 <__subtf3+0xac>
   191ac:	fff74713          	not	a4,a4
   191b0:	fcc889e3          	beq	a7,a2,19182 <__subtf3+0x17e>
   191b4:	07400613          	li	a2,116
   191b8:	06e64a63          	blt	a2,a4,1922c <__subtf3+0x228>
   191bc:	03f00613          	li	a2,63
   191c0:	04e64163          	blt	a2,a4,19202 <__subtf3+0x1fe>
   191c4:	04000513          	li	a0,64
   191c8:	9d19                	subw	a0,a0,a4
   191ca:	00e35633          	srl	a2,t1,a4
   191ce:	00ae1433          	sll	s0,t3,a0
   191d2:	00a31333          	sll	t1,t1,a0
   191d6:	8c51                	or	s0,s0,a2
   191d8:	00603333          	snez	t1,t1
   191dc:	00646333          	or	t1,s0,t1
   191e0:	00ee5733          	srl	a4,t3,a4
   191e4:	933e                	add	t1,t1,a5
   191e6:	9736                	add	a4,a4,a3
   191e8:	00f336b3          	sltu	a3,t1,a5
   191ec:	96ba                	add	a3,a3,a4
   191ee:	b5c9                	j	190b0 <__subtf3+0xac>
   191f0:	f8c889e3          	beq	a7,a2,19182 <__subtf3+0x17e>
   191f4:	4605                	li	a2,1
   191f6:	164e                	slli	a2,a2,0x33
   191f8:	40e0073b          	negw	a4,a4
   191fc:	00ce6e33          	or	t3,t3,a2
   19200:	bf55                	j	191b4 <__subtf3+0x1b0>
   19202:	04000613          	li	a2,64
   19206:	00ee5433          	srl	s0,t3,a4
   1920a:	4501                	li	a0,0
   1920c:	00c70863          	beq	a4,a2,1921c <__subtf3+0x218>
   19210:	08000513          	li	a0,128
   19214:	40e5073b          	subw	a4,a0,a4
   19218:	00ee1533          	sll	a0,t3,a4
   1921c:	00656333          	or	t1,a0,t1
   19220:	00603333          	snez	t1,t1
   19224:	00646333          	or	t1,s0,t1
   19228:	4701                	li	a4,0
   1922a:	bf6d                	j	191e4 <__subtf3+0x1e0>
   1922c:	006e6733          	or	a4,t3,t1
   19230:	00e03333          	snez	t1,a4
   19234:	bfd5                	j	19228 <__subtf3+0x224>
   19236:	001f0f93          	addi	t6,t5,1 # 10001 <_start-0xaf>
   1923a:	00cff733          	and	a4,t6,a2
   1923e:	4e85                	li	t4,1
   19240:	12eec363          	blt	t4,a4,19366 <__subtf3+0x362>
   19244:	006e65b3          	or	a1,t3,t1
   19248:	040f1463          	bnez	t5,19290 <__subtf3+0x28c>
   1924c:	52058a63          	beqz	a1,19780 <__subtf3+0x77c>
   19250:	00f6e733          	or	a4,a3,a5
   19254:	52070a63          	beqz	a4,19788 <__subtf3+0x784>
   19258:	979a                	add	a5,a5,t1
   1925a:	96f2                	add	a3,a3,t3
   1925c:	0067b333          	sltu	t1,a5,t1
   19260:	969a                	add	a3,a3,t1
   19262:	1ece                	slli	t4,t4,0x33
   19264:	01d6feb3          	and	t4,a3,t4
   19268:	500e8c63          	beqz	t4,19780 <__subtf3+0x77c>
   1926c:	577d                	li	a4,-1
   1926e:	174e                	slli	a4,a4,0x33
   19270:	177d                	addi	a4,a4,-1
   19272:	8ef9                	and	a3,a3,a4
   19274:	4985                	li	s3,1
   19276:	4701                	li	a4,0
   19278:	0077f613          	andi	a2,a5,7
   1927c:	12061263          	bnez	a2,193a0 <__subtf3+0x39c>
   19280:	04080863          	beqz	a6,192d0 <__subtf3+0x2cc>
   19284:	00177613          	andi	a2,a4,1
   19288:	c621                	beqz	a2,192d0 <__subtf3+0x2cc>
   1928a:	00276713          	ori	a4,a4,2
   1928e:	a089                	j	192d0 <__subtf3+0x2cc>
   19290:	0ccf1663          	bne	t5,a2,1935c <__subtf3+0x358>
   19294:	56058d63          	beqz	a1,1980e <__subtf3+0x80a>
   19298:	032e9713          	slli	a4,t4,0x32
   1929c:	00ee7733          	and	a4,t3,a4
   192a0:	00173713          	seqz	a4,a4
   192a4:	0712                	slli	a4,a4,0x4
   192a6:	01e89c63          	bne	a7,t5,192be <__subtf3+0x2ba>
   192aa:	00f6e633          	or	a2,a3,a5
   192ae:	c611                	beqz	a2,192ba <__subtf3+0x2b6>
   192b0:	00d69613          	slli	a2,a3,0xd
   192b4:	00064363          	bltz	a2,192ba <__subtf3+0x2b6>
   192b8:	4741                	li	a4,16
   192ba:	3c058663          	beqz	a1,19686 <__subtf3+0x682>
   192be:	8edd                	or	a3,a3,a5
   192c0:	3c068163          	beqz	a3,19682 <__subtf3+0x67e>
   192c4:	4685                	li	a3,1
   192c6:	69a1                	lui	s3,0x8
   192c8:	16ca                	slli	a3,a3,0x32
   192ca:	4781                	li	a5,0
   192cc:	19fd                	addi	s3,s3,-1
   192ce:	4481                	li	s1,0
   192d0:	00c69613          	slli	a2,a3,0xc
   192d4:	00065c63          	bgez	a2,192ec <__subtf3+0x2e8>
   192d8:	6621                	lui	a2,0x8
   192da:	0985                	addi	s3,s3,1
   192dc:	fff60593          	addi	a1,a2,-1 # 7fff <_start-0x80b1>
   192e0:	50b98063          	beq	s3,a1,197e0 <__subtf3+0x7dc>
   192e4:	567d                	li	a2,-1
   192e6:	164e                	slli	a2,a2,0x33
   192e8:	167d                	addi	a2,a2,-1
   192ea:	8ef1                	and	a3,a3,a2
   192ec:	838d                	srli	a5,a5,0x3
   192ee:	03d69513          	slli	a0,a3,0x3d
   192f2:	8d5d                	or	a0,a0,a5
   192f4:	67a1                	lui	a5,0x8
   192f6:	17fd                	addi	a5,a5,-1
   192f8:	828d                	srli	a3,a3,0x3
   192fa:	00f99963          	bne	s3,a5,1930c <__subtf3+0x308>
   192fe:	8d55                	or	a0,a0,a3
   19300:	4681                	li	a3,0
   19302:	c509                	beqz	a0,1930c <__subtf3+0x308>
   19304:	4685                	li	a3,1
   19306:	16be                	slli	a3,a3,0x2f
   19308:	4501                	li	a0,0
   1930a:	4481                	li	s1,0
   1930c:	58fd                	li	a7,-1
   1930e:	0108d813          	srli	a6,a7,0x10
   19312:	0106f833          	and	a6,a3,a6
   19316:	66a2                	ld	a3,8(sp)
   19318:	03089593          	slli	a1,a7,0x30
   1931c:	0018d893          	srli	a7,a7,0x1
   19320:	8df5                	and	a1,a1,a3
   19322:	0105e6b3          	or	a3,a1,a6
   19326:	65a1                	lui	a1,0x8
   19328:	15fd                	addi	a1,a1,-1
   1932a:	00b9f9b3          	and	s3,s3,a1
   1932e:	f80015b7          	lui	a1,0xf8001
   19332:	1592                	slli	a1,a1,0x24
   19334:	15fd                	addi	a1,a1,-1
   19336:	19c2                	slli	s3,s3,0x30
   19338:	8df5                	and	a1,a1,a3
   1933a:	0135e5b3          	or	a1,a1,s3
   1933e:	14fe                	slli	s1,s1,0x3f
   19340:	0115f5b3          	and	a1,a1,a7
   19344:	8dc5                	or	a1,a1,s1
   19346:	c319                	beqz	a4,1934c <__subtf3+0x348>
   19348:	00172073          	csrs	fflags,a4
   1934c:	70e2                	ld	ra,56(sp)
   1934e:	7442                	ld	s0,48(sp)
   19350:	74a2                	ld	s1,40(sp)
   19352:	7902                	ld	s2,32(sp)
   19354:	69e2                	ld	s3,24(sp)
   19356:	6a42                	ld	s4,16(sp)
   19358:	6121                	addi	sp,sp,64
   1935a:	8082                	ret
   1935c:	4701                	li	a4,0
   1935e:	f4c89ee3          	bne	a7,a2,192ba <__subtf3+0x2b6>
   19362:	4701                	li	a4,0
   19364:	b799                	j	192aa <__subtf3+0x2a6>
   19366:	02cf8263          	beq	t6,a2,1938a <__subtf3+0x386>
   1936a:	979a                	add	a5,a5,t1
   1936c:	00de0733          	add	a4,t3,a3
   19370:	0067b6b3          	sltu	a3,a5,t1
   19374:	00d70333          	add	t1,a4,a3
   19378:	03f31693          	slli	a3,t1,0x3f
   1937c:	8385                	srli	a5,a5,0x1
   1937e:	8fd5                	or	a5,a5,a3
   19380:	89fe                	mv	s3,t6
   19382:	00135693          	srli	a3,t1,0x1
   19386:	4701                	li	a4,0
   19388:	bdc5                	j	19278 <__subtf3+0x274>
   1938a:	04090563          	beqz	s2,193d4 <__subtf3+0x3d0>
   1938e:	478d                	li	a5,3
   19390:	02f91e63          	bne	s2,a5,193cc <__subtf3+0x3c8>
   19394:	c0a1                	beqz	s1,193d4 <__subtf3+0x3d0>
   19396:	56fd                	li	a3,-1
   19398:	57fd                	li	a5,-1
   1939a:	ffe58993          	addi	s3,a1,-2 # fffffffff8000ffe <__global_pointer$+0xfffffffff7fe3d26>
   1939e:	4715                	li	a4,5
   193a0:	4609                	li	a2,2
   193a2:	00176713          	ori	a4,a4,1
   193a6:	42c90a63          	beq	s2,a2,197da <__subtf3+0x7d6>
   193aa:	460d                	li	a2,3
   193ac:	42c90263          	beq	s2,a2,197d0 <__subtf3+0x7cc>
   193b0:	ec0918e3          	bnez	s2,19280 <__subtf3+0x27c>
   193b4:	00f7f613          	andi	a2,a5,15
   193b8:	4591                	li	a1,4
   193ba:	ecb603e3          	beq	a2,a1,19280 <__subtf3+0x27c>
   193be:	00478593          	addi	a1,a5,4 # 8004 <_start-0x80ac>
   193c2:	00f5b7b3          	sltu	a5,a1,a5
   193c6:	96be                	add	a3,a3,a5
   193c8:	87ae                	mv	a5,a1
   193ca:	bd5d                	j	19280 <__subtf3+0x27c>
   193cc:	4789                	li	a5,2
   193ce:	fcf914e3          	bne	s2,a5,19396 <__subtf3+0x392>
   193d2:	d0f1                	beqz	s1,19396 <__subtf3+0x392>
   193d4:	89fe                	mv	s3,t6
   193d6:	a00d                	j	193f8 <__subtf3+0x3f4>
   193d8:	02090063          	beqz	s2,193f8 <__subtf3+0x3f4>
   193dc:	478d                	li	a5,3
   193de:	00f91963          	bne	s2,a5,193f0 <__subtf3+0x3ec>
   193e2:	c899                	beqz	s1,193f8 <__subtf3+0x3f4>
   193e4:	56fd                	li	a3,-1
   193e6:	57fd                	li	a5,-1
   193e8:	ffe70993          	addi	s3,a4,-2
   193ec:	4801                	li	a6,0
   193ee:	bf45                	j	1939e <__subtf3+0x39a>
   193f0:	4789                	li	a5,2
   193f2:	fef919e3          	bne	s2,a5,193e4 <__subtf3+0x3e0>
   193f6:	d4fd                	beqz	s1,193e4 <__subtf3+0x3e0>
   193f8:	4681                	li	a3,0
   193fa:	4781                	li	a5,0
   193fc:	4715                	li	a4,5
   193fe:	bdc9                	j	192d0 <__subtf3+0x2cc>
   19400:	0b005863          	blez	a6,194b0 <__subtf3+0x4ac>
   19404:	06089963          	bnez	a7,19476 <__subtf3+0x472>
   19408:	00f6e5b3          	or	a1,a3,a5
   1940c:	c80582e3          	beqz	a1,19090 <__subtf3+0x8c>
   19410:	fff7081b          	addiw	a6,a4,-1
   19414:	02081663          	bnez	a6,19440 <__subtf3+0x43c>
   19418:	40f307b3          	sub	a5,t1,a5
   1941c:	00f33333          	sltu	t1,t1,a5
   19420:	40de06b3          	sub	a3,t3,a3
   19424:	406686b3          	sub	a3,a3,t1
   19428:	8ffa                	mv	t6,t5
   1942a:	833e                	mv	t1,a5
   1942c:	00c69793          	slli	a5,a3,0xc
   19430:	3407d063          	bgez	a5,19770 <__subtf3+0x76c>
   19434:	547d                	li	s0,-1
   19436:	8035                	srli	s0,s0,0xd
   19438:	8c75                	and	s0,s0,a3
   1943a:	8a1a                	mv	s4,t1
   1943c:	89fe                	mv	s3,t6
   1943e:	ac95                	j	196b2 <__subtf3+0x6ae>
   19440:	cacf07e3          	beq	t5,a2,190ee <__subtf3+0xea>
   19444:	07400713          	li	a4,116
   19448:	07074063          	blt	a4,a6,194a8 <__subtf3+0x4a4>
   1944c:	03f00713          	li	a4,63
   19450:	03074963          	blt	a4,a6,19482 <__subtf3+0x47e>
   19454:	04000613          	li	a2,64
   19458:	4106063b          	subw	a2,a2,a6
   1945c:	00c69733          	sll	a4,a3,a2
   19460:	0107d5b3          	srl	a1,a5,a6
   19464:	00c797b3          	sll	a5,a5,a2
   19468:	8f4d                	or	a4,a4,a1
   1946a:	00f037b3          	snez	a5,a5
   1946e:	8fd9                	or	a5,a5,a4
   19470:	0106d6b3          	srl	a3,a3,a6
   19474:	b755                	j	19418 <__subtf3+0x414>
   19476:	c6cf0ce3          	beq	t5,a2,190ee <__subtf3+0xea>
   1947a:	4705                	li	a4,1
   1947c:	174e                	slli	a4,a4,0x33
   1947e:	8ed9                	or	a3,a3,a4
   19480:	b7d1                	j	19444 <__subtf3+0x440>
   19482:	04000593          	li	a1,64
   19486:	0106d733          	srl	a4,a3,a6
   1948a:	4601                	li	a2,0
   1948c:	00b80863          	beq	a6,a1,1949c <__subtf3+0x498>
   19490:	08000613          	li	a2,128
   19494:	4106083b          	subw	a6,a2,a6
   19498:	01069633          	sll	a2,a3,a6
   1949c:	8fd1                	or	a5,a5,a2
   1949e:	00f037b3          	snez	a5,a5
   194a2:	8fd9                	or	a5,a5,a4
   194a4:	4681                	li	a3,0
   194a6:	bf8d                	j	19418 <__subtf3+0x414>
   194a8:	8edd                	or	a3,a3,a5
   194aa:	00d037b3          	snez	a5,a3
   194ae:	bfdd                	j	194a4 <__subtf3+0x4a0>
   194b0:	0c080663          	beqz	a6,1957c <__subtf3+0x578>
   194b4:	080f1163          	bnez	t5,19536 <__subtf3+0x532>
   194b8:	006e65b3          	or	a1,t3,t1
   194bc:	ed81                	bnez	a1,194d4 <__subtf3+0x4d0>
   194be:	2ac89e63          	bne	a7,a2,1977a <__subtf3+0x776>
   194c2:	00f6e733          	or	a4,a3,a5
   194c6:	2e070d63          	beqz	a4,197c0 <__subtf3+0x7bc>
   194ca:	00d69713          	slli	a4,a3,0xd
   194ce:	89c6                	mv	s3,a7
   194d0:	84f6                	mv	s1,t4
   194d2:	b97d                	j	19190 <__subtf3+0x18c>
   194d4:	55fd                	li	a1,-1
   194d6:	00b81b63          	bne	a6,a1,194ec <__subtf3+0x4e8>
   194da:	40678333          	sub	t1,a5,t1
   194de:	41c686b3          	sub	a3,a3,t3
   194e2:	0067b7b3          	sltu	a5,a5,t1
   194e6:	8e9d                	sub	a3,a3,a5
   194e8:	84f6                	mv	s1,t4
   194ea:	b789                	j	1942c <__subtf3+0x428>
   194ec:	fff74713          	not	a4,a4
   194f0:	fcc889e3          	beq	a7,a2,194c2 <__subtf3+0x4be>
   194f4:	07400613          	li	a2,116
   194f8:	06e64d63          	blt	a2,a4,19572 <__subtf3+0x56e>
   194fc:	03f00613          	li	a2,63
   19500:	04e64463          	blt	a2,a4,19548 <__subtf3+0x544>
   19504:	04000513          	li	a0,64
   19508:	9d19                	subw	a0,a0,a4
   1950a:	00e35633          	srl	a2,t1,a4
   1950e:	00ae1433          	sll	s0,t3,a0
   19512:	00a31333          	sll	t1,t1,a0
   19516:	8c51                	or	s0,s0,a2
   19518:	00603333          	snez	t1,t1
   1951c:	00646333          	or	t1,s0,t1
   19520:	00ee5733          	srl	a4,t3,a4
   19524:	40678333          	sub	t1,a5,t1
   19528:	40e68733          	sub	a4,a3,a4
   1952c:	0067b6b3          	sltu	a3,a5,t1
   19530:	40d706b3          	sub	a3,a4,a3
   19534:	bf55                	j	194e8 <__subtf3+0x4e4>
   19536:	f8c886e3          	beq	a7,a2,194c2 <__subtf3+0x4be>
   1953a:	4605                	li	a2,1
   1953c:	164e                	slli	a2,a2,0x33
   1953e:	40e0073b          	negw	a4,a4
   19542:	00ce6e33          	or	t3,t3,a2
   19546:	b77d                	j	194f4 <__subtf3+0x4f0>
   19548:	04000613          	li	a2,64
   1954c:	00ee5433          	srl	s0,t3,a4
   19550:	4501                	li	a0,0
   19552:	00c70863          	beq	a4,a2,19562 <__subtf3+0x55e>
   19556:	08000513          	li	a0,128
   1955a:	40e5073b          	subw	a4,a0,a4
   1955e:	00ee1533          	sll	a0,t3,a4
   19562:	00656333          	or	t1,a0,t1
   19566:	00603333          	snez	t1,t1
   1956a:	00646333          	or	t1,s0,t1
   1956e:	4701                	li	a4,0
   19570:	bf55                	j	19524 <__subtf3+0x520>
   19572:	006e6733          	or	a4,t3,t1
   19576:	00e03333          	snez	t1,a4
   1957a:	bfd5                	j	1956e <__subtf3+0x56a>
   1957c:	001f0713          	addi	a4,t5,1
   19580:	8f71                	and	a4,a4,a2
   19582:	4585                	li	a1,1
   19584:	10e5c463          	blt	a1,a4,1968c <__subtf3+0x688>
   19588:	006e6fb3          	or	t6,t3,t1
   1958c:	00f6e533          	or	a0,a3,a5
   19590:	0a0f1463          	bnez	t5,19638 <__subtf3+0x634>
   19594:	060f9363          	bnez	t6,195fa <__subtf3+0x5f6>
   19598:	1e051663          	bnez	a0,19784 <__subtf3+0x780>
   1959c:	ffe90493          	addi	s1,s2,-2
   195a0:	0014b493          	seqz	s1,s1
   195a4:	4681                	li	a3,0
   195a6:	4301                	li	t1,0
   195a8:	00d367b3          	or	a5,t1,a3
   195ac:	20078f63          	beqz	a5,197ca <__subtf3+0x7c6>
   195b0:	03f35793          	srli	a5,t1,0x3f
   195b4:	00169813          	slli	a6,a3,0x1
   195b8:	983e                	add	a6,a6,a5
   195ba:	00131793          	slli	a5,t1,0x1
   195be:	0077f613          	andi	a2,a5,7
   195c2:	4701                	li	a4,0
   195c4:	c215                	beqz	a2,195e8 <__subtf3+0x5e4>
   195c6:	4709                	li	a4,2
   195c8:	1ce90e63          	beq	s2,a4,197a4 <__subtf3+0x7a0>
   195cc:	470d                	li	a4,3
   195ce:	1ce90263          	beq	s2,a4,19792 <__subtf3+0x78e>
   195d2:	4705                	li	a4,1
   195d4:	00091a63          	bnez	s2,195e8 <__subtf3+0x5e4>
   195d8:	00f7f613          	andi	a2,a5,15
   195dc:	4591                	li	a1,4
   195de:	4705                	li	a4,1
   195e0:	ffc7b793          	sltiu	a5,a5,-4
   195e4:	1ab61c63          	bne	a2,a1,1979c <__subtf3+0x798>
   195e8:	03485813          	srli	a6,a6,0x34
   195ec:	00184813          	xori	a6,a6,1
   195f0:	00187813          	andi	a6,a6,1
   195f4:	879a                	mv	a5,t1
   195f6:	4981                	li	s3,0
   195f8:	b141                	j	19278 <__subtf3+0x274>
   195fa:	18050763          	beqz	a0,19788 <__subtf3+0x784>
   195fe:	40f30633          	sub	a2,t1,a5
   19602:	40de0733          	sub	a4,t3,a3
   19606:	00c33533          	sltu	a0,t1,a2
   1960a:	8f09                	sub	a4,a4,a0
   1960c:	15ce                	slli	a1,a1,0x33
   1960e:	8df9                	and	a1,a1,a4
   19610:	c991                	beqz	a1,19624 <__subtf3+0x620>
   19612:	40678333          	sub	t1,a5,t1
   19616:	41c686b3          	sub	a3,a3,t3
   1961a:	0067b7b3          	sltu	a5,a5,t1
   1961e:	8e9d                	sub	a3,a3,a5
   19620:	84f6                	mv	s1,t4
   19622:	b759                	j	195a8 <__subtf3+0x5a4>
   19624:	00e66333          	or	t1,a2,a4
   19628:	16031263          	bnez	t1,1978c <__subtf3+0x788>
   1962c:	ffe90493          	addi	s1,s2,-2
   19630:	0014b493          	seqz	s1,s1
   19634:	4681                	li	a3,0
   19636:	bf8d                	j	195a8 <__subtf3+0x5a4>
   19638:	02cf1e63          	bne	t5,a2,19674 <__subtf3+0x670>
   1963c:	1c0f8563          	beqz	t6,19806 <__subtf3+0x802>
   19640:	15ca                	slli	a1,a1,0x32
   19642:	00be75b3          	and	a1,t3,a1
   19646:	0015b713          	seqz	a4,a1
   1964a:	0712                	slli	a4,a4,0x4
   1964c:	03e89963          	bne	a7,t5,1967e <__subtf3+0x67a>
   19650:	c511                	beqz	a0,1965c <__subtf3+0x658>
   19652:	00d69613          	slli	a2,a3,0xd
   19656:	00064363          	bltz	a2,1965c <__subtf3+0x658>
   1965a:	4741                	li	a4,16
   1965c:	020f9163          	bnez	t6,1967e <__subtf3+0x67a>
   19660:	84f6                	mv	s1,t4
   19662:	e115                	bnez	a0,19686 <__subtf3+0x682>
   19664:	4685                	li	a3,1
   19666:	69a1                	lui	s3,0x8
   19668:	4781                	li	a5,0
   1966a:	16ca                	slli	a3,a3,0x32
   1966c:	19fd                	addi	s3,s3,-1
   1966e:	4481                	li	s1,0
   19670:	4741                	li	a4,16
   19672:	b9b9                	j	192d0 <__subtf3+0x2cc>
   19674:	4701                	li	a4,0
   19676:	fec893e3          	bne	a7,a2,1965c <__subtf3+0x658>
   1967a:	4701                	li	a4,0
   1967c:	bfd1                	j	19650 <__subtf3+0x64c>
   1967e:	c40513e3          	bnez	a0,192c4 <__subtf3+0x2c0>
   19682:	86f2                	mv	a3,t3
   19684:	879a                	mv	a5,t1
   19686:	69a1                	lui	s3,0x8
   19688:	19fd                	addi	s3,s3,-1
   1968a:	b6fd                	j	19278 <__subtf3+0x274>
   1968c:	40f30a33          	sub	s4,t1,a5
   19690:	40de0433          	sub	s0,t3,a3
   19694:	01433733          	sltu	a4,t1,s4
   19698:	8c19                	sub	s0,s0,a4
   1969a:	15ce                	slli	a1,a1,0x33
   1969c:	8de1                	and	a1,a1,s0
   1969e:	cdb5                	beqz	a1,1971a <__subtf3+0x716>
   196a0:	40678a33          	sub	s4,a5,t1
   196a4:	41c68733          	sub	a4,a3,t3
   196a8:	0147b6b3          	sltu	a3,a5,s4
   196ac:	40d70433          	sub	s0,a4,a3
   196b0:	84f6                	mv	s1,t4
   196b2:	c82d                	beqz	s0,19724 <__subtf3+0x720>
   196b4:	8522                	mv	a0,s0
   196b6:	594000ef          	jal	ra,19c4a <__clzdi2>
   196ba:	2501                	sext.w	a0,a0
   196bc:	ff450f9b          	addiw	t6,a0,-12
   196c0:	03f00793          	li	a5,63
   196c4:	877e                	mv	a4,t6
   196c6:	07f7c563          	blt	a5,t6,19730 <__subtf3+0x72c>
   196ca:	04000693          	li	a3,64
   196ce:	41f686bb          	subw	a3,a3,t6
   196d2:	01f41433          	sll	s0,s0,t6
   196d6:	00da56b3          	srl	a3,s4,a3
   196da:	8c55                	or	s0,s0,a3
   196dc:	01fa1333          	sll	t1,s4,t6
   196e0:	093fc263          	blt	t6,s3,19764 <__subtf3+0x760>
   196e4:	413709bb          	subw	s3,a4,s3
   196e8:	2985                	addiw	s3,s3,1
   196ea:	0009869b          	sext.w	a3,s3
   196ee:	03f00793          	li	a5,63
   196f2:	04d7c563          	blt	a5,a3,1973c <__subtf3+0x738>
   196f6:	04000513          	li	a0,64
   196fa:	4135053b          	subw	a0,a0,s3
   196fe:	00d35733          	srl	a4,t1,a3
   19702:	00a417b3          	sll	a5,s0,a0
   19706:	00a31333          	sll	t1,t1,a0
   1970a:	8fd9                	or	a5,a5,a4
   1970c:	00603333          	snez	t1,t1
   19710:	0067e333          	or	t1,a5,t1
   19714:	00d456b3          	srl	a3,s0,a3
   19718:	bd41                	j	195a8 <__subtf3+0x5a4>
   1971a:	008a6333          	or	t1,s4,s0
   1971e:	f8031ae3          	bnez	t1,196b2 <__subtf3+0x6ae>
   19722:	b729                	j	1962c <__subtf3+0x628>
   19724:	8552                	mv	a0,s4
   19726:	524000ef          	jal	ra,19c4a <__clzdi2>
   1972a:	0405051b          	addiw	a0,a0,64
   1972e:	b779                	j	196bc <__subtf3+0x6b8>
   19730:	fb45041b          	addiw	s0,a0,-76
   19734:	008a1433          	sll	s0,s4,s0
   19738:	4301                	li	t1,0
   1973a:	b75d                	j	196e0 <__subtf3+0x6dc>
   1973c:	04000713          	li	a4,64
   19740:	013457b3          	srl	a5,s0,s3
   19744:	4501                	li	a0,0
   19746:	00e68863          	beq	a3,a4,19756 <__subtf3+0x752>
   1974a:	08000513          	li	a0,128
   1974e:	4135053b          	subw	a0,a0,s3
   19752:	00a41533          	sll	a0,s0,a0
   19756:	00a36333          	or	t1,t1,a0
   1975a:	006036b3          	snez	a3,t1
   1975e:	00d7e333          	or	t1,a5,a3
   19762:	bdc9                	j	19634 <__subtf3+0x630>
   19764:	56fd                	li	a3,-1
   19766:	16ce                	slli	a3,a3,0x33
   19768:	16fd                	addi	a3,a3,-1
   1976a:	41f98fb3          	sub	t6,s3,t6
   1976e:	8ee1                	and	a3,a3,s0
   19770:	e20f8ce3          	beqz	t6,195a8 <__subtf3+0x5a4>
   19774:	879a                	mv	a5,t1
   19776:	89fe                	mv	s3,t6
   19778:	b2bd                	j	190e6 <__subtf3+0xe2>
   1977a:	833e                	mv	t1,a5
   1977c:	84f6                	mv	s1,t4
   1977e:	bfcd                	j	19770 <__subtf3+0x76c>
   19780:	833e                	mv	t1,a5
   19782:	b51d                	j	195a8 <__subtf3+0x5a4>
   19784:	833e                	mv	t1,a5
   19786:	bd69                	j	19620 <__subtf3+0x61c>
   19788:	86f2                	mv	a3,t3
   1978a:	bd39                	j	195a8 <__subtf3+0x5a4>
   1978c:	86ba                	mv	a3,a4
   1978e:	8332                	mv	t1,a2
   19790:	bd21                	j	195a8 <__subtf3+0x5a4>
   19792:	4705                	li	a4,1
   19794:	e4049ae3          	bnez	s1,195e8 <__subtf3+0x5e4>
   19798:	ff87b793          	sltiu	a5,a5,-8
   1979c:	0017c793          	xori	a5,a5,1
   197a0:	983e                	add	a6,a6,a5
   197a2:	b599                	j	195e8 <__subtf3+0x5e4>
   197a4:	4705                	li	a4,1
   197a6:	e40481e3          	beqz	s1,195e8 <__subtf3+0x5e4>
   197aa:	b7fd                	j	19798 <__subtf3+0x794>
   197ac:	4681                	li	a3,0
   197ae:	4781                	li	a5,0
   197b0:	89c6                	mv	s3,a7
   197b2:	4701                	li	a4,0
   197b4:	be31                	j	192d0 <__subtf3+0x2cc>
   197b6:	4681                	li	a3,0
   197b8:	bfed                	j	197b2 <__subtf3+0x7ae>
   197ba:	879a                	mv	a5,t1
   197bc:	4801                	li	a6,0
   197be:	bae1                	j	19196 <__subtf3+0x192>
   197c0:	4681                	li	a3,0
   197c2:	4781                	li	a5,0
   197c4:	89c6                	mv	s3,a7
   197c6:	84f6                	mv	s1,t4
   197c8:	b7ed                	j	197b2 <__subtf3+0x7ae>
   197ca:	4681                	li	a3,0
   197cc:	4981                	li	s3,0
   197ce:	b7d5                	j	197b2 <__subtf3+0x7ae>
   197d0:	aa0498e3          	bnez	s1,19280 <__subtf3+0x27c>
   197d4:	00878593          	addi	a1,a5,8
   197d8:	b6ed                	j	193c2 <__subtf3+0x3be>
   197da:	aa0483e3          	beqz	s1,19280 <__subtf3+0x27c>
   197de:	bfdd                	j	197d4 <__subtf3+0x7d0>
   197e0:	4781                	li	a5,0
   197e2:	00090e63          	beqz	s2,197fe <__subtf3+0x7fa>
   197e6:	468d                	li	a3,3
   197e8:	00d91763          	bne	s2,a3,197f6 <__subtf3+0x7f2>
   197ec:	c889                	beqz	s1,197fe <__subtf3+0x7fa>
   197ee:	57fd                	li	a5,-1
   197f0:	ffe60993          	addi	s3,a2,-2
   197f4:	a029                	j	197fe <__subtf3+0x7fa>
   197f6:	4689                	li	a3,2
   197f8:	fed91be3          	bne	s2,a3,197ee <__subtf3+0x7ea>
   197fc:	d8ed                	beqz	s1,197ee <__subtf3+0x7ea>
   197fe:	00576713          	ori	a4,a4,5
   19802:	86be                	mv	a3,a5
   19804:	b4e5                	j	192ec <__subtf3+0x2e8>
   19806:	4701                	li	a4,0
   19808:	e5e89ce3          	bne	a7,t5,19660 <__subtf3+0x65c>
   1980c:	b5bd                	j	1967a <__subtf3+0x676>
   1980e:	b7e89ce3          	bne	a7,t5,19386 <__subtf3+0x382>
   19812:	be81                	j	19362 <__subtf3+0x35e>

0000000000019814 <__fixtfsi>:
   19814:	1141                	addi	sp,sp,-16
   19816:	002027f3          	frrm	a5
   1981a:	57fd                	li	a5,-1
   1981c:	00159613          	slli	a2,a1,0x1
   19820:	6811                	lui	a6,0x4
   19822:	83c1                	srli	a5,a5,0x10
   19824:	9245                	srli	a2,a2,0x31
   19826:	ffe80713          	addi	a4,a6,-2 # 3ffe <_start-0xc0b2>
   1982a:	8fed                	and	a5,a5,a1
   1982c:	00c74963          	blt	a4,a2,1983e <__fixtfsi+0x2a>
   19830:	e62d                	bnez	a2,1989a <__fixtfsi+0x86>
   19832:	8fc9                	or	a5,a5,a0
   19834:	4681                	li	a3,0
   19836:	eb95                	bnez	a5,1986a <__fixtfsi+0x56>
   19838:	8536                	mv	a0,a3
   1983a:	0141                	addi	sp,sp,16
   1983c:	8082                	ret
   1983e:	01d80713          	addi	a4,a6,29
   19842:	91fd                	srli	a1,a1,0x3f
   19844:	02c75563          	ble	a2,a4,1986e <__fixtfsi+0x5a>
   19848:	800006b7          	lui	a3,0x80000
   1984c:	fff6c693          	not	a3,a3
   19850:	9ead                	addw	a3,a3,a1
   19852:	c5b1                	beqz	a1,1989e <__fixtfsi+0x8a>
   19854:	0879                	addi	a6,a6,30
   19856:	45c1                	li	a1,16
   19858:	05061463          	bne	a2,a6,198a0 <__fixtfsi+0x8c>
   1985c:	0117d713          	srli	a4,a5,0x11
   19860:	e321                	bnez	a4,198a0 <__fixtfsi+0x8c>
   19862:	02f79713          	slli	a4,a5,0x2f
   19866:	8f49                	or	a4,a4,a0
   19868:	db61                	beqz	a4,19838 <__fixtfsi+0x24>
   1986a:	4585                	li	a1,1
   1986c:	a815                	j	198a0 <__fixtfsi+0x8c>
   1986e:	4705                	li	a4,1
   19870:	1742                	slli	a4,a4,0x30
   19872:	2601                	sext.w	a2,a2
   19874:	8fd9                	or	a5,a5,a4
   19876:	01160713          	addi	a4,a2,17
   1987a:	00e79733          	sll	a4,a5,a4
   1987e:	8f49                	or	a4,a4,a0
   19880:	6511                	lui	a0,0x4
   19882:	02f5051b          	addiw	a0,a0,47
   19886:	40c5063b          	subw	a2,a0,a2
   1988a:	00c7d7b3          	srl	a5,a5,a2
   1988e:	0007869b          	sext.w	a3,a5
   19892:	d9f9                	beqz	a1,19868 <__fixtfsi+0x54>
   19894:	40d006bb          	negw	a3,a3
   19898:	bfc1                	j	19868 <__fixtfsi+0x54>
   1989a:	4681                	li	a3,0
   1989c:	b7f9                	j	1986a <__fixtfsi+0x56>
   1989e:	45c1                	li	a1,16
   198a0:	0015a073          	csrs	fflags,a1
   198a4:	bf51                	j	19838 <__fixtfsi+0x24>

00000000000198a6 <__floatsitf>:
   198a6:	7179                	addi	sp,sp,-48
   198a8:	f406                	sd	ra,40(sp)
   198aa:	f022                	sd	s0,32(sp)
   198ac:	ec26                	sd	s1,24(sp)
   198ae:	c53d                	beqz	a0,1991c <__floatsitf+0x76>
   198b0:	0005079b          	sext.w	a5,a0
   198b4:	03f55493          	srli	s1,a0,0x3f
   198b8:	00055463          	bgez	a0,198c0 <__floatsitf+0x1a>
   198bc:	40f007bb          	negw	a5,a5
   198c0:	02079413          	slli	s0,a5,0x20
   198c4:	9001                	srli	s0,s0,0x20
   198c6:	8522                	mv	a0,s0
   198c8:	382000ef          	jal	ra,19c4a <__clzdi2>
   198cc:	6691                	lui	a3,0x4
   198ce:	03e6879b          	addiw	a5,a3,62
   198d2:	40a7873b          	subw	a4,a5,a0
   198d6:	02f6879b          	addiw	a5,a3,47
   198da:	9f99                	subw	a5,a5,a4
   198dc:	00f417b3          	sll	a5,s0,a5
   198e0:	56fd                	li	a3,-1
   198e2:	0106d413          	srli	s0,a3,0x10
   198e6:	8fe1                	and	a5,a5,s0
   198e8:	6422                	ld	s0,8(sp)
   198ea:	03069613          	slli	a2,a3,0x30
   198ee:	65a1                	lui	a1,0x8
   198f0:	8c71                	and	s0,s0,a2
   198f2:	8fc1                	or	a5,a5,s0
   198f4:	f8001437          	lui	s0,0xf8001
   198f8:	15fd                	addi	a1,a1,-1
   198fa:	1412                	slli	s0,s0,0x24
   198fc:	8f6d                	and	a4,a4,a1
   198fe:	147d                	addi	s0,s0,-1
   19900:	8fe1                	and	a5,a5,s0
   19902:	70a2                	ld	ra,40(sp)
   19904:	7402                	ld	s0,32(sp)
   19906:	1742                	slli	a4,a4,0x30
   19908:	8fd9                	or	a5,a5,a4
   1990a:	8285                	srli	a3,a3,0x1
   1990c:	03f49593          	slli	a1,s1,0x3f
   19910:	8ff5                	and	a5,a5,a3
   19912:	64e2                	ld	s1,24(sp)
   19914:	4501                	li	a0,0
   19916:	8ddd                	or	a1,a1,a5
   19918:	6145                	addi	sp,sp,48
   1991a:	8082                	ret
   1991c:	4781                	li	a5,0
   1991e:	4701                	li	a4,0
   19920:	4481                	li	s1,0
   19922:	bf7d                	j	198e0 <__floatsitf+0x3a>

0000000000019924 <__extenddftf2>:
   19924:	7179                	addi	sp,sp,-48
   19926:	ec26                	sd	s1,24(sp)
   19928:	f406                	sd	ra,40(sp)
   1992a:	f022                	sd	s0,32(sp)
   1992c:	e20504d3          	fmv.x.d	s1,fa0
   19930:	002027f3          	frrm	a5
   19934:	0344d513          	srli	a0,s1,0x34
   19938:	7ff57513          	andi	a0,a0,2047
   1993c:	547d                	li	s0,-1
   1993e:	00150793          	addi	a5,a0,1 # 4001 <_start-0xc0af>
   19942:	8031                	srli	s0,s0,0xc
   19944:	7ff7f793          	andi	a5,a5,2047
   19948:	4685                	li	a3,1
   1994a:	8c65                	and	s0,s0,s1
   1994c:	90fd                	srli	s1,s1,0x3f
   1994e:	00f6db63          	ble	a5,a3,19964 <__extenddftf2+0x40>
   19952:	6791                	lui	a5,0x4
   19954:	c0078793          	addi	a5,a5,-1024 # 3c00 <_start-0xc4b0>
   19958:	00445713          	srli	a4,s0,0x4
   1995c:	953e                	add	a0,a0,a5
   1995e:	1472                	slli	s0,s0,0x3c
   19960:	4781                	li	a5,0
   19962:	a8b1                	j	199be <__extenddftf2+0x9a>
   19964:	ed1d                	bnez	a0,199a2 <__extenddftf2+0x7e>
   19966:	4701                	li	a4,0
   19968:	dc65                	beqz	s0,19960 <__extenddftf2+0x3c>
   1996a:	8522                	mv	a0,s0
   1996c:	2de000ef          	jal	ra,19c4a <__clzdi2>
   19970:	0005071b          	sext.w	a4,a0
   19974:	47b9                	li	a5,14
   19976:	02e7c063          	blt	a5,a4,19996 <__extenddftf2+0x72>
   1997a:	473d                	li	a4,15
   1997c:	9f09                	subw	a4,a4,a0
   1997e:	0315079b          	addiw	a5,a0,49
   19982:	00e45733          	srl	a4,s0,a4
   19986:	00f41433          	sll	s0,s0,a5
   1998a:	6791                	lui	a5,0x4
   1998c:	c0c7879b          	addiw	a5,a5,-1012
   19990:	40a7853b          	subw	a0,a5,a0
   19994:	b7f1                	j	19960 <__extenddftf2+0x3c>
   19996:	ff15071b          	addiw	a4,a0,-15
   1999a:	00e41733          	sll	a4,s0,a4
   1999e:	4401                	li	s0,0
   199a0:	b7ed                	j	1998a <__extenddftf2+0x66>
   199a2:	cc39                	beqz	s0,19a00 <__extenddftf2+0xdc>
   199a4:	03369793          	slli	a5,a3,0x33
   199a8:	8fe1                	and	a5,a5,s0
   199aa:	00445713          	srli	a4,s0,0x4
   199ae:	0017b793          	seqz	a5,a5
   199b2:	16be                	slli	a3,a3,0x2f
   199b4:	6521                	lui	a0,0x8
   199b6:	0792                	slli	a5,a5,0x4
   199b8:	8f55                	or	a4,a4,a3
   199ba:	1472                	slli	s0,s0,0x3c
   199bc:	157d                	addi	a0,a0,-1
   199be:	56fd                	li	a3,-1
   199c0:	65a2                	ld	a1,8(sp)
   199c2:	0106d613          	srli	a2,a3,0x10
   199c6:	8f71                	and	a4,a4,a2
   199c8:	03069613          	slli	a2,a3,0x30
   199cc:	8df1                	and	a1,a1,a2
   199ce:	8f4d                	or	a4,a4,a1
   199d0:	6621                	lui	a2,0x8
   199d2:	f80015b7          	lui	a1,0xf8001
   199d6:	167d                	addi	a2,a2,-1
   199d8:	1592                	slli	a1,a1,0x24
   199da:	8d71                	and	a0,a0,a2
   199dc:	15fd                	addi	a1,a1,-1
   199de:	8df9                	and	a1,a1,a4
   199e0:	1542                	slli	a0,a0,0x30
   199e2:	8d4d                	or	a0,a0,a1
   199e4:	0016d593          	srli	a1,a3,0x1
   199e8:	14fe                	slli	s1,s1,0x3f
   199ea:	8de9                	and	a1,a1,a0
   199ec:	8dc5                	or	a1,a1,s1
   199ee:	c399                	beqz	a5,199f4 <__extenddftf2+0xd0>
   199f0:	0017a073          	csrs	fflags,a5
   199f4:	8522                	mv	a0,s0
   199f6:	70a2                	ld	ra,40(sp)
   199f8:	7402                	ld	s0,32(sp)
   199fa:	64e2                	ld	s1,24(sp)
   199fc:	6145                	addi	sp,sp,48
   199fe:	8082                	ret
   19a00:	6521                	lui	a0,0x8
   19a02:	4701                	li	a4,0
   19a04:	157d                	addi	a0,a0,-1
   19a06:	bfa9                	j	19960 <__extenddftf2+0x3c>

0000000000019a08 <__trunctfdf2>:
   19a08:	1141                	addi	sp,sp,-16
   19a0a:	002028f3          	frrm	a7
   19a0e:	57fd                	li	a5,-1
   19a10:	83c1                	srli	a5,a5,0x10
   19a12:	6321                	lui	t1,0x8
   19a14:	0305d713          	srli	a4,a1,0x30
   19a18:	137d                	addi	t1,t1,-1
   19a1a:	03f5d813          	srli	a6,a1,0x3f
   19a1e:	8dfd                	and	a1,a1,a5
   19a20:	00359793          	slli	a5,a1,0x3
   19a24:	00677733          	and	a4,a4,t1
   19a28:	03d55593          	srli	a1,a0,0x3d
   19a2c:	8ddd                	or	a1,a1,a5
   19a2e:	00170793          	addi	a5,a4,1
   19a32:	0067f7b3          	and	a5,a5,t1
   19a36:	4605                	li	a2,1
   19a38:	2881                	sext.w	a7,a7
   19a3a:	00351e93          	slli	t4,a0,0x3
   19a3e:	18f65163          	ble	a5,a2,19bc0 <__trunctfdf2+0x1b8>
   19a42:	77f1                	lui	a5,0xffffc
   19a44:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__global_pointer$+0xfffffffffffdf128>
   19a48:	973e                	add	a4,a4,a5
   19a4a:	7fe00793          	li	a5,2046
   19a4e:	0ae7d063          	ble	a4,a5,19aee <__trunctfdf2+0xe6>
   19a52:	04088263          	beqz	a7,19a96 <__trunctfdf2+0x8e>
   19a56:	478d                	li	a5,3
   19a58:	02f89a63          	bne	a7,a5,19a8c <__trunctfdf2+0x84>
   19a5c:	02080d63          	beqz	a6,19a96 <__trunctfdf2+0x8e>
   19a60:	57fd                	li	a5,-1
   19a62:	7fe00713          	li	a4,2046
   19a66:	4681                	li	a3,0
   19a68:	4e15                	li	t3,5
   19a6a:	4609                	li	a2,2
   19a6c:	001e6e13          	ori	t3,t3,1
   19a70:	1ac88663          	beq	a7,a2,19c1c <__trunctfdf2+0x214>
   19a74:	460d                	li	a2,3
   19a76:	18c88f63          	beq	a7,a2,19c14 <__trunctfdf2+0x20c>
   19a7a:	12089a63          	bnez	a7,19bae <__trunctfdf2+0x1a6>
   19a7e:	00f7f613          	andi	a2,a5,15
   19a82:	4591                	li	a1,4
   19a84:	12b60563          	beq	a2,a1,19bae <__trunctfdf2+0x1a6>
   19a88:	0791                	addi	a5,a5,4
   19a8a:	a215                	j	19bae <__trunctfdf2+0x1a6>
   19a8c:	4789                	li	a5,2
   19a8e:	fcf899e3          	bne	a7,a5,19a60 <__trunctfdf2+0x58>
   19a92:	fc0807e3          	beqz	a6,19a60 <__trunctfdf2+0x58>
   19a96:	4781                	li	a5,0
   19a98:	7ff00713          	li	a4,2047
   19a9c:	4e15                	li	t3,5
   19a9e:	00879693          	slli	a3,a5,0x8
   19aa2:	0006db63          	bgez	a3,19ab8 <__trunctfdf2+0xb0>
   19aa6:	0705                	addi	a4,a4,1
   19aa8:	7ff00693          	li	a3,2047
   19aac:	16d70b63          	beq	a4,a3,19c22 <__trunctfdf2+0x21a>
   19ab0:	55fd                	li	a1,-1
   19ab2:	15de                	slli	a1,a1,0x37
   19ab4:	15fd                	addi	a1,a1,-1
   19ab6:	8fed                	and	a5,a5,a1
   19ab8:	7ff00693          	li	a3,2047
   19abc:	838d                	srli	a5,a5,0x3
   19abe:	00d71663          	bne	a4,a3,19aca <__trunctfdf2+0xc2>
   19ac2:	c781                	beqz	a5,19aca <__trunctfdf2+0xc2>
   19ac4:	4785                	li	a5,1
   19ac6:	17ce                	slli	a5,a5,0x33
   19ac8:	4801                	li	a6,0
   19aca:	56fd                	li	a3,-1
   19acc:	82b1                	srli	a3,a3,0xc
   19ace:	7ff77713          	andi	a4,a4,2047
   19ad2:	8ff5                	and	a5,a5,a3
   19ad4:	1752                	slli	a4,a4,0x34
   19ad6:	03f81693          	slli	a3,a6,0x3f
   19ada:	8fd9                	or	a5,a5,a4
   19adc:	8fd5                	or	a5,a5,a3
   19ade:	000e0463          	beqz	t3,19ae6 <__trunctfdf2+0xde>
   19ae2:	001e2073          	csrs	fflags,t3
   19ae6:	f2078553          	fmv.d.x	fa0,a5
   19aea:	0141                	addi	sp,sp,16
   19aec:	8082                	ret
   19aee:	0ae04163          	bgtz	a4,19b90 <__trunctfdf2+0x188>
   19af2:	fcc00793          	li	a5,-52
   19af6:	10f74063          	blt	a4,a5,19bf6 <__trunctfdf2+0x1ee>
   19afa:	164e                	slli	a2,a2,0x33
   19afc:	8dd1                	or	a1,a1,a2
   19afe:	03d00613          	li	a2,61
   19b02:	8e19                	sub	a2,a2,a4
   19b04:	03f00793          	li	a5,63
   19b08:	2701                	sext.w	a4,a4
   19b0a:	06c7c063          	blt	a5,a2,19b6a <__trunctfdf2+0x162>
   19b0e:	0037061b          	addiw	a2,a4,3
   19b12:	03d00793          	li	a5,61
   19b16:	9f99                	subw	a5,a5,a4
   19b18:	00ce96b3          	sll	a3,t4,a2
   19b1c:	00fed7b3          	srl	a5,t4,a5
   19b20:	00d036b3          	snez	a3,a3
   19b24:	8fd5                	or	a5,a5,a3
   19b26:	00c595b3          	sll	a1,a1,a2
   19b2a:	8fcd                	or	a5,a5,a1
   19b2c:	4701                	li	a4,0
   19b2e:	c3ed                	beqz	a5,19c10 <__trunctfdf2+0x208>
   19b30:	00179713          	slli	a4,a5,0x1
   19b34:	00777693          	andi	a3,a4,7
   19b38:	4e01                	li	t3,0
   19b3a:	c28d                	beqz	a3,19b5c <__trunctfdf2+0x154>
   19b3c:	4689                	li	a3,2
   19b3e:	0cd88363          	beq	a7,a3,19c04 <__trunctfdf2+0x1fc>
   19b42:	468d                	li	a3,3
   19b44:	0ad88b63          	beq	a7,a3,19bfa <__trunctfdf2+0x1f2>
   19b48:	4e05                	li	t3,1
   19b4a:	00089963          	bnez	a7,19b5c <__trunctfdf2+0x154>
   19b4e:	00f77693          	andi	a3,a4,15
   19b52:	4611                	li	a2,4
   19b54:	4e05                	li	t3,1
   19b56:	00c68363          	beq	a3,a2,19b5c <__trunctfdf2+0x154>
   19b5a:	0711                	addi	a4,a4,4
   19b5c:	03875693          	srli	a3,a4,0x38
   19b60:	0016c693          	xori	a3,a3,1
   19b64:	8a85                	andi	a3,a3,1
   19b66:	4701                	li	a4,0
   19b68:	a83d                	j	19ba6 <__trunctfdf2+0x19e>
   19b6a:	57f5                	li	a5,-3
   19b6c:	9f99                	subw	a5,a5,a4
   19b6e:	04000513          	li	a0,64
   19b72:	00f5d7b3          	srl	a5,a1,a5
   19b76:	4681                	li	a3,0
   19b78:	00a60663          	beq	a2,a0,19b84 <__trunctfdf2+0x17c>
   19b7c:	0437071b          	addiw	a4,a4,67
   19b80:	00e596b3          	sll	a3,a1,a4
   19b84:	01d6e6b3          	or	a3,a3,t4
   19b88:	00d036b3          	snez	a3,a3
   19b8c:	8fd5                	or	a5,a5,a3
   19b8e:	bf79                	j	19b2c <__trunctfdf2+0x124>
   19b90:	051e                	slli	a0,a0,0x7
   19b92:	03ced693          	srli	a3,t4,0x3c
   19b96:	00a03533          	snez	a0,a0
   19b9a:	8d55                	or	a0,a0,a3
   19b9c:	0592                	slli	a1,a1,0x4
   19b9e:	00a5e7b3          	or	a5,a1,a0
   19ba2:	4681                	li	a3,0
   19ba4:	4e01                	li	t3,0
   19ba6:	0077f613          	andi	a2,a5,7
   19baa:	ec0610e3          	bnez	a2,19a6a <__trunctfdf2+0x62>
   19bae:	ee0688e3          	beqz	a3,19a9e <__trunctfdf2+0x96>
   19bb2:	001e7693          	andi	a3,t3,1
   19bb6:	ee0684e3          	beqz	a3,19a9e <__trunctfdf2+0x96>
   19bba:	002e6e13          	ori	t3,t3,2
   19bbe:	b5c5                	j	19a9e <__trunctfdf2+0x96>
   19bc0:	01d5e7b3          	or	a5,a1,t4
   19bc4:	e701                	bnez	a4,19bcc <__trunctfdf2+0x1c4>
   19bc6:	00f037b3          	snez	a5,a5
   19bca:	b78d                	j	19b2c <__trunctfdf2+0x124>
   19bcc:	c3a1                	beqz	a5,19c0c <__trunctfdf2+0x204>
   19bce:	4e01                	li	t3,0
   19bd0:	00671763          	bne	a4,t1,19bde <__trunctfdf2+0x1d6>
   19bd4:	164a                	slli	a2,a2,0x32
   19bd6:	8e6d                	and	a2,a2,a1
   19bd8:	00163e13          	seqz	t3,a2
   19bdc:	0e12                	slli	t3,t3,0x4
   19bde:	03ced513          	srli	a0,t4,0x3c
   19be2:	0592                	slli	a1,a1,0x4
   19be4:	8dc9                	or	a1,a1,a0
   19be6:	4785                	li	a5,1
   19be8:	99e1                	andi	a1,a1,-8
   19bea:	17da                	slli	a5,a5,0x36
   19bec:	8fcd                	or	a5,a5,a1
   19bee:	7ff00713          	li	a4,2047
   19bf2:	4681                	li	a3,0
   19bf4:	bf4d                	j	19ba6 <__trunctfdf2+0x19e>
   19bf6:	4785                	li	a5,1
   19bf8:	bf25                	j	19b30 <__trunctfdf2+0x128>
   19bfa:	4e05                	li	t3,1
   19bfc:	f60810e3          	bnez	a6,19b5c <__trunctfdf2+0x154>
   19c00:	0721                	addi	a4,a4,8
   19c02:	bfa9                	j	19b5c <__trunctfdf2+0x154>
   19c04:	4e05                	li	t3,1
   19c06:	f4080be3          	beqz	a6,19b5c <__trunctfdf2+0x154>
   19c0a:	bfdd                	j	19c00 <__trunctfdf2+0x1f8>
   19c0c:	7ff00713          	li	a4,2047
   19c10:	4e01                	li	t3,0
   19c12:	b571                	j	19a9e <__trunctfdf2+0x96>
   19c14:	f8081de3          	bnez	a6,19bae <__trunctfdf2+0x1a6>
   19c18:	07a1                	addi	a5,a5,8
   19c1a:	bf51                	j	19bae <__trunctfdf2+0x1a6>
   19c1c:	f80809e3          	beqz	a6,19bae <__trunctfdf2+0x1a6>
   19c20:	bfe5                	j	19c18 <__trunctfdf2+0x210>
   19c22:	4781                	li	a5,0
   19c24:	02088063          	beqz	a7,19c44 <__trunctfdf2+0x23c>
   19c28:	468d                	li	a3,3
   19c2a:	00d89863          	bne	a7,a3,19c3a <__trunctfdf2+0x232>
   19c2e:	00080b63          	beqz	a6,19c44 <__trunctfdf2+0x23c>
   19c32:	57fd                	li	a5,-1
   19c34:	7fe00713          	li	a4,2046
   19c38:	a031                	j	19c44 <__trunctfdf2+0x23c>
   19c3a:	4689                	li	a3,2
   19c3c:	fed89be3          	bne	a7,a3,19c32 <__trunctfdf2+0x22a>
   19c40:	fe0809e3          	beqz	a6,19c32 <__trunctfdf2+0x22a>
   19c44:	005e6e13          	ori	t3,t3,5
   19c48:	bd85                	j	19ab8 <__trunctfdf2+0xb0>

0000000000019c4a <__clzdi2>:
   19c4a:	03800793          	li	a5,56
   19c4e:	00f55733          	srl	a4,a0,a5
   19c52:	0ff77713          	andi	a4,a4,255
   19c56:	e319                	bnez	a4,19c5c <__clzdi2+0x12>
   19c58:	17e1                	addi	a5,a5,-8
   19c5a:	fbf5                	bnez	a5,19c4e <__clzdi2+0x4>
   19c5c:	04000713          	li	a4,64
   19c60:	8f1d                	sub	a4,a4,a5
   19c62:	00f557b3          	srl	a5,a0,a5
   19c66:	656d                	lui	a0,0x1b
   19c68:	8c050513          	addi	a0,a0,-1856 # 1a8c0 <__clz_tab>
   19c6c:	97aa                	add	a5,a5,a0
   19c6e:	0007c503          	lbu	a0,0(a5)
   19c72:	40a7053b          	subw	a0,a4,a0
   19c76:	8082                	ret
