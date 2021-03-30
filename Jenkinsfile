pipeline {
    agent any
    tools { 
        maven 'Maven' 
        jdk 'jdk8' 
    }
    stages {
        stage('Pre-Build') {
            steps {
                echo 'Moving to Code Directory'
                sh 'cd code/prototype1'
                 sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                ''' 
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
