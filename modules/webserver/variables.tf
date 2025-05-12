# Defines the instance_type variable for the webserver module
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}
