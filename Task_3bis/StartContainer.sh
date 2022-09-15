#!/bin/bash
#gvdv mkdir ssh_host_keys
#gvdv for type in rsa dsa ecdsa ed25519; do
#gvdv     ssh-keygen -t ${type} -N "" -f ssh_host_keys/ssh_host_${type}_key
#gvdv done
echo "Building the image..."
docker build -t task_3bis .
echo "Running the container..."
docker run -dt --net dock_18 --ip 172.18.0.12 --name ctask_3bis task_3bis
echo "Pushing the ansible playbook..."
ansible-playbook task3bis.yaml
