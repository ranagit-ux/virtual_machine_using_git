module "resource_group" {
  source = "../../module/resource_group"
  rggit  = var.gitrg
}

module "storage_account" {
  source     = "../../module/storage_account"
  gitstorage = var.storagegit

}

module "virtual_network" {
  source  = "../../module/virtual_network"
  gitvnet = var.netgit

}

module "subnet" {
  source = "../../module/subnet"
  subnet = var.netsub

}

module "virtual_machine" {
  source = "../../module/virtual_machine"
  vmgit  = var.gitvm

}




