
hack：     文件格式 elf32-i386


Disassembly of section .init:

080482ac <_init>:
 80482ac:	53                   	push   %ebx
 80482ad:	83 ec 08             	sub    $0x8,%esp
 80482b0:	e8 8b 00 00 00       	call   8048340 <__x86.get_pc_thunk.bx>
 80482b5:	81 c3 4b 1d 00 00    	add    $0x1d4b,%ebx
 80482bb:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80482c1:	85 c0                	test   %eax,%eax
 80482c3:	74 05                	je     80482ca <_init+0x1e>
 80482c5:	e8 36 00 00 00       	call   8048300 <execve@plt+0x10>
 80482ca:	83 c4 08             	add    $0x8,%esp
 80482cd:	5b                   	pop    %ebx
 80482ce:	c3                   	ret    

Disassembly of section .plt:

080482d0 <__libc_start_main@plt-0x10>:
 80482d0:	ff 35 04 a0 04 08    	pushl  0x804a004
 80482d6:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80482dc:	00 00                	add    %al,(%eax)
	...

080482e0 <__libc_start_main@plt>:
 80482e0:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 80482e6:	68 00 00 00 00       	push   $0x0
 80482eb:	e9 e0 ff ff ff       	jmp    80482d0 <_init+0x24>

080482f0 <execve@plt>:
 80482f0:	ff 25 10 a0 04 08    	jmp    *0x804a010
 80482f6:	68 08 00 00 00       	push   $0x8
 80482fb:	e9 d0 ff ff ff       	jmp    80482d0 <_init+0x24>

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
 804831b:	68 c0 84 04 08       	push   $0x80484c0
 8048320:	68 60 84 04 08       	push   $0x8048460
 8048325:	51                   	push   %ecx
 8048326:	56                   	push   %esi
 8048327:	68 0b 84 04 08       	push   $0x804840b
 804832c:	e8 af ff ff ff       	call   80482e0 <__libc_start_main@plt>
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
 8048350:	b8 37 a0 04 08       	mov    $0x804a037,%eax
 8048355:	2d 34 a0 04 08       	sub    $0x804a034,%eax
 804835a:	83 f8 06             	cmp    $0x6,%eax
 804835d:	76 1a                	jbe    8048379 <deregister_tm_clones+0x29>
 804835f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048364:	85 c0                	test   %eax,%eax
 8048366:	74 11                	je     8048379 <deregister_tm_clones+0x29>
 8048368:	55                   	push   %ebp
 8048369:	89 e5                	mov    %esp,%ebp
 804836b:	83 ec 14             	sub    $0x14,%esp
 804836e:	68 34 a0 04 08       	push   $0x804a034
 8048373:	ff d0                	call   *%eax
 8048375:	83 c4 10             	add    $0x10,%esp
 8048378:	c9                   	leave  
 8048379:	f3 c3                	repz ret 
 804837b:	90                   	nop
 804837c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048380 <register_tm_clones>:
 8048380:	b8 34 a0 04 08       	mov    $0x804a034,%eax
 8048385:	2d 34 a0 04 08       	sub    $0x804a034,%eax
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
 80483a8:	68 34 a0 04 08       	push   $0x804a034
 80483ad:	ff d2                	call   *%edx
 80483af:	83 c4 10             	add    $0x10,%esp
 80483b2:	c9                   	leave  
 80483b3:	f3 c3                	repz ret 
 80483b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80483b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080483c0 <__do_global_dtors_aux>:
 80483c0:	80 3d 31 a0 04 08 00 	cmpb   $0x0,0x804a031
 80483c7:	75 13                	jne    80483dc <__do_global_dtors_aux+0x1c>
 80483c9:	55                   	push   %ebp
 80483ca:	89 e5                	mov    %esp,%ebp
 80483cc:	83 ec 08             	sub    $0x8,%esp
 80483cf:	e8 7c ff ff ff       	call   8048350 <deregister_tm_clones>
 80483d4:	c6 05 31 a0 04 08 01 	movb   $0x1,0x804a031
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
#include <stdio.h>
char code[] = "0123456789ABCDEFXXXX";
int main()
{
 804840b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804840f:	83 e4 f0             	and    $0xfffffff0,%esp
 8048412:	ff 71 fc             	pushl  -0x4(%ecx)
 8048415:	55                   	push   %ebp
 8048416:	89 e5                	mov    %esp,%ebp
 8048418:	51                   	push   %ecx
 8048419:	83 ec 14             	sub    $0x14,%esp
	char* arg[3]; 
	arg[0] = "./bug";
 804841c:	c7 45 ec e0 84 04 08 	movl   $0x80484e0,-0x14(%ebp)
	arg[1] = code; 
 8048423:	c7 45 f0 1c a0 04 08 	movl   $0x804a01c,-0x10(%ebp)
	arg[2] = NULL;
 804842a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	execve(arg[0], arg, NULL); 
 8048431:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048434:	83 ec 04             	sub    $0x4,%esp
 8048437:	6a 00                	push   $0x0
 8048439:	8d 55 ec             	lea    -0x14(%ebp),%edx
 804843c:	52                   	push   %edx
 804843d:	50                   	push   %eax
 804843e:	e8 ad fe ff ff       	call   80482f0 <execve@plt>
 8048443:	83 c4 10             	add    $0x10,%esp
	return 0;
 8048446:	b8 00 00 00 00       	mov    $0x0,%eax
}
 804844b:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 804844e:	c9                   	leave  
 804844f:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048452:	c3                   	ret    
 8048453:	66 90                	xchg   %ax,%ax
 8048455:	66 90                	xchg   %ax,%ax
 8048457:	66 90                	xchg   %ax,%ax
 8048459:	66 90                	xchg   %ax,%ax
 804845b:	66 90                	xchg   %ax,%ax
 804845d:	66 90                	xchg   %ax,%ax
 804845f:	90                   	nop

