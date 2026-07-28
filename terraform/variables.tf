variable "aws_region" {
  description = "AWS region in which to create the lab resources."
  type        = string
  default     = "us-east-2"
}

variable "instance_type" {
  description = "EC2 instance type used by the DevOps lab server."
  type        = string
  default     = "t3.micro"
}

variable "allowed_ssh_cidr" {
  description = "Trusted public IPv4 CIDR permitted to connect over SSH. Supply this at plan/apply time."
  type        = string

  validation {
    condition     = can(cidrhost(var.allowed_ssh_cidr, 0))
    error_message = "allowed_ssh_cidr must be a valid IPv4 CIDR, for example 203.0.113.10/32."
  }
}
