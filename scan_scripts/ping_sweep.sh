#!/bin/bash

echo "Enter the Subnet: "
read Subnet

for IP in $(seq 1 254); do
	ping -c 1 $Subnet.$IP|grep "64 bytes"|cut -d " " -f 4|tr -d ":" &
done
