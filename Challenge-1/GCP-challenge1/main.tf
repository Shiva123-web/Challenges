module "AppServer" {
  source = "./app_server"
  sql_vpc_id = module.DBServer.sql_vpc_id
  uname = module.DBServer.uname
  pass = module.DBServer.pass
  pubip = module.DBServer.pubip
  dbname = module.DBServer.dbname
}
#db_module
module "DBServer" {
  source = "./db_server"
  wp_vpc_id = module.AppServer.wp_vpc_id
  static_ip_wp = module.AppServer.static_ip_wp
}

# output "name" {
#   value = module.AppServer.ip
# }
