#!/bin/sh
service nginx start 
rm -rf etc/nginx/sites-available/default
cp /default  /etc/nginx/sites-available/
rm -rf /var/www/html/*
cp -R /build/* /var/www/html/
chmod -R 775 /var/www/html/
service nginx restart
#sleep 30
echo "sleep"
java -Dserver.port=8081 -jar /AdminService-1.0.jar
#java -Dserver.port=8081 -jar /AdminService-1.0.jar &

#java -Dserver.port=8000 -jar /patientRealTimeData-1.0-DEV.jar
#sleep 30
#echo "sleeping"
