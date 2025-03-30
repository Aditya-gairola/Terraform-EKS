variable "kubernetes_version" {
  description = "The version of Kubernetes to use"
  default     = "1.31"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "aws_region" {
  default = "ap-south-1"
}

variable "key_name" {
  default = "hunny.pem"

}