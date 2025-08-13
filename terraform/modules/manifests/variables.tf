variable "manifest" {
  type = object({
    path       = string
    parameters = optional(map(string), {})
  })
}
