terraform {
	required_providers {
		aws = {
			source  = "hashicorp/aws"
			version = "~> 4.9"
		}
	}
}

provider "aws" {
	  region  = var.aws_region
    #profile = var.profile
}


terraform {
 backend "s3" {
   key            = "state/terraform.tfstate"
   region         = "us-east-1"
   encrypt        = true
  }
}