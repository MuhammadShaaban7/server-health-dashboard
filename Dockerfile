# Use official Python image as the base image
FROM python:3.9-slim

# Install curl
RUN apt-get update && apt-get install -y curl

# Set working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python3", "app.py"]

