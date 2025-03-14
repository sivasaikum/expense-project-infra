module "mysql_sg" {
    source = "../terraform-aws-securitygroup"
    project = var.project
    environment = var.environment
    sg_name = "mysql"
    sg_desc = "creating a security group for mysql instance"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags

}