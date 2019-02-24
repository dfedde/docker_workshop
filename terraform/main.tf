provider "google" {
  project = "dockerclass-232718"
}

variable "network_name" {
  type = "string"
  default = "default"
}

resource "google_compute_firewall" "http" {
  name = "http-firewall"
  network = "${var.network_name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = [
      "80"]
  }
}

resource "google_compute_instance" "studentbox" {
  count = 50
  name = "studentbox${count.index}"
  machine_type = "f1-micro"
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable-72-11316-136-0"
    }
  }

  network_interface {
    network = "${var.network_name}"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "sudo /usr/sbin/useradd -G wheel,docker -p $(echo student${count.index} | openssl passwd -1 -stdin) -m -s /bin/bash student${count.index}; sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config; systemctl reload sshd.service"
}
