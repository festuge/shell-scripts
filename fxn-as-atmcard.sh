#!/bin/bash
#this script will functions as an atmcard
#Author= Prof Elvis N.
#Company= Etech Consulting llc
pin="2022"
group="etechstaff"
balance="30000"
user=`whoami`
location=`pwd`
error="try again!!"
echo " welcome to Etech Bank "
echo  "Please enter your pinnumber:" 
read -s  pinnumber
if [ "$pinnumber" -eq "$pin" ]; then
read -p "Please enter the amount to withdraw:" amountwithdrawn
if [ "$amountwithdrawn" -gt "$balance" ];then
echo "Sorry insufficient funds!! $error"
echo "Transaction Restarting......"
sleep 5
./atmcard.sh
else
dif=$(echo "scale=4; $balance - $amountwithdrawn" | bc)
sleep 2 
echo "Please take  your cash"
sleep 5
echo "Please remove your card"
sleep 5
echo "Printing your receipt....."
sleep 5
echo "Beginning Balance:..... \$20000"
echo "Amount withdraw:...... \$$amountwithdrawn"
echo "current balance:...... \$$dif"
echo "Transaction completed at: `date`"
echo "Cash withdrawn by $user who is a member of $group group at $location"
echo " Thanks for using Etech Bank and see you soon"
fi
else
echo "sorry wrong pin number!!! please $error"
./atmcard.sh
fi
