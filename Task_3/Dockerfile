FROM ubuntu:22.04
LABEL Title="DevNet Associate Skills Test:Guido" \
      maintainer="GUDU64" \
      email="docker@gvdv.net"
#
# gvdv: Algemene sysconfigs
#
RUN apt-get update -qy
RUN apt-get install apt-utils -qy
RUN apt-get install sudo -qy
RUN apt-get install vim-common -qy
RUN apt-get install software-properties-common -qy
RUN apt-get install net-tools -qy

#
# gvdv: Installatie ssh server met key voor root
#
RUN apt-get install openssh-server -qy
#RUN service ssh start
#RUN ["/usr/sbin/sshd"]
COPY ./id.pub /root/.ssh/authorized_keys
#RUN echo 'root:password' | chpasswd
#RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
EXPOSE 22

#
# gvdv: Installatie apache met startbladzijde
#
RUN apt-get install apache2 -qy
RUN a2enmod rewrite
COPY ./static /var/www/html/static/
COPY ./templates/index.html /var/www/html
RUN sed -i.gvdv_bak s/^Listen\ 80/Listen\ 8088/ /etc/apache2/ports.conf
EXPOSE 8088

#
# gvdv: Wrap it up
#
COPY ./bootstrap.sh /root/
RUN chmod +x /root/bootstrap.sh
ENTRYPOINT ["sh", "/root/bootstrap.sh"]
CMD ["/bin/bash"]
