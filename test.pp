$pass='password'
$admPass='admPassword'
$salk='salt'
group { "dehus":
	ensure => "present",
	gid => "501",
}
group { "admins":
	ensure => "present",
	gid => "5000",
}
user { "dehus":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "501",
	ensure => present,
	comment => "Mark Dehus",
	gid => "dehus",
	groups => ["admins"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/dehus",
	managehome => true,
}
file { '/tmp/testdir':
	ensure => "directory",
	owner => 'root',
	group => 'admins',
	mode => '2775',
}
