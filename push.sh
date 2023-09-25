#!/bin/zsh

sftp -i ~/.ssh/jerryhobby jerryhobby@jerryhobby.com -b << EOF
lcd ./build/web/
cd public_html
ls
put -R *
ls
EOF
