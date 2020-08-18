resource "aws_iam_group" "developer" {
  name = "developer"
  path = "/"
}

resource "aws_iam_group" "management" {
  name = "management"
  path = "/"
}