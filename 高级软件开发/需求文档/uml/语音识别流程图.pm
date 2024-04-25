@startuml
start

: 用户登录;
: 选择文件;
if (文件属于音频) then (是)
    : 调用深度学习模型识别语音;
    if (识别成功) then (是)
        : ;
    else (否)
        : 显示失败信息;
    endif
else (否)
    : 显示错误信息;
endif

stop
@enduml