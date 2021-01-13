name = "demoRG"
location = "East Us"

vnetname = "demovnet"
address = ["10.0.0.0/16"]
subnetname = "subnetA"
subnetaddress = "10.0.1.0/24"


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
