pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm;
                echo 'Building..'
                sh "find ."
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
