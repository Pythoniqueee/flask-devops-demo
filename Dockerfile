# 使用官方 Python 基础镜像
FROM python:3.11-slim

# 设置工作目录
WORKDIR /app

# 拷贝依赖文件
COPY requirements.txt .

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 拷贝应用代码
COPY . .

# 暴露端口
EXPOSE 5000

# 启动应用
CMD ["python", "app.py"]

