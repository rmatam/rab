#!/bin/bash
set -e
export ANT_HOME=/opt/local/ant

/etc/init.d/vivo stop
ant all -Dskiptests=true
chown -R tomcat:vivoapps /opt/local/tomcat/
chown -R sdmccaul:vivoapps /opt/local/rab-vitro/
chown -R tomcat:vivoapps /opt/local/vdata/
/etc/init.d/vivo start

