pipeline {
    agent any
    
    environment {
        TF_VERSION = '1.3.6'
        
        AWS_ACCESS_KEY_ID = 'AKIAVRUVQYKSCLXNTRKK'
        AWS_SECRET_ACCESS_KEY = '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'
        AWS_DEFAULT_REGION = 'ap-northeast-2' 
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
