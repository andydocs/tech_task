provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./vpc"
}

module "eks" {
  source = "./eks"
}

module "karpenter_iam" {
  source = "./iam"
}

module "karpenter" {
  source = "./karpenter"
}
