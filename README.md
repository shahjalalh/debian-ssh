# Debian with SSH installed

Repo in docker hub: https://hub.docker.com/repository/docker/shahjalalh/debian-ssh

```
$ docker build -t shahjalalh/debian-ssh:1.0 .

# running docker
$ docker run shahjalalh/debian-ssh:1.0

# to get the ip
$ docker ps
$ docker inspect 6aa

# connecting through ssh with password
$ ssh shahjalal@172.17.0.2

```