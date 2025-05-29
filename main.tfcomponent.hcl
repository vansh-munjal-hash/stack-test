provider "aws" "this" {
    for_each = toset(var.regions)
    
    config {
        region = each.value
        assume_role_with_web_identity {
        role_arn           = var.role_arn
        web_identity_token = var.identity_token
    }
  }
}