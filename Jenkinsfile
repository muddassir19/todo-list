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
                sh 'cp -rf /var/lib/jenkins/workspace/todo-list/target/*.war  /opt/tomcat/webapps/'                
            }
        }
    }
}