#!/bin/bash

for i in $(ls openstack);
do
    echo "*** Validating cloud: ${i} ***"
    terraform -chdir="./openstack/${i}" init
    terraform -chdir="./openstack/${i}" validate
done