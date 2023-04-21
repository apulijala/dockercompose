class ntpdemo {

   package { "Install ntp server" : 
	ensure => installed,
	name => "chrony"
   }

   file { "Configure chrony config" : 
	path => "/etc/chrony.conf",
	ensure => present,
	content => "server 0.centos.pool.ntp.org iburst\n"
   }

   service { "Restart ntp server" : 
	ensure => running,
	name => "chronyd"
   }
}
