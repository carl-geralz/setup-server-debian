docker run --name jenkins-blueocean --restart=on-failure --detach --privileged --network jenkins --publish 8080:8080 --publish 50000:50000 --publish 2376:2376 --volume jenkins-data:/var/jenkins_home --volume jenkins-docker-certs:/certs/client jenkins/jenkins