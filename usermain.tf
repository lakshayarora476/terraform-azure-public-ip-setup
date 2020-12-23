resource "random_string" "Terraformfqdn" {
 length  = 6
 special = false
 upper   = false
 number  = false
}

resource "azurerm_public_ip" "TerraformPublicIp" {
 name                         = join("-",[var.public_ip_name, random_string.Terraformfqdn.result])
 location                     = var.public_ip_location
 resource_group_name          = var.public_ip_rg_name
 allocation_method = var.public_ip_allocation_method
 domain_name_label            = random_string.Terraformfqdn.result
 tags                         = var.tags
}

