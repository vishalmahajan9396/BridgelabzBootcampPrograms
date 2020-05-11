#!/bin/bash -x
if [ -z "$usersecret" ]
then
        export usersecret='dH34xJaa23';
else
        echo "Error Occured: usersecret Already set..";
fi
echo "usersecret:" $usersecret;
