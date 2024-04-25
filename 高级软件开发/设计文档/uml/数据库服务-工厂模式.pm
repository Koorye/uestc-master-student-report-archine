@startuml

class 客户端 {
    --
}

abstract 数据库工厂 {
    database 数据库
    --
    + 创建MySQL服务(): MySQL服务
    + 创建Oracle服务(): Oracle服务
    + 创建SqlServer服务(): SqlServer服务
}

class MySQL服务 {
    --
    + 插入记录(): int
    + 删除记录(): int
    + 修改记录(): int
    + 查询记录(): List
}

class Oracle服务 {
    --
    + 插入记录(): int
    + 删除记录(): int
    + 修改记录(): int
    + 查询记录(): List
}

class SqlServer服务 {
    --
    + 插入记录(): int
    + 删除记录(): int
    + 修改记录(): int
    + 查询记录(): List
}

客户端 ..> 数据库工厂

数据库工厂 ..> MySQL服务
数据库工厂 ..> Oracle服务
数据库工厂 ..> SqlServer服务

@enduml