# azr-tf-module-log-analytics-workspace

[Terraform](https://www.terraform.io) Module to create **LogAnalytics Workspace** in Azure

<!-- BEGIN_TF_DOCS -->
## Prerequisites

- [Terraform](https://releases.hashicorp.com/terraform/) v0.12+

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=2.36.0 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.14.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.36.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_log_analytics_solution.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_solution) | resource |
| [azurerm_log_analytics_workspace.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | (Required) Specifies the location of the log analytics workspace | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) Specifies the name of the log analytics workspace | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) Specifies the resource group name | `string` | n/a | yes |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | (Optional) Specifies the workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730. | `number` | `30` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | (Optional) Specifies the sku of the log analytics workspace | `string` | `"PerGB2018"` | no |
| <a name="input_solution_plan_map"></a> [solution\_plan\_map](#input\_solution\_plan\_map) | (Optional) Specifies the map structure containing the list of solutions to be enabled. | `map(any)` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Specifies the tags of the log analytics workspace | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Specifies the resource id of the log analytics workspace |
| <a name="output_location"></a> [location](#output\_location) | Specifies the location of the log analytics workspace |
| <a name="output_name"></a> [name](#output\_name) | Specifies the name of the log analytics workspace |
| <a name="output_primary_shared_key"></a> [primary\_shared\_key](#output\_primary\_shared\_key) | Specifies the workspace key of the log analytics workspace |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | Specifies the name of the resource group that contains the log analytics workspace |
| <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id) | Specifies the workspace id of the log analytics workspace |

## Example

```hcl
resource "azurerm_resource_group" "this" {
  name     = uuid()
  location = "westeurope"
}

module "log" {
  source              = "./module"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  name                = "log-example"
  sku                 = "PerGB2018"
  solution_plan_map = {
    ContainerInsights = {
      product   = "OMSGallery/ContainerInsights"
      publisher = "Microsoft"
    }
  }
}
```


<!-- END_TF_DOCS -->
## Authors

Originally created by [Patrick Hayo](http://github.com/patrickhayo)

## License

[MIT](LICENSE) License - Copyright (c) 2022 by the Author.
