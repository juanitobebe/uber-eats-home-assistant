# Use an official Python runtime as a parent image
FROM python:3.10.12-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Run eats.py when the container launches
CMD ["python", "eats.py"]
