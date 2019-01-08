pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'sudo yum install gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel'
                sh 'sudo yum install bzip2 autoconf automake libtool bison iconv-devel sqlite-devel openssl-devel make'
                sh 'sudo curl -sSL https://rvm.io/mpapis.asc | gpg --import -'
                sh 'sudo curl -L get.rvm.io | bash -s stable'
                sh 'sudo source /etc/profile.d/rvm.sh'
                sh 'rvm reload'
                sh 'sudo rvm install 2.4.0'
                sh 'sudo gem install serverspec'
                sh 'gem install rspec'
                sh 'sudo gem install bundler'
                sh 'SSH_KEY_FILE=$WORKSPACE/ServerspecKey.pem rake spec'

            }
        }
    }
}
