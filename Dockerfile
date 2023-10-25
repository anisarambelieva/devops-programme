FROM ubuntu:22.04

RUN apt-get update && apt-get install -y python3.9 python3-pip

RUN useradd --create-home myuser

RUN mkdir /app
COPY app/app.py /app

COPY requirements.txt . 
RUN pip install -r requirements.txt

USER myuser

CMD [ "python3", "/app/app.py"]