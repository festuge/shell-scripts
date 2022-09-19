#!/bin/bash
ips=( 172.31.14.120  172.31.4.26 )

for i in ${ips[@]}; do
scp -i key ubuntu@$i:/tmp
done
