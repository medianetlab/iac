#!/bin/bash

set -e

for i in $(ls openstack);
do
    if [[ "${i}" == "README.md" ]]; then
      continue
    fi
    echo "*** Plan cloud: ${i} ***"
    terraform -chdir="./openstack/${i}" plan -var-file=instances -var-file=/home/${USER}/.iac/creds/terraform.tfvars
done