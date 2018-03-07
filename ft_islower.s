# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_islower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/22 00:15:53 by neprocur          #+#    #+#              #
#    Updated: 2015/04/22 00:25:51 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global	_ft_islower

_ft_islower:
		cmp		rdi, 0x0
		je		_end
		cmp		rdi, 0x61
		jl		_end
		cmp		rdi, 0x7a
		jg		_end
		mov		rax, 0x01
		ret

_end:
	mov		rax, 0x00
	ret
