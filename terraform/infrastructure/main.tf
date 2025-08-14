module "eks" {
  source   = "./modules/eks"
  for_each = var.eks_parameters

  eks_parameters = var.eks_parameters[each.key]
}
