resource "kubectl_manifest" "self" {
  yaml_body = templatefile("${path.root}/${var.manifest.path}", var.manifest.parameters)
}
