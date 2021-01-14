name = "demoRG"
location = "East Us"

vnetname = "demovnet"
address = ["10.0.0.0/16"]
//subnetname = "subnetA"
//subnetaddress = "10.0.1.0/24"

 /*subnet_prefix= [
    {
      ip_address      = "10.0.1.0/24"
      subnet_name     = "subnet-A"
    },
    {
      ip_address      = "10.0.2.0/24"
      subnet_name     = "subnet"
 ]*/
 subnet_name = ["subnet-A", "subnet-B", "subnet-C", "subnet-D"]
 address_prefix = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
#nsg variable
nsgname            = "testnsg"
nsgrulename        = "testnsgrule"
priority           = 100
direction          = "Outbound"
access             = "Allow"
protocol           = "Tcp"
sourceport         = "*"
destinationport    = "*"
sourceaddress      = "*"
destinationaddress = "*"
