08049579 <phase_3>:
 8049579:	55                   	push   %ebp
 804957a:	89 e5                	mov    %esp,%ebp
 804957c:	83 ec 18             	sub    $0x18,%esp
 804957f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049586:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804958d:	8d 45 e8             	lea    -0x18(%ebp),%eax
 8049590:	50                   	push   %eax
 8049591:	8d 45 ec             	lea    -0x14(%ebp),%eax
 8049594:	50                   	push   %eax
 8049595:	68 0f a2 04 08       	push   $0x804a20f
 804959a:	ff 75 08             	pushl  0x8(%ebp)
 804959d:	e8 2e fb ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 80495a2:	83 c4 10             	add    $0x10,%esp
 80495a5:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80495a8:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
 80495ac:	7f 0f                	jg     80495bd <phase_3+0x44>
 80495ae:	e8 16 09 00 00       	call   8049ec9 <explode_bomb>
 80495b3:	b8 00 00 00 00       	mov    $0x0,%eax
 80495b8:	e9 95 00 00 00       	jmp    8049652 <phase_3+0xd9>
 80495bd:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80495c0:	2d fe 00 00 00       	sub    $0xfe,%eax
 80495c5:	83 f8 09             	cmp    $0x9,%eax
 80495c8:	77 63                	ja     804962d <phase_3+0xb4>
 80495ca:	8b 04 85 18 a2 04 08 	mov    0x804a218(,%eax,4),%eax
 80495d1:	ff e0                	jmp    *%eax
 80495d3:	c7 45 f4 bd 00 00 00 	movl   $0xbd,-0xc(%ebp)
 80495da:	eb 5d                	jmp    8049639 <phase_3+0xc0>
 80495dc:	c7 45 f4 bd 00 00 00 	movl   $0xbd,-0xc(%ebp)
 80495e3:	eb 54                	jmp    8049639 <phase_3+0xc0>
 80495e5:	c7 45 f4 e5 03 00 00 	movl   $0x3e5,-0xc(%ebp)
 80495ec:	eb 4b                	jmp    8049639 <phase_3+0xc0>
 80495ee:	c7 45 f4 bd 00 00 00 	movl   $0xbd,-0xc(%ebp)
 80495f5:	eb 42                	jmp    8049639 <phase_3+0xc0>
 80495f7:	c7 45 f4 e5 03 00 00 	movl   $0x3e5,-0xc(%ebp)
 80495fe:	eb 39                	jmp    8049639 <phase_3+0xc0>
 8049600:	c7 45 f4 bd 00 00 00 	movl   $0xbd,-0xc(%ebp)
 8049607:	eb 30                	jmp    8049639 <phase_3+0xc0>
 8049609:	c7 45 f4 e5 03 00 00 	movl   $0x3e5,-0xc(%ebp)
 8049610:	eb 27                	jmp    8049639 <phase_3+0xc0>
 8049612:	c7 45 f4 e5 03 00 00 	movl   $0x3e5,-0xc(%ebp)
 8049619:	eb 1e                	jmp    8049639 <phase_3+0xc0>
 804961b:	c7 45 f4 bd 00 00 00 	movl   $0xbd,-0xc(%ebp)
 8049622:	eb 15                	jmp    8049639 <phase_3+0xc0>
 8049624:	c7 45 f4 e5 03 00 00 	movl   $0x3e5,-0xc(%ebp)
 804962b:	eb 0c                	jmp    8049639 <phase_3+0xc0>
 804962d:	e8 97 08 00 00       	call   8049ec9 <explode_bomb>
 8049632:	b8 00 00 00 00       	mov    $0x0,%eax
 8049637:	eb 19                	jmp    8049652 <phase_3+0xd9>
 8049639:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804963c:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 804963f:	74 0c                	je     804964d <phase_3+0xd4>
 8049641:	e8 83 08 00 00       	call   8049ec9 <explode_bomb>
 8049646:	b8 00 00 00 00       	mov    $0x0,%eax
 804964b:	eb 05                	jmp    8049652 <phase_3+0xd9>
 804964d:	b8 01 00 00 00       	mov    $0x1,%eax
 8049652:	c9                   	leave  
 8049653:	c3                   	ret   
