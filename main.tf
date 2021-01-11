module "RG"{
 source="./module/rg"
 location = "${var.location}"
 name = "${var.name}"
}
module "vnet"{
 source="./module/vnet"
 location ="${module.RG.mod1_rg}"
 name = "${module.RG.mod_rg}"
 vnetname= "${var.vnetname}"
 address ="${var.address}"
 subnetname="${var.subnetname}"
 subnetaddress="${var.subnetaddress}"
}

