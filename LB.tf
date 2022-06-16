resource "azurerm_public_ip" "pub_ip" {
  name                = "vmss-public-ip"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
  #  domain_name_label   = random_string.fqdn.result
  #  tags                = var.Environment
}

resource "azurerm_lb" "LB" {
  name                = "vmss-lb"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  #  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.pub_ip.id
  }

  #  tags = var.Environment
}

resource "azurerm_lb_backend_address_pool" "bpepool" {
  loadbalancer_id = azurerm_lb.LB.id
  name            = "BackEndAddressPool"
}

resource "azurerm_lb_probe" "LB_probe" {
  #  resource_group_name = azurerm_resource_group.rg.name
  loadbalancer_id     = azurerm_lb.LB.id
  name                = "tcpProbe"
  protocol            = "Tcp"
  port                = 80
  interval_in_seconds = 5
}

resource "azurerm_lb_rule" "lbnatrule" {
  #  resource_group_name            = azurerm_resource_group.rg.name
  loadbalancer_id                = azurerm_lb.LB.id
  name                           = "8080"
  protocol                       = "Tcp"
  frontend_port                  = var.application_port
  backend_port                   = var.application_port
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.bpepool.id]
  frontend_ip_configuration_name = "PublicIPAddress"
  probe_id                       = azurerm_lb_probe.LB_probe.id
  disable_outbound_snat          = true
  enable_floating_ip             = false
}

resource "azurerm_lb_nat_rule" "natshhin" {
  resource_group_name = azurerm_resource_group.rg.name
  count               = 3
  loadbalancer_id     = azurerm_lb.LB.id
  name                = "sshin${count.index}"
  protocol            = "Tcp"
  frontend_port       = "5000${count.index}"
  backend_port        = 22
  #  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.bpepool.id]
  frontend_ip_configuration_name = "PublicIPAddress"
  #  probe_id                       = azurerm_lb_probe.LB_probe.id
  #  disable_outbound_snat          = true


}


resource "azurerm_network_interface_nat_rule_association" "nat_ass" {
  network_interface_id  = azurerm_network_interface..id
  ip_configuration_name = "testconfiguration1"
  nat_rule_id           = azurerm_lb_nat_rule.natshhin.id
}

#resource "azurerm_lb_nat_pool" "sshin" {
#  resource_group_name            = "${azurerm_resource_group.rg.name}"
#  name                           = "ssh"
#  loadbalancer_id                = "${azurerm_lb.LB.id}"
#  protocol                       = "Tcp"
#  frontend_port_start            = 50000
#  frontend_port_end              = 50099
#  backend_port                   = 22
#  frontend_ip_configuration_name = "pip-config"
#}


