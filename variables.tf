variable "aws_region" {
  type        = string
  description = "us-east-1"
}

variable "state_bucket_name" {
  type        = string
  description = "v-backend-s3"
}

variable "lock_table_name" {
  type        = string
  description = "v-backend-db"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnet CIDRs in two AZs"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "app_name" {
  type        = string
  description = "Prefix for naming resources"
  default     = "my-app"
}

variable "container_port" {
  type        = number
  description = "Port your container listens on"
  default     = 80
}

