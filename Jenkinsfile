pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Получаем исходный код из репозитория (замените на ваш URL репозитория)
                git 'https://github.com/Daniyar-1/Ulultrip-back.git'
            }
        }

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


                     

                
