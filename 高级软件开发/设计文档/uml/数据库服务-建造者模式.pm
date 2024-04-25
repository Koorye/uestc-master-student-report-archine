@startuml

class 客户端 {
    --
}

abstract 抽象建造者 {
    database 数据库
    --
    + 建造连接方式(): void
    + 建造查询逻辑(): void
    + 建造插入逻辑(): void
    + 建造修改逻辑(): void
    + 建造删除逻辑(): void
    + 获取结果(): 数据库
}

class 数据库 {
    conn 连接
    --
    + 插入(): int
    + 删除(): int
    + 修改(): int
    + 查询(): List
}

class MySQL建造者 {
    --
    + 建造连接方式(): void
    + 建造查询逻辑(): void
    + 建造插入逻辑(): void
    + 建造修改逻辑(): void
    + 建造删除逻辑(): void
    + 获取结果(): 数据库
}

class Oracle建造者 {
    --
    + 建造连接方式(): void
    + 建造查询逻辑(): void
    + 建造插入逻辑(): void
    + 建造修改逻辑(): void
    + 建造删除逻辑(): void
    + 获取结果(): 数据库
}

class SqlServer建造者 {
    --
    + 建造连接方式(): void
    + 建造查询逻辑(): void
    + 建造插入逻辑(): void
    + 建造修改逻辑(): void
    + 建造删除逻辑(): void
    + 获取结果(): 数据库
}

客户端 ..> 抽象建造者
客户端 ..> 数据库 

抽象建造者 *-ri- 数据库 

抽象建造者 <|-- MySQL建造者
抽象建造者 <|-- Oracle建造者
抽象建造者 <|-- SqlServer建造者

@enduml