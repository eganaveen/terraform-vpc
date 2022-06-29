module "vpc" {
  source = "./vendor/modules/vpc"
  VPC_CIDR = var.VPC_CIDR
  ENV = var.ENV
  SUBNET_CIDR = var.SUBNET_CIDR
  AZ = var.AZ
}