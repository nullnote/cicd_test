pipeline {
    agent any
    
    environment {
        TF_VERSION = '1.3.6'  // 사용할 Terraform 버전
        TF_WORKSPACE = 'default'
    }

    stages {
        stage('Checkout SCM') {
            steps {
                // GitHub 저장소에서 소스를 체크아웃
                git branch: 'main', url: 'https://github.com/your-username/your-repository.git'
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    // Terraform 초기화
                    sh '''
                    terraform init
                    '''
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    // Terraform Plan 실행
                    sh '''
                    terraform plan -out=tfplan
                    '''
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    // terraform apply 실행 (실제로 변경 사항을 적용)
                    // 일반적으로 `terraform apply`는 자동으로 적용되는 것보다 수동으로 승인되는 것이 좋습니다.
                    // `-auto-approve`를 사용하면 자동으로 적용됩니다.
                    sh '''
                    terraform apply -auto-approve tfplan
                    '''
                }
            }
        }
    }

    post {
        always {
            // 파이프라인 완료 후 clean 작업 (필요시)
            echo 'Terraform execution completed.'
        }

        success {
            // 성공적으로 끝난 경우 추가 작업 가능
            echo 'Terraform applied successfully.'
        }

        failure {
            // 실패한 경우 알림 등 처리 가능
            echo 'Terraform p