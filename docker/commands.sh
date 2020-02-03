#!/bin/bash
mysql -h localhost -u root -p skyinfo dbsysmodelo < /root/sysdemo/scripts/dbsysmodelo.sql
mvn clean
mvn test
mvn spring-boot:run
