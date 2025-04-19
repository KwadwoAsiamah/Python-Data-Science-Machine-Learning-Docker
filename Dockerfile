# Use official Python 3.12.10-slim-bookworm base image
FROM python:3.12.10-slim-bookworm

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set working directory
WORKDIR /app/notebooks

# Expose Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook
ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root"]
