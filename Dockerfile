# 基础镜像
FROM golang:1.21.5-alpine

# 设置工作目录
WORKDIR /app

# 将代码复制到容器中
COPY . .

# 构建应用
RUN go build -o main .

# 设置容器启动命令
CMD ["./main"]