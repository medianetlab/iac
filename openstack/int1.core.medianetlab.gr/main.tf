resource "openstack_compute_keypair_v2" "mnlab_generic_key" {
  name       = "mnlab_generic_key"
  public_key = var.mnlab_generic_key
}

resource "openstack_compute_instance_v2" "newVM" {

  # Dynamically create the instances
  for_each    = var.instances
  name        = each.value["vm_name"]
  image_name  = each.value["image_name"]
  flavor_name = each.value["flavor"]

  dynamic "network" {
    for_each = each.value["networks"]
    content {
      name        = network.key
      fixed_ip_v4 = network.value["ip_address"]
    }
  }
}
