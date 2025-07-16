#!bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

then 
    echo "ERROR:: please run this script with the root access"
    exit 1
else
    echo "your are rinning with root user access"

fi

dnf list installed mysql

# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true4

if [ $? -ne 0 ]

then 
    echo "Mysql is not installed ... going to install it"
    dnf install mysql -y

    if [$? -eq 0]
    then 
        echo "Installing Mysql is ... SUCCESS"
    else
        echo "Installing Mysql is ... FAILED"
    fi

else
    echo "Mysql is already installed... Nothing to do"
fi

