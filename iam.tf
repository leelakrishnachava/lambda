resource "aws_iam_role" "lambda" {
  name = "${var.function_name}-lambda-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "lambda.amazonaws.com"
        ]
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_policy" "lambda_policy" {
  name  = "${var.function_name}-lambda-policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "sns:*"
            ],
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
}
EOF
}


resource "aws_iam_role_policy_attachment" "lambda_role_policy_attachment" {
  role       = "${aws_iam_role.lambda.name}"
  policy_arn = aws_iam_policy.lambda_policy.arn
}
