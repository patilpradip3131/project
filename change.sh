#!/bin/bash

  sh "sed -i 's|localhost|database-1.cggvyyskcoln.ap-south-1.rds.amazonaws.com|g' LoginWebApp/login.jsp"
  sh "sed -i 's|localhost|database-1.cggvyyskcoln.ap-south-1.rds.amazonaws.com|g' LoginWebApp/userRegistration.jsp"
  sh "sed -i 's|username=root|username=admin|g' LoginWebApp/login.jsp"
  sh "sed -i 's|password=root|password=admin123456|g' LoginWebApp/login.jsp"
  sh "sed -i 's|username=root|username=admin|g' LoginWebApp/userRegistration.jsp"
  sh "sed -i 's|password=root|password=admin123456|g' LoginWebApp/userRegistration.jsp"

 sh "sed -i 's|password=root|password=admin123456|g' LoginWebApp/userRegistration.jsp"
