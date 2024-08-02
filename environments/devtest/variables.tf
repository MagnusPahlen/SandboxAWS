variable "my_bucket_1" {
    type = string
    description = "First bucket for small events"
    default = "pahlen-my-terraform-bucket-new"
}
variable "my_folder_1" {
    type = string
    description = "Folder for upload of raw data"
    default = "pahlen-my-terraform-folder-new"
}

variable "my_folder_2" {
    type = string
    description = "Folder for files that are converted"
    default = "pahlen-my-terraform-folder2-new"
}