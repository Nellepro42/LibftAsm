# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/14 15:51:20 by neprocur          #+#    #+#              #
#    Updated: 2015/04/19 00:22:16 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global	_ft_strcat

_ft_strcat:
	mov		rax, rdi
	jmp		_loop

_loop:
	cmp		[rdi], byte 0x0
	je		_next
	inc		rdi
	jmp		_loop

_next:
	cmp		[rsi], byte 0x0
	je		_ret
	movsq
	inc		rdi
	inc		rsi
	jmp		_next

_ret:
	ret
