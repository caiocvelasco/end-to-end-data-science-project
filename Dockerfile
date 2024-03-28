# Set base image to PostgreSQL with matching client version
FROM python:3.11

# Set working directory
WORKDIR /workspace

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y \
        postgresql-client \
        && apt-get clean && \   
        rm -rf /var/lib/apt/lists/*

# Install Jupyter Notebook and its dependencies
# RUN pip install --no-cache-dir jupyter

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Set default command to start Jupyter Notebook
# CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]