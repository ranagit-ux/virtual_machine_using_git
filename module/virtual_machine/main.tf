resource "azurerm_network_interface" "nicgit" {
  for_each            = var.vmgit
  name                = each.value.nicname
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                         = each.value.ipname
    subnet_id = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = each.value.private_ip_address_allocation
    
  }

}

resource "azurerm_linux_virtual_machine" "gitvm" {
  for_each                        = var.vmgit
  name                            = each.value.vmname
  resource_group_name             = each.value.resource_group_name
  location                        = each.value.location
  size                            = each.value.size
  admin_username                  = "adminuser"
  admin_password                  = "Git@#12345"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.nicgit[each.key].id,
  ]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
