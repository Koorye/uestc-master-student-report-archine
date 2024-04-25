@startuml

left to right direction

node 浏览器 as bs
node 客户端 as cli

node 服务端 as srv {
    cloud 网关服务 as api
    node WebDav服务 as webdav
    node 用户服务 as bus
    database 文件存储服务 as file
    database 用户存储服务 as user
}

bs -- api
cli -- api
api -- webdav
api -- bus
webdav - bus
webdav -- file
bus -- user

@enduml