#!/bin/sh

if [[ ! $1 ]] ; then
	echo "enter a backup pathname as arg1"
	exit 1
fi

if [[ ! $S || ! $R ]] ; then
	echo "some required env variables not set. run . ./config before executing this"
	exit 1
fi

mkdir -p $1
mkdir -p $1/src
mkdir -p $1/root
mkdir -p $1/root/tmp
mkdir -p $1/root/tmp/src

cp $S/*.bz2 $S/*.gz $1/src
cp $R/tmp/src/*.bz2 $R/tmp/src/*.gz $1/root/tmp/src


