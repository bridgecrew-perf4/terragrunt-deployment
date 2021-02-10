variable "regions" {
  type = map
  default = {
    "ohio" = "us-east-2"
    "ireland" = "eu-west-1"
  }
}

variable "az" {
  type = map
  default = {
      us = {
        "primary" = "us-east-2a"
        "secondary" = "us-east-2b"
      }
      eu = {
        "primary" = "eu-west-1a"
        "secondary" = "eu-west-1b"
      }
  }
}


