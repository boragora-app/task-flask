FROM python:3
WORKDIR /app

COPY requirements.txt ./
RUN pip install -r ./requirements.txt

# ENV FLASK_ENV production

EXPOSE 5000

CMD ["gunicorn", "--reload", "-b", ":5000", "--access-logfile", "-", "--error-logfile", "-", "api:app"]

COPY app /app