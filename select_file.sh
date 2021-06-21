#!/bin/bash

#cd ~/cpp

while [ "1" ]
do

	while [ "1" ]
	do
		echo "-------------------------------------------------------"
		ls
		echo "-------------------------------------------------------"

		echo "pushするファイル名を入力してください"
		echo "すべてのファイルをpushする場合   ...   A:all"
		echo "commitに移る場合  ...    E:enter"
		echo "addの内容を取り消す場合   ...   R:reset"
		read file

		echo "-------------------------------------------------------"

		if [ "${file}" == "E" ] || [ "${file}" == "e" ]; then
			git status
			break

		elif [ "${file}" == "A" ] || [ "${file}" == "a" ]; then
			git add .
			git status
			break

		elif [ "${file}" == "R" ] || [ "${file}" == "r" ]; then
			git reset HEAD

		else
			git add "${file}"

		fi

		git status

	done

	echo "--------------------------------------------------------"
	echo "上記の内容でpushします。"
	echo "よろしいですか？   ...   Y:yes / N:no"
	read judg

	if [ "${judg}" == "Y" ] || [ "${judg}" == "y" ]; then
		break
	fi
done

echo "ファイルをcommitします。"

while [ "1" ]
do
	echo "commit messageを入力してください。"
	read message

	echo "\"${message}\"でcommitします。"
	echo "よろしいですか？   ...   Y:yes / N:no"
	read jugd

	if [ "${judg}" == "Y" ] || [ "${judg}" == "y" ]; then
		git commit -m "${message}"
		break
	fi
done

git push	
