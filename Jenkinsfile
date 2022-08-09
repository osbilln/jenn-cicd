pipeline{
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages{
        stage('terraform init and apply - dev'){
            steps{
//                 sh '"terraform workspace new dev"'
//                 sh "terraform init"
                sh "echo $PATH"
            }
        }
    }
}

def getTerraformPath() {
    def tfHome = tool name: 'terraform-12', type: 'terraform'
    return tfHome
}
