properties = null

node {
	
	stage('Checkout'){
	  checkout scm
	  properties = readProperties file: 'a.properties'
          echo "Immediate one ${properties.flagEmail}"
		if((properties.flagEmail).toBoolean()){
			echo 'Send Email'
		}else{
			echo 'Do not send Email'
		}
	}
	stage('Build') { 
		echo 'start'
		echo 'end'
		echo "${env.WORKSPACE}"
		
		def yaml = readYaml file: "test.yml"
		//myFile = new File("${env.WORKSPACE}/aa.txt")
		//def lines = myFile.readLines()
		//lines.each { String line ->
  		//	println line
		//}
		
		//Send Email 
		//String recipient = "${properties.emailNotificationTo}"
		emailext body: 'Hello', subject: 'Hi', to: 'patelnira28@gmail.com'
		echo 'done'
		mail subject: "${env.JOB_NAME} (${env.BUILD_NUMBER}) ---",
         	body: "It appears that ${env.BUILD_URL} is ---, somebody should do something about that",
           	to: "${properties.emailNotificationTo}",
      		replyTo: "${properties.emailNotificationTo}",
 		from: 'noreply@ci.jenkins.io'
            }
}
