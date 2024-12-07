# Chọn image Python 3.9 slim
FROM python:3.9-slim

# Cài đặt các thư viện hệ thống cần thiết
RUN apt-get update && apt-get install -y \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    && rm -rf /var/lib/apt/lists/*

# Cập nhật pip lên phiên bản mới nhất
RUN pip install --upgrade pip

# Chuyển đến thư mục làm việc trong container
WORKDIR /app

# Copy tất cả các file từ thư mục hiện tại vào thư mục làm việc của container
COPY . .

# Cài đặt các thư viện Python từ requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Mở cổng 8501 cho Streamlit
EXPOSE 8501

# Chạy ứng dụng Streamlit
CMD ["streamlit", "run", "app.py"]
