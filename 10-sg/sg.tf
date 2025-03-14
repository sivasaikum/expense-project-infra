module "mysql_sg" {
    source = "git::https://github.com/sivasaikum/terraform-aws-securitygroup.git?ref=main"
    project = var.project
    environment = var.environment
    sg_name = "mysql"
    sg_desc = "creating a security group for mysql instance"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags

}

module "backend_sg" {
    source = "git::https://github.com/sivasaikum/terraform-aws-securitygroup.git?ref=main"
    project = var.project
    environment = var.environment
    sg_name = "backend"
    sg_desc = "creating a security group for backend instance"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags

}

module "frontend_sg" {
    source = "git::https://github.com/sivasaikum/terraform-aws-securitygroup.git?ref=main"
    project = var.project
    environment = var.environment
    sg_name = "frontend"
    sg_desc = "creating a security group for frontend instance"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags

}