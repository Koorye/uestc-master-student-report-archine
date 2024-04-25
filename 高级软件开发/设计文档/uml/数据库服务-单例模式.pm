@startuml

left to right direction

class 客户端 {
    --
} 

class 单例 {
    database 数据库
    --
    + 获取数据库(): 数据库
}

class 数据库 {
    --
    + 插入记录(): int
    + 删除记录(): int
    + 修改记录(): int
    + 查询记录(): List
}

客户端 ..> 单例
客户端 ..> 数据库
单例 *-- 数据库

@enduml