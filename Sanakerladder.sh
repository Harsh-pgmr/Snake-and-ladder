#!/bin/bash
clear

#Problem Statement: This problem simulates the Snake and Ladder game
#Author: Harshad BB
#Date: 27-11-2020

echo "Welcome to Snake and ladder"
START_POSITION=0
function rollDie() {
        result=$(( RANDOM % 6 + 1 ))
        echo $result
}

rollDie
sleep 1

