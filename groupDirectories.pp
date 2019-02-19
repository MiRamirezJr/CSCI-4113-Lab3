file { '/home/managers':
	ensure => "directory",
	owner => 'mscott',
	group => 'managers',
	mode => '2770',
	source => ["/etc/skel"],
}
file { '/home/sales':
	ensure => "directory",
	owner => 'abernard',
	group => 'sales',
	mode => '2770',
}
file { '/home/accounting':
	ensure => "directory",
	owner => 'amartin',
	group => 'accounting',
	mode => '2770',
}
