terraform {
  required_version = ">= 0.12"
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "~> 1.9"
    }
  }
}


provider "mongodbatlas" {
  public_key   = var.publicKey
  private_key  = var.privateKey
}
