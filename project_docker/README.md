# Ansible with docker

## How to
1. `docker-compose up -d --force-recreate`
2. check container healty
3. `docker exec -it control_machine /bin/bash`
   - copy ssh key (password: root)
        ```bash
        ssh-copy-id '172.21.0.3'
        ssh-copy-id '172.21.0.4'
        ```
   - run playbook
        ```bash
        cd ~/playbooks
        ansible-playbook playbook.yml
        ```