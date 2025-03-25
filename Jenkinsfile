pipeline{
    agent{
        label 'AGENT-1'
    }
    options{
        timeout(time: 30 ,unit : 'MINUTES')
        disableConcurrentBuilds()
    }
    environment{
        DEBUG='true'
        appVersion='' //global variables
    }
    stages{
        stage('Read package.json version'){
            steps{
                script{
                    def packageJSON = readJSON file: 'package.json'
                    appVersion = packageJSON.version
                    echo " appVersion is ${appVersion}"
                }
            }
        }

        stage('Install dependencies'){
            steps{
                sh 'npm install'
            }
        }

         stage('Docker Build'){
            steps{
                sh """
                docker build -t annollatulasi/backend:${appVersion}
                docker images
                """

            }
        }
    }
}