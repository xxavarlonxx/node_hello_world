pipeline{
    agent {image "node:16.18-alpine"}
    environment {
        DOCKERHUB_USER = "xxavarlonxx"
        APP = "node_hello_world"
        DOCKER_IMAGE = ""
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
                    DOCKER_IMAGE = docker.build("${DOCKERHUB_USER}/${APP}")
                }
            }
        }

        stage('Push Image to Dockerhub'){
            steps{
                script{
                    echo "Push to dockerhub with tags ${BUILD_NUMBER} and latest"
                    docker.withRegistry('https://hub.docker.com/', 'dockerhub'){
                        DOCKER_IMAGE.push(${BUILD_NUMBER})
                        DOCKER_IMAGE.push('latest')
                    }
                }
            }
        }
    }
}