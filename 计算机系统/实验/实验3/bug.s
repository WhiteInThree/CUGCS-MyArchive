
bug：     文件格式 elf32-i386


Disassembly of section .init:

080482ec <_init>:
 80482ec:	53                   	push   %ebx
 80482ed:	83 ec 08             	sub    $0x8,%esp
 80482f0:	e8 ab 00 00 00       	call   80483a0 <__x86.get_pc_thunk.bx>
 80482f5:	81 c3 0b 1d 00 00    	add    $0x1d0b,%ebx
 80482fb:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048301:	85 c0                	test   %eax,%eax
 8048303:	74 05                	je     804830a <_init+0x1e>
 8048305:	e8 56 00 00 00       	call   8048360 <__libc_start_main@plt+0x10>
 804830a:	83 c4 08             	add    $0x8,%esp
 804830d:	5b                   	pop    %ebx
 804830e:	c3                   	ret    

Disassembly of section .plt:

08048310 <printf@plt-0x10>:
 8048310:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048316:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804831c:	00 00                	add    %al,(%eax)
	...

08048320 <printf@plt>:
 8048320:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048326:	68 00 00 00 00       	push   $0x0
 804832b:	e9 e0 ff ff ff       	jmp    8048310 <_init+0x24>

08048330 <strcpy@plt>:
 8048330:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048336:	68 08 00 00 00       	push   $0x8
 804833b:	e9 d0 ff ff ff       	jmp    8048310 <_init+0x24>

08048340 <puts@plt>:
 8048340:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048346:	68 10 00 00 00       	push   $0x10
 804834b:	e9 c0 ff ff ff       	jmp    8048310 <_init+0x24>

08048350 <__libc_start_main@plt>:
 8048350:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048356:	68 18 00 00 00       	push   $0x18
 804835b:	e9 b0 ff ff ff       	jmp    8048310 <_init+0x24>

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
 804837b:	68 60 85 04 08       	push   $0x8048560
 8048380:	68 00 85 04 08       	push   $0x8048500
 8048385:	51                   	push   %ecx
 8048386:	56                   	push   %esi
 8048387:	68 b3 84 04 08       	push   $0x80484b3
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
 80483b0:	b8 27 a0 04 08       	mov    $0x804a027,%eax
 80483b5:	2d 24 a0 04 08       	sub    $0x804a024,%eax
 80483ba:	83 f8 06             	cmp    $0x6,%eax
 80483bd:	76 1a                	jbe    80483d9 <deregister_tm_clones+0x29>
 80483bf:	b8 00 00 00 00       	mov    $0x0,%eax
 80483c4:	85 c0                	test   %eax,%eax
 80483c6:	74 11                	je     80483d9 <deregister_tm_clones+0x29>
 80483c8:	55                   	push   %ebp
 80483c9:	89 e5                	mov    %esp,%ebp
 80483cb:	83 ec 14             	sub    $0x14,%esp
 80483ce:	68 24 a0 04 08       	push   $0x804a024
 80483d3:	ff d0                	call   *%eax
 80483d5:	83 c4 10             	add    $0x10,%esp
 80483d8:	c9                   	leave  
 80483d9:	f3 c3                	repz ret 
 80483db:	90                   	nop
 80483dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080483e0 <register_tm_clones>:
 80483e0:	b8 24 a0 04 08       	mov    $0x804a024,%eax
 80483e5:	2d 24 a0 04 08       	sub    $0x804a024,%eax
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
 8048408:	68 24 a0 04 08       	push   $0x804a024
 804840d:	ff d2                	call   *%edx
 804840f:	83 c4 10             	add    $0x10,%esp
 8048412:	c9                   	leave  
 8048413:	f3 c3                	repz ret 
 8048415:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048419:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048420 <__do_global_dtors_aux>:
 8048420:	80 3d 24 a0 04 08 00 	cmpb   $0x0,0x804a024
 8048427:	75 13                	jne    804843c <__do_global_dtors_aux+0x1c>
 8048429:	55                   	push   %ebp
 804842a:	89 e5                	mov    %esp,%ebp
 804842c:	83 ec 08             	sub    $0x8,%esp
 804842f:	e8 7c ff ff ff       	call   80483b0 <deregister_tm_clones>
 8048434:	c6 05 24 a0 04 08 01 	movb   $0x1,0x804a024
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

0804846b <outputs>:
#include <stdio.h> 
#include <string.h>
void outputs(char *str)
{
 804846b:	55                   	push   %ebp
 804846c:	89 e5                	mov    %esp,%ebp
 804846e:	83 ec 18             	sub    $0x18,%esp
	char buffer[16]; 
	strcpy(buffer, str); 
 8048471:	83 ec 08             	sub    $0x8,%esp
 8048474:	ff 75 08             	pushl  0x8(%ebp)
 8048477:	8d 45 e8             	lea    -0x18(%ebp),%eax
 804847a:	50                   	push   %eax
 804847b:	e8 b0 fe ff ff       	call   8048330 <strcpy@plt>
 8048480:	83 c4 10             	add    $0x10,%esp
	printf("% s\n", buffer);
 8048483:	83 ec 08             	sub    $0x8,%esp
 8048486:	8d 45 e8             	lea    -0x18(%ebp),%eax
 8048489:	50                   	push   %eax
 804848a:	68 80 85 04 08       	push   $0x8048580
 804848f:	e8 8c fe ff ff       	call   8048320 <printf@plt>
 8048494:	83 c4 10             	add    $0x10,%esp
}
 8048497:	90                   	nop
 8048498:	c9                   	leave  
 8048499:	c3                   	ret    

