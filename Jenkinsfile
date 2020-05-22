pipeline {
    agent { dockerfile true }
    stages {   
        stage('DockerTest') {
            steps {
                echo 'Hello test1'
                sh '/root/entrypoint.sh'
                sh 'ls'
                sh 'echo $PATH'
                sh 'echo myVar1 = $myVar1'
            }
        }
    }
}
