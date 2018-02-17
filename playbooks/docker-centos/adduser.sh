#!/bin/sh
ROOT_UID=0
SUCCESS=0
E_USEREXISTS=70

if [ $# -eq 2 ]; then
username=$1
pass=$2

        # Check if user already exists.
        grep -q "${username}" /etc/passwd
        if [ $? -eq $SUCCESS ]
        then
        echo "User ${username} does already exist."
        echo "please chose another username."
        exit $E_USEREXISTS
        fi
        groupadd ${username}
        useradd -p "${pass}" -d /home/"${username}" -m -g ${username} -s /bin/bash "${username}"
        (echo ${pass};echo ${pass})| passwd ${username}
        echo "the account is setup"
else
        echo  " this programm needs 2 arguments you have given $# "
        echo  " you have to call the script $0 username and the pass "
fi

exit 0
