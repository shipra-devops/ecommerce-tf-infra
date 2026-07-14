terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.80.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-terraformstate"
    storage_account_name = "sastatefileecomm"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
      }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
   features {}
}