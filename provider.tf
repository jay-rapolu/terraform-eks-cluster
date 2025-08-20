terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.9.0"
    }
  }

  backend "s3"{
    bucket  =   "jay-eks-state"
    key     =   "/demo/k8s/eks-cluster/terraform.tfstate"
    region  =   "us-east-1"
  }

}

