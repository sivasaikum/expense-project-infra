resource "aws_ssm_parameter" "mysql_sg_id" {
    name = "/${var.project}/${var.environment}/mysql_sg_id"
    type = "String"
    value = module.mysql_sg.sg_id
}

resource "aws_ssm_parameter" "backen_sg_id" {
    name = "/${var.project}/${var.environment}/backen_sg_id"
    type = "String"
    value = module.backend_sg.sg_id
}

resource "aws_ssm_parameter" "frontend_sg_id" {
    name = "/${var.project}/${var.environment}/frontend_sg_id"
    type = "String"
    value = module.frontend_sg.sg_id
}