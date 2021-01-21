#Resorce Group Variables
variable "name"{
 type=string
}
variable "location"{
type=string
}

#virutal network variable
variable "vnetname"{
type=string
}
variable "address"{
type=list(string)
}
variable "subnetdetails"{

}
variable "nsg" {

}
/*
variable "subnet_name" {
  type = "list"
}
variable "address_prefix" {
  type = "list"
}
#nsg variable
variable "nsgname"{
type= "list"
}*/
variable "nsgrulename1"{
type=string
}

variable "priority1"{

}
variable "direction"{
    
}
variable "access"{
    
}
variable "protocol"{
    
}
variable "sourceport"{
    
}
variable "destinationport1"{
    
}
variable "sourceaddress"{
    
}
variable "destinationaddress"{
    
}