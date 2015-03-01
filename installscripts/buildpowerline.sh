#!/bin/sh
if [ ! -f bin/powerline ]
    then gcc -O3 github/powerline/client/powerline.c -o bin/powerline
fi

