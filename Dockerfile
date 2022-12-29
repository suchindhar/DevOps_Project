FROM ubuntu

RUN apt-get update && apt-get -y install python3-pip
RUN mkdir /code
COPY requirements.txt /usr/src/app/

RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt
COPY . /code/

EXPOSE 5000

CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]
