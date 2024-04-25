@startuml
start

: 用户登录;
: 选择文件;
if (文件格式/类型/内容检查) then (通过)
    : 上传文件;
    if (上传成功) then (是)
        : 显示成功信息;
    else (否)
        : 显示失败信息;
    endif
else
    : 显示错误信息;
endif

stop
@enduml
