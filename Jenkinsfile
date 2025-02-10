pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Srienath2205/ServiceRegistryRepository.git'
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean install'
            }
        }

        // stage('Test') {
        //     steps {
        //         bat 'mvn test'
        //     }
        // }

        // stage('Docker Build') {
        //     steps {
        //         script {
        //             docker.build('jenkinsdelta_service_registry_img', '-f Dockerfile .')
        //         }
        //     }
        // }

        // stage('Run Docker') {
        //     steps {
        //         bat 'docker run -d -p 8761:8761 --name service_registry jenkinsdelta_service_registry_img'
        //     }
        // }
    }
}
