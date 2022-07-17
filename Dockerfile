FROM python:3.8

RUN apt update && apt install -y default-jdk

WORKDIR /usr/src/app

COPY requirements.in /tmp

RUN cd /tmp && pip install pip-tools && pip-compile && pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./main.py" ]