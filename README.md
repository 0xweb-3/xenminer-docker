# 使用容器对xenium 挖矿

## 求油管关注，后期更多crypto分享
[我的油管频道](https://www.youtube.com/channel/UC5LSaF3lvFm2jVuvJ3W3vag)

## 步骤

### 1. 安装docker桌面版
[下载docker](https://www.docker.com/)
mac
```
brew install docker
brew install docker-compose
```
ubuntu
```
apt-get install docker.io
apt-get install docker-compose
```


### 2. 修改代码，改成自己的地址
将config.conf 文件中的配置改成自己的地址
```
[Settings]
difficulty = 1
memory_cost = 1500
cores = 1
account = 0xC3B991ecD6079aCC8493b79aC7691c64Ce09EAC2  # 改成自己的以太坊钱包地址
last_block_url = http://xenminer.mooo.com:4445/getblocks/lastblock
```

### 3. 构建多容器运行

```
docker-compose pull # 拉取镜像
docker-compose build # 构建
```

### 4. 运行
```
 docker-compose up -d --scale xenminer=6  # 根据你的容器占有核心数进行数量调节，一般n*1.5
```

## 查看挖矿结果
[挖矿结果](https://hashhead.io/)
[浏览器挖矿不建议](https://xen-miner-app.vercel.app/)
