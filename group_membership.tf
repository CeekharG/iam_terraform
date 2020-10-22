resource "aws_iam_user_group_membership" "admin" {
    user = aws_iam_user.devusers.name
    
    groups = [
        aws_iam_group.DevOps_ADMIN.name,
        aws_iam_group.ADMIN.name,
    ]
}
