080494ee <phase_2>:
 80494ee:	55                   	push   %ebp
 80494ef:	89 e5                	mov    %esp,%ebp
 80494f1:	53                   	push   %ebx
 80494f2:	83 ec 34             	sub    $0x34,%esp
 80494f5:	83 ec 04             	sub    $0x4,%esp
 80494f8:	6a 09                	push   $0x9
 80494fa:	8d 45 d0             	lea    -0x30(%ebp),%eax
 80494fd:	50                   	push   %eax
 80494fe:	ff 75 08             	pushl  0x8(%ebp)
 8049501:	e8 a1 06 00 00       	call   8049ba7 <read_n_numbers>
 8049506:	83 c4 10             	add    $0x10,%esp
 8049509:	85 c0                	test   %eax,%eax
 804950b:	75 07                	jne    8049514 <phase_2+0x26>
 804950d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049512:	eb 60                	jmp    8049574 <phase_2+0x86>
 8049514:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8049517:	3d 86 00 00 00       	cmp    $0x86,%eax
 804951c:	74 0c                	je     804952a <phase_2+0x3c>
 804951e:	e8 a6 09 00 00       	call   8049ec9 <explode_bomb>
 8049523:	b8 00 00 00 00       	mov    $0x0,%eax
 8049528:	eb 4a                	jmp    8049574 <phase_2+0x86>
 804952a:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8049531:	eb 36                	jmp    8049569 <phase_2+0x7b>
 8049533:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049536:	8b 54 85 d0          	mov    -0x30(%ebp,%eax,4),%edx
 804953a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804953d:	83 e8 01             	sub    $0x1,%eax
 8049540:	8b 4c 85 d0          	mov    -0x30(%ebp,%eax,4),%ecx
 8049544:	8b 5d f4             	mov    -0xc(%ebp),%ebx
 8049547:	b8 00 00 00 00       	mov    $0x0,%eax
 804954c:	29 d8                	sub    %ebx,%eax
 804954e:	01 c0                	add    %eax,%eax
 8049550:	01 c8                	add    %ecx,%eax
 8049552:	83 c0 01             	add    $0x1,%eax
 8049555:	39 c2                	cmp    %eax,%edx
 8049557:	74 0c                	je     8049565 <phase_2+0x77>
 8049559:	e8 6b 09 00 00       	call   8049ec9 <explode_bomb>
 804955e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049563:	eb 0f                	jmp    8049574 <phase_2+0x86>
 8049565:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049569:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
 804956d:	7e c4                	jle    8049533 <phase_2+0x45>
 804956f:	b8 01 00 00 00       	mov    $0x1,%eax
 8049574:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049577:	c9                   	leave  
 8049578:	c3                   	ret  
