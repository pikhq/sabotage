#!/bin/sh

if [[ ! $1 ]] ; then
	echo "enter the pathname containing your backup tarballs as arg1"
	exit 1
fi

if [[ ! $S || ! $R ]] ; then
	echo "some required env variables not set. run . ./config before executing this"
	exit 1
fi

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "WARNING: you have to run this before AND after stage0 otherwise stage1 will redownload"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

mkdir -p $S
mkdir -p $R
mkdir -p $R/tmp
mkdir -p $R/tmp/src

cp $1/src/*.bz2 $1/src/*.gz $S/
cp $1/root/tmp/src/*.bz2 $1/root/tmp/src/*.gz $R/tmp/src/

echo "done."
