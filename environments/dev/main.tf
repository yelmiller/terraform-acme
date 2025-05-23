variable "instance_type" {
  description = "Instance type passed to module"
  type        = string
  default     = "t3.micro"
}

module "webserver" {
  source        = "../../modules/webserver"
  instance_type = var.instance_type
}
