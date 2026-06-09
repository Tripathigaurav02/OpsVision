terraform {
  backend "s3" {
    bucket         = "opsvision"
    key            = "opsvision/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}