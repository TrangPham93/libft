/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_tolower.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: trpham <trpham@student.hive.fi>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/05 18:23:39 by trpham            #+#    #+#             */
/*   Updated: 2024/11/11 15:23:29 by trpham           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_tolower(int c)
{
	if (c >= 'A' && c <= 'Z')
		c += 32;
	return (c);
}
/* #include <ctype.h>
#include <stdio.h>

int	main(void)
{
	printf("%c\n", tolower('A'));
	printf("%c\n",ft_tolower('A'));

	printf("%c\n", tolower('k'));
	printf("%c\n",ft_tolower('k'));

	printf("%d\n", tolower('\0'));
	printf("%d\n",ft_tolower('\0'));
	
	printf("%d\n", tolower(5));
	printf("%d\n",ft_tolower(5));

	printf("%c\n", tolower('Z'));
	printf("%c\n",ft_tolower('Z'));

	return (0);
} */
/* # include <unistd.h>
#include <stdlib.h>

int		main(int argc, const char *argv[])
{
	int		i;
	int		c;
	int		arg;

	alarm(5);
	if (argc == 1)
		return (0);
	else if ((arg = atoi(argv[1])) == 1)
	{
		i = 0;
		while (i <= 47)
		{
			c = ft_tolower(i);
			write(1, &c, 1);
			i++;
		}
	}
	else if (arg == 2)
	{
		i = '0';
		while (i <= '9')
		{
			c = ft_tolower(i);
			write(1, &c, 1);
			i++;
		}
	}
	else if (arg == 3)
	{
		i = 58;
		while (i <= 64)
		{
			c = ft_tolower(i);
			write(1, &c, 1);
			i++;
		}
	}
	else if (arg == 4)
	{
		i = 'A';
		while (i <= 'Z')
		{
			c = ft_tolower(i);
			write(1, &c, 1);
			i++;
		}
	}
	else if (arg == 5)
	{
		i = 91;
		while (i <= 96)
		{
			c = ft_tolower(i);
			write(1, &c, 1);
			i++;
		}
	}
	else if (arg == 6)
	{
		i = 'a';
		while (i <= 'z')
		{
			c = ft_tolower(i);
			write(1, &c, 1);
			i++;
		}
	}
	else if (arg == 7)
	{
		i = 123;
		while (i <= 127)
		{
			c = ft_tolower(i);
			write(1, &c, 1);
			i++;
		}
	}
	return (0);
} */