pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t sample-app:latest .'
                }
            }
        }

        stage('Scan with Trivy') {
            steps {
                script {
                    bat 'trivy image sample-app:latest || true'
                }
            }
        }
    }
}