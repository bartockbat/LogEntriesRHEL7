#Instructions - building and running Logentries in a RHEL7 Docker container
1. Copy the Dockerfile into your registered RHEL7 machine/image

2. docker build -t rhel7/logentries
3. docker run -d -p 80:80 rhel7/logentries
4. docker ps - note the running docker container - in my case - 

*`CONTAINER ID        IMAGE                     COMMAND                CREATED             STATUS              PORTS                NAMES`

*`6ddd52e400d4        rhel7/logentries:latest   "/usr/sbin/apachectl   11 minutes ago      Up 11 minutes       0.0.0.0:80->80/tcp   kickass_elion`

5. Run the commands:
6. Install the logentries application:
docker exec 6ddd52e400d4 /le/install/linux/logentries_install.sh 22dde2b0-33ac-4d28-b450-aadca5d9dd4a
7. Restart the daemon
docker exec 6ddd52e400d4 service logentries restart

8. Look in the web UI, and you will see the entry for the Docker container.
