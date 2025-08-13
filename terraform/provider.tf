terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.43"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 3.0.2"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

provider "helm" {
  kubernetes = {
    host                   = data.aws_eks_cluster.main["formlabs"].endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.main["formlabs"].certificate_authority.0.data)
    exec = {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["eks", "get-token", "--cluster-name", data.aws_eks_cluster.main["formlabs"].name]
      command     = "aws"
    }
  }
}

