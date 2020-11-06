# Unix-Scripting
This is a repository for scripts I will come up with whilst I learn Bash/Unix scripting

## Installation
The scripts themselves do not have to be installed, but you should be using bash or running a distro of Linux that supports bash.

## Add New User Script (add_new_user.sh)
This script creates a user by taking their full names, username, password and email.
The email is not stored. It is instead supplied to the ```mail``` command, which sends the user an email with their credentials.
The script can only be run as root

Once you have the script, you make it executable by running : 

```
chmod +x add_new_user.sh

```
Then you can execute it by either doing 

```
./add_new_user.sh
```
***OR***

```
bash add_new_user.sh
```

The script will start off with prompts which you can fill in and at the end, prints a confirmation message to Standard Output.

## Dependencies
Most parts of this application does not require any additional software, but the mail program I used, is Postfix and to install it,
you can do :

***Debian/Ubuntu:***
```
apt-get update && apt-get install postfix mailutils
```

***Fedora:***

```
dnf update && dnf install postfix mailx
```

***Centos:***

```yum update && yum install postfix mailx cyrus-sasl cyrus-sasl-plain```

***Arch:***

```pacman -Sy postfix mailutils mailx```

***FreeBSD:***

```
portsnap fetch extract update
cd /usr/ports/mail/postfix
make config
```

I found a great article on PostFix configuration, you can make reference to if you are having problems

[Open Source] (https://opensource.com/article/18/8/postfix-open-source-mail-transfer-agent)

## Planned upgrades
With time, I hope to add extra functionality. You can leave me a comment and I will answer it as soon as I see it.
