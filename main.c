/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/04/19 00:16:48 by neprocur          #+#    #+#             */
/*   Updated: 2015/04/22 03:29:35 by neprocur         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <ctype.h>
#include <stdlib.h>

int		main(void)
{
	char	str[13] = "Hello World";
	char	str1[15] = "nasm c'est cool";
	int		ret_ft = 0;
	int		ret = 0;

	// test ft_puts
	printf("ft_puts\n");
	ret_ft = ft_puts(str);
	ret = puts(str);
	if (ret != ret_ft)
		printf("ft_puts return: %d puts return:%d\n", ret_ft, ret);
	ret_ft = ft_puts(str1);
	ret = puts(str1);
	if (ret != ret_ft)
		printf("ft_puts return: %d puts return:%d\n", ret_ft, ret);

	//test ft_bzero
	printf("ft_bzero 6 charact\n");
	size_t  len = strlen(str);
	ft_bzero(str, 6);
	size_t	i = 0;
	while (i < len)
	{
		printf("%c", str[i]);
		i++;
	}
	printf("\n");
	ft_bzero(str, len);
	i = 0;
	printf("ft_bzero strlen de str");
	while (i < len)
	{
		printf("%c", str[i]);
		i++;
	}
	printf("\n");

	//test ft_isalpha
	printf("0 isalpha: %d ft_isalpha: %d\n", isalpha('0'), ft_isalpha('0'));
	printf("@ isalpha: %d ft_isalpha: %d\n", isalpha('@'), ft_isalpha('@'));
	printf("A isalpha: %d ft_isalpha: %d\n", isalpha('A'), ft_isalpha('A'));
	printf("Z isalpha: %d ft_isalpha: %d\n", isalpha('Z'), ft_isalpha('Z'));
	printf("` isalpha: %d ft_isalpha: %d\n", isalpha('`'), ft_isalpha('`'));
	printf("a isalpha: %d ft_isalpha: %d\n", isalpha('a'), ft_isalpha('a'));
	printf("z isalpha: %d ft_isalpha: %d\n", isalpha('z'), ft_isalpha('z'));
	printf("{ isalpha: %d ft_isalpha: %d\n", isalpha('{'), ft_isalpha('{'));
	printf("\n");

	// test ft_isdigit
	printf("0 isdigit: %d ft_isdigit: %d\n", isdigit('0'), ft_isdigit('0'));
	printf("9 isdigit: %d ft_isdigit: %d\n", isdigit('9'), ft_isdigit('9'));
	printf(": isdigit: %d ft_isdigit: %d\n", isdigit(':'), ft_isdigit(':'));
	printf("/ isdigit: %d ft_isdigit: %d\n", isdigit('/'), ft_isdigit('/'));
	printf("\n");

	// test ft_isalnum
	printf("@ isalnum: %d ft_isalnum: %d\n", isalnum('@'), ft_isalnum('@'));
	printf("{ isalnum: %d ft_isalnum: %d\n", isalnum('{'), ft_isalnum('{'));
	printf("[ isalnum: %d ft_isalnum: %d\n", isalnum('['), ft_isalnum('['));
	printf("/ isalnum: %d ft_isalnum: %d\n", isalnum('/'), ft_isalnum('/'));
	printf(": isalnum: %d ft_isalnum: %d\n", isalnum(':'), ft_isalnum(':'));
	printf("0 isalnum: %d ft_isalnum: %d\n", isalnum('0'), ft_isalnum('0'));
	printf("4 isalnum: %d ft_isalnum: %d\n", isalnum('4'), ft_isalnum('4'));
	printf("9 isalnum: %d ft_isalnum: %d\n", isalnum('9'), ft_isalnum('9'));
	printf("a isalnum: %d ft_isalnum: %d\n", isalnum('a'), ft_isalnum('a'));
	printf("m isalnum: %d ft_isalnum: %d\n", isalnum('m'), ft_isalnum('m'));
	printf("z isalnum: %d ft_isalnum: %d\n", isalnum('z'), ft_isalnum('z'));
	printf("A isalnum: %d ft_isalnum: %d\n", isalnum('A'), ft_isalnum('A'));
	printf("Z isalnum: %d ft_isalnum: %d\n", isalnum('Z'), ft_isalnum('Z'));
	printf("\n");

	//test ft_isascii
	printf("0 isascii: %d ft_isascii: %d\n", isascii(0), ft_isascii(0));
	printf("127 isascii: %d ft_isascii: %d\n", isascii(127), ft_isascii(127));
	printf("-1 isascii: %d ft_isascii: %d\n", isascii(-1), ft_isascii(-1));
	printf("128 isascii: %d ft_isascii: %d\n", isascii(128), ft_isascii(128));
	printf("\n");

	// test ft_isascii
	printf("31 isprint: %d ft_isprint: %d\n", isprint(31), ft_isprint(31));
	printf("127 isprint: %d ft_isprint: %d\n", isprint(127), ft_isprint(127));
	printf("48 isprint: %d ft_isprint: %d\n", isprint(48), ft_isprint(48));
	printf("65 isprint: %d ft_isprint: %d\n", isprint(65), ft_isprint(65));
	printf("32 isprint: %d ft_isprint: %d\n", isprint(32), ft_isprint(32));
	printf("126 isprint: %d ft_isprint: %d\n", isprint(126), ft_isprint(126));
	printf("\n");

	//test ft_toupper
	printf("a toupper: %d ft_toupper: %d\n", toupper('a'), ft_toupper('a'));
	printf("z toupper: %d ft_toupper: %d\n", toupper('z'), ft_toupper('z'));
	printf("64 toupper: %d ft_toupper: %d\n", toupper(64), ft_toupper(64));
	printf("{ toupper: %d ft_toupper: %d\n", toupper('{'), ft_toupper('{'));
	printf("\n");

	//test ft_tolower
	printf("A tolower: %d ft_tolower: %d\n", tolower('A'), ft_tolower('A'));
	printf("Z tolower: %d ft_tolower: %d\n", tolower('Z'), ft_tolower('Z'));
	printf("@ tolower: %d ft_tolower: %d\n", tolower('@'), ft_tolower('@'));
	printf("[ tolower: %d ft_tolower: %d\n", tolower('['), ft_tolower('['));
	printf("\n");

	//test ft_strcat
	char ptr[15] = "hello ";
	char ptr1[6] = "world";
	printf("ft_strcat: %s\n", ft_strcat(ptr, ptr1));

	// test ft_strlen
	char ptr2[30] = "salut les amie sa va";
	char ptr3[40] = "salut les amie sa va jaime code en asm";
	printf("strlen: %ld ft_strlen: %ld\n", strlen(ptr2), ft_strlen(ptr2));
	printf("strlen: %ld ft_strlen: %ld\n", strlen(ptr3), ft_strlen(ptr3));
	printf("strlen: %ld ft_strlen: %ld\n", strlen("aaaaaa"), ft_strlen("aaaaaa"));
	printf("strlen: %ld ft_strlen: %ld\n", strlen(""), ft_strlen(""));
	printf("\n");

	//test ft_memset
	char ptr4[10] = "salut asm";
	char ptr5[10] = "salut asm";
	puts(memset(ptr4, 'z', 5));
	puts(ft_memset(ptr5, 'z', 5));
	puts(ptr4);
	puts(ptr5);
	printf("\n");

	// test ft_memcpy
	char	ptr6[11] = "memcpy try";
	char	ptr7[15] = "0000000000";
	char	ptr8[15] = "0000000000";
	printf("memcpy: %s ft_memcpy: %s\n", ptr7, ptr8);
	puts(memcpy(ptr7, ptr6, 3));
	puts(ft_memcpy(ptr8, ptr6, 3));
	printf("memcpy: %s ft_memcpy:%s\n", ptr7, ptr8);
	puts(memcpy(ptr7, ptr6, (int)strlen(ptr6)));
	puts(ft_memcpy(ptr8, ptr6, strlen(ptr6)));
	printf("memcpy: %s ft_memcpy:%s\n", ptr7, ptr8);
	printf("\n");

	// test ft_strdup
	char *s1;
	char *s2;
	char	*lol;

	s1 = "abcde";
	s2 = "abcdefghijklmnopqrstuvwxyz";
	printf("\033[33mFT_STRDUP\033[0m\n");
	printf("string to be copied \"%s\"\n", s1);
	printf("duplicated string: \"%s\"\n", ft_strdup(s1));
	printf("set str[2] = '\\0'\n");
	lol = ft_strdup(s1);
	str[2] = '\0';
	printf("duplicated string: \"%s\"\n", lol);
	printf("free string\n\n");
	free(lol);

	// test ft_cat
	int		fd = open("libfts.h", O_RDONLY);
	int		fd1 = open("Makefile", O_RDONLY);
	int		fd2 = -42;
	ft_cat(fd);
	ft_cat(fd1);
	ft_cat(fd2);
	ft_cat(0);
	printf("\n");

	//SWAP
	int		a;
	int		b;

	printf("\033[33mFT_SWAP\033[0m\n");
	a = 8;
	b = 549;
	printf("values to be swapped: \"%d & %d\"\n", a, b);
	ft_swap(&a, &b);
	printf("swapped values: \"%d & %d\"\n", a, b);
	a = 95380;
	b = -34;
	printf("values to be swapped: \"%d & %d\"\n", a, b);
	ft_swap(&a, &b);
	printf("swapped values: \"%d & %d\"\n\n", a, b);

	//ISLOWER
	printf("\033[33mFT_ISLOWER\033[0m\n");
	printf("value to be tested: A\n");
	printf("A, islower returns: %d\n", ft_islower('A'));
	printf("value to be tested: z\n");
	printf("z, islower returns: %d\n", ft_islower('z'));
	printf("value to be tested: 4\n");
	printf("4, islower returns: %d\n\n", ft_islower('4'));

	//ISUPPER
	printf("\033[33mFT_ISUPPER\033[0m\n");
	printf("value to be tested: A\n");
	printf("A, isupper returns: %d\n", ft_isupper('A'));
	printf("value to be tested: z\n");
	printf("z, isupper returns: %d\n", ft_isupper('z'));
	printf("value to be tested: 4\n");
	printf("4, isupper returns: %d\n\n", ft_isupper('4'));

	//ISPUNCT
	printf("\033[33mFT_ISPUNCT\033[0m\n");
	printf("value to be tested: A\n");
	printf("A, ispunct returns: %d\n", ft_ispunct('A'));
	printf("value to be tested: !\n");
	printf("!, ispunct returns: %d\n", ft_ispunct('!'));
	printf("value to be tested: @\n");
	printf("@, ispunct returns: %d\n\n", ft_ispunct('@'));

	//ISCNTRL
	printf("\033[33mFT_ISCNTRL\033[0m\n");
	printf("value to be tested: A\n");
	printf("A, iscntrol returns: %d\n", ft_iscntrl('A'));
	printf("value to be tested: 0x0c\n");
	printf("0x0c, iscntrl returns: %x\n", ft_iscntrl(0x0c));
	printf("value to be tested: @\n");
	printf("@, iscntrl returns: %d\n\n", ft_iscntrl('@'));
	return (0);
}
