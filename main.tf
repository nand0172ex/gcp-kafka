# main.tf

resource "google_compute_instance" "kafka_instance" {
  name         = "kafka-instance"  # Name of the Compute Engine instance
  machine_type = "n1-standard-2"  # Machine type for the instance
  zone         = var.zone  # Zone for the instance

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"  # Debian 10 image for the boot disk
    }
  }

  network_interface {
    network = "default"  # Use the default network
  }

  metadata_startup_script = <<-EOF
    sudo apt-get update
    sudo apt-get install -y openjdk-11-jre-headless
    wget https://downloads.apache.org/kafka/3.1.0/kafka_2.13-3.1.0.tgz
    tar -xzf kafka_2.13-3.1.0.tgz
    cd kafka_2.13-3.1.0
  EOF
}
