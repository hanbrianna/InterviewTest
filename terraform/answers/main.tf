resource "aws_iam_role" "role" {
  name = var.role_name

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
            "ec2:DescribeTags"
          ],
          "Effect": "Allow",
          "Resource": "*",
          "Condition": {
            "ForAllValues:StringEquals": {
              "aws:ResourceTag/AssetID": [
                "1337"
              ]
            }
          }
        },
        {
          "Action": [
            "s3:GetBucketTagging"
          ],
          "Effect": "Allow",
          "Resource": "arn:aws:s3:::excellent-bucket"
        }
      ]
    }
    EOF
}

resource "aws_iam_role_policy_attachment" "pol_attach" {
  role       = aws_iam_role.role.name
  policy_arn = aws_iam_policy.policy.arn
}