eks_parameters = {
  formlabs = {
    name    = "formlabs"
    version = "1.31"
    scaling_config = {
      desired_size = 1
      max_size     = 3
      min_size     = 1
    }
    update_config = {
      max_unavailable = 1
    }
  }
}

helm_charts = {
  "argocd" = {
    name       = "argocd"
    namespace  = "argocd"
    repository = "https://argoproj.github.io/argo-helm"
    chart      = "argo-cd"
  }
}
