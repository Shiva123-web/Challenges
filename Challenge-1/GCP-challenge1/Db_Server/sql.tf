variable "static_ip_wp" {}

resource "google_sql_database_instance" "sql_db" {
  depends_on = [
    google_compute_network.sql_vpc
  ]
  name = "sqldb101"
  database_version = "MYSQL_5_7"
  region       = "asia-southeast1"
  settings {
    tier = "db-f1-micro"

     ip_configuration {
                ipv4_enabled = true
                require_ssl  = false

                authorized_networks {
                    name  = "wpSQLconnect"
                   
                    value = "0.0.0.0/0"
                  
                }
            }
   }
}

resource "google_sql_database" "database" {
  name      = "wpdb"
  instance  = google_sql_database_instance.sql_db.name
}

resource "google_sql_user" "users" {
  name     = "root"
  instance = google_sql_database_instance.sql_db.name
  password = "sql-wp@&A#"
}

output "uname" {
    value = google_sql_user.users.name
}

output "pass" {
    value = google_sql_user.users.password
}

output "pubip" {
    value = google_sql_database_instance.sql_db.public_ip_address
}

output "dbname" {
    value = google_sql_database.database.name
}
