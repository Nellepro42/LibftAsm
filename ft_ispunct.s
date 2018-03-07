# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_ispunct.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/22 00:38:43 by neprocur          #+#    #+#              #
#    Updated: 2015/04/22 01:17:47 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
		global	_ft_ispunct

_ft_ispunct:
		cmp		rdi, 0x21
		jl		_end
		cmp		rdi, 0x2f
		jg		_next
		mov		rax, 0x01
		ret

_next:
		cmp		rdi, 0x3a
		jl		_end
		cmp		rdi, 0x40
		jg		_after
		mov		rax, 0x01
		ret

_after:
		cmp		rdi, 0x5b
		jl		_end
		cmp		rdi, 0x60
		jg		_last
		mov		rax, 0x01
		ret

_last:
		cmp		rdi, 0x7b
		jl		_end
		cmp		rdi, 0x7e
		jg		_end
		mov		rax, 0x01
		ret
_end:
		mov		rax, 0x00
		ret
