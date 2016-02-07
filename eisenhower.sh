#!/bin/bash

# Eisenmux
# Copyright (C) 2016  Nikolai Nowaczyk

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

tmux has-session -t 'eisenhower' 2> /dev/null
if [ "$?" != "0" ]; then
	tmux new-session -d
	tmux rename-session -t 0 'eisenhower'
	tmux split-window -t 'eisenhower' -v
	tmux split-window -t 'eisenhower' -h
	tmux select-pane -t 0
	tmux split-window -t 'eisenhower' -h
fi
tmux select-pane -t 0
tmux send-keys -t 'eisenhower' 'cls' Enter 'q1' Enter
tmux select-pane -t 1
tmux send-keys -t 'eisenhower' 'cls' Enter 'q2' Enter
tmux select-pane -t 2
tmux send-keys -t 'eisenhower' 'cls' Enter 'q3' Enter
tmux select-pane -t 3
tmux send-keys -t 'eisenhower' 'cls' Enter 'q4' Enter
tmux select-pane -t 0
if [ "$TMUX" == "" ]; then
	tmux attach
fi
