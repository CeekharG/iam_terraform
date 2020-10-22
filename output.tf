output "usersarn" {
    value = values(aws_iam_user.devusers)[*].arn
}