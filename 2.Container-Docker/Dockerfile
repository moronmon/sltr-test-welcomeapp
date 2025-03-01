# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY ../1.Simple_Coding/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY ../1.Simple_Coding/app.py .

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
