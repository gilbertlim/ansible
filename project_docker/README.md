# Ansible with docker

## How to
1. `docker-compose up -d --force-recreate`
2. `docker exec -it control_machine /bin/bash`
    ```sh
    sshpass -p root ssh-copy-id 172.21.0.3
    sshpass -p root ssh-copy-id 172.21.0.4
    ```