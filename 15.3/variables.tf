variable "cloud_id" {
  type        = string
  default     = ""
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = ""
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "storage" {
  type = map(object({
    sa_name          = string
    sa_role          = string
    bucket_name      = string
    bucket_size      = number
    acl              = string
  }))
  default = {
    bucket = {
      sa_name        = "tf-storage-sa"
      sa_role        = "admin"
      bucket_name    = "netologydmitryy"
      bucket_size    = 1048576
      acl            = "public-read"
    }
  }
}


