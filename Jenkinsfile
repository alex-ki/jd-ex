pipeline {
    agent { dockerfile true }
    stages {
        stage('DockerTest') {
            steps {
                echo 'Hello world'
                sh 'ls'
                sh 'echo $PATH'
                sh 'echo myVar1 = $myVar1'
            }
        }
    }
}
