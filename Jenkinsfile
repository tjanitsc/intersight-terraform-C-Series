pipeline {
  agent any
  stages {
    stage('Git Checkout ') {
      steps {
        git(url: 'https://github.com/sandkum5/intersight-terraform-C-Series.git', branch: 'main')
      }
    }

    stage('Change Dir') {
      steps {
        dir(path: 'ucsc-policies')
      }
    }

    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform plan ') {
      steps {
        sh 'terraform plan -var-file=env1.tfvars'
      }
    }

  }
}