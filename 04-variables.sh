#!/bin/bash
#!/bin/bash

echo "Please enter username"

read USERNAME #this vaariable the where the value of user entered 

#read command Wait until the user submits and press enter.


echo "The entered username is : $USERNAME"

#Using the read command, when ever we enter the user's ability to see, we must hide it for that will use the "read -s."

#We are hiding the password below :

echo "Please enter the password "

read -s PASSWORD

echo "The password entered is  :$PASSWORD"
