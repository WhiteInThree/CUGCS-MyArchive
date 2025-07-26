
lb4：     文件格式 elf32-i386


Disassembly of section .init:

080482a8 <_init>:
 80482a8:	53                   	push   %ebx
 80482a9:	83 ec 08             	sub    $0x8,%esp
 80482ac:	e8 8f 00 00 00       	call   8048340 <__x86.get_pc_thunk.bx>
 80482b1:	81 c3 4f 1d 00 00    	add    $0x1d4f,%ebx
 80482b7:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80482bd:	85 c0                	test   %eax,%eax
 80482bf:	74 05                	je     80482c6 <_init+0x1e>
 80482c1:	e8 3a 00 00 00       	call   8048300 <__libc_start_main@plt+0x10>
 80482c6:	83 c4 08             	add    $0x8,%esp
 80482c9:	5b                   	pop    %ebx
 80482ca:	c3                   	ret    

Disassembly of section .plt:

080482d0 <puts@plt-0x10>:
 80482d0:	ff 35 04 a0 04 08    	pushl  0x804a004
 80482d6:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80482dc:	00 00                	add    %al,(%eax)
	...

080482e0 <puts@plt>:
 80482e0:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 80482e6:	68 00 00 00 00       	push   $0x0
 80482eb:	e9 e0 ff ff ff       	jmp    80482d0 <_init+0x28>

080482f0 <__libc_start_main@plt>:
 80482f0:	ff 25 10 a0 04 08    	jmp    *0x804a010
 80482f6:	68 08 00 00 00       	push   $0x8
 80482fb:	e9 d0 ff ff ff       	jmp    80482d0 <_init+0x28>

Disassembly of section .plt.got:

08048300 <.plt.got>:
 8048300:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048306:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048310 <_start>:
 8048310:	31 ed                	xor    %ebp,%ebp
 8048312:	5e                   	pop    %esi
 8048313:	89 e1                	mov    %esp,%ecx
 8048315:	83 e4 f0             	and    $0xfffffff0,%esp
 8048318:	50                   	push   %eax
 8048319:	54                   	push   %esp
 804831a:	52                   	push   %edx
 804831b:	68 10 86 04 08       	push   $0x8048610
 8048320:	68 b0 85 04 08       	push   $0x80485b0
 8048325:	51                   	push   %ecx
 8048326:	56                   	push   %esi
 8048327:	68 0b 84 04 08       	push   $0x804840b
 804832c:	e8 bf ff ff ff       	call   80482f0 <__libc_start_main@plt>
 8048331:	f4                   	hlt    
 8048332:	66 90                	xchg   %ax,%ax
 8048334:	66 90                	xchg   %ax,%ax
 8048336:	66 90                	xchg   %ax,%ax
 8048338:	66 90                	xchg   %ax,%ax
 804833a:	66 90                	xchg   %ax,%ax
 804833c:	66 90                	xchg   %ax,%ax
 804833e:	66 90                	xchg   %ax,%ax

08048340 <__x86.get_pc_thunk.bx>:
 8048340:	8b 1c 24             	mov    (%esp),%ebx
 8048343:	c3                   	ret    
 8048344:	66 90                	xchg   %ax,%ax
 8048346:	66 90                	xchg   %ax,%ax
 8048348:	66 90                	xchg   %ax,%ax
 804834a:	66 90                	xchg   %ax,%ax
 804834c:	66 90                	xchg   %ax,%ax
 804834e:	66 90                	xchg   %ax,%ax

