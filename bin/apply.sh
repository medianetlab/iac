#!/bin/bash

for i in $(ls openstack);
do
    echo "*** Apply cloud: ${i} ***"
    terraform -chdir="./openstack/${i}" apply -var-file=instances -var-file=/home/${USER}/.iac/creds/terraform.tfvars -auto-approve
done