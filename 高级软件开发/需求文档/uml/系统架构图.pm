@startuml

left to right direction

actor 用户 as user
node 客户端 as cs {
    component 浏览器 as browser
    component PC端 as pc
    component 移动端 as moblie 
    component "..." as etc
}
cloud Nginx服务 as nginx
node WebDav服务 as webdav {
    component NextCloud as nc
    component OwnCloud as oc
    component 坚果云 as jgy
    component "..." as etc2
}
cloud Docker网络 as docker
database 用户数据库 as userdb {
    frame "user1:pswd"
    frame "user2:pwsd"
}
database 文件数据库 as filedb {
    file "/" as root
    file file1
    file file2
    file file3
}

user -- pc
user -- browser
user -- moblie

pc -- nginx
browser -- nginx
moblie -- nginx

nginx -- nc
nginx -- oc
nginx -- jgy

nc -- docker
oc -- docker
jgy -- docker

docker -- userdb
docker -- filedb

root -- file1
root -- file2
file1 -- file3

@enduml