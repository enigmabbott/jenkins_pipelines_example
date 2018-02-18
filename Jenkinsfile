pipeline {
    agent any
    checkout scm;

    stages {
        stage('Build') {
            steps {
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                echo 'Building..'
                sh "find t lib bin"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh "prove -I lib t"
            }
        }
        stage('Package') {
            steps {
                echo 'Packaging..'
            }
        }
        stage('Push to Artifactory') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
