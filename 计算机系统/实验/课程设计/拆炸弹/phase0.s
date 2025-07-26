08049454 <phase_0>:
 8049454:	55                   	push   %ebp
 8049455:	89 e5                	mov    %esp,%ebp
 8049457:	83 ec 08             	sub    $0x8,%esp
 804945a:	83 ec 08             	sub    $0x8,%esp
 804945d:	68 e0 a1 04 08       	push   $0x804a1e0
 8049462:	ff 75 08             	pushl  0x8(%ebp)
 8049465:	e8 f7 07 00 00       	call   8049c61 <strings_not_equal>
 804946a:	83 c4 10             	add    $0x10,%esp
 804946d:	85 c0                	test   %eax,%eax
 804946f:	74 0c                	je     804947d <phase_0+0x29>
 8049471:	e8 53 0a 00 00       	call   8049ec9 <explode_bomb>
 8049476:	b8 00 00 00 00       	mov    $0x0,%eax
 804947b:	eb 05                	jmp    8049482 <phase_0+0x2e>
 804947d:	b8 01 00 00 00       	mov    $0x1,%eax
 8049482:	c9                   	leave  
 8049483:	c3                   	ret  
