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
                sh 'cd code/prototype1;mvn clean install'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'cd code/prototype1;mvn deploy -Djfrog_username=${JFROG_USERNAME} -Djfrog_password=${JFROG_PASSWORD}'
                echo 'Deploying war file on JFROG repository'
                sh 'cd code/prototype1;mvn deploy -Djfrog_username=${JFROG_USERNAME} -Djfrog_password=${JFROG_PASSWORD}'
            }
        }
    }
}
