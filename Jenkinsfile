pipeline {
    agent any 

    stages {
        stage('Build') { 
            steps { 
		echo 'start'
                bat 'Script.bat' 
		echo 'end'
		    
		Properties properties = new Properties()
		File propertiesFile = new File('Con.properties')
		    propertiesFile.withInputStream {
			    properties.load(it)
		    }
            }
        }
    }
}
