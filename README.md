# eisenmux
A bash script creating an [Eisenhower Matrix](https://en.wikipedia.org/wiki/Time_management#The_Eisenhower_Method) on the terminal using [tmux](https://en.wikipedia.org/wiki/Tmux) and [TaskWarrior](https://taskwarrior.org/).

# Requirements
* Linux
* tmux
* TaskWarrior

# Installation
* use `git clone` to download this repo
* copy the `eisenhower.sh` to any conventient location
* add the TaskWarrior reports from `twreports` to your TaskWarrior (either by copy/pasting them into your `.taskrc` or by adding a link to `twreports`)
* (optional) change the definitions of *urgent* and *important* in `twreports` to your needs

# Usage

    ./eisenhower.sh

# Recommendation
Add an alias to your `.bashrc`, for instance:

    alias te='[path to your script]/eisenhower.sh'

