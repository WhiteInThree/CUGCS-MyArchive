080497e5 <phase_5>:
 80497e5:	55                   	push   %ebp
 80497e6:	89 e5                	mov    %esp,%ebp
 80497e8:	83 ec 28             	sub    $0x28,%esp
 80497eb:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 80497ee:	50                   	push   %eax
 80497ef:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80497f2:	50                   	push   %eax
 80497f3:	68 0f a2 04 08       	push   $0x804a20f
 80497f8:	ff 75 08             	pushl  0x8(%ebp)
 80497fb:	e8 d0 f8 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049800:	83 c4 10             	add    $0x10,%esp
 8049803:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049806:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 804980a:	7f 0c                	jg     8049818 <phase_5+0x33>
 804980c:	e8 b8 06 00 00       	call   8049ec9 <explode_bomb>
 8049811:	b8 00 00 00 00       	mov    $0x0,%eax
 8049816:	eb 57                	jmp    804986f <phase_5+0x8a>
 8049818:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804981b:	83 e0 0f             	and    $0xf,%eax
 804981e:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049821:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049828:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804982f:	eb 17                	jmp    8049848 <phase_5+0x63>
 8049831:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049835:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049838:	8b 04 85 00 c2 04 08 	mov    0x804c200(,%eax,4),%eax
 804983f:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049842:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049845:	01 45 f0             	add    %eax,-0x10(%ebp)
 8049848:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804984b:	83 f8 0f             	cmp    $0xf,%eax
 804984e:	75 e1                	jne    8049831 <phase_5+0x4c>
 8049850:	83 7d f4 06          	cmpl   $0x6,-0xc(%ebp)
 8049854:	75 08                	jne    804985e <phase_5+0x79>
 8049856:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049859:	39 45 f0             	cmp    %eax,-0x10(%ebp)
 804985c:	74 0c                	je     804986a <phase_5+0x85>
 804985e:	e8 66 06 00 00       	call   8049ec9 <explode_bomb>
 8049863:	b8 00 00 00 00       	mov    $0x0,%eax
 8049868:	eb 05                	jmp    804986f <phase_5+0x8a>
 804986a:	b8 01 00 00 00       	mov    $0x1,%eax
 804986f:	c9                   	leave  
 8049870:	c3                   	ret  
