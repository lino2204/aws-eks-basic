# Configure backend for state management
terraform {
  backend "s3" {
    bucket         = "terraform-state-platform-gitlab"
    key            = "kubernetes-basic-statefile.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-table"
    encrypt        = true
    profile        = "oidc"
  }
}

# Configure the AWS Provider
provider "aws" {
  profile = "oidc"
}