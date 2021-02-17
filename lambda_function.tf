
provider "aws" {
  region  = "us-east-1"
  profile = "assignment"
}

resource "aws_lambda_function" "lambda" {
  filename      = var.filename
  function_name = var.function_name
  role          = aws_iam_role.lambda.arn
  handler       = var.handler
  runtime       = var.runtime

  source_code_hash = filebase64sha256("placeholder.zip")

  environment {
    variables = {
      job = "asgginment_test"
    }
  }

    lifecycle {
    ignore_changes = [
      filename,
    ]
  }
}