output "datacenter_id" {
  value = data.vsphere_datacenter.datacenter.id
}
output "vm_ip" {
  value = var.vm_ip_address
}
