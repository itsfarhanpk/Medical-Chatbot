FROM python:3.13-slim-bookworm

WORKDIR /app

COPY . /app

# Install system dependencies first
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Then install Python requirements
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]