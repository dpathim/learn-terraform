module "components" {
  for_each              = var.components

  source                = "./module"
  zone_id               = var.zone_id
  vpc_security_groups   = var.vpc_security_groups
  name                  = each.value["name"]
  instance_type         = each.value["instance_type"]
}



