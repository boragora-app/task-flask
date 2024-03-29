FROM python:3
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r ./requirements.txt
EXPOSE 5000
COPY app /app
CMD ["gunicorn", "--reload", "-b", ":5000", "--access-logfile", "-", "--error-logfile", "-", "api:app"]
