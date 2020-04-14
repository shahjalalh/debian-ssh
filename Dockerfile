FROM debian:9.12

# preparing the system
RUN apt-get update
RUN apt-get -y install openssh-server sudo nano

# creating user
RUN useradd shahjalal && \
    echo "shahjalal:123456" | chpasswd && \
    usermod -aG sudo shahjalal && \
    mkdir /home/shahjalal

# praparing ssh
RUN mkdir /home/shahjalal/.ssh && \
    chmod 700 /home/shahjalal/.ssh

RUN chown shahjalal:shahjalal -R /home/shahjalal && \
    mkdir /home/shahjalal/.ssh/authorized_keys && \
    chmod 600 /home/shahjalal/.ssh/authorized_keys

RUN mkdir -p /var/run/sshd

# running sshd
CMD /usr/sbin/sshd -D