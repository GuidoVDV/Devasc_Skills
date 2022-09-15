for type in rsa dsa ecdsa ed25519; do
    ssh-keygen -t ${type} -N "" -f ./ssh_host_${type}_key
done
