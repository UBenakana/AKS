# Resource Group Details
resource_group_name = "myResourceGroup"
region              = "eastus"

# Virtual Network Details
vnet_name           = "myVNet"
address_space       = ["10.0.0.0/8"]
subnet_name         = "mySubnet"
subnet_address_prefix = ["10.240.0.0/16"]

# AKS Cluster Details
cluster_name        = "myAKSCluster"
dns_prefix          = "myaksdns"
k8s_version         = "1.26"
node_count          = 2
vm_size             = "Standard_DS2_v2"
os_disk_size_gb     = 30

# Node Pool Configuration
enable_auto_scaling = true
min_count           = 1
max_count           = 3

# Networking Configuration
network_plugin      = "azure"
load_balancer_sku   = "standard"
dns_service_ip      = "10.0.0.10"
docker_bridge_cidr  = "172.17.0.1/16"
service_cidr        = "10.0.0.0/16"

# Tags
tags = {
  environment = "dev"
  project     = "myproject"
}