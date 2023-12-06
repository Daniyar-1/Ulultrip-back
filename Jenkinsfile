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
                    echo 'Installing dependencies'
                    sh 'pip install -r requirements.txt'
                    echo 'Starting docker containers'
                    sh 'cd docker && docker compose -f docker-compose.yaml -f staging/docker-compose-staging.yaml build '
                    echo 'Build succeed' 
                }
            }
        }
    }
}
    