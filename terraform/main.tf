provider "google" {
  project = "dockerclass-232718"
}

resource "google_compute_instance" "studentbox" {
  count = 50
  name         = "studentbox${count.index}"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable-72-11316-136-0"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "sudo /usr/sbin/useradd -G wheel,docker -p $(echo student${count.index} | openssl passwd -1 -stdin) -m -s /bin/bash student${count.index}; sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config; systemctl reload sshd.service"
}

