#!/bin/bash

cp ~/.zshrc .zshrc &
cp ~/.tmux.conf .tmux.conf &
mkdir -p .config/nvim &
cp -r ~/.config/nvim/init.vim .config/nvim/init.vim &
cp -r ~/.config/nvim/coc-settings.json .config/nvim/coc-settings.json &
mkdir -p .config/yabai &
cp -r ~/.config/yabai/yabairc .config/yabai/yabairc &
mkdir -p .config/skhd &
cp -r ~/.config/skhd .config/skhd/skhdrc &

