# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /schoolmanagement/

# Copy the current directory contents into the container at /schoolmanagement/
COPY . /schoolmanagement/

# Create a virtual environment
RUN python -m venv venv
 
# Install any needed packages specified in requirements.txt within the virtual environment
RUN pip install -r requirements.txt

# Run migrations and start the Django development server within the virtual environment
CMD python manage.py makemigrations &&  python manage.py migrate && python manage.py runserver 0.0.0.0:8000 --noreload
