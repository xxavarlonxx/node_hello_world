pipeline{
    agent any
    environment {
        DOCKERHUB_USER = "xxavarlonxx"
        APP = "node_hello_world"
        dockerImage = ""
    }
    stages{
        stage('Checkout Repository'){
            steps{
                script{
                    checkout scm
                }
            }
        }
        stage('Build Docker Image'){
            steps{
                script {
                    echo "Build Image ${DOCKERHUB_USER}/${APP}"
                    dockerImage = docker.build("${DOCKERHUB_USER}/${APP}")
                }
            }
        }

        stage('Push Image to Dockerhub'){
            steps{
                script{
                    echo "Push to dockerhub with tags ${BUILD_NUMBER} and latest"
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push("$BUILD_NUMBER")
                        dockerImage.push('latest')

                    }
                }
            }
        }
    }
}