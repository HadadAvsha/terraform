## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.10.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.3.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_lb.LB](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/lb) | resource |
| [azurerm_lb_backend_address_pool.bepool](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/lb_backend_address_pool) | resource |
| [azurerm_lb_nat_pool.lbnatpool](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/lb_nat_pool) | resource |
| [azurerm_lb_probe.LB_probe](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/lb_probe) | resource |
| [azurerm_lb_rule.lbnatrule](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/lb_rule) | resource |
| [azurerm_linux_virtual_machine_scale_set.VMSS](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/linux_virtual_machine_scale_set) | resource |
| [azurerm_monitor_autoscale_setting.scaling](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/monitor_autoscale_setting) | resource |
| [azurerm_network_security_group.VMSS_nsg](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/network_security_group) | resource |
| [azurerm_network_security_group.db_nsg](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/network_security_group) | resource |
| [azurerm_postgresql_flexible_server.postgres_flex_server](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/postgresql_flexible_server) | resource |
| [azurerm_postgresql_flexible_server_database.postgres](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/postgresql_flexible_server_database) | resource |
| [azurerm_private_dns_zone.pri_dns](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone_virtual_network_link.link](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_public_ip.pub_ip](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/public_ip) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/resource_group) | resource |
| [azurerm_subnet.db_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet) | resource |
| [azurerm_subnet.vmss-subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet) | resource |
| [azurerm_subnet_network_security_group_association.VMSS_association](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_subnet_network_security_group_association.db_association](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/virtual_network) | resource |
| [random_string.fqdn](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [azurerm_shared_image_version.VMSSImage](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/data-sources/shared_image_version) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_Environment"></a> [Environment](#input\_Environment) | variable for Environment | `string` | `"test"` | no |
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | Default password for admin account | `string` | `"Terra1234"` | no |
| <a name="input_admin_user"></a> [admin\_user](#input\_admin\_user) | User name to use as the admin account on the VMs that will be part of the VM scale set | `string` | `"app"` | no |
| <a name="input_application_port"></a> [application\_port](#input\_application\_port) | Port that you want to expose to the external load balancer | `number` | `8080` | no |
| <a name="input_db_address_prefix"></a> [db\_address\_prefix](#input\_db\_address\_prefix) | n/a | `list` | <pre>[<br>  "10.0.1.0/24"<br>]</pre> | no |
| <a name="input_db_admin_password"></a> [db\_admin\_password](#input\_db\_admin\_password) | Default password for postgres admin account | `string` | `"Terra1234"` | no |
| <a name="input_db_admin_user"></a> [db\_admin\_user](#input\_db\_admin\_user) | User name for postgres | `string` | `"postgres"` | no |
| <a name="input_image_gallery_name"></a> [image\_gallery\_name](#input\_image\_gallery\_name) | n/a | `string` | `"avsha"` | no |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | n/a | `string` | `"avsha_app_001"` | no |
| <a name="input_image_resource_group_name"></a> [image\_resource\_group\_name](#input\_image\_resource\_group\_name) | n/a | `string` | `"image"` | no |
| <a name="input_image_version_name"></a> [image\_version\_name](#input\_image\_version\_name) | n/a | `string` | `"0.0.1"` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"North Central US"` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Prefix of the resource name. | `string` | `"TF-postgres"` | no |
| <a name="input_node_address_prefix"></a> [node\_address\_prefix](#input\_node\_address\_prefix) | n/a | `list` | <pre>[<br>  "10.0.0.0/24"<br>]</pre> | no |
| <a name="input_node_address_space"></a> [node\_address\_space](#input\_node\_address\_space) | n/a | `list` | <pre>[<br>  "10.0.0.0/16"<br>]</pre> | no |
| <a name="input_rsg_name"></a> [rsg\_name](#input\_rsg\_name) | n/a | `string` | `"Week5-TF-VMss-bonus"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_DB_admin_password"></a> [DB\_admin\_password](#output\_DB\_admin\_password) | n/a |
| <a name="output_DB_username"></a> [DB\_username](#output\_DB\_username) | n/a |
| <a name="output_VMSS_admin_password"></a> [VMSS\_admin\_password](#output\_VMSS\_admin\_password) | n/a |
| <a name="output_VMSS_admin_user"></a> [VMSS\_admin\_user](#output\_VMSS\_admin\_user) | n/a |
| <a name="output_azurerm_postgresql_flexible_server"></a> [azurerm\_postgresql\_flexible\_server](#output\_azurerm\_postgresql\_flexible\_server) | n/a |
| <a name="output_postgresql_flexible_server_database_name"></a> [postgresql\_flexible\_server\_database\_name](#output\_postgresql\_flexible\_server\_database\_name) | n/a |
| <a name="output_vmss_public_ip"></a> [vmss\_public\_ip](#output\_vmss\_public\_ip) | n/a |