0804849a <hacker>:
void hacker(void)
{
 804849a:	55                   	push   %ebp
 804849b:	89 e5                	mov    %esp,%ebp
 804849d:	83 ec 08             	sub    $0x8,%esp
	printf("being hacked \n");
 80484a0:	83 ec 0c             	sub    $0xc,%esp
 80484a3:	68 85 85 04 08       	push   $0x8048585
 80484a8:	e8 93 fe ff ff       	call   8048340 <puts@plt>
 80484ad:	83 c4 10             	add    $0x10,%esp
}
 80484b0:	90                   	nop
 80484b1:	c9                   	leave  
 80484b2:	c3                   	ret    

080484b3 <main>:
int main(int argc, char* argv[])
{
 80484b3:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80484b7:	83 e4 f0             	and    $0xfffffff0,%esp
 80484ba:	ff 71 fc             	pushl  -0x4(%ecx)
 80484bd:	55                   	push   %ebp
 80484be:	89 e5                	mov    %esp,%ebp
 80484c0:	51                   	push   %ecx
 80484c1:	83 ec 04             	sub    $0x4,%esp
 80484c4:	89 c8                	mov    %ecx,%eax
	outputs(argv[1]);
 80484c6:	8b 40 04             	mov    0x4(%eax),%eax
 80484c9:	83 c0 04             	add    $0x4,%eax
 80484cc:	8b 00                	mov    (%eax),%eax
 80484ce:	83 ec 0c             	sub    $0xc,%esp
 80484d1:	50                   	push   %eax
 80484d2:	e8 94 ff ff ff       	call   804846b <outputs>
 80484d7:	83 c4 10             	add    $0x10,%esp
	printf("yes\n");
 80484da:	83 ec 0c             	sub    $0xc,%esp
 80484dd:	68 93 85 04 08       	push   $0x8048593
 80484e2:	e8 59 fe ff ff       	call   8048340 <puts@plt>
 80484e7:	83 c4 10             	add    $0x10,%esp
	return 0;
 80484ea:	b8 00 00 00 00       	mov    $0x0,%eax
}
 80484ef:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80484f2:	c9                   	leave  
 80484f3:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80484f6:	c3                   	ret    
 80484f7:	66 90                	xchg   %ax,%ax
 80484f9:	66 90                	xchg   %ax,%ax
 80484fb:	66 90                	xchg   %ax,%ax
 80484fd:	66 90                	xchg   %ax,%ax
 80484ff:	90                   	nop

08048500 <__libc_csu_init>:
 8048500:	55                   	push   %ebp
 8048501:	57                   	push   %edi
 8048502:	56                   	push   %esi
 8048503:	53                   	push   %ebx
 8048504:	e8 97 fe ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 8048509:	81 c3 f7 1a 00 00    	add    $0x1af7,%ebx
 804850f:	83 ec 0c             	sub    $0xc,%esp
 8048512:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8048516:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804851c:	e8 cb fd ff ff       	call   80482ec <_init>
 8048521:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048527:	29 c6                	sub    %eax,%esi
 8048529:	c1 fe 02             	sar    $0x2,%esi
 804852c:	85 f6                	test   %esi,%esi
 804852e:	74 25                	je     8048555 <__libc_csu_init+0x55>
 8048530:	31 ff                	xor    %edi,%edi
 8048532:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048538:	83 ec 04             	sub    $0x4,%esp
 804853b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804853f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048543:	55                   	push   %ebp
 8048544:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804854b:	83 c7 01             	add    $0x1,%edi
 804854e:	83 c4 10             	add    $0x10,%esp
 8048551:	39 f7                	cmp    %esi,%edi
 8048553:	75 e3                	jne    8048538 <__libc_csu_init+0x38>
 8048555:	83 c4 0c             	add    $0xc,%esp
 8048558:	5b                   	pop    %ebx
 8048559:	5e                   	pop    %esi
 804855a:	5f                   	pop    %edi
 804855b:	5d                   	pop    %ebp
 804855c:	c3                   	ret    
 804855d:	8d 76 00             	lea    0x0(%esi),%esi

08048560 <__libc_csu_fini>:
 8048560:	f3 c3                	repz ret 

Disassembly of section .fini:

08048564 <_fini>:
 8048564:	53                   	push   %ebx
 8048565:	83 ec 08             	sub    $0x8,%esp
 8048568:	e8 33 fe ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 804856d:	81 c3 93 1a 00 00    	add    $0x1a93,%ebx
 8048573:	83 c4 08             	add    $0x8,%esp
 8048576:	5b                   	pop    %ebx
 8048577:	c3                   	ret    
