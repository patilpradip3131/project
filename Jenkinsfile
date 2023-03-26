pipeline {

     agent {
	 
	    label {
		
		     label "built-in"
			 customWorkspace "/mnt"
		
		}
	 
	 }
     stages {
	 
	    stage ("depoy Loginwebapp") {
		 
		   steps {
		   
              sh "rm -rf .m2/repository"		   
		      sh "mvn install"
			  sh "scp -r /mnt/project/target/LoginWebApp.war /mnt/server/apache-tomcat-9.0.73/webapps
			  sh "/mnt/server/apache-tomcat-9.0.73/webapps/change.sh"
			  sh "/mnt/server/apache-tomcat-9.0.73/bin/startup.sh"
		   }
		
		}
	 
	 
	 }






}
