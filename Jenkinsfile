pipeline {
  agent none
  stages {
    stage('DB') {
      agent {
          docker {
            image 'postgres:alpine'
            args '-v db-data-test:/var/lib/postgresql/data'
          }
      }
      steps {
        sh "cat './db/init.sql'"
      }
    }
  }
}
