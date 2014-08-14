
# Sonarqube

The goal of this project is to provide an instance of [Sonarqube](http://www.sonarqube.org/) that can be easily used to play with sonar. It starts a Vagrant virtual machine, provisions it with Puppet to install Sonarqube. After that, you just have to configure your sonar analyser and that's it.

## How to start the virtual machine
 - `vagrant box add ubuntu-14.04 https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box`
 - `vagrant up`
 - browse [http://192.168.5.10:9000/](http://192.168.5.10:9000/) to be sure that Sonarqube is running


## Configuration for the sonar analyser
 - sonar.host.url: http://192.168.5.10:9000/
 - sonar.jdb.url: jdbc:h2:tcp://192.168.5.10:9092/sonar
 - sonar.jdbc.driverClassName: org.h2.Driver
 - sonar.jdbc.username: sonar
 - sonar.jdbc.password: sonar
