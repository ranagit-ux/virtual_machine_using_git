gitrg = {
  rg1 = {
    name     = "rgusinggit"
    location = "westeurope"
  }
}

storagegit = {
  store = {
    name                     = "gitstoragefirst"
    location                 = "westeurope"
    account_replication_type = "LRS"
    account_tier             = "Standard"
    resource_group_name      = "rgusinggit"
  }
}

netgit = {
  vnet1 = {
    name                = "virtualgit"
    location            = "west europe"
    address_space       = ["10.0.0.0/16"]
    resource_group_name = "rgusinggit"
  }
}

netsub = {
  snet1 = {
    name                 = "subnetgitfirst"
    resource_group_name  = "rgusinggit"
    virtual_network_name = "virtualgit"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

gitvm = {
  vm1 = {
    nicname                       = "firstgitnic"
    location                      = "westeurope"
    private_ip_address_allocation = "Dynamic"
    resource_group_name           = "rgusinggit"
    subname                       = "subnetgitfirst"
    virtual_network_name          = "virtualgit"
    ipname                        = "ipname"
    vmname                        = "gtifirstvm"
    size                          = "Standard_F2"
    admin_username                = "adminuser"
    admin_password                = "Git@#12345"
    

  }
}


