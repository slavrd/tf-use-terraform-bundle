# Using terraform-bundle

A simple project to demonstrate the use of `terraform-bundle`. This is a tool that creates bundles containing specific terraform and terraform plugins versions. These bundles can then be used to run terraform without the need to download them during `terraform init`.

The bundles can be used in Terraform enterprise following [Administration: Managing Terraform Versions](https://www.terraform.io/docs/enterprise/admin/resources.html#managing-terraform-versions).

The repository includes a Vagrant project that can be used to tun the `terraform-bundle` tool.

## Prerequisites

Install [Vagrant](https://www.vagrantup.com/downloads.html)

## Running the project

* `vagrant up` - build the VM. It will have the `terraform-bundle` tool downloaded and complied.
* `vagrant ssh` - login to the VM
* `cd /vagrant` - go the the VM/Host synced folder.

To use the `terraform-bundle` the required terraform and terraform plugin versions are defined in a `hcl` configuration file. The tool will then create the bundle according to this configuration.

The demo file for the project is `terraform-bundle.hcl`. It defines the required terraform version, some official terraform plugins and a custom plugin. The custom plugin binary is in the `plugins-custom` directory.

Running `terraform-bundle package -plugin-dir=./plugins-custom terraform-bundle.hcl` will create a `zip` archive that contains the binaries of the specified terraform and terraform plugins versions.
