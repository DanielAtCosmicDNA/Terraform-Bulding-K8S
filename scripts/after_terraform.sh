#!/bin/sh

json=`terraform output -json`
echo $json \
  | jq -r '.instance_msr_public_ip.value' \
  | xargs -I '{}' sh -c '\
    sed -i "s/KUBE_MASTER=.*/KUBE_MASTER={}/g" .env & \
    scp -i "$SSH_KEY" "ubuntu@{}:/tmp/admin.conf" ~/.kube/config && \
      sed -i "s/server: https:\/\/[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+:/server: https:\/\/{}:/g" ~/.kube/config & \
    wait'

echo $json \
  | jq -r '.instance_wrks_public_ip.value[0]' \
  | xargs -I '{}' sed -i "s/WORKER=.*/WORKER={}/g" .env