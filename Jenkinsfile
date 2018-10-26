node {
    checkout scm
    def dockerfile = 'Dockerfile'
    def customImage = docker.build("shamca:rails-app", "-f ${dockerfile} ./dockerfiles")
}
