module "vpc" {
  source = "./vpc"
}

module "eks" {
  source       = "./eks"
  vpc_id       = module.vpc.vpc_id
  public_subnet_ids  = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  cluster_name = "eks-cluster"
}
