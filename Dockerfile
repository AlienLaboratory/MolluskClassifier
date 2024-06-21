FROM python:3.11.2

COPY requirements.txt .

RUN pip install --upgrade -r requirements.txt

COPY server server/

EXPOSE 10000

CMD ["python", "server/main.py"]
