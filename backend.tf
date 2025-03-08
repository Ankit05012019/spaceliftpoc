terraform {
  backend "s3" {
    bucket         = "spacelift-eks-poc"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}
