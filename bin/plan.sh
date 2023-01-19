#!/bin/bash

set -e

for i in $(ls openstack);
do
    echo "*** Plan cloud: ${i} ***"
    terraform -chdir="./openstack/${i}" plan -var-file=instances -var-file=/home/${USER}/.iac/creds/terraform.tfvars
done