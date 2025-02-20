variable "resource_group_name" {
  description = "Name of the resource group where the AKS cluster will be created."
  type        = string
}

variable "region" {
  description = "Azure region where the AKS cluster will be created."
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet1_name" {
  description = "Name of the subnet."
  type        = string
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet."
  type        = list(string)
  default     = ["10.240.0.0/16"]
}

variable "aks_cluster" {}
