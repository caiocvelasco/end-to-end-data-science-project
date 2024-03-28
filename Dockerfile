# Set base image to PostgreSQL with matching client version
FROM python:3.11

# Set working directory
WORKDIR /workspace

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y postgresql-client \
    && apt-get clean && \   
    rm -rf /var/lib/apt/lists/*

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Expose port (if needed)
# EXPOSE 8000

# Copy the rest of the application
COPY . .
