
HW1.elf:     file format elf32-littlearm


Disassembly of section .init:

00008000 <_init>:
    8000:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8002:	46c0      	nop			; (mov r8, r8)
    8004:	bcf8      	pop	{r3, r4, r5, r6, r7}
    8006:	bc08      	pop	{r3}
    8008:	469e      	mov	lr, r3
    800a:	4770      	bx	lr

Disassembly of section .text:

0000800c <exit>:
    800c:	b510      	push	{r4, lr}
    800e:	2100      	movs	r1, #0
    8010:	1c04      	adds	r4, r0, #0
    8012:	f000 f929 	bl	8268 <__call_exitprocs>
    8016:	4b04      	ldr	r3, [pc, #16]	; (8028 <exit+0x1c>)
    8018:	6818      	ldr	r0, [r3, #0]
    801a:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    801c:	2b00      	cmp	r3, #0
    801e:	d000      	beq.n	8022 <exit+0x16>
    8020:	4798      	blx	r3
    8022:	1c20      	adds	r0, r4, #0
    8024:	f000 fd4c 	bl	8ac0 <_exit>
    8028:	0000a588 	.word	0x0000a588

0000802c <register_fini>:
    802c:	b508      	push	{r3, lr}
    802e:	4b03      	ldr	r3, [pc, #12]	; (803c <register_fini+0x10>)
    8030:	2b00      	cmp	r3, #0
    8032:	d002      	beq.n	803a <register_fini+0xe>
    8034:	4802      	ldr	r0, [pc, #8]	; (8040 <register_fini+0x14>)
    8036:	f000 f9a3 	bl	8380 <atexit>
    803a:	bd08      	pop	{r3, pc}
    803c:	00000000 	.word	0x00000000
    8040:	00008391 	.word	0x00008391

00008044 <__do_global_dtors_aux>:
    8044:	b510      	push	{r4, lr}
    8046:	4c06      	ldr	r4, [pc, #24]	; (8060 <__do_global_dtors_aux+0x1c>)
    8048:	7823      	ldrb	r3, [r4, #0]
    804a:	2b00      	cmp	r3, #0
    804c:	d107      	bne.n	805e <__do_global_dtors_aux+0x1a>
    804e:	4b05      	ldr	r3, [pc, #20]	; (8064 <__do_global_dtors_aux+0x20>)
    8050:	2b00      	cmp	r3, #0
    8052:	d002      	beq.n	805a <__do_global_dtors_aux+0x16>
    8054:	4804      	ldr	r0, [pc, #16]	; (8068 <__do_global_dtors_aux+0x24>)
    8056:	e000      	b.n	805a <__do_global_dtors_aux+0x16>
    8058:	bf00      	nop
    805a:	2301      	movs	r3, #1
    805c:	7023      	strb	r3, [r4, #0]
    805e:	bd10      	pop	{r4, pc}
    8060:	00012f1c 	.word	0x00012f1c
    8064:	00000000 	.word	0x00000000
    8068:	0000a5b0 	.word	0x0000a5b0

0000806c <frame_dummy>:
    806c:	b508      	push	{r3, lr}
    806e:	4b08      	ldr	r3, [pc, #32]	; (8090 <frame_dummy+0x24>)
    8070:	2b00      	cmp	r3, #0
    8072:	d003      	beq.n	807c <frame_dummy+0x10>
    8074:	4807      	ldr	r0, [pc, #28]	; (8094 <frame_dummy+0x28>)
    8076:	4908      	ldr	r1, [pc, #32]	; (8098 <frame_dummy+0x2c>)
    8078:	e000      	b.n	807c <frame_dummy+0x10>
    807a:	bf00      	nop
    807c:	4807      	ldr	r0, [pc, #28]	; (809c <frame_dummy+0x30>)
    807e:	6803      	ldr	r3, [r0, #0]
    8080:	2b00      	cmp	r3, #0
    8082:	d003      	beq.n	808c <frame_dummy+0x20>
    8084:	4b06      	ldr	r3, [pc, #24]	; (80a0 <frame_dummy+0x34>)
    8086:	2b00      	cmp	r3, #0
    8088:	d000      	beq.n	808c <frame_dummy+0x20>
    808a:	4798      	blx	r3
    808c:	bd08      	pop	{r3, pc}
    808e:	46c0      	nop			; (mov r8, r8)
    8090:	00000000 	.word	0x00000000
    8094:	0000a5b0 	.word	0x0000a5b0
    8098:	00012f20 	.word	0x00012f20
    809c:	000125c0 	.word	0x000125c0
    80a0:	00000000 	.word	0x00000000

000080a4 <_mainCRTStartup>:
    80a4:	2016      	movs	r0, #22
    80a6:	a12f      	add	r1, pc, #188	; (adr r1, 8164 <_mainCRTStartup+0xc0>)
    80a8:	beab      	bkpt	0x00ab
    80aa:	482e      	ldr	r0, [pc, #184]	; (8164 <_mainCRTStartup+0xc0>)
    80ac:	6801      	ldr	r1, [r0, #0]
    80ae:	2900      	cmp	r1, #0
    80b0:	d101      	bne.n	80b6 <_mainCRTStartup+0x12>
    80b2:	4933      	ldr	r1, [pc, #204]	; (8180 <_mainCRTStartup+0xdc>)
    80b4:	6001      	str	r1, [r0, #0]
    80b6:	6881      	ldr	r1, [r0, #8]
    80b8:	68c2      	ldr	r2, [r0, #12]
    80ba:	2900      	cmp	r1, #0
    80bc:	d000      	beq.n	80c0 <_mainCRTStartup+0x1c>
    80be:	468d      	mov	sp, r1
    80c0:	2a00      	cmp	r2, #0
    80c2:	d002      	beq.n	80ca <_mainCRTStartup+0x26>
    80c4:	3280      	adds	r2, #128	; 0x80
    80c6:	3280      	adds	r2, #128	; 0x80
    80c8:	4692      	mov	sl, r2
    80ca:	2100      	movs	r1, #0
    80cc:	468b      	mov	fp, r1
    80ce:	460f      	mov	r7, r1
    80d0:	4825      	ldr	r0, [pc, #148]	; (8168 <_mainCRTStartup+0xc4>)
    80d2:	4a26      	ldr	r2, [pc, #152]	; (816c <_mainCRTStartup+0xc8>)
    80d4:	1a12      	subs	r2, r2, r0
    80d6:	f000 f879 	bl	81cc <memset>
    80da:	f000 f9fb 	bl	84d4 <initialise_monitor_handles>
    80de:	2015      	movs	r0, #21
    80e0:	a125      	add	r1, pc, #148	; (adr r1, 8178 <_mainCRTStartup+0xd4>)
    80e2:	beab      	bkpt	0x00ab
    80e4:	4924      	ldr	r1, [pc, #144]	; (8178 <_mainCRTStartup+0xd4>)
    80e6:	2000      	movs	r0, #0
    80e8:	b401      	push	{r0}
    80ea:	780b      	ldrb	r3, [r1, #0]
    80ec:	3101      	adds	r1, #1
    80ee:	2b00      	cmp	r3, #0
    80f0:	d015      	beq.n	811e <_mainCRTStartup+0x7a>
    80f2:	2b20      	cmp	r3, #32
    80f4:	d0f9      	beq.n	80ea <_mainCRTStartup+0x46>
    80f6:	2b22      	cmp	r3, #34	; 0x22
    80f8:	d001      	beq.n	80fe <_mainCRTStartup+0x5a>
    80fa:	2b27      	cmp	r3, #39	; 0x27
    80fc:	d101      	bne.n	8102 <_mainCRTStartup+0x5e>
    80fe:	001a      	movs	r2, r3
    8100:	e001      	b.n	8106 <_mainCRTStartup+0x62>
    8102:	2220      	movs	r2, #32
    8104:	3901      	subs	r1, #1
    8106:	b402      	push	{r1}
    8108:	3001      	adds	r0, #1
    810a:	780b      	ldrb	r3, [r1, #0]
    810c:	3101      	adds	r1, #1
    810e:	2b00      	cmp	r3, #0
    8110:	d005      	beq.n	811e <_mainCRTStartup+0x7a>
    8112:	429a      	cmp	r2, r3
    8114:	d1f9      	bne.n	810a <_mainCRTStartup+0x66>
    8116:	2200      	movs	r2, #0
    8118:	1e4b      	subs	r3, r1, #1
    811a:	701a      	strb	r2, [r3, #0]
    811c:	e7e5      	b.n	80ea <_mainCRTStartup+0x46>
    811e:	4669      	mov	r1, sp
    8120:	0002      	movs	r2, r0
    8122:	0092      	lsls	r2, r2, #2
    8124:	446a      	add	r2, sp
    8126:	466b      	mov	r3, sp
    8128:	429a      	cmp	r2, r3
    812a:	d906      	bls.n	813a <_mainCRTStartup+0x96>
    812c:	3a04      	subs	r2, #4
    812e:	6814      	ldr	r4, [r2, #0]
    8130:	681d      	ldr	r5, [r3, #0]
    8132:	6015      	str	r5, [r2, #0]
    8134:	601c      	str	r4, [r3, #0]
    8136:	3304      	adds	r3, #4
    8138:	e7f6      	b.n	8128 <_mainCRTStartup+0x84>
    813a:	466c      	mov	r4, sp
    813c:	2507      	movs	r5, #7
    813e:	43ac      	bics	r4, r5
    8140:	46a5      	mov	sp, r4
    8142:	0004      	movs	r4, r0
    8144:	000d      	movs	r5, r1
    8146:	480a      	ldr	r0, [pc, #40]	; (8170 <_mainCRTStartup+0xcc>)
    8148:	2800      	cmp	r0, #0
    814a:	d002      	beq.n	8152 <_mainCRTStartup+0xae>
    814c:	4809      	ldr	r0, [pc, #36]	; (8174 <_mainCRTStartup+0xd0>)
    814e:	f000 f917 	bl	8380 <atexit>
    8152:	f000 f817 	bl	8184 <__libc_init_array>
    8156:	0020      	movs	r0, r4
    8158:	0029      	movs	r1, r5
    815a:	f000 fd15 	bl	8b88 <main>
    815e:	f7ff ff55 	bl	800c <exit>
    8162:	46c0      	nop			; (mov r8, r8)
    8164:	000125cc 	.word	0x000125cc
    8168:	00012f1c 	.word	0x00012f1c
    816c:	00013028 	.word	0x00013028
    8170:	00008381 	.word	0x00008381
    8174:	00008391 	.word	0x00008391
    8178:	000125dc 	.word	0x000125dc
    817c:	000000ff 	.word	0x000000ff
    8180:	00013028 	.word	0x00013028

00008184 <__libc_init_array>:
    8184:	b570      	push	{r4, r5, r6, lr}
    8186:	4e0d      	ldr	r6, [pc, #52]	; (81bc <__libc_init_array+0x38>)
    8188:	4d0d      	ldr	r5, [pc, #52]	; (81c0 <__libc_init_array+0x3c>)
    818a:	2400      	movs	r4, #0
    818c:	1bad      	subs	r5, r5, r6
    818e:	10ad      	asrs	r5, r5, #2
    8190:	d005      	beq.n	819e <__libc_init_array+0x1a>
    8192:	00a3      	lsls	r3, r4, #2
    8194:	58f3      	ldr	r3, [r6, r3]
    8196:	3401      	adds	r4, #1
    8198:	4798      	blx	r3
    819a:	42a5      	cmp	r5, r4
    819c:	d1f9      	bne.n	8192 <__libc_init_array+0xe>
    819e:	f7ff ff2f 	bl	8000 <_init>
    81a2:	4e08      	ldr	r6, [pc, #32]	; (81c4 <__libc_init_array+0x40>)
    81a4:	4d08      	ldr	r5, [pc, #32]	; (81c8 <__libc_init_array+0x44>)
    81a6:	2400      	movs	r4, #0
    81a8:	1bad      	subs	r5, r5, r6
    81aa:	10ad      	asrs	r5, r5, #2
    81ac:	d005      	beq.n	81ba <__libc_init_array+0x36>
    81ae:	00a3      	lsls	r3, r4, #2
    81b0:	58f3      	ldr	r3, [r6, r3]
    81b2:	3401      	adds	r4, #1
    81b4:	4798      	blx	r3
    81b6:	42a5      	cmp	r5, r4
    81b8:	d1f9      	bne.n	81ae <__libc_init_array+0x2a>
    81ba:	bd70      	pop	{r4, r5, r6, pc}
    81bc:	000125b4 	.word	0x000125b4
    81c0:	000125b4 	.word	0x000125b4
    81c4:	000125b4 	.word	0x000125b4
    81c8:	000125bc 	.word	0x000125bc

000081cc <memset>:
    81cc:	b5f0      	push	{r4, r5, r6, r7, lr}
    81ce:	0783      	lsls	r3, r0, #30
    81d0:	d046      	beq.n	8260 <memset+0x94>
    81d2:	1e54      	subs	r4, r2, #1
    81d4:	2a00      	cmp	r2, #0
    81d6:	d042      	beq.n	825e <memset+0x92>
    81d8:	b2ce      	uxtb	r6, r1
    81da:	1c03      	adds	r3, r0, #0
    81dc:	2503      	movs	r5, #3
    81de:	e003      	b.n	81e8 <memset+0x1c>
    81e0:	1e62      	subs	r2, r4, #1
    81e2:	2c00      	cmp	r4, #0
    81e4:	d03b      	beq.n	825e <memset+0x92>
    81e6:	1c14      	adds	r4, r2, #0
    81e8:	3301      	adds	r3, #1
    81ea:	1e5a      	subs	r2, r3, #1
    81ec:	7016      	strb	r6, [r2, #0]
    81ee:	422b      	tst	r3, r5
    81f0:	d1f6      	bne.n	81e0 <memset+0x14>
    81f2:	2c03      	cmp	r4, #3
    81f4:	d92b      	bls.n	824e <memset+0x82>
    81f6:	25ff      	movs	r5, #255	; 0xff
    81f8:	400d      	ands	r5, r1
    81fa:	022a      	lsls	r2, r5, #8
    81fc:	4315      	orrs	r5, r2
    81fe:	042a      	lsls	r2, r5, #16
    8200:	4315      	orrs	r5, r2
    8202:	2c0f      	cmp	r4, #15
    8204:	d915      	bls.n	8232 <memset+0x66>
    8206:	1c27      	adds	r7, r4, #0
    8208:	3f10      	subs	r7, #16
    820a:	093f      	lsrs	r7, r7, #4
    820c:	1c1e      	adds	r6, r3, #0
    820e:	013a      	lsls	r2, r7, #4
    8210:	3610      	adds	r6, #16
    8212:	18b6      	adds	r6, r6, r2
    8214:	1c1a      	adds	r2, r3, #0
    8216:	6015      	str	r5, [r2, #0]
    8218:	6055      	str	r5, [r2, #4]
    821a:	6095      	str	r5, [r2, #8]
    821c:	60d5      	str	r5, [r2, #12]
    821e:	3210      	adds	r2, #16
    8220:	42b2      	cmp	r2, r6
    8222:	d1f8      	bne.n	8216 <memset+0x4a>
    8224:	3701      	adds	r7, #1
    8226:	013f      	lsls	r7, r7, #4
    8228:	220f      	movs	r2, #15
    822a:	19db      	adds	r3, r3, r7
    822c:	4014      	ands	r4, r2
    822e:	2c03      	cmp	r4, #3
    8230:	d90d      	bls.n	824e <memset+0x82>
    8232:	1f27      	subs	r7, r4, #4
    8234:	08bf      	lsrs	r7, r7, #2
    8236:	00ba      	lsls	r2, r7, #2
    8238:	1d1e      	adds	r6, r3, #4
    823a:	18b6      	adds	r6, r6, r2
    823c:	1c1a      	adds	r2, r3, #0
    823e:	c220      	stmia	r2!, {r5}
    8240:	42b2      	cmp	r2, r6
    8242:	d1fc      	bne.n	823e <memset+0x72>
    8244:	3701      	adds	r7, #1
    8246:	00bf      	lsls	r7, r7, #2
    8248:	2203      	movs	r2, #3
    824a:	19db      	adds	r3, r3, r7
    824c:	4014      	ands	r4, r2
    824e:	2c00      	cmp	r4, #0
    8250:	d005      	beq.n	825e <memset+0x92>
    8252:	191c      	adds	r4, r3, r4
    8254:	b2c9      	uxtb	r1, r1
    8256:	7019      	strb	r1, [r3, #0]
    8258:	3301      	adds	r3, #1
    825a:	42a3      	cmp	r3, r4
    825c:	d1fb      	bne.n	8256 <memset+0x8a>
    825e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8260:	1c14      	adds	r4, r2, #0
    8262:	1c03      	adds	r3, r0, #0
    8264:	e7c5      	b.n	81f2 <memset+0x26>
    8266:	46c0      	nop			; (mov r8, r8)

00008268 <__call_exitprocs>:
    8268:	b5f0      	push	{r4, r5, r6, r7, lr}
    826a:	465f      	mov	r7, fp
    826c:	4656      	mov	r6, sl
    826e:	464d      	mov	r5, r9
    8270:	4644      	mov	r4, r8
    8272:	b4f0      	push	{r4, r5, r6, r7}
    8274:	4b40      	ldr	r3, [pc, #256]	; (8378 <__call_exitprocs+0x110>)
    8276:	b085      	sub	sp, #20
    8278:	681b      	ldr	r3, [r3, #0]
    827a:	9002      	str	r0, [sp, #8]
    827c:	9301      	str	r3, [sp, #4]
    827e:	3349      	adds	r3, #73	; 0x49
    8280:	33ff      	adds	r3, #255	; 0xff
    8282:	9303      	str	r3, [sp, #12]
    8284:	1c0f      	adds	r7, r1, #0
    8286:	9801      	ldr	r0, [sp, #4]
    8288:	21a4      	movs	r1, #164	; 0xa4
    828a:	0049      	lsls	r1, r1, #1
    828c:	5842      	ldr	r2, [r0, r1]
    828e:	4690      	mov	r8, r2
    8290:	2a00      	cmp	r2, #0
    8292:	d04a      	beq.n	832a <__call_exitprocs+0xc2>
    8294:	9803      	ldr	r0, [sp, #12]
    8296:	4681      	mov	r9, r0
    8298:	4641      	mov	r1, r8
    829a:	684e      	ldr	r6, [r1, #4]
    829c:	1e74      	subs	r4, r6, #1
    829e:	d441      	bmi.n	8324 <__call_exitprocs+0xbc>
    82a0:	4645      	mov	r5, r8
    82a2:	00a3      	lsls	r3, r4, #2
    82a4:	3588      	adds	r5, #136	; 0x88
    82a6:	18ed      	adds	r5, r5, r3
    82a8:	20c6      	movs	r0, #198	; 0xc6
    82aa:	23c4      	movs	r3, #196	; 0xc4
    82ac:	3601      	adds	r6, #1
    82ae:	005b      	lsls	r3, r3, #1
    82b0:	0040      	lsls	r0, r0, #1
    82b2:	00b6      	lsls	r6, r6, #2
    82b4:	469b      	mov	fp, r3
    82b6:	4682      	mov	sl, r0
    82b8:	4446      	add	r6, r8
    82ba:	44c3      	add	fp, r8
    82bc:	44c2      	add	sl, r8
    82be:	e008      	b.n	82d2 <__call_exitprocs+0x6a>
    82c0:	1c2b      	adds	r3, r5, #0
    82c2:	3380      	adds	r3, #128	; 0x80
    82c4:	681b      	ldr	r3, [r3, #0]
    82c6:	42bb      	cmp	r3, r7
    82c8:	d005      	beq.n	82d6 <__call_exitprocs+0x6e>
    82ca:	3d04      	subs	r5, #4
    82cc:	3e04      	subs	r6, #4
    82ce:	3c01      	subs	r4, #1
    82d0:	d328      	bcc.n	8324 <__call_exitprocs+0xbc>
    82d2:	2f00      	cmp	r7, #0
    82d4:	d1f4      	bne.n	82c0 <__call_exitprocs+0x58>
    82d6:	4641      	mov	r1, r8
    82d8:	684a      	ldr	r2, [r1, #4]
    82da:	6833      	ldr	r3, [r6, #0]
    82dc:	3a01      	subs	r2, #1
    82de:	42a2      	cmp	r2, r4
    82e0:	d02c      	beq.n	833c <__call_exitprocs+0xd4>
    82e2:	2200      	movs	r2, #0
    82e4:	6032      	str	r2, [r6, #0]
    82e6:	2b00      	cmp	r3, #0
    82e8:	d0ef      	beq.n	82ca <__call_exitprocs+0x62>
    82ea:	4640      	mov	r0, r8
    82ec:	4659      	mov	r1, fp
    82ee:	6840      	ldr	r0, [r0, #4]
    82f0:	2201      	movs	r2, #1
    82f2:	6809      	ldr	r1, [r1, #0]
    82f4:	40a2      	lsls	r2, r4
    82f6:	9000      	str	r0, [sp, #0]
    82f8:	4211      	tst	r1, r2
    82fa:	d01d      	beq.n	8338 <__call_exitprocs+0xd0>
    82fc:	4650      	mov	r0, sl
    82fe:	6800      	ldr	r0, [r0, #0]
    8300:	4210      	tst	r0, r2
    8302:	d11d      	bne.n	8340 <__call_exitprocs+0xd8>
    8304:	9802      	ldr	r0, [sp, #8]
    8306:	6829      	ldr	r1, [r5, #0]
    8308:	4798      	blx	r3
    830a:	4641      	mov	r1, r8
    830c:	6849      	ldr	r1, [r1, #4]
    830e:	9a00      	ldr	r2, [sp, #0]
    8310:	4291      	cmp	r1, r2
    8312:	d1b8      	bne.n	8286 <__call_exitprocs+0x1e>
    8314:	464a      	mov	r2, r9
    8316:	6812      	ldr	r2, [r2, #0]
    8318:	4542      	cmp	r2, r8
    831a:	d1b4      	bne.n	8286 <__call_exitprocs+0x1e>
    831c:	3d04      	subs	r5, #4
    831e:	3e04      	subs	r6, #4
    8320:	3c01      	subs	r4, #1
    8322:	d2d6      	bcs.n	82d2 <__call_exitprocs+0x6a>
    8324:	4a15      	ldr	r2, [pc, #84]	; (837c <__call_exitprocs+0x114>)
    8326:	2a00      	cmp	r2, #0
    8328:	d10d      	bne.n	8346 <__call_exitprocs+0xde>
    832a:	b005      	add	sp, #20
    832c:	bc3c      	pop	{r2, r3, r4, r5}
    832e:	4690      	mov	r8, r2
    8330:	4699      	mov	r9, r3
    8332:	46a2      	mov	sl, r4
    8334:	46ab      	mov	fp, r5
    8336:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8338:	4798      	blx	r3
    833a:	e7e6      	b.n	830a <__call_exitprocs+0xa2>
    833c:	604c      	str	r4, [r1, #4]
    833e:	e7d2      	b.n	82e6 <__call_exitprocs+0x7e>
    8340:	6828      	ldr	r0, [r5, #0]
    8342:	4798      	blx	r3
    8344:	e7e1      	b.n	830a <__call_exitprocs+0xa2>
    8346:	4643      	mov	r3, r8
    8348:	685b      	ldr	r3, [r3, #4]
    834a:	4640      	mov	r0, r8
    834c:	2b00      	cmp	r3, #0
    834e:	d10d      	bne.n	836c <__call_exitprocs+0x104>
    8350:	6803      	ldr	r3, [r0, #0]
    8352:	2b00      	cmp	r3, #0
    8354:	d00e      	beq.n	8374 <__call_exitprocs+0x10c>
    8356:	4649      	mov	r1, r9
    8358:	600b      	str	r3, [r1, #0]
    835a:	e000      	b.n	835e <__call_exitprocs+0xf6>
    835c:	bf00      	nop
    835e:	464b      	mov	r3, r9
    8360:	681a      	ldr	r2, [r3, #0]
    8362:	4690      	mov	r8, r2
    8364:	4641      	mov	r1, r8
    8366:	2900      	cmp	r1, #0
    8368:	d196      	bne.n	8298 <__call_exitprocs+0x30>
    836a:	e7de      	b.n	832a <__call_exitprocs+0xc2>
    836c:	6803      	ldr	r3, [r0, #0]
    836e:	46c1      	mov	r9, r8
    8370:	4698      	mov	r8, r3
    8372:	e7f7      	b.n	8364 <__call_exitprocs+0xfc>
    8374:	2300      	movs	r3, #0
    8376:	e7fa      	b.n	836e <__call_exitprocs+0x106>
    8378:	0000a588 	.word	0x0000a588
    837c:	00000000 	.word	0x00000000

00008380 <atexit>:
    8380:	b508      	push	{r3, lr}
    8382:	1c01      	adds	r1, r0, #0
    8384:	2200      	movs	r2, #0
    8386:	2000      	movs	r0, #0
    8388:	2300      	movs	r3, #0
    838a:	f000 f819 	bl	83c0 <__register_exitproc>
    838e:	bd08      	pop	{r3, pc}

00008390 <__libc_fini_array>:
    8390:	b538      	push	{r3, r4, r5, lr}
    8392:	4b09      	ldr	r3, [pc, #36]	; (83b8 <__libc_fini_array+0x28>)
    8394:	4d09      	ldr	r5, [pc, #36]	; (83bc <__libc_fini_array+0x2c>)
    8396:	1aed      	subs	r5, r5, r3
    8398:	10ad      	asrs	r5, r5, #2
    839a:	d009      	beq.n	83b0 <__libc_fini_array+0x20>
    839c:	3d01      	subs	r5, #1
    839e:	00ac      	lsls	r4, r5, #2
    83a0:	18e4      	adds	r4, r4, r3
    83a2:	e000      	b.n	83a6 <__libc_fini_array+0x16>
    83a4:	3d01      	subs	r5, #1
    83a6:	6823      	ldr	r3, [r4, #0]
    83a8:	4798      	blx	r3
    83aa:	3c04      	subs	r4, #4
    83ac:	2d00      	cmp	r5, #0
    83ae:	d1f9      	bne.n	83a4 <__libc_fini_array+0x14>
    83b0:	f002 f8e2 	bl	a578 <_fini>
    83b4:	bd38      	pop	{r3, r4, r5, pc}
    83b6:	46c0      	nop			; (mov r8, r8)
    83b8:	000125bc 	.word	0x000125bc
    83bc:	000125c0 	.word	0x000125c0

000083c0 <__register_exitproc>:
    83c0:	b5f0      	push	{r4, r5, r6, r7, lr}
    83c2:	464f      	mov	r7, r9
    83c4:	4646      	mov	r6, r8
    83c6:	b4c0      	push	{r6, r7}
    83c8:	4698      	mov	r8, r3
    83ca:	4b2b      	ldr	r3, [pc, #172]	; (8478 <__register_exitproc+0xb8>)
    83cc:	25a4      	movs	r5, #164	; 0xa4
    83ce:	681b      	ldr	r3, [r3, #0]
    83d0:	006d      	lsls	r5, r5, #1
    83d2:	595c      	ldr	r4, [r3, r5]
    83d4:	b083      	sub	sp, #12
    83d6:	1c06      	adds	r6, r0, #0
    83d8:	1c0f      	adds	r7, r1, #0
    83da:	4691      	mov	r9, r2
    83dc:	9301      	str	r3, [sp, #4]
    83de:	2c00      	cmp	r4, #0
    83e0:	d044      	beq.n	846c <__register_exitproc+0xac>
    83e2:	6865      	ldr	r5, [r4, #4]
    83e4:	2d1f      	cmp	r5, #31
    83e6:	dd1a      	ble.n	841e <__register_exitproc+0x5e>
    83e8:	4b24      	ldr	r3, [pc, #144]	; (847c <__register_exitproc+0xbc>)
    83ea:	2b00      	cmp	r3, #0
    83ec:	d102      	bne.n	83f4 <__register_exitproc+0x34>
    83ee:	2001      	movs	r0, #1
    83f0:	4240      	negs	r0, r0
    83f2:	e01c      	b.n	842e <__register_exitproc+0x6e>
    83f4:	20c8      	movs	r0, #200	; 0xc8
    83f6:	0040      	lsls	r0, r0, #1
    83f8:	e000      	b.n	83fc <__register_exitproc+0x3c>
    83fa:	bf00      	nop
    83fc:	1e04      	subs	r4, r0, #0
    83fe:	d0f6      	beq.n	83ee <__register_exitproc+0x2e>
    8400:	2500      	movs	r5, #0
    8402:	6045      	str	r5, [r0, #4]
    8404:	23a4      	movs	r3, #164	; 0xa4
    8406:	9801      	ldr	r0, [sp, #4]
    8408:	005b      	lsls	r3, r3, #1
    840a:	58c0      	ldr	r0, [r0, r3]
    840c:	9901      	ldr	r1, [sp, #4]
    840e:	6020      	str	r0, [r4, #0]
    8410:	50cc      	str	r4, [r1, r3]
    8412:	23c4      	movs	r3, #196	; 0xc4
    8414:	005b      	lsls	r3, r3, #1
    8416:	50e5      	str	r5, [r4, r3]
    8418:	23c6      	movs	r3, #198	; 0xc6
    841a:	005b      	lsls	r3, r3, #1
    841c:	50e5      	str	r5, [r4, r3]
    841e:	2e00      	cmp	r6, #0
    8420:	d10a      	bne.n	8438 <__register_exitproc+0x78>
    8422:	1c6b      	adds	r3, r5, #1
    8424:	3502      	adds	r5, #2
    8426:	00ad      	lsls	r5, r5, #2
    8428:	6063      	str	r3, [r4, #4]
    842a:	2000      	movs	r0, #0
    842c:	512f      	str	r7, [r5, r4]
    842e:	b003      	add	sp, #12
    8430:	bc0c      	pop	{r2, r3}
    8432:	4690      	mov	r8, r2
    8434:	4699      	mov	r9, r3
    8436:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8438:	00ab      	lsls	r3, r5, #2
    843a:	18e3      	adds	r3, r4, r3
    843c:	2288      	movs	r2, #136	; 0x88
    843e:	4648      	mov	r0, r9
    8440:	5098      	str	r0, [r3, r2]
    8442:	20c4      	movs	r0, #196	; 0xc4
    8444:	0040      	lsls	r0, r0, #1
    8446:	1822      	adds	r2, r4, r0
    8448:	6810      	ldr	r0, [r2, #0]
    844a:	2101      	movs	r1, #1
    844c:	40a9      	lsls	r1, r5
    844e:	4308      	orrs	r0, r1
    8450:	6010      	str	r0, [r2, #0]
    8452:	2284      	movs	r2, #132	; 0x84
    8454:	0052      	lsls	r2, r2, #1
    8456:	4640      	mov	r0, r8
    8458:	5098      	str	r0, [r3, r2]
    845a:	2e02      	cmp	r6, #2
    845c:	d1e1      	bne.n	8422 <__register_exitproc+0x62>
    845e:	22c6      	movs	r2, #198	; 0xc6
    8460:	0052      	lsls	r2, r2, #1
    8462:	18a3      	adds	r3, r4, r2
    8464:	6818      	ldr	r0, [r3, #0]
    8466:	4301      	orrs	r1, r0
    8468:	6019      	str	r1, [r3, #0]
    846a:	e7da      	b.n	8422 <__register_exitproc+0x62>
    846c:	1c1c      	adds	r4, r3, #0
    846e:	344d      	adds	r4, #77	; 0x4d
    8470:	34ff      	adds	r4, #255	; 0xff
    8472:	515c      	str	r4, [r3, r5]
    8474:	e7b5      	b.n	83e2 <__register_exitproc+0x22>
    8476:	46c0      	nop			; (mov r8, r8)
    8478:	0000a588 	.word	0x0000a588
    847c:	00000000 	.word	0x00000000

00008480 <findslot>:
    8480:	4b0b      	ldr	r3, [pc, #44]	; (84b0 <findslot+0x30>)
    8482:	b510      	push	{r4, lr}
    8484:	1c04      	adds	r4, r0, #0
    8486:	6818      	ldr	r0, [r3, #0]
    8488:	2800      	cmp	r0, #0
    848a:	d002      	beq.n	8492 <findslot+0x12>
    848c:	6b83      	ldr	r3, [r0, #56]	; 0x38
    848e:	2b00      	cmp	r3, #0
    8490:	d008      	beq.n	84a4 <findslot+0x24>
    8492:	2c13      	cmp	r4, #19
    8494:	d80a      	bhi.n	84ac <findslot+0x2c>
    8496:	4807      	ldr	r0, [pc, #28]	; (84b4 <findslot+0x34>)
    8498:	00e4      	lsls	r4, r4, #3
    849a:	5823      	ldr	r3, [r4, r0]
    849c:	3301      	adds	r3, #1
    849e:	d005      	beq.n	84ac <findslot+0x2c>
    84a0:	1900      	adds	r0, r0, r4
    84a2:	bd10      	pop	{r4, pc}
    84a4:	f000 fbb4 	bl	8c10 <__sinit>
    84a8:	2c13      	cmp	r4, #19
    84aa:	d9f4      	bls.n	8496 <findslot+0x16>
    84ac:	2000      	movs	r0, #0
    84ae:	e7f8      	b.n	84a2 <findslot+0x22>
    84b0:	00012b08 	.word	0x00012b08
    84b4:	00012f48 	.word	0x00012f48

000084b8 <checkerror.part.0>:
    84b8:	b570      	push	{r4, r5, r6, lr}
    84ba:	f000 fb73 	bl	8ba4 <__errno>
    84be:	2600      	movs	r6, #0
    84c0:	1c04      	adds	r4, r0, #0
    84c2:	2513      	movs	r5, #19
    84c4:	1c28      	adds	r0, r5, #0
    84c6:	1c31      	adds	r1, r6, #0
    84c8:	beab      	bkpt	0x00ab
    84ca:	1c05      	adds	r5, r0, #0
    84cc:	2001      	movs	r0, #1
    84ce:	6025      	str	r5, [r4, #0]
    84d0:	4240      	negs	r0, r0
    84d2:	bd70      	pop	{r4, r5, r6, pc}

000084d4 <initialise_monitor_handles>:
    84d4:	b5f0      	push	{r4, r5, r6, r7, lr}
    84d6:	464e      	mov	r6, r9
    84d8:	4645      	mov	r5, r8
    84da:	4657      	mov	r7, sl
    84dc:	b4e0      	push	{r5, r6, r7}
    84de:	4a25      	ldr	r2, [pc, #148]	; (8574 <initialise_monitor_handles+0xa0>)
    84e0:	b084      	sub	sp, #16
    84e2:	ac01      	add	r4, sp, #4
    84e4:	2603      	movs	r6, #3
    84e6:	2300      	movs	r3, #0
    84e8:	9201      	str	r2, [sp, #4]
    84ea:	4690      	mov	r8, r2
    84ec:	60a6      	str	r6, [r4, #8]
    84ee:	2501      	movs	r5, #1
    84f0:	6063      	str	r3, [r4, #4]
    84f2:	1c28      	adds	r0, r5, #0
    84f4:	1c21      	adds	r1, r4, #0
    84f6:	beab      	bkpt	0x00ab
    84f8:	4681      	mov	r9, r0
    84fa:	4f1f      	ldr	r7, [pc, #124]	; (8578 <initialise_monitor_handles+0xa4>)
    84fc:	4643      	mov	r3, r8
    84fe:	9301      	str	r3, [sp, #4]
    8500:	464a      	mov	r2, r9
    8502:	2304      	movs	r3, #4
    8504:	60a6      	str	r6, [r4, #8]
    8506:	603a      	str	r2, [r7, #0]
    8508:	6063      	str	r3, [r4, #4]
    850a:	1c28      	adds	r0, r5, #0
    850c:	1c21      	adds	r1, r4, #0
    850e:	beab      	bkpt	0x00ab
    8510:	4682      	mov	sl, r0
    8512:	4a1a      	ldr	r2, [pc, #104]	; (857c <initialise_monitor_handles+0xa8>)
    8514:	4653      	mov	r3, sl
    8516:	6013      	str	r3, [r2, #0]
    8518:	4643      	mov	r3, r8
    851a:	9301      	str	r3, [sp, #4]
    851c:	2308      	movs	r3, #8
    851e:	60a6      	str	r6, [r4, #8]
    8520:	4691      	mov	r9, r2
    8522:	6063      	str	r3, [r4, #4]
    8524:	1c28      	adds	r0, r5, #0
    8526:	1c21      	adds	r1, r4, #0
    8528:	beab      	bkpt	0x00ab
    852a:	1c04      	adds	r4, r0, #0
    852c:	4b14      	ldr	r3, [pc, #80]	; (8580 <initialise_monitor_handles+0xac>)
    852e:	601c      	str	r4, [r3, #0]
    8530:	1c62      	adds	r2, r4, #1
    8532:	d019      	beq.n	8568 <initialise_monitor_handles+0x94>
    8534:	464b      	mov	r3, r9
    8536:	681d      	ldr	r5, [r3, #0]
    8538:	4812      	ldr	r0, [pc, #72]	; (8584 <initialise_monitor_handles+0xb0>)
    853a:	2201      	movs	r2, #1
    853c:	1c01      	adds	r1, r0, #0
    853e:	1c03      	adds	r3, r0, #0
    8540:	31a0      	adds	r1, #160	; 0xa0
    8542:	4252      	negs	r2, r2
    8544:	601a      	str	r2, [r3, #0]
    8546:	3308      	adds	r3, #8
    8548:	428b      	cmp	r3, r1
    854a:	d1fb      	bne.n	8544 <initialise_monitor_handles+0x70>
    854c:	683f      	ldr	r7, [r7, #0]
    854e:	2300      	movs	r3, #0
    8550:	6007      	str	r7, [r0, #0]
    8552:	6043      	str	r3, [r0, #4]
    8554:	6085      	str	r5, [r0, #8]
    8556:	60c3      	str	r3, [r0, #12]
    8558:	6104      	str	r4, [r0, #16]
    855a:	6143      	str	r3, [r0, #20]
    855c:	b004      	add	sp, #16
    855e:	bc1c      	pop	{r2, r3, r4}
    8560:	4690      	mov	r8, r2
    8562:	4699      	mov	r9, r3
    8564:	46a2      	mov	sl, r4
    8566:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8568:	464a      	mov	r2, r9
    856a:	6814      	ldr	r4, [r2, #0]
    856c:	601c      	str	r4, [r3, #0]
    856e:	1c25      	adds	r5, r4, #0
    8570:	e7e2      	b.n	8538 <initialise_monitor_handles+0x64>
    8572:	46c0      	nop			; (mov r8, r8)
    8574:	0000a58c 	.word	0x0000a58c
    8578:	00012f3c 	.word	0x00012f3c
    857c:	00012f38 	.word	0x00012f38
    8580:	00012f44 	.word	0x00012f44
    8584:	00012f48 	.word	0x00012f48

00008588 <_swiread>:
    8588:	b530      	push	{r4, r5, lr}
    858a:	b085      	sub	sp, #20
    858c:	ac01      	add	r4, sp, #4
    858e:	9001      	str	r0, [sp, #4]
    8590:	6061      	str	r1, [r4, #4]
    8592:	60a2      	str	r2, [r4, #8]
    8594:	2506      	movs	r5, #6
    8596:	1c28      	adds	r0, r5, #0
    8598:	1c21      	adds	r1, r4, #0
    859a:	beab      	bkpt	0x00ab
    859c:	1c04      	adds	r4, r0, #0
    859e:	1c63      	adds	r3, r4, #1
    85a0:	d002      	beq.n	85a8 <_swiread+0x20>
    85a2:	1c20      	adds	r0, r4, #0
    85a4:	b005      	add	sp, #20
    85a6:	bd30      	pop	{r4, r5, pc}
    85a8:	f7ff ff86 	bl	84b8 <checkerror.part.0>
    85ac:	1c04      	adds	r4, r0, #0
    85ae:	e7f8      	b.n	85a2 <_swiread+0x1a>

000085b0 <_read>:
    85b0:	b570      	push	{r4, r5, r6, lr}
    85b2:	1c0e      	adds	r6, r1, #0
    85b4:	1c15      	adds	r5, r2, #0
    85b6:	f7ff ff63 	bl	8480 <findslot>
    85ba:	1e04      	subs	r4, r0, #0
    85bc:	d00b      	beq.n	85d6 <_read+0x26>
    85be:	1c2a      	adds	r2, r5, #0
    85c0:	6800      	ldr	r0, [r0, #0]
    85c2:	1c31      	adds	r1, r6, #0
    85c4:	f7ff ffe0 	bl	8588 <_swiread>
    85c8:	1c42      	adds	r2, r0, #1
    85ca:	d003      	beq.n	85d4 <_read+0x24>
    85cc:	6862      	ldr	r2, [r4, #4]
    85ce:	1a28      	subs	r0, r5, r0
    85d0:	1813      	adds	r3, r2, r0
    85d2:	6063      	str	r3, [r4, #4]
    85d4:	bd70      	pop	{r4, r5, r6, pc}
    85d6:	f000 fae5 	bl	8ba4 <__errno>
    85da:	2309      	movs	r3, #9
    85dc:	6003      	str	r3, [r0, #0]
    85de:	2001      	movs	r0, #1
    85e0:	4240      	negs	r0, r0
    85e2:	e7f7      	b.n	85d4 <_read+0x24>

000085e4 <_swilseek>:
    85e4:	b5f0      	push	{r4, r5, r6, r7, lr}
    85e6:	b083      	sub	sp, #12
    85e8:	1c0c      	adds	r4, r1, #0
    85ea:	1c16      	adds	r6, r2, #0
    85ec:	f7ff ff48 	bl	8480 <findslot>
    85f0:	1e05      	subs	r5, r0, #0
    85f2:	d039      	beq.n	8668 <_swilseek+0x84>
    85f4:	2e02      	cmp	r6, #2
    85f6:	d828      	bhi.n	864a <_swilseek+0x66>
    85f8:	2e01      	cmp	r6, #1
    85fa:	d01d      	beq.n	8638 <_swilseek+0x54>
    85fc:	466f      	mov	r7, sp
    85fe:	2e02      	cmp	r6, #2
    8600:	d00f      	beq.n	8622 <_swilseek+0x3e>
    8602:	682b      	ldr	r3, [r5, #0]
    8604:	260a      	movs	r6, #10
    8606:	9300      	str	r3, [sp, #0]
    8608:	607c      	str	r4, [r7, #4]
    860a:	1c30      	adds	r0, r6, #0
    860c:	1c39      	adds	r1, r7, #0
    860e:	beab      	bkpt	0x00ab
    8610:	1c07      	adds	r7, r0, #0
    8612:	1c7b      	adds	r3, r7, #1
    8614:	d015      	beq.n	8642 <_swilseek+0x5e>
    8616:	2f00      	cmp	r7, #0
    8618:	db23      	blt.n	8662 <_swilseek+0x7e>
    861a:	606c      	str	r4, [r5, #4]
    861c:	1c20      	adds	r0, r4, #0
    861e:	b003      	add	sp, #12
    8620:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8622:	6803      	ldr	r3, [r0, #0]
    8624:	260c      	movs	r6, #12
    8626:	9300      	str	r3, [sp, #0]
    8628:	1c30      	adds	r0, r6, #0
    862a:	1c39      	adds	r1, r7, #0
    862c:	beab      	bkpt	0x00ab
    862e:	1c06      	adds	r6, r0, #0
    8630:	1c73      	adds	r3, r6, #1
    8632:	d011      	beq.n	8658 <_swilseek+0x74>
    8634:	19a4      	adds	r4, r4, r6
    8636:	e7e4      	b.n	8602 <_swilseek+0x1e>
    8638:	6843      	ldr	r3, [r0, #4]
    863a:	18e4      	adds	r4, r4, r3
    863c:	d405      	bmi.n	864a <_swilseek+0x66>
    863e:	466f      	mov	r7, sp
    8640:	e7df      	b.n	8602 <_swilseek+0x1e>
    8642:	f7ff ff39 	bl	84b8 <checkerror.part.0>
    8646:	1c07      	adds	r7, r0, #0
    8648:	e7e5      	b.n	8616 <_swilseek+0x32>
    864a:	f000 faab 	bl	8ba4 <__errno>
    864e:	2316      	movs	r3, #22
    8650:	6003      	str	r3, [r0, #0]
    8652:	2001      	movs	r0, #1
    8654:	4240      	negs	r0, r0
    8656:	e7e2      	b.n	861e <_swilseek+0x3a>
    8658:	f7ff ff2e 	bl	84b8 <checkerror.part.0>
    865c:	1c06      	adds	r6, r0, #0
    865e:	1c43      	adds	r3, r0, #1
    8660:	d1e8      	bne.n	8634 <_swilseek+0x50>
    8662:	2001      	movs	r0, #1
    8664:	4240      	negs	r0, r0
    8666:	e7da      	b.n	861e <_swilseek+0x3a>
    8668:	f000 fa9c 	bl	8ba4 <__errno>
    866c:	2309      	movs	r3, #9
    866e:	6003      	str	r3, [r0, #0]
    8670:	2001      	movs	r0, #1
    8672:	4240      	negs	r0, r0
    8674:	e7d3      	b.n	861e <_swilseek+0x3a>
    8676:	46c0      	nop			; (mov r8, r8)

00008678 <_lseek>:
    8678:	b508      	push	{r3, lr}
    867a:	f7ff ffb3 	bl	85e4 <_swilseek>
    867e:	bd08      	pop	{r3, pc}

00008680 <_swiwrite>:
    8680:	b530      	push	{r4, r5, lr}
    8682:	b085      	sub	sp, #20
    8684:	ac01      	add	r4, sp, #4
    8686:	9001      	str	r0, [sp, #4]
    8688:	6061      	str	r1, [r4, #4]
    868a:	60a2      	str	r2, [r4, #8]
    868c:	2505      	movs	r5, #5
    868e:	1c28      	adds	r0, r5, #0
    8690:	1c21      	adds	r1, r4, #0
    8692:	beab      	bkpt	0x00ab
    8694:	1c04      	adds	r4, r0, #0
    8696:	1c63      	adds	r3, r4, #1
    8698:	d002      	beq.n	86a0 <_swiwrite+0x20>
    869a:	1c20      	adds	r0, r4, #0
    869c:	b005      	add	sp, #20
    869e:	bd30      	pop	{r4, r5, pc}
    86a0:	f7ff ff0a 	bl	84b8 <checkerror.part.0>
    86a4:	1c04      	adds	r4, r0, #0
    86a6:	e7f8      	b.n	869a <_swiwrite+0x1a>

000086a8 <_write>:
    86a8:	b570      	push	{r4, r5, r6, lr}
    86aa:	1c0e      	adds	r6, r1, #0
    86ac:	1c15      	adds	r5, r2, #0
    86ae:	f7ff fee7 	bl	8480 <findslot>
    86b2:	1e04      	subs	r4, r0, #0
    86b4:	d01c      	beq.n	86f0 <_write+0x48>
    86b6:	6800      	ldr	r0, [r0, #0]
    86b8:	1c31      	adds	r1, r6, #0
    86ba:	1c2a      	adds	r2, r5, #0
    86bc:	f7ff ffe0 	bl	8680 <_swiwrite>
    86c0:	1e03      	subs	r3, r0, #0
    86c2:	db12      	blt.n	86ea <_write+0x42>
    86c4:	6861      	ldr	r1, [r4, #4]
    86c6:	1a28      	subs	r0, r5, r0
    86c8:	180a      	adds	r2, r1, r0
    86ca:	6062      	str	r2, [r4, #4]
    86cc:	429d      	cmp	r5, r3
    86ce:	d000      	beq.n	86d2 <_write+0x2a>
    86d0:	bd70      	pop	{r4, r5, r6, pc}
    86d2:	f000 fa67 	bl	8ba4 <__errno>
    86d6:	2600      	movs	r6, #0
    86d8:	1c04      	adds	r4, r0, #0
    86da:	2513      	movs	r5, #19
    86dc:	1c28      	adds	r0, r5, #0
    86de:	1c31      	adds	r1, r6, #0
    86e0:	beab      	bkpt	0x00ab
    86e2:	1c05      	adds	r5, r0, #0
    86e4:	2000      	movs	r0, #0
    86e6:	6025      	str	r5, [r4, #0]
    86e8:	e7f2      	b.n	86d0 <_write+0x28>
    86ea:	2001      	movs	r0, #1
    86ec:	4240      	negs	r0, r0
    86ee:	e7ef      	b.n	86d0 <_write+0x28>
    86f0:	f000 fa58 	bl	8ba4 <__errno>
    86f4:	2309      	movs	r3, #9
    86f6:	6003      	str	r3, [r0, #0]
    86f8:	2001      	movs	r0, #1
    86fa:	4240      	negs	r0, r0
    86fc:	e7e8      	b.n	86d0 <_write+0x28>
    86fe:	46c0      	nop			; (mov r8, r8)

00008700 <_swiclose>:
    8700:	b530      	push	{r4, r5, lr}
    8702:	b083      	sub	sp, #12
    8704:	9001      	str	r0, [sp, #4]
    8706:	ad01      	add	r5, sp, #4
    8708:	2402      	movs	r4, #2
    870a:	1c20      	adds	r0, r4, #0
    870c:	1c29      	adds	r1, r5, #0
    870e:	beab      	bkpt	0x00ab
    8710:	1c04      	adds	r4, r0, #0
    8712:	1c63      	adds	r3, r4, #1
    8714:	d002      	beq.n	871c <_swiclose+0x1c>
    8716:	1c20      	adds	r0, r4, #0
    8718:	b003      	add	sp, #12
    871a:	bd30      	pop	{r4, r5, pc}
    871c:	f7ff fecc 	bl	84b8 <checkerror.part.0>
    8720:	1c04      	adds	r4, r0, #0
    8722:	e7f8      	b.n	8716 <_swiclose+0x16>

00008724 <_close>:
    8724:	b570      	push	{r4, r5, r6, lr}
    8726:	b082      	sub	sp, #8
    8728:	1c04      	adds	r4, r0, #0
    872a:	f7ff fea9 	bl	8480 <findslot>
    872e:	1e05      	subs	r5, r0, #0
    8730:	d022      	beq.n	8778 <_close+0x54>
    8732:	3c01      	subs	r4, #1
    8734:	2c01      	cmp	r4, #1
    8736:	d911      	bls.n	875c <_close+0x38>
    8738:	682b      	ldr	r3, [r5, #0]
    873a:	ae01      	add	r6, sp, #4
    873c:	9301      	str	r3, [sp, #4]
    873e:	2402      	movs	r4, #2
    8740:	1c20      	adds	r0, r4, #0
    8742:	1c31      	adds	r1, r6, #0
    8744:	beab      	bkpt	0x00ab
    8746:	1c04      	adds	r4, r0, #0
    8748:	1c63      	adds	r3, r4, #1
    874a:	d011      	beq.n	8770 <_close+0x4c>
    874c:	2c00      	cmp	r4, #0
    874e:	d102      	bne.n	8756 <_close+0x32>
    8750:	2301      	movs	r3, #1
    8752:	425b      	negs	r3, r3
    8754:	602b      	str	r3, [r5, #0]
    8756:	1c20      	adds	r0, r4, #0
    8758:	b002      	add	sp, #8
    875a:	bd70      	pop	{r4, r5, r6, pc}
    875c:	4b0a      	ldr	r3, [pc, #40]	; (8788 <_close+0x64>)
    875e:	689a      	ldr	r2, [r3, #8]
    8760:	691b      	ldr	r3, [r3, #16]
    8762:	429a      	cmp	r2, r3
    8764:	d1e8      	bne.n	8738 <_close+0x14>
    8766:	2301      	movs	r3, #1
    8768:	425b      	negs	r3, r3
    876a:	6003      	str	r3, [r0, #0]
    876c:	2400      	movs	r4, #0
    876e:	e7f2      	b.n	8756 <_close+0x32>
    8770:	f7ff fea2 	bl	84b8 <checkerror.part.0>
    8774:	1c04      	adds	r4, r0, #0
    8776:	e7e9      	b.n	874c <_close+0x28>
    8778:	f000 fa14 	bl	8ba4 <__errno>
    877c:	2401      	movs	r4, #1
    877e:	2309      	movs	r3, #9
    8780:	6003      	str	r3, [r0, #0]
    8782:	4264      	negs	r4, r4
    8784:	e7e7      	b.n	8756 <_close+0x32>
    8786:	46c0      	nop			; (mov r8, r8)
    8788:	00012f48 	.word	0x00012f48

0000878c <_getpid>:
    878c:	2001      	movs	r0, #1
    878e:	4770      	bx	lr

00008790 <_sbrk>:
    8790:	4a0a      	ldr	r2, [pc, #40]	; (87bc <_sbrk+0x2c>)
    8792:	b508      	push	{r3, lr}
    8794:	6813      	ldr	r3, [r2, #0]
    8796:	2b00      	cmp	r3, #0
    8798:	d00d      	beq.n	87b6 <_sbrk+0x26>
    879a:	1818      	adds	r0, r3, r0
    879c:	4669      	mov	r1, sp
    879e:	4288      	cmp	r0, r1
    87a0:	d802      	bhi.n	87a8 <_sbrk+0x18>
    87a2:	6010      	str	r0, [r2, #0]
    87a4:	1c18      	adds	r0, r3, #0
    87a6:	bd08      	pop	{r3, pc}
    87a8:	f000 f9fc 	bl	8ba4 <__errno>
    87ac:	230c      	movs	r3, #12
    87ae:	6003      	str	r3, [r0, #0]
    87b0:	2301      	movs	r3, #1
    87b2:	425b      	negs	r3, r3
    87b4:	e7f6      	b.n	87a4 <_sbrk+0x14>
    87b6:	4b02      	ldr	r3, [pc, #8]	; (87c0 <_sbrk+0x30>)
    87b8:	6013      	str	r3, [r2, #0]
    87ba:	e7ee      	b.n	879a <_sbrk+0xa>
    87bc:	00012f40 	.word	0x00012f40
    87c0:	00013028 	.word	0x00013028

000087c4 <_swistat>:
    87c4:	b570      	push	{r4, r5, r6, lr}
    87c6:	1c0d      	adds	r5, r1, #0
    87c8:	f7ff fe5a 	bl	8480 <findslot>
    87cc:	1e04      	subs	r4, r0, #0
    87ce:	d018      	beq.n	8802 <_swistat+0x3e>
    87d0:	686a      	ldr	r2, [r5, #4]
    87d2:	2380      	movs	r3, #128	; 0x80
    87d4:	019b      	lsls	r3, r3, #6
    87d6:	4313      	orrs	r3, r2
    87d8:	606b      	str	r3, [r5, #4]
    87da:	2380      	movs	r3, #128	; 0x80
    87dc:	00db      	lsls	r3, r3, #3
    87de:	62eb      	str	r3, [r5, #44]	; 0x2c
    87e0:	260c      	movs	r6, #12
    87e2:	1c30      	adds	r0, r6, #0
    87e4:	1c21      	adds	r1, r4, #0
    87e6:	beab      	bkpt	0x00ab
    87e8:	1c04      	adds	r4, r0, #0
    87ea:	1c63      	adds	r3, r4, #1
    87ec:	d003      	beq.n	87f6 <_swistat+0x32>
    87ee:	612c      	str	r4, [r5, #16]
    87f0:	2400      	movs	r4, #0
    87f2:	1c20      	adds	r0, r4, #0
    87f4:	bd70      	pop	{r4, r5, r6, pc}
    87f6:	f7ff fe5f 	bl	84b8 <checkerror.part.0>
    87fa:	1c04      	adds	r4, r0, #0
    87fc:	1c42      	adds	r2, r0, #1
    87fe:	d1f6      	bne.n	87ee <_swistat+0x2a>
    8800:	e7f7      	b.n	87f2 <_swistat+0x2e>
    8802:	f000 f9cf 	bl	8ba4 <__errno>
    8806:	2401      	movs	r4, #1
    8808:	2309      	movs	r3, #9
    880a:	6003      	str	r3, [r0, #0]
    880c:	4264      	negs	r4, r4
    880e:	e7f0      	b.n	87f2 <_swistat+0x2e>

00008810 <_fstat>:
    8810:	b538      	push	{r3, r4, r5, lr}
    8812:	223c      	movs	r2, #60	; 0x3c
    8814:	1c05      	adds	r5, r0, #0
    8816:	1c0c      	adds	r4, r1, #0
    8818:	1c08      	adds	r0, r1, #0
    881a:	2100      	movs	r1, #0
    881c:	f7ff fcd6 	bl	81cc <memset>
    8820:	1c28      	adds	r0, r5, #0
    8822:	1c21      	adds	r1, r4, #0
    8824:	f7ff ffce 	bl	87c4 <_swistat>
    8828:	bd38      	pop	{r3, r4, r5, pc}
    882a:	46c0      	nop			; (mov r8, r8)

0000882c <_stat>:
    882c:	b538      	push	{r3, r4, r5, lr}
    882e:	223c      	movs	r2, #60	; 0x3c
    8830:	1c04      	adds	r4, r0, #0
    8832:	1c0d      	adds	r5, r1, #0
    8834:	1c08      	adds	r0, r1, #0
    8836:	2100      	movs	r1, #0
    8838:	f7ff fcc8 	bl	81cc <memset>
    883c:	1c20      	adds	r0, r4, #0
    883e:	2100      	movs	r1, #0
    8840:	f000 f812 	bl	8868 <_swiopen>
    8844:	1c04      	adds	r4, r0, #0
    8846:	1c42      	adds	r2, r0, #1
    8848:	d00c      	beq.n	8864 <_stat+0x38>
    884a:	686a      	ldr	r2, [r5, #4]
    884c:	2381      	movs	r3, #129	; 0x81
    884e:	021b      	lsls	r3, r3, #8
    8850:	4313      	orrs	r3, r2
    8852:	606b      	str	r3, [r5, #4]
    8854:	1c29      	adds	r1, r5, #0
    8856:	f7ff ffb5 	bl	87c4 <_swistat>
    885a:	1c05      	adds	r5, r0, #0
    885c:	1c20      	adds	r0, r4, #0
    885e:	f7ff ff61 	bl	8724 <_close>
    8862:	1c2c      	adds	r4, r5, #0
    8864:	1c20      	adds	r0, r4, #0
    8866:	bd38      	pop	{r3, r4, r5, pc}

00008868 <_swiopen>:
    8868:	b5f0      	push	{r4, r5, r6, r7, lr}
    886a:	464e      	mov	r6, r9
    886c:	4657      	mov	r7, sl
    886e:	4645      	mov	r5, r8
    8870:	b4e0      	push	{r5, r6, r7}
    8872:	4a31      	ldr	r2, [pc, #196]	; (8938 <_swiopen+0xd0>)
    8874:	b090      	sub	sp, #64	; 0x40
    8876:	4682      	mov	sl, r0
    8878:	1c0e      	adds	r6, r1, #0
    887a:	4691      	mov	r9, r2
    887c:	1c13      	adds	r3, r2, #0
    887e:	2400      	movs	r4, #0
    8880:	681d      	ldr	r5, [r3, #0]
    8882:	1c6a      	adds	r2, r5, #1
    8884:	d010      	beq.n	88a8 <_swiopen+0x40>
    8886:	3401      	adds	r4, #1
    8888:	3308      	adds	r3, #8
    888a:	2c14      	cmp	r4, #20
    888c:	d1f8      	bne.n	8880 <_swiopen+0x18>
    888e:	f000 f989 	bl	8ba4 <__errno>
    8892:	2501      	movs	r5, #1
    8894:	2318      	movs	r3, #24
    8896:	6003      	str	r3, [r0, #0]
    8898:	426d      	negs	r5, r5
    889a:	1c28      	adds	r0, r5, #0
    889c:	b010      	add	sp, #64	; 0x40
    889e:	bc1c      	pop	{r2, r3, r4}
    88a0:	4690      	mov	r8, r2
    88a2:	4699      	mov	r9, r3
    88a4:	46a2      	mov	sl, r4
    88a6:	bdf0      	pop	{r4, r5, r6, r7, pc}
    88a8:	23a0      	movs	r3, #160	; 0xa0
    88aa:	011b      	lsls	r3, r3, #4
    88ac:	1c32      	adds	r2, r6, #0
    88ae:	401a      	ands	r2, r3
    88b0:	429a      	cmp	r2, r3
    88b2:	d034      	beq.n	891e <_swiopen+0xb6>
    88b4:	ab01      	add	r3, sp, #4
    88b6:	4698      	mov	r8, r3
    88b8:	03f7      	lsls	r7, r6, #15
    88ba:	2302      	movs	r3, #2
    88bc:	0fff      	lsrs	r7, r7, #31
    88be:	4233      	tst	r3, r6
    88c0:	d000      	beq.n	88c4 <_swiopen+0x5c>
    88c2:	431f      	orrs	r7, r3
    88c4:	4b1d      	ldr	r3, [pc, #116]	; (893c <_swiopen+0xd4>)
    88c6:	421e      	tst	r6, r3
    88c8:	d001      	beq.n	88ce <_swiopen+0x66>
    88ca:	2304      	movs	r3, #4
    88cc:	431f      	orrs	r7, r3
    88ce:	2308      	movs	r3, #8
    88d0:	4233      	tst	r3, r6
    88d2:	d002      	beq.n	88da <_swiopen+0x72>
    88d4:	2204      	movs	r2, #4
    88d6:	4397      	bics	r7, r2
    88d8:	431f      	orrs	r7, r3
    88da:	4652      	mov	r2, sl
    88dc:	4650      	mov	r0, sl
    88de:	9201      	str	r2, [sp, #4]
    88e0:	f000 fde8 	bl	94b4 <strlen>
    88e4:	4643      	mov	r3, r8
    88e6:	6098      	str	r0, [r3, #8]
    88e8:	605f      	str	r7, [r3, #4]
    88ea:	2501      	movs	r5, #1
    88ec:	1c28      	adds	r0, r5, #0
    88ee:	4641      	mov	r1, r8
    88f0:	beab      	bkpt	0x00ab
    88f2:	1c05      	adds	r5, r0, #0
    88f4:	2d00      	cmp	r5, #0
    88f6:	db07      	blt.n	8908 <_swiopen+0xa0>
    88f8:	00e3      	lsls	r3, r4, #3
    88fa:	464a      	mov	r2, r9
    88fc:	50d5      	str	r5, [r2, r3]
    88fe:	444b      	add	r3, r9
    8900:	2200      	movs	r2, #0
    8902:	605a      	str	r2, [r3, #4]
    8904:	1c25      	adds	r5, r4, #0
    8906:	e7c8      	b.n	889a <_swiopen+0x32>
    8908:	f000 f94c 	bl	8ba4 <__errno>
    890c:	2700      	movs	r7, #0
    890e:	1c04      	adds	r4, r0, #0
    8910:	2613      	movs	r6, #19
    8912:	1c30      	adds	r0, r6, #0
    8914:	1c39      	adds	r1, r7, #0
    8916:	beab      	bkpt	0x00ab
    8918:	1c06      	adds	r6, r0, #0
    891a:	6026      	str	r6, [r4, #0]
    891c:	e7bd      	b.n	889a <_swiopen+0x32>
    891e:	ab01      	add	r3, sp, #4
    8920:	4650      	mov	r0, sl
    8922:	1c19      	adds	r1, r3, #0
    8924:	4698      	mov	r8, r3
    8926:	f7ff ff81 	bl	882c <_stat>
    892a:	3001      	adds	r0, #1
    892c:	d0c4      	beq.n	88b8 <_swiopen+0x50>
    892e:	f000 f939 	bl	8ba4 <__errno>
    8932:	2311      	movs	r3, #17
    8934:	6003      	str	r3, [r0, #0]
    8936:	e7b0      	b.n	889a <_swiopen+0x32>
    8938:	00012f48 	.word	0x00012f48
    893c:	00000601 	.word	0x00000601

00008940 <_open>:
    8940:	b40e      	push	{r1, r2, r3}
    8942:	b500      	push	{lr}
    8944:	9901      	ldr	r1, [sp, #4]
    8946:	f7ff ff8f 	bl	8868 <_swiopen>
    894a:	bc08      	pop	{r3}
    894c:	b003      	add	sp, #12
    894e:	4718      	bx	r3

00008950 <_link>:
    8950:	b508      	push	{r3, lr}
    8952:	f000 f927 	bl	8ba4 <__errno>
    8956:	2358      	movs	r3, #88	; 0x58
    8958:	6003      	str	r3, [r0, #0]
    895a:	2001      	movs	r0, #1
    895c:	4240      	negs	r0, r0
    895e:	bd08      	pop	{r3, pc}

00008960 <_unlink>:
    8960:	b5f0      	push	{r4, r5, r6, r7, lr}
    8962:	b083      	sub	sp, #12
    8964:	466c      	mov	r4, sp
    8966:	9000      	str	r0, [sp, #0]
    8968:	f000 fda4 	bl	94b4 <strlen>
    896c:	250e      	movs	r5, #14
    896e:	9001      	str	r0, [sp, #4]
    8970:	1c28      	adds	r0, r5, #0
    8972:	1c21      	adds	r1, r4, #0
    8974:	beab      	bkpt	0x00ab
    8976:	1c04      	adds	r4, r0, #0
    8978:	2500      	movs	r5, #0
    897a:	1c63      	adds	r3, r4, #1
    897c:	d002      	beq.n	8984 <_unlink+0x24>
    897e:	1c28      	adds	r0, r5, #0
    8980:	b003      	add	sp, #12
    8982:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8984:	f000 f90e 	bl	8ba4 <__errno>
    8988:	2713      	movs	r7, #19
    898a:	1c06      	adds	r6, r0, #0
    898c:	1c38      	adds	r0, r7, #0
    898e:	1c29      	adds	r1, r5, #0
    8990:	beab      	bkpt	0x00ab
    8992:	1c05      	adds	r5, r0, #0
    8994:	6035      	str	r5, [r6, #0]
    8996:	1c25      	adds	r5, r4, #0
    8998:	e7f1      	b.n	897e <_unlink+0x1e>
    899a:	46c0      	nop			; (mov r8, r8)

0000899c <_gettimeofday>:
    899c:	b5f0      	push	{r4, r5, r6, r7, lr}
    899e:	1c05      	adds	r5, r0, #0
    89a0:	1c0c      	adds	r4, r1, #0
    89a2:	2800      	cmp	r0, #0
    89a4:	d007      	beq.n	89b6 <_gettimeofday+0x1a>
    89a6:	2600      	movs	r6, #0
    89a8:	2711      	movs	r7, #17
    89aa:	1c38      	adds	r0, r7, #0
    89ac:	1c31      	adds	r1, r6, #0
    89ae:	beab      	bkpt	0x00ab
    89b0:	1c07      	adds	r7, r0, #0
    89b2:	602f      	str	r7, [r5, #0]
    89b4:	606e      	str	r6, [r5, #4]
    89b6:	2c00      	cmp	r4, #0
    89b8:	d002      	beq.n	89c0 <_gettimeofday+0x24>
    89ba:	2300      	movs	r3, #0
    89bc:	6023      	str	r3, [r4, #0]
    89be:	6063      	str	r3, [r4, #4]
    89c0:	2000      	movs	r0, #0
    89c2:	bdf0      	pop	{r4, r5, r6, r7, pc}

000089c4 <_clock>:
    89c4:	b530      	push	{r4, r5, lr}
    89c6:	2500      	movs	r5, #0
    89c8:	2410      	movs	r4, #16
    89ca:	1c20      	adds	r0, r4, #0
    89cc:	1c29      	adds	r1, r5, #0
    89ce:	beab      	bkpt	0x00ab
    89d0:	1c04      	adds	r4, r0, #0
    89d2:	1c20      	adds	r0, r4, #0
    89d4:	bd30      	pop	{r4, r5, pc}
    89d6:	46c0      	nop			; (mov r8, r8)

000089d8 <_times>:
    89d8:	b570      	push	{r4, r5, r6, lr}
    89da:	1c04      	adds	r4, r0, #0
    89dc:	2500      	movs	r5, #0
    89de:	2610      	movs	r6, #16
    89e0:	1c30      	adds	r0, r6, #0
    89e2:	1c29      	adds	r1, r5, #0
    89e4:	beab      	bkpt	0x00ab
    89e6:	1c06      	adds	r6, r0, #0
    89e8:	2c00      	cmp	r4, #0
    89ea:	d003      	beq.n	89f4 <_times+0x1c>
    89ec:	6026      	str	r6, [r4, #0]
    89ee:	6065      	str	r5, [r4, #4]
    89f0:	60a5      	str	r5, [r4, #8]
    89f2:	60e5      	str	r5, [r4, #12]
    89f4:	1c30      	adds	r0, r6, #0
    89f6:	bd70      	pop	{r4, r5, r6, pc}

000089f8 <_isatty>:
    89f8:	b570      	push	{r4, r5, r6, lr}
    89fa:	f7ff fd41 	bl	8480 <findslot>
    89fe:	1e04      	subs	r4, r0, #0
    8a00:	d013      	beq.n	8a2a <_isatty+0x32>
    8a02:	2509      	movs	r5, #9
    8a04:	1c28      	adds	r0, r5, #0
    8a06:	1c21      	adds	r1, r4, #0
    8a08:	beab      	bkpt	0x00ab
    8a0a:	1c04      	adds	r4, r0, #0
    8a0c:	2001      	movs	r0, #1
    8a0e:	2c01      	cmp	r4, #1
    8a10:	d00a      	beq.n	8a28 <_isatty+0x30>
    8a12:	f000 f8c7 	bl	8ba4 <__errno>
    8a16:	2600      	movs	r6, #0
    8a18:	1c04      	adds	r4, r0, #0
    8a1a:	2513      	movs	r5, #19
    8a1c:	1c28      	adds	r0, r5, #0
    8a1e:	1c31      	adds	r1, r6, #0
    8a20:	beab      	bkpt	0x00ab
    8a22:	1c05      	adds	r5, r0, #0
    8a24:	2000      	movs	r0, #0
    8a26:	6025      	str	r5, [r4, #0]
    8a28:	bd70      	pop	{r4, r5, r6, pc}
    8a2a:	f000 f8bb 	bl	8ba4 <__errno>
    8a2e:	2309      	movs	r3, #9
    8a30:	6003      	str	r3, [r0, #0]
    8a32:	2000      	movs	r0, #0
    8a34:	e7f8      	b.n	8a28 <_isatty+0x30>
    8a36:	46c0      	nop			; (mov r8, r8)

00008a38 <_system>:
    8a38:	b530      	push	{r4, r5, lr}
    8a3a:	b083      	sub	sp, #12
    8a3c:	2800      	cmp	r0, #0
    8a3e:	d01d      	beq.n	8a7c <_system+0x44>
    8a40:	466c      	mov	r4, sp
    8a42:	9000      	str	r0, [sp, #0]
    8a44:	f000 fd36 	bl	94b4 <strlen>
    8a48:	2512      	movs	r5, #18
    8a4a:	9001      	str	r0, [sp, #4]
    8a4c:	1c28      	adds	r0, r5, #0
    8a4e:	1c21      	adds	r1, r4, #0
    8a50:	beab      	bkpt	0x00ab
    8a52:	1c04      	adds	r4, r0, #0
    8a54:	1c63      	adds	r3, r4, #1
    8a56:	d00d      	beq.n	8a74 <_system+0x3c>
    8a58:	1e20      	subs	r0, r4, #0
    8a5a:	28ff      	cmp	r0, #255	; 0xff
    8a5c:	d808      	bhi.n	8a70 <_system+0x38>
    8a5e:	2c00      	cmp	r4, #0
    8a60:	d006      	beq.n	8a70 <_system+0x38>
    8a62:	22ff      	movs	r2, #255	; 0xff
    8a64:	0040      	lsls	r0, r0, #1
    8a66:	d00b      	beq.n	8a80 <_system+0x48>
    8a68:	1203      	asrs	r3, r0, #8
    8a6a:	4013      	ands	r3, r2
    8a6c:	42a3      	cmp	r3, r4
    8a6e:	d1f9      	bne.n	8a64 <_system+0x2c>
    8a70:	b003      	add	sp, #12
    8a72:	bd30      	pop	{r4, r5, pc}
    8a74:	f7ff fd20 	bl	84b8 <checkerror.part.0>
    8a78:	1c04      	adds	r4, r0, #0
    8a7a:	e7ed      	b.n	8a58 <_system+0x20>
    8a7c:	2001      	movs	r0, #1
    8a7e:	e7f7      	b.n	8a70 <_system+0x38>
    8a80:	2000      	movs	r0, #0
    8a82:	e7f5      	b.n	8a70 <_system+0x38>

00008a84 <_rename>:
    8a84:	b530      	push	{r4, r5, lr}
    8a86:	b085      	sub	sp, #20
    8a88:	1c0d      	adds	r5, r1, #0
    8a8a:	466c      	mov	r4, sp
    8a8c:	9000      	str	r0, [sp, #0]
    8a8e:	f000 fd11 	bl	94b4 <strlen>
    8a92:	9001      	str	r0, [sp, #4]
    8a94:	1c28      	adds	r0, r5, #0
    8a96:	9502      	str	r5, [sp, #8]
    8a98:	f000 fd0c 	bl	94b4 <strlen>
    8a9c:	250f      	movs	r5, #15
    8a9e:	9003      	str	r0, [sp, #12]
    8aa0:	1c28      	adds	r0, r5, #0
    8aa2:	1c21      	adds	r1, r4, #0
    8aa4:	beab      	bkpt	0x00ab
    8aa6:	1c04      	adds	r4, r0, #0
    8aa8:	1c63      	adds	r3, r4, #1
    8aaa:	d004      	beq.n	8ab6 <_rename+0x32>
    8aac:	1e63      	subs	r3, r4, #1
    8aae:	419c      	sbcs	r4, r3
    8ab0:	4260      	negs	r0, r4
    8ab2:	b005      	add	sp, #20
    8ab4:	bd30      	pop	{r4, r5, pc}
    8ab6:	f7ff fcff 	bl	84b8 <checkerror.part.0>
    8aba:	1c04      	adds	r4, r0, #0
    8abc:	e7f6      	b.n	8aac <_rename+0x28>
    8abe:	46c0      	nop			; (mov r8, r8)

00008ac0 <_exit>:
    8ac0:	b508      	push	{r3, lr}
    8ac2:	2101      	movs	r1, #1
    8ac4:	4249      	negs	r1, r1
    8ac6:	f000 f801 	bl	8acc <_kill>
    8aca:	bd08      	pop	{r3, pc}

00008acc <_kill>:
    8acc:	b530      	push	{r4, r5, lr}
    8ace:	2906      	cmp	r1, #6
    8ad0:	d007      	beq.n	8ae2 <_kill+0x16>
    8ad2:	4d07      	ldr	r5, [pc, #28]	; (8af0 <_kill+0x24>)
    8ad4:	2418      	movs	r4, #24
    8ad6:	1c20      	adds	r0, r4, #0
    8ad8:	1c29      	adds	r1, r5, #0
    8ada:	beab      	bkpt	0x00ab
    8adc:	1c04      	adds	r4, r0, #0
    8ade:	1c20      	adds	r0, r4, #0
    8ae0:	bd30      	pop	{r4, r5, pc}
    8ae2:	4d04      	ldr	r5, [pc, #16]	; (8af4 <_kill+0x28>)
    8ae4:	2418      	movs	r4, #24
    8ae6:	1c20      	adds	r0, r4, #0
    8ae8:	1c29      	adds	r1, r5, #0
    8aea:	beab      	bkpt	0x00ab
    8aec:	1c04      	adds	r4, r0, #0
    8aee:	e7f6      	b.n	8ade <_kill+0x12>
    8af0:	00020026 	.word	0x00020026
    8af4:	00020023 	.word	0x00020023

00008af8 <stop_light>:
    8af8:	b508      	push	{r3, lr}
    8afa:	4b1f      	ldr	r3, [pc, #124]	; (8b78 <stop_light+0x80>)
    8afc:	681b      	ldr	r3, [r3, #0]
    8afe:	2b01      	cmp	r3, #1
    8b00:	d025      	beq.n	8b4e <stop_light+0x56>
    8b02:	2b02      	cmp	r3, #2
    8b04:	d012      	beq.n	8b2c <stop_light+0x34>
    8b06:	2b00      	cmp	r3, #0
    8b08:	d131      	bne.n	8b6e <stop_light+0x76>
    8b0a:	481c      	ldr	r0, [pc, #112]	; (8b7c <stop_light+0x84>)
    8b0c:	f000 fc68 	bl	93e0 <puts>
    8b10:	4b19      	ldr	r3, [pc, #100]	; (8b78 <stop_light+0x80>)
    8b12:	685b      	ldr	r3, [r3, #4]
    8b14:	3301      	adds	r3, #1
    8b16:	2b04      	cmp	r3, #4
    8b18:	dc02      	bgt.n	8b20 <stop_light+0x28>
    8b1a:	4a17      	ldr	r2, [pc, #92]	; (8b78 <stop_light+0x80>)
    8b1c:	6053      	str	r3, [r2, #4]
    8b1e:	e02a      	b.n	8b76 <stop_light+0x7e>
    8b20:	4b15      	ldr	r3, [pc, #84]	; (8b78 <stop_light+0x80>)
    8b22:	2200      	movs	r2, #0
    8b24:	605a      	str	r2, [r3, #4]
    8b26:	2202      	movs	r2, #2
    8b28:	601a      	str	r2, [r3, #0]
    8b2a:	e024      	b.n	8b76 <stop_light+0x7e>
    8b2c:	4814      	ldr	r0, [pc, #80]	; (8b80 <stop_light+0x88>)
    8b2e:	f000 fc57 	bl	93e0 <puts>
    8b32:	4b11      	ldr	r3, [pc, #68]	; (8b78 <stop_light+0x80>)
    8b34:	685b      	ldr	r3, [r3, #4]
    8b36:	3301      	adds	r3, #1
    8b38:	2b04      	cmp	r3, #4
    8b3a:	dc02      	bgt.n	8b42 <stop_light+0x4a>
    8b3c:	4a0e      	ldr	r2, [pc, #56]	; (8b78 <stop_light+0x80>)
    8b3e:	6053      	str	r3, [r2, #4]
    8b40:	e019      	b.n	8b76 <stop_light+0x7e>
    8b42:	4b0d      	ldr	r3, [pc, #52]	; (8b78 <stop_light+0x80>)
    8b44:	2200      	movs	r2, #0
    8b46:	605a      	str	r2, [r3, #4]
    8b48:	2201      	movs	r2, #1
    8b4a:	601a      	str	r2, [r3, #0]
    8b4c:	e013      	b.n	8b76 <stop_light+0x7e>
    8b4e:	480d      	ldr	r0, [pc, #52]	; (8b84 <stop_light+0x8c>)
    8b50:	f000 fc46 	bl	93e0 <puts>
    8b54:	4b08      	ldr	r3, [pc, #32]	; (8b78 <stop_light+0x80>)
    8b56:	685b      	ldr	r3, [r3, #4]
    8b58:	3301      	adds	r3, #1
    8b5a:	2b01      	cmp	r3, #1
    8b5c:	dc02      	bgt.n	8b64 <stop_light+0x6c>
    8b5e:	4a06      	ldr	r2, [pc, #24]	; (8b78 <stop_light+0x80>)
    8b60:	6053      	str	r3, [r2, #4]
    8b62:	e008      	b.n	8b76 <stop_light+0x7e>
    8b64:	4b04      	ldr	r3, [pc, #16]	; (8b78 <stop_light+0x80>)
    8b66:	2200      	movs	r2, #0
    8b68:	605a      	str	r2, [r3, #4]
    8b6a:	601a      	str	r2, [r3, #0]
    8b6c:	e003      	b.n	8b76 <stop_light+0x7e>
    8b6e:	4b02      	ldr	r3, [pc, #8]	; (8b78 <stop_light+0x80>)
    8b70:	2200      	movs	r2, #0
    8b72:	601a      	str	r2, [r3, #0]
    8b74:	605a      	str	r2, [r3, #4]
    8b76:	bd08      	pop	{r3, pc}
    8b78:	00012fe8 	.word	0x00012fe8
    8b7c:	0000a590 	.word	0x0000a590
    8b80:	0000a594 	.word	0x0000a594
    8b84:	0000a59c 	.word	0x0000a59c

00008b88 <main>:
    8b88:	b510      	push	{r4, lr}
    8b8a:	2400      	movs	r4, #0
    8b8c:	f7ff ffb4 	bl	8af8 <stop_light>
    8b90:	1c20      	adds	r0, r4, #0
    8b92:	f000 f805 	bl	8ba0 <inc>
    8b96:	1e04      	subs	r4, r0, #0
    8b98:	2c23      	cmp	r4, #35	; 0x23
    8b9a:	ddf7      	ble.n	8b8c <main+0x4>
    8b9c:	bd10      	pop	{r4, pc}
    8b9e:	46c0      	nop			; (mov r8, r8)

00008ba0 <inc>:
    8ba0:	3001      	adds	r0, #1
    8ba2:	4770      	bx	lr

00008ba4 <__errno>:
    8ba4:	4b01      	ldr	r3, [pc, #4]	; (8bac <__errno+0x8>)
    8ba6:	6818      	ldr	r0, [r3, #0]
    8ba8:	4770      	bx	lr
    8baa:	46c0      	nop			; (mov r8, r8)
    8bac:	00012b08 	.word	0x00012b08

00008bb0 <__fp_lock>:
    8bb0:	2000      	movs	r0, #0
    8bb2:	4770      	bx	lr

00008bb4 <__fp_unlock>:
    8bb4:	2000      	movs	r0, #0
    8bb6:	4770      	bx	lr

00008bb8 <_cleanup_r>:
    8bb8:	b508      	push	{r3, lr}
    8bba:	4902      	ldr	r1, [pc, #8]	; (8bc4 <_cleanup_r+0xc>)
    8bbc:	f000 f90e 	bl	8ddc <_fwalk>
    8bc0:	bd08      	pop	{r3, pc}
    8bc2:	46c0      	nop			; (mov r8, r8)
    8bc4:	0000959d 	.word	0x0000959d

00008bc8 <__sfmoreglue>:
    8bc8:	b570      	push	{r4, r5, r6, lr}
    8bca:	1e4b      	subs	r3, r1, #1
    8bcc:	2568      	movs	r5, #104	; 0x68
    8bce:	435d      	muls	r5, r3
    8bd0:	1c0e      	adds	r6, r1, #0
    8bd2:	1c29      	adds	r1, r5, #0
    8bd4:	3174      	adds	r1, #116	; 0x74
    8bd6:	f000 f94b 	bl	8e70 <_malloc_r>
    8bda:	1e04      	subs	r4, r0, #0
    8bdc:	d009      	beq.n	8bf2 <__sfmoreglue+0x2a>
    8bde:	2300      	movs	r3, #0
    8be0:	6003      	str	r3, [r0, #0]
    8be2:	6046      	str	r6, [r0, #4]
    8be4:	1c2a      	adds	r2, r5, #0
    8be6:	300c      	adds	r0, #12
    8be8:	60a0      	str	r0, [r4, #8]
    8bea:	3268      	adds	r2, #104	; 0x68
    8bec:	2100      	movs	r1, #0
    8bee:	f7ff faed 	bl	81cc <memset>
    8bf2:	1c20      	adds	r0, r4, #0
    8bf4:	bd70      	pop	{r4, r5, r6, pc}
    8bf6:	46c0      	nop			; (mov r8, r8)

00008bf8 <_cleanup>:
    8bf8:	b508      	push	{r3, lr}
    8bfa:	4b03      	ldr	r3, [pc, #12]	; (8c08 <_cleanup+0x10>)
    8bfc:	4903      	ldr	r1, [pc, #12]	; (8c0c <_cleanup+0x14>)
    8bfe:	6818      	ldr	r0, [r3, #0]
    8c00:	f000 f8ec 	bl	8ddc <_fwalk>
    8c04:	bd08      	pop	{r3, pc}
    8c06:	46c0      	nop			; (mov r8, r8)
    8c08:	0000a588 	.word	0x0000a588
    8c0c:	0000959d 	.word	0x0000959d

00008c10 <__sinit>:
    8c10:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8c12:	4656      	mov	r6, sl
    8c14:	4644      	mov	r4, r8
    8c16:	465f      	mov	r7, fp
    8c18:	464d      	mov	r5, r9
    8c1a:	b4f0      	push	{r4, r5, r6, r7}
    8c1c:	6b84      	ldr	r4, [r0, #56]	; 0x38
    8c1e:	1c06      	adds	r6, r0, #0
    8c20:	2c00      	cmp	r4, #0
    8c22:	d162      	bne.n	8cea <__sinit+0xda>
    8c24:	4b34      	ldr	r3, [pc, #208]	; (8cf8 <__sinit+0xe8>)
    8c26:	2203      	movs	r2, #3
    8c28:	63c3      	str	r3, [r0, #60]	; 0x3c
    8c2a:	23b8      	movs	r3, #184	; 0xb8
    8c2c:	009b      	lsls	r3, r3, #2
    8c2e:	50c4      	str	r4, [r0, r3]
    8c30:	23b9      	movs	r3, #185	; 0xb9
    8c32:	009b      	lsls	r3, r3, #2
    8c34:	50c2      	str	r2, [r0, r3]
    8c36:	23bb      	movs	r3, #187	; 0xbb
    8c38:	009b      	lsls	r3, r3, #2
    8c3a:	6845      	ldr	r5, [r0, #4]
    8c3c:	18c2      	adds	r2, r0, r3
    8c3e:	23ba      	movs	r3, #186	; 0xba
    8c40:	009b      	lsls	r3, r3, #2
    8c42:	50c2      	str	r2, [r0, r3]
    8c44:	2304      	movs	r3, #4
    8c46:	1c28      	adds	r0, r5, #0
    8c48:	81ab      	strh	r3, [r5, #12]
    8c4a:	602c      	str	r4, [r5, #0]
    8c4c:	606c      	str	r4, [r5, #4]
    8c4e:	60ac      	str	r4, [r5, #8]
    8c50:	666c      	str	r4, [r5, #100]	; 0x64
    8c52:	81ec      	strh	r4, [r5, #14]
    8c54:	612c      	str	r4, [r5, #16]
    8c56:	616c      	str	r4, [r5, #20]
    8c58:	61ac      	str	r4, [r5, #24]
    8c5a:	2100      	movs	r1, #0
    8c5c:	2208      	movs	r2, #8
    8c5e:	305c      	adds	r0, #92	; 0x5c
    8c60:	f7ff fab4 	bl	81cc <memset>
    8c64:	4b25      	ldr	r3, [pc, #148]	; (8cfc <__sinit+0xec>)
    8c66:	4f26      	ldr	r7, [pc, #152]	; (8d00 <__sinit+0xf0>)
    8c68:	469a      	mov	sl, r3
    8c6a:	622b      	str	r3, [r5, #32]
    8c6c:	4b25      	ldr	r3, [pc, #148]	; (8d04 <__sinit+0xf4>)
    8c6e:	61ed      	str	r5, [r5, #28]
    8c70:	4699      	mov	r9, r3
    8c72:	626b      	str	r3, [r5, #36]	; 0x24
    8c74:	4b24      	ldr	r3, [pc, #144]	; (8d08 <__sinit+0xf8>)
    8c76:	62ef      	str	r7, [r5, #44]	; 0x2c
    8c78:	62ab      	str	r3, [r5, #40]	; 0x28
    8c7a:	68b5      	ldr	r5, [r6, #8]
    8c7c:	4698      	mov	r8, r3
    8c7e:	2309      	movs	r3, #9
    8c80:	81ab      	strh	r3, [r5, #12]
    8c82:	1c28      	adds	r0, r5, #0
    8c84:	2301      	movs	r3, #1
    8c86:	81eb      	strh	r3, [r5, #14]
    8c88:	602c      	str	r4, [r5, #0]
    8c8a:	606c      	str	r4, [r5, #4]
    8c8c:	60ac      	str	r4, [r5, #8]
    8c8e:	666c      	str	r4, [r5, #100]	; 0x64
    8c90:	612c      	str	r4, [r5, #16]
    8c92:	616c      	str	r4, [r5, #20]
    8c94:	61ac      	str	r4, [r5, #24]
    8c96:	2100      	movs	r1, #0
    8c98:	2208      	movs	r2, #8
    8c9a:	305c      	adds	r0, #92	; 0x5c
    8c9c:	469b      	mov	fp, r3
    8c9e:	f7ff fa95 	bl	81cc <memset>
    8ca2:	4653      	mov	r3, sl
    8ca4:	622b      	str	r3, [r5, #32]
    8ca6:	464b      	mov	r3, r9
    8ca8:	626b      	str	r3, [r5, #36]	; 0x24
    8caa:	4643      	mov	r3, r8
    8cac:	62ab      	str	r3, [r5, #40]	; 0x28
    8cae:	61ed      	str	r5, [r5, #28]
    8cb0:	62ef      	str	r7, [r5, #44]	; 0x2c
    8cb2:	68f5      	ldr	r5, [r6, #12]
    8cb4:	2312      	movs	r3, #18
    8cb6:	81ab      	strh	r3, [r5, #12]
    8cb8:	1c28      	adds	r0, r5, #0
    8cba:	2302      	movs	r3, #2
    8cbc:	81eb      	strh	r3, [r5, #14]
    8cbe:	602c      	str	r4, [r5, #0]
    8cc0:	606c      	str	r4, [r5, #4]
    8cc2:	60ac      	str	r4, [r5, #8]
    8cc4:	666c      	str	r4, [r5, #100]	; 0x64
    8cc6:	612c      	str	r4, [r5, #16]
    8cc8:	616c      	str	r4, [r5, #20]
    8cca:	61ac      	str	r4, [r5, #24]
    8ccc:	305c      	adds	r0, #92	; 0x5c
    8cce:	2100      	movs	r1, #0
    8cd0:	2208      	movs	r2, #8
    8cd2:	f7ff fa7b 	bl	81cc <memset>
    8cd6:	4653      	mov	r3, sl
    8cd8:	622b      	str	r3, [r5, #32]
    8cda:	464b      	mov	r3, r9
    8cdc:	626b      	str	r3, [r5, #36]	; 0x24
    8cde:	4643      	mov	r3, r8
    8ce0:	62ab      	str	r3, [r5, #40]	; 0x28
    8ce2:	465b      	mov	r3, fp
    8ce4:	61ed      	str	r5, [r5, #28]
    8ce6:	62ef      	str	r7, [r5, #44]	; 0x2c
    8ce8:	63b3      	str	r3, [r6, #56]	; 0x38
    8cea:	bc3c      	pop	{r2, r3, r4, r5}
    8cec:	4690      	mov	r8, r2
    8cee:	4699      	mov	r9, r3
    8cf0:	46a2      	mov	sl, r4
    8cf2:	46ab      	mov	fp, r5
    8cf4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8cf6:	46c0      	nop			; (mov r8, r8)
    8cf8:	00008bb9 	.word	0x00008bb9
    8cfc:	00009419 	.word	0x00009419
    8d00:	000094a9 	.word	0x000094a9
    8d04:	00009445 	.word	0x00009445
    8d08:	0000947d 	.word	0x0000947d

00008d0c <__sfp>:
    8d0c:	4b22      	ldr	r3, [pc, #136]	; (8d98 <__sfp+0x8c>)
    8d0e:	b570      	push	{r4, r5, r6, lr}
    8d10:	681d      	ldr	r5, [r3, #0]
    8d12:	1c06      	adds	r6, r0, #0
    8d14:	6ba9      	ldr	r1, [r5, #56]	; 0x38
    8d16:	2900      	cmp	r1, #0
    8d18:	d02c      	beq.n	8d74 <__sfp+0x68>
    8d1a:	23b8      	movs	r3, #184	; 0xb8
    8d1c:	009b      	lsls	r3, r3, #2
    8d1e:	18ed      	adds	r5, r5, r3
    8d20:	686b      	ldr	r3, [r5, #4]
    8d22:	68ac      	ldr	r4, [r5, #8]
    8d24:	3b01      	subs	r3, #1
    8d26:	d503      	bpl.n	8d30 <__sfp+0x24>
    8d28:	e01f      	b.n	8d6a <__sfp+0x5e>
    8d2a:	3468      	adds	r4, #104	; 0x68
    8d2c:	3b01      	subs	r3, #1
    8d2e:	d31c      	bcc.n	8d6a <__sfp+0x5e>
    8d30:	210c      	movs	r1, #12
    8d32:	5e62      	ldrsh	r2, [r4, r1]
    8d34:	2a00      	cmp	r2, #0
    8d36:	d1f8      	bne.n	8d2a <__sfp+0x1e>
    8d38:	2301      	movs	r3, #1
    8d3a:	425b      	negs	r3, r3
    8d3c:	2500      	movs	r5, #0
    8d3e:	81e3      	strh	r3, [r4, #14]
    8d40:	1c20      	adds	r0, r4, #0
    8d42:	2301      	movs	r3, #1
    8d44:	81a3      	strh	r3, [r4, #12]
    8d46:	6665      	str	r5, [r4, #100]	; 0x64
    8d48:	6025      	str	r5, [r4, #0]
    8d4a:	60a5      	str	r5, [r4, #8]
    8d4c:	6065      	str	r5, [r4, #4]
    8d4e:	6125      	str	r5, [r4, #16]
    8d50:	6165      	str	r5, [r4, #20]
    8d52:	61a5      	str	r5, [r4, #24]
    8d54:	305c      	adds	r0, #92	; 0x5c
    8d56:	2100      	movs	r1, #0
    8d58:	2208      	movs	r2, #8
    8d5a:	f7ff fa37 	bl	81cc <memset>
    8d5e:	6325      	str	r5, [r4, #48]	; 0x30
    8d60:	6365      	str	r5, [r4, #52]	; 0x34
    8d62:	6465      	str	r5, [r4, #68]	; 0x44
    8d64:	64a5      	str	r5, [r4, #72]	; 0x48
    8d66:	1c20      	adds	r0, r4, #0
    8d68:	bd70      	pop	{r4, r5, r6, pc}
    8d6a:	682b      	ldr	r3, [r5, #0]
    8d6c:	2b00      	cmp	r3, #0
    8d6e:	d005      	beq.n	8d7c <__sfp+0x70>
    8d70:	1c1d      	adds	r5, r3, #0
    8d72:	e7d5      	b.n	8d20 <__sfp+0x14>
    8d74:	1c28      	adds	r0, r5, #0
    8d76:	f7ff ff4b 	bl	8c10 <__sinit>
    8d7a:	e7ce      	b.n	8d1a <__sfp+0xe>
    8d7c:	1c30      	adds	r0, r6, #0
    8d7e:	2104      	movs	r1, #4
    8d80:	f7ff ff22 	bl	8bc8 <__sfmoreglue>
    8d84:	6028      	str	r0, [r5, #0]
    8d86:	2800      	cmp	r0, #0
    8d88:	d001      	beq.n	8d8e <__sfp+0x82>
    8d8a:	1c05      	adds	r5, r0, #0
    8d8c:	e7c8      	b.n	8d20 <__sfp+0x14>
    8d8e:	230c      	movs	r3, #12
    8d90:	6033      	str	r3, [r6, #0]
    8d92:	2000      	movs	r0, #0
    8d94:	e7e8      	b.n	8d68 <__sfp+0x5c>
    8d96:	46c0      	nop			; (mov r8, r8)
    8d98:	0000a588 	.word	0x0000a588

00008d9c <__sfp_lock_acquire>:
    8d9c:	4770      	bx	lr
    8d9e:	46c0      	nop			; (mov r8, r8)

00008da0 <__sfp_lock_release>:
    8da0:	4770      	bx	lr
    8da2:	46c0      	nop			; (mov r8, r8)

00008da4 <__sinit_lock_acquire>:
    8da4:	4770      	bx	lr
    8da6:	46c0      	nop			; (mov r8, r8)

00008da8 <__sinit_lock_release>:
    8da8:	4770      	bx	lr
    8daa:	46c0      	nop			; (mov r8, r8)

00008dac <__fp_lock_all>:
    8dac:	b508      	push	{r3, lr}
    8dae:	4b03      	ldr	r3, [pc, #12]	; (8dbc <__fp_lock_all+0x10>)
    8db0:	4903      	ldr	r1, [pc, #12]	; (8dc0 <__fp_lock_all+0x14>)
    8db2:	6818      	ldr	r0, [r3, #0]
    8db4:	f000 f812 	bl	8ddc <_fwalk>
    8db8:	bd08      	pop	{r3, pc}
    8dba:	46c0      	nop			; (mov r8, r8)
    8dbc:	00012b08 	.word	0x00012b08
    8dc0:	00008bb1 	.word	0x00008bb1

00008dc4 <__fp_unlock_all>:
    8dc4:	b508      	push	{r3, lr}
    8dc6:	4b03      	ldr	r3, [pc, #12]	; (8dd4 <__fp_unlock_all+0x10>)
    8dc8:	4903      	ldr	r1, [pc, #12]	; (8dd8 <__fp_unlock_all+0x14>)
    8dca:	6818      	ldr	r0, [r3, #0]
    8dcc:	f000 f806 	bl	8ddc <_fwalk>
    8dd0:	bd08      	pop	{r3, pc}
    8dd2:	46c0      	nop			; (mov r8, r8)
    8dd4:	00012b08 	.word	0x00012b08
    8dd8:	00008bb5 	.word	0x00008bb5

00008ddc <_fwalk>:
    8ddc:	b5f0      	push	{r4, r5, r6, r7, lr}
    8dde:	22b8      	movs	r2, #184	; 0xb8
    8de0:	4647      	mov	r7, r8
    8de2:	0092      	lsls	r2, r2, #2
    8de4:	b480      	push	{r7}
    8de6:	1887      	adds	r7, r0, r2
    8de8:	4688      	mov	r8, r1
    8dea:	2600      	movs	r6, #0
    8dec:	2f00      	cmp	r7, #0
    8dee:	d013      	beq.n	8e18 <_fwalk+0x3c>
    8df0:	687d      	ldr	r5, [r7, #4]
    8df2:	68bc      	ldr	r4, [r7, #8]
    8df4:	3d01      	subs	r5, #1
    8df6:	d40c      	bmi.n	8e12 <_fwalk+0x36>
    8df8:	89a3      	ldrh	r3, [r4, #12]
    8dfa:	2b01      	cmp	r3, #1
    8dfc:	d906      	bls.n	8e0c <_fwalk+0x30>
    8dfe:	220e      	movs	r2, #14
    8e00:	5ea3      	ldrsh	r3, [r4, r2]
    8e02:	3301      	adds	r3, #1
    8e04:	d002      	beq.n	8e0c <_fwalk+0x30>
    8e06:	1c20      	adds	r0, r4, #0
    8e08:	47c0      	blx	r8
    8e0a:	4306      	orrs	r6, r0
    8e0c:	3468      	adds	r4, #104	; 0x68
    8e0e:	3d01      	subs	r5, #1
    8e10:	d2f2      	bcs.n	8df8 <_fwalk+0x1c>
    8e12:	683f      	ldr	r7, [r7, #0]
    8e14:	2f00      	cmp	r7, #0
    8e16:	d1eb      	bne.n	8df0 <_fwalk+0x14>
    8e18:	1c30      	adds	r0, r6, #0
    8e1a:	bc04      	pop	{r2}
    8e1c:	4690      	mov	r8, r2
    8e1e:	bdf0      	pop	{r4, r5, r6, r7, pc}

00008e20 <_fwalk_reent>:
    8e20:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8e22:	22b8      	movs	r2, #184	; 0xb8
    8e24:	464f      	mov	r7, r9
    8e26:	4646      	mov	r6, r8
    8e28:	0092      	lsls	r2, r2, #2
    8e2a:	b4c0      	push	{r6, r7}
    8e2c:	4680      	mov	r8, r0
    8e2e:	1c16      	adds	r6, r2, #0
    8e30:	4446      	add	r6, r8
    8e32:	4689      	mov	r9, r1
    8e34:	2700      	movs	r7, #0
    8e36:	2e00      	cmp	r6, #0
    8e38:	d014      	beq.n	8e64 <_fwalk_reent+0x44>
    8e3a:	6875      	ldr	r5, [r6, #4]
    8e3c:	68b4      	ldr	r4, [r6, #8]
    8e3e:	3d01      	subs	r5, #1
    8e40:	d40d      	bmi.n	8e5e <_fwalk_reent+0x3e>
    8e42:	89a3      	ldrh	r3, [r4, #12]
    8e44:	2b01      	cmp	r3, #1
    8e46:	d907      	bls.n	8e58 <_fwalk_reent+0x38>
    8e48:	220e      	movs	r2, #14
    8e4a:	5ea3      	ldrsh	r3, [r4, r2]
    8e4c:	3301      	adds	r3, #1
    8e4e:	d003      	beq.n	8e58 <_fwalk_reent+0x38>
    8e50:	4640      	mov	r0, r8
    8e52:	1c21      	adds	r1, r4, #0
    8e54:	47c8      	blx	r9
    8e56:	4307      	orrs	r7, r0
    8e58:	3468      	adds	r4, #104	; 0x68
    8e5a:	3d01      	subs	r5, #1
    8e5c:	d2f1      	bcs.n	8e42 <_fwalk_reent+0x22>
    8e5e:	6836      	ldr	r6, [r6, #0]
    8e60:	2e00      	cmp	r6, #0
    8e62:	d1ea      	bne.n	8e3a <_fwalk_reent+0x1a>
    8e64:	1c38      	adds	r0, r7, #0
    8e66:	bc0c      	pop	{r2, r3}
    8e68:	4690      	mov	r8, r2
    8e6a:	4699      	mov	r9, r3
    8e6c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8e6e:	46c0      	nop			; (mov r8, r8)

00008e70 <_malloc_r>:
    8e70:	b5f0      	push	{r4, r5, r6, r7, lr}
    8e72:	4656      	mov	r6, sl
    8e74:	4644      	mov	r4, r8
    8e76:	465f      	mov	r7, fp
    8e78:	464d      	mov	r5, r9
    8e7a:	b4f0      	push	{r4, r5, r6, r7}
    8e7c:	1c0c      	adds	r4, r1, #0
    8e7e:	340b      	adds	r4, #11
    8e80:	b083      	sub	sp, #12
    8e82:	1c06      	adds	r6, r0, #0
    8e84:	2c16      	cmp	r4, #22
    8e86:	d92b      	bls.n	8ee0 <_malloc_r+0x70>
    8e88:	2307      	movs	r3, #7
    8e8a:	439c      	bics	r4, r3
    8e8c:	d42b      	bmi.n	8ee6 <_malloc_r+0x76>
    8e8e:	42a1      	cmp	r1, r4
    8e90:	d829      	bhi.n	8ee6 <_malloc_r+0x76>
    8e92:	1c30      	adds	r0, r6, #0
    8e94:	f000 fa72 	bl	937c <__malloc_lock>
    8e98:	23f8      	movs	r3, #248	; 0xf8
    8e9a:	33ff      	adds	r3, #255	; 0xff
    8e9c:	429c      	cmp	r4, r3
    8e9e:	d826      	bhi.n	8eee <_malloc_r+0x7e>
    8ea0:	08e2      	lsrs	r2, r4, #3
    8ea2:	4dca      	ldr	r5, [pc, #808]	; (91cc <_malloc_r+0x35c>)
    8ea4:	00d3      	lsls	r3, r2, #3
    8ea6:	18eb      	adds	r3, r5, r3
    8ea8:	68df      	ldr	r7, [r3, #12]
    8eaa:	429f      	cmp	r7, r3
    8eac:	d100      	bne.n	8eb0 <_malloc_r+0x40>
    8eae:	e1bb      	b.n	9228 <_malloc_r+0x3b8>
    8eb0:	6878      	ldr	r0, [r7, #4]
    8eb2:	2303      	movs	r3, #3
    8eb4:	68fa      	ldr	r2, [r7, #12]
    8eb6:	68b9      	ldr	r1, [r7, #8]
    8eb8:	4398      	bics	r0, r3
    8eba:	183b      	adds	r3, r7, r0
    8ebc:	60ca      	str	r2, [r1, #12]
    8ebe:	6091      	str	r1, [r2, #8]
    8ec0:	6859      	ldr	r1, [r3, #4]
    8ec2:	2201      	movs	r2, #1
    8ec4:	430a      	orrs	r2, r1
    8ec6:	1c30      	adds	r0, r6, #0
    8ec8:	605a      	str	r2, [r3, #4]
    8eca:	f000 fa59 	bl	9380 <__malloc_unlock>
    8ece:	1c38      	adds	r0, r7, #0
    8ed0:	3008      	adds	r0, #8
    8ed2:	b003      	add	sp, #12
    8ed4:	bc3c      	pop	{r2, r3, r4, r5}
    8ed6:	4690      	mov	r8, r2
    8ed8:	4699      	mov	r9, r3
    8eda:	46a2      	mov	sl, r4
    8edc:	46ab      	mov	fp, r5
    8ede:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8ee0:	2410      	movs	r4, #16
    8ee2:	42a1      	cmp	r1, r4
    8ee4:	d9d5      	bls.n	8e92 <_malloc_r+0x22>
    8ee6:	230c      	movs	r3, #12
    8ee8:	6033      	str	r3, [r6, #0]
    8eea:	2000      	movs	r0, #0
    8eec:	e7f1      	b.n	8ed2 <_malloc_r+0x62>
    8eee:	0a63      	lsrs	r3, r4, #9
    8ef0:	d100      	bne.n	8ef4 <_malloc_r+0x84>
    8ef2:	e08e      	b.n	9012 <_malloc_r+0x1a2>
    8ef4:	2b04      	cmp	r3, #4
    8ef6:	d900      	bls.n	8efa <_malloc_r+0x8a>
    8ef8:	e13d      	b.n	9176 <_malloc_r+0x306>
    8efa:	09a3      	lsrs	r3, r4, #6
    8efc:	3338      	adds	r3, #56	; 0x38
    8efe:	469c      	mov	ip, r3
    8f00:	0059      	lsls	r1, r3, #1
    8f02:	4db2      	ldr	r5, [pc, #712]	; (91cc <_malloc_r+0x35c>)
    8f04:	0089      	lsls	r1, r1, #2
    8f06:	1869      	adds	r1, r5, r1
    8f08:	68cf      	ldr	r7, [r1, #12]
    8f0a:	42b9      	cmp	r1, r7
    8f0c:	d015      	beq.n	8f3a <_malloc_r+0xca>
    8f0e:	687a      	ldr	r2, [r7, #4]
    8f10:	2303      	movs	r3, #3
    8f12:	439a      	bics	r2, r3
    8f14:	1b10      	subs	r0, r2, r4
    8f16:	280f      	cmp	r0, #15
    8f18:	dd00      	ble.n	8f1c <_malloc_r+0xac>
    8f1a:	e08d      	b.n	9038 <_malloc_r+0x1c8>
    8f1c:	2800      	cmp	r0, #0
    8f1e:	da7c      	bge.n	901a <_malloc_r+0x1aa>
    8f20:	2003      	movs	r0, #3
    8f22:	e007      	b.n	8f34 <_malloc_r+0xc4>
    8f24:	687a      	ldr	r2, [r7, #4]
    8f26:	4382      	bics	r2, r0
    8f28:	1b13      	subs	r3, r2, r4
    8f2a:	2b0f      	cmp	r3, #15
    8f2c:	dd00      	ble.n	8f30 <_malloc_r+0xc0>
    8f2e:	e083      	b.n	9038 <_malloc_r+0x1c8>
    8f30:	2b00      	cmp	r3, #0
    8f32:	da72      	bge.n	901a <_malloc_r+0x1aa>
    8f34:	68ff      	ldr	r7, [r7, #12]
    8f36:	42b9      	cmp	r1, r7
    8f38:	d1f4      	bne.n	8f24 <_malloc_r+0xb4>
    8f3a:	2201      	movs	r2, #1
    8f3c:	4494      	add	ip, r2
    8f3e:	1c2b      	adds	r3, r5, #0
    8f40:	692f      	ldr	r7, [r5, #16]
    8f42:	3308      	adds	r3, #8
    8f44:	429f      	cmp	r7, r3
    8f46:	d100      	bne.n	8f4a <_malloc_r+0xda>
    8f48:	e163      	b.n	9212 <_malloc_r+0x3a2>
    8f4a:	6878      	ldr	r0, [r7, #4]
    8f4c:	2203      	movs	r2, #3
    8f4e:	4390      	bics	r0, r2
    8f50:	1c02      	adds	r2, r0, #0
    8f52:	1b01      	subs	r1, r0, r4
    8f54:	290f      	cmp	r1, #15
    8f56:	dd00      	ble.n	8f5a <_malloc_r+0xea>
    8f58:	e14a      	b.n	91f0 <_malloc_r+0x380>
    8f5a:	616b      	str	r3, [r5, #20]
    8f5c:	612b      	str	r3, [r5, #16]
    8f5e:	2900      	cmp	r1, #0
    8f60:	da5f      	bge.n	9022 <_malloc_r+0x1b2>
    8f62:	4b9b      	ldr	r3, [pc, #620]	; (91d0 <_malloc_r+0x360>)
    8f64:	4298      	cmp	r0, r3
    8f66:	d900      	bls.n	8f6a <_malloc_r+0xfa>
    8f68:	e10f      	b.n	918a <_malloc_r+0x31a>
    8f6a:	08c3      	lsrs	r3, r0, #3
    8f6c:	109a      	asrs	r2, r3, #2
    8f6e:	2101      	movs	r1, #1
    8f70:	00db      	lsls	r3, r3, #3
    8f72:	18eb      	adds	r3, r5, r3
    8f74:	4091      	lsls	r1, r2
    8f76:	6868      	ldr	r0, [r5, #4]
    8f78:	1c0a      	adds	r2, r1, #0
    8f7a:	6899      	ldr	r1, [r3, #8]
    8f7c:	4302      	orrs	r2, r0
    8f7e:	60fb      	str	r3, [r7, #12]
    8f80:	60b9      	str	r1, [r7, #8]
    8f82:	606a      	str	r2, [r5, #4]
    8f84:	609f      	str	r7, [r3, #8]
    8f86:	60cf      	str	r7, [r1, #12]
    8f88:	4661      	mov	r1, ip
    8f8a:	108b      	asrs	r3, r1, #2
    8f8c:	2101      	movs	r1, #1
    8f8e:	4099      	lsls	r1, r3
    8f90:	4291      	cmp	r1, r2
    8f92:	d855      	bhi.n	9040 <_malloc_r+0x1d0>
    8f94:	4211      	tst	r1, r2
    8f96:	d10d      	bne.n	8fb4 <_malloc_r+0x144>
    8f98:	2303      	movs	r3, #3
    8f9a:	4660      	mov	r0, ip
    8f9c:	4398      	bics	r0, r3
    8f9e:	1c03      	adds	r3, r0, #0
    8fa0:	3304      	adds	r3, #4
    8fa2:	0049      	lsls	r1, r1, #1
    8fa4:	469c      	mov	ip, r3
    8fa6:	4211      	tst	r1, r2
    8fa8:	d104      	bne.n	8fb4 <_malloc_r+0x144>
    8faa:	2304      	movs	r3, #4
    8fac:	0049      	lsls	r1, r1, #1
    8fae:	449c      	add	ip, r3
    8fb0:	4211      	tst	r1, r2
    8fb2:	d0fa      	beq.n	8faa <_malloc_r+0x13a>
    8fb4:	2003      	movs	r0, #3
    8fb6:	4680      	mov	r8, r0
    8fb8:	4662      	mov	r2, ip
    8fba:	00d3      	lsls	r3, r2, #3
    8fbc:	195b      	adds	r3, r3, r5
    8fbe:	469a      	mov	sl, r3
    8fc0:	1c18      	adds	r0, r3, #0
    8fc2:	46e1      	mov	r9, ip
    8fc4:	68c7      	ldr	r7, [r0, #12]
    8fc6:	42b8      	cmp	r0, r7
    8fc8:	d107      	bne.n	8fda <_malloc_r+0x16a>
    8fca:	e124      	b.n	9216 <_malloc_r+0x3a6>
    8fcc:	2b00      	cmp	r3, #0
    8fce:	db00      	blt.n	8fd2 <_malloc_r+0x162>
    8fd0:	e133      	b.n	923a <_malloc_r+0x3ca>
    8fd2:	68ff      	ldr	r7, [r7, #12]
    8fd4:	42b8      	cmp	r0, r7
    8fd6:	d100      	bne.n	8fda <_malloc_r+0x16a>
    8fd8:	e11d      	b.n	9216 <_malloc_r+0x3a6>
    8fda:	687a      	ldr	r2, [r7, #4]
    8fdc:	4643      	mov	r3, r8
    8fde:	439a      	bics	r2, r3
    8fe0:	1b13      	subs	r3, r2, r4
    8fe2:	2b0f      	cmp	r3, #15
    8fe4:	ddf2      	ble.n	8fcc <_malloc_r+0x15c>
    8fe6:	2101      	movs	r1, #1
    8fe8:	193a      	adds	r2, r7, r4
    8fea:	430c      	orrs	r4, r1
    8fec:	607c      	str	r4, [r7, #4]
    8fee:	68f8      	ldr	r0, [r7, #12]
    8ff0:	68bc      	ldr	r4, [r7, #8]
    8ff2:	3508      	adds	r5, #8
    8ff4:	60e0      	str	r0, [r4, #12]
    8ff6:	4319      	orrs	r1, r3
    8ff8:	6084      	str	r4, [r0, #8]
    8ffa:	60ea      	str	r2, [r5, #12]
    8ffc:	60aa      	str	r2, [r5, #8]
    8ffe:	1c30      	adds	r0, r6, #0
    9000:	60d5      	str	r5, [r2, #12]
    9002:	6095      	str	r5, [r2, #8]
    9004:	6051      	str	r1, [r2, #4]
    9006:	50d3      	str	r3, [r2, r3]
    9008:	f000 f9ba 	bl	9380 <__malloc_unlock>
    900c:	1c38      	adds	r0, r7, #0
    900e:	3008      	adds	r0, #8
    9010:	e75f      	b.n	8ed2 <_malloc_r+0x62>
    9012:	223f      	movs	r2, #63	; 0x3f
    9014:	217e      	movs	r1, #126	; 0x7e
    9016:	4694      	mov	ip, r2
    9018:	e773      	b.n	8f02 <_malloc_r+0x92>
    901a:	68fb      	ldr	r3, [r7, #12]
    901c:	68b9      	ldr	r1, [r7, #8]
    901e:	60cb      	str	r3, [r1, #12]
    9020:	6099      	str	r1, [r3, #8]
    9022:	18ba      	adds	r2, r7, r2
    9024:	6851      	ldr	r1, [r2, #4]
    9026:	2301      	movs	r3, #1
    9028:	430b      	orrs	r3, r1
    902a:	1c30      	adds	r0, r6, #0
    902c:	6053      	str	r3, [r2, #4]
    902e:	f000 f9a7 	bl	9380 <__malloc_unlock>
    9032:	1c38      	adds	r0, r7, #0
    9034:	3008      	adds	r0, #8
    9036:	e74c      	b.n	8ed2 <_malloc_r+0x62>
    9038:	2001      	movs	r0, #1
    903a:	4240      	negs	r0, r0
    903c:	4484      	add	ip, r0
    903e:	e77c      	b.n	8f3a <_malloc_r+0xca>
    9040:	68af      	ldr	r7, [r5, #8]
    9042:	2303      	movs	r3, #3
    9044:	6878      	ldr	r0, [r7, #4]
    9046:	4398      	bics	r0, r3
    9048:	4681      	mov	r9, r0
    904a:	42a0      	cmp	r0, r4
    904c:	d303      	bcc.n	9056 <_malloc_r+0x1e6>
    904e:	1b03      	subs	r3, r0, r4
    9050:	2b0f      	cmp	r3, #15
    9052:	dd00      	ble.n	9056 <_malloc_r+0x1e6>
    9054:	e081      	b.n	915a <_malloc_r+0x2ea>
    9056:	4a5f      	ldr	r2, [pc, #380]	; (91d4 <_malloc_r+0x364>)
    9058:	4b5f      	ldr	r3, [pc, #380]	; (91d8 <_malloc_r+0x368>)
    905a:	4649      	mov	r1, r9
    905c:	681b      	ldr	r3, [r3, #0]
    905e:	6810      	ldr	r0, [r2, #0]
    9060:	1879      	adds	r1, r7, r1
    9062:	9101      	str	r1, [sp, #4]
    9064:	18e3      	adds	r3, r4, r3
    9066:	4693      	mov	fp, r2
    9068:	3001      	adds	r0, #1
    906a:	d100      	bne.n	906e <_malloc_r+0x1fe>
    906c:	e147      	b.n	92fe <_malloc_r+0x48e>
    906e:	495b      	ldr	r1, [pc, #364]	; (91dc <_malloc_r+0x36c>)
    9070:	185b      	adds	r3, r3, r1
    9072:	0b1b      	lsrs	r3, r3, #12
    9074:	031b      	lsls	r3, r3, #12
    9076:	9300      	str	r3, [sp, #0]
    9078:	1c30      	adds	r0, r6, #0
    907a:	9900      	ldr	r1, [sp, #0]
    907c:	f000 f9ba 	bl	93f4 <_sbrk_r>
    9080:	1c02      	adds	r2, r0, #0
    9082:	4680      	mov	r8, r0
    9084:	3201      	adds	r2, #1
    9086:	d05d      	beq.n	9144 <_malloc_r+0x2d4>
    9088:	9b01      	ldr	r3, [sp, #4]
    908a:	4283      	cmp	r3, r0
    908c:	d900      	bls.n	9090 <_malloc_r+0x220>
    908e:	e0eb      	b.n	9268 <_malloc_r+0x3f8>
    9090:	4853      	ldr	r0, [pc, #332]	; (91e0 <_malloc_r+0x370>)
    9092:	9900      	ldr	r1, [sp, #0]
    9094:	6802      	ldr	r2, [r0, #0]
    9096:	4682      	mov	sl, r0
    9098:	188b      	adds	r3, r1, r2
    909a:	9901      	ldr	r1, [sp, #4]
    909c:	6003      	str	r3, [r0, #0]
    909e:	4541      	cmp	r1, r8
    90a0:	d100      	bne.n	90a4 <_malloc_r+0x234>
    90a2:	e135      	b.n	9310 <_malloc_r+0x4a0>
    90a4:	465a      	mov	r2, fp
    90a6:	6812      	ldr	r2, [r2, #0]
    90a8:	3201      	adds	r2, #1
    90aa:	d100      	bne.n	90ae <_malloc_r+0x23e>
    90ac:	e143      	b.n	9336 <_malloc_r+0x4c6>
    90ae:	9801      	ldr	r0, [sp, #4]
    90b0:	4641      	mov	r1, r8
    90b2:	1a0a      	subs	r2, r1, r0
    90b4:	189b      	adds	r3, r3, r2
    90b6:	4651      	mov	r1, sl
    90b8:	600b      	str	r3, [r1, #0]
    90ba:	2307      	movs	r3, #7
    90bc:	4642      	mov	r2, r8
    90be:	4013      	ands	r3, r2
    90c0:	d100      	bne.n	90c4 <_malloc_r+0x254>
    90c2:	e104      	b.n	92ce <_malloc_r+0x45e>
    90c4:	1ad2      	subs	r2, r2, r3
    90c6:	3208      	adds	r2, #8
    90c8:	4690      	mov	r8, r2
    90ca:	4a46      	ldr	r2, [pc, #280]	; (91e4 <_malloc_r+0x374>)
    90cc:	1ad3      	subs	r3, r2, r3
    90ce:	9800      	ldr	r0, [sp, #0]
    90d0:	1c02      	adds	r2, r0, #0
    90d2:	4442      	add	r2, r8
    90d4:	0512      	lsls	r2, r2, #20
    90d6:	0d12      	lsrs	r2, r2, #20
    90d8:	1a9a      	subs	r2, r3, r2
    90da:	1c11      	adds	r1, r2, #0
    90dc:	1c30      	adds	r0, r6, #0
    90de:	4693      	mov	fp, r2
    90e0:	f000 f988 	bl	93f4 <_sbrk_r>
    90e4:	1c41      	adds	r1, r0, #1
    90e6:	d100      	bne.n	90ea <_malloc_r+0x27a>
    90e8:	e121      	b.n	932e <_malloc_r+0x4be>
    90ea:	4642      	mov	r2, r8
    90ec:	1a80      	subs	r0, r0, r2
    90ee:	4458      	add	r0, fp
    90f0:	2301      	movs	r3, #1
    90f2:	4318      	orrs	r0, r3
    90f4:	4652      	mov	r2, sl
    90f6:	6811      	ldr	r1, [r2, #0]
    90f8:	1c0b      	adds	r3, r1, #0
    90fa:	445b      	add	r3, fp
    90fc:	4641      	mov	r1, r8
    90fe:	60a9      	str	r1, [r5, #8]
    9100:	6013      	str	r3, [r2, #0]
    9102:	6048      	str	r0, [r1, #4]
    9104:	42af      	cmp	r7, r5
    9106:	d013      	beq.n	9130 <_malloc_r+0x2c0>
    9108:	464a      	mov	r2, r9
    910a:	2a0f      	cmp	r2, #15
    910c:	d800      	bhi.n	9110 <_malloc_r+0x2a0>
    910e:	e0e9      	b.n	92e4 <_malloc_r+0x474>
    9110:	464a      	mov	r2, r9
    9112:	6878      	ldr	r0, [r7, #4]
    9114:	2107      	movs	r1, #7
    9116:	3a0c      	subs	r2, #12
    9118:	438a      	bics	r2, r1
    911a:	2101      	movs	r1, #1
    911c:	4001      	ands	r1, r0
    911e:	4311      	orrs	r1, r2
    9120:	6079      	str	r1, [r7, #4]
    9122:	2005      	movs	r0, #5
    9124:	18b9      	adds	r1, r7, r2
    9126:	6048      	str	r0, [r1, #4]
    9128:	6088      	str	r0, [r1, #8]
    912a:	2a0f      	cmp	r2, #15
    912c:	d900      	bls.n	9130 <_malloc_r+0x2c0>
    912e:	e106      	b.n	933e <_malloc_r+0x4ce>
    9130:	4a2d      	ldr	r2, [pc, #180]	; (91e8 <_malloc_r+0x378>)
    9132:	6810      	ldr	r0, [r2, #0]
    9134:	4283      	cmp	r3, r0
    9136:	d900      	bls.n	913a <_malloc_r+0x2ca>
    9138:	6013      	str	r3, [r2, #0]
    913a:	4a2c      	ldr	r2, [pc, #176]	; (91ec <_malloc_r+0x37c>)
    913c:	6811      	ldr	r1, [r2, #0]
    913e:	428b      	cmp	r3, r1
    9140:	d900      	bls.n	9144 <_malloc_r+0x2d4>
    9142:	6013      	str	r3, [r2, #0]
    9144:	68af      	ldr	r7, [r5, #8]
    9146:	2303      	movs	r3, #3
    9148:	687a      	ldr	r2, [r7, #4]
    914a:	439a      	bics	r2, r3
    914c:	1b13      	subs	r3, r2, r4
    914e:	4294      	cmp	r4, r2
    9150:	d900      	bls.n	9154 <_malloc_r+0x2e4>
    9152:	e0ae      	b.n	92b2 <_malloc_r+0x442>
    9154:	2b0f      	cmp	r3, #15
    9156:	dc00      	bgt.n	915a <_malloc_r+0x2ea>
    9158:	e0ab      	b.n	92b2 <_malloc_r+0x442>
    915a:	2201      	movs	r2, #1
    915c:	1c21      	adds	r1, r4, #0
    915e:	4311      	orrs	r1, r2
    9160:	193c      	adds	r4, r7, r4
    9162:	4313      	orrs	r3, r2
    9164:	6079      	str	r1, [r7, #4]
    9166:	1c30      	adds	r0, r6, #0
    9168:	60ac      	str	r4, [r5, #8]
    916a:	6063      	str	r3, [r4, #4]
    916c:	f000 f908 	bl	9380 <__malloc_unlock>
    9170:	1c38      	adds	r0, r7, #0
    9172:	3008      	adds	r0, #8
    9174:	e6ad      	b.n	8ed2 <_malloc_r+0x62>
    9176:	2b14      	cmp	r3, #20
    9178:	d96e      	bls.n	9258 <_malloc_r+0x3e8>
    917a:	2b54      	cmp	r3, #84	; 0x54
    917c:	d900      	bls.n	9180 <_malloc_r+0x310>
    917e:	e09d      	b.n	92bc <_malloc_r+0x44c>
    9180:	0b23      	lsrs	r3, r4, #12
    9182:	336e      	adds	r3, #110	; 0x6e
    9184:	469c      	mov	ip, r3
    9186:	0059      	lsls	r1, r3, #1
    9188:	e6bb      	b.n	8f02 <_malloc_r+0x92>
    918a:	0a43      	lsrs	r3, r0, #9
    918c:	2b04      	cmp	r3, #4
    918e:	d967      	bls.n	9260 <_malloc_r+0x3f0>
    9190:	2b14      	cmp	r3, #20
    9192:	d900      	bls.n	9196 <_malloc_r+0x326>
    9194:	e0b6      	b.n	9304 <_malloc_r+0x494>
    9196:	1c19      	adds	r1, r3, #0
    9198:	315b      	adds	r1, #91	; 0x5b
    919a:	0048      	lsls	r0, r1, #1
    919c:	0080      	lsls	r0, r0, #2
    919e:	1940      	adds	r0, r0, r5
    91a0:	6883      	ldr	r3, [r0, #8]
    91a2:	4681      	mov	r9, r0
    91a4:	4283      	cmp	r3, r0
    91a6:	d100      	bne.n	91aa <_malloc_r+0x33a>
    91a8:	e094      	b.n	92d4 <_malloc_r+0x464>
    91aa:	2103      	movs	r1, #3
    91ac:	4688      	mov	r8, r1
    91ae:	6859      	ldr	r1, [r3, #4]
    91b0:	4640      	mov	r0, r8
    91b2:	4381      	bics	r1, r0
    91b4:	428a      	cmp	r2, r1
    91b6:	d202      	bcs.n	91be <_malloc_r+0x34e>
    91b8:	689b      	ldr	r3, [r3, #8]
    91ba:	4599      	cmp	r9, r3
    91bc:	d1f7      	bne.n	91ae <_malloc_r+0x33e>
    91be:	68d9      	ldr	r1, [r3, #12]
    91c0:	686a      	ldr	r2, [r5, #4]
    91c2:	60f9      	str	r1, [r7, #12]
    91c4:	60bb      	str	r3, [r7, #8]
    91c6:	608f      	str	r7, [r1, #8]
    91c8:	60df      	str	r7, [r3, #12]
    91ca:	e6dd      	b.n	8f88 <_malloc_r+0x118>
    91cc:	00012b0c 	.word	0x00012b0c
    91d0:	000001ff 	.word	0x000001ff
    91d4:	00012f18 	.word	0x00012f18
    91d8:	00012ff8 	.word	0x00012ff8
    91dc:	0000100f 	.word	0x0000100f
    91e0:	00012ffc 	.word	0x00012ffc
    91e4:	00001008 	.word	0x00001008
    91e8:	00012ff4 	.word	0x00012ff4
    91ec:	00012ff0 	.word	0x00012ff0
    91f0:	2001      	movs	r0, #1
    91f2:	193a      	adds	r2, r7, r4
    91f4:	4304      	orrs	r4, r0
    91f6:	4308      	orrs	r0, r1
    91f8:	607c      	str	r4, [r7, #4]
    91fa:	616a      	str	r2, [r5, #20]
    91fc:	612a      	str	r2, [r5, #16]
    91fe:	6050      	str	r0, [r2, #4]
    9200:	60d3      	str	r3, [r2, #12]
    9202:	6093      	str	r3, [r2, #8]
    9204:	1c30      	adds	r0, r6, #0
    9206:	5051      	str	r1, [r2, r1]
    9208:	f000 f8ba 	bl	9380 <__malloc_unlock>
    920c:	1c38      	adds	r0, r7, #0
    920e:	3008      	adds	r0, #8
    9210:	e65f      	b.n	8ed2 <_malloc_r+0x62>
    9212:	686a      	ldr	r2, [r5, #4]
    9214:	e6b8      	b.n	8f88 <_malloc_r+0x118>
    9216:	2201      	movs	r2, #1
    9218:	4491      	add	r9, r2
    921a:	4643      	mov	r3, r8
    921c:	464a      	mov	r2, r9
    921e:	3008      	adds	r0, #8
    9220:	4213      	tst	r3, r2
    9222:	d000      	beq.n	9226 <_malloc_r+0x3b6>
    9224:	e6ce      	b.n	8fc4 <_malloc_r+0x154>
    9226:	e02c      	b.n	9282 <_malloc_r+0x412>
    9228:	1c3b      	adds	r3, r7, #0
    922a:	697f      	ldr	r7, [r7, #20]
    922c:	3202      	adds	r2, #2
    922e:	3308      	adds	r3, #8
    9230:	4694      	mov	ip, r2
    9232:	42bb      	cmp	r3, r7
    9234:	d100      	bne.n	9238 <_malloc_r+0x3c8>
    9236:	e682      	b.n	8f3e <_malloc_r+0xce>
    9238:	e63a      	b.n	8eb0 <_malloc_r+0x40>
    923a:	18ba      	adds	r2, r7, r2
    923c:	6850      	ldr	r0, [r2, #4]
    923e:	2301      	movs	r3, #1
    9240:	4303      	orrs	r3, r0
    9242:	6053      	str	r3, [r2, #4]
    9244:	68fb      	ldr	r3, [r7, #12]
    9246:	68ba      	ldr	r2, [r7, #8]
    9248:	1c30      	adds	r0, r6, #0
    924a:	60d3      	str	r3, [r2, #12]
    924c:	609a      	str	r2, [r3, #8]
    924e:	f000 f897 	bl	9380 <__malloc_unlock>
    9252:	1c38      	adds	r0, r7, #0
    9254:	3008      	adds	r0, #8
    9256:	e63c      	b.n	8ed2 <_malloc_r+0x62>
    9258:	335b      	adds	r3, #91	; 0x5b
    925a:	469c      	mov	ip, r3
    925c:	0059      	lsls	r1, r3, #1
    925e:	e650      	b.n	8f02 <_malloc_r+0x92>
    9260:	0981      	lsrs	r1, r0, #6
    9262:	3138      	adds	r1, #56	; 0x38
    9264:	0048      	lsls	r0, r1, #1
    9266:	e799      	b.n	919c <_malloc_r+0x32c>
    9268:	42af      	cmp	r7, r5
    926a:	d000      	beq.n	926e <_malloc_r+0x3fe>
    926c:	e76a      	b.n	9144 <_malloc_r+0x2d4>
    926e:	e70f      	b.n	9090 <_malloc_r+0x220>
    9270:	4653      	mov	r3, sl
    9272:	6818      	ldr	r0, [r3, #0]
    9274:	2201      	movs	r2, #1
    9276:	4252      	negs	r2, r2
    9278:	3b08      	subs	r3, #8
    927a:	4494      	add	ip, r2
    927c:	4682      	mov	sl, r0
    927e:	4298      	cmp	r0, r3
    9280:	d177      	bne.n	9372 <_malloc_r+0x502>
    9282:	4643      	mov	r3, r8
    9284:	4660      	mov	r0, ip
    9286:	4203      	tst	r3, r0
    9288:	d1f2      	bne.n	9270 <_malloc_r+0x400>
    928a:	686b      	ldr	r3, [r5, #4]
    928c:	438b      	bics	r3, r1
    928e:	606b      	str	r3, [r5, #4]
    9290:	0049      	lsls	r1, r1, #1
    9292:	4299      	cmp	r1, r3
    9294:	d900      	bls.n	9298 <_malloc_r+0x428>
    9296:	e6d3      	b.n	9040 <_malloc_r+0x1d0>
    9298:	2900      	cmp	r1, #0
    929a:	d100      	bne.n	929e <_malloc_r+0x42e>
    929c:	e6d0      	b.n	9040 <_malloc_r+0x1d0>
    929e:	46cc      	mov	ip, r9
    92a0:	4219      	tst	r1, r3
    92a2:	d000      	beq.n	92a6 <_malloc_r+0x436>
    92a4:	e688      	b.n	8fb8 <_malloc_r+0x148>
    92a6:	2204      	movs	r2, #4
    92a8:	0049      	lsls	r1, r1, #1
    92aa:	4494      	add	ip, r2
    92ac:	4219      	tst	r1, r3
    92ae:	d0fa      	beq.n	92a6 <_malloc_r+0x436>
    92b0:	e682      	b.n	8fb8 <_malloc_r+0x148>
    92b2:	1c30      	adds	r0, r6, #0
    92b4:	f000 f864 	bl	9380 <__malloc_unlock>
    92b8:	2000      	movs	r0, #0
    92ba:	e60a      	b.n	8ed2 <_malloc_r+0x62>
    92bc:	22aa      	movs	r2, #170	; 0xaa
    92be:	0052      	lsls	r2, r2, #1
    92c0:	4293      	cmp	r3, r2
    92c2:	d814      	bhi.n	92ee <_malloc_r+0x47e>
    92c4:	0be3      	lsrs	r3, r4, #15
    92c6:	3377      	adds	r3, #119	; 0x77
    92c8:	469c      	mov	ip, r3
    92ca:	0059      	lsls	r1, r3, #1
    92cc:	e619      	b.n	8f02 <_malloc_r+0x92>
    92ce:	2380      	movs	r3, #128	; 0x80
    92d0:	015b      	lsls	r3, r3, #5
    92d2:	e6fc      	b.n	90ce <_malloc_r+0x25e>
    92d4:	1089      	asrs	r1, r1, #2
    92d6:	6868      	ldr	r0, [r5, #4]
    92d8:	2201      	movs	r2, #1
    92da:	408a      	lsls	r2, r1
    92dc:	4302      	orrs	r2, r0
    92de:	606a      	str	r2, [r5, #4]
    92e0:	1c19      	adds	r1, r3, #0
    92e2:	e76e      	b.n	91c2 <_malloc_r+0x352>
    92e4:	2301      	movs	r3, #1
    92e6:	604b      	str	r3, [r1, #4]
    92e8:	4647      	mov	r7, r8
    92ea:	2200      	movs	r2, #0
    92ec:	e72e      	b.n	914c <_malloc_r+0x2dc>
    92ee:	4a22      	ldr	r2, [pc, #136]	; (9378 <_malloc_r+0x508>)
    92f0:	4293      	cmp	r3, r2
    92f2:	d818      	bhi.n	9326 <_malloc_r+0x4b6>
    92f4:	0ca3      	lsrs	r3, r4, #18
    92f6:	337c      	adds	r3, #124	; 0x7c
    92f8:	469c      	mov	ip, r3
    92fa:	0059      	lsls	r1, r3, #1
    92fc:	e601      	b.n	8f02 <_malloc_r+0x92>
    92fe:	3310      	adds	r3, #16
    9300:	9300      	str	r3, [sp, #0]
    9302:	e6b9      	b.n	9078 <_malloc_r+0x208>
    9304:	2b54      	cmp	r3, #84	; 0x54
    9306:	d822      	bhi.n	934e <_malloc_r+0x4de>
    9308:	0b01      	lsrs	r1, r0, #12
    930a:	316e      	adds	r1, #110	; 0x6e
    930c:	0048      	lsls	r0, r1, #1
    930e:	e745      	b.n	919c <_malloc_r+0x32c>
    9310:	050a      	lsls	r2, r1, #20
    9312:	d000      	beq.n	9316 <_malloc_r+0x4a6>
    9314:	e6c6      	b.n	90a4 <_malloc_r+0x234>
    9316:	9900      	ldr	r1, [sp, #0]
    9318:	68aa      	ldr	r2, [r5, #8]
    931a:	1c08      	adds	r0, r1, #0
    931c:	4448      	add	r0, r9
    931e:	2101      	movs	r1, #1
    9320:	4301      	orrs	r1, r0
    9322:	6051      	str	r1, [r2, #4]
    9324:	e704      	b.n	9130 <_malloc_r+0x2c0>
    9326:	237e      	movs	r3, #126	; 0x7e
    9328:	21fc      	movs	r1, #252	; 0xfc
    932a:	469c      	mov	ip, r3
    932c:	e5e9      	b.n	8f02 <_malloc_r+0x92>
    932e:	2300      	movs	r3, #0
    9330:	2001      	movs	r0, #1
    9332:	469b      	mov	fp, r3
    9334:	e6de      	b.n	90f4 <_malloc_r+0x284>
    9336:	4643      	mov	r3, r8
    9338:	4658      	mov	r0, fp
    933a:	6003      	str	r3, [r0, #0]
    933c:	e6bd      	b.n	90ba <_malloc_r+0x24a>
    933e:	1c39      	adds	r1, r7, #0
    9340:	3108      	adds	r1, #8
    9342:	1c30      	adds	r0, r6, #0
    9344:	f000 fa58 	bl	97f8 <_free_r>
    9348:	4651      	mov	r1, sl
    934a:	680b      	ldr	r3, [r1, #0]
    934c:	e6f0      	b.n	9130 <_malloc_r+0x2c0>
    934e:	21aa      	movs	r1, #170	; 0xaa
    9350:	0049      	lsls	r1, r1, #1
    9352:	428b      	cmp	r3, r1
    9354:	d803      	bhi.n	935e <_malloc_r+0x4ee>
    9356:	0bc1      	lsrs	r1, r0, #15
    9358:	3177      	adds	r1, #119	; 0x77
    935a:	0048      	lsls	r0, r1, #1
    935c:	e71e      	b.n	919c <_malloc_r+0x32c>
    935e:	4906      	ldr	r1, [pc, #24]	; (9378 <_malloc_r+0x508>)
    9360:	428b      	cmp	r3, r1
    9362:	d803      	bhi.n	936c <_malloc_r+0x4fc>
    9364:	0c81      	lsrs	r1, r0, #18
    9366:	317c      	adds	r1, #124	; 0x7c
    9368:	0048      	lsls	r0, r1, #1
    936a:	e717      	b.n	919c <_malloc_r+0x32c>
    936c:	20fc      	movs	r0, #252	; 0xfc
    936e:	217e      	movs	r1, #126	; 0x7e
    9370:	e714      	b.n	919c <_malloc_r+0x32c>
    9372:	686b      	ldr	r3, [r5, #4]
    9374:	e78c      	b.n	9290 <_malloc_r+0x420>
    9376:	46c0      	nop			; (mov r8, r8)
    9378:	00000554 	.word	0x00000554

0000937c <__malloc_lock>:
    937c:	4770      	bx	lr
    937e:	46c0      	nop			; (mov r8, r8)

00009380 <__malloc_unlock>:
    9380:	4770      	bx	lr
    9382:	46c0      	nop			; (mov r8, r8)

00009384 <_puts_r>:
    9384:	b530      	push	{r4, r5, lr}
    9386:	1c04      	adds	r4, r0, #0
    9388:	b089      	sub	sp, #36	; 0x24
    938a:	1c08      	adds	r0, r1, #0
    938c:	1c0d      	adds	r5, r1, #0
    938e:	f000 f891 	bl	94b4 <strlen>
    9392:	4a11      	ldr	r2, [pc, #68]	; (93d8 <_puts_r+0x54>)
    9394:	ab04      	add	r3, sp, #16
    9396:	9005      	str	r0, [sp, #20]
    9398:	9206      	str	r2, [sp, #24]
    939a:	9301      	str	r3, [sp, #4]
    939c:	2201      	movs	r2, #1
    939e:	2302      	movs	r3, #2
    93a0:	3001      	adds	r0, #1
    93a2:	68a1      	ldr	r1, [r4, #8]
    93a4:	9207      	str	r2, [sp, #28]
    93a6:	9504      	str	r5, [sp, #16]
    93a8:	9003      	str	r0, [sp, #12]
    93aa:	9302      	str	r3, [sp, #8]
    93ac:	2280      	movs	r2, #128	; 0x80
    93ae:	898b      	ldrh	r3, [r1, #12]
    93b0:	0192      	lsls	r2, r2, #6
    93b2:	4213      	tst	r3, r2
    93b4:	d105      	bne.n	93c2 <_puts_r+0x3e>
    93b6:	4313      	orrs	r3, r2
    93b8:	818b      	strh	r3, [r1, #12]
    93ba:	6e4a      	ldr	r2, [r1, #100]	; 0x64
    93bc:	4b07      	ldr	r3, [pc, #28]	; (93dc <_puts_r+0x58>)
    93be:	4013      	ands	r3, r2
    93c0:	664b      	str	r3, [r1, #100]	; 0x64
    93c2:	1c20      	adds	r0, r4, #0
    93c4:	aa01      	add	r2, sp, #4
    93c6:	f000 fadf 	bl	9988 <__sfvwrite_r>
    93ca:	1e43      	subs	r3, r0, #1
    93cc:	4198      	sbcs	r0, r3
    93ce:	4240      	negs	r0, r0
    93d0:	230a      	movs	r3, #10
    93d2:	4318      	orrs	r0, r3
    93d4:	b009      	add	sp, #36	; 0x24
    93d6:	bd30      	pop	{r4, r5, pc}
    93d8:	0000a5a4 	.word	0x0000a5a4
    93dc:	ffffdfff 	.word	0xffffdfff

000093e0 <puts>:
    93e0:	b508      	push	{r3, lr}
    93e2:	4b03      	ldr	r3, [pc, #12]	; (93f0 <puts+0x10>)
    93e4:	1c01      	adds	r1, r0, #0
    93e6:	6818      	ldr	r0, [r3, #0]
    93e8:	f7ff ffcc 	bl	9384 <_puts_r>
    93ec:	bd08      	pop	{r3, pc}
    93ee:	46c0      	nop			; (mov r8, r8)
    93f0:	00012b08 	.word	0x00012b08

000093f4 <_sbrk_r>:
    93f4:	b538      	push	{r3, r4, r5, lr}
    93f6:	4c07      	ldr	r4, [pc, #28]	; (9414 <_sbrk_r+0x20>)
    93f8:	2300      	movs	r3, #0
    93fa:	1c05      	adds	r5, r0, #0
    93fc:	1c08      	adds	r0, r1, #0
    93fe:	6023      	str	r3, [r4, #0]
    9400:	f7ff f9c6 	bl	8790 <_sbrk>
    9404:	1c43      	adds	r3, r0, #1
    9406:	d000      	beq.n	940a <_sbrk_r+0x16>
    9408:	bd38      	pop	{r3, r4, r5, pc}
    940a:	6823      	ldr	r3, [r4, #0]
    940c:	2b00      	cmp	r3, #0
    940e:	d0fb      	beq.n	9408 <_sbrk_r+0x14>
    9410:	602b      	str	r3, [r5, #0]
    9412:	e7f9      	b.n	9408 <_sbrk_r+0x14>
    9414:	00013024 	.word	0x00013024

00009418 <__sread>:
    9418:	b538      	push	{r3, r4, r5, lr}
    941a:	1c0c      	adds	r4, r1, #0
    941c:	250e      	movs	r5, #14
    941e:	5f49      	ldrsh	r1, [r1, r5]
    9420:	f000 fd28 	bl	9e74 <_read_r>
    9424:	2800      	cmp	r0, #0
    9426:	db03      	blt.n	9430 <__sread+0x18>
    9428:	6d22      	ldr	r2, [r4, #80]	; 0x50
    942a:	1813      	adds	r3, r2, r0
    942c:	6523      	str	r3, [r4, #80]	; 0x50
    942e:	bd38      	pop	{r3, r4, r5, pc}
    9430:	89a2      	ldrh	r2, [r4, #12]
    9432:	4b02      	ldr	r3, [pc, #8]	; (943c <__sread+0x24>)
    9434:	4013      	ands	r3, r2
    9436:	81a3      	strh	r3, [r4, #12]
    9438:	e7f9      	b.n	942e <__sread+0x16>
    943a:	46c0      	nop			; (mov r8, r8)
    943c:	ffffefff 	.word	0xffffefff

00009440 <__seofread>:
    9440:	2000      	movs	r0, #0
    9442:	4770      	bx	lr

00009444 <__swrite>:
    9444:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    9446:	1c0c      	adds	r4, r1, #0
    9448:	8989      	ldrh	r1, [r1, #12]
    944a:	1c05      	adds	r5, r0, #0
    944c:	1c17      	adds	r7, r2, #0
    944e:	1c1e      	adds	r6, r3, #0
    9450:	05cb      	lsls	r3, r1, #23
    9452:	d506      	bpl.n	9462 <__swrite+0x1e>
    9454:	230e      	movs	r3, #14
    9456:	5ee1      	ldrsh	r1, [r4, r3]
    9458:	2200      	movs	r2, #0
    945a:	2302      	movs	r3, #2
    945c:	f000 fc20 	bl	9ca0 <_lseek_r>
    9460:	89a1      	ldrh	r1, [r4, #12]
    9462:	4b05      	ldr	r3, [pc, #20]	; (9478 <__swrite+0x34>)
    9464:	1c28      	adds	r0, r5, #0
    9466:	4019      	ands	r1, r3
    9468:	81a1      	strh	r1, [r4, #12]
    946a:	1c3a      	adds	r2, r7, #0
    946c:	230e      	movs	r3, #14
    946e:	5ee1      	ldrsh	r1, [r4, r3]
    9470:	1c33      	adds	r3, r6, #0
    9472:	f000 f827 	bl	94c4 <_write_r>
    9476:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    9478:	ffffefff 	.word	0xffffefff

0000947c <__sseek>:
    947c:	b538      	push	{r3, r4, r5, lr}
    947e:	1c0c      	adds	r4, r1, #0
    9480:	250e      	movs	r5, #14
    9482:	5f49      	ldrsh	r1, [r1, r5]
    9484:	f000 fc0c 	bl	9ca0 <_lseek_r>
    9488:	89a2      	ldrh	r2, [r4, #12]
    948a:	1c43      	adds	r3, r0, #1
    948c:	d005      	beq.n	949a <__sseek+0x1e>
    948e:	2380      	movs	r3, #128	; 0x80
    9490:	015b      	lsls	r3, r3, #5
    9492:	4313      	orrs	r3, r2
    9494:	81a3      	strh	r3, [r4, #12]
    9496:	6520      	str	r0, [r4, #80]	; 0x50
    9498:	bd38      	pop	{r3, r4, r5, pc}
    949a:	4b02      	ldr	r3, [pc, #8]	; (94a4 <__sseek+0x28>)
    949c:	4013      	ands	r3, r2
    949e:	81a3      	strh	r3, [r4, #12]
    94a0:	e7fa      	b.n	9498 <__sseek+0x1c>
    94a2:	46c0      	nop			; (mov r8, r8)
    94a4:	ffffefff 	.word	0xffffefff

000094a8 <__sclose>:
    94a8:	b508      	push	{r3, lr}
    94aa:	230e      	movs	r3, #14
    94ac:	5ec9      	ldrsh	r1, [r1, r3]
    94ae:	f000 f81d 	bl	94ec <_close_r>
    94b2:	bd08      	pop	{r3, pc}

000094b4 <strlen>:
    94b4:	2300      	movs	r3, #0
    94b6:	5cc2      	ldrb	r2, [r0, r3]
    94b8:	3301      	adds	r3, #1
    94ba:	2a00      	cmp	r2, #0
    94bc:	d1fb      	bne.n	94b6 <strlen+0x2>
    94be:	1e58      	subs	r0, r3, #1
    94c0:	4770      	bx	lr
    94c2:	46c0      	nop			; (mov r8, r8)

000094c4 <_write_r>:
    94c4:	b570      	push	{r4, r5, r6, lr}
    94c6:	4c08      	ldr	r4, [pc, #32]	; (94e8 <_write_r+0x24>)
    94c8:	1c06      	adds	r6, r0, #0
    94ca:	2500      	movs	r5, #0
    94cc:	1c08      	adds	r0, r1, #0
    94ce:	1c11      	adds	r1, r2, #0
    94d0:	1c1a      	adds	r2, r3, #0
    94d2:	6025      	str	r5, [r4, #0]
    94d4:	f7ff f8e8 	bl	86a8 <_write>
    94d8:	1c43      	adds	r3, r0, #1
    94da:	d000      	beq.n	94de <_write_r+0x1a>
    94dc:	bd70      	pop	{r4, r5, r6, pc}
    94de:	6823      	ldr	r3, [r4, #0]
    94e0:	2b00      	cmp	r3, #0
    94e2:	d0fb      	beq.n	94dc <_write_r+0x18>
    94e4:	6033      	str	r3, [r6, #0]
    94e6:	e7f9      	b.n	94dc <_write_r+0x18>
    94e8:	00013024 	.word	0x00013024

000094ec <_close_r>:
    94ec:	b538      	push	{r3, r4, r5, lr}
    94ee:	4c07      	ldr	r4, [pc, #28]	; (950c <_close_r+0x20>)
    94f0:	2300      	movs	r3, #0
    94f2:	1c05      	adds	r5, r0, #0
    94f4:	1c08      	adds	r0, r1, #0
    94f6:	6023      	str	r3, [r4, #0]
    94f8:	f7ff f914 	bl	8724 <_close>
    94fc:	1c43      	adds	r3, r0, #1
    94fe:	d000      	beq.n	9502 <_close_r+0x16>
    9500:	bd38      	pop	{r3, r4, r5, pc}
    9502:	6823      	ldr	r3, [r4, #0]
    9504:	2b00      	cmp	r3, #0
    9506:	d0fb      	beq.n	9500 <_close_r+0x14>
    9508:	602b      	str	r3, [r5, #0]
    950a:	e7f9      	b.n	9500 <_close_r+0x14>
    950c:	00013024 	.word	0x00013024

00009510 <_fclose_r>:
    9510:	b570      	push	{r4, r5, r6, lr}
    9512:	1c05      	adds	r5, r0, #0
    9514:	1e0c      	subs	r4, r1, #0
    9516:	d008      	beq.n	952a <_fclose_r+0x1a>
    9518:	2800      	cmp	r0, #0
    951a:	d002      	beq.n	9522 <_fclose_r+0x12>
    951c:	6b82      	ldr	r2, [r0, #56]	; 0x38
    951e:	2a00      	cmp	r2, #0
    9520:	d031      	beq.n	9586 <_fclose_r+0x76>
    9522:	220c      	movs	r2, #12
    9524:	5ea3      	ldrsh	r3, [r4, r2]
    9526:	2b00      	cmp	r3, #0
    9528:	d101      	bne.n	952e <_fclose_r+0x1e>
    952a:	2000      	movs	r0, #0
    952c:	bd70      	pop	{r4, r5, r6, pc}
    952e:	1c28      	adds	r0, r5, #0
    9530:	1c21      	adds	r1, r4, #0
    9532:	f000 f8e7 	bl	9704 <_fflush_r>
    9536:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
    9538:	1c06      	adds	r6, r0, #0
    953a:	2b00      	cmp	r3, #0
    953c:	d004      	beq.n	9548 <_fclose_r+0x38>
    953e:	1c28      	adds	r0, r5, #0
    9540:	69e1      	ldr	r1, [r4, #28]
    9542:	4798      	blx	r3
    9544:	2800      	cmp	r0, #0
    9546:	db21      	blt.n	958c <_fclose_r+0x7c>
    9548:	89a3      	ldrh	r3, [r4, #12]
    954a:	061a      	lsls	r2, r3, #24
    954c:	d421      	bmi.n	9592 <_fclose_r+0x82>
    954e:	6b21      	ldr	r1, [r4, #48]	; 0x30
    9550:	2900      	cmp	r1, #0
    9552:	d008      	beq.n	9566 <_fclose_r+0x56>
    9554:	1c23      	adds	r3, r4, #0
    9556:	3340      	adds	r3, #64	; 0x40
    9558:	4299      	cmp	r1, r3
    955a:	d002      	beq.n	9562 <_fclose_r+0x52>
    955c:	1c28      	adds	r0, r5, #0
    955e:	f000 f94b 	bl	97f8 <_free_r>
    9562:	2300      	movs	r3, #0
    9564:	6323      	str	r3, [r4, #48]	; 0x30
    9566:	6c61      	ldr	r1, [r4, #68]	; 0x44
    9568:	2900      	cmp	r1, #0
    956a:	d004      	beq.n	9576 <_fclose_r+0x66>
    956c:	1c28      	adds	r0, r5, #0
    956e:	f000 f943 	bl	97f8 <_free_r>
    9572:	2300      	movs	r3, #0
    9574:	6463      	str	r3, [r4, #68]	; 0x44
    9576:	f7ff fc11 	bl	8d9c <__sfp_lock_acquire>
    957a:	2300      	movs	r3, #0
    957c:	81a3      	strh	r3, [r4, #12]
    957e:	f7ff fc0f 	bl	8da0 <__sfp_lock_release>
    9582:	1c30      	adds	r0, r6, #0
    9584:	e7d2      	b.n	952c <_fclose_r+0x1c>
    9586:	f7ff fb43 	bl	8c10 <__sinit>
    958a:	e7ca      	b.n	9522 <_fclose_r+0x12>
    958c:	2601      	movs	r6, #1
    958e:	4276      	negs	r6, r6
    9590:	e7da      	b.n	9548 <_fclose_r+0x38>
    9592:	1c28      	adds	r0, r5, #0
    9594:	6921      	ldr	r1, [r4, #16]
    9596:	f000 f92f 	bl	97f8 <_free_r>
    959a:	e7d8      	b.n	954e <_fclose_r+0x3e>

0000959c <fclose>:
    959c:	b508      	push	{r3, lr}
    959e:	4b03      	ldr	r3, [pc, #12]	; (95ac <fclose+0x10>)
    95a0:	1c01      	adds	r1, r0, #0
    95a2:	6818      	ldr	r0, [r3, #0]
    95a4:	f7ff ffb4 	bl	9510 <_fclose_r>
    95a8:	bd08      	pop	{r3, pc}
    95aa:	46c0      	nop			; (mov r8, r8)
    95ac:	00012b08 	.word	0x00012b08

000095b0 <__sflush_r>:
    95b0:	b5f0      	push	{r4, r5, r6, r7, lr}
    95b2:	4647      	mov	r7, r8
    95b4:	b480      	push	{r7}
    95b6:	898b      	ldrh	r3, [r1, #12]
    95b8:	4680      	mov	r8, r0
    95ba:	b29a      	uxth	r2, r3
    95bc:	1c0d      	adds	r5, r1, #0
    95be:	0711      	lsls	r1, r2, #28
    95c0:	d43c      	bmi.n	963c <__sflush_r+0x8c>
    95c2:	2280      	movs	r2, #128	; 0x80
    95c4:	0112      	lsls	r2, r2, #4
    95c6:	4313      	orrs	r3, r2
    95c8:	686a      	ldr	r2, [r5, #4]
    95ca:	81ab      	strh	r3, [r5, #12]
    95cc:	2a00      	cmp	r2, #0
    95ce:	dd56      	ble.n	967e <__sflush_r+0xce>
    95d0:	6aac      	ldr	r4, [r5, #40]	; 0x28
    95d2:	2c00      	cmp	r4, #0
    95d4:	d02e      	beq.n	9634 <__sflush_r+0x84>
    95d6:	4641      	mov	r1, r8
    95d8:	2200      	movs	r2, #0
    95da:	b29b      	uxth	r3, r3
    95dc:	680e      	ldr	r6, [r1, #0]
    95de:	600a      	str	r2, [r1, #0]
    95e0:	04da      	lsls	r2, r3, #19
    95e2:	d550      	bpl.n	9686 <__sflush_r+0xd6>
    95e4:	6d2a      	ldr	r2, [r5, #80]	; 0x50
    95e6:	075f      	lsls	r7, r3, #29
    95e8:	d506      	bpl.n	95f8 <__sflush_r+0x48>
    95ea:	6869      	ldr	r1, [r5, #4]
    95ec:	6b2b      	ldr	r3, [r5, #48]	; 0x30
    95ee:	1a52      	subs	r2, r2, r1
    95f0:	2b00      	cmp	r3, #0
    95f2:	d001      	beq.n	95f8 <__sflush_r+0x48>
    95f4:	6bef      	ldr	r7, [r5, #60]	; 0x3c
    95f6:	1bd2      	subs	r2, r2, r7
    95f8:	69e9      	ldr	r1, [r5, #28]
    95fa:	4640      	mov	r0, r8
    95fc:	2300      	movs	r3, #0
    95fe:	47a0      	blx	r4
    9600:	1c41      	adds	r1, r0, #1
    9602:	d04b      	beq.n	969c <__sflush_r+0xec>
    9604:	89aa      	ldrh	r2, [r5, #12]
    9606:	4b3e      	ldr	r3, [pc, #248]	; (9700 <__sflush_r+0x150>)
    9608:	6929      	ldr	r1, [r5, #16]
    960a:	4013      	ands	r3, r2
    960c:	2200      	movs	r2, #0
    960e:	81ab      	strh	r3, [r5, #12]
    9610:	606a      	str	r2, [r5, #4]
    9612:	6029      	str	r1, [r5, #0]
    9614:	04da      	lsls	r2, r3, #19
    9616:	d44e      	bmi.n	96b6 <__sflush_r+0x106>
    9618:	6b29      	ldr	r1, [r5, #48]	; 0x30
    961a:	4643      	mov	r3, r8
    961c:	601e      	str	r6, [r3, #0]
    961e:	2900      	cmp	r1, #0
    9620:	d008      	beq.n	9634 <__sflush_r+0x84>
    9622:	1c2b      	adds	r3, r5, #0
    9624:	3340      	adds	r3, #64	; 0x40
    9626:	4299      	cmp	r1, r3
    9628:	d002      	beq.n	9630 <__sflush_r+0x80>
    962a:	4640      	mov	r0, r8
    962c:	f000 f8e4 	bl	97f8 <_free_r>
    9630:	2300      	movs	r3, #0
    9632:	632b      	str	r3, [r5, #48]	; 0x30
    9634:	2000      	movs	r0, #0
    9636:	bc04      	pop	{r2}
    9638:	4690      	mov	r8, r2
    963a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    963c:	692e      	ldr	r6, [r5, #16]
    963e:	2e00      	cmp	r6, #0
    9640:	d0f8      	beq.n	9634 <__sflush_r+0x84>
    9642:	682f      	ldr	r7, [r5, #0]
    9644:	2300      	movs	r3, #0
    9646:	1bbc      	subs	r4, r7, r6
    9648:	602e      	str	r6, [r5, #0]
    964a:	0791      	lsls	r1, r2, #30
    964c:	d100      	bne.n	9650 <__sflush_r+0xa0>
    964e:	696b      	ldr	r3, [r5, #20]
    9650:	60ab      	str	r3, [r5, #8]
    9652:	2c00      	cmp	r4, #0
    9654:	dc04      	bgt.n	9660 <__sflush_r+0xb0>
    9656:	e7ed      	b.n	9634 <__sflush_r+0x84>
    9658:	1836      	adds	r6, r6, r0
    965a:	1a24      	subs	r4, r4, r0
    965c:	2c00      	cmp	r4, #0
    965e:	dde9      	ble.n	9634 <__sflush_r+0x84>
    9660:	4640      	mov	r0, r8
    9662:	69e9      	ldr	r1, [r5, #28]
    9664:	1c32      	adds	r2, r6, #0
    9666:	1c23      	adds	r3, r4, #0
    9668:	6a6f      	ldr	r7, [r5, #36]	; 0x24
    966a:	47b8      	blx	r7
    966c:	2800      	cmp	r0, #0
    966e:	dcf3      	bgt.n	9658 <__sflush_r+0xa8>
    9670:	89aa      	ldrh	r2, [r5, #12]
    9672:	2340      	movs	r3, #64	; 0x40
    9674:	4313      	orrs	r3, r2
    9676:	2001      	movs	r0, #1
    9678:	81ab      	strh	r3, [r5, #12]
    967a:	4240      	negs	r0, r0
    967c:	e7db      	b.n	9636 <__sflush_r+0x86>
    967e:	6bef      	ldr	r7, [r5, #60]	; 0x3c
    9680:	2f00      	cmp	r7, #0
    9682:	dca5      	bgt.n	95d0 <__sflush_r+0x20>
    9684:	e7d6      	b.n	9634 <__sflush_r+0x84>
    9686:	2200      	movs	r2, #0
    9688:	4640      	mov	r0, r8
    968a:	69e9      	ldr	r1, [r5, #28]
    968c:	2301      	movs	r3, #1
    968e:	47a0      	blx	r4
    9690:	1c02      	adds	r2, r0, #0
    9692:	1c43      	adds	r3, r0, #1
    9694:	d01e      	beq.n	96d4 <__sflush_r+0x124>
    9696:	89ab      	ldrh	r3, [r5, #12]
    9698:	6aac      	ldr	r4, [r5, #40]	; 0x28
    969a:	e7a4      	b.n	95e6 <__sflush_r+0x36>
    969c:	4642      	mov	r2, r8
    969e:	6813      	ldr	r3, [r2, #0]
    96a0:	2b00      	cmp	r3, #0
    96a2:	d10a      	bne.n	96ba <__sflush_r+0x10a>
    96a4:	89a9      	ldrh	r1, [r5, #12]
    96a6:	4a16      	ldr	r2, [pc, #88]	; (9700 <__sflush_r+0x150>)
    96a8:	692f      	ldr	r7, [r5, #16]
    96aa:	400a      	ands	r2, r1
    96ac:	81aa      	strh	r2, [r5, #12]
    96ae:	606b      	str	r3, [r5, #4]
    96b0:	602f      	str	r7, [r5, #0]
    96b2:	04d1      	lsls	r1, r2, #19
    96b4:	d5b0      	bpl.n	9618 <__sflush_r+0x68>
    96b6:	6528      	str	r0, [r5, #80]	; 0x50
    96b8:	e7ae      	b.n	9618 <__sflush_r+0x68>
    96ba:	2b1d      	cmp	r3, #29
    96bc:	d001      	beq.n	96c2 <__sflush_r+0x112>
    96be:	2b16      	cmp	r3, #22
    96c0:	d119      	bne.n	96f6 <__sflush_r+0x146>
    96c2:	89aa      	ldrh	r2, [r5, #12]
    96c4:	4b0e      	ldr	r3, [pc, #56]	; (9700 <__sflush_r+0x150>)
    96c6:	4013      	ands	r3, r2
    96c8:	81ab      	strh	r3, [r5, #12]
    96ca:	2300      	movs	r3, #0
    96cc:	606b      	str	r3, [r5, #4]
    96ce:	692b      	ldr	r3, [r5, #16]
    96d0:	602b      	str	r3, [r5, #0]
    96d2:	e7a1      	b.n	9618 <__sflush_r+0x68>
    96d4:	4647      	mov	r7, r8
    96d6:	683b      	ldr	r3, [r7, #0]
    96d8:	2b00      	cmp	r3, #0
    96da:	d0dc      	beq.n	9696 <__sflush_r+0xe6>
    96dc:	2b1d      	cmp	r3, #29
    96de:	d006      	beq.n	96ee <__sflush_r+0x13e>
    96e0:	2b16      	cmp	r3, #22
    96e2:	d004      	beq.n	96ee <__sflush_r+0x13e>
    96e4:	89a9      	ldrh	r1, [r5, #12]
    96e6:	2340      	movs	r3, #64	; 0x40
    96e8:	430b      	orrs	r3, r1
    96ea:	81ab      	strh	r3, [r5, #12]
    96ec:	e7a3      	b.n	9636 <__sflush_r+0x86>
    96ee:	4641      	mov	r1, r8
    96f0:	600e      	str	r6, [r1, #0]
    96f2:	2000      	movs	r0, #0
    96f4:	e79f      	b.n	9636 <__sflush_r+0x86>
    96f6:	89aa      	ldrh	r2, [r5, #12]
    96f8:	2340      	movs	r3, #64	; 0x40
    96fa:	4313      	orrs	r3, r2
    96fc:	81ab      	strh	r3, [r5, #12]
    96fe:	e79a      	b.n	9636 <__sflush_r+0x86>
    9700:	fffff7ff 	.word	0xfffff7ff

00009704 <_fflush_r>:
    9704:	b538      	push	{r3, r4, r5, lr}
    9706:	1c04      	adds	r4, r0, #0
    9708:	1c0d      	adds	r5, r1, #0
    970a:	2800      	cmp	r0, #0
    970c:	d002      	beq.n	9714 <_fflush_r+0x10>
    970e:	6b82      	ldr	r2, [r0, #56]	; 0x38
    9710:	2a00      	cmp	r2, #0
    9712:	d009      	beq.n	9728 <_fflush_r+0x24>
    9714:	220c      	movs	r2, #12
    9716:	5eab      	ldrsh	r3, [r5, r2]
    9718:	2000      	movs	r0, #0
    971a:	2b00      	cmp	r3, #0
    971c:	d003      	beq.n	9726 <_fflush_r+0x22>
    971e:	1c20      	adds	r0, r4, #0
    9720:	1c29      	adds	r1, r5, #0
    9722:	f7ff ff45 	bl	95b0 <__sflush_r>
    9726:	bd38      	pop	{r3, r4, r5, pc}
    9728:	f7ff fa72 	bl	8c10 <__sinit>
    972c:	e7f2      	b.n	9714 <_fflush_r+0x10>
    972e:	46c0      	nop			; (mov r8, r8)

00009730 <fflush>:
    9730:	b508      	push	{r3, lr}
    9732:	1e01      	subs	r1, r0, #0
    9734:	d004      	beq.n	9740 <fflush+0x10>
    9736:	4b05      	ldr	r3, [pc, #20]	; (974c <fflush+0x1c>)
    9738:	6818      	ldr	r0, [r3, #0]
    973a:	f7ff ffe3 	bl	9704 <_fflush_r>
    973e:	bd08      	pop	{r3, pc}
    9740:	4b03      	ldr	r3, [pc, #12]	; (9750 <fflush+0x20>)
    9742:	4904      	ldr	r1, [pc, #16]	; (9754 <fflush+0x24>)
    9744:	6818      	ldr	r0, [r3, #0]
    9746:	f7ff fb6b 	bl	8e20 <_fwalk_reent>
    974a:	e7f8      	b.n	973e <fflush+0xe>
    974c:	00012b08 	.word	0x00012b08
    9750:	0000a588 	.word	0x0000a588
    9754:	00009705 	.word	0x00009705

00009758 <_malloc_trim_r>:
    9758:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    975a:	1c0f      	adds	r7, r1, #0
    975c:	1c04      	adds	r4, r0, #0
    975e:	f7ff fe0d 	bl	937c <__malloc_lock>
    9762:	4d20      	ldr	r5, [pc, #128]	; (97e4 <_malloc_trim_r+0x8c>)
    9764:	4a20      	ldr	r2, [pc, #128]	; (97e8 <_malloc_trim_r+0x90>)
    9766:	68ab      	ldr	r3, [r5, #8]
    9768:	685e      	ldr	r6, [r3, #4]
    976a:	2303      	movs	r3, #3
    976c:	439e      	bics	r6, r3
    976e:	1bf7      	subs	r7, r6, r7
    9770:	18bf      	adds	r7, r7, r2
    9772:	0b3f      	lsrs	r7, r7, #12
    9774:	4b1d      	ldr	r3, [pc, #116]	; (97ec <_malloc_trim_r+0x94>)
    9776:	3f01      	subs	r7, #1
    9778:	033f      	lsls	r7, r7, #12
    977a:	429f      	cmp	r7, r3
    977c:	dd07      	ble.n	978e <_malloc_trim_r+0x36>
    977e:	1c20      	adds	r0, r4, #0
    9780:	2100      	movs	r1, #0
    9782:	f7ff fe37 	bl	93f4 <_sbrk_r>
    9786:	68aa      	ldr	r2, [r5, #8]
    9788:	1993      	adds	r3, r2, r6
    978a:	4298      	cmp	r0, r3
    978c:	d004      	beq.n	9798 <_malloc_trim_r+0x40>
    978e:	1c20      	adds	r0, r4, #0
    9790:	f7ff fdf6 	bl	9380 <__malloc_unlock>
    9794:	2000      	movs	r0, #0
    9796:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    9798:	4279      	negs	r1, r7
    979a:	1c20      	adds	r0, r4, #0
    979c:	f7ff fe2a 	bl	93f4 <_sbrk_r>
    97a0:	3001      	adds	r0, #1
    97a2:	d00d      	beq.n	97c0 <_malloc_trim_r+0x68>
    97a4:	68ab      	ldr	r3, [r5, #8]
    97a6:	1bf6      	subs	r6, r6, r7
    97a8:	2201      	movs	r2, #1
    97aa:	4316      	orrs	r6, r2
    97ac:	605e      	str	r6, [r3, #4]
    97ae:	4b10      	ldr	r3, [pc, #64]	; (97f0 <_malloc_trim_r+0x98>)
    97b0:	1c20      	adds	r0, r4, #0
    97b2:	681a      	ldr	r2, [r3, #0]
    97b4:	1bd7      	subs	r7, r2, r7
    97b6:	601f      	str	r7, [r3, #0]
    97b8:	f7ff fde2 	bl	9380 <__malloc_unlock>
    97bc:	2001      	movs	r0, #1
    97be:	e7ea      	b.n	9796 <_malloc_trim_r+0x3e>
    97c0:	1c20      	adds	r0, r4, #0
    97c2:	2100      	movs	r1, #0
    97c4:	f7ff fe16 	bl	93f4 <_sbrk_r>
    97c8:	68ab      	ldr	r3, [r5, #8]
    97ca:	1ac2      	subs	r2, r0, r3
    97cc:	2a0f      	cmp	r2, #15
    97ce:	ddde      	ble.n	978e <_malloc_trim_r+0x36>
    97d0:	4908      	ldr	r1, [pc, #32]	; (97f4 <_malloc_trim_r+0x9c>)
    97d2:	6809      	ldr	r1, [r1, #0]
    97d4:	1a40      	subs	r0, r0, r1
    97d6:	4906      	ldr	r1, [pc, #24]	; (97f0 <_malloc_trim_r+0x98>)
    97d8:	6008      	str	r0, [r1, #0]
    97da:	2101      	movs	r1, #1
    97dc:	430a      	orrs	r2, r1
    97de:	605a      	str	r2, [r3, #4]
    97e0:	e7d5      	b.n	978e <_malloc_trim_r+0x36>
    97e2:	46c0      	nop			; (mov r8, r8)
    97e4:	00012b0c 	.word	0x00012b0c
    97e8:	00000fef 	.word	0x00000fef
    97ec:	00000fff 	.word	0x00000fff
    97f0:	00012ffc 	.word	0x00012ffc
    97f4:	00012f18 	.word	0x00012f18

000097f8 <_free_r>:
    97f8:	b5f0      	push	{r4, r5, r6, r7, lr}
    97fa:	4647      	mov	r7, r8
    97fc:	b480      	push	{r7}
    97fe:	1c05      	adds	r5, r0, #0
    9800:	1e0c      	subs	r4, r1, #0
    9802:	d055      	beq.n	98b0 <_free_r+0xb8>
    9804:	f7ff fdba 	bl	937c <__malloc_lock>
    9808:	1c21      	adds	r1, r4, #0
    980a:	3908      	subs	r1, #8
    980c:	6848      	ldr	r0, [r1, #4]
    980e:	2701      	movs	r7, #1
    9810:	1c03      	adds	r3, r0, #0
    9812:	43bb      	bics	r3, r7
    9814:	18ca      	adds	r2, r1, r3
    9816:	6854      	ldr	r4, [r2, #4]
    9818:	4680      	mov	r8, r0
    981a:	2003      	movs	r0, #3
    981c:	4384      	bics	r4, r0
    981e:	1c20      	adds	r0, r4, #0
    9820:	4c53      	ldr	r4, [pc, #332]	; (9970 <_free_r+0x178>)
    9822:	68a6      	ldr	r6, [r4, #8]
    9824:	4296      	cmp	r6, r2
    9826:	d060      	beq.n	98ea <_free_r+0xf2>
    9828:	2600      	movs	r6, #0
    982a:	46b4      	mov	ip, r6
    982c:	4646      	mov	r6, r8
    982e:	6050      	str	r0, [r2, #4]
    9830:	4237      	tst	r7, r6
    9832:	d10a      	bne.n	984a <_free_r+0x52>
    9834:	680e      	ldr	r6, [r1, #0]
    9836:	1c27      	adds	r7, r4, #0
    9838:	1b89      	subs	r1, r1, r6
    983a:	199b      	adds	r3, r3, r6
    983c:	688e      	ldr	r6, [r1, #8]
    983e:	3708      	adds	r7, #8
    9840:	42be      	cmp	r6, r7
    9842:	d06b      	beq.n	991c <_free_r+0x124>
    9844:	68cf      	ldr	r7, [r1, #12]
    9846:	60f7      	str	r7, [r6, #12]
    9848:	60be      	str	r6, [r7, #8]
    984a:	1816      	adds	r6, r2, r0
    984c:	6876      	ldr	r6, [r6, #4]
    984e:	2701      	movs	r7, #1
    9850:	423e      	tst	r6, r7
    9852:	d107      	bne.n	9864 <_free_r+0x6c>
    9854:	181b      	adds	r3, r3, r0
    9856:	4660      	mov	r0, ip
    9858:	2800      	cmp	r0, #0
    985a:	d02c      	beq.n	98b6 <_free_r+0xbe>
    985c:	6890      	ldr	r0, [r2, #8]
    985e:	68d2      	ldr	r2, [r2, #12]
    9860:	60c2      	str	r2, [r0, #12]
    9862:	6090      	str	r0, [r2, #8]
    9864:	2201      	movs	r2, #1
    9866:	1c18      	adds	r0, r3, #0
    9868:	4310      	orrs	r0, r2
    986a:	4666      	mov	r6, ip
    986c:	6048      	str	r0, [r1, #4]
    986e:	50cb      	str	r3, [r1, r3]
    9870:	2e00      	cmp	r6, #0
    9872:	d11a      	bne.n	98aa <_free_r+0xb2>
    9874:	483f      	ldr	r0, [pc, #252]	; (9974 <_free_r+0x17c>)
    9876:	4283      	cmp	r3, r0
    9878:	d929      	bls.n	98ce <_free_r+0xd6>
    987a:	0a5a      	lsrs	r2, r3, #9
    987c:	2a04      	cmp	r2, #4
    987e:	d850      	bhi.n	9922 <_free_r+0x12a>
    9880:	099e      	lsrs	r6, r3, #6
    9882:	3638      	adds	r6, #56	; 0x38
    9884:	0070      	lsls	r0, r6, #1
    9886:	0080      	lsls	r0, r0, #2
    9888:	1820      	adds	r0, r4, r0
    988a:	6882      	ldr	r2, [r0, #8]
    988c:	4282      	cmp	r2, r0
    988e:	d04e      	beq.n	992e <_free_r+0x136>
    9890:	2603      	movs	r6, #3
    9892:	6854      	ldr	r4, [r2, #4]
    9894:	43b4      	bics	r4, r6
    9896:	42a3      	cmp	r3, r4
    9898:	d202      	bcs.n	98a0 <_free_r+0xa8>
    989a:	6892      	ldr	r2, [r2, #8]
    989c:	4290      	cmp	r0, r2
    989e:	d1f8      	bne.n	9892 <_free_r+0x9a>
    98a0:	68d3      	ldr	r3, [r2, #12]
    98a2:	60cb      	str	r3, [r1, #12]
    98a4:	608a      	str	r2, [r1, #8]
    98a6:	6099      	str	r1, [r3, #8]
    98a8:	60d1      	str	r1, [r2, #12]
    98aa:	1c28      	adds	r0, r5, #0
    98ac:	f7ff fd68 	bl	9380 <__malloc_unlock>
    98b0:	bc04      	pop	{r2}
    98b2:	4690      	mov	r8, r2
    98b4:	bdf0      	pop	{r4, r5, r6, r7, pc}
    98b6:	6890      	ldr	r0, [r2, #8]
    98b8:	4e2f      	ldr	r6, [pc, #188]	; (9978 <_free_r+0x180>)
    98ba:	42b0      	cmp	r0, r6
    98bc:	d1cf      	bne.n	985e <_free_r+0x66>
    98be:	431f      	orrs	r7, r3
    98c0:	60c1      	str	r1, [r0, #12]
    98c2:	6081      	str	r1, [r0, #8]
    98c4:	60c8      	str	r0, [r1, #12]
    98c6:	6088      	str	r0, [r1, #8]
    98c8:	604f      	str	r7, [r1, #4]
    98ca:	50cb      	str	r3, [r1, r3]
    98cc:	e7ed      	b.n	98aa <_free_r+0xb2>
    98ce:	08db      	lsrs	r3, r3, #3
    98d0:	1098      	asrs	r0, r3, #2
    98d2:	4082      	lsls	r2, r0
    98d4:	6860      	ldr	r0, [r4, #4]
    98d6:	00db      	lsls	r3, r3, #3
    98d8:	4302      	orrs	r2, r0
    98da:	6062      	str	r2, [r4, #4]
    98dc:	18e4      	adds	r4, r4, r3
    98de:	68a3      	ldr	r3, [r4, #8]
    98e0:	60cc      	str	r4, [r1, #12]
    98e2:	608b      	str	r3, [r1, #8]
    98e4:	60a1      	str	r1, [r4, #8]
    98e6:	60d9      	str	r1, [r3, #12]
    98e8:	e7df      	b.n	98aa <_free_r+0xb2>
    98ea:	18c3      	adds	r3, r0, r3
    98ec:	4640      	mov	r0, r8
    98ee:	4207      	tst	r7, r0
    98f0:	d106      	bne.n	9900 <_free_r+0x108>
    98f2:	680a      	ldr	r2, [r1, #0]
    98f4:	1a89      	subs	r1, r1, r2
    98f6:	6888      	ldr	r0, [r1, #8]
    98f8:	189b      	adds	r3, r3, r2
    98fa:	68ca      	ldr	r2, [r1, #12]
    98fc:	60c2      	str	r2, [r0, #12]
    98fe:	6090      	str	r0, [r2, #8]
    9900:	2201      	movs	r2, #1
    9902:	431a      	orrs	r2, r3
    9904:	604a      	str	r2, [r1, #4]
    9906:	4a1d      	ldr	r2, [pc, #116]	; (997c <_free_r+0x184>)
    9908:	60a1      	str	r1, [r4, #8]
    990a:	6812      	ldr	r2, [r2, #0]
    990c:	4293      	cmp	r3, r2
    990e:	d3cc      	bcc.n	98aa <_free_r+0xb2>
    9910:	4b1b      	ldr	r3, [pc, #108]	; (9980 <_free_r+0x188>)
    9912:	1c28      	adds	r0, r5, #0
    9914:	6819      	ldr	r1, [r3, #0]
    9916:	f7ff ff1f 	bl	9758 <_malloc_trim_r>
    991a:	e7c6      	b.n	98aa <_free_r+0xb2>
    991c:	2601      	movs	r6, #1
    991e:	46b4      	mov	ip, r6
    9920:	e793      	b.n	984a <_free_r+0x52>
    9922:	2a14      	cmp	r2, #20
    9924:	d80c      	bhi.n	9940 <_free_r+0x148>
    9926:	1c16      	adds	r6, r2, #0
    9928:	365b      	adds	r6, #91	; 0x5b
    992a:	0070      	lsls	r0, r6, #1
    992c:	e7ab      	b.n	9886 <_free_r+0x8e>
    992e:	10b6      	asrs	r6, r6, #2
    9930:	2301      	movs	r3, #1
    9932:	40b3      	lsls	r3, r6
    9934:	1c1e      	adds	r6, r3, #0
    9936:	6863      	ldr	r3, [r4, #4]
    9938:	431e      	orrs	r6, r3
    993a:	6066      	str	r6, [r4, #4]
    993c:	1c13      	adds	r3, r2, #0
    993e:	e7b0      	b.n	98a2 <_free_r+0xaa>
    9940:	2a54      	cmp	r2, #84	; 0x54
    9942:	d803      	bhi.n	994c <_free_r+0x154>
    9944:	0b1e      	lsrs	r6, r3, #12
    9946:	366e      	adds	r6, #110	; 0x6e
    9948:	0070      	lsls	r0, r6, #1
    994a:	e79c      	b.n	9886 <_free_r+0x8e>
    994c:	20aa      	movs	r0, #170	; 0xaa
    994e:	0040      	lsls	r0, r0, #1
    9950:	4282      	cmp	r2, r0
    9952:	d803      	bhi.n	995c <_free_r+0x164>
    9954:	0bde      	lsrs	r6, r3, #15
    9956:	3677      	adds	r6, #119	; 0x77
    9958:	0070      	lsls	r0, r6, #1
    995a:	e794      	b.n	9886 <_free_r+0x8e>
    995c:	4809      	ldr	r0, [pc, #36]	; (9984 <_free_r+0x18c>)
    995e:	4282      	cmp	r2, r0
    9960:	d803      	bhi.n	996a <_free_r+0x172>
    9962:	0c9e      	lsrs	r6, r3, #18
    9964:	367c      	adds	r6, #124	; 0x7c
    9966:	0070      	lsls	r0, r6, #1
    9968:	e78d      	b.n	9886 <_free_r+0x8e>
    996a:	20fc      	movs	r0, #252	; 0xfc
    996c:	267e      	movs	r6, #126	; 0x7e
    996e:	e78a      	b.n	9886 <_free_r+0x8e>
    9970:	00012b0c 	.word	0x00012b0c
    9974:	000001ff 	.word	0x000001ff
    9978:	00012b14 	.word	0x00012b14
    997c:	00012f14 	.word	0x00012f14
    9980:	00012ff8 	.word	0x00012ff8
    9984:	00000554 	.word	0x00000554

00009988 <__sfvwrite_r>:
    9988:	b5f0      	push	{r4, r5, r6, r7, lr}
    998a:	4656      	mov	r6, sl
    998c:	4644      	mov	r4, r8
    998e:	465f      	mov	r7, fp
    9990:	464d      	mov	r5, r9
    9992:	b4f0      	push	{r4, r5, r6, r7}
    9994:	b085      	sub	sp, #20
    9996:	9003      	str	r0, [sp, #12]
    9998:	6890      	ldr	r0, [r2, #8]
    999a:	1c0c      	adds	r4, r1, #0
    999c:	4692      	mov	sl, r2
    999e:	2800      	cmp	r0, #0
    99a0:	d024      	beq.n	99ec <__sfvwrite_r+0x64>
    99a2:	898b      	ldrh	r3, [r1, #12]
    99a4:	0719      	lsls	r1, r3, #28
    99a6:	d529      	bpl.n	99fc <__sfvwrite_r+0x74>
    99a8:	6922      	ldr	r2, [r4, #16]
    99aa:	2a00      	cmp	r2, #0
    99ac:	d026      	beq.n	99fc <__sfvwrite_r+0x74>
    99ae:	4657      	mov	r7, sl
    99b0:	683e      	ldr	r6, [r7, #0]
    99b2:	46b3      	mov	fp, r6
    99b4:	0798      	lsls	r0, r3, #30
    99b6:	d52e      	bpl.n	9a16 <__sfvwrite_r+0x8e>
    99b8:	49b6      	ldr	r1, [pc, #728]	; (9c94 <__sfvwrite_r+0x30c>)
    99ba:	2600      	movs	r6, #0
    99bc:	2500      	movs	r5, #0
    99be:	4688      	mov	r8, r1
    99c0:	2d00      	cmp	r5, #0
    99c2:	d065      	beq.n	9a90 <__sfvwrite_r+0x108>
    99c4:	69e1      	ldr	r1, [r4, #28]
    99c6:	1e2b      	subs	r3, r5, #0
    99c8:	4543      	cmp	r3, r8
    99ca:	d900      	bls.n	99ce <__sfvwrite_r+0x46>
    99cc:	4bb1      	ldr	r3, [pc, #708]	; (9c94 <__sfvwrite_r+0x30c>)
    99ce:	9803      	ldr	r0, [sp, #12]
    99d0:	1c32      	adds	r2, r6, #0
    99d2:	6a67      	ldr	r7, [r4, #36]	; 0x24
    99d4:	47b8      	blx	r7
    99d6:	2800      	cmp	r0, #0
    99d8:	dc00      	bgt.n	99dc <__sfvwrite_r+0x54>
    99da:	e080      	b.n	9ade <__sfvwrite_r+0x156>
    99dc:	4651      	mov	r1, sl
    99de:	6889      	ldr	r1, [r1, #8]
    99e0:	1836      	adds	r6, r6, r0
    99e2:	1a2d      	subs	r5, r5, r0
    99e4:	4652      	mov	r2, sl
    99e6:	1a08      	subs	r0, r1, r0
    99e8:	6090      	str	r0, [r2, #8]
    99ea:	d1e9      	bne.n	99c0 <__sfvwrite_r+0x38>
    99ec:	2000      	movs	r0, #0
    99ee:	b005      	add	sp, #20
    99f0:	bc3c      	pop	{r2, r3, r4, r5}
    99f2:	4690      	mov	r8, r2
    99f4:	4699      	mov	r9, r3
    99f6:	46a2      	mov	sl, r4
    99f8:	46ab      	mov	fp, r5
    99fa:	bdf0      	pop	{r4, r5, r6, r7, pc}
    99fc:	9803      	ldr	r0, [sp, #12]
    99fe:	1c21      	adds	r1, r4, #0
    9a00:	f000 fc5a 	bl	a2b8 <__swsetup_r>
    9a04:	2800      	cmp	r0, #0
    9a06:	d000      	beq.n	9a0a <__sfvwrite_r+0x82>
    9a08:	e13b      	b.n	9c82 <__sfvwrite_r+0x2fa>
    9a0a:	4657      	mov	r7, sl
    9a0c:	683e      	ldr	r6, [r7, #0]
    9a0e:	89a3      	ldrh	r3, [r4, #12]
    9a10:	46b3      	mov	fp, r6
    9a12:	0798      	lsls	r0, r3, #30
    9a14:	d4d0      	bmi.n	99b8 <__sfvwrite_r+0x30>
    9a16:	07de      	lsls	r6, r3, #31
    9a18:	d568      	bpl.n	9aec <__sfvwrite_r+0x164>
    9a1a:	2600      	movs	r6, #0
    9a1c:	2700      	movs	r7, #0
    9a1e:	9601      	str	r6, [sp, #4]
    9a20:	46b1      	mov	r9, r6
    9a22:	2500      	movs	r5, #0
    9a24:	2d00      	cmp	r5, #0
    9a26:	d02a      	beq.n	9a7e <__sfvwrite_r+0xf6>
    9a28:	9e01      	ldr	r6, [sp, #4]
    9a2a:	2e00      	cmp	r6, #0
    9a2c:	d100      	bne.n	9a30 <__sfvwrite_r+0xa8>
    9a2e:	e0af      	b.n	9b90 <__sfvwrite_r+0x208>
    9a30:	46b8      	mov	r8, r7
    9a32:	42af      	cmp	r7, r5
    9a34:	d900      	bls.n	9a38 <__sfvwrite_r+0xb0>
    9a36:	46a8      	mov	r8, r5
    9a38:	6820      	ldr	r0, [r4, #0]
    9a3a:	6921      	ldr	r1, [r4, #16]
    9a3c:	4646      	mov	r6, r8
    9a3e:	68a2      	ldr	r2, [r4, #8]
    9a40:	6963      	ldr	r3, [r4, #20]
    9a42:	4288      	cmp	r0, r1
    9a44:	d904      	bls.n	9a50 <__sfvwrite_r+0xc8>
    9a46:	18d2      	adds	r2, r2, r3
    9a48:	9202      	str	r2, [sp, #8]
    9a4a:	4590      	cmp	r8, r2
    9a4c:	dd00      	ble.n	9a50 <__sfvwrite_r+0xc8>
    9a4e:	e0f0      	b.n	9c32 <__sfvwrite_r+0x2aa>
    9a50:	4598      	cmp	r8, r3
    9a52:	da00      	bge.n	9a56 <__sfvwrite_r+0xce>
    9a54:	e080      	b.n	9b58 <__sfvwrite_r+0x1d0>
    9a56:	6a66      	ldr	r6, [r4, #36]	; 0x24
    9a58:	9803      	ldr	r0, [sp, #12]
    9a5a:	69e1      	ldr	r1, [r4, #28]
    9a5c:	464a      	mov	r2, r9
    9a5e:	47b0      	blx	r6
    9a60:	1e06      	subs	r6, r0, #0
    9a62:	dd3c      	ble.n	9ade <__sfvwrite_r+0x156>
    9a64:	1bbf      	subs	r7, r7, r6
    9a66:	d100      	bne.n	9a6a <__sfvwrite_r+0xe2>
    9a68:	e085      	b.n	9b76 <__sfvwrite_r+0x1ee>
    9a6a:	4650      	mov	r0, sl
    9a6c:	6880      	ldr	r0, [r0, #8]
    9a6e:	44b1      	add	r9, r6
    9a70:	1bad      	subs	r5, r5, r6
    9a72:	4651      	mov	r1, sl
    9a74:	1b86      	subs	r6, r0, r6
    9a76:	608e      	str	r6, [r1, #8]
    9a78:	d0b8      	beq.n	99ec <__sfvwrite_r+0x64>
    9a7a:	2d00      	cmp	r5, #0
    9a7c:	d1d4      	bne.n	9a28 <__sfvwrite_r+0xa0>
    9a7e:	465b      	mov	r3, fp
    9a80:	2608      	movs	r6, #8
    9a82:	681a      	ldr	r2, [r3, #0]
    9a84:	44b3      	add	fp, r6
    9a86:	2600      	movs	r6, #0
    9a88:	4691      	mov	r9, r2
    9a8a:	685d      	ldr	r5, [r3, #4]
    9a8c:	9601      	str	r6, [sp, #4]
    9a8e:	e7c9      	b.n	9a24 <__sfvwrite_r+0x9c>
    9a90:	465a      	mov	r2, fp
    9a92:	2308      	movs	r3, #8
    9a94:	6816      	ldr	r6, [r2, #0]
    9a96:	6855      	ldr	r5, [r2, #4]
    9a98:	449b      	add	fp, r3
    9a9a:	e791      	b.n	99c0 <__sfvwrite_r+0x38>
    9a9c:	6820      	ldr	r0, [r4, #0]
    9a9e:	6923      	ldr	r3, [r4, #16]
    9aa0:	4298      	cmp	r0, r3
    9aa2:	d804      	bhi.n	9aae <__sfvwrite_r+0x126>
    9aa4:	6966      	ldr	r6, [r4, #20]
    9aa6:	46b1      	mov	r9, r6
    9aa8:	42b5      	cmp	r5, r6
    9aaa:	d300      	bcc.n	9aae <__sfvwrite_r+0x126>
    9aac:	e0ad      	b.n	9c0a <__sfvwrite_r+0x282>
    9aae:	46a9      	mov	r9, r5
    9ab0:	4545      	cmp	r5, r8
    9ab2:	d900      	bls.n	9ab6 <__sfvwrite_r+0x12e>
    9ab4:	46c1      	mov	r9, r8
    9ab6:	9901      	ldr	r1, [sp, #4]
    9ab8:	464a      	mov	r2, r9
    9aba:	f000 f989 	bl	9dd0 <memmove>
    9abe:	6826      	ldr	r6, [r4, #0]
    9ac0:	68a0      	ldr	r0, [r4, #8]
    9ac2:	4649      	mov	r1, r9
    9ac4:	1c32      	adds	r2, r6, #0
    9ac6:	1a43      	subs	r3, r0, r1
    9ac8:	444a      	add	r2, r9
    9aca:	60a3      	str	r3, [r4, #8]
    9acc:	6022      	str	r2, [r4, #0]
    9ace:	2b00      	cmp	r3, #0
    9ad0:	d140      	bne.n	9b54 <__sfvwrite_r+0x1cc>
    9ad2:	9803      	ldr	r0, [sp, #12]
    9ad4:	1c21      	adds	r1, r4, #0
    9ad6:	f7ff fe15 	bl	9704 <_fflush_r>
    9ada:	2800      	cmp	r0, #0
    9adc:	d03a      	beq.n	9b54 <__sfvwrite_r+0x1cc>
    9ade:	89a2      	ldrh	r2, [r4, #12]
    9ae0:	2340      	movs	r3, #64	; 0x40
    9ae2:	4313      	orrs	r3, r2
    9ae4:	2001      	movs	r0, #1
    9ae6:	81a3      	strh	r3, [r4, #12]
    9ae8:	4240      	negs	r0, r0
    9aea:	e780      	b.n	99ee <__sfvwrite_r+0x66>
    9aec:	2600      	movs	r6, #0
    9aee:	2500      	movs	r5, #0
    9af0:	9601      	str	r6, [sp, #4]
    9af2:	465f      	mov	r7, fp
    9af4:	2d00      	cmp	r5, #0
    9af6:	d028      	beq.n	9b4a <__sfvwrite_r+0x1c2>
    9af8:	68a0      	ldr	r0, [r4, #8]
    9afa:	2180      	movs	r1, #128	; 0x80
    9afc:	0089      	lsls	r1, r1, #2
    9afe:	4680      	mov	r8, r0
    9b00:	420b      	tst	r3, r1
    9b02:	d0cb      	beq.n	9a9c <__sfvwrite_r+0x114>
    9b04:	4285      	cmp	r5, r0
    9b06:	d33f      	bcc.n	9b88 <__sfvwrite_r+0x200>
    9b08:	2290      	movs	r2, #144	; 0x90
    9b0a:	00d2      	lsls	r2, r2, #3
    9b0c:	4213      	tst	r3, r2
    9b0e:	d14c      	bne.n	9baa <__sfvwrite_r+0x222>
    9b10:	6820      	ldr	r0, [r4, #0]
    9b12:	46c1      	mov	r9, r8
    9b14:	9901      	ldr	r1, [sp, #4]
    9b16:	464a      	mov	r2, r9
    9b18:	f000 f95a 	bl	9dd0 <memmove>
    9b1c:	68a0      	ldr	r0, [r4, #8]
    9b1e:	6822      	ldr	r2, [r4, #0]
    9b20:	4641      	mov	r1, r8
    9b22:	1a43      	subs	r3, r0, r1
    9b24:	60a3      	str	r3, [r4, #8]
    9b26:	1c13      	adds	r3, r2, #0
    9b28:	444b      	add	r3, r9
    9b2a:	6023      	str	r3, [r4, #0]
    9b2c:	1c2a      	adds	r2, r5, #0
    9b2e:	4650      	mov	r0, sl
    9b30:	9e01      	ldr	r6, [sp, #4]
    9b32:	6880      	ldr	r0, [r0, #8]
    9b34:	18b6      	adds	r6, r6, r2
    9b36:	1aad      	subs	r5, r5, r2
    9b38:	4651      	mov	r1, sl
    9b3a:	1a82      	subs	r2, r0, r2
    9b3c:	9601      	str	r6, [sp, #4]
    9b3e:	608a      	str	r2, [r1, #8]
    9b40:	d100      	bne.n	9b44 <__sfvwrite_r+0x1bc>
    9b42:	e753      	b.n	99ec <__sfvwrite_r+0x64>
    9b44:	89a3      	ldrh	r3, [r4, #12]
    9b46:	2d00      	cmp	r5, #0
    9b48:	d1d6      	bne.n	9af8 <__sfvwrite_r+0x170>
    9b4a:	683e      	ldr	r6, [r7, #0]
    9b4c:	687d      	ldr	r5, [r7, #4]
    9b4e:	9601      	str	r6, [sp, #4]
    9b50:	3708      	adds	r7, #8
    9b52:	e7cf      	b.n	9af4 <__sfvwrite_r+0x16c>
    9b54:	464a      	mov	r2, r9
    9b56:	e7ea      	b.n	9b2e <__sfvwrite_r+0x1a6>
    9b58:	4649      	mov	r1, r9
    9b5a:	4642      	mov	r2, r8
    9b5c:	f000 f938 	bl	9dd0 <memmove>
    9b60:	68a0      	ldr	r0, [r4, #8]
    9b62:	6822      	ldr	r2, [r4, #0]
    9b64:	4641      	mov	r1, r8
    9b66:	1a43      	subs	r3, r0, r1
    9b68:	60a3      	str	r3, [r4, #8]
    9b6a:	1c13      	adds	r3, r2, #0
    9b6c:	4443      	add	r3, r8
    9b6e:	6023      	str	r3, [r4, #0]
    9b70:	1bbf      	subs	r7, r7, r6
    9b72:	d000      	beq.n	9b76 <__sfvwrite_r+0x1ee>
    9b74:	e779      	b.n	9a6a <__sfvwrite_r+0xe2>
    9b76:	9803      	ldr	r0, [sp, #12]
    9b78:	1c21      	adds	r1, r4, #0
    9b7a:	f7ff fdc3 	bl	9704 <_fflush_r>
    9b7e:	2800      	cmp	r0, #0
    9b80:	d1ad      	bne.n	9ade <__sfvwrite_r+0x156>
    9b82:	2300      	movs	r3, #0
    9b84:	9301      	str	r3, [sp, #4]
    9b86:	e770      	b.n	9a6a <__sfvwrite_r+0xe2>
    9b88:	46a8      	mov	r8, r5
    9b8a:	6820      	ldr	r0, [r4, #0]
    9b8c:	46a9      	mov	r9, r5
    9b8e:	e7c1      	b.n	9b14 <__sfvwrite_r+0x18c>
    9b90:	4648      	mov	r0, r9
    9b92:	210a      	movs	r1, #10
    9b94:	1c2a      	adds	r2, r5, #0
    9b96:	f000 f897 	bl	9cc8 <memchr>
    9b9a:	2800      	cmp	r0, #0
    9b9c:	d06d      	beq.n	9c7a <__sfvwrite_r+0x2f2>
    9b9e:	1c47      	adds	r7, r0, #1
    9ba0:	2601      	movs	r6, #1
    9ba2:	4648      	mov	r0, r9
    9ba4:	1a3f      	subs	r7, r7, r0
    9ba6:	9601      	str	r6, [sp, #4]
    9ba8:	e742      	b.n	9a30 <__sfvwrite_r+0xa8>
    9baa:	6962      	ldr	r2, [r4, #20]
    9bac:	6921      	ldr	r1, [r4, #16]
    9bae:	0050      	lsls	r0, r2, #1
    9bb0:	1882      	adds	r2, r0, r2
    9bb2:	6826      	ldr	r6, [r4, #0]
    9bb4:	0fd0      	lsrs	r0, r2, #31
    9bb6:	1882      	adds	r2, r0, r2
    9bb8:	1a76      	subs	r6, r6, r1
    9bba:	1052      	asrs	r2, r2, #1
    9bbc:	4691      	mov	r9, r2
    9bbe:	1c32      	adds	r2, r6, #0
    9bc0:	3201      	adds	r2, #1
    9bc2:	1952      	adds	r2, r2, r5
    9bc4:	46b3      	mov	fp, r6
    9bc6:	4591      	cmp	r9, r2
    9bc8:	d243      	bcs.n	9c52 <__sfvwrite_r+0x2ca>
    9bca:	4691      	mov	r9, r2
    9bcc:	0558      	lsls	r0, r3, #21
    9bce:	d543      	bpl.n	9c58 <__sfvwrite_r+0x2d0>
    9bd0:	9803      	ldr	r0, [sp, #12]
    9bd2:	1c11      	adds	r1, r2, #0
    9bd4:	f7ff f94c 	bl	8e70 <_malloc_r>
    9bd8:	4680      	mov	r8, r0
    9bda:	2800      	cmp	r0, #0
    9bdc:	d054      	beq.n	9c88 <__sfvwrite_r+0x300>
    9bde:	465a      	mov	r2, fp
    9be0:	6921      	ldr	r1, [r4, #16]
    9be2:	f000 f8b3 	bl	9d4c <memcpy>
    9be6:	89a2      	ldrh	r2, [r4, #12]
    9be8:	4b2b      	ldr	r3, [pc, #172]	; (9c98 <__sfvwrite_r+0x310>)
    9bea:	4013      	ands	r3, r2
    9bec:	2280      	movs	r2, #128	; 0x80
    9bee:	4313      	orrs	r3, r2
    9bf0:	81a3      	strh	r3, [r4, #12]
    9bf2:	4640      	mov	r0, r8
    9bf4:	464a      	mov	r2, r9
    9bf6:	465e      	mov	r6, fp
    9bf8:	6120      	str	r0, [r4, #16]
    9bfa:	1b93      	subs	r3, r2, r6
    9bfc:	4458      	add	r0, fp
    9bfe:	6020      	str	r0, [r4, #0]
    9c00:	6162      	str	r2, [r4, #20]
    9c02:	46a8      	mov	r8, r5
    9c04:	60a3      	str	r3, [r4, #8]
    9c06:	46a9      	mov	r9, r5
    9c08:	e784      	b.n	9b14 <__sfvwrite_r+0x18c>
    9c0a:	4924      	ldr	r1, [pc, #144]	; (9c9c <__sfvwrite_r+0x314>)
    9c0c:	1e28      	subs	r0, r5, #0
    9c0e:	4288      	cmp	r0, r1
    9c10:	d900      	bls.n	9c14 <__sfvwrite_r+0x28c>
    9c12:	1c08      	adds	r0, r1, #0
    9c14:	4649      	mov	r1, r9
    9c16:	f000 fc4d 	bl	a4b4 <__aeabi_idiv>
    9c1a:	464b      	mov	r3, r9
    9c1c:	4343      	muls	r3, r0
    9c1e:	69e1      	ldr	r1, [r4, #28]
    9c20:	9803      	ldr	r0, [sp, #12]
    9c22:	9a01      	ldr	r2, [sp, #4]
    9c24:	6a66      	ldr	r6, [r4, #36]	; 0x24
    9c26:	47b0      	blx	r6
    9c28:	2800      	cmp	r0, #0
    9c2a:	dc00      	bgt.n	9c2e <__sfvwrite_r+0x2a6>
    9c2c:	e757      	b.n	9ade <__sfvwrite_r+0x156>
    9c2e:	1c02      	adds	r2, r0, #0
    9c30:	e77d      	b.n	9b2e <__sfvwrite_r+0x1a6>
    9c32:	4649      	mov	r1, r9
    9c34:	f000 f8cc 	bl	9dd0 <memmove>
    9c38:	6822      	ldr	r2, [r4, #0]
    9c3a:	9e02      	ldr	r6, [sp, #8]
    9c3c:	9803      	ldr	r0, [sp, #12]
    9c3e:	1993      	adds	r3, r2, r6
    9c40:	6023      	str	r3, [r4, #0]
    9c42:	1c21      	adds	r1, r4, #0
    9c44:	f7ff fd5e 	bl	9704 <_fflush_r>
    9c48:	2800      	cmp	r0, #0
    9c4a:	d000      	beq.n	9c4e <__sfvwrite_r+0x2c6>
    9c4c:	e747      	b.n	9ade <__sfvwrite_r+0x156>
    9c4e:	9e02      	ldr	r6, [sp, #8]
    9c50:	e708      	b.n	9a64 <__sfvwrite_r+0xdc>
    9c52:	464a      	mov	r2, r9
    9c54:	0558      	lsls	r0, r3, #21
    9c56:	d4bb      	bmi.n	9bd0 <__sfvwrite_r+0x248>
    9c58:	9803      	ldr	r0, [sp, #12]
    9c5a:	f000 f91f 	bl	9e9c <_realloc_r>
    9c5e:	4680      	mov	r8, r0
    9c60:	2800      	cmp	r0, #0
    9c62:	d1c6      	bne.n	9bf2 <__sfvwrite_r+0x26a>
    9c64:	9803      	ldr	r0, [sp, #12]
    9c66:	6921      	ldr	r1, [r4, #16]
    9c68:	f7ff fdc6 	bl	97f8 <_free_r>
    9c6c:	89a2      	ldrh	r2, [r4, #12]
    9c6e:	2380      	movs	r3, #128	; 0x80
    9c70:	9f03      	ldr	r7, [sp, #12]
    9c72:	439a      	bics	r2, r3
    9c74:	230c      	movs	r3, #12
    9c76:	603b      	str	r3, [r7, #0]
    9c78:	e732      	b.n	9ae0 <__sfvwrite_r+0x158>
    9c7a:	2601      	movs	r6, #1
    9c7c:	1c6f      	adds	r7, r5, #1
    9c7e:	9601      	str	r6, [sp, #4]
    9c80:	e6d6      	b.n	9a30 <__sfvwrite_r+0xa8>
    9c82:	2001      	movs	r0, #1
    9c84:	4240      	negs	r0, r0
    9c86:	e6b2      	b.n	99ee <__sfvwrite_r+0x66>
    9c88:	9e03      	ldr	r6, [sp, #12]
    9c8a:	230c      	movs	r3, #12
    9c8c:	6033      	str	r3, [r6, #0]
    9c8e:	89a2      	ldrh	r2, [r4, #12]
    9c90:	e726      	b.n	9ae0 <__sfvwrite_r+0x158>
    9c92:	46c0      	nop			; (mov r8, r8)
    9c94:	7ffffc00 	.word	0x7ffffc00
    9c98:	fffffb7f 	.word	0xfffffb7f
    9c9c:	7fffffff 	.word	0x7fffffff

00009ca0 <_lseek_r>:
    9ca0:	b570      	push	{r4, r5, r6, lr}
    9ca2:	4c08      	ldr	r4, [pc, #32]	; (9cc4 <_lseek_r+0x24>)
    9ca4:	1c06      	adds	r6, r0, #0
    9ca6:	2500      	movs	r5, #0
    9ca8:	1c08      	adds	r0, r1, #0
    9caa:	1c11      	adds	r1, r2, #0
    9cac:	1c1a      	adds	r2, r3, #0
    9cae:	6025      	str	r5, [r4, #0]
    9cb0:	f7fe fce2 	bl	8678 <_lseek>
    9cb4:	1c43      	adds	r3, r0, #1
    9cb6:	d000      	beq.n	9cba <_lseek_r+0x1a>
    9cb8:	bd70      	pop	{r4, r5, r6, pc}
    9cba:	6823      	ldr	r3, [r4, #0]
    9cbc:	2b00      	cmp	r3, #0
    9cbe:	d0fb      	beq.n	9cb8 <_lseek_r+0x18>
    9cc0:	6033      	str	r3, [r6, #0]
    9cc2:	e7f9      	b.n	9cb8 <_lseek_r+0x18>
    9cc4:	00013024 	.word	0x00013024

00009cc8 <memchr>:
    9cc8:	b5f0      	push	{r4, r5, r6, r7, lr}
    9cca:	b2cc      	uxtb	r4, r1
    9ccc:	0783      	lsls	r3, r0, #30
    9cce:	d037      	beq.n	9d40 <memchr+0x78>
    9cd0:	1e53      	subs	r3, r2, #1
    9cd2:	2a00      	cmp	r2, #0
    9cd4:	d01f      	beq.n	9d16 <memchr+0x4e>
    9cd6:	7802      	ldrb	r2, [r0, #0]
    9cd8:	42a2      	cmp	r2, r4
    9cda:	d01d      	beq.n	9d18 <memchr+0x50>
    9cdc:	2503      	movs	r5, #3
    9cde:	e005      	b.n	9cec <memchr+0x24>
    9ce0:	2b00      	cmp	r3, #0
    9ce2:	d018      	beq.n	9d16 <memchr+0x4e>
    9ce4:	7802      	ldrb	r2, [r0, #0]
    9ce6:	3b01      	subs	r3, #1
    9ce8:	42a2      	cmp	r2, r4
    9cea:	d015      	beq.n	9d18 <memchr+0x50>
    9cec:	3001      	adds	r0, #1
    9cee:	4228      	tst	r0, r5
    9cf0:	d1f6      	bne.n	9ce0 <memchr+0x18>
    9cf2:	2b03      	cmp	r3, #3
    9cf4:	d811      	bhi.n	9d1a <memchr+0x52>
    9cf6:	2b00      	cmp	r3, #0
    9cf8:	d00d      	beq.n	9d16 <memchr+0x4e>
    9cfa:	7802      	ldrb	r2, [r0, #0]
    9cfc:	42a2      	cmp	r2, r4
    9cfe:	d00b      	beq.n	9d18 <memchr+0x50>
    9d00:	1c42      	adds	r2, r0, #1
    9d02:	18c3      	adds	r3, r0, r3
    9d04:	e004      	b.n	9d10 <memchr+0x48>
    9d06:	3201      	adds	r2, #1
    9d08:	1e51      	subs	r1, r2, #1
    9d0a:	7809      	ldrb	r1, [r1, #0]
    9d0c:	42a1      	cmp	r1, r4
    9d0e:	d003      	beq.n	9d18 <memchr+0x50>
    9d10:	1e10      	subs	r0, r2, #0
    9d12:	4298      	cmp	r0, r3
    9d14:	d1f7      	bne.n	9d06 <memchr+0x3e>
    9d16:	2000      	movs	r0, #0
    9d18:	bdf0      	pop	{r4, r5, r6, r7, pc}
    9d1a:	26ff      	movs	r6, #255	; 0xff
    9d1c:	4031      	ands	r1, r6
    9d1e:	020e      	lsls	r6, r1, #8
    9d20:	4331      	orrs	r1, r6
    9d22:	040e      	lsls	r6, r1, #16
    9d24:	4d07      	ldr	r5, [pc, #28]	; (9d44 <memchr+0x7c>)
    9d26:	430e      	orrs	r6, r1
    9d28:	6802      	ldr	r2, [r0, #0]
    9d2a:	4f07      	ldr	r7, [pc, #28]	; (9d48 <memchr+0x80>)
    9d2c:	4072      	eors	r2, r6
    9d2e:	19d1      	adds	r1, r2, r7
    9d30:	4391      	bics	r1, r2
    9d32:	4229      	tst	r1, r5
    9d34:	d1df      	bne.n	9cf6 <memchr+0x2e>
    9d36:	3b04      	subs	r3, #4
    9d38:	3004      	adds	r0, #4
    9d3a:	2b03      	cmp	r3, #3
    9d3c:	d8f4      	bhi.n	9d28 <memchr+0x60>
    9d3e:	e7da      	b.n	9cf6 <memchr+0x2e>
    9d40:	1c13      	adds	r3, r2, #0
    9d42:	e7d6      	b.n	9cf2 <memchr+0x2a>
    9d44:	80808080 	.word	0x80808080
    9d48:	fefefeff 	.word	0xfefefeff

00009d4c <memcpy>:
    9d4c:	b5f0      	push	{r4, r5, r6, r7, lr}
    9d4e:	2a0f      	cmp	r2, #15
    9d50:	d935      	bls.n	9dbe <memcpy+0x72>
    9d52:	1c03      	adds	r3, r0, #0
    9d54:	430b      	orrs	r3, r1
    9d56:	079c      	lsls	r4, r3, #30
    9d58:	d135      	bne.n	9dc6 <memcpy+0x7a>
    9d5a:	1c16      	adds	r6, r2, #0
    9d5c:	3e10      	subs	r6, #16
    9d5e:	0936      	lsrs	r6, r6, #4
    9d60:	0135      	lsls	r5, r6, #4
    9d62:	1945      	adds	r5, r0, r5
    9d64:	3510      	adds	r5, #16
    9d66:	1c0c      	adds	r4, r1, #0
    9d68:	1c03      	adds	r3, r0, #0
    9d6a:	6827      	ldr	r7, [r4, #0]
    9d6c:	601f      	str	r7, [r3, #0]
    9d6e:	6867      	ldr	r7, [r4, #4]
    9d70:	605f      	str	r7, [r3, #4]
    9d72:	68a7      	ldr	r7, [r4, #8]
    9d74:	609f      	str	r7, [r3, #8]
    9d76:	68e7      	ldr	r7, [r4, #12]
    9d78:	3410      	adds	r4, #16
    9d7a:	60df      	str	r7, [r3, #12]
    9d7c:	3310      	adds	r3, #16
    9d7e:	42ab      	cmp	r3, r5
    9d80:	d1f3      	bne.n	9d6a <memcpy+0x1e>
    9d82:	1c73      	adds	r3, r6, #1
    9d84:	011b      	lsls	r3, r3, #4
    9d86:	18c5      	adds	r5, r0, r3
    9d88:	18c9      	adds	r1, r1, r3
    9d8a:	230f      	movs	r3, #15
    9d8c:	4013      	ands	r3, r2
    9d8e:	2b03      	cmp	r3, #3
    9d90:	d91b      	bls.n	9dca <memcpy+0x7e>
    9d92:	1f1c      	subs	r4, r3, #4
    9d94:	08a4      	lsrs	r4, r4, #2
    9d96:	3401      	adds	r4, #1
    9d98:	00a4      	lsls	r4, r4, #2
    9d9a:	2300      	movs	r3, #0
    9d9c:	58ce      	ldr	r6, [r1, r3]
    9d9e:	50ee      	str	r6, [r5, r3]
    9da0:	3304      	adds	r3, #4
    9da2:	42a3      	cmp	r3, r4
    9da4:	d1fa      	bne.n	9d9c <memcpy+0x50>
    9da6:	18ed      	adds	r5, r5, r3
    9da8:	18c9      	adds	r1, r1, r3
    9daa:	2303      	movs	r3, #3
    9dac:	401a      	ands	r2, r3
    9dae:	d005      	beq.n	9dbc <memcpy+0x70>
    9db0:	2300      	movs	r3, #0
    9db2:	5ccc      	ldrb	r4, [r1, r3]
    9db4:	54ec      	strb	r4, [r5, r3]
    9db6:	3301      	adds	r3, #1
    9db8:	4293      	cmp	r3, r2
    9dba:	d1fa      	bne.n	9db2 <memcpy+0x66>
    9dbc:	bdf0      	pop	{r4, r5, r6, r7, pc}
    9dbe:	1c05      	adds	r5, r0, #0
    9dc0:	2a00      	cmp	r2, #0
    9dc2:	d1f5      	bne.n	9db0 <memcpy+0x64>
    9dc4:	e7fa      	b.n	9dbc <memcpy+0x70>
    9dc6:	1c05      	adds	r5, r0, #0
    9dc8:	e7f2      	b.n	9db0 <memcpy+0x64>
    9dca:	1c1a      	adds	r2, r3, #0
    9dcc:	e7f8      	b.n	9dc0 <memcpy+0x74>
    9dce:	46c0      	nop			; (mov r8, r8)

00009dd0 <memmove>:
    9dd0:	b5f0      	push	{r4, r5, r6, r7, lr}
    9dd2:	4288      	cmp	r0, r1
    9dd4:	d90e      	bls.n	9df4 <memmove+0x24>
    9dd6:	188d      	adds	r5, r1, r2
    9dd8:	42a8      	cmp	r0, r5
    9dda:	d20b      	bcs.n	9df4 <memmove+0x24>
    9ddc:	1886      	adds	r6, r0, r2
    9dde:	1e53      	subs	r3, r2, #1
    9de0:	4251      	negs	r1, r2
    9de2:	2a00      	cmp	r2, #0
    9de4:	d005      	beq.n	9df2 <memmove+0x22>
    9de6:	186a      	adds	r2, r5, r1
    9de8:	5cd4      	ldrb	r4, [r2, r3]
    9dea:	1872      	adds	r2, r6, r1
    9dec:	54d4      	strb	r4, [r2, r3]
    9dee:	3b01      	subs	r3, #1
    9df0:	d2f9      	bcs.n	9de6 <memmove+0x16>
    9df2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    9df4:	2a0f      	cmp	r2, #15
    9df6:	d809      	bhi.n	9e0c <memmove+0x3c>
    9df8:	1c05      	adds	r5, r0, #0
    9dfa:	2a00      	cmp	r2, #0
    9dfc:	d0f9      	beq.n	9df2 <memmove+0x22>
    9dfe:	2300      	movs	r3, #0
    9e00:	5ccc      	ldrb	r4, [r1, r3]
    9e02:	54ec      	strb	r4, [r5, r3]
    9e04:	3301      	adds	r3, #1
    9e06:	4293      	cmp	r3, r2
    9e08:	d1fa      	bne.n	9e00 <memmove+0x30>
    9e0a:	e7f2      	b.n	9df2 <memmove+0x22>
    9e0c:	1c03      	adds	r3, r0, #0
    9e0e:	430b      	orrs	r3, r1
    9e10:	079c      	lsls	r4, r3, #30
    9e12:	d12a      	bne.n	9e6a <memmove+0x9a>
    9e14:	1c17      	adds	r7, r2, #0
    9e16:	3f10      	subs	r7, #16
    9e18:	093f      	lsrs	r7, r7, #4
    9e1a:	013e      	lsls	r6, r7, #4
    9e1c:	1986      	adds	r6, r0, r6
    9e1e:	3610      	adds	r6, #16
    9e20:	1c0c      	adds	r4, r1, #0
    9e22:	1c03      	adds	r3, r0, #0
    9e24:	6825      	ldr	r5, [r4, #0]
    9e26:	601d      	str	r5, [r3, #0]
    9e28:	6865      	ldr	r5, [r4, #4]
    9e2a:	605d      	str	r5, [r3, #4]
    9e2c:	68a5      	ldr	r5, [r4, #8]
    9e2e:	609d      	str	r5, [r3, #8]
    9e30:	68e5      	ldr	r5, [r4, #12]
    9e32:	3410      	adds	r4, #16
    9e34:	60dd      	str	r5, [r3, #12]
    9e36:	3310      	adds	r3, #16
    9e38:	42b3      	cmp	r3, r6
    9e3a:	d1f3      	bne.n	9e24 <memmove+0x54>
    9e3c:	1c7d      	adds	r5, r7, #1
    9e3e:	012d      	lsls	r5, r5, #4
    9e40:	230f      	movs	r3, #15
    9e42:	1949      	adds	r1, r1, r5
    9e44:	4013      	ands	r3, r2
    9e46:	1945      	adds	r5, r0, r5
    9e48:	2b03      	cmp	r3, #3
    9e4a:	d910      	bls.n	9e6e <memmove+0x9e>
    9e4c:	1f1e      	subs	r6, r3, #4
    9e4e:	08b6      	lsrs	r6, r6, #2
    9e50:	3601      	adds	r6, #1
    9e52:	00b6      	lsls	r6, r6, #2
    9e54:	2300      	movs	r3, #0
    9e56:	58cc      	ldr	r4, [r1, r3]
    9e58:	50ec      	str	r4, [r5, r3]
    9e5a:	3304      	adds	r3, #4
    9e5c:	42b3      	cmp	r3, r6
    9e5e:	d1fa      	bne.n	9e56 <memmove+0x86>
    9e60:	2403      	movs	r4, #3
    9e62:	18ed      	adds	r5, r5, r3
    9e64:	18c9      	adds	r1, r1, r3
    9e66:	4022      	ands	r2, r4
    9e68:	e7c7      	b.n	9dfa <memmove+0x2a>
    9e6a:	1c05      	adds	r5, r0, #0
    9e6c:	e7c7      	b.n	9dfe <memmove+0x2e>
    9e6e:	1c1a      	adds	r2, r3, #0
    9e70:	e7c3      	b.n	9dfa <memmove+0x2a>
    9e72:	46c0      	nop			; (mov r8, r8)

00009e74 <_read_r>:
    9e74:	b570      	push	{r4, r5, r6, lr}
    9e76:	4c08      	ldr	r4, [pc, #32]	; (9e98 <_read_r+0x24>)
    9e78:	1c06      	adds	r6, r0, #0
    9e7a:	2500      	movs	r5, #0
    9e7c:	1c08      	adds	r0, r1, #0
    9e7e:	1c11      	adds	r1, r2, #0
    9e80:	1c1a      	adds	r2, r3, #0
    9e82:	6025      	str	r5, [r4, #0]
    9e84:	f7fe fb94 	bl	85b0 <_read>
    9e88:	1c43      	adds	r3, r0, #1
    9e8a:	d000      	beq.n	9e8e <_read_r+0x1a>
    9e8c:	bd70      	pop	{r4, r5, r6, pc}
    9e8e:	6823      	ldr	r3, [r4, #0]
    9e90:	2b00      	cmp	r3, #0
    9e92:	d0fb      	beq.n	9e8c <_read_r+0x18>
    9e94:	6033      	str	r3, [r6, #0]
    9e96:	e7f9      	b.n	9e8c <_read_r+0x18>
    9e98:	00013024 	.word	0x00013024

00009e9c <_realloc_r>:
    9e9c:	b5f0      	push	{r4, r5, r6, r7, lr}
    9e9e:	464d      	mov	r5, r9
    9ea0:	4644      	mov	r4, r8
    9ea2:	465f      	mov	r7, fp
    9ea4:	4656      	mov	r6, sl
    9ea6:	b4f0      	push	{r4, r5, r6, r7}
    9ea8:	4680      	mov	r8, r0
    9eaa:	b085      	sub	sp, #20
    9eac:	1c0d      	adds	r5, r1, #0
    9eae:	4691      	mov	r9, r2
    9eb0:	d100      	bne.n	9eb4 <_realloc_r+0x18>
    9eb2:	e0dd      	b.n	a070 <_realloc_r+0x1d4>
    9eb4:	1c2e      	adds	r6, r5, #0
    9eb6:	3e08      	subs	r6, #8
    9eb8:	f7ff fa60 	bl	937c <__malloc_lock>
    9ebc:	6873      	ldr	r3, [r6, #4]
    9ebe:	464f      	mov	r7, r9
    9ec0:	2203      	movs	r2, #3
    9ec2:	1c1c      	adds	r4, r3, #0
    9ec4:	370b      	adds	r7, #11
    9ec6:	46b3      	mov	fp, r6
    9ec8:	4394      	bics	r4, r2
    9eca:	2f16      	cmp	r7, #22
    9ecc:	d900      	bls.n	9ed0 <_realloc_r+0x34>
    9ece:	e076      	b.n	9fbe <_realloc_r+0x122>
    9ed0:	2010      	movs	r0, #16
    9ed2:	9001      	str	r0, [sp, #4]
    9ed4:	2710      	movs	r7, #16
    9ed6:	45b9      	cmp	r9, r7
    9ed8:	d900      	bls.n	9edc <_realloc_r+0x40>
    9eda:	e075      	b.n	9fc8 <_realloc_r+0x12c>
    9edc:	9a01      	ldr	r2, [sp, #4]
    9ede:	4294      	cmp	r4, r2
    9ee0:	da56      	bge.n	9f90 <_realloc_r+0xf4>
    9ee2:	48c5      	ldr	r0, [pc, #788]	; (a1f8 <_realloc_r+0x35c>)
    9ee4:	1932      	adds	r2, r6, r4
    9ee6:	6880      	ldr	r0, [r0, #8]
    9ee8:	9003      	str	r0, [sp, #12]
    9eea:	4290      	cmp	r0, r2
    9eec:	d100      	bne.n	9ef0 <_realloc_r+0x54>
    9eee:	e0c3      	b.n	a078 <_realloc_r+0x1dc>
    9ef0:	6851      	ldr	r1, [r2, #4]
    9ef2:	1c08      	adds	r0, r1, #0
    9ef4:	468a      	mov	sl, r1
    9ef6:	2101      	movs	r1, #1
    9ef8:	4388      	bics	r0, r1
    9efa:	4684      	mov	ip, r0
    9efc:	4494      	add	ip, r2
    9efe:	4661      	mov	r1, ip
    9f00:	6848      	ldr	r0, [r1, #4]
    9f02:	2101      	movs	r1, #1
    9f04:	4208      	tst	r0, r1
    9f06:	d064      	beq.n	9fd2 <_realloc_r+0x136>
    9f08:	2000      	movs	r0, #0
    9f0a:	2200      	movs	r2, #0
    9f0c:	07d9      	lsls	r1, r3, #31
    9f0e:	d500      	bpl.n	9f12 <_realloc_r+0x76>
    9f10:	e086      	b.n	a020 <_realloc_r+0x184>
    9f12:	6833      	ldr	r3, [r6, #0]
    9f14:	2103      	movs	r1, #3
    9f16:	1af3      	subs	r3, r6, r3
    9f18:	468c      	mov	ip, r1
    9f1a:	6859      	ldr	r1, [r3, #4]
    9f1c:	469a      	mov	sl, r3
    9f1e:	4663      	mov	r3, ip
    9f20:	4399      	bics	r1, r3
    9f22:	468c      	mov	ip, r1
    9f24:	2a00      	cmp	r2, #0
    9f26:	d100      	bne.n	9f2a <_realloc_r+0x8e>
    9f28:	e0df      	b.n	a0ea <_realloc_r+0x24e>
    9f2a:	9903      	ldr	r1, [sp, #12]
    9f2c:	428a      	cmp	r2, r1
    9f2e:	d100      	bne.n	9f32 <_realloc_r+0x96>
    9f30:	e0de      	b.n	a0f0 <_realloc_r+0x254>
    9f32:	4661      	mov	r1, ip
    9f34:	190b      	adds	r3, r1, r4
    9f36:	9901      	ldr	r1, [sp, #4]
    9f38:	18c0      	adds	r0, r0, r3
    9f3a:	9003      	str	r0, [sp, #12]
    9f3c:	4288      	cmp	r0, r1
    9f3e:	db6a      	blt.n	a016 <_realloc_r+0x17a>
    9f40:	68d3      	ldr	r3, [r2, #12]
    9f42:	6892      	ldr	r2, [r2, #8]
    9f44:	60d3      	str	r3, [r2, #12]
    9f46:	609a      	str	r2, [r3, #8]
    9f48:	4652      	mov	r2, sl
    9f4a:	68d3      	ldr	r3, [r2, #12]
    9f4c:	6892      	ldr	r2, [r2, #8]
    9f4e:	4656      	mov	r6, sl
    9f50:	60d3      	str	r3, [r2, #12]
    9f52:	609a      	str	r2, [r3, #8]
    9f54:	1f22      	subs	r2, r4, #4
    9f56:	3608      	adds	r6, #8
    9f58:	2a24      	cmp	r2, #36	; 0x24
    9f5a:	d900      	bls.n	9f5e <_realloc_r+0xc2>
    9f5c:	e0bb      	b.n	a0d6 <_realloc_r+0x23a>
    9f5e:	1c33      	adds	r3, r6, #0
    9f60:	2a13      	cmp	r2, #19
    9f62:	d90a      	bls.n	9f7a <_realloc_r+0xde>
    9f64:	682b      	ldr	r3, [r5, #0]
    9f66:	4650      	mov	r0, sl
    9f68:	6083      	str	r3, [r0, #8]
    9f6a:	6869      	ldr	r1, [r5, #4]
    9f6c:	60c1      	str	r1, [r0, #12]
    9f6e:	2a1b      	cmp	r2, #27
    9f70:	d900      	bls.n	9f74 <_realloc_r+0xd8>
    9f72:	e105      	b.n	a180 <_realloc_r+0x2e4>
    9f74:	4653      	mov	r3, sl
    9f76:	3310      	adds	r3, #16
    9f78:	3508      	adds	r5, #8
    9f7a:	682a      	ldr	r2, [r5, #0]
    9f7c:	4651      	mov	r1, sl
    9f7e:	601a      	str	r2, [r3, #0]
    9f80:	6868      	ldr	r0, [r5, #4]
    9f82:	9c03      	ldr	r4, [sp, #12]
    9f84:	6058      	str	r0, [r3, #4]
    9f86:	68ad      	ldr	r5, [r5, #8]
    9f88:	46d3      	mov	fp, sl
    9f8a:	609d      	str	r5, [r3, #8]
    9f8c:	684b      	ldr	r3, [r1, #4]
    9f8e:	1c35      	adds	r5, r6, #0
    9f90:	1be2      	subs	r2, r4, r7
    9f92:	2a0f      	cmp	r2, #15
    9f94:	d82c      	bhi.n	9ff0 <_realloc_r+0x154>
    9f96:	2201      	movs	r2, #1
    9f98:	4013      	ands	r3, r2
    9f9a:	4323      	orrs	r3, r4
    9f9c:	4658      	mov	r0, fp
    9f9e:	6043      	str	r3, [r0, #4]
    9fa0:	445c      	add	r4, fp
    9fa2:	6861      	ldr	r1, [r4, #4]
    9fa4:	430a      	orrs	r2, r1
    9fa6:	6062      	str	r2, [r4, #4]
    9fa8:	4640      	mov	r0, r8
    9faa:	f7ff f9e9 	bl	9380 <__malloc_unlock>
    9fae:	1c28      	adds	r0, r5, #0
    9fb0:	b005      	add	sp, #20
    9fb2:	bc3c      	pop	{r2, r3, r4, r5}
    9fb4:	4690      	mov	r8, r2
    9fb6:	4699      	mov	r9, r3
    9fb8:	46a2      	mov	sl, r4
    9fba:	46ab      	mov	fp, r5
    9fbc:	bdf0      	pop	{r4, r5, r6, r7, pc}
    9fbe:	2207      	movs	r2, #7
    9fc0:	4397      	bics	r7, r2
    9fc2:	9701      	str	r7, [sp, #4]
    9fc4:	d400      	bmi.n	9fc8 <_realloc_r+0x12c>
    9fc6:	e786      	b.n	9ed6 <_realloc_r+0x3a>
    9fc8:	230c      	movs	r3, #12
    9fca:	4641      	mov	r1, r8
    9fcc:	600b      	str	r3, [r1, #0]
    9fce:	2000      	movs	r0, #0
    9fd0:	e7ee      	b.n	9fb0 <_realloc_r+0x114>
    9fd2:	2003      	movs	r0, #3
    9fd4:	4651      	mov	r1, sl
    9fd6:	4381      	bics	r1, r0
    9fd8:	1c08      	adds	r0, r1, #0
    9fda:	1909      	adds	r1, r1, r4
    9fdc:	468c      	mov	ip, r1
    9fde:	9901      	ldr	r1, [sp, #4]
    9fe0:	458c      	cmp	ip, r1
    9fe2:	db93      	blt.n	9f0c <_realloc_r+0x70>
    9fe4:	68d1      	ldr	r1, [r2, #12]
    9fe6:	6892      	ldr	r2, [r2, #8]
    9fe8:	4664      	mov	r4, ip
    9fea:	60d1      	str	r1, [r2, #12]
    9fec:	608a      	str	r2, [r1, #8]
    9fee:	e7cf      	b.n	9f90 <_realloc_r+0xf4>
    9ff0:	4658      	mov	r0, fp
    9ff2:	19c1      	adds	r1, r0, r7
    9ff4:	2001      	movs	r0, #1
    9ff6:	4003      	ands	r3, r0
    9ff8:	431f      	orrs	r7, r3
    9ffa:	465b      	mov	r3, fp
    9ffc:	605f      	str	r7, [r3, #4]
    9ffe:	1c13      	adds	r3, r2, #0
    a000:	4303      	orrs	r3, r0
    a002:	188a      	adds	r2, r1, r2
    a004:	604b      	str	r3, [r1, #4]
    a006:	6853      	ldr	r3, [r2, #4]
    a008:	3108      	adds	r1, #8
    a00a:	4318      	orrs	r0, r3
    a00c:	6050      	str	r0, [r2, #4]
    a00e:	4640      	mov	r0, r8
    a010:	f7ff fbf2 	bl	97f8 <_free_r>
    a014:	e7c8      	b.n	9fa8 <_realloc_r+0x10c>
    a016:	9303      	str	r3, [sp, #12]
    a018:	9803      	ldr	r0, [sp, #12]
    a01a:	9901      	ldr	r1, [sp, #4]
    a01c:	4288      	cmp	r0, r1
    a01e:	da93      	bge.n	9f48 <_realloc_r+0xac>
    a020:	4649      	mov	r1, r9
    a022:	4640      	mov	r0, r8
    a024:	f7fe ff24 	bl	8e70 <_malloc_r>
    a028:	4681      	mov	r9, r0
    a02a:	2800      	cmp	r0, #0
    a02c:	d100      	bne.n	a030 <_realloc_r+0x194>
    a02e:	e0d5      	b.n	a1dc <_realloc_r+0x340>
    a030:	6873      	ldr	r3, [r6, #4]
    a032:	1c02      	adds	r2, r0, #0
    a034:	2101      	movs	r1, #1
    a036:	1c18      	adds	r0, r3, #0
    a038:	4388      	bics	r0, r1
    a03a:	3a08      	subs	r2, #8
    a03c:	1836      	adds	r6, r6, r0
    a03e:	42b2      	cmp	r2, r6
    a040:	d100      	bne.n	a044 <_realloc_r+0x1a8>
    a042:	e098      	b.n	a176 <_realloc_r+0x2da>
    a044:	1f22      	subs	r2, r4, #4
    a046:	2a24      	cmp	r2, #36	; 0x24
    a048:	d840      	bhi.n	a0cc <_realloc_r+0x230>
    a04a:	2a13      	cmp	r2, #19
    a04c:	d822      	bhi.n	a094 <_realloc_r+0x1f8>
    a04e:	464b      	mov	r3, r9
    a050:	1c2a      	adds	r2, r5, #0
    a052:	6810      	ldr	r0, [r2, #0]
    a054:	6018      	str	r0, [r3, #0]
    a056:	6851      	ldr	r1, [r2, #4]
    a058:	6059      	str	r1, [r3, #4]
    a05a:	6892      	ldr	r2, [r2, #8]
    a05c:	609a      	str	r2, [r3, #8]
    a05e:	4640      	mov	r0, r8
    a060:	1c29      	adds	r1, r5, #0
    a062:	f7ff fbc9 	bl	97f8 <_free_r>
    a066:	4640      	mov	r0, r8
    a068:	f7ff f98a 	bl	9380 <__malloc_unlock>
    a06c:	4648      	mov	r0, r9
    a06e:	e79f      	b.n	9fb0 <_realloc_r+0x114>
    a070:	1c11      	adds	r1, r2, #0
    a072:	f7fe fefd 	bl	8e70 <_malloc_r>
    a076:	e79b      	b.n	9fb0 <_realloc_r+0x114>
    a078:	9a03      	ldr	r2, [sp, #12]
    a07a:	6852      	ldr	r2, [r2, #4]
    a07c:	9202      	str	r2, [sp, #8]
    a07e:	9802      	ldr	r0, [sp, #8]
    a080:	2203      	movs	r2, #3
    a082:	4390      	bics	r0, r2
    a084:	1c3a      	adds	r2, r7, #0
    a086:	1901      	adds	r1, r0, r4
    a088:	3210      	adds	r2, #16
    a08a:	468c      	mov	ip, r1
    a08c:	4291      	cmp	r1, r2
    a08e:	da0c      	bge.n	a0aa <_realloc_r+0x20e>
    a090:	9a03      	ldr	r2, [sp, #12]
    a092:	e73b      	b.n	9f0c <_realloc_r+0x70>
    a094:	6829      	ldr	r1, [r5, #0]
    a096:	464b      	mov	r3, r9
    a098:	6019      	str	r1, [r3, #0]
    a09a:	6868      	ldr	r0, [r5, #4]
    a09c:	6058      	str	r0, [r3, #4]
    a09e:	2a1b      	cmp	r2, #27
    a0a0:	d85e      	bhi.n	a160 <_realloc_r+0x2c4>
    a0a2:	1c2a      	adds	r2, r5, #0
    a0a4:	3308      	adds	r3, #8
    a0a6:	3208      	adds	r2, #8
    a0a8:	e7d3      	b.n	a052 <_realloc_r+0x1b6>
    a0aa:	4b53      	ldr	r3, [pc, #332]	; (a1f8 <_realloc_r+0x35c>)
    a0ac:	19f2      	adds	r2, r6, r7
    a0ae:	4660      	mov	r0, ip
    a0b0:	609a      	str	r2, [r3, #8]
    a0b2:	1bc1      	subs	r1, r0, r7
    a0b4:	2301      	movs	r3, #1
    a0b6:	4319      	orrs	r1, r3
    a0b8:	6051      	str	r1, [r2, #4]
    a0ba:	6871      	ldr	r1, [r6, #4]
    a0bc:	4640      	mov	r0, r8
    a0be:	400b      	ands	r3, r1
    a0c0:	431f      	orrs	r7, r3
    a0c2:	6077      	str	r7, [r6, #4]
    a0c4:	f7ff f95c 	bl	9380 <__malloc_unlock>
    a0c8:	1c28      	adds	r0, r5, #0
    a0ca:	e771      	b.n	9fb0 <_realloc_r+0x114>
    a0cc:	4648      	mov	r0, r9
    a0ce:	1c29      	adds	r1, r5, #0
    a0d0:	f7ff fe7e 	bl	9dd0 <memmove>
    a0d4:	e7c3      	b.n	a05e <_realloc_r+0x1c2>
    a0d6:	1c29      	adds	r1, r5, #0
    a0d8:	1c30      	adds	r0, r6, #0
    a0da:	f7ff fe79 	bl	9dd0 <memmove>
    a0de:	4652      	mov	r2, sl
    a0e0:	6853      	ldr	r3, [r2, #4]
    a0e2:	1c35      	adds	r5, r6, #0
    a0e4:	9c03      	ldr	r4, [sp, #12]
    a0e6:	46d3      	mov	fp, sl
    a0e8:	e752      	b.n	9f90 <_realloc_r+0xf4>
    a0ea:	190b      	adds	r3, r1, r4
    a0ec:	9303      	str	r3, [sp, #12]
    a0ee:	e793      	b.n	a018 <_realloc_r+0x17c>
    a0f0:	4662      	mov	r2, ip
    a0f2:	1913      	adds	r3, r2, r4
    a0f4:	1c3a      	adds	r2, r7, #0
    a0f6:	18c0      	adds	r0, r0, r3
    a0f8:	3210      	adds	r2, #16
    a0fa:	9003      	str	r0, [sp, #12]
    a0fc:	4290      	cmp	r0, r2
    a0fe:	db8a      	blt.n	a016 <_realloc_r+0x17a>
    a100:	4650      	mov	r0, sl
    a102:	6882      	ldr	r2, [r0, #8]
    a104:	68c3      	ldr	r3, [r0, #12]
    a106:	4656      	mov	r6, sl
    a108:	60d3      	str	r3, [r2, #12]
    a10a:	609a      	str	r2, [r3, #8]
    a10c:	1f22      	subs	r2, r4, #4
    a10e:	3608      	adds	r6, #8
    a110:	2a24      	cmp	r2, #36	; 0x24
    a112:	d853      	bhi.n	a1bc <_realloc_r+0x320>
    a114:	1c33      	adds	r3, r6, #0
    a116:	2a13      	cmp	r2, #19
    a118:	d908      	bls.n	a12c <_realloc_r+0x290>
    a11a:	6829      	ldr	r1, [r5, #0]
    a11c:	6081      	str	r1, [r0, #8]
    a11e:	686b      	ldr	r3, [r5, #4]
    a120:	60c3      	str	r3, [r0, #12]
    a122:	2a1b      	cmp	r2, #27
    a124:	d84f      	bhi.n	a1c6 <_realloc_r+0x32a>
    a126:	4653      	mov	r3, sl
    a128:	3310      	adds	r3, #16
    a12a:	3508      	adds	r5, #8
    a12c:	6828      	ldr	r0, [r5, #0]
    a12e:	6018      	str	r0, [r3, #0]
    a130:	6869      	ldr	r1, [r5, #4]
    a132:	6059      	str	r1, [r3, #4]
    a134:	68ad      	ldr	r5, [r5, #8]
    a136:	609d      	str	r5, [r3, #8]
    a138:	4653      	mov	r3, sl
    a13a:	19da      	adds	r2, r3, r7
    a13c:	9b03      	ldr	r3, [sp, #12]
    a13e:	482e      	ldr	r0, [pc, #184]	; (a1f8 <_realloc_r+0x35c>)
    a140:	1bd9      	subs	r1, r3, r7
    a142:	2301      	movs	r3, #1
    a144:	4319      	orrs	r1, r3
    a146:	6082      	str	r2, [r0, #8]
    a148:	6051      	str	r1, [r2, #4]
    a14a:	4650      	mov	r0, sl
    a14c:	6840      	ldr	r0, [r0, #4]
    a14e:	4651      	mov	r1, sl
    a150:	4003      	ands	r3, r0
    a152:	431f      	orrs	r7, r3
    a154:	4640      	mov	r0, r8
    a156:	604f      	str	r7, [r1, #4]
    a158:	f7ff f912 	bl	9380 <__malloc_unlock>
    a15c:	1c30      	adds	r0, r6, #0
    a15e:	e727      	b.n	9fb0 <_realloc_r+0x114>
    a160:	68a9      	ldr	r1, [r5, #8]
    a162:	464b      	mov	r3, r9
    a164:	6099      	str	r1, [r3, #8]
    a166:	68e8      	ldr	r0, [r5, #12]
    a168:	60d8      	str	r0, [r3, #12]
    a16a:	2a24      	cmp	r2, #36	; 0x24
    a16c:	d013      	beq.n	a196 <_realloc_r+0x2fa>
    a16e:	1c2a      	adds	r2, r5, #0
    a170:	3310      	adds	r3, #16
    a172:	3210      	adds	r2, #16
    a174:	e76d      	b.n	a052 <_realloc_r+0x1b6>
    a176:	6852      	ldr	r2, [r2, #4]
    a178:	2103      	movs	r1, #3
    a17a:	438a      	bics	r2, r1
    a17c:	18a4      	adds	r4, r4, r2
    a17e:	e707      	b.n	9f90 <_realloc_r+0xf4>
    a180:	68ab      	ldr	r3, [r5, #8]
    a182:	4650      	mov	r0, sl
    a184:	6103      	str	r3, [r0, #16]
    a186:	68e9      	ldr	r1, [r5, #12]
    a188:	6141      	str	r1, [r0, #20]
    a18a:	2a24      	cmp	r2, #36	; 0x24
    a18c:	d00d      	beq.n	a1aa <_realloc_r+0x30e>
    a18e:	4653      	mov	r3, sl
    a190:	3318      	adds	r3, #24
    a192:	3510      	adds	r5, #16
    a194:	e6f1      	b.n	9f7a <_realloc_r+0xde>
    a196:	6929      	ldr	r1, [r5, #16]
    a198:	1c2a      	adds	r2, r5, #0
    a19a:	6119      	str	r1, [r3, #16]
    a19c:	6968      	ldr	r0, [r5, #20]
    a19e:	464b      	mov	r3, r9
    a1a0:	4649      	mov	r1, r9
    a1a2:	3318      	adds	r3, #24
    a1a4:	3218      	adds	r2, #24
    a1a6:	6148      	str	r0, [r1, #20]
    a1a8:	e753      	b.n	a052 <_realloc_r+0x1b6>
    a1aa:	692a      	ldr	r2, [r5, #16]
    a1ac:	4653      	mov	r3, sl
    a1ae:	6182      	str	r2, [r0, #24]
    a1b0:	6968      	ldr	r0, [r5, #20]
    a1b2:	4651      	mov	r1, sl
    a1b4:	3320      	adds	r3, #32
    a1b6:	61c8      	str	r0, [r1, #28]
    a1b8:	3518      	adds	r5, #24
    a1ba:	e6de      	b.n	9f7a <_realloc_r+0xde>
    a1bc:	1c30      	adds	r0, r6, #0
    a1be:	1c29      	adds	r1, r5, #0
    a1c0:	f7ff fe06 	bl	9dd0 <memmove>
    a1c4:	e7b8      	b.n	a138 <_realloc_r+0x29c>
    a1c6:	68a8      	ldr	r0, [r5, #8]
    a1c8:	4651      	mov	r1, sl
    a1ca:	6108      	str	r0, [r1, #16]
    a1cc:	68eb      	ldr	r3, [r5, #12]
    a1ce:	614b      	str	r3, [r1, #20]
    a1d0:	2a24      	cmp	r2, #36	; 0x24
    a1d2:	d008      	beq.n	a1e6 <_realloc_r+0x34a>
    a1d4:	4653      	mov	r3, sl
    a1d6:	3318      	adds	r3, #24
    a1d8:	3510      	adds	r5, #16
    a1da:	e7a7      	b.n	a12c <_realloc_r+0x290>
    a1dc:	4640      	mov	r0, r8
    a1de:	f7ff f8cf 	bl	9380 <__malloc_unlock>
    a1e2:	2000      	movs	r0, #0
    a1e4:	e6e4      	b.n	9fb0 <_realloc_r+0x114>
    a1e6:	6928      	ldr	r0, [r5, #16]
    a1e8:	4651      	mov	r1, sl
    a1ea:	6188      	str	r0, [r1, #24]
    a1ec:	696a      	ldr	r2, [r5, #20]
    a1ee:	4653      	mov	r3, sl
    a1f0:	3320      	adds	r3, #32
    a1f2:	61ca      	str	r2, [r1, #28]
    a1f4:	3518      	adds	r5, #24
    a1f6:	e799      	b.n	a12c <_realloc_r+0x290>
    a1f8:	00012b0c 	.word	0x00012b0c

0000a1fc <cleanup_glue>:
    a1fc:	b538      	push	{r3, r4, r5, lr}
    a1fe:	1c0c      	adds	r4, r1, #0
    a200:	6809      	ldr	r1, [r1, #0]
    a202:	1c05      	adds	r5, r0, #0
    a204:	2900      	cmp	r1, #0
    a206:	d001      	beq.n	a20c <cleanup_glue+0x10>
    a208:	f7ff fff8 	bl	a1fc <cleanup_glue>
    a20c:	1c28      	adds	r0, r5, #0
    a20e:	1c21      	adds	r1, r4, #0
    a210:	f7ff faf2 	bl	97f8 <_free_r>
    a214:	bd38      	pop	{r3, r4, r5, pc}
    a216:	46c0      	nop			; (mov r8, r8)

0000a218 <_reclaim_reent>:
    a218:	4b26      	ldr	r3, [pc, #152]	; (a2b4 <_reclaim_reent+0x9c>)
    a21a:	b570      	push	{r4, r5, r6, lr}
    a21c:	681b      	ldr	r3, [r3, #0]
    a21e:	1e05      	subs	r5, r0, #0
    a220:	429d      	cmp	r5, r3
    a222:	d03a      	beq.n	a29a <_reclaim_reent+0x82>
    a224:	6cc2      	ldr	r2, [r0, #76]	; 0x4c
    a226:	2a00      	cmp	r2, #0
    a228:	d016      	beq.n	a258 <_reclaim_reent+0x40>
    a22a:	2300      	movs	r3, #0
    a22c:	2600      	movs	r6, #0
    a22e:	009b      	lsls	r3, r3, #2
    a230:	5899      	ldr	r1, [r3, r2]
    a232:	2900      	cmp	r1, #0
    a234:	d101      	bne.n	a23a <_reclaim_reent+0x22>
    a236:	e007      	b.n	a248 <_reclaim_reent+0x30>
    a238:	1c21      	adds	r1, r4, #0
    a23a:	680c      	ldr	r4, [r1, #0]
    a23c:	1c28      	adds	r0, r5, #0
    a23e:	f7ff fadb 	bl	97f8 <_free_r>
    a242:	2c00      	cmp	r4, #0
    a244:	d1f8      	bne.n	a238 <_reclaim_reent+0x20>
    a246:	6cea      	ldr	r2, [r5, #76]	; 0x4c
    a248:	3601      	adds	r6, #1
    a24a:	1e33      	subs	r3, r6, #0
    a24c:	2b20      	cmp	r3, #32
    a24e:	d1ee      	bne.n	a22e <_reclaim_reent+0x16>
    a250:	1c28      	adds	r0, r5, #0
    a252:	1c11      	adds	r1, r2, #0
    a254:	f7ff fad0 	bl	97f8 <_free_r>
    a258:	6c29      	ldr	r1, [r5, #64]	; 0x40
    a25a:	2900      	cmp	r1, #0
    a25c:	d002      	beq.n	a264 <_reclaim_reent+0x4c>
    a25e:	1c28      	adds	r0, r5, #0
    a260:	f7ff faca 	bl	97f8 <_free_r>
    a264:	23a4      	movs	r3, #164	; 0xa4
    a266:	005b      	lsls	r3, r3, #1
    a268:	58e9      	ldr	r1, [r5, r3]
    a26a:	2900      	cmp	r1, #0
    a26c:	d00c      	beq.n	a288 <_reclaim_reent+0x70>
    a26e:	23a6      	movs	r3, #166	; 0xa6
    a270:	005b      	lsls	r3, r3, #1
    a272:	18ee      	adds	r6, r5, r3
    a274:	42b1      	cmp	r1, r6
    a276:	d101      	bne.n	a27c <_reclaim_reent+0x64>
    a278:	e006      	b.n	a288 <_reclaim_reent+0x70>
    a27a:	1c21      	adds	r1, r4, #0
    a27c:	680c      	ldr	r4, [r1, #0]
    a27e:	1c28      	adds	r0, r5, #0
    a280:	f7ff faba 	bl	97f8 <_free_r>
    a284:	42a6      	cmp	r6, r4
    a286:	d1f8      	bne.n	a27a <_reclaim_reent+0x62>
    a288:	6d69      	ldr	r1, [r5, #84]	; 0x54
    a28a:	2900      	cmp	r1, #0
    a28c:	d002      	beq.n	a294 <_reclaim_reent+0x7c>
    a28e:	1c28      	adds	r0, r5, #0
    a290:	f7ff fab2 	bl	97f8 <_free_r>
    a294:	6bab      	ldr	r3, [r5, #56]	; 0x38
    a296:	2b00      	cmp	r3, #0
    a298:	d100      	bne.n	a29c <_reclaim_reent+0x84>
    a29a:	bd70      	pop	{r4, r5, r6, pc}
    a29c:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    a29e:	1c28      	adds	r0, r5, #0
    a2a0:	4798      	blx	r3
    a2a2:	23b8      	movs	r3, #184	; 0xb8
    a2a4:	009b      	lsls	r3, r3, #2
    a2a6:	58e9      	ldr	r1, [r5, r3]
    a2a8:	2900      	cmp	r1, #0
    a2aa:	d0f6      	beq.n	a29a <_reclaim_reent+0x82>
    a2ac:	1c28      	adds	r0, r5, #0
    a2ae:	f7ff ffa5 	bl	a1fc <cleanup_glue>
    a2b2:	e7f2      	b.n	a29a <_reclaim_reent+0x82>
    a2b4:	00012b08 	.word	0x00012b08

0000a2b8 <__swsetup_r>:
    a2b8:	4b32      	ldr	r3, [pc, #200]	; (a384 <__swsetup_r+0xcc>)
    a2ba:	b570      	push	{r4, r5, r6, lr}
    a2bc:	1c06      	adds	r6, r0, #0
    a2be:	6818      	ldr	r0, [r3, #0]
    a2c0:	1c0c      	adds	r4, r1, #0
    a2c2:	2800      	cmp	r0, #0
    a2c4:	d002      	beq.n	a2cc <__swsetup_r+0x14>
    a2c6:	6b81      	ldr	r1, [r0, #56]	; 0x38
    a2c8:	2900      	cmp	r1, #0
    a2ca:	d03b      	beq.n	a344 <__swsetup_r+0x8c>
    a2cc:	89a5      	ldrh	r5, [r4, #12]
    a2ce:	b2ab      	uxth	r3, r5
    a2d0:	071a      	lsls	r2, r3, #28
    a2d2:	d50d      	bpl.n	a2f0 <__swsetup_r+0x38>
    a2d4:	6922      	ldr	r2, [r4, #16]
    a2d6:	2a00      	cmp	r2, #0
    a2d8:	d015      	beq.n	a306 <__swsetup_r+0x4e>
    a2da:	07d8      	lsls	r0, r3, #31
    a2dc:	d521      	bpl.n	a322 <__swsetup_r+0x6a>
    a2de:	6961      	ldr	r1, [r4, #20]
    a2e0:	2300      	movs	r3, #0
    a2e2:	60a3      	str	r3, [r4, #8]
    a2e4:	424b      	negs	r3, r1
    a2e6:	61a3      	str	r3, [r4, #24]
    a2e8:	2000      	movs	r0, #0
    a2ea:	2a00      	cmp	r2, #0
    a2ec:	d021      	beq.n	a332 <__swsetup_r+0x7a>
    a2ee:	bd70      	pop	{r4, r5, r6, pc}
    a2f0:	06d8      	lsls	r0, r3, #27
    a2f2:	d53e      	bpl.n	a372 <__swsetup_r+0xba>
    a2f4:	0759      	lsls	r1, r3, #29
    a2f6:	d428      	bmi.n	a34a <__swsetup_r+0x92>
    a2f8:	6922      	ldr	r2, [r4, #16]
    a2fa:	2308      	movs	r3, #8
    a2fc:	431d      	orrs	r5, r3
    a2fe:	81a5      	strh	r5, [r4, #12]
    a300:	b2ab      	uxth	r3, r5
    a302:	2a00      	cmp	r2, #0
    a304:	d1e9      	bne.n	a2da <__swsetup_r+0x22>
    a306:	20a0      	movs	r0, #160	; 0xa0
    a308:	0080      	lsls	r0, r0, #2
    a30a:	2180      	movs	r1, #128	; 0x80
    a30c:	4018      	ands	r0, r3
    a30e:	0089      	lsls	r1, r1, #2
    a310:	4288      	cmp	r0, r1
    a312:	d0e2      	beq.n	a2da <__swsetup_r+0x22>
    a314:	1c30      	adds	r0, r6, #0
    a316:	1c21      	adds	r1, r4, #0
    a318:	f000 f836 	bl	a388 <__smakebuf_r>
    a31c:	89a3      	ldrh	r3, [r4, #12]
    a31e:	6922      	ldr	r2, [r4, #16]
    a320:	e7db      	b.n	a2da <__swsetup_r+0x22>
    a322:	2100      	movs	r1, #0
    a324:	0798      	lsls	r0, r3, #30
    a326:	d400      	bmi.n	a32a <__swsetup_r+0x72>
    a328:	6961      	ldr	r1, [r4, #20]
    a32a:	60a1      	str	r1, [r4, #8]
    a32c:	2000      	movs	r0, #0
    a32e:	2a00      	cmp	r2, #0
    a330:	d1dd      	bne.n	a2ee <__swsetup_r+0x36>
    a332:	89a3      	ldrh	r3, [r4, #12]
    a334:	0619      	lsls	r1, r3, #24
    a336:	d5da      	bpl.n	a2ee <__swsetup_r+0x36>
    a338:	2240      	movs	r2, #64	; 0x40
    a33a:	4313      	orrs	r3, r2
    a33c:	2001      	movs	r0, #1
    a33e:	81a3      	strh	r3, [r4, #12]
    a340:	4240      	negs	r0, r0
    a342:	e7d4      	b.n	a2ee <__swsetup_r+0x36>
    a344:	f7fe fc64 	bl	8c10 <__sinit>
    a348:	e7c0      	b.n	a2cc <__swsetup_r+0x14>
    a34a:	6b21      	ldr	r1, [r4, #48]	; 0x30
    a34c:	2900      	cmp	r1, #0
    a34e:	d009      	beq.n	a364 <__swsetup_r+0xac>
    a350:	1c23      	adds	r3, r4, #0
    a352:	3340      	adds	r3, #64	; 0x40
    a354:	4299      	cmp	r1, r3
    a356:	d003      	beq.n	a360 <__swsetup_r+0xa8>
    a358:	1c30      	adds	r0, r6, #0
    a35a:	f7ff fa4d 	bl	97f8 <_free_r>
    a35e:	89a5      	ldrh	r5, [r4, #12]
    a360:	2300      	movs	r3, #0
    a362:	6323      	str	r3, [r4, #48]	; 0x30
    a364:	2324      	movs	r3, #36	; 0x24
    a366:	6922      	ldr	r2, [r4, #16]
    a368:	439d      	bics	r5, r3
    a36a:	2300      	movs	r3, #0
    a36c:	6063      	str	r3, [r4, #4]
    a36e:	6022      	str	r2, [r4, #0]
    a370:	e7c3      	b.n	a2fa <__swsetup_r+0x42>
    a372:	2309      	movs	r3, #9
    a374:	6033      	str	r3, [r6, #0]
    a376:	2340      	movs	r3, #64	; 0x40
    a378:	431d      	orrs	r5, r3
    a37a:	2001      	movs	r0, #1
    a37c:	81a5      	strh	r5, [r4, #12]
    a37e:	4240      	negs	r0, r0
    a380:	e7b5      	b.n	a2ee <__swsetup_r+0x36>
    a382:	46c0      	nop			; (mov r8, r8)
    a384:	00012b08 	.word	0x00012b08

0000a388 <__smakebuf_r>:
    a388:	b5f0      	push	{r4, r5, r6, r7, lr}
    a38a:	898b      	ldrh	r3, [r1, #12]
    a38c:	b091      	sub	sp, #68	; 0x44
    a38e:	b29a      	uxth	r2, r3
    a390:	1c05      	adds	r5, r0, #0
    a392:	1c0c      	adds	r4, r1, #0
    a394:	0790      	lsls	r0, r2, #30
    a396:	d440      	bmi.n	a41a <__smakebuf_r+0x92>
    a398:	200e      	movs	r0, #14
    a39a:	5e09      	ldrsh	r1, [r1, r0]
    a39c:	2900      	cmp	r1, #0
    a39e:	db1b      	blt.n	a3d8 <__smakebuf_r+0x50>
    a3a0:	1c28      	adds	r0, r5, #0
    a3a2:	aa01      	add	r2, sp, #4
    a3a4:	f000 f860 	bl	a468 <_fstat_r>
    a3a8:	2800      	cmp	r0, #0
    a3aa:	db13      	blt.n	a3d4 <__smakebuf_r+0x4c>
    a3ac:	9a02      	ldr	r2, [sp, #8]
    a3ae:	23f0      	movs	r3, #240	; 0xf0
    a3b0:	021b      	lsls	r3, r3, #8
    a3b2:	4013      	ands	r3, r2
    a3b4:	4a29      	ldr	r2, [pc, #164]	; (a45c <__smakebuf_r+0xd4>)
    a3b6:	189f      	adds	r7, r3, r2
    a3b8:	427a      	negs	r2, r7
    a3ba:	4157      	adcs	r7, r2
    a3bc:	2280      	movs	r2, #128	; 0x80
    a3be:	0212      	lsls	r2, r2, #8
    a3c0:	4293      	cmp	r3, r2
    a3c2:	d034      	beq.n	a42e <__smakebuf_r+0xa6>
    a3c4:	89a2      	ldrh	r2, [r4, #12]
    a3c6:	2380      	movs	r3, #128	; 0x80
    a3c8:	011b      	lsls	r3, r3, #4
    a3ca:	4313      	orrs	r3, r2
    a3cc:	2680      	movs	r6, #128	; 0x80
    a3ce:	81a3      	strh	r3, [r4, #12]
    a3d0:	00f6      	lsls	r6, r6, #3
    a3d2:	e009      	b.n	a3e8 <__smakebuf_r+0x60>
    a3d4:	89a3      	ldrh	r3, [r4, #12]
    a3d6:	b29a      	uxth	r2, r3
    a3d8:	2640      	movs	r6, #64	; 0x40
    a3da:	0611      	lsls	r1, r2, #24
    a3dc:	d524      	bpl.n	a428 <__smakebuf_r+0xa0>
    a3de:	2280      	movs	r2, #128	; 0x80
    a3e0:	0112      	lsls	r2, r2, #4
    a3e2:	4313      	orrs	r3, r2
    a3e4:	81a3      	strh	r3, [r4, #12]
    a3e6:	2700      	movs	r7, #0
    a3e8:	1c28      	adds	r0, r5, #0
    a3ea:	1c31      	adds	r1, r6, #0
    a3ec:	f7fe fd40 	bl	8e70 <_malloc_r>
    a3f0:	2800      	cmp	r0, #0
    a3f2:	d00c      	beq.n	a40e <__smakebuf_r+0x86>
    a3f4:	4b1a      	ldr	r3, [pc, #104]	; (a460 <__smakebuf_r+0xd8>)
    a3f6:	63eb      	str	r3, [r5, #60]	; 0x3c
    a3f8:	89a2      	ldrh	r2, [r4, #12]
    a3fa:	2380      	movs	r3, #128	; 0x80
    a3fc:	4313      	orrs	r3, r2
    a3fe:	81a3      	strh	r3, [r4, #12]
    a400:	6020      	str	r0, [r4, #0]
    a402:	6120      	str	r0, [r4, #16]
    a404:	6166      	str	r6, [r4, #20]
    a406:	2f00      	cmp	r7, #0
    a408:	d11c      	bne.n	a444 <__smakebuf_r+0xbc>
    a40a:	b011      	add	sp, #68	; 0x44
    a40c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    a40e:	89a3      	ldrh	r3, [r4, #12]
    a410:	0599      	lsls	r1, r3, #22
    a412:	d4fa      	bmi.n	a40a <__smakebuf_r+0x82>
    a414:	2202      	movs	r2, #2
    a416:	4313      	orrs	r3, r2
    a418:	81a3      	strh	r3, [r4, #12]
    a41a:	1c23      	adds	r3, r4, #0
    a41c:	3343      	adds	r3, #67	; 0x43
    a41e:	6023      	str	r3, [r4, #0]
    a420:	6123      	str	r3, [r4, #16]
    a422:	2301      	movs	r3, #1
    a424:	6163      	str	r3, [r4, #20]
    a426:	e7f0      	b.n	a40a <__smakebuf_r+0x82>
    a428:	2680      	movs	r6, #128	; 0x80
    a42a:	00f6      	lsls	r6, r6, #3
    a42c:	e7d7      	b.n	a3de <__smakebuf_r+0x56>
    a42e:	4b0d      	ldr	r3, [pc, #52]	; (a464 <__smakebuf_r+0xdc>)
    a430:	6aa0      	ldr	r0, [r4, #40]	; 0x28
    a432:	4298      	cmp	r0, r3
    a434:	d1c6      	bne.n	a3c4 <__smakebuf_r+0x3c>
    a436:	89a3      	ldrh	r3, [r4, #12]
    a438:	2680      	movs	r6, #128	; 0x80
    a43a:	00f6      	lsls	r6, r6, #3
    a43c:	4333      	orrs	r3, r6
    a43e:	81a3      	strh	r3, [r4, #12]
    a440:	64e6      	str	r6, [r4, #76]	; 0x4c
    a442:	e7d1      	b.n	a3e8 <__smakebuf_r+0x60>
    a444:	220e      	movs	r2, #14
    a446:	5ea1      	ldrsh	r1, [r4, r2]
    a448:	1c28      	adds	r0, r5, #0
    a44a:	f000 f821 	bl	a490 <_isatty_r>
    a44e:	2800      	cmp	r0, #0
    a450:	d0db      	beq.n	a40a <__smakebuf_r+0x82>
    a452:	89a2      	ldrh	r2, [r4, #12]
    a454:	2301      	movs	r3, #1
    a456:	4313      	orrs	r3, r2
    a458:	81a3      	strh	r3, [r4, #12]
    a45a:	e7d6      	b.n	a40a <__smakebuf_r+0x82>
    a45c:	ffffe000 	.word	0xffffe000
    a460:	00008bb9 	.word	0x00008bb9
    a464:	0000947d 	.word	0x0000947d

0000a468 <_fstat_r>:
    a468:	b538      	push	{r3, r4, r5, lr}
    a46a:	4c08      	ldr	r4, [pc, #32]	; (a48c <_fstat_r+0x24>)
    a46c:	2300      	movs	r3, #0
    a46e:	1c05      	adds	r5, r0, #0
    a470:	1c08      	adds	r0, r1, #0
    a472:	1c11      	adds	r1, r2, #0
    a474:	6023      	str	r3, [r4, #0]
    a476:	f7fe f9cb 	bl	8810 <_fstat>
    a47a:	1c43      	adds	r3, r0, #1
    a47c:	d000      	beq.n	a480 <_fstat_r+0x18>
    a47e:	bd38      	pop	{r3, r4, r5, pc}
    a480:	6823      	ldr	r3, [r4, #0]
    a482:	2b00      	cmp	r3, #0
    a484:	d0fb      	beq.n	a47e <_fstat_r+0x16>
    a486:	602b      	str	r3, [r5, #0]
    a488:	e7f9      	b.n	a47e <_fstat_r+0x16>
    a48a:	46c0      	nop			; (mov r8, r8)
    a48c:	00013024 	.word	0x00013024

0000a490 <_isatty_r>:
    a490:	b538      	push	{r3, r4, r5, lr}
    a492:	4c07      	ldr	r4, [pc, #28]	; (a4b0 <_isatty_r+0x20>)
    a494:	2300      	movs	r3, #0
    a496:	1c05      	adds	r5, r0, #0
    a498:	1c08      	adds	r0, r1, #0
    a49a:	6023      	str	r3, [r4, #0]
    a49c:	f7fe faac 	bl	89f8 <_isatty>
    a4a0:	1c43      	adds	r3, r0, #1
    a4a2:	d000      	beq.n	a4a6 <_isatty_r+0x16>
    a4a4:	bd38      	pop	{r3, r4, r5, pc}
    a4a6:	6823      	ldr	r3, [r4, #0]
    a4a8:	2b00      	cmp	r3, #0
    a4aa:	d0fb      	beq.n	a4a4 <_isatty_r+0x14>
    a4ac:	602b      	str	r3, [r5, #0]
    a4ae:	e7f9      	b.n	a4a4 <_isatty_r+0x14>
    a4b0:	00013024 	.word	0x00013024

0000a4b4 <__aeabi_idiv>:
    a4b4:	2900      	cmp	r1, #0
    a4b6:	d041      	beq.n	a53c <.divsi3_skip_div0_test+0x84>

0000a4b8 <.divsi3_skip_div0_test>:
    a4b8:	b410      	push	{r4}
    a4ba:	1c04      	adds	r4, r0, #0
    a4bc:	404c      	eors	r4, r1
    a4be:	46a4      	mov	ip, r4
    a4c0:	2301      	movs	r3, #1
    a4c2:	2200      	movs	r2, #0
    a4c4:	2900      	cmp	r1, #0
    a4c6:	d500      	bpl.n	a4ca <.divsi3_skip_div0_test+0x12>
    a4c8:	4249      	negs	r1, r1
    a4ca:	2800      	cmp	r0, #0
    a4cc:	d500      	bpl.n	a4d0 <.divsi3_skip_div0_test+0x18>
    a4ce:	4240      	negs	r0, r0
    a4d0:	4288      	cmp	r0, r1
    a4d2:	d32c      	bcc.n	a52e <.divsi3_skip_div0_test+0x76>
    a4d4:	2401      	movs	r4, #1
    a4d6:	0724      	lsls	r4, r4, #28
    a4d8:	42a1      	cmp	r1, r4
    a4da:	d204      	bcs.n	a4e6 <.divsi3_skip_div0_test+0x2e>
    a4dc:	4281      	cmp	r1, r0
    a4de:	d202      	bcs.n	a4e6 <.divsi3_skip_div0_test+0x2e>
    a4e0:	0109      	lsls	r1, r1, #4
    a4e2:	011b      	lsls	r3, r3, #4
    a4e4:	e7f8      	b.n	a4d8 <.divsi3_skip_div0_test+0x20>
    a4e6:	00e4      	lsls	r4, r4, #3
    a4e8:	42a1      	cmp	r1, r4
    a4ea:	d204      	bcs.n	a4f6 <.divsi3_skip_div0_test+0x3e>
    a4ec:	4281      	cmp	r1, r0
    a4ee:	d202      	bcs.n	a4f6 <.divsi3_skip_div0_test+0x3e>
    a4f0:	0049      	lsls	r1, r1, #1
    a4f2:	005b      	lsls	r3, r3, #1
    a4f4:	e7f8      	b.n	a4e8 <.divsi3_skip_div0_test+0x30>
    a4f6:	4288      	cmp	r0, r1
    a4f8:	d301      	bcc.n	a4fe <.divsi3_skip_div0_test+0x46>
    a4fa:	1a40      	subs	r0, r0, r1
    a4fc:	431a      	orrs	r2, r3
    a4fe:	084c      	lsrs	r4, r1, #1
    a500:	42a0      	cmp	r0, r4
    a502:	d302      	bcc.n	a50a <.divsi3_skip_div0_test+0x52>
    a504:	1b00      	subs	r0, r0, r4
    a506:	085c      	lsrs	r4, r3, #1
    a508:	4322      	orrs	r2, r4
    a50a:	088c      	lsrs	r4, r1, #2
    a50c:	42a0      	cmp	r0, r4
    a50e:	d302      	bcc.n	a516 <.divsi3_skip_div0_test+0x5e>
    a510:	1b00      	subs	r0, r0, r4
    a512:	089c      	lsrs	r4, r3, #2
    a514:	4322      	orrs	r2, r4
    a516:	08cc      	lsrs	r4, r1, #3
    a518:	42a0      	cmp	r0, r4
    a51a:	d302      	bcc.n	a522 <.divsi3_skip_div0_test+0x6a>
    a51c:	1b00      	subs	r0, r0, r4
    a51e:	08dc      	lsrs	r4, r3, #3
    a520:	4322      	orrs	r2, r4
    a522:	2800      	cmp	r0, #0
    a524:	d003      	beq.n	a52e <.divsi3_skip_div0_test+0x76>
    a526:	091b      	lsrs	r3, r3, #4
    a528:	d001      	beq.n	a52e <.divsi3_skip_div0_test+0x76>
    a52a:	0909      	lsrs	r1, r1, #4
    a52c:	e7e3      	b.n	a4f6 <.divsi3_skip_div0_test+0x3e>
    a52e:	1c10      	adds	r0, r2, #0
    a530:	4664      	mov	r4, ip
    a532:	2c00      	cmp	r4, #0
    a534:	d500      	bpl.n	a538 <.divsi3_skip_div0_test+0x80>
    a536:	4240      	negs	r0, r0
    a538:	bc10      	pop	{r4}
    a53a:	4770      	bx	lr
    a53c:	2800      	cmp	r0, #0
    a53e:	d006      	beq.n	a54e <.divsi3_skip_div0_test+0x96>
    a540:	db03      	blt.n	a54a <.divsi3_skip_div0_test+0x92>
    a542:	2000      	movs	r0, #0
    a544:	43c0      	mvns	r0, r0
    a546:	0840      	lsrs	r0, r0, #1
    a548:	e001      	b.n	a54e <.divsi3_skip_div0_test+0x96>
    a54a:	2080      	movs	r0, #128	; 0x80
    a54c:	0600      	lsls	r0, r0, #24
    a54e:	b407      	push	{r0, r1, r2}
    a550:	4802      	ldr	r0, [pc, #8]	; (a55c <.divsi3_skip_div0_test+0xa4>)
    a552:	a102      	add	r1, pc, #8	; (adr r1, a55c <.divsi3_skip_div0_test+0xa4>)
    a554:	1840      	adds	r0, r0, r1
    a556:	9002      	str	r0, [sp, #8]
    a558:	bd03      	pop	{r0, r1, pc}
    a55a:	46c0      	nop			; (mov r8, r8)
    a55c:	00000019 	.word	0x00000019

0000a560 <__aeabi_idivmod>:
    a560:	2900      	cmp	r1, #0
    a562:	d0eb      	beq.n	a53c <.divsi3_skip_div0_test+0x84>
    a564:	b503      	push	{r0, r1, lr}
    a566:	f7ff ffa7 	bl	a4b8 <.divsi3_skip_div0_test>
    a56a:	bc0e      	pop	{r1, r2, r3}
    a56c:	4342      	muls	r2, r0
    a56e:	1a89      	subs	r1, r1, r2
    a570:	4718      	bx	r3
    a572:	46c0      	nop			; (mov r8, r8)

0000a574 <__aeabi_idiv0>:
    a574:	4770      	bx	lr
    a576:	46c0      	nop			; (mov r8, r8)

Disassembly of section .fini:

0000a578 <_fini>:
    a578:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    a57a:	46c0      	nop			; (mov r8, r8)
    a57c:	bcf8      	pop	{r3, r4, r5, r6, r7}
    a57e:	bc08      	pop	{r3}
    a580:	469e      	mov	lr, r3
    a582:	4770      	bx	lr
