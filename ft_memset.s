# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/14 15:51:02 by neprocur          #+#    #+#              #
#    Updated: 2015/04/19 05:25:52 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_memset

section .text

_ft_memset:
		push	rdi
		mov	 	rcx, rdx
		mov		rax, rsi
		cld
		rep		stosb
		pop		rax
		ret
