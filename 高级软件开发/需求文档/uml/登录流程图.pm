@startuml

start

: 输入用户名和密码;
if (用户名和密码正确) then (是)
    : 显示成功信息;
else (否)
    : 显示失败信息;
endif

stop

@enduml
