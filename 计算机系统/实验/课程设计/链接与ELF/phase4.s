
phase4.o：     文件格式 elf32-i386


Disassembly of section .text:

00000000 <qWeBuqQIOr>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	90                   	nop
   4:	90                   	nop
   5:	90                   	nop
   6:	90                   	nop
   7:	90                   	nop
   8:	90                   	nop
   9:	90                   	nop
   a:	90                   	nop
   b:	90                   	nop
   c:	90                   	nop
   d:	90                   	nop
   e:	90                   	nop
   f:	90                   	nop
  10:	90                   	nop
  11:	90                   	nop
  12:	90                   	nop
  13:	90                   	nop
  14:	90                   	nop
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop
  18:	90                   	nop
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop
  1c:	90                   	nop
  1d:	90                   	nop
  1e:	90                   	nop
  1f:	90                   	nop
  20:	90                   	nop
  21:	90                   	nop
  22:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  27:	5d                   	pop    %ebp
  28:	c3                   	ret    

00000029 <do_phase>:
  29:	55                   	push   %ebp
  2a:	89 e5                	mov    %esp,%ebp
  2c:	83 ec 28             	sub    $0x28,%esp
  2f:	c7 45 e6 53 4e 58 47 	movl   $0x47584e53,-0x1a(%ebp)
  36:	c7 45 ea 4a 54 43 46 	movl   $0x4643544a,-0x16(%ebp)
  3d:	66 c7 45 ee 50 00    	movw   $0x50,-0x12(%ebp)
  43:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  4a:	e9 e0 00 00 00       	jmp    12f <do_phase+0x106>
  4f:	8d 55 e6             	lea    -0x1a(%ebp),%edx
  52:	8b 45 f0             	mov    -0x10(%ebp),%eax
  55:	01 d0                	add    %edx,%eax
  57:	0f b6 00             	movzbl (%eax),%eax
  5a:	88 45 f7             	mov    %al,-0x9(%ebp)
  5d:	0f be 45 f7          	movsbl -0x9(%ebp),%eax
  61:	83 e8 41             	sub    $0x41,%eax
  64:	83 f8 19             	cmp    $0x19,%eax
  67:	0f 87 b0 00 00 00    	ja     11d <do_phase+0xf4>
  6d:	8b 04 85 04 00 00 00 	mov    0x4(,%eax,4),%eax
  74:	ff e0                	jmp    *%eax
  76:	c6 45 f7 38          	movb   $0x38,-0x9(%ebp)
  7a:	e9 9e 00 00 00       	jmp    11d <do_phase+0xf4>
  7f:	c6 45 f7 65          	movb   $0x65,-0x9(%ebp)
  83:	e9 95 00 00 00       	jmp    11d <do_phase+0xf4>
  88:	c6 45 f7 35          	movb   $0x35,-0x9(%ebp)
  8c:	e9 8c 00 00 00       	jmp    11d <do_phase+0xf4>
  91:	c6 45 f7 39          	movb   $0x39,-0x9(%ebp)
  95:	e9 83 00 00 00       	jmp    11d <do_phase+0xf4>
  9a:	c6 45 f7 6d          	movb   $0x6d,-0x9(%ebp)
  9e:	eb 7d                	jmp    11d <do_phase+0xf4>
  a0:	c6 45 f7 6d          	movb   $0x6d,-0x9(%ebp)
  a4:	eb 77                	jmp    11d <do_phase+0xf4>
  a6:	c6 45 f7 4c          	movb   $0x4c,-0x9(%ebp)
  aa:	eb 71                	jmp    11d <do_phase+0xf4>
  ac:	c6 45 f7 73          	movb   $0x73,-0x9(%ebp)
  b0:	eb 6b                	jmp    11d <do_phase+0xf4>
  b2:	c6 45 f7 45          	movb   $0x45,-0x9(%ebp)
  b6:	eb 65                	jmp    11d <do_phase+0xf4>
  b8:	c6 45 f7 37          	movb   $0x37,-0x9(%ebp)
  bc:	eb 5f                	jmp    11d <do_phase+0xf4>
  be:	c6 45 f7 42          	movb   $0x42,-0x9(%ebp)
  c2:	eb 59                	jmp    11d <do_phase+0xf4>
  c4:	c6 45 f7 77          	movb   $0x77,-0x9(%ebp)
  c8:	eb 53                	jmp    11d <do_phase+0xf4>
  ca:	c6 45 f7 36          	movb   $0x36,-0x9(%ebp)
  ce:	eb 4d                	jmp    11d <do_phase+0xf4>
  d0:	c6 45 f7 3a          	movb   $0x3a,-0x9(%ebp)
  d4:	eb 47                	jmp    11d <do_phase+0xf4>
  d6:	c6 45 f7 5b          	movb   $0x5b,-0x9(%ebp)
  da:	eb 41                	jmp    11d <do_phase+0xf4>
  dc:	c6 45 f7 63          	movb   $0x63,-0x9(%ebp)
  e0:	eb 3b                	jmp    11d <do_phase+0xf4>
  e2:	c6 45 f7 5b          	movb   $0x5b,-0x9(%ebp)
  e6:	eb 35                	jmp    11d <do_phase+0xf4>
  e8:	c6 45 f7 33          	movb   $0x33,-0x9(%ebp)
  ec:	eb 2f                	jmp    11d <do_phase+0xf4>
  ee:	c6 45 f7 55          	movb   $0x55,-0x9(%ebp)
  f2:	eb 29                	jmp    11d <do_phase+0xf4>
  f4:	c6 45 f7 77          	movb   $0x77,-0x9(%ebp)
  f8:	eb 23                	jmp    11d <do_phase+0xf4>
  fa:	c6 45 f7 32          	movb   $0x32,-0x9(%ebp)
  fe:	eb 1d                	jmp    11d <do_phase+0xf4>
 100:	c6 45 f7 4e          	movb   $0x4e,-0x9(%ebp)
 104:	eb 17                	jmp    11d <do_phase+0xf4>
 106:	c6 45 f7 30          	movb   $0x30,-0x9(%ebp)
 10a:	eb 11                	jmp    11d <do_phase+0xf4>
 10c:	c6 45 f7 31          	movb   $0x31,-0x9(%ebp)
 110:	eb 0b                	jmp    11d <do_phase+0xf4>
 112:	c6 45 f7 34          	movb   $0x34,-0x9(%ebp)
 116:	eb 05                	jmp    11d <do_phase+0xf4>
 118:	c6 45 f7 67          	movb   $0x67,-0x9(%ebp)
 11c:	90                   	nop
 11d:	8d 55 dc             	lea    -0x24(%ebp),%edx
 120:	8b 45 f0             	mov    -0x10(%ebp),%eax
 123:	01 c2                	add    %eax,%edx
 125:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 129:	88 02                	mov    %al,(%edx)
 12b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 12f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 132:	83 f8 08             	cmp    $0x8,%eax
 135:	0f 86 14 ff ff ff    	jbe    4f <do_phase+0x26>
 13b:	8d 55 dc             	lea    -0x24(%ebp),%edx
 13e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 141:	01 d0                	add    %edx,%eax
 143:	c6 00 00             	movb   $0x0,(%eax)
 146:	83 ec 0c             	sub    $0xc,%esp
 149:	8d 45 dc             	lea    -0x24(%ebp),%eax
 14c:	50                   	push   %eax
 14d:	e8 fc ff ff ff       	call   14e <do_phase+0x125>
 152:	83 c4 10             	add    $0x10,%esp
 155:	90                   	nop
 156:	c9                   	leave  
 157:	c3                   	ret    
