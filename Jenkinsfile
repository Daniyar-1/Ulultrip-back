pipeline {
    agent any

    stages {
        stage('Build and Deploy') {
            steps {
                script {
                    // Запускаем Docker Compose для сборки и развертывания контейнеров
                    echo 'Starting docker containers'
                    sh 'cd docker'
                    sh 'docker-compose -f docker-compose.yaml -f staging/docker-compose-staging.yaml build -d'
                    echo 'Build succeed'
                }
            }
        }
    }

    post {
        always {
            // Очищаем ресурсы после выполнения сценария (необходимо или нет - зависит от ваших требований)
            script {
                sh 'docker-compose -f docker/docker-compose.yaml -f docker/staging/docker-compose-staging.yaml down'
            }
        }
    }
}


                     

                
