resource "aws_ssm_parameter" "parameters" {
  count =length(var.parameters)
  name = var.parameters[count.index].name
  value = var.parameters[count.index].value
  type  = "SecureString"
  key_id = "48dbc6f3-656c-49e7-85ca-29fe66d3ed4d"
  #overwrite = true
}

resource "aws_ssm_parameter" "passwords" {
  count  = length(var.passwords)
  name   = var.passwords[count.index].name
  value  = var.passwords[count.index].value
  type   = "SecureString"
  key_id = "dce90622-5a23-4f82-a639-be841f534702"
  #overwrite = true
}