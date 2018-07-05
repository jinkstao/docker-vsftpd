#!/bin/bash
# this script is used to config users and permissions of vsftpd image easily

# define parameter and environment
container=vsftpd	# !!!!!!! edit this as your container name !!!!!!!
mode=$1
operation=$2
target=$3
property=$4

if [ $mode = group ]; then
	# user group mode
	if [ $operation = add ]; then
		# groupadd command
		exit docker exec -it $container /bin/bash groupadd $target
	else if [ $operation = del ]; then
		# groupdel command
		exit docker exec -it $container /bin/bash groupdel $target
	fi
else if [ mode = user ]; then
	# user mode
	if [ $operation = add ]; then
		# useradd command
		exit docker exec -it $container /bin/bash useradd $property $target

