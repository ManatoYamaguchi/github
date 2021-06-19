#!/bin/bash

#cppディレクトリへの移動
#cd ~/cpp

#実行ファイルの削除
rm a.out

git add .
git status

judg=$'n'

while [$judg=$'n']
do
	echo "上記の内容でファイルをpushします。\n"
	echo "よろしいですか？   ...   Y:yes / N:no\n"
	read judg
done

git commit -m "Add a file"
git push

cd ~/github
