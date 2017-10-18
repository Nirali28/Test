properties = null

node {
	
	stage('Checkout'){
	  checkout scm
	  properties = new Properties()
          File propertiesFile = new File("${env.WORKSPACE}/a.properties")
          properties.load(propertiesFile.newDataInputStream())
          echo "Immediate one ${properties.flagEmail}"
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
