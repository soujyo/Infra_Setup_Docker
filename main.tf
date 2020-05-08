
provider "google" {
  credentials = file("serviceaccount.json")
  project = "custom-helix-275804"
  region = "asia-northeast3"
  zone = "asia-northeast3-c"
}

terraform {
  backend "local" { path = "./volume/tfstates/terraform.tfstate" }
}




//resource "google_compute_instance" "vm_instance-b" {
//  machine_type = "f1-micro"
//  name = "ekstep-terraform-instance"
//  boot_disk {
//    initialize_params {
//      image = "debian-cloud/debian-9"
//    }
//  }
//  network_interface {
//    network = "terraform-network"
//    access_config  {
//
//    }
//  }
//}


resource "google_compute_instance" "vm_instance-a" {
  machine_type = "f1-micro"
  name = "ekstep-terraform-instance-infra-pipeline"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "terraform-network"
    access_config  {

    }
  }
  service_account {
      scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    }


}


//resource "google_compute_network" "vpc_network" {
//  name = "terraform-network"
//  auto_create_subnetworks = "true"
//}


