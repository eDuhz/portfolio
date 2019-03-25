# Pull base image
FROM python:3.6.4-jessie

EXPOSE 8000

RUN apt-get update && apt-get install -y \
    # Postgres
    libpq-dev \
    postgresql-client \
    # MagickWand
    libmagickwand-dev \
    && rm -rf /var/lib/apt/lists/*

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /portfolio

COPY requirements.txt .

RUN pip install -r requirements.txt

# Copy project
COPY . /portfolio
