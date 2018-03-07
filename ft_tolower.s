# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/18 22:44:15 by neprocur          #+#    #+#              #
#    Updated: 2015/04/18 22:45:33 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_tolower

_ft_tolower:
	mov		rax, rdi
	cmp		rdi, 0x41
	jge		_next
	ret

_next:
	cmp		rdi, 0x5a
	jle		_ret
	ret

_ret:
	add		rdi, 32
	mov		rax, rdi
	ret
