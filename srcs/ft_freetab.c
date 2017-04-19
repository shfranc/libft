/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_freetab.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sfranc <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/19 15:56:44 by sfranc            #+#    #+#             */
/*   Updated: 2017/04/19 16:03:04 by sfranc           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_freetab(char ***tab)
{
	char **temp;

	if (!tab)
		return ;
	temp = *tab;
	while (*temp)
		ft_strdel(&(*temp++));
	free(*tab);
	*tab = NULL;
}
