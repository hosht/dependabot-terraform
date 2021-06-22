terraform {
  required_version = "1.0.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0.0"
    }
  }
}

resource "null_resource" "null" {}

module "files" {
  source  = "matti/resource/shell"
  version = "1.2.0"

  command = "ls -l"
}
