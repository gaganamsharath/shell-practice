#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Error:: Please run the script with root access "
    exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MySQL is not installed ....going to install it"
    dnf install mysql -y
 
if [ $? -eq 0 ]
then
    echo "Instalation MySQL is installed"
else
    echo "Installization MySQL is Failed"
    exit 1
fi
else
    echo "MySQL is already installed...Nothing to do"

