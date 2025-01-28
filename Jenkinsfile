pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }m
        }
        stage('Build') {
            steps {
                bat 'mvn clean install'
            }
        }
        stage('Docker') {
            steps {
                bat 'docker build -t aa2-app .'
            }
        }
        stage('Deploy') {
            steps {
                bat 'docker run -d -p 8080:8080 --name aa2-app aa2-app'
            }
        }
    }
}
