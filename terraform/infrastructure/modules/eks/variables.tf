variable "eks_parameters" {
  type = object({
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
  })
}
