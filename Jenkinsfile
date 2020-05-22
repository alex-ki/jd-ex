pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('DockerTest') {
            steps {
                echo 'Hello world'
                sh 'echo myVar1 = $myVar1'
            }
        }
    }
}
