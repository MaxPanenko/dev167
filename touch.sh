#!/bin/bash
function DirectoryName()
{
	echo -n "Enter Directory name: "
	read dir

	if [ -d $dir ]
	then
		echo "$dir exist"
	else
		echo "$dir doesn't exist"
	fi
}
function FileCreate()
{
	echo -n "Enter a file name to create: "
	read fileName

	touch $fileName
}


function FileExist()
{
	echo -n "Enter a name file to check: "
	read fileName

	if [ -f $fileName ]
	then
		echo "$fileName exist"
	else
		echo "$fileName doesn't exist"
	fi
}

function AppendFile()
{
	echo -n "Enter a file name which you want append: "
	read fileName
	
	if [ -f $fileName ]
	then
		echo -n "Write a text: "
		read fileText
		echo "$fileText" >> fileName
	else
		echo "File doesn't exist"
	fi
}

