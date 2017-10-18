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
		myFile = new File("${env.WORKSPACE}/aa.txt")
		def lines = myFile.readLines()
		lines.each { String line ->
  			println line
		}
            }
}
