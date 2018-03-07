# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/22 00:29:43 by neprocur          #+#    #+#              #
#    Updated: 2015/04/22 00:31:45 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global	_ft_isupper

_ft_isupper:
		cmp		rdi, 0x0
		je		_end
		cmp		rdi, 0x41
		jl		_end
		cmp		rdi, 0x5a
		jg		_end
		mov		rax, 0x01
		ret

_end:
	mov		rax, 0x00
	ret
