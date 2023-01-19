#!/bin/bash

set -e

for i in $(ls openstack);
do
    echo "*** Validating cloud: ${i} ***"
    terraform -chdir="./openstack/${i}" init -backend-config="path=/home/${USER}/.iac/state/${i}/terraform.tfstate"
    terraform -chdir="./openstack/${i}" validate
done