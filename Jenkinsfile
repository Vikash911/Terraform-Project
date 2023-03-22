pipeline{
    agent any
    environment{
      Name = "Mikash"
      AWS_ACCESS_KEY_ID  = credentials('my-aws-key')
      AWS_SECRET_ACCESS_KEY = credentials('my-aws-key')
      AWS_REGION = "us-east-1"
    }
    stages{
    stage("pull the code from the git hub"){
            steps{
                git 'https://github.com/Vikash911/Terraform-Project.git'
            }
        }
    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }
    stage('Terraform Plan') {
      steps {
        sh 'terraform plan'
      }
    }
    stage('Terraform Apply') {
      steps {
        sh 'terraform apply -auto-approve'
      }
        }
   stage('terraform destroy'){
        steps {
            sh 'terraform destroy -auto-approve'
            
        }
    } 

    }
}
