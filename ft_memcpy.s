# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/14 15:53:10 by neprocur          #+#    #+#              #
#    Updated: 2015/04/14 17:00:37 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_memcpy

_ft_memcpy:
		push	rdi
		mov		rcx, rdx
		cld
		rep		movsb
		pop		rax
		ret
