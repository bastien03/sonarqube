$jdbc = {
    url               => 'jdbc:h2:tcp://localhost:9092/sonar',
    username          => 'sonar',
    password          => 'sonar',
}

class { 'java' : } ->
class { 'maven::maven' : } ->
class { 'sonarqube' :
    arch         => 'linux-x86-64',
    version      => '3.7.2',
    user         => 'sonar',
    group        => 'sonar',
    service      => 'sonar',
    installroot  => '/usr/local',
    home         => '/var/local/sonar',
    download_url => 'http://dist.sonar.codehaus.org',
    jdbc         => $jdbc,
    log_folder   => '/var/local/sonar/logs',
    updatecenter => 'true'
}
