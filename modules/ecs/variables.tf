variable "aws_region" {
  type        = string
  description = "AWS region for logs"
}

variable "app_name" {
  type        = string
  description = "Application name for ECS resources"
}

variable "container_port" {
  type        = number
  description = "Port that the container listens on"
}

variable "execution_role" {
  type        = string
  description = "IAM role ARN for ECS task execution"
}

variable "log_group_name" {
  type        = string
  description = "CloudWatch Logs group name for ECS tasks"
}

variable "alb_sg_id" {
  type        = string
  description = "Security group ID for the ALB"
}

variable "ecs_sg_id" {
  type        = string
  description = "Security group ID for ECS service"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for ALB and ECS tasks"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for the target group"
}

variable "cluster_name" {
  type        = string
  description = "Name for the ECS cluster"
}
