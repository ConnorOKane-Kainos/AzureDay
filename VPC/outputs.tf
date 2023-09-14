output subnet_aks {
    value = azurerm_subnet.subnet_aks.name
}
output vpc_cidr {
    value = azurerm_virtual_network.citi_net.address_space
}