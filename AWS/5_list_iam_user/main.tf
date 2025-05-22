
resource "aws_iam_user" "userslist" {
  count = length(var.listofusernames)
  name  = var.listofusernames[count.index]
}

output "names" {
  value = aws_iam_user.userslist[*].name
}