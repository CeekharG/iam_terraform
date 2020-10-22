resource "aws_iam_group" "DevOps_ADMIN" {
    name = "DevOps_Admin"
}

resource "aws_iam_policy" "DevOps_admin_policy" {
    name = "DevOps_Admin_Policy"
    description = "A  policy assigning access for DevOps admin allowing full admin and ec2 access"
    policy = file("devops_admin_policy.json")
}
resource "aws_iam_group_policy_attachment" "Admin_attach" {
    group = aws_iam_group.DevOps_ADMIN.name
    policy_arn = aws_iam_policy.DevOps_admin_policy.arn
}
