#!/bin/bash

# Step 1: Create Dockerfile
echo "Creating Dockerfile..."
echo "FROM python:3.8" > Dockerfile
echo "WORKDIR /app" >> Dockerfile
echo "COPY . /app" >> Dockerfile

# Step 2: Install Django
echo "Installing Django..."
echo "RUN pip3 install django" >> Dockerfile

# Step 3: Copy files to the container
echo "Copying files to the container..."
cp -r /path/to/your/project/* .

# Step 4: Run Django migrations
echo "Running Django migrations..."
echo "RUN python manage.py migrate" >> Dockerfile

# Step 5: Set the CMD for running the server
echo 'CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]' >> Dockerfile

# Step 6: Build and run Docker container
echo "Building Docker image..."
docker build -t your_image_name .

echo "Running Docker container..."
docker run -p 8001:8001 your_image_name

