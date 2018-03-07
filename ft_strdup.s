# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/14 17:03:36 by neprocur          #+#    #+#              #
#    Updated: 2015/04/21 19:59:28 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global	_ft_strdup
		extern	_ft_strlen
		extern	_malloc
		extern	_ft_memcpy

_ft_strdup:
		push	rbp
		mov		rbp, rsp
		push	rdi
		call	_ft_strlen
		mov		rdi, rax
		add		rdi, 1
		push	rdi
		call	_malloc
		pop		rdx
		pop		rsi
		mov		rdi, rax
		call	_ft_memcpy
		leave
		ret
