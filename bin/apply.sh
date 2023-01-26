#!/bin/bash

set -e

for i in $(ls openstack);
do
    if [[ "${i}" == "README.md" ]]; then
      continue
    fi
    echo "*** Apply cloud: ${i} ***"
    terraform -chdir="./openstack/${i}" apply -var-file=instances -var-file=/home/${USER}/.iac/creds/terraform.tfvars -auto-approve
done