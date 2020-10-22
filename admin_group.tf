resource "aws_iam_group" "ADMIN" {
    name = "Admin"
}

resource "aws_iam_policy" "admin_policy" {
    name = "Admin_Policy"
    description = "A  policy assigning access for  admin allowing full resource and IAM access"
    policy =  file("admin_policy.json")

}
resource "aws_iam_group_policy_attachment" "policy_attach" {
    group = aws_iam_group.ADMIN.name
    policy_arn = aws_iam_policy.admin_policy.arn
}
