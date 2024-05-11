# Sử dụng hình ảnh Linux cơ bản làm cơ sở
FROM debian:latest

# Cài đặt các gói cần thiết
RUN apt-get update -y && apt-get -y install curl tar ca-certificates wget 

# Sao chép script vào container
COPY script.sh /script.sh

# Thiết lập quyền thực thi cho script
RUN chmod +x /script.sh

# Thực thi script khi khởi chạy container
CMD ["/bin/bash", "-c", "/script.sh && sleep infinity"]
