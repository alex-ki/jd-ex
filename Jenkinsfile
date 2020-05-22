pipeline {
    agent {
        docker { image 'node:14-buster' }
    }
    stages {
        stage('DockerTest') {
            steps {
                sh 'node --version'
                echo 'Hello world'
            }
        }
    }
}
