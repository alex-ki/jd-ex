pipeline {
    agent { dockerfile true }
    stages {   
        stage('DockerTest') {
            steps {
                echo 'Hello test1'
                sh 'ls'
                sh 'getent passwd'
                sh 'echo $PATH'
                sh 'echo myVar1 = $myVar1'
            }
        }
    }
}
