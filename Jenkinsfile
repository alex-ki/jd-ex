pipeline {
    agent none
    stages {
        stage('DockerPre') {
            steps {
                echo 'Hello Start'
                sh 'ls'
            }
        }
        stage('DockerRun') {
            agent { dockerfile true }
            steps {
                echo 'Hello test1'
            }
        }
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
