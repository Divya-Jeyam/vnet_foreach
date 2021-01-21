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
    
}
variable "nsgrulename1"{
 type = string
}
variable "nsgrulename2"{
 type = string
}
variable "nsgrulename3"{
 type = string
}
variable "priority1"{

}
variable "priority2"{

}
variable "priority3"{

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
variable "destinationport2"{

}
variable "destinationport3"{

}
variable "sourceaddress"{

}
variable "destinationaddress"{

}
