#!/bin/bash

cur_dir=$(cd "$(dirname "$0")"; pwd)
ln -s $cur_dir/.gitconfig ~/
ln -s $cur_dir/.zshrc ~/
ln -s $cur_dir/.zshenv ~/
ln -s $cur_dir/.profile ~/
