# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_iscntrl.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/22 01:21:31 by neprocur          #+#    #+#              #
#    Updated: 2015/04/22 01:41:04 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global	_ft_iscntrl

_ft_iscntrl:
		mov		rax, 0x00
		cmp		rdi, 0x1f
		jl		_end
		cmp		rdi, 0x7f
		je		_end
		ret

_end:
		mov		rax, 0x01
		ret

