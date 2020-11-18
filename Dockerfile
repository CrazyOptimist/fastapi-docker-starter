FROM python:3.9-slim
WORKDIR /lxt-api

COPY requirements.txt /lxt-api/
RUN pip install -r requirements.txt
COPY . .

EXPOSE 8000

# CMD [ "uvicorn", "main:app", "--reload --host 0.0.0.0 --port 8000" ]
