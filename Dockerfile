FROM centos:7
MAINTAINER Mihai <costache.mircea.mihai@gmail.com>

RUN yum clean all && yum install -y http://files.freeswitch.org/freeswitch-release-1-6.noarch.rpm epel-release && yum install -y freeswitch-config-vanilla freeswitch-lang-en freeswitch-sounds-en freeswitch-event-erlang-event && yum clean all

CMD freeswitch -nonat -conf /etc/sipxpbx/freeswitch/conf -db /var/sipxdata/tmp/freeswitch -log /var/log/sipxpbx -run /var/run/sipxpbx -htdocs /etc/sipxpbx/freeswitch/conf/htdoc
