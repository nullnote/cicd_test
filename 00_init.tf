terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# AWS 리전 정의
provider "aws" {
  region = "ap-northeast-2"
}

# ssh-keygen -m PEM -f jylee -q -N "abcde" -t rsa 실행하여 키 페어 생성
# ec2 키페어 전달

