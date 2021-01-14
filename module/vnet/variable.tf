variable "vnetname"{
type=string
}
variable "address"{
type=list(string)
}
variable "subnet_name" {
  type = "list"
 }
variable "address_prefix" {
    type = "list"
}
variable "name"{
}
variable "location"{
} 

variable "nsgname"{
    type = string
}

variable "nsgrulename"{

}
variable "priority"{

}
variable "direction"{

}
variable "access"{

}
variable "protocol"{

}
variable "sourceport"{

}
variable "destinationport"{

}
variable "sourceaddress"{

}
variable "destinationaddress"{

}
