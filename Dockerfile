# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Upgrade pip
RUN pip install --upgrade pip

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define the command to run on container start
CMD ["bash", "-c", "\
    py manage.py makemigrations && \
    py manage.py migrate && \
    py manage.py runserver 127.0.0.1:8000 \
"]
