
phase2.o：     文件格式 elf32-i386


Disassembly of section .text:

00000000 <OOtZxJJdNH>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	c7 45 df 32 68 56 44 	movl   $0x44566832,-0x21(%ebp)
   d:	c7 45 e3 69 33 71 74 	movl   $0x74713369,-0x1d(%ebp)
  14:	c7 45 e7 64 69 4b 79 	movl   $0x794b6964,-0x19(%ebp)
  1b:	c7 45 eb 4d 54 6f 77 	movl   $0x776f544d,-0x15(%ebp)
  22:	c7 45 ef 53 48 37 09 	movl   $0x9374853,-0x11(%ebp)
  29:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
  2d:	83 ec 0c             	sub    $0xc,%esp
  30:	8d 45 df             	lea    -0x21(%ebp),%eax
  33:	50                   	push   %eax
  34:	e8 fc ff ff ff       	call   35 <OOtZxJJdNH+0x35>
  39:	83 c4 10             	add    $0x10,%esp
  3c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  3f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  43:	78 15                	js     5a <OOtZxJJdNH+0x5a>
  45:	8b 45 08             	mov    0x8(%ebp),%eax
  48:	3b 45 f4             	cmp    -0xc(%ebp),%eax
  4b:	7d 0d                	jge    5a <OOtZxJJdNH+0x5a>
  4d:	8d 55 df             	lea    -0x21(%ebp),%edx
  50:	8b 45 08             	mov    0x8(%ebp),%eax
  53:	01 d0                	add    %edx,%eax
  55:	0f b6 00             	movzbl (%eax),%eax
  58:	eb 05                	jmp    5f <OOtZxJJdNH+0x5f>
  5a:	b8 00 00 00 00       	mov    $0x0,%eax
  5f:	c9                   	leave  
  60:	c3                   	ret    

00000061 <kfSvKnbh>:
  61:	55                   	push   %ebp
  62:	89 e5                	mov    %esp,%ebp
  64:	83 ec 08             	sub    $0x8,%esp
  67:	83 ec 08             	sub    $0x8,%esp
  6a:	68 02 00 00 00       	push   $0x2
  6f:	ff 75 08             	pushl  0x8(%ebp)
  72:	e8 fc ff ff ff       	call   73 <kfSvKnbh+0x12>
  77:	83 c4 10             	add    $0x10,%esp
  7a:	85 c0                	test   %eax,%eax
  7c:	75 10                	jne    8e <kfSvKnbh+0x2d>
  7e:	83 ec 0c             	sub    $0xc,%esp
  81:	ff 75 0c             	pushl  0xc(%ebp)
  84:	e8 fc ff ff ff       	call   85 <kfSvKnbh+0x24>
  89:	83 c4 10             	add    $0x10,%esp
  8c:	eb 01                	jmp    8f <kfSvKnbh+0x2e>
  8e:	90                   	nop
  8f:	c9                   	leave  
  90:	c3                   	ret    

00000091 <do_phase>:
  91:	55                   	push   %ebp
  92:	89 e5                	mov    %esp,%ebp
  94:	90                   	nop
  95:	90                   	nop
  96:	90                   	nop
  97:	90                   	nop
  98:	90                   	nop
  99:	90                   	nop
  9a:	90                   	nop
  9b:	90                   	nop
  9c:	90                   	nop
  9d:	90                   	nop
  9e:	90                   	nop
  9f:	90                   	nop
  a0:	90                   	nop
  a1:	90                   	nop
  a2:	90                   	nop
  a3:	90                   	nop
  a4:	90                   	nop
  a5:	90                   	nop
  a6:	90                   	nop
  a7:	90                   	nop
  a8:	90                   	nop
  a9:	90                   	nop
  aa:	90                   	nop
  ab:	90                   	nop
  ac:	90                   	nop
  ad:	90                   	nop
  ae:	90                   	nop
  af:	90                   	nop
  b0:	90                   	nop
  b1:	90                   	nop
  b2:	90                   	nop
  b3:	90                   	nop
  b4:	90                   	nop
  b5:	90                   	nop
  b6:	90                   	nop
  b7:	90                   	nop
  b8:	90                   	nop
  b9:	90                   	nop
  ba:	90                   	nop
  bb:	90                   	nop
  bc:	90                   	nop
  bd:	90                   	nop
  be:	90                   	nop
  bf:	90                   	nop
  c0:	90                   	nop
  c1:	90                   	nop
  c2:	90                   	nop
  c3:	90                   	nop
  c4:	90                   	nop
  c5:	90                   	nop
  c6:	90                   	nop
  c7:	90                   	nop
  c8:	90                   	nop
  c9:	90                   	nop
  ca:	90                   	nop
  cb:	90                   	nop
  cc:	90                   	nop
  cd:	90                   	nop
  ce:	90                   	nop
  cf:	90                   	nop
  d0:	90                   	nop
  d1:	90                   	nop
  d2:	90                   	nop
  d3:	90                   	nop
  d4:	90                   	nop
  d5:	5d                   	pop    %ebp
  d6:	c3                   	ret    
