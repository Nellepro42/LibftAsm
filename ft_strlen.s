# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/14 15:51:56 by neprocur          #+#    #+#              #
#    Updated: 2015/04/21 18:19:58 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
		global	_ft_strlen

_ft_strlen:
		cld
		mov		rcx, -1
		xor		rax, rax
		repne	scasb
		mov		rax, -2
		sub		rax, rcx
		ret
