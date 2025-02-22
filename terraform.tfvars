
# terraform.tfvars

resource_group_name   = "my-aks-resource-group"
region                = "eastus"
vnet_name             = "aks-vnet"
address_space         = ["10.200.0.0/16"]
subnet1_name          = "aks-subnet1"
subnet_address_prefix = ["10.200.1.0/24"]
aks_cluster           = "aks-cluster"
