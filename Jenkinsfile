stage('Scan with Trivy') {
    steps {
        script {
            bat '''
            trivy image sample-app:latest
            exit /b 0
            '''
        }
    }
}
