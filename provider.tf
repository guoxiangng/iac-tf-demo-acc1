terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }

  # backend "s3" {}

}

provider "aws" {
  region = "ap-southeast-1"
  # alias = "acc1" #alias is required if TFproject requires multiple Aws providers i.e. deployment into different accounts in this context. 
  # alias will need to be further declared in every resource block in that case.
  assume_role {
    role_arn = "arn:aws:iam::395890110782:role/lzdemo-crossacc-tfdeploy"
    external_id = "lzdemo"
  }
}
