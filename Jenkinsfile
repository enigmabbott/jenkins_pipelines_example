pipeline {
    agent any;
    environment { 
        my_package_filename = "perl-jenkins" + ${env.BUILD_ID} + ".targ.gz" ;
    }  

    stages {
        stage('Build') {
            steps {
                checkout scm;
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
                sh "git archive --format=tar.gz HEAD > ${my_package_filename}"
                sh 'ls -lrt'
            }
        }
        stage('Push to Artifactory') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
