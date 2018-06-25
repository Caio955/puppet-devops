class exercicio {
		file {"/root/.bashrc":
		source => "puppet:///modules/exercicio/bashrc",
		ensure => present,
		}

case $::osfamily{

	"RedHat":{
		$pacotes = ["httpd","git","crond"]
		}
	"Debian":{
		$pacotes = ["apache2","git","cron"]
		} 
}

	package { $pacotes:
		ensure => present,
		}

	$criaruser=["devops","jorge","judith"]
	user { $criaruser:
		ensure => present,
		}


}
