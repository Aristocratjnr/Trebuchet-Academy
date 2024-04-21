# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /schoolmanagement/

# Copy the current directory contents into the container at /schoolmanagement/
COPY . /schoolmanagement/

# Create a virtual environment
RUN python -m venv venv

# Activate the virtual environment
SHELL ["/bin/bash", "-c"]
RUN source venv/bin/activate

# Install any needed packages specified in requirements.txt within the virtual environment
RUN pip install -r requirements.txt

# Run migrations and start the Django development server within the virtual environment
CMD source venv/bin/activate && \
    python manage.py makemigrations && \
    python manage.py migrate && \
    python manage.py runserver 0.0.0.0:8000 --noreload
