provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "jenkins-billhome-tf"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-us-east-1"
  }
}
