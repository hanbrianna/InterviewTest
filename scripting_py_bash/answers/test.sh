#!bash

export AWS_PROFILE=rosettasandbox
export AWS_REGION=us-east-1

# succinct but not a particularly pleasant syntax language
aws ec2 describe-volumes --output json --no-cli-pager --query='Volumes[?VolumeType != `gp3`].{Id:VolumeId,Type:VolumeType}'

# slightly more verbose in this scenario but more powerful & not restricted to the AWS ecosystem
aws ec2 describe-volumes --output json | jq '.Volumes[] | select(.VolumeType != "gp3") | {"Id": .VolumeId, "Type": .VolumeType}'
