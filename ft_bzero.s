# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/14 15:48:55 by neprocur          #+#    #+#              #
#    Updated: 2015/04/16 02:51:09 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_bzero

_ft_bzero:
	cmp		rsi, 0x0
	je		_ret
	mov		[rdi], byte 0x0
	inc 	rdi
	dec		rsi
	jmp		_ft_bzero
	ret

_ret:
	ret
