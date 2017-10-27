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
		
		//def var = $Name
		//echo "${var}"
	}
	stage('Build') { 
		echo 'start'
		
		echo "${env.WORKSPACE}"
		
		def yaml = readYaml file: "test.yml"
		println yaml.data.flagEmail
		
		def var =  yaml.data.DLLeads
		for (i = 0; i <var.size(); i++) {
    			println var[i]
		}
		//myFile = new File("${env.WORKSPACE}/aa.txt")
		//def lines = myFile.readLines()
		//lines.each { String line ->
  		//	println line
		//}
		echo 'end'
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
