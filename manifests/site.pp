node 'losttemple.linuxmaster.com' {
 include sys_info
}

#node 'vm01.linuxmaster.com' {
#	include vim_upgrade
#}

node 'vm01.linuxmaster.com' {
	include sshd
	include danger_module
}

node 'vm01.linuxmaster.com' {
	include vim_upgrade
	include sshd
}

