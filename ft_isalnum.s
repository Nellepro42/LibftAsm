# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/14 15:49:18 by neprocur          #+#    #+#              #
#    Updated: 2015/04/19 00:13:05 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
		global	_ft_isalnum
		extern	_ft_isdigit
		extern	_ft_isalpha

_ft_isalnum:
		mov		rax, 0x00
		call	 _ft_isdigit
		cmp		rax, 0x01
		je		_ret
		call	_ft_isalpha
		cmp		rax, 0x01
		je		_ret
		ret

_ret:
	mov		rax, 0x01
	ret