08048350 <deregister_tm_clones>:
 8048350:	b8 7b a0 04 08       	mov    $0x804a07b,%eax
 8048355:	2d 78 a0 04 08       	sub    $0x804a078,%eax
 804835a:	83 f8 06             	cmp    $0x6,%eax
 804835d:	76 1a                	jbe    8048379 <deregister_tm_clones+0x29>
 804835f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048364:	85 c0                	test   %eax,%eax
 8048366:	74 11                	je     8048379 <deregister_tm_clones+0x29>
 8048368:	55                   	push   %ebp
 8048369:	89 e5                	mov    %esp,%ebp
 804836b:	83 ec 14             	sub    $0x14,%esp
 804836e:	68 78 a0 04 08       	push   $0x804a078
 8048373:	ff d0                	call   *%eax
 8048375:	83 c4 10             	add    $0x10,%esp
 8048378:	c9                   	leave  
 8048379:	f3 c3                	repz ret 
 804837b:	90                   	nop
 804837c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048380 <register_tm_clones>:
 8048380:	b8 78 a0 04 08       	mov    $0x804a078,%eax
 8048385:	2d 78 a0 04 08       	sub    $0x804a078,%eax
 804838a:	c1 f8 02             	sar    $0x2,%eax
 804838d:	89 c2                	mov    %eax,%edx
 804838f:	c1 ea 1f             	shr    $0x1f,%edx
 8048392:	01 d0                	add    %edx,%eax
 8048394:	d1 f8                	sar    %eax
 8048396:	74 1b                	je     80483b3 <register_tm_clones+0x33>
 8048398:	ba 00 00 00 00       	mov    $0x0,%edx
 804839d:	85 d2                	test   %edx,%edx
 804839f:	74 12                	je     80483b3 <register_tm_clones+0x33>
 80483a1:	55                   	push   %ebp
 80483a2:	89 e5                	mov    %esp,%ebp
 80483a4:	83 ec 10             	sub    $0x10,%esp
 80483a7:	50                   	push   %eax
 80483a8:	68 78 a0 04 08       	push   $0x804a078
 80483ad:	ff d2                	call   *%edx
 80483af:	83 c4 10             	add    $0x10,%esp
 80483b2:	c9                   	leave  
 80483b3:	f3 c3                	repz ret 
 80483b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80483b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080483c0 <__do_global_dtors_aux>:
 80483c0:	80 3d 78 a0 04 08 00 	cmpb   $0x0,0x804a078
 80483c7:	75 13                	jne    80483dc <__do_global_dtors_aux+0x1c>
 80483c9:	55                   	push   %ebp
 80483ca:	89 e5                	mov    %esp,%ebp
 80483cc:	83 ec 08             	sub    $0x8,%esp
 80483cf:	e8 7c ff ff ff       	call   8048350 <deregister_tm_clones>
 80483d4:	c6 05 78 a0 04 08 01 	movb   $0x1,0x804a078
 80483db:	c9                   	leave  
 80483dc:	f3 c3                	repz ret 
 80483de:	66 90                	xchg   %ax,%ax

080483e0 <frame_dummy>:
 80483e0:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 80483e5:	8b 10                	mov    (%eax),%edx
 80483e7:	85 d2                	test   %edx,%edx
 80483e9:	75 05                	jne    80483f0 <frame_dummy+0x10>
 80483eb:	eb 93                	jmp    8048380 <register_tm_clones>
 80483ed:	8d 76 00             	lea    0x0(%esi),%esi
 80483f0:	ba 00 00 00 00       	mov    $0x0,%edx
 80483f5:	85 d2                	test   %edx,%edx
 80483f7:	74 f2                	je     80483eb <frame_dummy+0xb>
 80483f9:	55                   	push   %ebp
 80483fa:	89 e5                	mov    %esp,%ebp
 80483fc:	83 ec 14             	sub    $0x14,%esp
 80483ff:	50                   	push   %eax
 8048400:	ff d2                	call   *%edx
 8048402:	83 c4 10             	add    $0x10,%esp
 8048405:	c9                   	leave  
 8048406:	e9 75 ff ff ff       	jmp    8048380 <register_tm_clones>

