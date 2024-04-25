@startuml
start

: 接收用户名和密码;
: 在数据库中查询用户;
: 比对密码和库中密码的哈希值;
if (哈希值相同) then (是)
    : 构造签名;
    : 生成JWT Token;
else (否)
    : 返回错误信息;
endif

stop
@enduml