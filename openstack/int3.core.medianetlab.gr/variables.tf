# Terraform provider variables
# variable "backend" {
#   type = string
# }

# Deployment variables 
variable "network" {
  type    = string
  default = "services"
}

variable "ip_address" {
  type    = string
  default = ""
}

variable "instances" {
  type = map(object({
    vm_name    = string
    image_name = string
    flavor     = string
    networks   = map(map(string))
    }
  ))
}
