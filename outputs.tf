# outputs.tf

output "instance_ip" {
  description = "The public IP address of the Kafka instance"  # Description of the output
  value       = google_compute_instance.kafka_instance.network_interface.0.access_config.0.assigned_nat_ip  # Value of the output
}
