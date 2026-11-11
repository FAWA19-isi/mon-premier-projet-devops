FROM python:3.8-slim
WORKDIR /app
RUN pip install --no-cache-dir --progress-bar off requests
COPY github_api.py .
CMD ["python", "github_api.py"]
