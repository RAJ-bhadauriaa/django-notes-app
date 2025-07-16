@Library('Shared') _
pipeline {
    agent { label 'vinod' }

    stages {
       
        stage('Hello')
        {
            steps {
                script{
                    hello()
                }
            }
        }
        
        stage('Code') {
            steps {
                script{
                    clone("https://github.com/RAJ-bhadauriaa/django-notes-app.git","main")
                }
        }
        }
        
       
        stage('Build') {
            steps {
                script{
                    docker_build("notes-app","latest","rajbhadauriaa")
                }
            }
        }

        stage('Push') {
            steps {
                script{
                    docker_push("notes-app","latest","rajbhadauriaa")
                }
            }
        }

        stage('Test') {
            steps {
                echo 'running tests'
                // Add test scripts here if any
            }
        }

        stage('Deploy') {
            steps {
                echo 'deploying the app'
                sh "docker compose down && docker compose up -d"
            }
        }
    }
}
