pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'docker:24.0.6'
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    checkout scm
                    sh 'pip install -r requirements.txt'
                    sh "cd docker && docker compose -f docker-compose.yaml -f staging/docker-compose-staging.yaml build "
                }
            }
        }
    }
}
    