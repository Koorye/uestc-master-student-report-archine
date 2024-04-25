@startuml

left to right direction

node 客户端 as client
node 浏览器 as browser
node 移动端 as moblie

cloud 网关 as api

node 业务服务器 as srv
database 用户数据库 as userdb
database 文件数据库 as filedb

client -- api
browser -- api
moblie -- api

api -- srv

srv -- userdb
srv -- filedb

@enduml