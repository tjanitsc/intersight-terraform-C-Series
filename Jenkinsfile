pipeline {
  agent any
  stages {
    stage('Git Checkout ') {
      steps {
        git(url: 'https://github.com/sandkum5/intersight-terraform-C-Series.git', branch: 'main')
        sh 'terraform init'
        sh 'terraform plan -var-file=env1.tfvars'
      }
    }

  }
}