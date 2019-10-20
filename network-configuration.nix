 { config, pkgs, ...}:
 
 {
    networking = {
	    hostId = "DEADBEEF";
	    hostName =  "VirgoNix";
        firewall = {
            enable = true;
            allowedTCPPorts = [ 80 ];
        };
    };
 }