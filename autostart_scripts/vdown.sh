# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    vdown.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: 1mthe0wl </var/spool/mail/evil>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/09 17:13:32 by 1mthe0wl          #+#    #+#              #
#    Updated: 2022/01/09 17:14:27 by 1mthe0wl         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

amixer -q sset Master 5%-
bash ~/.dwm/statusModules.sh
