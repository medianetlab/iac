# Instructions: Create/Modify/Delete Openstack VM

Modify the following variables in the [instances](./instances) file:

## Variable: tenant_name

This variable must be updated every time to match the OpenStack tenant (project) that your instances are/will be deployed on

Example:
```
tenant_name = "admin"
```

## Variable: instances

To add an instance, add the new instance details in the "instances" variable mapping. The format must be similar to the example below.

To delete an instance, remove the existing instance details from "instances" variable mapping.

```
instances = {
    "<INSTANCE_NAME>" = {
      "vm_name"    = "<VM_NAME>"
      "image_name" = "<IMAGE_NAME>"
      "flavor"     = "<FLAVOR_NAME>"
      "networks" = {
        "<NETWORK_NAME>" = { "ip_address" = "<A.B.C.D>" }
        "<NETWORK_NAME>"  = { "ip_address" = "" }
      }
    }
}
```

Fields:

* **<INSTANCE_NAME>** : A unique management name for your instance
* **<VM_NAME>** : The VM name that will be used in OpenStack
* **<IMAGE_NAME>** : The image name that will be used for creating the VM
* **<FLAVOR_NAME>** : The flavor name that will be used for creating the VM
* **networks** : A list with the networks that will be attached to the VM
* **"<NETWORK_NAME>" = { "ip_address" = "<A.B.C.D>" }** : The network name and a static IPv4 do be assigned to the VM, in A.B.C.D format. Leave an empty string in case you want the IP address assigned through DHCP.

Example:

```
instances = {
    "instance2" = {
      "vm_name"    = "testingVM"
      "image_name" = "ubuntu20.04"
      "flavor"     = "5gproxy-flv"
      "networks" = {
        "services" = { "ip_address" = "10.161.3.101" }
        "vnf_net"  = { "ip_address" = "" }
      }
    }
}
```