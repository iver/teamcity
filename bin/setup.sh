#!/bin/sh
set -o errexit
set -o nounset

TC_VERSION=9.0.2
TARGET_PATH=/opt/
OWNER=www-data

# Update package
apt-get -y update
apt-get -y install vim curl nmap tree zip htop upstart
apt-get -y install openjdk-7-jre-headless

wget http://download-cf.jetbrains.com/teamcity/TeamCity-${TC_VERSION}.tar.gz
tar -zxf TeamCity-${TC_VERSION}.tar.gz

mv TeamCity ${TARGET_PATH}teamcity-server
chown -R ${OWNER} ${TARGET_PATH}teamcity-server
mkdir /var/teamcity-server
chown -R ${OWNER} /var/teamcity-server

cp /vagrant/teamcity-server /etc/init.d/teamcity-server
chmod +x /etc/init.d/teamcity-server
update-rc.d teamcity-server defaults
/etc/init.d/teamcity-server start

cp -R ${TARGET_PATH}teamcity-server/buildAgent ${TARGET_PATH}teamcity-agent
chmod +x ${TARGET_PATH}teamcity-agent/bin/agent.sh
chown -R ${OWNER} ${TARGET_PATH}teamcity-agent
mkdir /var/teamcity-agent
chown -R ${OWNER} /var/teamcity-agent

sed -e "s/..\/work/\/var\/teamcity-agent\/work/g" \
    -e "s/..\/temp/\/var\/teamcity-agent\/temp/g" \
    -e "s/..\/system/\/var\/teamcity-agent\/system/g" \
    ${TARGET_PATH}teamcity-agent/conf/buildAgent.dist.properties \
    > ${TARGET_PATH}teamcity-agent/conf/buildAgent.properties

cp /vagrant/teamcity-agent /etc/init.d/teamcity-agent
chmod +x /etc/init.d/teamcity-agent
update-rc.d teamcity-agent defaults
/etc/init.d/teamcity-agent start
