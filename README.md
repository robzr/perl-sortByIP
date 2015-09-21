## sortByIP 

Perl module for sorting an array of IPs.  Example syntax:

	use sortByIP;
	
	@ips = `ypcat hosts.byaddr | cut -f1`;
	
	print sortByIP->doit(@ips);

