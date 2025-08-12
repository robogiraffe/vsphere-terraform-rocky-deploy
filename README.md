# vsphere-terraform-rocky-deploy

vsphere terraform Rocky linux 9 automation deploy

This project relies on a pre-configured Rocky linux 9 template in vSphere.

Requirements:

    • Installed Terraform.
    • Access to vSphere.
    • Rocky linux 9 Template.
    
1. Create a Base VM

   ◦ Create a virtual machine from a clean Rocky linux 9 image.

2. Prepare template accordingly https://docs.rockylinux.org/guides/automation/templates-automation-packer-vsphere/

Configuration

1. Configure project.tfvars

    ◦ Create a project.tfvars file based on the tfvars-template and fill it out. This file contains all project secrets and must be in .gitignore.
   
3. Configure provider.tf

    ◦ Specify the address of your vSphere server.

       provider "vsphere" {
         vsphere_server       = "your_vsphere_server_ip"
         user                 = var.vsphere_user
         password             = var.vsphere_password
         allow_unverified_ssl = true
       }

Usage

    terraform init
    terraform plan -var-file="project.tfvars"
    terraform apply -var-file="project.tfvars"
    terraform destroy -var-file="project.tfvars"

Expected Outcome

After a successful terraform apply run, you will have the following infrastructure:

  • A virtual machine will be deployed to the folder specified in your project.tfvars file.

  • The virtual machine's disk will be expanded to 100% of the available space you defined.

  • SSH keys on the virtual machine will be renewed for improved security.
