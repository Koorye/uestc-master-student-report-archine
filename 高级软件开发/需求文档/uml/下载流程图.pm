@startuml
start

: 用户登录;
: 选择文件;
if (拥有下载权限) then (是)
    : 下载文件;
    if (下载成功) then (是)
        : 显示成功信息;
    else (否)
        : 显示失败信息;
    endif
else (否)
    : 显示错误信息;
endif

stop
@enduml

