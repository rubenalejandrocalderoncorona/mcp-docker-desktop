# Use an official Python image.
FROM python:3.11-slim

# Set the working directory.
WORKDIR /app

# Copy the requirements file and install dependencies.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application.
COPY . .

# Expose the port FastAPI will listen on.
EXPOSE 8080

# Start the app.
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]
