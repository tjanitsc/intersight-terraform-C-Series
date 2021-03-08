pipeline {
  agent any
  environment {
    // TF_WORKSPACE = 'dev' //Sets the Terraform Workspace
    TF_IN_AUTOMATION = 'true'
    api_key = credentials("api_key")
    secret_key = credentials("secret_key")
  }  
  stages {
    stage('Git Checkout ') {
      steps {
        git(url: 'https://github.com/sandkum5/intersight-terraform-C-Series.git', branch: 'main', credentialsId: 'fe72be27-8681-4fd5-a171-2ac471406c6a')
      }
    }

    stage('Terraform Init') {
      steps {
        dir(path: 'ucsc-policies') {
          sh 'terraform init'
        }

      }
    }

    stage('Terraform plan ') {
      steps {
        dir(path: 'ucsc-policies') {
          sh 'terraform apply -var-file=env1.tfvars -auto-approve -var \'api_key=${env.api_key}\' -var \'secret_key=${env.secret_key}\' '
        }

      }
    }

  }
}