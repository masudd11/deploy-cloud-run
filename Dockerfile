FROM python:slim
RUN apt-get update -y && apt-get install python3-pip -y
RUN mkdir /app
WORKDIR /app
COPY . .
EXPOSE 8000
RUN pip3 install -r requirements.txt 
CMD [ "sh", "startup.sh" ]
