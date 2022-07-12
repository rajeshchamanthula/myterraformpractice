# Terraform

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.96.0"
    }
  }
}

# Azure provider

provider "azurerm" {
  features {}
}


#create resource group

resource "azurerm_resource_group" "rg" {
    name = "${var.client}-${var.location}-${each.value}-rg1"
    location = var.location
    for_each = toset(var.wow)
   
}
