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
group { "dschrute":
	ensure => "present",
	gid => "601",
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
group { "jhalpert":
	ensure => "present",
	gid => "602",
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
group { "tflenderson":
	ensure => "present",
	gid => "603",
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
group { "dphilbin":
	ensure => "present",
	gid => "604",
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
group { "mpalmer":
	ensure => "present",
	gid => "605",
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
group { "pbeesly":
	ensure => "present",
	gid => "606",
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
group { "cbratton":
	ensure => "present",
	gid => "607",
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
group { "amartin":
	ensure => "present",
	gid => "608",
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
group { "kkapoor":
	ensure => "present",
	gid => "609",
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
group { "abernard":
	ensure => "present",
	gid => "610",
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
group { "kmalone":
	ensure => "present",
	gid => "611",
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
group { "omartinez":
	ensure => "present",
	gid => "612",
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
group { "plapin":
	ensure => "present",
	gid => "613",
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
group { "shudson":
	ensure => "present",
	gid => "614",
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
group { "mramirez":
	ensure => "present",
	gid => "615",
}
user { "mramirez":
	password => inline_template("<%= '$admPass'.crypt('\$6$$salt') %>"),
	uid => "615",
	ensure => present,
	comment => "Mario Ramirez",
	gid => "mramirez",
	groups => ["mscott", "dschrute", "jhalpert", "tflenderson", "dphilbin", "mpalmer", "pbeesly", "cbratton", "amartin", "kkapoor", "abernard", "kmalone", "omartinez", "plapin", "shudson", "mramirez"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mramirez",
	managehome => true,
}
