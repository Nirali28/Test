proprties = null

node {
        stage('Build') { 
		echo 'start'
                bat 'Script.bat' 
		echo 'end'
		
		def fileContents = readFile('aa.txt')		
		echo "Immediate one"
		 
            }
}
