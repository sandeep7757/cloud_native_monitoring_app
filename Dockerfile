# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster
# Set the working directory to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY requirements.txt .
# Install any needed packages specified in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
# Define environment variable
ENV FLASK_RUN_HOST=0.0.0.0
# Make port 5000 available to the world outside this container
EXPOSE 5000
# Run app.py when the container launches
CMD ["flask", "run"]
