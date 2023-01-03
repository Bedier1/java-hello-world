pipeline {
    agent any
    env.IMAGE_NAME = 'my-project'
    env.IMAGE_TAG = "${env.BUILD_NUMBER}"

    stages {
        stage('Unit tests') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Build Docker image') {
            steps {
                sh "docker build -t ${env.IMAGE_NAME}:${env.IMAGE_TAG} ."
            }
        }
        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
                    sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
                    sh "docker tag ${env.IMAGE_NAME}:${env.IMAGE_TAG} $DOCKER_USERNAME/${env.IMAGE_NAME}:${env.IMAGE_TAG}"
                    sh "docker push $DOCKER_USERNAME/${env.IMAGE_NAME}:${env.IMAGE_TAG}"
                }
            }
        }
    }
}
