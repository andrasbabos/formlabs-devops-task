variable "helm_chart" {
  type = object({
    chart            = string
    create_namespace = optional(bool, true)
    name             = string
    namespace        = string
    repository       = string
    set = optional(list(object({
      name  = string
      value = optional(string, null)
      type  = optional(string, null)
    })), [])
    version = optional(string, null)
    wait    = optional(bool, null)
  })
}
