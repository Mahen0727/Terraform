variable "ENV" {}
variable "PROJECT_NAME" {}
variable "VPC_CIDR"   {}
variable "PUBLIC_SUBNET_CIDR" {
    type = "list"
}

variable "PRIVATE_SUBNET_CIDR" {
    type = "list"
}

variable "MANAGEMENT_VPC" {}

variable "MANAGEMENT_CIDR" {} 
data "aws_availability_zones" "azs" {}