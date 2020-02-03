#!/bin/bash
mvn clean
mvn test
mysql -h localhost -u root -p skyinfo dbsysmodelo < /root/sysdemo/scripts/dbsysmodelo.sql
mvn spring-boot:run
