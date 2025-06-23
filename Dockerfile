# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy entire app (including app/app.py and model/)
COPY . .

# Expose Streamlit port
EXPOSE 8000

# Run app
CMD ["streamlit", "run", "app.py", "--server.port=8000", "--server.address=0.0.0.0"]
