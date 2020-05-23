pipeline {
    agent { dockerfile true }
    stages {  
        stage('Docker Test') {
            steps {
                echo 'Hello test1'
                sh 'ls'
                sh 'getent passwd'
                sh 'w'
                sh 'sudo ls -l /root/entrypoint.sh'
                sh 'echo $PATH'
                sh 'echo myVar1 = $myVar1'
            }
        }
    }
}
