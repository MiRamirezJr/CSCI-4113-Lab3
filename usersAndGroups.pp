$pass='password'
$admPass='admPassword'
$salk='salt'
group { "managers":
	ensure => "absent",
	gid => "616",
}
group { "sales":
	ensure => "absent",
	gid => "617",
}
group { "accounting":
	ensure => "absent",
	gid => "618",
}
group { "mscott":
	ensure => "absent",
	gid => "600",
}
user { "mscott":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "600",
	ensure => absent,
	comment => "Michael Scott",
	gid => "mscott",
	groups => ["mscott", "managers"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mscott",
	managehome => true,
}
group { "dschrute":
	ensure => "absent",
	gid => "601",
}
user { "dschrute":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "601",
	ensure => absent,
	comment => "Dwight Schrute",
	gid => "dschrute",
	groups => ["dschrute", "managers"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/dschrute",
	managehome => true,
}
group { "jhalpert":
	ensure => "absent",
	gid => "602",
}
user { "jhalpert":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "602",
	ensure => absent,
	comment => "Jim Halpert",
	gid => "jhalpert",
	groups => ["jhalpert", "managers"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/jhalpert",
	managehome => true,
}
group { "tflenderson":
	ensure => "absent",
	gid => "603",
}
user { "tflenderson":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "603",
	ensure => absent,
	comment => "Toby Flenderson",
	gid => "tflenderson",
	groups => ["tflenderson"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/tflenderson",
	managehome => true,
}
group { "dphilbin":
	ensure => "absent",
	gid => "604",
}
user { "dphilbin":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "604",
	ensure => absent,
	comment => "Darryl Philbin",
	gid => "dphilbin",
	groups => ["dphilbin"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/dphilbin",
	managehome => true,
}
group { "mpalmer":
	ensure => "absent",
	gid => "605",
}
user { "mpalmer":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "605",
	ensure => absent,
	comment => "Meredith Palmer",
	gid => "mpalmer",
	groups => ["mpalmer"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mpalmer",
	managehome => true,
}
group { "pbeesly":
	ensure => "absent",
	gid => "606",
}
user { "pbeesly":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "606",
	ensure => absent,
	comment => "Pam Beesly",
	gid => "pbeesly",
	groups => ["pbeesly"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/pbeesly",
	managehome => true,
}
group { "cbratton":
	ensure => "absent",
	gid => "607",
}
user { "cbratton":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "607",
	ensure => absent,
	comment => "Creed Bratton",
	gid => "cbratton",
	groups => ["cbratton"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/cbratton",
	managehome => true,
}
group { "amartin":
	ensure => "absent",
	gid => "608",
}
user { "amartin":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "608",
	ensure => absent,
	comment => "Angela Martin",
	gid => "amartin",
	groups => ["amartin", "accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/amartin",
	managehome => true,
}
group { "kkapoor":
	ensure => "absent",
	gid => "609",
}
user { "kkapoor":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "609",
	ensure => absent,
	comment => "Kelly Kapoor",
	gid => "kkapoor",
	groups => ["kkapoor"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/kkapoor",
	managehome => true,
}
group { "abernard":
	ensure => "absent",
	gid => "610",
}
user { "abernard":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "610",
	ensure => absent,
	comment => "Andy Bernard",
	gid => "abernard",
	groups => ["abernard", "sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/abernard",
	managehome => true,
}
group { "kmalone":
	ensure => "absent",
	gid => "611",
}
user { "kmalone":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "611",
	ensure => absent,
	comment => "Kevin Malone",
	gid => "kmalone",
	groups => ["kmalone", "accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/kmalone",
	managehome => true,
}
group { "omartinez":
	ensure => "absent",
	gid => "612",
}
user { "omartinez":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "612",
	ensure => absent,
	comment => "Oscar Martinez",
	gid => "omartinez",
	groups => ["omartinez", "accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/omartinez",
	managehome => true,
}
group { "plapin":
	ensure => "absent",
	gid => "613",
}
user { "plapin":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "613",
	ensure => absent,
	comment => "Phyllis Lapin",
	gid => "plapin",
	groups => ["plapin", "sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/plapin",
	managehome => true,
}
group { "shudson":
	ensure => "absent",
	gid => "614",
}
user { "shudson":
	password => inline_template("<%= '$pass'.crypt('\$6$$salt') %>"),
	uid => "614",
	ensure => absent,
	comment => "Stanley Hudson",
	gid => "shudson",
	groups => ["shudson", "sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/shudson",
	managehome => true,
}
group { "mramirez":
	ensure => "absent",
	gid => "615",
}
user { "mramirez":
	password => inline_template("<%= '$admPass'.crypt('\$6$$salt') %>"),
	uid => "615",
	ensure => absent,
	comment => "Mario Ramirez",
	gid => "mramirez",
	groups => ["mscott", "dschrute", "jhalpert", "tflenderson", "dphilbin", "mpalmer", "pbeesly", "cbratton", "amartin", "kkapoor", "abernard", "kmalone", "omartinez", "plapin", "shudson", "mramirez"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mramirez",
	managehome => true,
}
