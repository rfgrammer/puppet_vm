node 'losttemple.linuxmaster.com' {
# include sys_info
}

#node 'vm01.linuxmaster.com' {
#	include vim_upgrade
#}

node 'vm01.linuxmaster.com' {
	file { '/tmp/testserver' :
		content => "This is a test server.\n",
	}

	include sshd
}

node 'vm01.linuxmaster.com' {
#	include vim_upgrade
	include sshd
}

