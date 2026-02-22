variable "ami_id" {
  type    = string
  default = "ami-0b6c6ebed2801a5cb"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "terraform"
}

variable "project" {
  type    = string
  default = "MyProject"
}

variable "environment" {
  type    = string
  default = "dev"
}