0804840b <main>:
 804840b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804840f:	83 e4 f0             	and    $0xfffffff0,%esp
 8048412:	ff 71 fc             	pushl  -0x4(%ecx)
 8048415:	55                   	push   %ebp
 8048416:	89 e5                	mov    %esp,%ebp
 8048418:	51                   	push   %ecx
 8048419:	83 ec 04             	sub    $0x4,%esp
 804841c:	a1 74 a0 04 08       	mov    0x804a074,%eax
 8048421:	85 c0                	test   %eax,%eax
 8048423:	74 09                	je     804842e <main+0x23>
 8048425:	a1 74 a0 04 08       	mov    0x804a074,%eax
 804842a:	ff d0                	call   *%eax
 804842c:	eb 10                	jmp    804843e <main+0x33>
 804842e:	83 ec 0c             	sub    $0xc,%esp
 8048431:	68 50 87 04 08       	push   $0x8048750
 8048436:	e8 a5 fe ff ff       	call   80482e0 <puts@plt>
 804843b:	83 c4 10             	add    $0x10,%esp
 804843e:	b8 00 00 00 00       	mov    $0x0,%eax
 8048443:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 8048446:	c9                   	leave  
 8048447:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804844a:	c3                   	ret    

0804844b <qWeBuqQIOr>:
 804844b:	55                   	push   %ebp
 804844c:	89 e5                	mov    %esp,%ebp
 804844e:	90                   	nop
 804844f:	90                   	nop
 8048450:	90                   	nop
 8048451:	90                   	nop
 8048452:	90                   	nop
 8048453:	90                   	nop
 8048454:	90                   	nop
 8048455:	90                   	nop
 8048456:	90                   	nop
 8048457:	90                   	nop
 8048458:	90                   	nop
 8048459:	90                   	nop
 804845a:	90                   	nop
 804845b:	90                   	nop
 804845c:	90                   	nop
 804845d:	90                   	nop
 804845e:	90                   	nop
 804845f:	90                   	nop
 8048460:	90                   	nop
 8048461:	90                   	nop
 8048462:	90                   	nop
 8048463:	90                   	nop
 8048464:	90                   	nop
 8048465:	90                   	nop
 8048466:	90                   	nop
 8048467:	90                   	nop
 8048468:	90                   	nop
 8048469:	90                   	nop
 804846a:	90                   	nop
 804846b:	90                   	nop
 804846c:	90                   	nop
 804846d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8048472:	5d                   	pop    %ebp
 8048473:	c3                   	ret    

