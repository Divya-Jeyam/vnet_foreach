output "vnetname"{
value="${azurerm_virtual_network.main.name}"
}
output "vnameadd"{
value="${azurerm_virtual_network.main.address_space}"
}
/*output "subnetname"{
value="${azurerm_subnet.internal.name}"
}
output "subnetadd"{
value="${azurerm_subnet.internal.address_prefix}"
}
output "subnet_id"{
value="${azurerm_subnet.internal.id}"
value = "${for s in azurerm_subnet.internal.id : s.id => s}"
}
*/
