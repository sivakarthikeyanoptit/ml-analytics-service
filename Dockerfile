FROM ubuntu:18.04

RUN apt-get update -y && \
    apt-get install -y  python3-pip python3-dev
   
RUN mkdir -p /opt/sparkjobs/ml-analytics-service

#copy all files 
COPY . /opt/sparkjobs/ml-analytics-service

WORKDIR /opt/sparkjobs/ml-analytics-service

RUN pip3 install -r requirements.txt

#expose the application port
EXPOSE 8080

#start the application
ENTRYPOINT ["python3"]
