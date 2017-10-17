proprties = null

node {
        stage('Build') { 
		echo 'start'
                bat 'Script.bat' 
		echo 'end'
		
		Properties props = new Properties()
        	File propsFile = new File('aa.properties')
        	propsFile.withInputStream {
            		props.load it
        	}
		 
            }
}
