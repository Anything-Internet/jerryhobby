#!/bin/zsh
rsync -avz -e "ssh -i \"$HOME/.ssh/jerryhobby\"" build/web/ jerryhobby@jerryhobby.com:public_html
