variable "eks_parameters" {
  type = object({
    name    = string
    version = string
  })
}
