pipeline {
    agent any

    parameters {
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Select The Environment')
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Select Create or Destroy')
    }

    stages {
        stage('terraform init') {
            steps {    
                    sh "terrafile -f env-dev/Terrafile"
                    sh "terraform init -backend-config=env-dev/dev-backend.tfvars"
                    
            }
        }

        stage('terraform plan') {
            steps {    
                    sh "terraform plan -var-file=env-dev/dev.tfvars"
            }
        }

        stage('terraform apply') {
            steps {    
                    sh "terraform ${ACTION} -auto-approve -var-file=env-dev/dev.tfvars"
            }
        }
    }
}