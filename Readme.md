###### 为 Syncthing 写个球球
<img src="img/pic.jpg" alt="1" width="200" />
- 因为每次下班时,不知道有没有同步回去,或服务挂掉
- Syncthing 考虑到跨平台, 程序中并没有 tray,毕竟 Go实现 tray 是要 cgo 的
- 所有写个小图标 直观点
- 蓝色: 正常状态
- 绿色: 同步中
- 红色: 故障
- 哦哦哦, 要使用的话 需要在程序目录层级下 添加一个key文件,里面的内容 是 本机 Syncthing 的**API 密钥**