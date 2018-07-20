pipeline {
    agent any
    stages {
        stage('Preparation') {
            steps {
                git 'https://github.com/Xeonan/docker-compose-test.git'
            }
        }
        stage('Build') {
            steps {
                sh 'docker-compose -p testrun build --no-cache'
                sh 'docker-compose -p testrun up'
            }
        }
    }
    post {
        success {
            echo 'Test finished!'
        }
    }
}