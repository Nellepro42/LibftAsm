# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/14 15:50:02 by neprocur          #+#    #+#              #
#    Updated: 2015/04/18 22:38:36 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isprint

_ft_isprint:
	mov		rax, 0x00
	cmp		rdi, 0x20
	jge		_next
	ret

_next:
	cmp		rdi, 0x7e
	jle		_ret
	ret

_ret:
	mov		rax, 0x01
	ret
