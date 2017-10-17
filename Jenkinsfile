node {
        stage('Build') { 
		echo 'start'
                bat 'Script.bat' 
		echo 'end'
		    
		def props = readProperties file: "Con.properties"
		def Var1 = props["flagEmail"]
		echo "${Var1}"
            }
}
