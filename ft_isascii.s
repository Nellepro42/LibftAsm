# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/14 15:50:17 by neprocur          #+#    #+#              #
#    Updated: 2015/04/18 22:29:25 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isascii

_ft_isascii:
	mov		rax, 0x00
	cmp		rdi, 0x00
	jge		_next
	ret

_next:
	mov		rax, 0x00
	cmp		rdi, 0x7f
	jle		_ret
	ret

_ret:
	mov		rax, 0x01
	ret
