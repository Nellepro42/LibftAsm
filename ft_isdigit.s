# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/14 15:50:35 by neprocur          #+#    #+#              #
#    Updated: 2015/04/18 22:27:08 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isdigit

_ft_isdigit:
	mov		rax, 0x00
	cmp		rdi, 0x30
	jge		_next
	ret

_next:
	cmp		rdi, 0x39
	jle		_ret
	ret
_ret:
	mov		rax, 0x01
	ret
