terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "~> 0.6.14"
    }
  }
}

provider "libvirt" {
  uri = "qemu:///system"
}

resource "libvirt_network" "neometal" {
  name      = "neometal"
  mode      = "nat"
  domain    = "neometal.ok"
  addresses = ["172.16.15.0/24"]
  autostart = "true"
  dhcp {
    enabled = true
  }
  dns {
    enabled = true
  }
}

resource "libvirt_pool" "neometal" {
  name = "neometal"
  type = "dir"
  path = "/mnt/vm/neometal"
}


data "template_file" "network_config_ubuntu2004" {
  template = file("${path.module}/network_config_ubuntu2004.cfg")
}

data "template_file" "user_data_vm" {
  template = file("${path.module}/cloud_init_vm.cfg")
}

resource "libvirt_cloudinit_disk" "ci-vm" {
  name           = "ci-vm.iso"
  user_data      = data.template_file.user_data_vm.rendered
  network_config = data.template_file.network_config_ubuntu2004.rendered
  pool           = libvirt_pool.neometal.name
}

resource "libvirt_volume" "image-ubuntu2004" {
  name   = "ubuntu-20.04-server-cloudimg-amd64.img"
  pool   = libvirt_pool.neometal.name
  source = "./ubuntu-20.04-server-cloudimg-amd64.img"
  format = "qcow2"
}

