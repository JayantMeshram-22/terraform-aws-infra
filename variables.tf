variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  type    = string
  default = "tf-vpc-ec2-rds-s3"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_pair_name" {
  description = "Existing EC2 key pair name (create in AWS console)"
  type        = string
  default     = ""
}

variable "db_username" {
  type    = string
  default = "tfadmin"
}

variable "db_password" {
  description = "Database password (sensitive). Override in terraform.tfvars or environment."
  type      = string
  sensitive = true
  default   = "ChangeMe123!"
}

variable "db_allocated_storage" {
  type    = number
  default = 20
}
