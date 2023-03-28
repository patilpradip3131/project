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
				sh "sudo chmod -R 777 /mnt/data"     
				sh "sudo yum install maven -y"
				sh "mvn install"
				sh "sudo ansible-playbook login.yaml --check"
				 			
				 }
			 
			 
			 }
		  
		  
		  }
		  
}
