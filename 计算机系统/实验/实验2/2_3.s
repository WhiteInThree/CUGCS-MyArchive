
2_3：     文件格式 elf32-i386


Disassembly of section .init:

080482f0 <_init>:
 80482f0:	53                   	push   %ebx
 80482f1:	83 ec 08             	sub    $0x8,%esp
 80482f4:	e8 a7 00 00 00       	call   80483a0 <__x86.get_pc_thunk.bx>
 80482f9:	81 c3 07 1d 00 00    	add    $0x1d07,%ebx
 80482ff:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048305:	85 c0                	test   %eax,%eax
 8048307:	74 05                	je     804830e <_init+0x1e>
 8048309:	e8 52 00 00 00       	call   8048360 <__libc_start_main@plt+0x10>
 804830e:	83 c4 08             	add    $0x8,%esp
 8048311:	5b                   	pop    %ebx
 8048312:	c3                   	ret    

Disassembly of section .plt:

08048320 <__stack_chk_fail@plt-0x10>:
 8048320:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048326:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804832c:	00 00                	add    %al,(%eax)
	...

08048330 <__stack_chk_fail@plt>:
 8048330:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048336:	68 00 00 00 00       	push   $0x0
 804833b:	e9 e0 ff ff ff       	jmp    8048320 <_init+0x30>

08048340 <puts@plt>:
 8048340:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048346:	68 08 00 00 00       	push   $0x8
 804834b:	e9 d0 ff ff ff       	jmp    8048320 <_init+0x30>

08048350 <__libc_start_main@plt>:
 8048350:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048356:	68 10 00 00 00       	push   $0x10
 804835b:	e9 c0 ff ff ff       	jmp    8048320 <_init+0x30>

Disassembly of section .plt.got:

08048360 <.plt.got>:
 8048360:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048366:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048370 <_start>:
 8048370:	31 ed                	xor    %ebp,%ebp
 8048372:	5e                   	pop    %esi
 8048373:	89 e1                	mov    %esp,%ecx
 8048375:	83 e4 f0             	and    $0xfffffff0,%esp
 8048378:	50                   	push   %eax
 8048379:	54                   	push   %esp
 804837a:	52                   	push   %edx
 804837b:	68 40 85 04 08       	push   $0x8048540
 8048380:	68 e0 84 04 08       	push   $0x80484e0
 8048385:	51                   	push   %ecx
 8048386:	56                   	push   %esi
 8048387:	68 6b 84 04 08       	push   $0x804846b
 804838c:	e8 bf ff ff ff       	call   8048350 <__libc_start_main@plt>
 8048391:	f4                   	hlt    
 8048392:	66 90                	xchg   %ax,%ax
 8048394:	66 90                	xchg   %ax,%ax
 8048396:	66 90                	xchg   %ax,%ax
 8048398:	66 90                	xchg   %ax,%ax
 804839a:	66 90                	xchg   %ax,%ax
 804839c:	66 90                	xchg   %ax,%ax
 804839e:	66 90                	xchg   %ax,%ax

080483a0 <__x86.get_pc_thunk.bx>:
 80483a0:	8b 1c 24             	mov    (%esp),%ebx
 80483a3:	c3                   	ret    
 80483a4:	66 90                	xchg   %ax,%ax
 80483a6:	66 90                	xchg   %ax,%ax
 80483a8:	66 90                	xchg   %ax,%ax
 80483aa:	66 90                	xchg   %ax,%ax
 80483ac:	66 90                	xchg   %ax,%ax
 80483ae:	66 90                	xchg   %ax,%ax

