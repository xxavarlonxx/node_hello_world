pipeline{
    agent {dockerfile true}
    stages{
        stage('Node version'){
            steps{
                script {
                    sh 'node --version'
                }
            }
        }
        stage('Build image'){
            steps{
                script {
                    sh echo 'Build Image'
                }
            }
        }

        stage('Push Image to Registry'){
            steps{
                script{
                   sh echo "Push"
                }
            }
        }

        stage('Publish on remote server'){
            steps{
                script{
                    sh "Deploy"
                }
            }
            
        }
    }
}