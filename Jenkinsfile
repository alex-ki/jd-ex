pipeline {
    agent { dockerfile true }
    stages {   
        stage('DockerTest') {
            steps {
                echo 'Hello test1'
                sh 'ls'
                sh 'ls -l /root/entrypoint.sh'
                sh 'getent passwd'
                sh 'w'
                sh 'echo $PATH'
                sh 'echo myVar1 = $myVar1'
            }
        }
    }
}
