#!/bin/zsh

git clone git@github.com:YKengo1224/vivado-template-proj.git $1
cd $1 && git remote remove origin
