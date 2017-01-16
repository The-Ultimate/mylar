#!/bin/sh
PYTHON=/usr/bin/python
MYLAR=/mylar
DATA=/Config/mylar

if [ -f $MYLAR/config.ini ];
then
	mkdir $DATA
	mv $MYLAR/config.ini $DATA
fi

$PYTHON $MYLAR/Mylar.py --datadir $DATA --config $DATA/config.ini
