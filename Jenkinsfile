pipeline {
    agent none
    stages {
        stage('Docker Pre') {
            agent any
            steps {
                echo 'Hello test1'
                sh 'ls'
            }
        }
        stage('DockerTest') {
            agent { dockerfile true }
            steps {
                echo 'Hello test2'
                sh 'ls'
                sh 'echo $PATH'
                sh 'echo myVar1 = $myVar1'
            }
        }
    }
}
