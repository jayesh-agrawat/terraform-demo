variable "credentials_file" {
  description = "Path to the credentials file"
  default     = "./keys/creds.json"
  
}
variable "project" {
  default     = "first-planet-411908"
  description = "Project ID"
}
variable "location" {
  default     = "US"
  description = "Project Location"
}

variable "region" {
  default     = "us-central1"
  description = "Project Region"
}

variable "bq_dataset_name" {
  description = "Bigquery dataset name"
  default     = "demo_dataset"
}

variable "gcs_storage_class" {
  description = "value of storage class"
  default     = "STANDARD"
}

variable "gcs_bucket_name" {
  description = "GCS bucket name"
  default     = "first-planet-411908-demo-bucket"

}