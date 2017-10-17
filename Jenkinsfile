properties = null

node {
        stage('Build') { 
		echo 'start'
                bat 'Script.bat' 
		echo 'end'
		
		properties = readProperties file: 'aa.properties'
		echo "Immediate one ${properties.repo}"
		 
            }
}
