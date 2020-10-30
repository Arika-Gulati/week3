#!/bin/bash -x    
firstname(){
firstname=$1
pat="^[A-Z]{1}[a-z]{2,}$"
if [[ $firstname =~ $pat ]]
then
        echo "firstname valid"
else
        echo "firstname not valid"
fi
}

lastname(){
lastname=$1
pat="^[A-Z]{1}[a-z]{1,}$"
if [[ $lastname =~ $pat ]]
then
        echo "lastname valid"
else
        echo "lastname not valid"
fi
}

email(){
mail=$1
pat="^[0-9a-zA-Z]?(.)*([0-9a-zA-Z])@[a-z].*([a-zA-Z]){2,4}([.][a-z]{2})$"
if [[ $mail =~ $pat ]]
then
        echo "e-mail valid"
else
        echo "e-mail not valid"
fi
}

mobilenumber(){
number=$1
pat="^[0-9]{2}[ ][0-9]{10}$"
if [[ $number =~ $pat ]]
then
        echo "mobile number valid"
else
        echo "mobile number not valid"
fi
}
password(){
password=$1
pat="(?=.*[0-9]{1})(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*_+=;:?<>]{1})[a-zA-Z0-9@_+!#$%^&*=<>;:]{8,32}"
if [[ $password =~ $pat ]]
then
        echo "password valid"
else
        echo "password not valid"
fi
}
echo "Enter firstname "
read fname
firstname $fname
echo "enter lastname "
read lname
lastname $lname
echo "Enter your mail ID "
read email
email $email
echo "enter your mobile number "
read mobile
mobilenumber $mobile
echo "enter your password "
read pwd
password $pwd

