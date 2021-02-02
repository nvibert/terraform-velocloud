terraform {
  required_providers {
    velocloud = {
      source = "adeleporte/velocloud"
    }
  }
}

provider "velocloud" {
  vco   = var.vco
  token = var.token
}


/*================
Create VCO Edge
=================*/


module "VeloCloud" {
  source = "../VeloCloud"
}
