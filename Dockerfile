FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

#ENTRYPOINT ["python", "main.py"]
#CMD  gunicorn -b :8080 main:APP
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

