terraform {
  extra_arguments "common_vars" {
    commands = ["plan", "apply"]

    arguments = [
      "-var-file=../../account.tfvars",
      "-var-file=../region.tfvars"
    ]
  }
}


remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "llamadev-terragrunt-migration-llamasoft"

    key = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "my-lock-table"
  }
}

# stage/terragrunt.hcl
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
    alias = "usEast"
    region = var.regions.ohio
    access_key = var.keys.keys.access
    secret_key = var.keys.keys.secret
}

provider "aws" {
    alias = "euWest"
    region = var.regions.ireland
    access_key = var.keys.keys.access
    secret_key = var.keys.keys.secret
}
EOF
}