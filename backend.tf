terraform {
  backend "s3" {
    bucket = "terraform-state-eks-282114"
    dynamodb_table = "terraform-eks"
    key = "eks/terraform-dev-cluster"
    region = "us-east-1"
  }
}