FROM python:3.8.5
RUN pip install gunicorn flask
ADD mainapp.py wsgi.py /app/
EXPOSE 6000
WORKDIR /app
ENTRYPOINT [ "gunicorn","--bind","0.0.0.0:6000","wsgi:app" ]
