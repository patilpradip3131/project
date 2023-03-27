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
			  sh "chmod -R 777 /mnt/data"
		          sh "mvn install"
			  sh "scp -r /mnt/data/target/LoginWebApp.war /mnt/server/apache-tomcat-9.0.73/webapps"
			  sh "rm -rf /mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/LoginWebApp.war"
			  sh "chmod -R 777 /mnt/data/change.sh /mnt/server/apache-tomcat-9.0.73/webapps"
                          sh "scp -r /mnt/data/change.sh root@172.31.39.162:/mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp"
			  sh "/mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/change.sh"
		   }
		
		}
	 
	 
	 }






}
