file { '/home/managers':
	ensure => "directory",
	owner => 'mscott',
	group => 'managers',
	mode => '2770',
	source => 'file:/etc/skel',
	recurse => 'remote',
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
