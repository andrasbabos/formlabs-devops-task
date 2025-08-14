data "aws_eks_cluster" "main" {
  for_each = var.eks_parameters
  name     = each.value.name
}

data "aws_eks_cluster_auth" "main" {
  for_each = var.eks_parameters
  name     = each.value.name
}
