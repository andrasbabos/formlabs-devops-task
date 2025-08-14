resource "helm_release" "self" {
  chart            = var.helm_chart.chart
  create_namespace = var.helm_chart.create_namespace
  name             = var.helm_chart.name
  namespace        = var.helm_chart.namespace
  repository       = var.helm_chart.repository
  values           = try([file("${path.root}/helm-values/${var.helm_chart.name}-${var.helm_chart.version}.yml")], null)
  version          = var.helm_chart.version
  wait             = var.helm_chart.wait
  timeout          = 1200 #20 minutes
}
