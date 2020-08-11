FROM python:3.6

WORKDIR /usr/src/simple-app

COPY src/ ./

RUN pip3 install setuptools==45

COPY src/requirements.txt ./

RUN pip3 install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py

RUN chmod +x ./run.sh

EXPOSE 5000

ENTRYPOINT ["./run.sh"]
