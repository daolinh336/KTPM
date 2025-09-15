FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y openssh-server && \
    rm -rf /var/lib/apt/lists/*

RUN echo 'root:root' | chpasswd

RUN sed -i 's/^#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

RUN mkdir -p /run/sshd && chmod 0755 /run/sshd

EXPOSE 22
EXPOSE 5901

COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
