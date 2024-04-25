@startuml
start

: 用户登录;
: 选择文件;
: 选择共享模式;
if (模式为私人共享) then (是)
    : 选择接收人;
else (否)
    : 设置密码;
endif
: 设置共享时间;
: 生成链接;
if (生成成功) then (是)
    : 返回成功信息;
else (否)
    : 返回失败信息;
endif

stop
@enduml
