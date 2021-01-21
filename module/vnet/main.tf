resource "azurerm_virtual_network" "main" {
  
  name                = "${var.vnetname}"
  address_space       ="${var.address}"
  location = "${var.location}"
  resource_group_name = "${var.name}"
}
resource "azurerm_subnet" "internal" {
  name                 = "${var.subnet_name[count.index]}"
  address_prefix                = "${var.address_prefix[count.index]}"
  count  = "${length(var.subnet_name)}"
  resource_group_name  = "${var.name}"
  virtual_network_name = "${azurerm_virtual_network.main.name}"
}

#nsg
resource "azurerm_network_security_group" "main" {
  name                = "${var.nsgname[count.index]}"
  count = "${length(var.nsgname)}"
  location            = "${var.location}"
  resource_group_name = "${var.name}"
}

resource "azurerm_network_security_rule" "nsg1" {
  name                        = "${var.nsgrulename1}" 
  priority                    = "${var.priority1}"
  direction                   = "${var.direction}"
  access                      = "${var.access}"
  protocol                    = "${var.protocol}"
  source_port_range           = "${var.sourceport}"
  destination_port_range      = "${var.destinationport1}"
  source_address_prefix       = "${var.sourceaddress}"
  destination_address_prefix  = "${var.destinationaddress}"
  resource_group_name         = "${var.name}"
  count = "${length(var.nsgname)}"
  network_security_group_name = "${azurerm_network_security_group.main[count.index].name}"
}

resource "azurerm_network_security_rule" "nsg2" {
  name                        = "${var.nsgrulename2}" 
  priority                    = "${var.priority2}"
  direction                   = "${var.direction}"
  access                      = "${var.access}"
  protocol                    = "${var.protocol}"
  source_port_range           = "${var.sourceport}"
  destination_port_range      = "${var.destinationport2}"
  source_address_prefix       = "${var.sourceaddress}"
  destination_address_prefix  = "${var.destinationaddress}"
  resource_group_name         = "${var.name}"
  count  = "${length(var.nsgname)}"
  network_security_group_name = "${azurerm_network_security_group.main[count.index].name}"
}

resource "azurerm_network_security_rule" "nsg3" {
  name                        = "${var.nsgrulename3}" 
  priority                    = "${var.priority3}"
  direction                   = "${var.direction}"
  access                      = "${var.access}"
  protocol                    = "${var.protocol}"
  source_port_range           = "${var.sourceport}"
  destination_port_range      = "${var.destinationport3}"
  source_address_prefix       = "${var.sourceaddress}"
  destination_address_prefix  = "${var.destinationaddress}"
  resource_group_name         = "${var.name}"
  count  = "${length(var.nsgname)}"
  network_security_group_name = "${azurerm_network_security_group.main[count.index].name}"
}

resource "azurerm_subnet_network_security_group_association" "main" {
  count  = length(var.nsgname)
  subnet_id                 = element(azurerm_subnet.internal.*.id, (count.index)+2)
  network_security_group_id = element(azurerm_network_security_group.main.*.id, count.index)
}