variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "publicsubnetcidr" {
    type = string
    default = "10.0.1.0/24"
}

variable "publicsubnet2cidr" {
    type = string
    default = "10.0.3.0/24"
}

variable "zone1" {
    type = string
    default = "us-east-1a"
}

variable "zone2" {
    type = string
    default = "us-east-1b"
}

variable "rdspasswd" {
    type = string
    default = "123456789"
}

variable "rdsusername" {
    type = string
    default = "admin"
}

variable "databasename" {
    type = string
    default = "contestants"
}

variable "identifier" {
    type = string
    default = "participants"
}
variable "private_cidr1" {
    type = string
    default = "10.0.4.0/24" 
}
variable "private_cidr2" {
    type = string
    default = "10.0.4.0/24" 
}