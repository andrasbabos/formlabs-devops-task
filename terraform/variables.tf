variable "eks_parameters" {
  type = map(object({
    name    = string
    version = string
  }))
}
