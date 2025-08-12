terraform{
    backend "azurerm" {
        resource_group_name  = "ONU-TF-resources"
        storage_account_name = "onuostorage"
        container_name       = "prod-tfstate"
        key                  = "prod.terraform.tfstate"
    } 
}