pipeline {

          agent {
		  
		      label {
			  
			      label "built-in"
				  customWorkspace "/mnt/data"
			  }
		  }
		  
		  stages {
		  
		     stage ("deployg ame-of-life") {
			 
			     steps {
				sh "sudo yum install maven -y"
				sh " mvn install"
				sh "ansible-playbook tomcat.yaml --check"
				 			
				 }
			 
			 
			 }
		  
		  
		  }
		  
}
