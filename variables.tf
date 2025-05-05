variable "aws_region" {
  type        = string
  description = "AWS region for all resources"
  default     = "us-east-1"
}

variable "state_bucket_name" {
  type        = string
  description = "Name of existing S3 bucket to store Terraform state"
  default     = "v-backend-s3"
}

variable "lock_table_name" {
  type        = string
  description = "Name of existing DynamoDB table for state locking"
  default     = "v-backend-db"
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

variable "alb_sg_id" {
  type        = string
  description = "Security group ID for the ALB"
}

variable "ecs_sg_id" {
  type        = string
  description = "Security group ID for ECS service"
}

variable "execution_role" {
  type        = string
  description = "IAM execution role ARN for ECS tasks"
}

variable "log_group_name" {
  type        = string
  description = "Name of CloudWatch log group for ECS"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for ECS tasks and ALB"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID used by ECS and ALB"
}

variable "cluster_name" {
  type        = string
  description = "Name of the ECS cluster"
  default     = "my-app-cluster"
}
