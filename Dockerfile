# Use the official Python image as the base image
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required dependencies
RUN pip install Flask

# Expose port 80 for HTTP
EXPOSE 80

# Set the environment variable to run the Flask app
ENV FLASK_APP=app.py

# Run the Flask application
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]

