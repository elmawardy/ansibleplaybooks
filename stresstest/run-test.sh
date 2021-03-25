#!/bin/bash

host_counter=1
host_count=20
delay_between_hosts=30


hosts=("172.19.2.172" "172.19.2.173" "172.19.2.174" "172.19.2.175" "172.19.2.176" "172.19.2.177" "172.19.2.178" "172.19.2.179" "172.19.2.180" "172.19.2.181" "172.19.2.182" "172.19.2.184" "172.19.2.185" "172.19.2.186" "172.19.2.187" "172.19.2.188" "172.19.2.189" "172.19.2.190" "172.19.2.191" "172.19.2.192" )


while [ $host_counter -le $host_count ]
do
   ansible-playbook run-test.yaml -e "ihosts=${hosts[$(( $host_counter - 1  ))]}"  --extra-vars "ansible_user=root ansible_password=Must123"
   host_counter=$(( $host_counter + 1  ))
   echo "$delay_beteen_hosts seconds before provoking ${hosts[$(( $host_counter - 1  ))]}"
   sleep $delay_between_hosts
done
