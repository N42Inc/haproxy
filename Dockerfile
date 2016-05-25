FROM ubuntu:14.04
MAINTAINER d.basivireddy@gmail.com
RUN apt-get update && apt-get install -y vim software-properties-common
RUN apt-get install -y supervisor
RUN add-apt-repository ppa:vbernat/haproxy-1.5
RUN apt-get update 
RUN apt-get -y dist-upgrade
RUN apt-get install -y haproxy
RUN sed -i -e 's/ENABLED=0/ENABLED=1/' /etc/default/haproxy
ADD haproxy.cfg /etc/haproxy/haproxy.cfg
ADD supervisor.conf /etc/supervisor/conf.d/supervisor.conf
EXPOSE 80
CMD "/usr/bin/supervisord"
