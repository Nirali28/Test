properties = null

node {
        stage('Build') { 
		echo 'start'
                bat 'Script.bat' 
		echo 'end'
		
		properties = new Properties()
		File propertiesFile = new File ("${workspace}/Con.properties")
		properties.load(propertiesFile.newDataInputStream())
		echo "Immediate one ${properties.repo}"
		 
            }
}
