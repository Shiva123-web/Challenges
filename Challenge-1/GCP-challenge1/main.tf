module "AppServer" {
  source = "./App_Server"
  sql_vpc_id = module.DBServer.sql_vpc_id
  uname = module.DBServer.uname
  pass = module.DBServer.pass
  pubip = module.DBServer.pubip
  dbname = module.DBServer.dbname
}
#db_module
module "DBServer" {
  source = "./Db_Server"
  wp_vpc_id = module.AppServer.wp_vpc_id
  static_ip_wp = module.AppServer.static_ip_wp
}
