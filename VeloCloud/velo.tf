terraform {
  required_providers {
    velocloud = {
      source = "adeleporte/velocloud"
    }
  }
}


data "velocloud_profile" "nvibert_profile" {
    name = "nvibert-profile"
}

resource "velocloud_edge" "nvibert_edge" {

  configurationid               = data.velocloud_profile.nvibert_profile.id
  modelnumber                   = "virtual"

  name                          = "nvibert_edge"

  site {
    name                        = "nvibert_"
    contactname                 = "Nico"
    contactphone                = "+331010101010"
    contactmobile               = "+336010101010"
    contactemail                = "nico@nico.com"
    streetaddress               = "none_of_your_business"
    city                        = "I won't tell you"
    country                     = "UK"

    shippingstreetaddress       = "It's somewhere in the cloud"
    shippingcity                = "Cloud City"
    shippingcountry             = "VMC"

    lat                         = 53.397
    lon                         = -2

    shippingsameaslocation      = true
  }
}

output "nvibert_edge_key" {value = velocloud_edge.nvibert_edge.activationkey}