eks_parameters = {
  formlabs = {
    name = "formlabs"
  }
}

helm_charts = {
  "argocd" = {
    name             = "argocd"
    namespace        = "argocd"
    repository       = "https://argoproj.github.io/argo-helm"
    chart            = "argo-cd"
    create_namespace = true
  }
}

manifests = {
  "argo-app" = {
    path = "manifests/application-app.yml"
    parameters = {
      namespace = "default"
    }
  }
}
