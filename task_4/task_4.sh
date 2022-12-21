#!/bin/bash
PSO='Please enter your option: '
options=("1. Number of CPU Cores" "2. Disk space" "3. Size of RAM"  "4. Last login user" "5. Active process" "6. Send raprot  on email" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "1. Number of CPU Cores")
            echo "Number of CPU Cores : `lscpu | grep 'CPU(s):'| head -n 1 | awk  '{print $2}'`"
            ;;
        "2. Disk space")
            echo "`df |  grep / | awk '{ print $4}' |paste -sd+|bc`/1000000" | bc
            ;;
        "3. Size of RAM")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "4. Last login user")
            echo "you chose choice 2"
            ;;
        "5. Active proces")
            echo "you chose choice 2"
            ;;
        "O6. Send raprot  on email")
            echo "you chose choice 2"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done