08048474 <do_phase>:
 8048474:	55                   	push   %ebp
 8048475:	89 e5                	mov    %esp,%ebp
 8048477:	83 ec 28             	sub    $0x28,%esp
 804847a:	c7 45 e6 53 4e 58 47 	movl   $0x47584e53,-0x1a(%ebp)
 8048481:	c7 45 ea 4a 54 43 46 	movl   $0x4643544a,-0x16(%ebp)
 8048488:	66 c7 45 ee 50 00    	movw   $0x50,-0x12(%ebp)
 804848e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048495:	e9 e0 00 00 00       	jmp    804857a <do_phase+0x106>
 804849a:	8d 55 e6             	lea    -0x1a(%ebp),%edx
 804849d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80484a0:	01 d0                	add    %edx,%eax
 80484a2:	0f b6 00             	movzbl (%eax),%eax
 80484a5:	88 45 f7             	mov    %al,-0x9(%ebp)
 80484a8:	0f be 45 f7          	movsbl -0x9(%ebp),%eax
 80484ac:	83 e8 41             	sub    $0x41,%eax
 80484af:	83 f8 19             	cmp    $0x19,%eax
 80484b2:	0f 87 b0 00 00 00    	ja     8048568 <do_phase+0xf4>
 80484b8:	8b 04 85 c8 87 04 08 	mov    0x80487c8(,%eax,4),%eax
 80484bf:	ff e0                	jmp    *%eax
 80484c1:	c6 45 f7 38          	movb   $0x38,-0x9(%ebp)
 80484c5:	e9 9e 00 00 00       	jmp    8048568 <do_phase+0xf4>
 80484ca:	c6 45 f7 65          	movb   $0x65,-0x9(%ebp)
 80484ce:	e9 95 00 00 00       	jmp    8048568 <do_phase+0xf4>
 80484d3:	c6 45 f7 35          	movb   $0x35,-0x9(%ebp)
 80484d7:	e9 8c 00 00 00       	jmp    8048568 <do_phase+0xf4>
 80484dc:	c6 45 f7 39          	movb   $0x39,-0x9(%ebp)
 80484e0:	e9 83 00 00 00       	jmp    8048568 <do_phase+0xf4>
 80484e5:	c6 45 f7 6d          	movb   $0x6d,-0x9(%ebp)
 80484e9:	eb 7d                	jmp    8048568 <do_phase+0xf4>
 80484eb:	c6 45 f7 6d          	movb   $0x6d,-0x9(%ebp)
 80484ef:	eb 77                	jmp    8048568 <do_phase+0xf4>
 80484f1:	c6 45 f7 4c          	movb   $0x4c,-0x9(%ebp)
 80484f5:	eb 71                	jmp    8048568 <do_phase+0xf4>
 80484f7:	c6 45 f7 73          	movb   $0x73,-0x9(%ebp)
 80484fb:	eb 6b                	jmp    8048568 <do_phase+0xf4>
 80484fd:	c6 45 f7 45          	movb   $0x45,-0x9(%ebp)
 8048501:	eb 65                	jmp    8048568 <do_phase+0xf4>
 8048503:	c6 45 f7 37          	movb   $0x37,-0x9(%ebp)
 8048507:	eb 5f                	jmp    8048568 <do_phase+0xf4>
 8048509:	c6 45 f7 42          	movb   $0x42,-0x9(%ebp)
 804850d:	eb 59                	jmp    8048568 <do_phase+0xf4>
 804850f:	c6 45 f7 77          	movb   $0x77,-0x9(%ebp)
 8048513:	eb 53                	jmp    8048568 <do_phase+0xf4>
 8048515:	c6 45 f7 36          	movb   $0x36,-0x9(%ebp)
 8048519:	eb 4d                	jmp    8048568 <do_phase+0xf4>
 804851b:	c6 45 f7 3a          	movb   $0x3a,-0x9(%ebp)
 804851f:	eb 47                	jmp    8048568 <do_phase+0xf4>
 8048521:	c6 45 f7 5b          	movb   $0x5b,-0x9(%ebp)
 8048525:	eb 41                	jmp    8048568 <do_phase+0xf4>
 8048527:	c6 45 f7 63          	movb   $0x63,-0x9(%ebp)
 804852b:	eb 3b                	jmp    8048568 <do_phase+0xf4>
 804852d:	c6 45 f7 5b          	movb   $0x5b,-0x9(%ebp)
 8048531:	eb 35                	jmp    8048568 <do_phase+0xf4>
 8048533:	c6 45 f7 33          	movb   $0x33,-0x9(%ebp)
 8048537:	eb 2f                	jmp    8048568 <do_phase+0xf4>
 8048539:	c6 45 f7 55          	movb   $0x55,-0x9(%ebp)
 804853d:	eb 29                	jmp    8048568 <do_phase+0xf4>
 804853f:	c6 45 f7 77          	movb   $0x77,-0x9(%ebp)
 8048543:	eb 23                	jmp    8048568 <do_phase+0xf4>
 8048545:	c6 45 f7 32          	movb   $0x32,-0x9(%ebp)
 8048549:	eb 1d                	jmp    8048568 <do_phase+0xf4>
 804854b:	c6 45 f7 4e          	movb   $0x4e,-0x9(%ebp)
 804854f:	eb 17                	jmp    8048568 <do_phase+0xf4>
 8048551:	c6 45 f7 30          	movb   $0x30,-0x9(%ebp)
 8048555:	eb 11                	jmp    8048568 <do_phase+0xf4>
 8048557:	c6 45 f7 31          	movb   $0x31,-0x9(%ebp)
 804855b:	eb 0b                	jmp    8048568 <do_phase+0xf4>
 804855d:	c6 45 f7 34          	movb   $0x34,-0x9(%ebp)
 8048561:	eb 05                	jmp    8048568 <do_phase+0xf4>
 8048563:	c6 45 f7 67          	movb   $0x67,-0x9(%ebp)
 8048567:	90                   	nop
 8048568:	8d 55 dc             	lea    -0x24(%ebp),%edx
 804856b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804856e:	01 c2                	add    %eax,%edx
 8048570:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8048574:	88 02                	mov    %al,(%edx)
 8048576:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804857a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804857d:	83 f8 08             	cmp    $0x8,%eax
 8048580:	0f 86 14 ff ff ff    	jbe    804849a <do_phase+0x26>
 8048586:	8d 55 dc             	lea    -0x24(%ebp),%edx
 8048589:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804858c:	01 d0                	add    %edx,%eax
 804858e:	c6 00 00             	movb   $0x0,(%eax)
 8048591:	83 ec 0c             	sub    $0xc,%esp
 8048594:	8d 45 dc             	lea    -0x24(%ebp),%eax
 8048597:	50                   	push   %eax
 8048598:	e8 43 fd ff ff       	call   80482e0 <puts@plt>
 804859d:	83 c4 10             	add    $0x10,%esp
 80485a0:	90                   	nop
 80485a1:	c9                   	leave  
 80485a2:	c3                   	ret    
 80485a3:	66 90                	xchg   %ax,%ax
 80485a5:	66 90                	xchg   %ax,%ax
 80485a7:	66 90                	xchg   %ax,%ax
 80485a9:	66 90                	xchg   %ax,%ax
 80485ab:	66 90                	xchg   %ax,%ax
 80485ad:	66 90                	xchg   %ax,%ax
 80485af:	90                   	nop