08048460 <__libc_csu_init>:
 8048460:	55                   	push   %ebp
 8048461:	57                   	push   %edi
 8048462:	56                   	push   %esi
 8048463:	53                   	push   %ebx
 8048464:	e8 d7 fe ff ff       	call   8048340 <__x86.get_pc_thunk.bx>
 8048469:	81 c3 97 1b 00 00    	add    $0x1b97,%ebx
 804846f:	83 ec 0c             	sub    $0xc,%esp
 8048472:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8048476:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804847c:	e8 2b fe ff ff       	call   80482ac <_init>
 8048481:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048487:	29 c6                	sub    %eax,%esi
 8048489:	c1 fe 02             	sar    $0x2,%esi
 804848c:	85 f6                	test   %esi,%esi
 804848e:	74 25                	je     80484b5 <__libc_csu_init+0x55>
 8048490:	31 ff                	xor    %edi,%edi
 8048492:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048498:	83 ec 04             	sub    $0x4,%esp
 804849b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804849f:	ff 74 24 2c          	pushl  0x2c(%esp)
 80484a3:	55                   	push   %ebp
 80484a4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80484ab:	83 c7 01             	add    $0x1,%edi
 80484ae:	83 c4 10             	add    $0x10,%esp
 80484b1:	39 f7                	cmp    %esi,%edi
 80484b3:	75 e3                	jne    8048498 <__libc_csu_init+0x38>
 80484b5:	83 c4 0c             	add    $0xc,%esp
 80484b8:	5b                   	pop    %ebx
 80484b9:	5e                   	pop    %esi
 80484ba:	5f                   	pop    %edi
 80484bb:	5d                   	pop    %ebp
 80484bc:	c3                   	ret    
 80484bd:	8d 76 00             	lea    0x0(%esi),%esi

080484c0 <__libc_csu_fini>:
 80484c0:	f3 c3                	repz ret 

Disassembly of section .fini:

080484c4 <_fini>:
 80484c4:	53                   	push   %ebx
 80484c5:	83 ec 08             	sub    $0x8,%esp
 80484c8:	e8 73 fe ff ff       	call   8048340 <__x86.get_pc_thunk.bx>
 80484cd:	81 c3 33 1b 00 00    	add    $0x1b33,%ebx
 80484d3:	83 c4 08             	add    $0x8,%esp
 80484d6:	5b                   	pop    %ebx
 80484d7:	c3                   	ret    
