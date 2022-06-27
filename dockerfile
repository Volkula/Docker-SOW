FROM centos:7

LABEL type="Repository-server"

RUN yum install -y epel-release && yum install -y nginx
RUN yum install -y createrepo rpm-build rpm-sign yum-utils
RUN yum install -y openssh-server openssh-clients
RUN yum install -y supervisor

RUN yum clean all

RUN mkdir -p /opt/repo/files/rpm

COPY ./files/build/rpm/ ./opt/repo/files/rpm
COPY ./files/nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./files/repo/ ./opt/repo/files/rpm/
COPY ./files/repo/start.sh /usr/sbin/start.sh
COPY ./files/repo/sshd_config /etc/ssh/sshd_config
COPY ./files/supervisord/services.ini /etc/supervisord.d/services.ini

RUN chmod +x /usr/sbin/start.sh

RUN createrepo /opt/repo/files/rpm

RUN echo 'root:mypassword' | chpasswd

RUN ssh-keygen -A

CMD [ "supervisord", "-n" ]

EXPOSE 2223 8080