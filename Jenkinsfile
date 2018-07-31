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
              // get testcafe docker image
              sh 'docker pull testcafe/testcafe'
              sh 'pwd && ls -l ./'
              // run test
              sh 'docker run -v `pwd`:/tests testcafe/testcafe firefox:headless /tests/test-wiki.test.js'
            }
        }
    }
    post {
        success {
            echo 'Test finished!'
        }
    }
}
