terraform {
  source = "../../modules/vpc"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  environment           = "prod"
  vpc_cidr              = "10.2.0.0/16"
  public_subnet_cidrs   = ["10.2.1.0/24", "10.2.2.0/24"]
  private_subnet_cidrs  = ["10.2.3.0/24", "10.2.4.0/24"]
}
