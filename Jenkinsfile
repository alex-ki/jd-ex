pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('DockerTest') {
            steps {
                echo 'Hello world'
                ls
                sh 'echo $PATH'
                sh 'echo myVar1 = $myVar1'
            }
        }
    }
}
