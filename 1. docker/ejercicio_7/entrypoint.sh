#!/bin/bash

# Run the "exit" command when receiving SIGNAL
trap "exit" SIGINT
trap "exit" SIGTERM

NUM=0
while [ "$#" = 0 ] || [ "$NUM" -lt "$1" ]
do
    echo $NUM
    ((NUM++))
    sleep 1
done