080483b0 <deregister_tm_clones>:
 80483b0:	b8 23 a0 04 08       	mov    $0x804a023,%eax
 80483b5:	2d 20 a0 04 08       	sub    $0x804a020,%eax
 80483ba:	83 f8 06             	cmp    $0x6,%eax
 80483bd:	76 1a                	jbe    80483d9 <deregister_tm_clones+0x29>
 80483bf:	b8 00 00 00 00       	mov    $0x0,%eax
 80483c4:	85 c0                	test   %eax,%eax
 80483c6:	74 11                	je     80483d9 <deregister_tm_clones+0x29>
 80483c8:	55                   	push   %ebp
 80483c9:	89 e5                	mov    %esp,%ebp
 80483cb:	83 ec 14             	sub    $0x14,%esp
 80483ce:	68 20 a0 04 08       	push   $0x804a020
 80483d3:	ff d0                	call   *%eax
 80483d5:	83 c4 10             	add    $0x10,%esp
 80483d8:	c9                   	leave  
 80483d9:	f3 c3                	repz ret 
 80483db:	90                   	nop
 80483dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080483e0 <register_tm_clones>:
 80483e0:	b8 20 a0 04 08       	mov    $0x804a020,%eax
 80483e5:	2d 20 a0 04 08       	sub    $0x804a020,%eax
 80483ea:	c1 f8 02             	sar    $0x2,%eax
 80483ed:	89 c2                	mov    %eax,%edx
 80483ef:	c1 ea 1f             	shr    $0x1f,%edx
 80483f2:	01 d0                	add    %edx,%eax
 80483f4:	d1 f8                	sar    %eax
 80483f6:	74 1b                	je     8048413 <register_tm_clones+0x33>
 80483f8:	ba 00 00 00 00       	mov    $0x0,%edx
 80483fd:	85 d2                	test   %edx,%edx
 80483ff:	74 12                	je     8048413 <register_tm_clones+0x33>
 8048401:	55                   	push   %ebp
 8048402:	89 e5                	mov    %esp,%ebp
 8048404:	83 ec 10             	sub    $0x10,%esp
 8048407:	50                   	push   %eax
 8048408:	68 20 a0 04 08       	push   $0x804a020
 804840d:	ff d2                	call   *%edx
 804840f:	83 c4 10             	add    $0x10,%esp
 8048412:	c9                   	leave  
 8048413:	f3 c3                	repz ret 
 8048415:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048419:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048420 <__do_global_dtors_aux>:
 8048420:	80 3d 20 a0 04 08 00 	cmpb   $0x0,0x804a020
 8048427:	75 13                	jne    804843c <__do_global_dtors_aux+0x1c>
 8048429:	55                   	push   %ebp
 804842a:	89 e5                	mov    %esp,%ebp
 804842c:	83 ec 08             	sub    $0x8,%esp
 804842f:	e8 7c ff ff ff       	call   80483b0 <deregister_tm_clones>
 8048434:	c6 05 20 a0 04 08 01 	movb   $0x1,0x804a020
 804843b:	c9                   	leave  
 804843c:	f3 c3                	repz ret 
 804843e:	66 90                	xchg   %ax,%ax

08048440 <frame_dummy>:
 8048440:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 8048445:	8b 10                	mov    (%eax),%edx
 8048447:	85 d2                	test   %edx,%edx
 8048449:	75 05                	jne    8048450 <frame_dummy+0x10>
 804844b:	eb 93                	jmp    80483e0 <register_tm_clones>
 804844d:	8d 76 00             	lea    0x0(%esi),%esi
 8048450:	ba 00 00 00 00       	mov    $0x0,%edx
 8048455:	85 d2                	test   %edx,%edx
 8048457:	74 f2                	je     804844b <frame_dummy+0xb>
 8048459:	55                   	push   %ebp
 804845a:	89 e5                	mov    %esp,%ebp
 804845c:	83 ec 14             	sub    $0x14,%esp
 804845f:	50                   	push   %eax
 8048460:	ff d2                	call   *%edx
 8048462:	83 c4 10             	add    $0x10,%esp
 8048465:	c9                   	leave  
 8048466:	e9 75 ff ff ff       	jmp    80483e0 <register_tm_clones>

