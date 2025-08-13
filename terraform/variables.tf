variable "eks_parameters" {
  type = map(object({
    name    = string
    version = string
    scaling_config = object({
      desired_size = number
      max_size     = number
      min_size     = number
    })
    update_config = object({
      max_unavailable = number
    })
  }))
}

variable "helm_charts" {
  type = map(object({
    chart            = string
    create_namespace = optional(bool, false)
    name             = string
    namespace        = optional(string, null)
    repository       = optional(string, null)
    set = optional(list(object({
      name  = string
      value = optional(string, null)
      type  = optional(string, null)
    })), [])
    version = optional(string, null)
    wait    = optional(bool, null)
  }))
}
