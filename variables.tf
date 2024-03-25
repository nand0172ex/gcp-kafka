# variables.tf

variable "project_id" {
  description = "The GCP project ID"  # Description of the project_id variable
}

variable "credentials_file" {
  description = "Path to the service account key JSON file"  # Description of the credentials_file variable
}

variable "region" {
  description = "The GCP region where resources will be created"  # Description of the region variable
  default     = "us-central1"  # Default value for the region variable
}

variable "zone" {
  description = "The GCP zone where resources will be created"  # Description of the zone variable
  default     = "us-central1-a"  # Default value for the zone variable
}
