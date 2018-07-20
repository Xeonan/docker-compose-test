pipeline {
    agent any
    stages {
        stage('Preparation') {
            steps {
                git 'https://github.com/pwcXiangnan/tmpfiles'
            }
        }
        stage('Build') {
            steps {
                sh 'docker-compose -p testrun build'
                sh 'docker-compose -p testrun up -d'
            }
        }
        post {
            success {
                echo 'Test finished!'
            }
        }
    }
}