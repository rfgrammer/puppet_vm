class sshd {
	package { 'openssh-server' :
		ensure => '1:7.2p2-4ubuntu2.1',
	}

	service { 'ssh' :
		ensure => running,
		subscribe => Field['sshdconfig'],
		require => Package['openssh-server'],
	}

	file { 'sshdconfig' :
		name => '/etc/ssh/sshd_config',
		owner => root,
		group => root,
		mode => 644,
		source => 'puppet:///modules/sshd/sshd_coinfig',
		require => Package['ssh'],
		notify => Service['ssh'],
	}

	file { '/home/administrator/.ssh/authorized_keys':
		owner => administrator,
		group => administrator,
		mode => 600,
	}

}

