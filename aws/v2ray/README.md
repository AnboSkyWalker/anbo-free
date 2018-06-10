
# V2Ray
https://www.v2ray.com/

# uuid 生成器
v2ray 的id使用uuid。为了安全起见，需要重新生产uuid
https://www.uuidgenerator.net/

## python 生成uuid
``` py
import uuid

print str(uuid.uuid4())
```

或者
``` bash
python -c 'import uuid; print str(uuid.uuid4())'
```

output like this:
'3d98d4e3-87c3-4fd5-8014-dede30391810'

# v2ray 配置生成器
https://htfy96.github.io/v2ray-config-gen/#
这里也能生成uuid

# server
| File Name          | Description        |
| -                  | :-:                |
| Dockerfile         | own docker file    |
| config_s.json      | server config file |
| build.sh           | build own docker   |
| start.sh           | start own docker   |
| docker-compose.yml | boot file          |

## docker v2ray server
https://www.v2ray.com/chapter_00/install.html
V2Ray 提供了两个预编译的 Docker image：

v2ray/official : 包含最新发布的版本，每周跟随新版本更新；
v2ray/dev : 包含由最新的代码编译而成的程序文件，随代码库更新；
两个 image 的文件结构相同：

/etc/v2ray/config.json: 配置文件
/usr/bin/v2ray/v2ray: V2Ray 主程序
/usr/bin/v2ray/v2ctl: V2Ray 辅助工具
/usr/bin/v2ray/geoip.dat: IP 数据文件
/usr/bin/v2ray/geosite:dat: 域名数据文件

### build own docker
``` bash
sudo bash build.sh
```

### start own docker
``` bash
sudo bash start.sh
```

# client
| File Name          | Description        |
| -                  | :-:                |
| config_c.json      | client config file |

## install
https://www.v2ray.com/chapter_00/install.html

V2Ray 提供了一个在 Linux 中的自动化安装脚本。这个脚本会自动检测有没有安装过 V2Ray，如果没有，则进行完整的安装和配置；如果之前安装过 V2Ray，则只更新 V2Ray 二进制程序而不更新配置。

以下指令假设已在 su 环境下，如果不是，请先运行 sudo su。

运行下面的指令下载并安装 V2Ray。当 yum 或 apt-get 可用的情况下，此脚本会自动安装 unzip 和 daemon。这两个组件是安装 V2Ray 的必要组件。如果你使用的系统不支持 yum 或 apt-get，请自行安装 unzip 和 daemon

bash <(curl -L -s https://install.direct/go.sh)
此脚本会自动安装以下文件：

/usr/bin/v2ray/v2ray：V2Ray 程序；
/usr/bin/v2ray/v2ctl：V2Ray 工具；
/etc/v2ray/config.json：配置文件；
/usr/bin/v2ray/geoip.dat：IP 数据文件
/usr/bin/v2ray/geosite.dat：域名数据文件
此脚本会配置自动运行脚本。自动运行脚本会在系统重启之后，自动运行 V2Ray。目前自动运行脚本只支持带有 Systemd 的系统，以及 Debian / Ubuntu 全系列。

运行脚本位于系统的以下位置：

/etc/systemd/system/v2ray.service: Systemd
/etc/init.d/v2ray: SysV
脚本运行完成后，你需要：

编辑 /etc/v2ray/config.json 文件来配置你需要的代理方式；
运行 service v2ray start 来启动 V2Ray 进程；
之后可以使用 service v2ray start|stop|status|reload|restart|force-reload 控制 V2Ray 的运行。

## config
``` bash
cp config_c.json /etc/v2ray/config.json
```

## start
``` bash
service v2ray start
service v2ray status
```

# windows client
https://blog.sharkyzh.cn/post/50d46b4d.html
