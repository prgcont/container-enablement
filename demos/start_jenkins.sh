#!/bin/sh

export ADMIN_USERNAME=${ADMIN_USERNAME:-admin}
export ADMIN_PASSWORD=${ADMIN_PASSWORD:-admin}

exec java -Duser.home="$JENKINS_HOME" -Djenkins.install.runSetupWizard=false -jar /usr/share/jenkins/jenkins.war
