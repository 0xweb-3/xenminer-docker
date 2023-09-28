# 使用基础 Python 镜像
FROM python:3.8-slim

WORKDIR /app

# 设置工作目录
COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt
#RUN pip install -r requirements.txt

COPY . .

# 克隆项目代码
# RUN git clone https://github.com/jacklevin74/xenminer.git .

# 安装项目依赖
# RUN pip install -r requirements.txt  # 如果项目有 requirements.txt 文件的话

# 运行项目
CMD ["python", "miner.py"]  # 假设入口文件是 app.py
