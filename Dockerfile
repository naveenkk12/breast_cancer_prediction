# Use the official Python image from the Docker Hub
FROM python:13.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache -r requirements.txt

# Expose the port the app runs on
EXPOSE 6000

# Run the Flask app
CMD ["flask","predict.py"]
