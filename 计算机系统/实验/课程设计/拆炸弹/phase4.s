080496c7 <phase_4>:
 80496c7:	55                   	push   %ebp
 80496c8:	89 e5                	mov    %esp,%ebp
 80496ca:	57                   	push   %edi
 80496cb:	56                   	push   %esi
 80496cc:	53                   	push   %ebx
 80496cd:	81 ec ac 00 00 00    	sub    $0xac,%esp
 80496d3:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
 80496d9:	bb 40 a2 04 08       	mov    $0x804a240,%ebx
 80496de:	ba 24 00 00 00       	mov    $0x24,%edx
 80496e3:	89 c7                	mov    %eax,%edi
 80496e5:	89 de                	mov    %ebx,%esi
 80496e7:	89 d1                	mov    %edx,%ecx
 80496e9:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 80496eb:	8d 85 4c ff ff ff    	lea    -0xb4(%ebp),%eax
 80496f1:	50                   	push   %eax
 80496f2:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
 80496f8:	50                   	push   %eax
 80496f9:	68 0f a2 04 08       	push   $0x804a20f
 80496fe:	ff 75 08             	pushl  0x8(%ebp)
 8049701:	e8 ca f9 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049706:	83 c4 10             	add    $0x10,%esp
 8049709:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804970c:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
 8049710:	74 0f                	je     8049721 <phase_4+0x5a>
 8049712:	e8 b2 07 00 00       	call   8049ec9 <explode_bomb>
 8049717:	b8 00 00 00 00       	mov    $0x0,%eax
 804971c:	e9 bc 00 00 00       	jmp    80497dd <phase_4+0x116>
 8049721:	8b 95 4c ff ff ff    	mov    -0xb4(%ebp),%edx
 8049727:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 804972d:	83 ec 04             	sub    $0x4,%esp
 8049730:	52                   	push   %edx
 8049731:	50                   	push   %eax
 8049732:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
 8049738:	50                   	push   %eax
 8049739:	e8 16 ff ff ff       	call   8049654 <func4>
 804973e:	83 c4 10             	add    $0x10,%esp
 8049741:	3d c8 01 00 00       	cmp    $0x1c8,%eax
 8049746:	74 0f                	je     8049757 <phase_4+0x90>
 8049748:	e8 7c 07 00 00       	call   8049ec9 <explode_bomb>
 804974d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049752:	e9 86 00 00 00       	jmp    80497dd <phase_4+0x116>
 8049757:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 804975d:	85 c0                	test   %eax,%eax
 804975f:	7e 36                	jle    8049797 <phase_4+0xd0>
 8049761:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 8049767:	8b 95 50 ff ff ff    	mov    -0xb0(%ebp),%edx
 804976d:	83 ea 01             	sub    $0x1,%edx
 8049770:	83 ec 04             	sub    $0x4,%esp
 8049773:	50                   	push   %eax
 8049774:	52                   	push   %edx
 8049775:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
 804977b:	50                   	push   %eax
 804977c:	e8 d3 fe ff ff       	call   8049654 <func4>
 8049781:	83 c4 10             	add    $0x10,%esp
 8049784:	3d c8 01 00 00       	cmp    $0x1c8,%eax
 8049789:	75 0c                	jne    8049797 <phase_4+0xd0>
 804978b:	e8 39 07 00 00       	call   8049ec9 <explode_bomb>
 8049790:	b8 00 00 00 00       	mov    $0x0,%eax
 8049795:	eb 46                	jmp    80497dd <phase_4+0x116>
 8049797:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804979d:	83 f8 22             	cmp    $0x22,%eax
 80497a0:	7f 36                	jg     80497d8 <phase_4+0x111>
 80497a2:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 80497a8:	8d 50 01             	lea    0x1(%eax),%edx
 80497ab:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 80497b1:	83 ec 04             	sub    $0x4,%esp
 80497b4:	52                   	push   %edx
 80497b5:	50                   	push   %eax
 80497b6:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
 80497bc:	50                   	push   %eax
 80497bd:	e8 92 fe ff ff       	call   8049654 <func4>
 80497c2:	83 c4 10             	add    $0x10,%esp
 80497c5:	3d c8 01 00 00       	cmp    $0x1c8,%eax
 80497ca:	75 0c                	jne    80497d8 <phase_4+0x111>
 80497cc:	e8 f8 06 00 00       	call   8049ec9 <explode_bomb>
 80497d1:	b8 00 00 00 00       	mov    $0x0,%eax
 80497d6:	eb 05                	jmp    80497dd <phase_4+0x116>
 80497d8:	b8 01 00 00 00       	mov    $0x1,%eax
 80497dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80497e0:	5b                   	pop    %ebx
 80497e1:	5e                   	pop    %esi
 80497e2:	5f                   	pop    %edi
 80497e3:	5d                   	pop    %ebp
 80497e4:	c3                   	ret    
