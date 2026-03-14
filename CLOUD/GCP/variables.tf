variable "projectid" {}
variable "vpc_name" {
  description = "Name of the VPC network"
}

variable "subnet_name" {
  description = "Name of the subnet"
}

variable "subnet_cidr" {
  description = "CIDR range for the subnet"
}

variable "region" {
  description = "Region for the resources"
}
variable "allowed_ports" {
  description = "List of allowed ports for firewall rules"
}