# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/14 15:49:39 by neprocur          #+#    #+#              #
#    Updated: 2015/04/18 22:24:29 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global	_ft_isalpha

_ft_isalpha:
	mov		rax, 0x01
	cmp		rdi, 0x41
	jl		_ret
	cmp		rdi, 0x5b
	jge		_next
	ret

_next:
	cmp		rdi, 0x61
	jl		_ret
	cmp		rdi, 0x7a
	jg		_ret
	ret

_ret:
	mov rax, 0x00
	ret
