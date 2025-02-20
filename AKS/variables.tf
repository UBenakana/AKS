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
  default     = ["10.0.0.0/8"]
}

variable "subnet_name" {
  description = "Name of the subnet."
  type        = string
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet."
  type        = list(string)
  default     = ["10.240.0.0/16"]
}

variable "cluster_name" {
  description = "Name of the AKS cluster."
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster."
  type        = string
}

variable "k8s_version" {
  description = "Kubernetes version for the AKS cluster."
  type        = string
  default     = "1.26"
}

variable "node_count" {
  description = "Number of nodes in the default node pool."
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "VM size for the nodes in the default node pool."
  type        = string
  default     = "Standard_DS2_v2"
}

variable "os_disk_size_gb" {
  description = "Size of the OS disk in GB."
  type        = number
  default     = 30
}

variable "node_labels" {
  description = "Labels for the nodes in the default node pool."
  type        = map(string)
  default     = {}
}

variable "node_taints" {
  description = "Taints for the nodes in the default node pool."
  type        = list(string)
  default     = []
}

variable "enable_auto_scaling" {
  description = "Enable auto-scaling for the default node pool."
  type        = bool
  default     = false
}

variable "min_count" {
  description = "Minimum number of nodes for auto-scaling."
  type        = number
  default     = 1
}

variable "max_count" {
  description = "Maximum number of nodes for auto-scaling."
  type        = number
  default     = 3
}

variable "network_plugin" {
  description = "Network plugin to use for the AKS cluster."
  type        = string
  default     = "azure"
}

variable "load_balancer_sku" {
  description = "SKU of the load balancer."
  type        = string
  default     = "standard"
}

variable "dns_service_ip" {
  description = "DNS service IP for the AKS cluster."
  type        = string
  default     = "10.0.0.10"
}

variable "docker_bridge_cidr" {
  description = "Docker bridge CIDR for the AKS cluster."
  type        = string
  default     = "172.17.0.1/16"
}

variable "service_cidr" {
  description = "Service CIDR for the AKS cluster."
  type        = string
  default     = "10.0.0.0/16"
}

variable "tags" {
  description = "Tags for the AKS cluster."
  type        = map(string)
  default     = {}
}