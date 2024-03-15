resource "aws_ssm_parameter" "parameter" {
  name  = "test.test1"
  value = "hello world"
  type  = "SecureString"
  key_id = "48dbc6f3-656c-49e7-85ca-29fe66d3ed4d"
}