resource "aws_lambda_function" "test_lambda" {
    filename            = "./tf/function.zip"
    source_code_hash    = "${filebase64sha256("./tf/function.zip")}"
    function_name       = "${var.project}-${var.env}"
    role                = "${aws_iam_role.iam_for_lambda.arn}"
    handler             = "handlers.main"
    description         = "${var.description}"
    timeout             = 30
    memory_size         = 128
    runtime             = "python3.7"

    tags = {
        Project     = "${var.project}"
        Environment = "${var.env}"
        }

    environment {
        variables = {
            Environment = "${var.env}"
        }
    }
}