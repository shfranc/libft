/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_tabdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sfranc <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/24 17:42:16 by sfranc            #+#    #+#             */
/*   Updated: 2017/04/24 17:43:39 by sfranc           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	**ft_tabdup(char **tab)
{
	char	**cpy;
	int		len;
	int		i;

	len = ft_tablen(tab);
	if (!(cpy = (char**)malloc(sizeof(char*) * (len + 1))))
		return (NULL);
	*(cpy + len) = 0;
	i = 0;
	while (i < len)
	{
		*(cpy + i) = ft_strdup(*(tab + i));
		i++;
	}
	return (cpy);
}
