#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo -e "Please run program as root user".
exit
    
else 
    echo -e "Enter fullname: \c"
    read fullname

    echo -e "Enter username: \c"
    read username

    echo -e "Type password for user: \n"
    read -s password

    echo -e "Select a shell for the user (tcsh,csh,zsh,bash): \c"
    read shell

    echo -e "Type in email address: \c"
    read email

    grep -q "$username" /etc/passwd

    if [ $? -eq 0 ]; then
        echo "Username $username exists. Choose a different name"
        exit
    else
        useradd -m -c "$fullname" -p "$password" -s /bin/$shell $username

        echo -e "Hello $fullname. Your account has been created with the following credentials.  
        \n Username: $username. \n Password: $password." | mail -s "Account Login Details" $email

        echo "Account creation complete."

    fi

fi