data "archive_file" "lambda_placeholder" {
  type        = "zip"
  output_path = "placeholder.zip"

  source_dir = "placeholders/${var.runtime}"
}

locals {
  source = {
    "python2.7"  = "placeholders/python2.7"
    "python3.7"  = "placeholders/python3.7/"
    "python3.6"  = "placeholders/python3.6/"
    "nodejs10.x" = "placeholders/nodejs10.0/"
    "nodejs12.x" = "placeholders/nodejs12.0/"
    java8        = "placeholders/java8"
  }
}
