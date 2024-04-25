@startuml

left to right direction

object 用户 {
  用户ID: bigint
  用户名: varchar(20)
  密码: varchar(20)
  手机号: varchar(15)
  电子邮箱: varchar(100)
  生日: date
  角色:short
}

object 文件 {
  文件ID: bigint
  文件名: varchar(100)
  文件类型: varchar(20)
  文件大小: long
  hash值: char(64)
  创建时间: datetime
  本地路径: varchar(200)
  所属用户ID: bigint
}

object 共享 {
  共享ID: bigint
  属性: short
  密码: varchar(8)
  截止时间: datetime
  共享文件ID: bigint
  接收用户ID: bigint
}

用户 "1" -- "0..*" 文件 : 拥有
文件 "1" -- "0..*" 共享 : 拥有
共享 "0..n" -- "0..1" 用户 : 共享

@enduml
