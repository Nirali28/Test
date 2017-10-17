proprties = null

node {
        stage('Build') { 
		echo 'start'
                bat 'Script.bat' 
		echo 'end'
		
		def fileContents = readFile(${workspace} + "/" + 'aa.txt')		
		echo "Immediate one"
		 
            }
}
