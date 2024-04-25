@startuml

left to right direction

interface HTTP as http

package 用户服务 {
    component 登录服务 as login
    component 注册服务 as register
    component 个人信息服务 as info
}

cloud 局域网络 as web
interface SQL协议 as sql
interface SQL协议 as sql2

package 数据库服务 {
    component MySQL as mysql
    component Oracle as oracle
    component SQLServer as sqlserver
}

http -- login
http -- register
http -- info

login -- sql
register -- sql
info -- sql

sql -- web
web -- sql2

sql2 -- mysql
sql2 -- oracle
sql2 -- sqlserver

@enduml