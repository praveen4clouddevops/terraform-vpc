module "vpc" {
  source            = "./vendor/modules/vpc"
  VPC_CIDR          = var.VPC_CIDR
}


# You cannot variablize this piece of code in the source parameter