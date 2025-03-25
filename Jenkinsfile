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
            script{
                def packageJSON = readJSON file: 'package.json'
                appVersion = packageJSON.version
                echo " appVersion is ${appVersion}"
            }
        }
    }
    stages{
        stage('Deploy'){
            
        }
    }
    always{

    }
}