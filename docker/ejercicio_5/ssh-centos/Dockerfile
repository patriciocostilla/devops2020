FROM centos:8

RUN yum update -y
RUN yum install -y openssh-server

RUN mkdir /var/run/sshd
RUN echo 'root:123456' | chpasswd
RUN sed -i 's/#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key

COPY .ssh /home/root/.ssh

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]