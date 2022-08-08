#! /bin/bash

./installs/github-cli.sh 2>./logs/github-cli-err.txt && \
./installs/tmux.sh 2>./logs/tmux-err.txt
