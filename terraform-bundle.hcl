terraform {
  # Version of Terraform to include in the bundle. An exact version number
  # is required.
  version = "0.12.7"
}

# Define which provider plugins are to be included.
providers {
  # Include both the newest random provider in the 2.1 and 2.2 series.
  # Each item in the list allows a deistinct provider binary to be included in order to satisfy all the requirements.
  random = ["~> 2.1.0", "~> 2.2.0"]

  # Include an exact version of the null provider.
  null = ["2.1.2"]

  # Include a custom plugin to the bundle. Will search for the plugin in the
  # plugins directory, and package it with the bundle archive. Plugin must have
  # a name of the form: terraform-provider-*, and must be build with the operating
  # system and architecture that terraform enterprise is running, e.g. linux and amd64
  okta = ["~> 3.0"]
}