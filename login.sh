#! /bin/bash

correct_username="admin"
correct_password=$(echo -n "password" | sha256sum | awk '{print $1}')

read -p "Enter username: " username
read -sp "Enter password: " password

echo 

# Hash the input password

input_password=$(echo -n "$password" | sha256sum | awk '{print $1}')

if [[ "$username" == "$correct_username" && "$correct_password" == "$input_password" ]]; 
then
    echo "Access granted. Welcome !";
else
    echo "Access denied"
fi