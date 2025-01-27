pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                script {
                    sh 'mvn clean install'
                }
            }
        }
        stage('Docker') {
            steps {
                script {
                    sh 'docker build -t aa2-app .'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh 'docker run -d -p 8080:8080 --name aa2-app aa2-app'
                }
            }
        }
    }
}
