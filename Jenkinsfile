pipeline {
    agent any
    
    environment {
        TF_VERSION = '1.3.6'  
    }

    stages {

        stage('Terraform Init') {
            steps {
                script {
                    sh '''
                    docker run -it --rm hashicorp/terraform:1.3.6 init
                    '''
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    sh '''
                    docker run -it --rm hashicorp/terraform:1.3.6 plan -out=tfplan
                    '''
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    sh '''
                    docker run -it --rm hashicorp/terraform:1.3.6 apply -auto-approve tfplan
                    '''
                }
            }
        }
    }

    post {
        always {
            echo 'Terraform execution completed.'
        }

        success {
            echo 'Terraform applied successfully.'
        }

        failure {
            echo 'Terraform pipeline failed.'
        }
    }
}
