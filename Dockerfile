FROM python
WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install unixodbc-dev -y 
RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["gunicorn", "-b", "0.0.0.0:8080", "--access-logfile", "-", "wsgi:app"]