resource "azurerm_virtual_network" "main" {
  
  name                = "${var.vnetname}"
  address_space       ="${var.address}"
  location = "${var.location}"
  resource_group_name = "${var.name}"
}
resource "azurerm_subnet" "internal" {
  for_each = var.subnet_details
  name                 = each.value.subnet_name
  address_prefixes                = [each.value.address_prefix]
  resource_group_name  = "${var.name}"
  virtual_network_name = "${azurerm_virtual_network.main.name}"
}

#nsg
resource "azurerm_network_security_group" "main" {
  for_each = var.nsgname
  name                = each.value.nsgname
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
  for_each = var.nsgname
  network_security_group_name = "${azurerm_network_security_group.main[each.key].name}"
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
  for_each = var.nsgname
  network_security_group_name = "${azurerm_network_security_group.main[each.key].name}"
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
  for_each = var.nsgname
  network_security_group_name = "${azurerm_network_security_group.main[each.key].name}"
}

resource "azurerm_subnet_network_security_group_association" "main" {
  for_each = var.nsgname
  subnet_id                 = azurerm_subnet.internal[each.key].id
  network_security_group_id = azurerm_network_security_group.main[each.key].id
}