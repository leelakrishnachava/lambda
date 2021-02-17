output "lambda_arn" {
  value = "${aws_lambda_function.lambda.arn}"
}

output "sns_arn" {
  value = "${aws_sns_topic.block_updates.arn}"
}