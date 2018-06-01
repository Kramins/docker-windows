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
        stage('Push To Docker') {
            steps {
                powershell  returnStatus: true, script: '.\\push-docker.ps1'
            }
        }
    }
}