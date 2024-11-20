pipeline {
    agent any
    
    environment {
        TF_VERSION = '1.3.6'  // 원하는 Terraform 버전
    }

    stages {

        stage('Terraform Init') {
            steps {
                script {
                    sh '''
                    terraform init
                    '''
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    sh '''
                    terraform plan
                    '''
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    sh '''
                    terraform apply
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
