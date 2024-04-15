# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /schoolmanagement/

# Copy the current directory contents into the container at /app
COPY . /schoolmanagement/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

#Update dependencies
RUN pip freeze > requirements.txt

# Run migrations and start the Django development server
CMD python manage.py makemigrations && python manage.py migrate && python manage.py runserver 
