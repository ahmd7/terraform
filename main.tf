module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "192.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["192.0.1.0/24", "192.0.2.0/24", "192.0.3.0/24"]
  public_subnets  = ["192.0.101.0/24", "192.0.102.0/24", "192.0.103.0/24"]

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}