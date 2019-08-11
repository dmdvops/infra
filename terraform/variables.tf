variable project {
  description = "Poject ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable disk_image {
  description = "Disk image"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-1565557162"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-1565556976"
}