resource "libvirt_volume" "vm01" {
  name             = "vm01.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm02" {
  name             = "vm02.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm03" {
  name             = "vm03.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm04" {
  name             = "vm04.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm05" {
  name             = "vm05.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm06" {
  name             = "vm06.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm07" {
  name             = "vm07.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm08" {
  name             = "vm08.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm09" {
  name             = "vm09.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm10" {
  name             = "vm10.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm11" {
  name             = "vm11.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm12" {
  name             = "vm12.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm13" {
  name             = "vm13.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm14" {
  name             = "vm14.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm15" {
  name             = "vm15.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm16" {
  name             = "vm16.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm17" {
  name             = "vm17.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm18" {
  name             = "vm18.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm19" {
  name             = "vm19.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm20" {
  name             = "vm20.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm21" {
  name             = "vm21.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm22" {
  name             = "vm22.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm23" {
  name             = "vm23.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_volume" "vm24" {
  name             = "vm24.qcow2"
  pool             = libvirt_pool.neometal.name
  base_volume_name = libvirt_volume.image-ubuntu2004.name
  size             = 16106127360
  format           = "qcow2"
}

resource "libvirt_domain" "vm01" {
  name       = "vm01"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm01"
    mac            = "52:54:00:00:00:01"
    addresses      = ["172.16.15.101"]
  }
  disk {
    volume_id = libvirt_volume.vm01.id
  }
}

resource "libvirt_domain" "vm02" {
  name       = "vm02"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm02"
    mac            = "52:54:00:00:00:02"
    addresses      = ["172.16.15.102"]
  }
  disk {
    volume_id = libvirt_volume.vm02.id
  }
}

resource "libvirt_domain" "vm03" {
  name       = "vm03"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm03"
    mac            = "52:54:00:00:00:03"
    addresses      = ["172.16.15.103"]
  }
  disk {
    volume_id = libvirt_volume.vm03.id
  }
}

resource "libvirt_domain" "vm04" {
  name       = "vm04"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm04"
    mac            = "52:54:00:00:00:04"
    addresses      = ["172.16.15.104"]
  }
  disk {
    volume_id = libvirt_volume.vm04.id
  }
}

resource "libvirt_domain" "vm05" {
  name       = "vm05"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm05"
    mac            = "52:54:00:00:00:05"
    addresses      = ["172.16.15.105"]
  }
  disk {
    volume_id = libvirt_volume.vm05.id
  }
}

resource "libvirt_domain" "vm06" {
  name       = "vm06"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm06"
    mac            = "52:54:00:00:00:06"
    addresses      = ["172.16.15.106"]
  }
  disk {
    volume_id = libvirt_volume.vm06.id
  }
}

resource "libvirt_domain" "vm07" {
  name       = "vm07"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm07"
    mac            = "52:54:00:00:00:07"
    addresses      = ["172.16.15.107"]
  }
  disk {
    volume_id = libvirt_volume.vm07.id
  }
}

resource "libvirt_domain" "vm08" {
  name       = "vm08"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm08"
    mac            = "52:54:00:00:00:08"
    addresses      = ["172.16.15.108"]
  }
  disk {
    volume_id = libvirt_volume.vm08.id
  }
}

resource "libvirt_domain" "vm09" {
  name       = "vm09"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm09"
    mac            = "52:54:00:00:00:09"
    addresses      = ["172.16.15.109"]
  }
  disk {
    volume_id = libvirt_volume.vm09.id
  }
}

resource "libvirt_domain" "vm10" {
  name       = "vm10"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm10"
    mac            = "52:54:00:00:00:10"
    addresses      = ["172.16.15.110"]
  }
  disk {
    volume_id = libvirt_volume.vm10.id
  }
}

resource "libvirt_domain" "vm11" {
  name       = "vm11"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm11"
    mac            = "52:54:00:00:00:11"
    addresses      = ["172.16.15.111"]
  }
  disk {
    volume_id = libvirt_volume.vm11.id
  }
}

resource "libvirt_domain" "vm12" {
  name       = "vm12"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm12"
    mac            = "52:54:00:00:00:12"
    addresses      = ["172.16.15.112"]
  }
  disk {
    volume_id = libvirt_volume.vm12.id
  }
}

resource "libvirt_domain" "vm13" {
  name       = "vm13"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm13"
    mac            = "52:54:00:00:00:13"
    addresses      = ["172.16.15.113"]
  }
  disk {
    volume_id = libvirt_volume.vm13.id
  }
}

resource "libvirt_domain" "vm14" {
  name       = "vm14"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm14"
    mac            = "52:54:00:00:00:14"
    addresses      = ["172.16.15.114"]
  }
  disk {
    volume_id = libvirt_volume.vm14.id
  }
}

resource "libvirt_domain" "vm15" {
  name       = "vm15"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm15"
    mac            = "52:54:00:00:00:15"
    addresses      = ["172.16.15.115"]
  }
  disk {
    volume_id = libvirt_volume.vm15.id
  }
}

resource "libvirt_domain" "vm16" {
  name       = "vm16"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm16"
    mac            = "52:54:00:00:00:16"
    addresses      = ["172.16.15.116"]
  }
  disk {
    volume_id = libvirt_volume.vm16.id
  }
}

resource "libvirt_domain" "vm17" {
  name       = "vm17"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm17"
    mac            = "52:54:00:00:00:17"
    addresses      = ["172.16.15.117"]
  }
  disk {
    volume_id = libvirt_volume.vm17.id
  }
}

resource "libvirt_domain" "vm18" {
  name       = "vm18"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm18"
    mac            = "52:54:00:00:00:18"
    addresses      = ["172.16.15.118"]
  }
  disk {
    volume_id = libvirt_volume.vm18.id
  }
}

resource "libvirt_domain" "vm19" {
  name       = "vm19"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm19"
    mac            = "52:54:00:00:00:19"
    addresses      = ["172.16.15.119"]
  }
  disk {
    volume_id = libvirt_volume.vm19.id
  }
}

resource "libvirt_domain" "vm20" {
  name       = "vm20"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm20"
    mac            = "52:54:00:00:00:20"
    addresses      = ["172.16.15.120"]
  }
  disk {
    volume_id = libvirt_volume.vm20.id
  }
}

resource "libvirt_domain" "vm21" {
  name       = "vm21"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm21"
    mac            = "52:54:00:00:00:21"
    addresses      = ["172.16.15.121"]
  }
  disk {
    volume_id = libvirt_volume.vm21.id
  }
}

resource "libvirt_domain" "vm22" {
  name       = "vm22"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm22"
    mac            = "52:54:00:00:00:22"
    addresses      = ["172.16.15.122"]
  }
  disk {
    volume_id = libvirt_volume.vm22.id
  }
}

resource "libvirt_domain" "vm23" {
  name       = "vm23"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm23"
    mac            = "52:54:00:00:00:23"
    addresses      = ["172.16.15.123"]
  }
  disk {
    volume_id = libvirt_volume.vm23.id
  }
}

resource "libvirt_domain" "vm24" {
  name       = "vm24"
  arch       = "x86_64"
  vcpu       = 2
  memory     = 2560
  qemu_agent = "true"
  cloudinit = libvirt_cloudinit_disk.ci-vm.id
  cpu {
    mode = "host-passthrough"
  }
  video {
    type = "qxl"
  }
  network_interface {
    network_name   = libvirt_network.neometal.name
    hostname       = "vm24"
    mac            = "52:54:00:00:00:24"
    addresses      = ["172.16.15.124"]
  }
  disk {
    volume_id = libvirt_volume.vm24.id
  }
}