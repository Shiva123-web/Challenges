provider "google" {
 credentials = file("./app_server/key.json")
 project     = "atlantean-house-355503"
 region      = "us-west1"
}
