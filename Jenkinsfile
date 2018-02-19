pipeline {
    agent any;
    environment { 
        my_package_filename = "perl-jenkins" + "${env.BUILD_ID}" + ".tar.gz" ;
    }  

    stages {
        stage('Build') {
            steps {
                checkout scm;
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                echo 'Building..'
                sh "find t lib"
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
                //sh "git archive --format=tar.gz HEAD > ${my_package_filename}"
                sh "tar cfz ${my_package_filename} bin lib"
                sh 'ls -lrt'
            }
        }
        stage('Push to Artifactory') {
            steps {
                echo 'Deploying....'
                script {
                    def server = Artifactory.server 'artman'
                    def uploadSpec = """{
                      "files": [
                        {
                          "pattern": "*tar.gz",
                          "target": "perl-pipeline-test/my-perl-thing/"
                        }
                     ]
                    }"""
                    server.upload(uploadSpec)
                }   
            }
        }
    }
}
