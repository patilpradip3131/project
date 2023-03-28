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
				sh "sudo chmod -R /mnt/data"     
				sh "sudo yum install maven -y"
				sh "mvn install"
				sh "ansible-playbook login.yaml --check"
				 			
				 }
			 
			 
			 }
		  
		  
		  }
		  
}
