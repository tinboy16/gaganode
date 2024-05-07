# Sử dụng hình ảnh Linux cơ bản làm cơ sở
FROM ubuntu:latest

# Cài đặt các gói cần thiết
RUN apt-get update && apt-get install -y curl

# Sao chép script vào container
COPY script.sh /script.sh

# Thiết lập quyền thực thi cho script
RUN chmod +x /script.sh

# Thực thi script khi khởi chạy container
CMD ["/script.sh"]
