#!/bin/bash
clear


#Problem Statement: This problem simulates the Snake and Ladder game
#Author: Harshad BB
#Date: 27-11-2020

echo "Welcome to Snake and ladder"
START_POSITION=0

function rollDie() {
        res=$(( RANDOM % 6 + 1 ))
        echo $res
}


function option() {
        choice=$(( RANDOM % 3 + 1 ))
        echo $choice
}

function playerOption() {
        while [[ $START_POSITION -lt 101 ]]
        do
                operation=$( option )
                case $operation in
                        1)
                                START_POSITION=0;;
                        2)
                                START_POSITION=$(( $START_POSITION + $( rollDie ) ));;
                        3)
                                START_POSITION=$(( $START_POSITION- $( rollDie ) ))
                                if [[ $START_POSITION -lt 0 ]]
                                then
                                        START_POSITION=0
                                fi;;
                esac
        done
        echo $START_POSITION
}
echo "Player has moved to " $(playerOption) "position"






