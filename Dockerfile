FROM python:3.9-alpine

RUN mkdir -p /app

WORKDIR /app

ADD requirements.txt .

ADD . .

RUN apk add --no-cache gcc musl-dev linux-headers libffi-dev && \
                pip install -r requirements.txt