# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/16 03:04:40 by neprocur          #+#    #+#              #
#    Updated: 2015/04/18 22:42:53 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_toupper

_ft_toupper:
	mov		rax, rdi
	cmp		rdi, 0x61
	jge		_next
	ret

_next:
	cmp		rdi, 0x7a
	jle		_ret
	ret

_ret:
	sub		rax, 32
	ret
