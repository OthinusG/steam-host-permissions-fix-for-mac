# steam++（watt Toolkit）-hosts-permissions-fix-for-mac
## 问题复现
在macos上使用steam++（watt Toolkit）来加速steam是国内免费、快速的不二选择，也可以用来观看twitch直播，国外验证码平台也能被无翻墙支持。你甚至可以在某些极端时刻无vpn浏览github。其原理为修改host文件，在使用外网时经过steam++软件代理。然而，由于macos系统限制，每次启动steam++时必会遇到如下图所示hosts权限问题，需要使用sudo权限修改hosts：
![image](https://github.com/OthinusG/steam-host-permissions-fix-for-mac/blob/main/readmeimages/e0bcb6c6-5ccd-4e2b-a97d-1ac75af743ce.jpg)
## 解决方案
为了解决上述问题，可通过简单的bash文件，提前存储好你的账户密码，执行结束后打开steam++，解决每次都需要输命令和密码的麻烦。然后通过mac自带的自动操作app，将bash脚本转变为app，从而实现点击便可有hosts权限启动steam++，甚至实现开机自启。
### 脚本
```
#!/bin/bash

sudo -S cp /Users/[yourname]/hosts /private/etc/hosts << EOF
[yourpassword]
EOF
sudo -S chmod +a 'user:[yourname]:allow write' /etc/hosts << EOF
[yourpassword]
EOF
open -a /Applications/Steam++.app
exit
```
其中[yourname]是macos账户名称，[yourpassword]是你的开机密码，[yourname]可以打开Macintosh HD/用户 文件夹看到：
![image](https://github.com/OthinusG/steam-host-permissions-fix-for-mac/blob/main/readmeimages/040d79cc-479d-4014-8bff-80b03c014f0e.jpg)
例如，我的账户名为xiaolin，开机密码为0000，则脚本如下：
```
#!/bin/bash

sudo -S cp /Users/xiaolin/hosts /private/etc/hosts << EOF
0000
EOF
sudo -S chmod +a 'user:xiaolin:allow write' /etc/hosts << EOF
0000
EOF
open -a /Applications/Steam++.app
exit
```
为了实现上述脚本，下载github上的hosts文件 ，或者拷贝一份自己系统的hosts文件（/etc/hosts）到用户根目录：如/Users/xiaolin。
示例脚本已上传到github。

### 自动化app生成
打开macos预装的自动操作app，选择新建文稿，类型为应用程序：
![image](https://github.com/OthinusG/steam-host-permissions-fix-for-mac/blob/main/readmeimages/acb6a817-f3d6-4506-89d1-74124c46645c.jpg)
在操作中搜索shell，选择运行Shell脚本命令，并将上述脚本粘贴到运行框中，并在菜单栏选择 文件-保存，文件格式选择应用程序，保存即可。你可以修改应用程序的包名和图标，让其更适合你，并在最后复制到应用程序文件夹，即可使用。
![image](https://github.com/OthinusG/steam-host-permissions-fix-for-mac/blob/main/readmeimages/0bc38ca4-6c7f-4f09-9a63-434f68fb4201.jpg)
示例已上传到github。
