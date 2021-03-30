pipeline {
    agent any
    tools { 
        maven 'Maven'  
    }
    stages {
        stage('Pre-Build') {
            steps {
                echo 'Moving to Code Directory'
                sh 'cd code/prototype1'
                 sh '''
                    export PATH=${PATH}:/opt/apache-maven-3.6.3/bin
                    export M2_HOME=/opt/apache-maven-3.6.3/
                ''' 
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'cd code/prototype1'
                sh 'mvn clean install'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
