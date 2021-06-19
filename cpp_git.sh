#!/bin/bash

#cppディレクトリへの移動
#cd ~/cpp

#実行ファイルの削除
rm a.out

git add .
git status

echo "上記の内容でファイルをpushします。"

while [ "1" ]
do
	echo "よろしいですか？   ...   Y:yes / N:no"
	read judg

	if [ "${judg}" == "Y" ] || [ "${judg}" == "y" ]; then
		break

	elif [ "${judg}" == "N" ] || [ "${judg}" == "n" ]; then
		echo "ファイルのpushを中断します。"
		#cd ~/cpp
		exit 0
	fi
done

git commit -m "Add a file"
git push

echo "ManatoYamaguchi"
