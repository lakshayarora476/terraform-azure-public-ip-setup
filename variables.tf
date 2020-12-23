variable "public_ip_name" {
    type = string
    default = "TerraformPublicIp"
}

variable "public_ip_rg_name" {}

variable "public_ip_location" {}

variable "public_ip_allocation_method" {
    type = "string"
    default = "Static"
}

variable "tags"{
    type=map(string)
    default={
        env:"stage"
    }
}
