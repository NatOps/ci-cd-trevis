FROM python:3.8
#MAINTAINER Natalia Raythz "nraythz@gmail.com"
RUN mkdir /app
COPY requirements.txt /app
RUN pip install -r /app/requirements.txt
COPY . /app
WORKDIR /app
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["-m", "qa.app"]