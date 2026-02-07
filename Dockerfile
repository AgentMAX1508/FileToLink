FROM python:3.10-slim-bookworm

# Install system dependencies
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    git \
    ffmpeg \
    curl \
    python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Install Python requirements
COPY requirements.txt .
RUN pip3 install --no-cache-dir -U -r requirements.txt

# Copy the rest of the application
COPY . .

# Start the bot
CMD ["python3", "main.py"]
