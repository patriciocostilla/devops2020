#!/bin/bash

# Run the "exit" command when receiving SIGNAL
trap "exit" SIGINT
trap "exit" SIGTERM

NUM=0
while true
do
	echo $NUM
    ((NUM++))
	sleep 1
done