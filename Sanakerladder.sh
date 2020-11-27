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
        operation=$( option )
        case $operation in
                1)
                        newPosition=0;;
                2)
                        newPosition=$(( $newPosition + $( rollDie ) ));;
                3)
                        newPosition=$(( $newPosition - $( rollDie ) ));;
        esac
        echo $newPosition
}
echo "Player has moved to "

playerOption


