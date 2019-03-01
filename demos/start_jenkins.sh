#!/bin/sh

touch "${COPY_REFERENCE_FILE_LOG}" || { echo "Can not write to ${COPY_REFERENCE_FILE_LOG}. Wrong volume permissions?"; exit 1; }
exec java -Duser.home=/var/jenkins_home -Djenkins.install.runSetupWizard=false -jar /usr/share/jenkins/jenkins.war
