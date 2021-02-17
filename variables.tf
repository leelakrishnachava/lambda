variable "aws_region" {
  default     = "us-east-1"
  description = "The region of AWS"
}

variable "function_name" {
  type = string
}

variable "runtime" {
  type = string
}

variable "handler" {
  type = string
}

variable "filename" {
  type    = string
  default = ""
}

