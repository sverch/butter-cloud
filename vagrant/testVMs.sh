#just starts the vms and makes sure they're on the same network
vagrant up
vagrant ssh box1 -- -t 'ping 192.168.0.2; /bin/bash'
