FROM python:3.7.3-stretch

#Working Directory
WORKDIR /app

#copy source code to working directory
COPY . app.py /app/

#Install packages from requirement.txt
#Hadolint ignore dl

RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirement.txt