FROM python:3.10.11-slim-bullseye

ENV PYTHONUNBUFFERED 1

ENV HOST="0.0.0.0"
ENV PORT="8000"

WORKDIR /app/
COPY requirements.txt ./

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . ./

EXPOSE 8000

ENTRYPOINT ["python", "app.py"]



