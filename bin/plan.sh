#!/bin/bash

for i in $(ls openstack);
do
    echo "*** Plan cloud: ${i} ***"
    terraform -chdir="./openstack/${i}" plan -var-file=instances
done