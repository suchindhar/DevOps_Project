FROM python:3

#set envionment variables
ENV PYTHONUNBUFFERED 1

# run this before copying requirements for cache efficiency
RUN apt-get -y install python3-pip

#set work directory early so remaining paths can be relative
WORKDIR /ToDoApp

# Adding requirements file to current directory
# just this file first to cache the pip install step when code changes
COPY requirements.txt .

#install dependencies
RUN pip install -r requirements.txt

# copy code itself from context to image
COPY . .

# run from working directory, and separate args in the json syntax
CMD ["python", "./manage.py", "runserver", "0.0.0.0:8000"]




