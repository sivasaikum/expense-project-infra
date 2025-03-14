resource "aws_ssm_parameter" "sg_id" {
    name = "/${var.project}/${var.environment}/mysql_sg_id"
    type = "String"
    value = module.mysql_sg.sg_id
}