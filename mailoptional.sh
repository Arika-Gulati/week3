#!/bin/bash -x
echo "Enter e-mail id "
read mail
pat="^[0-9a-zA-Z]?(.+)?(_-)*([0-9a-zA-Z])@[a-z]{2,}.*([a-zA-Z]){2,4}([.][a-z]{2})*$"
if [[ $mail =~ $pat ]]
then
        echo "e-mail valid"
else
        echo "e-mail not valid"
fi





