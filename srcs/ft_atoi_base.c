/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi_base.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sfranc <sfranc@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/05/25 17:21:28 by sfranc            #+#    #+#             */
/*   Updated: 2017/05/25 18:27:43 by sfranc           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_atoi_base(char *str, int base)
{
	static char	tab[16] = "0123456789ABCDEF";
	char		*ref;
	char		*fig;
	long int	nb;
	int			sign;

	nb = 0;
	sign = 1;

	ref = ft_strsub(tab, 0, base);
	// ft_upcase(str);
	ft_putendl(ref);

	while (*str == ' ' || (*str >= 9 && *str <= 13))
		str++;
	if (*str == '-' && base == 10)
		sign = -1;
	if (*str == '+' || *str == '-')
		str++;
	while ((fig = ft_strchr(ref, *str)) && *fig)
	{
		nb = nb * base + fig - ref;
		str++;
	}
	return ((int)(nb * sign));
}