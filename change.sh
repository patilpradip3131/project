#!/bin/bash

  sed -i 's|localhost|database-1.cggvyyskcoln.ap-south-1.rds.amazonaws.com|g' /mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/login.jsp
  sed -i 's|localhost|database-1.cggvyyskcoln.ap-south-1.rds.amazonaws.com|g' /mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/userRegistration.jsp
  sed -i 's|username=root|username=admin|g' /mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/login.jsp
  sed -i 's|password=root|password=admin123456|g' /mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/login.jsp
  sed -i 's|username=root|username=admin|g' /mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/userRegistration.jsp
  sed -i 's|password=root|password=admin123456|g' /mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/userRegistration.jsp
  sed -i 's|password=root|password=admin123456|g' /mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/userRegistration.jsp

