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

variable "vm_dns_servers" {
  description = "List of DNS servers for the VM"
  type        = list(string)
  default     = ["8.8.8.8", "8.8.4.4"]
}

variable "vm_disk_size" {
  description = "Disk size in GB"
  type        = number
  default     = 20
}

## User default

variable "vm_user_default" {
  description = "user"
  type        = string
}

variable "ssh_private_key_path" {
  description = "key"
  type        = string
  default     = "~/.ssh/id_rsa_ansible"
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