#!//bin/bash


killall ssh-agent;
eval "$(ssh-agent -s)"
ssh-keyscan -t rsa github.com
ssh-add ~/.ssh/id_rsa
