FROM python:3.7-alpine

WORKDIR /media/navneetsajwan/DAC4BFAEC4BF8AF16/flask-docker

COPY requirements.txt requirements.txt
COPY app.py app.py
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt
RUN venv/bin/pip install gunicorn

# COPY app app
# COPY migrations migrations
COPY microblog.py config.py boot.sh ./
RUN chmod +x boot.sh

ENV FLASK_APP microblog.py

RUN chown -R microblog:microblog ./
USER microblog

EXPOSE 5000
ENTRYPOINT ["./boot.sh"]