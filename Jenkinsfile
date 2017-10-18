node {
	
	stage('Checkout'){
	  checkout scm
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
