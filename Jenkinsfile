pipeline {
  agent any
  stages {
    stage('Git Checkout ') {
      steps {
        git(url: 'https://github.com/sandkum5/intersight-terraform-C-Series.git', branch: 'main')
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
          sh 'terraform plan -var-file=env1.tfvars'
        }

      }
    }

  }
}