FROM python:3.14.0b4-alpine3.22

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 5000

RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]


