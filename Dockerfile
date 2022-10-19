FROM ubuntu
RUN apt-get update 
RUN apt-get install nginx -y
RUN apt-get install openjdk-11-jdk -y
#ADD AdminService-1.0.jar /AdminService-1.0.jar 
#COPY patientRealTimeData-1.0-DEV.jar /patientRealTimeData-1.0-DEV.jar 
#ADD config /config
COPY . .
COPY dockerrun.sh /usr/local/bin/dockerrun.sh 
RUN chmod +x /usr/local/bin/dockerrun.sh 
EXPOSE 8081 
EXPOSE 8080
EXPOSE 8000
EXPOSE 80
CMD ["dockerrun.sh"]
