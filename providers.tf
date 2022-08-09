provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "billhome-tf-08012022"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "billhome-tf"
  }
}
