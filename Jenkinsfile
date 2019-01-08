pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'SSH_KEY_FILE=$WORKSPACE/ServerspecKey.pem rake spec'
            }
        }
    }
}