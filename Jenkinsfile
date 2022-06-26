pipeline{
    agent any
    parameters{
        choice(name: 'ENV',choices: ['dev','prod'], description: 'pick ENV')
    }
    stages{
        stage('Terraform init'){
            steps{
                sh '''
                    cp ${ENV}-env/Terrafile .; terrafile
                    terraform init -backend-config=${ENV}-env/${ENV}-backend.tfvars
                '''
            }
        }
        stage('Terraform plan'){
            steps{
                sh '''
                    terraform plan -var-file=${ENV}.tfvars
                '''
            }
        }
    }
}