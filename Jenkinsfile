properties = null

node {
	
	stage('Checkout'){
	  checkout scm
	  properties = readProperties file: 'a.properties'
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
