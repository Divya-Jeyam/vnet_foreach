name = "demoRG"
location = "East Us"
#vnet
vnetname = "demovnet"
address = ["10.0.0.0/16"]
#subnet
subnet_details= {
    A = {
      address_prefix      = "10.0.1.0/24"
      subnet_name     = "subnet-A"
    },
    B = {
      address_prefix   = "10.0.2.0/24"
      subnet_name     = "subnet-B"
    },
    C = {
      address_prefix      = "10.0.3.0/24"
      subnet_name     = "subnet-C"
    },
    D = {
      address_prefix      = "10.0.4.0/24"
      subnet_name     = "subnet-D"
    }
 }
#nsg variable
nsgname       = {
     A = {
        nsgname   = "nsg_subnet-C"
    },
    B = {
      nsgname     = "nsg_subnet-D"
    }
}
nsgrulename1        = "ssh"
nsgrulename2        = "rdp"
nsgrulename3        = "http"
priority1           = 100
priority2           = 101
priority3           = 103
direction          = "Outbound"
access             = "Allow"
protocol           = "Tcp"
sourceport         = "*"
destinationport1    = "22"
destinationport2   = "3389"
destinationport3    = "80"
sourceaddress      = "*"
destinationaddress = "*"
