FROM --platform=linux/arm64 nginx:1.24-alpine
COPY . /usr/share/nginx/html
