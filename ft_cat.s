# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/17 18:17:29 by neprocur          #+#    #+#              #
#    Updated: 2015/04/21 22:33:24 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_cat

	section .bss

buffer:
	resb 512

	section .text

_ft_cat:
	mov 	rcx, rdi
	cmp 	rdi, -1			;rdi = file descriptor
	jle 	_end

	c_while:
	mov 	rax, 0x2000003		;syscall read
	lea 	rsi, [rel buffer]		;buffer
	lea 	rdx, [512]
	mov 	rcx, rdi
	push	rcx
	syscall
	pop		rcx
	jc 		_end
	cmp 	rax, 0
	jle 	_end
	mov 	rdi, 1
	lea 	rsi, [rel buffer]		;buffer
	mov 	rdx, rax
	mov 	rax, 0x2000004		;syscall write
	push	rcx
	syscall
	pop		rdi
	cmp		rax, -1
	jle		_end
	jmp		c_while

_end:
	ret
