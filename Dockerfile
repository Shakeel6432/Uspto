# Base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy your app files
COPY . .

# Create virtual environment and install requirements
RUN python -m venv /opt/venv && \
    /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install --no-cache-dir -r requirements.txt

# Set environment variables
ENV PATH="/opt/venv/bin:$PATH"

# Default command
CMD ["python", "app.py"]
