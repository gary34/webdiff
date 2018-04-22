# gitdiff

> 轻量级GIT代码比对工具
>


## 依赖环境

Docker
Bash & Zsh
Osx & Linux
Windows(No,我没有windows环境)

## 安装

curl -fsSl https://raw.githubusercontent.com/gary34/webdiff/master/setup.sh | bash

## 运行

进入终端，在git工作目录输入`seediff`命令

```bash
# 如果你只有docker环境，可以如下，然后用浏览器访问http://localhost:40888/
docker run -p 40888:40888 --rm -v $(pwd):/app -w /app mgary34/gitdiff
```

## 截图

![](https://iyomi-public.oss-cn-shenzhen.aliyuncs.com/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202018-04-22%2015.44.36.png)
![](https://iyomi-public.oss-cn-shenzhen.aliyuncs.com/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202018-04-22%2015.44.56.png)



