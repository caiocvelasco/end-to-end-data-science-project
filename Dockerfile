# Set base image to PostgreSQL with matching client version
# Docker-compose will build the container based on this image
FROM python:3.9.13

# Set working directory
WORKDIR /workspace

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y \
        postgresql-client && \
        apt-get clean && \   
        rm -rf /var/lib/apt/lists/*

# Install ipykernel
RUN pip install --no-cache-dir ipykernel

# Add Python kernel to Jupyter
RUN python -m ipykernel install --user --name python_postgresql --display-name "Python PostgreSQL"

# Install Jupyter extension for VSCode
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/microsoft/vscode-dev-containers/master/script-library/jupyter.sh)"

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .