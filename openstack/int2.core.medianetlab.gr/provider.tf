# Define required providers
terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.48.0"
    }
  }
}

# Terraform provider variables
variable "user_name" {
  type = string
}

variable "tenant_name" {
  type = string
}

variable "password" {
  type = string
}

# Configure the OpenStack Provider
provider "openstack" {
  user_name   = var.user_name
  tenant_name = var.tenant_name
  password    = var.password
  auth_url    = "http://10.161.0.101:5000/v3"
  #  region      = "RegionOne"
}
