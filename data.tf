data "vsphere_datacenter" "datacenter" {
  name = var.vm_vsphere_datacenter
}

data "vsphere_host" "host" {
  name          = var.vm_vsphere_host
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_datastore" "datastore" {
  name          = var.vm_vsphere_datastore
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "template" {
  name          = var.vm_template
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network" {
  name          = var.wan_network_name
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

