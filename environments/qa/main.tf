

module "resource_group" {
    source  = "../../modules/azurerm_resource_group"
    resource_group_name = var.rg_name
    resource_group_location = var.rg_location
}

module "storage_Account" {
    source = "../../modules/azurerm_storage_Account"
    storage_account_name = var.sa_name
    resource_group_name = var.rg_name
    location = var.rg_location

    depends_on = [module.resource_group]
}



