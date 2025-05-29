identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "development" {
  inputs = {
    regions        = { "us-east-1" = "us-east-1" }
    role_arn       = "arn:aws:iam::062852074709:role/vansh-stack-role"
    identity_token = identity_token.aws.jwt
    default_tags   = {
      Environment = "dev"
      Project     = "TerraformStacks"
    }
  }
}
