# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_swap.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/21 22:44:01 by neprocur          #+#    #+#              #
#    Updated: 2015/04/21 22:45:50 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
		global	_ft_swap

_ft_swap:
		push	rsi
		push	rdi
		mov		rax, [rsi]
		mov		rdx, [rdi]
		mov		[rsi], rdx
		mov		[rdi], rax
		pop		rsi
		pop		rdi
		ret
