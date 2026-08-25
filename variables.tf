variable "vpc_cidr" {
    type  = string
    default = "10.0.0.0/16"
}

variable "environment" {
    type  = string

    validation {
        condition    = contains(["dev","prod","uat","qa"], var.environment)
        error_message = "Environments should be one of dev, qa, uat or prod"
    }
}

variable "project" {
    type  = string
}

variable "vpc_tags" {
    type = map
    default = {}
}

variable "igw_tags"{
    type  = map
    default = {}
}
