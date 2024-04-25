@startuml

left to right direction

interface HTTP协议 as http
interface 文件操作接口 as file
interface RPC协议 as rpc
interface RPC协议 as rpc2

component 本地文件系统 as local_file

cloud "局域网络/Internet" as web

package WebDav服务 as dav {
    component 上传服务 as up
    component 下载服务 as down
    component 移动服务 as move
    component 删除服务 as del
    component 预览服务 as view
}

package 远程文件系统 as remote_file {
    component HDFS as hdfs
    component GFS as gfs
}

http -- up
http -- down
http -- move
http -- del
http -- view

up -- file
down -- file
move -- file
del -- file
view -- file

file -- local_file
local_file -[hidden] rpc

file -- rpc
rpc -- web
web -- rpc2

rpc2 -- hdfs
rpc2 -- gfs

@enduml