terraform {
  required_providers {
    aws = {
      source  = "registry.terraform.io/hashicorp/aws"
      version = "~> 4.10"
    }
  }
}
provider "aws" {
	access_key = $AWS_ACCESS_KEY_ID
	secret_key = $ AWS_SECRET_ACCESS_KEY

}
