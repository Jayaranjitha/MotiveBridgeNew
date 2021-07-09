#!/usr/bin/env groovy

pipeline{
spec:
  containers:
  - name: vzw-op-maven
    image: docker.${ARTIFACTORY_URL}/aado/build_smp:latest-release
    workingDir: /home/jenkins
    command:
    - cat
    tty: true
    env:
    - name: "DOCKER_HOST"
      value: "tcp://127.0.0.1:2375"
  - name: vzw-op-npm
    image: registry1-docker-io.repo.lab.pl.alcatel-lucent.com/node:10.9.0-alpine
    workingDir: /home/jenkins
    command:
    - cat
    tty: true
      """
    }
}
    stages {
        stage('Checkout') {
            steps{
                checkout(
                  [$class: 'GitSCM',
                   branches: [[name: "${BRANCH_NAME}"]],
                   doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [],
                       userRemoteConfigs: [[credentialsId: "cps-gerrit-ssh", refspec: "${BRANCH_NAME}",
                       url: "${GIT_URL}"]]
                  ]
                )
            }
        }
        
		
	stage('Setup Env') {
        steps {
        container('vzw-op-npm') {
        sh '''
            npm config set registry https://repo.lab.pl.alcatel-lucent.com/api/npm/smp-npm-dependencies
            npm config set cafile /etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem
        '''
        }
      }
    }
	
	

     stage("Configure Maven") {
            steps {
                container('vzw-op-maven') {
                    withCredentials([usernamePassword(credentialsId: 'cps-artifactory',
                            usernameVariable: 'USERNAME',
                            passwordVariable: 'PASSWORD')]) {
                        sh """
                            sudo sed -i s/MAVEN_USERNAME/${USERNAME}/ settings.xml
                            sudo sed -i s/MAVEN_PASSWORD/${PASSWORD}/ settings.xml
                        """
                    }
                }
            }
        }

	stage('Build & Publish'){
            environment {
                JAVA_HOME = '/usr/java/jdk1.8.0_121'
                MAVEN_HOME = '/opt/apache-maven'
		ARTIFACTORY_KEY = credentials('cps-artifactory')
            }
            steps{
		container('vzw-op-maven') {
		sh "echo 'GIT URL'"
		sh "echo ${GIT_URL}"
		sh "ls -ltr"

		sh "/opt/apache-maven/bin/mvn -gs settings.xml -f pom.xml clean test -Datf.tags=@login"         


		}
            }
        }		
	
	
    }
    post {
        always {
            deleteDir()
            script{
                 emailext (
                    subject: "Build executed: ${currentBuild.fullDisplayName}",
                    body: "Build: ${BUILD_URL}",
                    to: 'k.jayaranjitha@nokia.com',
                    mimeType: 'text/html'
                 )
            }
        }
    }
}
