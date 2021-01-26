#!/bin/bash

cat /dev/zero | ssh-keygen -q -t rsa -b 4096 -N '' 2>&1 >/dev/null
cat ~/.ssh/id_rsa.pub
echo $'\n\nPlease copy your ssh public key\nThen paste in\t42intra -> profile -> setting -> ssh-key -> new key'
sleep 10
firefox -url signin.intra.42.fr > /dev/null 2>&1 &
sleep 20
firefox -url https://profile.intra.42.fr/gitlab_users/new > /dev/null 2>&1 &
exit
