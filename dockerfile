FROM python:3.11-slim

WORKDIR /app



COPY . .

EXPOSE 8000

# First, list files to debug
CMD ["python", "-m", "http.server", "8000"]