@startuml

left to right direction

:用户: as user
:云盘系统: as sys
:管理员: as admin

(注册) as register
(登录) as login
(访问公共文件) as visit_public
(上传) as upload
(下载) as download
(共享) as share
(创建缩略图) as thumbnail
(转换视频编码) as convertcode
(图片筛选) as filter
(内容审核) as audit
(实时图像分类) as imgcls
(图像文字识别) as textreg
(语音识别) as voicereg

user --> register
user --> visit_public
user --> login
login <.. upload : <<extend>>
login <.. download : <<extend>>
login <.. share : <<extend>>
login <.. textreg : <<extend>>
login <.. voicereg : <<extend>>

sys --> thumbnail
sys --> filter
sys --> audit
sys --> imgcls
sys --> convertcode

admin --> audit

@enduml