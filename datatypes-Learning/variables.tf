/*variable "assign_public_ip"{
    type = bool
    default = true
}
variable "availability_zones"{
    type = list(string)
    default = ["us-east-1a", "us-east-1b"]
}
variable "common_tags"{
    type = map(string)
    default = {
        Name = "snegha-terraform-practice"
        Environment = "dev"
    }
}
variable "root_volume" {
  type = object({
    volume_size = number
    volume_type = string
  })
  default = {
    volume_size = 20
    volume_type = "gp3"
  }
}
variable "http_rule" {
  type    = tuple([number, number, string])
  default = [80, 80, "tcp"]
}*/
