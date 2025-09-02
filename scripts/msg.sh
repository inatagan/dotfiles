#!/usr/bin/env bash

msg(){
    NUM_REQUIRES_ARGS=3
    num_args=$#
    if [ $num_args -lt $NUM_REQUIRES_ARGS ]; then
        echo "Not enough arguments. Call this function with: msg <name> <type> <success/failure>"
        exit 1
    else
        if [ "$3" = "sucess" ]; then
            echo "$1 $2 was replaced sucessfully!!"
        else
            echo "Warning!! something did not work with $1"
        fi
    fi
}