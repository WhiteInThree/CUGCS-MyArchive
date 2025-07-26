08049654 <func4>:
 8049654:	55                   	push   %ebp
 8049655:	89 e5                	mov    %esp,%ebp
 8049657:	83 ec 18             	sub    $0x18,%esp
 804965a:	8b 55 0c             	mov    0xc(%ebp),%edx
 804965d:	8b 45 10             	mov    0x10(%ebp),%eax
 8049660:	01 d0                	add    %edx,%eax
 8049662:	89 c2                	mov    %eax,%edx
 8049664:	c1 ea 1f             	shr    $0x1f,%edx
 8049667:	01 d0                	add    %edx,%eax
 8049669:	d1 f8                	sar    %eax
 804966b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804966e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049671:	3b 45 10             	cmp    0x10(%ebp),%eax
 8049674:	7c 13                	jl     8049689 <func4+0x35>
 8049676:	8b 45 10             	mov    0x10(%ebp),%eax
 8049679:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049680:	8b 45 08             	mov    0x8(%ebp),%eax
 8049683:	01 d0                	add    %edx,%eax
 8049685:	8b 00                	mov    (%eax),%eax
 8049687:	eb 3c                	jmp    80496c5 <func4+0x71>
 8049689:	83 ec 04             	sub    $0x4,%esp
 804968c:	ff 75 f4             	pushl  -0xc(%ebp)
 804968f:	ff 75 0c             	pushl  0xc(%ebp)
 8049692:	ff 75 08             	pushl  0x8(%ebp)
 8049695:	e8 ba ff ff ff       	call   8049654 <func4>
 804969a:	83 c4 10             	add    $0x10,%esp
 804969d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80496a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496a3:	83 c0 01             	add    $0x1,%eax
 80496a6:	83 ec 04             	sub    $0x4,%esp
 80496a9:	ff 75 10             	pushl  0x10(%ebp)
 80496ac:	50                   	push   %eax
 80496ad:	ff 75 08             	pushl  0x8(%ebp)
 80496b0:	e8 9f ff ff ff       	call   8049654 <func4>
 80496b5:	83 c4 10             	add    $0x10,%esp
 80496b8:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80496bb:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80496be:	39 45 f0             	cmp    %eax,-0x10(%ebp)
 80496c1:	0f 4d 45 f0          	cmovge -0x10(%ebp),%eax
 80496c5:	c9                   	leave  
 80496c6:	c3                   	ret  
