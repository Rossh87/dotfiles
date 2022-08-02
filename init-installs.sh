#! /bin/bash

exec ./installs/github-cli.sh 2>./logs/github-cli-err.txt && \
exec ./installs/tmux.sh 2>./logs/tmux-err.txt
