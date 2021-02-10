Terraform script to build the backbone of the new LLamaDev environment.  State will not be kept.

Terragrunt will copy the providers and backend configuration into the sub modules.

Going to move the keyvars.tf file into the region.tfvars file as that is the proper way to use terragrunt
Going to move to a module based rollout as that is the proper way to use terragrunt

Currently we are only gaining 50% or so of the power of terragrunt.

You'll need a keyvars.tf file inside of each folder for it to run properly, that is formatted like this(or anything that adds a variable in like the below):

variable "keys" {
  type = map
  default = {
    keys =   {
        "access" = "your_access_key"
        "secret" = "your_secret_key"
      }
  }
}