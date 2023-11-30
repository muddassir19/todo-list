pipeline{
    agent any 

    tools{
        maven 'maven3'
    }
    stages{
        stage("checkout"){
            steps{
                git branch: 'jenkins_shared_lib', url: 'https://github.com/muddassir19/todo-list.git'
            }
        }
    }
}