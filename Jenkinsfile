pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
            	sh 'sudo yum install -y ruby'
                sh 'sudo gem install serverspec'
                sh 'gem install rspec'
                sh 'sudo gem install bundler'
                sh 'SSH_KEY_FILE=$WORKSPACE/ServerspecKey.pem rake spec'

            }
        }
    }
}
