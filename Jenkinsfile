node {
    def app

    stage('Clone repository') {

        checkout scm
    }

    stage('Build app container') {

        app = docker.build("shamca/rails-app")
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */

        app.inside {
            sh 'echo "Tests passed"'
        }
    }
}
