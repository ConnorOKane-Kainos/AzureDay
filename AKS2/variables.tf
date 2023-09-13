variable "name" {
  type        = string
  default     = "citilads"
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  default     = "uksouth"
  description = "Name of the azure region"
}

variable "addons" {
  description = "Defining which addons are activated"
  type = object({
    oms_agent                   = bool
    ingress_application_gateway = bool
  })
}

variable "kubernetes_cluster_rbac_enabled" {
  default = "true"
}

variable "kubernetes_version" {
  description = "Kubernettes version ref"
}

variable "agent_count" {
  description = "The agent count"
}

variable "vm_size" {
  description = "Size of VM"
}

variable "ssh_public_key" {
  description = "Public SSH key used"
}

variable "aks_admins_group_object_id" {
}