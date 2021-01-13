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
variable "subnetname"{
type=string
}
variable "subnetaddress"{

}

#nsg variable
variable "nsgname"{
type=string
}
variable "nsgrulename"{
type=string
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