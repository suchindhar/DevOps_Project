FROM python

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
RUN pip install --upgrade pip
COPY requirements.txt /code/

RUN pip install -r requirements.txt --cache-dir /opt/app/pip_cache
COPY . /code/

EXPOSE 5000

CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]
