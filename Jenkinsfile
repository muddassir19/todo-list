pipeline{
    agent any 

    tools{
        maven 'maven3'
    }
    stages{
        stage("checkout"){
            steps{
                git branch: 'master', url: 'https://github.com/muddassir19/todo-list.git'
            }
        }
        stage("maven Build"){
            steps{
                sh 'mvn clean package'
            }
        }
        stage("Deploy to tomcat"){
            steps{
                sshagent(['tomcat-server']){
                    sh 'scp -o StrictHostKeyChecking=no target/*.war muddassir@172.30.207.22:/opt/tomcat8/webapps/'
                }
            }
        }
    }
}