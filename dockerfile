# Make sure you have a Dockerfile in your root directory
FROM python:3.11-slim

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose port (Render uses 10000 internally)
EXPOSE 8000

# Command to run your application
# Adjust based on your framework:
CMD ["gunicorn", "your_app.wsgi:application", "--bind", "0.0.0.0:8000"]
# Or for Flask:
# CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:8000"]
# Or for Node.js:
# CMD ["npm", "start"]