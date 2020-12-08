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
        cat './db/init.sql'
      }
    }
  }
}
