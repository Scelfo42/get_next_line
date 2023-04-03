/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_bonus.h                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cscelfo <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/14 16:42:57 by cscelfo           #+#    #+#             */
/*   Updated: 2023/01/11 12:43:03 by cscelfo          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_BONUS_H
# define GET_NEXT_LINE_BONUS_H

# include <unistd.h>
# include <stdlib.h>

# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 42
# endif

char	*get_next_line(int fd);
int		found_new_line(char *str);
char	*ft_cpy(char *dest, char *tmp, char *source, size_t start);
char	*ft_strdup(char *old_line);
void	*ft_free(char **ptr_s);
void	*ft_calloc(size_t nmemb, size_t size);

#endif
