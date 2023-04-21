node 'puppetagent01.example.com' {
	include ntpdemo
	# include dockercompose
	$ipaddresses = ["192.168.0.1", "192.168.0.2", "192.168.0.2"]
	$ifaces = {
        	"eth0" => "192.168.0.1",
        	"eth1" => "158.43.128.1",
        	"eth2" => "10.0.75.207"
	}
	class {'dockercompose':
		ipaddresses => $ipaddresses,
		ifaces => $ifaces,
	
	}
	
}
