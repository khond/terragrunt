# Define remote state configuration (example with S3)
remote_state {
  backend = "s3"
  config = {
    bucket         = "your-terraform-state-bucket"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-1"
  }
}

# Define common configuration that can be shared across environments
inputs = {
  vpc_cidr               = "10.0.0.0/16"
  public_subnet_cidrs    = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs   = ["10.0.3.0/24", "10.0.4.0/24"]
}
