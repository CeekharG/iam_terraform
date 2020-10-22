resource "aws_iam_user" "devusers" {
    for_each = toset(var.users)
    name = each.value
}




