pipeline {
    agent any

    stages {
        stages('Pre-Build'){
            steps{
                echo 'Moving to Code Directory';
                sh 'cd code/prototype1'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
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
