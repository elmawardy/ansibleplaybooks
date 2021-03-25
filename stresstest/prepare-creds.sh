#!/bin/bash

host_counter=1
host_count=20

hosts=("172.19.2.172" "172.19.2.173" "172.19.2.174" "172.19.2.174" "172.19.2.175" "172.19.2.176" "172.19.2.176" "172.19.2.177" "172.19.2.178" "172.19.2.179" "172.19.2.180" "172.19.2.181" "172.19.2.182" "172.19.2.184" "172.19.2.185" "172.19.2.186" "172.19.2.187" "172.19.2.188" "172.19.2.189" "172.19.2.190" "172.19.2.191" "172.19.2.192" )


while [ $host_counter -le $host_count ]
do
  for i in {0..99}
  do
    host_counter_formatted=$host_counter
    while [[ $(echo -n ${host_counter_formatted} | wc -c) -lt 2 ]] ; do
      host_counter_formatted="0${host_counter_formatted}"
    done
    student_index=$(( ($host_counter*100) - $i ))
    echo "loadtest$student_index,123" >> "creds-stresstest-$host_counter_formatted.csv"
  done
  host_counter=$(( $host_counter + 1 ));
done
