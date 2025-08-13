variable "vm_vsphere_datacenter" {
  description = "Datacenter"
  type        = string
  default     = "Datacenter"
}

variable "vm_vsphere_server" {
  description = "vsphere_server"
  type        = string
  default     = "192.168.122.155"
}

variable "vm_vsphere_host" {
  description = "HOST"
  type        = string
  default     = "192.168.122.100"
}

variable "vm_vsphere_datastore" {
  description = "datastore"
  type        = string
}

variable "vm_template" {
  description = "The name of the virtual machine"
  type        = string
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "project_folder_name" {
  description = "Name of the folder to place the VM in"
  type        = string
  default     = "Project1"
}

variable "vm_cpus" {
  description = "Number of CPUs for the VM"
  type        = number
  default     = 2
}

variable "vm_memory" {
  description = "Memory in MB for the VM"
  type        = number
  default     = 2048
}

variable "vm_disk_size" {
  description = "Disk size in GB"
  type        = number
  default     = 20
}

#Network

variable "wan_network_name" {
  description = "WAN"
  type        = string
  default     = "VM Network"
}

variable "lan_network_name" {
  description = "LAN"
  type        = string
  default     = "project1"
}

variable "vm_ip_address" {
  description = "Static IPv4 address for the VM"
  type        = string
  default     = ""
}

variable "vm_netmask" {
  description = "Network mask for the static IP (CIDR prefix)"
  type        = number
}

variable "vm_gateway" {
  description = "Gateway address for the static IP"
  type        = string
}

variable "vm_ip_address2" {
  description = "IPv4 address for second NIC"
  type        = string
  default     = ""
}

variable "vm_netmask2" {
  description = "IPv4 netmask for second NIC"
  type        = number
  default     = 24
}

variable "vm_dns_servers" {
  description = "List of DNS servers for the VM"
  type        = list(string)
  default     = ["8.8.8.8", "8.8.4.4"]
}

## User default

variable "vm_user_default" {
  description = "user"
  type        = string
}

variable "vm_password_default" {
  description = "user"
  type        = string
  sensitive   = true
}

## User 2

variable "vm_user" {
  description = "user"
  type        = string
}

variable "vm_user_password" {
  description = "Password for the new VM user"
  type        = string
  sensitive   = true 
}

## User vsphere

variable "vsphere_user" {
  description = "user"
  type        = string
}

variable "vsphere_password" {
  description = "The password for the vSphere user"
  type        = string
  sensitive   = true 
}