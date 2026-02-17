FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1     PYTHONUNBUFFERED=1

WORKDIR /app

# System deps (kept minimal)
RUN pip install --no-cache-dir --upgrade pip

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Optional: if platform provides BOT_TOKEN via env, we use it.
# If you prefer .env inside container, mount it or bake it during build (NOT recommended for secrets).
CMD ["bash", "./start.sh"]
