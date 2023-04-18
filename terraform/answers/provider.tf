
provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      AssetID = "1337"
    }
  }
}