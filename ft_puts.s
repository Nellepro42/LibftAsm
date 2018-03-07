# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/16 01:01:06 by neprocur          #+#    #+#              #
#    Updated: 2015/04/21 22:12:50 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_puts

section .text

_ft_puts:
	mov		rsi, rdi		

_next:
	cmp		[rsi], byte 0x0		
	je		_end				
	mov     rax, 0x2000004 		
	mov     rdi, 1
	mov     rdx, 1	
	syscall						
	inc		rsi
	jmp		_next

_end:
	push	0x0A
	mov		rsi, rsp
	mov     rax, 0x2000004
	mov     rdi, 1
	mov     rdx, 1
	syscall

	pop		rsi
	mov     rax, 0x0A
	mov		rdi,0
	ret

