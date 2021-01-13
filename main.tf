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


 nsgname            = "${var.nsgname}"
 nsgrulename        = "${var.nsgrulename}"
 priority           = "${var.priority}"
 direction          = "${var.direction}"
 access             = "${var.access}"
 protocol           = "${var.protocol}"
 sourceport         = "${var.sourceport}"
 destinationport    = "${var.destinationport}"
 sourceaddress      = "${var.sourceaddress}"
 destinationaddress = "${var.destinationaddress}"
}


