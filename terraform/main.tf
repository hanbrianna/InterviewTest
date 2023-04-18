resource "aws_iam_role" "role" {
  name = "placeholder-role-name"

  assume_role_policy = <<-EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Action": "sts:AssumeRole",
          "Principal": {
            "Service": "ec2.amazonaws.com"
          },
          "Effect": "Allow",
          "Sid": "ec2Assume"
        }
      ]
    }
    EOF
}

resource "aws_iam_policy" "policy" {
  name        = "example-pol"
  description = "This is not a real policy"

  policy = <<-EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Action": [
            "ec2:*"
          ],
          "Effect": "Allow",
          "Resource": "*"
        },
        {
          "Action": [
            "s3:*"
          ],
          "Effect": "Allow",
          "Resource": "*"
        }
      ]
    }
    EOF
}

resource "aws_iam_role_policy_attachment" "pol_attach" {
}