08049484 <phase_1>:
 8049484:	55                   	push   %ebp
 8049485:	89 e5                	mov    %esp,%ebp
 8049487:	83 ec 28             	sub    $0x28,%esp
 804948a:	c7 45 f4 a1 84 76 09 	movl   $0x97684a1,-0xc(%ebp)
 8049491:	db 45 f4             	fildl  -0xc(%ebp)
 8049494:	dd 5d e8             	fstpl  -0x18(%ebp)
 8049497:	8d 45 e0             	lea    -0x20(%ebp),%eax
 804949a:	50                   	push   %eax
 804949b:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804949e:	50                   	push   %eax
 804949f:	68 0f a2 04 08       	push   $0x804a20f
 80494a4:	ff 75 08             	pushl  0x8(%ebp)
 80494a7:	e8 24 fc ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 80494ac:	83 c4 10             	add    $0x10,%esp
 80494af:	83 f8 02             	cmp    $0x2,%eax
 80494b2:	74 0c                	je     80494c0 <phase_1+0x3c>
 80494b4:	e8 10 0a 00 00       	call   8049ec9 <explode_bomb>
 80494b9:	b8 00 00 00 00       	mov    $0x0,%eax
 80494be:	eb 2c                	jmp    80494ec <phase_1+0x68>
 80494c0:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80494c3:	8b 10                	mov    (%eax),%edx
 80494c5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80494c8:	39 c2                	cmp    %eax,%edx
 80494ca:	75 0f                	jne    80494db <phase_1+0x57>
 80494cc:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80494cf:	83 c0 04             	add    $0x4,%eax
 80494d2:	8b 10                	mov    (%eax),%edx
 80494d4:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80494d7:	39 c2                	cmp    %eax,%edx
 80494d9:	74 0c                	je     80494e7 <phase_1+0x63>
 80494db:	e8 e9 09 00 00       	call   8049ec9 <explode_bomb>
 80494e0:	b8 00 00 00 00       	mov    $0x0,%eax
 80494e5:	eb 05                	jmp    80494ec <phase_1+0x68>
 80494e7:	b8 01 00 00 00       	mov    $0x1,%eax
 80494ec:	c9                   	leave  
 80494ed:	c3                   	ret
