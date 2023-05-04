pipeline {
  agent any
  stages {
    stage('Build'){
        steps {
         build job: 'release', parameters: [string(name: 'buildTool', value: params.buildTool)]
        }
    }
    stage('Deploy'){
        steps{
            script{
                build job: 'deploy', parameters: [string(name:'BUILD_SELECTOR',value:String.valueOf(BUILD_NUMBER))]
            }
        }
    }
  }
}