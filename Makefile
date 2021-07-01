#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ciglesia <ciglesia@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/20 22:37:03 by ciglesia          #+#    #+#              #
#    Updated: 2021/07/01 11:46:43 by ciglesia         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

DEPENDENCIES = Makefile libstring/Makefile libstd/Makefile libELF/Makefile libalgorithm/Makefile #libtypes/Makefile

ECHO		=	/bin/echo -e

.SUFFIXES:

all:	$(DEPENDENCIES)
		@$(MAKE) -C libstring/
		@$(MAKE) -C libstd/
		@$(MAKE) -C libELF/
		@$(MAKE) -C libalgorithm/
#@$(MAKE) -C libtypes/

clean:
		@$(MAKE) -C libstring/ clean
		@$(MAKE) -C libstd/ clean
		@$(MAKE) -C libELF/ clean
		@$(MAKE) -C libalgorithm/ clean
#@$(MAKE) -C libtypes/ clean

fclean:	clean
		@$(MAKE) -C libstring/ fclean
		@$(MAKE) -C libstd/ fclean
		@$(MAKE) -C libELF/ fclean
		@$(MAKE) -C libalgorithm/ fclean
#@$(MAKE) -C libtypes/ fclean

re:
		@$(ECHO) "Recompiling"
		@$(MAKE) fclean
		@$(MAKE) all

.PHONY: clean fclean all re
