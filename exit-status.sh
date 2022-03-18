#!/bin/bash
ls -ltr
if [ $? -eq 0 ];
then
echo "listing files"
else
echo "please check the command"
fi
