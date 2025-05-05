module "network" {
  source         = "./modules/network"
  aws_region     = var.aws_region
  vpc_cidr       = var.vpc_cidr
  public_subnets = var.public_subnets
}

module "security" {
  source            = "./modules/security"
  vpc_id            = module.network.vpc_id
  public_subnet_ids = module.network.public_subnet_ids
}

module "iam" {
  source    = "./modules/iam"
  app_name  = var.app_name
}

module "logs" {
  source    = "./modules/logs"
  app_name  = var.app_name
}

module "ecs" {
  source           = "./modules/ecs"
  aws_region       = var.aws_region           
  app_name         = var.app_name
  container_port   = var.container_port
  execution_role   = var.execution_role
  log_group_name   = var.log_group_name
  alb_sg_id        = var.alb_sg_id
  ecs_sg_id        = var.ecs_sg_id
  subnet_ids       = var.subnet_ids
  vpc_id           = var.vpc_id
  cluster_name     = var.cluster_name
}

