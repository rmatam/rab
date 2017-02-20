#!/bin/bash
set -e
export ANT_HOME=/opt/local/ant
/etc/init.d/vivo stop
ant deploy -Dskiptests=true
chown -R tomcat:tomcat /opt/local/tomcat/
chown -R tomcat:vivoapps /opt/local/rab-vitro/
chown -R tomcat:vivoapps /opt/local/vdata-rabvitro/
/etc/init.d/vivo start
