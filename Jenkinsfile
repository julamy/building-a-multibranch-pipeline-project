pipeline {
  agent none
  stages {

    stage('DB') {
      agent {
          docker {
            image 'postgres:alpine'
            args '--env-file ./db/database_test.env'
            args '-v db-data-test:/var/lib/postgresql/data'
            args '-v "$PWD/db/init.sql":/docker-entrypoint-initdb.d/init.sql'
          }
      }
      steps {
        sh "cat './db/init.sql'"
      }
    }
  }
}
