pipeline {
   agent {
        docker {
            image 'docker:24.0.6-dind'
        }
    }
    stages {
        stage('Checkout') {
            steps {
                script {
                    // checkout scm
                    echo 'Starting docker containers'
                    sh 'cd docker'
                    sh 'docker-compose -f docker-compose.yaml -f staging/docker-compose-staging.yaml build '
                    echo 'Build succeed' 
                }
            }
        }
    }
}
    