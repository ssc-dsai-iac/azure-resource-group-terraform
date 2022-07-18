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
  version = "1.0.0"

  name      = "ScSc-DSAI-AIDE-dev-rg"
  location  = "Canada Central"

  tags = {
    env        = "dev"
    costcenter = "111"
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0 |
| azurerm | >= 3.1.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 3.1.0 |

## Inputs

Name | Description | Type | Default
---- | ----------- | ---- | -------
`name`|The name of the resource group in which resources are created|string|`""`
`location`|The location of the resource group to be created|string| `"Canada Central"`
`tags`|A map of tags to add to all resources|map|`{}`

## Outputs

Name | Description
---- | -----------
`id`|The id of the resource group created
`location`|The location of the resource group created
`name`|The name of the resource group created
