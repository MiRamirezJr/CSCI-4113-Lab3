$pass='password'
$admPass='admPassword'
$salk='salt'
group { "managers":
	ensure => "present",
	gid => "616",
}
group { "sales":
	ensure => "present",
	gid => "617",
}
group { "accounting":
	ensure => "present",
	gid => "618",
}
group { "mscott":
	ensure => "present",
	gid => "600",
}
group { "dschrute":
	ensure => "present",
	gid => "601",
}
group { "jhalpert":
	ensure => "present",
	gid => "602",
}
group { "tflenderson":
	ensure => "present",
	gid => "603",
}
group { "dphilbin":
	ensure => "present",
	gid => "604",
}
group { "mpalmer":
	ensure => "present",
	gid => "605",
}
group { "pbeesly":
	ensure => "present",
	gid => "606",
}
group { "cbratton":
	ensure => "present",
	gid => "607",
}
group { "amartin":
	ensure => "present",
	gid => "608",
}
group { "kkapoor":
	ensure => "present",
	gid => "609",
}
group { "abernard":
	ensure => "present",
	gid => "610",
}
group { "kmalone":
	ensure => "present",
	gid => "611",
}
group { "omartinez":
	ensure => "present",
	gid => "612",
}
group { "plapin":
	ensure => "present",
	gid => "613",
}
group { "shudson":
	ensure => "present",
	gid => "614",
}
group { "mramirez":
	ensure => "present",
	gid => "615",
}
user { "mscott":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "600",
	ensure => present,
	comment => "Michael Scott",
	gid => "mscott",
  groups => ["mscott", "managers"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mscott",
	managehome => true,
}
user { "dschrute":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "601",
	ensure => present,
	comment => "Dwight Schrute",
	gid => "dschrute",
	groups => ["dschrute", "managers"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/dschrute",
	managehome => true,
}
user { "jhalpert":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "602",
	ensure => present,
	comment => "Jim Halpert",
	gid => "jhalpert",
	groups => ["jhalpert", "managers"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/jhalpert",
	managehome => true,
}
user { "tflenderson":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "603",
	ensure => present,
	comment => "Toby Flenderson",
	gid => "tflenderson",
	groups => ["tflenderson"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/tflenderson",
	managehome => true,
}
user { "dphilbin":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "604",
	ensure => present,
	comment => "Darryl Philbin",
	gid => "dphilbin",
	groups => ["dphilbin"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/dphilbin",
	managehome => true,
}
user { "mpalmer":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "605",
	ensure => present,
	comment => "Meredith Palmer",
	gid => "mpalmer",
	groups => ["mpalmer"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mpalmer",
	managehome => true,
}
user { "pbeesly":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "606",
	ensure => present,
	comment => "Pam Beesly",
	gid => "pbeesly",
	groups => ["pbeesly"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/pbeesly",
	managehome => true,
}
user { "cbratton":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "607",
	ensure => present,
	comment => "Creed Bratton",
	gid => "cbratton",
	groups => ["cbratton"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/cbratton",
	managehome => true,
}
user { "amartin":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "608",
	ensure => present,
	comment => "Angela Martin",
	gid => "amartin",
	groups => ["amartin", "accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/amartin",
	managehome => true,
}
user { "kkapoor":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "609",
	ensure => present,
	comment => "Kelly Kapoor",
	gid => "kkapoor",
	groups => ["kkapoor"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/kkapoor",
	managehome => true,
}
user { "abernard":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "610",
	ensure => present,
	comment => "Andy Bernard",
	gid => "abernard",
	groups => ["abernard", "sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/abernard",
	managehome => true,
}
user { "kmalone":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "611",
	ensure => present,
	comment => "Kevin Malone",
	gid => "kmalone",
	groups => ["kmalone", "accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/kmalone",
	managehome => true,
}
user { "omartinez":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "612",
	ensure => present,
	comment => "Oscar Martinez",
	gid => "omartinez",
	groups => ["omartinez", "accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/omartinez",
	managehome => true,
}
user { "plapin":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "613",
	ensure => present,
	comment => "Phyllis Lapin",
	gid => "plapin",
	groups => ["plapin", "sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/plapin",
	managehome => true,
}
user { "shudson":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "614",
	ensure => present,
	comment => "Stanley Hudson",
	gid => "shudson",
	groups => ["shudson", "sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/shudson",
	managehome => true,
}
user { "mramirez":
	password => inline_template("<%= '$admPass'.crypt('\$6$$salt') %>"),
	uid => "615",
	ensure => present,
	comment => "Mario Ramirez",
	gid => "mramirez",
	groups => ["mscott", "dschrute", "jhalpert", "tflenderson", "dphilbin", "mpalmer", "pbeesly", "cbratton", "amartin", "kkapoor", "abernard", "kmalone", "omartinez", "plapin", "shudson", "mramirez", "accounting", "sales", "managers"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mramirez",
	managehome => true,
}
file { '/home/mscott':
	ensure => "directory",
	owner => 'mscott',
	group => 'mscott',
	mode => '2700',
}
file { '/home/abernard':
	ensure => "directory",
	owner => 'abernard',
	group => 'abernard',
	mode => '2700',
}
file { '/home/amartin':
	ensure => "directory",
	owner => 'amartin',
	group => 'amartin',
	mode => '2700',
}
file { '/home/cbratton':
	ensure => "directory",
	owner => 'cbratton',
	group => 'cbratton',
	mode => '2700',
}
file { '/home/dphilbin':
	ensure => "directory",
	owner => 'dphilbin',
	group => 'dphilbin',
	mode => '2700',
}
file { '/home/dschrute':
	ensure => "directory",
	owner => 'dschrute',
	group => 'dschrute',
	mode => '2700',
}
file { '/home/jhalpert':
	ensure => "directory",
	owner => 'jhalpert',
	group => 'jhalpert',
	mode => '2700',
}
file { '/home/kkapoor':
	ensure => "directory",
	owner => 'kkapoor',
	group => 'kkapoor',
	mode => '2700',
}
file { '/home/omartinez':
	ensure => "directory",
	owner => 'omartinez',
	group => 'omartinez',
	mode => '2700',
}
file { '/home/tflenderson':
	ensure => "directory",
	owner => 'tflenderson',
	group => 'tflenderson',
	mode => '2700',
}
file { '/home/pbeesly':
	ensure => "directory",
	owner => 'pbeesly',
	group => 'pbeesly',
	mode => '2700',
}
