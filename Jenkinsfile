pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                // Cloner le code depuis GitHub
                git 'https://github.com/Rodrygo010/aa2.git'
            }
        }
        stage('Build with Maven') {
            steps {
                // Nettoyer et packager l'application avec Maven
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Construire l'image Docker
                sh 'docker build -t aa2-app:latest .'
            }
        }
        stage('Run Docker Container') {
            steps {
                // Arrêter et supprimer le conteneur s'il existe
                sh '''
                docker stop aa2-app || true
                docker rm aa2-app || true
                docker run -d -p 8080:8080 --name aa2-app aa2-app:latest
                '''
            }
        }
    }

    post {
        always {
            // Actions après la fin du pipeline
            echo "Pipeline terminé."
        }
        failure {
            // Actions en cas d'échec
            echo "Erreur dans le pipeline."
        }
    }
}
