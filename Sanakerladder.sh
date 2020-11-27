#!/bin/bash
clear


#Problem Statement: This problem simulates the Snake and Ladder game
#Author: Harshad BB
#Date: 27-11-2020

echo "Welcome to Snake and ladder"
START_POSITION=0
WINNING_POSITION=100


newPosition=0
prevPosition=0

function rollDie() {
        res=$(( RANDOM % 6 + 1 ))
        echo $res
}


function option() {
        choice=$(( RANDOM % 3 + 1 ))
        echo $choice
}

function playerOption() {
        while [[ $newPosition -lt $WINNING_POSITION ]]
        do
                operation=$( option )
                case $operation in
                        1)
                                prevPosition=$newPosition
                                newPosition=$newPosition;;
                        2)
                                prevPosition=$newPosition
                                newPosition=$(( $newPosition + $( rollDie ) ))
                                if [[ $newPosition -gt $WINNING_POSITION ]]
                                then
                                        newPosition=$prevPosition
                                fi;;
                        3)
                                prevPosition=$newPosition
                                newPosition=$(( $newPosition - $( rollDie ) ))
                                if [[ $newPosition -lt  0 ]]
                                then
                                        newPosition=0
                                fi;;
                esac
        done
        echo $newPosition
}
echo "Player has moved to " $(playerOption) "position"







