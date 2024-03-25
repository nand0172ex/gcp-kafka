# providers.tf

provider "google" {
  credentials = file(var.credentials_file)  # Use the provided service account key JSON file for authentication
  project     = var.project_id  # Use the provided GCP project ID
  region      = var.region  # Use the provided region
}
