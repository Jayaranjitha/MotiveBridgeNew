#!/usr/bin/env groovy

pipeline {
    options { disableConcurrentBuilds() }
    agent {
    kubernetes {
      label 'k8s-vzw-motivebridge-${cto.devops.jenkins.Utils.getTimestamp()}'
      inheritFrom 'k8s-build'
      containerTemplate {
        name 'vzw-motivebridge'
        image "docker.${ARTIFACTORY_URL}/aado/build_smp:latest-release"
        alwaysPullImage true
        workingDir '/home/jenkins'
        ttyEnabled true
        command 'cat'
        args ''
      }
    }
  }
    stages {
        stage('Checkout') {
            steps{
                checkout(
                  [$class: 'GitSCM',
                   branches: [[name: "${BRANCH_NAME}"]],
                   doGenerateSubmoduleConfigurations: false, 
				   extensions: [[$class: 'CloneOption', timeout: 120]], 
				   submoduleCfg: [],
                       userRemoteConfigs: [[credentialsId: "cps-gerrit-ssh", refspec: "${BRANCH_NAME}",
                       url: "${GIT_URL}"]]
                  ]
                )
            }
        }
        stage('Build & Publish'){
            environment {
                JAVA_HOME = '/usr/java/jdk1.8.0_121'
                MAVEN_HOME = '/opt/apache-maven'
            }
            steps{
				container('vzw-motivebridge') {
                script{
                    def server = Artifactory.server env.ARTIFACTORY_SERVER_ID
                    server.credentialsId = 'cps-artifactory'
                    def rtMaven = Artifactory.newMavenBuild()
                    rtMaven.resolver server: server, releaseRepo: 'maven_motive', snapshotRepo: 'maven_motive'
                    rtMaven.deployer server: server, releaseRepo: 'cps-mvn-releases', snapshotRepo: 'cps-mvn-snapshots'
                    buildInfo = rtMaven.run pom: 'pom.xml', goals: 'clean install -P FULL_BUILD -DskipTests=true'
                    server.publishBuildInfo buildInfo
                }
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
