pipeline {
    agent none
    stages {   
        stage('Fix the permission issue') {
            agent any
            steps {
                sh "sudo chown root:jenkins /run/docker.sock"
            }
        }

        stage('Docker Run') {
            agent { dockerfile true }
            steps {
                sh "ls /"
            }
        }
        stage('Docker Test') {
            steps {
                echo 'Hello test1'
                sh 'ls'
                sh 'chmod ugo+rwx /root/entrypoint.sh'
                sh 'getent passwd'
                sh 'w'
                sh 'ls -l /root/entrypoint.sh'
                sh 'echo $PATH'
                sh 'echo myVar1 = $myVar1'
            }
        }
    }
}
