provider "google" {
 credentials = file("./db_server/key.json")
 project     = "atlantean-house-355503"
 region      = "asia-southeast1"
}
