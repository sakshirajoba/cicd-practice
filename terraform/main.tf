terraform {
    required_version = ">=1.3"

    required_providers {
        local ={
            source = "hashicorp/local"
            version = "~>2.5"
        }
    }
}

variable "environment" {
    type = string
    default= "dev"
}

variable "app_version" {
    type=string
    default = "local"
}
resource "local_file" "deploy_info" {
    filename = "${path.module}/deploy/${var.environment}-info.txt"
    content = "env=${var.environment}\nversion=${var.app_version}\n"
}

output "deployed_file"{
    value = local_file.deploy_info.filename
}