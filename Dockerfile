# Use a lightweight official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy app code into the container
COPY app.py /app

# Install Flask
RUN pip install --no-cache-dir flask

# Set environment variables
ENV PORT=3000
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose Flask port
EXPOSE 3000

# Command to start the app
CMD ["python", "app.py"]
