pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm;
                echo 'Building..'
                sh "find t"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh "prove t"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
