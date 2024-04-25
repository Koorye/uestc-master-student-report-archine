@startuml
start

: 用户登录;
: 选择文件;
if (文件属于图像) then (是)
    : OCR识别;
    if (识别成功) then (是)
        : 在对话框中显示识别文本;
    else
        : 显示失败信息;
    endif
else (否)
    : 显示错误信息;
endif

stop
@enduml