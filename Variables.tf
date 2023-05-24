variable "server-name" {
  default = "NAME-k3s" # Server name default  
}

variable "location" {
  default = "hel1" # Server location default Helsenki
}

variable "instances" {
  default = "1" # Number of Servers
}

variable "server_type" {
  default = "cx11" # You can find another versions here => https://www.hetzner.com/cloud (scroll down)
}

variable "os_type" {
  default = "ubuntu-22.04" # fedora-35, debian-11, centos-9, rocky-linux-8
}

variable "ip_range" {
  default = "10.255.255.0/24" # Internal network
}
