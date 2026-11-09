FROM python:3.11-slim

WORKDIR /app

COPY serve/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY model.joblib model.joblib
COPY serve/app.py app.py

EXPOSE 5000

CMD ["python", "app.py"]
