variable "resource_group_name" {
    default = "citilads"

}
variable "location" {
  type        = string
  default     = "uksouth"
}
variable "aks_subnet_address_name" {
  type        = string
  description = "AKS Subnet Address Name"
}
variable "subnet_address_name" {
  type        = string
  description = "Subnet Address Name"
}
variable "network_address_space" {
  type        = string
  description = "Azure VNET Address Space"
}
variable "aks_subnet_address_prefix" {
  type        = string
  description = "AKS Subnet Address Space"
}
variable "subnet_address_prefix" {
  type        = string
  description = "Subnet Address Space"
}
variable "name" {
  default = "citilads"
}