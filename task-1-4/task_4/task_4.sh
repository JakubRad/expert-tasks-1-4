#!/bin/bash
PSO='Please enter your option: '
options=("1. Number of CPU Cores" "2. Disk space" "3. Size of RAM"  "4. Last login user" "5. Active process" "6. Send raprot  on email" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "1. Number of CPU Cores")
            echo "Number of CPU Cores : $(lscpu | grep 'CPU(s):'| head -n 1 | awk  '{print $2}')"
            ;;
        "2. Disk space")
            memory=$(df | awk '{sum+=$4} END {printf "%.0f", sum/1e6}')
            echo "Disck space: $memory GB"
            ;;
        "3. Size of RAM")
            echo "Size of ram in MB : $(free -m | grep 'Mem:' | awk '{print $2}')"
            ;;
        "4. Last login user")
            echo "Last logins : 
            $(last --fullnames)"
            ;;
        "5. Active process")
            echo "Active processes : $(ps -aux | wc -l)"
            ;;
        "O6. Send raport  on email")
            echo "email-problem"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done