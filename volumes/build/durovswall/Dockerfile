FROM python:3.10.12
RUN adduser exemplar

WORKDIR /home/exemplar

COPY requirements.txt requirements.txt
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt
RUN venv/bin/pip install gunicorn

COPY app app
COPY migrations migrations
COPY exemplar.py config.py boot.sh ./
RUN chmod +x boot.sh

ENV FLASK_APP exemplar.py

RUN chown -R exemplar:exemplar ./
USER exemplar

#nastroika porta dlya servera
EXPOSE 5000
ENTRYPOINT ["./boot.sh"]
