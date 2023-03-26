pipeline {

     agent {
	 
	    label {
		
		     label "built-in"
			 customWorkspace "/mnt/data"
		
		}
	 
	 }
     stages {
	 
	    stage ("depoy Loginwebapp") {
		 
		   steps {
		   
              sh "rm -rf .m2/repository"		   
		      sh "mvn install"
			  sh "scp -r /mnt/data/target/LoginWebApp.war /mnt/server/apache-tomcat-9.0.73/webapps"
			  sh "scp -r /mnt/data/change.sh /mnt/server/apache-tomcat-9.0.73/webapps"
			  sh "chmod 777 /mnt/server/apache-tomcat-9.0.73/webapps/change.sh"
			  sh "/mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/sh change.sh"
			  sh "/mnt/server/apache-tomcat-9.0.73/bin/startup.sh"
		   }
		
		}
	 
	 
	 }






}
