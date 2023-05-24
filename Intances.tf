terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.39.0"
    }
  }
}

provider "hcloud" {}

resource "hcloud_server" "web" {
  count       = var.instances
  name        = var.server-name
  image       = var.os_type
  server_type = var.server_type
  location    = var.location
  ssh_keys    = [hcloud_ssh_key.hetzner_key.id]
  user_data   = data.template_file.init.rendered
}

data "template_file" "init" {
  template = file("k3s.sh.tpl")
}

resource "hcloud_ssh_key" "NAME_hetzner_key" {
  name       = "hetzner-key"
  public_key = file("./hetzner.pub")
}

