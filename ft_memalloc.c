/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memalloc.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ybohusev <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/13 17:10:41 by ybohusev          #+#    #+#             */
/*   Updated: 2017/11/13 17:10:43 by ybohusev         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memalloc(size_t size)
{
	void	*freshmem;
	size_t	i;

	i = 0;
	freshmem = (void*)malloc(size);
	if (freshmem == NULL)
		return (NULL);
	ft_bzero(freshmem, size);
	return (freshmem);
}
