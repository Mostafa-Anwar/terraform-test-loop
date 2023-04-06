variable "machines" {
  type = list(object({
    name = string
    size = string
  }))
  default = [
    { name = "machine1", size = "t2.small" },
    { name = "machine2", size = "t2.medium" },
  ]
}
