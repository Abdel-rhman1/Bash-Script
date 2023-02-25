#!/bin/bash

git config --global user.name "Abdel-rhman"
git config --global user.email "yousef777906@gmail.com"
for var in $(ls -d */)
do
    cd $var
    pwd
    git add .
    git commit -m "$1"
    git pull origin main
    git rebase 
    git push origin main yo
    echo "Good Job"
    sleep 5
    echo "Push $var and start Next Lab"
    sleep 5
    cd ..
done

