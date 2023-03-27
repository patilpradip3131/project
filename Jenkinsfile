pipeline {

     agent {
	 
	    label {
		
		     label "built-in"
			 customWorkspace "/mnt/data"
		
		}
	 
	 }
         stages {
	 
	    stage ("pkg Loginwebapp") {
		 
		   steps {
		   
              sh "rm -rf .m2/repository"
			  sh "chmod -R 777 /mnt/data"
		      sh "mvn install"
			  sh "scp -r /mnt/data/target/LoginWebApp.war /mnt/server/apache-tomcat-9.0.73/webapps"
			  sh "rm -rf /mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/LoginWebApp.war"
			  sh "chmod -R 777 /mnt/data/change.sh /mnt/server/apache-tomcat-9.0.73/webapps"
			  
		   }
		
		}
	     
	    stage ("depoy Loginwebapp") {
		 
		   steps {
			  dir ("/mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp") {  
                          sh "git clone https://github.com/patilpradip3131/project.git"
			  sh "/mnt/server/apache-tomcat-9.0.73/webapps/LoginWebApp/change.sh"
				  
				  
			  }
		   }
		
		}
	 
	 
	 }






}
