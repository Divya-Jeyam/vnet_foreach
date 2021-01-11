resource "azurerm_virtual_network" "main" {
  
  name                = "${var.vnetname}"
  address_space       ="${var.address}"
  location = "${var.location}"
  resource_group_name = "${var.name}"
}

resource "azurerm_subnet" "internal" {
  name                 = "${var.subnetname}"
  resource_group_name  = "${var.name}"
  virtual_network_name = "${azurerm_virtual_network.main.name}"
  address_prefix       = "${var.subnetaddress}"
}