080485b0 <__libc_csu_init>:
 80485b0:	55                   	push   %ebp
 80485b1:	57                   	push   %edi
 80485b2:	56                   	push   %esi
 80485b3:	53                   	push   %ebx
 80485b4:	e8 87 fd ff ff       	call   8048340 <__x86.get_pc_thunk.bx>
 80485b9:	81 c3 47 1a 00 00    	add    $0x1a47,%ebx
 80485bf:	83 ec 0c             	sub    $0xc,%esp
 80485c2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80485c6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80485cc:	e8 d7 fc ff ff       	call   80482a8 <_init>
 80485d1:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80485d7:	29 c6                	sub    %eax,%esi
 80485d9:	c1 fe 02             	sar    $0x2,%esi
 80485dc:	85 f6                	test   %esi,%esi
 80485de:	74 25                	je     8048605 <__libc_csu_init+0x55>
 80485e0:	31 ff                	xor    %edi,%edi
 80485e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80485e8:	83 ec 04             	sub    $0x4,%esp
 80485eb:	ff 74 24 2c          	pushl  0x2c(%esp)
 80485ef:	ff 74 24 2c          	pushl  0x2c(%esp)
 80485f3:	55                   	push   %ebp
 80485f4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80485fb:	83 c7 01             	add    $0x1,%edi
 80485fe:	83 c4 10             	add    $0x10,%esp
 8048601:	39 f7                	cmp    %esi,%edi
 8048603:	75 e3                	jne    80485e8 <__libc_csu_init+0x38>
 8048605:	83 c4 0c             	add    $0xc,%esp
 8048608:	5b                   	pop    %ebx
 8048609:	5e                   	pop    %esi
 804860a:	5f                   	pop    %edi
 804860b:	5d                   	pop    %ebp
 804860c:	c3                   	ret    
 804860d:	8d 76 00             	lea    0x0(%esi),%esi

08048610 <__libc_csu_fini>:
 8048610:	f3 c3                	repz ret 

Disassembly of section .fini:

08048614 <_fini>:
 8048614:	53                   	push   %ebx
 8048615:	83 ec 08             	sub    $0x8,%esp
 8048618:	e8 23 fd ff ff       	call   8048340 <__x86.get_pc_thunk.bx>
 804861d:	81 c3 e3 19 00 00    	add    $0x19e3,%ebx
 8048623:	83 c4 08             	add    $0x8,%esp
 8048626:	5b                   	pop    %ebx
 8048627:	c3                   	ret    
