module "eks" {
  source   = "./modules/eks"
  for_each = var.eks_parameters

  eks_parameters = var.eks_parameters[each.key]
}

module "helm_chart" {
  source = "./modules/helm"
  for_each = var.helm_charts

  helm_chart = var.helm_charts[each.key]
}

module "manifest" {
  source = "./modules/manifest"
  for_each = var.manifests

  manifest = var.manifests[each.key]
}
