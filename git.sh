#!/bin/bash
echo 'Herwt Blog push start...'
git pull origin master

[ $? -ne 0 ] && {
	echo 'git pull origin master failed'
	exit 1
}
git add .

git commit -m  $1
echo "git提交注释：$1"

git push origin master

echo "Herwt Blog push Ok and end"
