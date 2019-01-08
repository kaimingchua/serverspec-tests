pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'yum install gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel'
                sh 'yum install bzip2 autoconf automake libtool bison iconv-devel sqlite-devel openssl-devel make'
                sh 'curl -sSL https://rvm.io/mpapis.asc | gpg --import -'
                sh 'curl -L get.rvm.io | bash -s stable'
                sh 'source /etc/profile.d/rvm.sh'
                sh 'rvm reload'
                sh 'rvm install 2.4.0'
                sh 'gem install serverspec'
                sh 'gem install rspec'
                sh 'gem install bundler'
                sh 'SSH_KEY_FILE=$WORKSPACE/ServerspecKey.pem rake spec'

            }
        }
    }
}
