FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

# First, list files to debug
CMD ["sh", "-c", "ls -la && python -c \"import os; print('Current directory:', os.getcwd()); print('Files:', os.listdir('.'))\""]