This play installs postgresql-11 server and deploys a sync master/standby replica using WAL (Write Ahead Logs)


Examples :

ansible-playbook deploy-wal-replica.yml -e 'master=<master ip> standby=<standby ip> netmask=<net mask>' --ask-pass

master = master server IP
standby = standby server IP
netmask = subnetmask for example "22"
