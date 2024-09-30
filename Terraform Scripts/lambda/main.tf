resource "aws_lambda_function" "example_lambda" {
  function_name = var.function_name
  runtime = var.runtime
  handler = "lambda_function.lambda_handler"
  role = "${aws_iam_role.example_lambda_role.arn}"

  environment = {
    variables = {
      EXAMPLE_VARIABLE = var.EXAMPLE_VARIABLE
    }
  }

  filename = "lambda_function.py"
  function = <<EOF
def lambda_handler(event, context):
    return "Hello World"
EOF
}

resource "aws_iam_role" "example_lambda_role" {
  name = "example_lambda_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}
