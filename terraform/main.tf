terraform {
  backend "azurerm" {
    resource_group_name  = "smcp-terraform"
    storage_account_name = "smcpterraform"
    container_name       = "terraform-files"
    key                  = "terraform-files.tfstate"
  }
}

provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x.
  # If you're using version 1.x, the "features" block is not allowed.
  version = "~>2.0"
  features {}
}


#Create Resource Group
resource "azurerm_resource_group" "github-actions-demo" {
  name     = "github-actions-demo"
  location = "West Europe"
}
