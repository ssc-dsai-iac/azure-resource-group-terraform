# Azure Resource Group Terraform Module

Terraform Module to create an Azure Resource Group.

## Module Usage

```hcl
# Azure Provider configuration
provider "azurerm" {
  features {}
}



module "resource_group" {
  source  = "github.com/ssc-dsai-iac/azure-resource-group-terraform"

  name     = "${var.prefix}-${var.group}-${var.user_defined}-${var.env}-rg"
  location = var.location

  tags = {
    env        = var.env
    costcenter = var.costcenter
    ssn        = var.ssn
    subowner   = var.subowner
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14 |
| azurerm | >= 2.82.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.82.0 |

## Inputs

Name | Description | Type | Default
---- | ----------- | ---- | -------
`name`|The name of the resource group in which resources are created|string|`""`
`location`|The location of the resource group to be created|string| `"Canada Central"`
`Tags`|A map of tags to add to all resources|map|`{}`

## Outputs

Name | Description
---- | -----------
`resource_group_id`|The id of the resource group created
`resource_group_location`|The location of the resource group created
`resource_group_name`|The name of the resource group created