0804846b <main>:
 804846b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804846f:	83 e4 f0             	and    $0xfffffff0,%esp
 8048472:	ff 71 fc             	pushl  -0x4(%ecx)
 8048475:	55                   	push   %ebp
 8048476:	89 e5                	mov    %esp,%ebp
 8048478:	51                   	push   %ecx
 8048479:	83 ec 14             	sub    $0x14,%esp
 804847c:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048482:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048485:	31 c0                	xor    %eax,%eax
 8048487:	c7 45 ec 78 56 34 12 	movl   $0x12345678,-0x14(%ebp)
 804848e:	c7 45 f0 44 33 22 11 	movl   $0x11223344,-0x10(%ebp)
 8048495:	8d 45 ec             	lea    -0x14(%ebp),%eax
 8048498:	8b 5d ec             	mov    -0x14(%ebp),%ebx
 804849b:	b9 01 00 00 00       	mov    $0x1,%ecx
 80484a0:	8d 44 8d ec          	lea    -0x14(%ebp,%ecx,4),%eax
 80484a4:	8b 5c 8d ec          	mov    -0x14(%ebp,%ecx,4),%ebx
 80484a8:	83 ec 0c             	sub    $0xc,%esp
 80484ab:	68 60 85 04 08       	push   $0x8048560
 80484b0:	e8 8b fe ff ff       	call   8048340 <puts@plt>
 80484b5:	83 c4 10             	add    $0x10,%esp
 80484b8:	90                   	nop
 80484b9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80484bc:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 80484c3:	74 05                	je     80484ca <main+0x5f>
 80484c5:	e8 66 fe ff ff       	call   8048330 <__stack_chk_fail@plt>
 80484ca:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80484cd:	c9                   	leave  
 80484ce:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80484d1:	c3                   	ret    
 80484d2:	66 90                	xchg   %ax,%ax
 80484d4:	66 90                	xchg   %ax,%ax
 80484d6:	66 90                	xchg   %ax,%ax
 80484d8:	66 90                	xchg   %ax,%ax
 80484da:	66 90                	xchg   %ax,%ax
 80484dc:	66 90                	xchg   %ax,%ax
 80484de:	66 90                	xchg   %ax,%ax

080484e0 <__libc_csu_init>:
 80484e0:	55                   	push   %ebp
 80484e1:	57                   	push   %edi
 80484e2:	56                   	push   %esi
 80484e3:	53                   	push   %ebx
 80484e4:	e8 b7 fe ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 80484e9:	81 c3 17 1b 00 00    	add    $0x1b17,%ebx
 80484ef:	83 ec 0c             	sub    $0xc,%esp
 80484f2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80484f6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80484fc:	e8 ef fd ff ff       	call   80482f0 <_init>
 8048501:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048507:	29 c6                	sub    %eax,%esi
 8048509:	c1 fe 02             	sar    $0x2,%esi
 804850c:	85 f6                	test   %esi,%esi
 804850e:	74 25                	je     8048535 <__libc_csu_init+0x55>
 8048510:	31 ff                	xor    %edi,%edi
 8048512:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048518:	83 ec 04             	sub    $0x4,%esp
 804851b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804851f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048523:	55                   	push   %ebp
 8048524:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804852b:	83 c7 01             	add    $0x1,%edi
 804852e:	83 c4 10             	add    $0x10,%esp
 8048531:	39 f7                	cmp    %esi,%edi
 8048533:	75 e3                	jne    8048518 <__libc_csu_init+0x38>
 8048535:	83 c4 0c             	add    $0xc,%esp
 8048538:	5b                   	pop    %ebx
 8048539:	5e                   	pop    %esi
 804853a:	5f                   	pop    %edi
 804853b:	5d                   	pop    %ebp
 804853c:	c3                   	ret    
 804853d:	8d 76 00             	lea    0x0(%esi),%esi

08048540 <__libc_csu_fini>:
 8048540:	f3 c3                	repz ret 

Disassembly of section .fini:

08048544 <_fini>:
 8048544:	53                   	push   %ebx
 8048545:	83 ec 08             	sub    $0x8,%esp
 8048548:	e8 53 fe ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 804854d:	81 c3 b3 1a 00 00    	add    $0x1ab3,%ebx
 8048553:	83 c4 08             	add    $0x8,%esp
 8048556:	5b                   	pop    %ebx
 8048557:	c3                   	ret    
