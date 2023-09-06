node {
    stage('Clone repo & Deploy Database') {
        echo 'Connecting gitlab..'
        git branch: 'develop', url: 'https://github.com/hnnguyendev/jenkins.git'
        sh 'pwd'
    }
}

pipeline {
    agent any
    tools {
        jdk 'jdk-11.0.12'
    }
//     stages {
//         stage('Build') {
//             steps {
//                 echo 'Build docker..'
//                 sh 'chmod +x gradlew'
//                 sh './gradlew -Pdev bootJar jibDockerBuild'
//             }
//         }
//         stage('Deploy') {
//             steps {
//                 echo 'Deploying..'
//                 sh 'cat /usr/jenkins/config/clubnorthwest/docker/app.yml'
//                 sh 'docker-compose -f /usr/jenkins/config/clubnorthwest/docker/app.yml down'
//                 sh 'docker-compose -f /usr/jenkins/config/clubnorthwest/docker/app.yml up -d'
//             }
//         }
//     }
    post {
        success {
            echo "SUCCESSFUL"
        }
        failure {
            echo "FAILED"
        }
    }
}
