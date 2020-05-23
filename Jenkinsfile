pipeline {
    agent none
    stages {   
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
