#!/bin/bash

  sed -i 's|localhost|database-1.cggvyyskcoln.ap-south-1.rds.amazonaws.com|g' /mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/login.jsp
  sed -i 's|localhost|database-1.cggvyyskcoln.ap-south-1.rds.amazonaws.com|g' /mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/userRegistration.jsp
  sed -i '0,/"root"/s//"admin"/; 0,/"root"/s//"admin123456"/' /mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/login.jsp
  sed -i '0,/"root"/s//"admin"/; 0,/"root"/s//"admin123456"/' /mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/userRegistration.jsp
