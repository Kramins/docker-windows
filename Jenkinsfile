pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                powershell  returnStatus: true, script: '.\\build.ps1'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}