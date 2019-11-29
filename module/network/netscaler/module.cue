package netscaler

netscaler_gslb_site :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_gslb_site: {
		triggermonitor?:         string
		metricexchange?:         string
		nwmetricexchange?:       string
		publicclip?:             string
		sessionexchange?:        string
		sitename?:               string
		sitetype?:               string
		clip?:                   string
		naptrreplacementsuffix?: string
		parentsite?:             string
		publicip?:               string
		siteipaddress?:          string
	}
}

netscaler_cs_vserver :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_cs_vserver: {
		redirectportrewrite?:     string
		authnprofile?:            string
		push?:                    string
		name?:                    string
		pushmulticlients?:        bool
		pushvserver?:             string
		insertvserveripport?:     string
		listenpolicy?:            string
		ipv46?:                   string
		netprofile?:              string
		sothreshold?:             string
		tcpprofilename?:          string
		authn401?:                bool
		icmpvsrresponse?:         string
		cookiedomain?:            string
		port?:                    string
		rhistate?:                string
		ttl?:                     string
		disableprimaryondown?:    string
		lbvserver?:               string
		domainname?:              string
		httpprofilename?:         string
		pushlabel?:               string
		casesensitive?:           bool
		dnsprofilename?:          string
		backupvserver?:           string
		rtspnat?:                 bool
		appflowlog?:              string
		authnvsname?:             string
		td?:                      string
		downstateflush?:          string
		sitedomainttl?:           string
		mysqlprotocolversion?:    string
		backupip?:                string
		cookietimeout?:           string
		mysqlcharacterset?:       string
		targettype?:              string
		authentication?:          bool
		clttimeout?:              string
		oracleserverversion?:     string
		range?:                   string
		mysqlserverversion?:      string
		sopersistencetimeout?:    string
		ssl_certkey?:             string
		cacheable?:               bool
		comment?:                 string
		mssqlserverversion?:      string
		precedence?:              string
		somethod?:                string
		sopersistence?:           string
		stateupdate?:             string
		vipheader?:               string
		dbprofilename?:           string
		l2conn?:                  bool
		ipmask?:                  string
		ippattern?:               string
		servicetype?:             string
		authenticationhost?:      string
		disabled?:                bool
		sobackupaction?:          string
		mysqlservercapabilities?: string
		redirecturl?:             string
	}
}

netscaler_gslb_service :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_gslb_service: {
		healthmonitor?:    bool
		maxaaausers?:      string
		monthreshold?:     string
		sitepersistence?:  string
		cipheader?:        string
		cnameentry?:       string
		siteprefix?:       string
		monitor_bindings?: string
		servicename?:      string
		servicetype?:      string
		clttimeout?:       string
		comment?:          string
		ipaddress?:        string
		maxbandwidth?:     string
		maxclient?:        string
		sitename?:         string
		publicip?:         string
		publicport?:       string
		servername?:       string
		appflowlog?:       string
		cip?:              string
		downstateflush?:   string
		hashid?:           string
		port?:             string
	}
}

netscaler_lb_monitor :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_lb_monitor: {
		domain?:                           string
		httprequest?:                      string
		inbandsecurityid?:                 string
		logonpointname?:                   string
		monitorname?:                      string
		radframedip?:                      string
		scriptargs?:                       string
		supportedvendorids?:               string
		tosid?:                            string
		username?:                         string
		dispatcherip?:                     string
		storefrontacctservice?:            bool
		storename?:                        string
		kcdaccount?:                       string
		maxforwards?:                      string
		originhost?:                       string
		productname?:                      string
		query?:                            string
		querytype?:                        string
		snmpcommunity?:                    string
		units2?:                           string
		basedn?:                           string
		destport?:                         string
		oraclesid?:                        string
		send?:                             string
		storefrontcheckbackendservices?:   bool
		type?:                             string
		database?:                         string
		respcode?:                         string
		attribute?:                        string
		customheaders?:                    string
		dispatcherport?:                   string
		firmwarerevision?:                 string
		group?:                            string
		lasversion?:                       string
		radmsisdn?:                        string
		sipreguri?:                        string
		Snmpoid?:                          string
		trofscode?:                        string
		vendorid?:                         string
		action?:                           string
		downtime?:                         string
		filter?:                           string
		metrictable?:                      string
		netprofile?:                       string
		radapn?:                           string
		storedb?:                          string
		recv?:                             string
		units1?:                           string
		binddn?:                           string
		originrealm?:                      string
		secondarypassword?:                string
		sipmethod?:                        string
		snmpthreshold?:                    string
		tos?:                              bool
		alertretries?:                     string
		radaccountsession?:                string
		radaccounttype?:                   string
		radnasid?:                         string
		resptimeout?:                      string
		snmpversion?:                      string
		sqlquery?:                         string
		units3?:                           string
		validatecred?:                     bool
		application?:                      string
		hostipaddress?:                    string
		interval?:                         string
		radkey?:                           string
		reverse?:                          bool
		deviation?:                        string
		ipaddress?:                        string
		lrtm?:                             string
		retries?:                          string
		rtsprequest?:                      string
		sipuri?:                           string
		sitepath?:                         string
		state?:                            string
		trofsstring?:                      string
		vendorspecificacctapplicationids?: string
		vendorspecificauthapplicationids?: string
		acctapplicationid?:                string
		filename?:                         string
		hostname?:                         string
		secure?:                           bool
		successretries?:                   string
		transparent?:                      bool
		vendorspecificvendorid?:           string
		authapplicationid?:                string
		failureretries?:                   string
		iptunnel?:                         bool
		mssqlprotocolversion?:             string
		password?:                         string
		radnasip?:                         string
		destip?:                           string
		evalrule?:                         string
		resptimeoutthresh?:                string
		scriptname?:                       string
		units4?:                           string
	}
}

netscaler_lb_vserver :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_lb_vserver: {
		dbprofilename?:                      string
		listenpolicy?:                       string
		netprofile?:                         string
		persistencebackup?:                  string
		v6netmasklen?:                       string
		cookiename?:                         string
		persistavpno?:                       string
		recursionavailable?:                 bool
		rtspnat?:                            bool
		skippersistency?:                    string
		sopersistence?:                      string
		l2conn?:                             bool
		authentication?:                     bool
		dns64?:                              string
		appflowlog?:                         string
		ipmask?:                             string
		mysqlprotocolversion?:               string
		push?:                               string
		range?:                              string
		ssl_certkey?:                        string
		backuppersistencetimeout?:           string
		newservicerequest?:                  string
		processlocal?:                       string
		tcpprofilename?:                     string
		datalength?:                         string
		persistmask?:                        string
		rhistate?:                           string
		vipheader?:                          string
		httpprofilename?:                    string
		oracleserverversion?:                string
		port?:                               string
		pushvserver?:                        string
		m?:                                  string
		healththreshold?:                    string
		netmask?:                            string
		cacheable?:                          bool
		hashlength?:                         string
		maxautoscalemembers?:                string
		mssqlserverversion?:                 string
		persistencetype?:                    string
		authenticationhost?:                 string
		name?:                               string
		servicetype?:                        string
		sessionless?:                        string
		timeout?:                            string
		mysqlserverversion?:                 string
		backuplbmethod?:                     string
		disabled?:                           bool
		icmpvsrresponse?:                    string
		mysqlcharacterset?:                  string
		sobackupaction?:                     string
		sopersistencetimeout?:               string
		sothreshold?:                        string
		authn401?:                           bool
		tosid?:                              string
		td?:                                 string
		insertvserveripport?:                string
		lbmethod?:                           string
		macmoderetainvlan?:                  string
		newservicerequestincrementinterval?: string
		pushmulticlients?:                   bool
		redirurl?:                           string
		somethod?:                           string
		disableprimaryondown?:               string
		bypassaaaa?:                         bool
		dataoffset?:                         string
		minautoscalemembers?:                string
		v6persistmasklen?:                   string
		authnvsname?:                        string
		listenpriority?:                     string
		newservicerequestunit?:              string
		redirectportrewrite?:                string
		servicegroupbindings?:               string
		dbslb?:                              string
		pushlabel?:                          string
		servicebindings?:                    string
		ipv46?:                              string
		clttimeout?:                         string
		comment?:                            string
		connfailover?:                       string
		dnsprofilename?:                     string
		downstateflush?:                     string
		ippattern?:                          string
		mysqlservercapabilities?:            string
		authnprofile?:                       string
		resrule?:                            string
	}
}

netscaler_server :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_server: {
		comment?:            string
		delay?:              string
		disabled?:           bool
		domain?:             string
		ipaddress?:          string
		td?:                 string
		translationip?:      string
		domainresolveretry?: string
		graceful?:           bool
		ipv6address?:        bool
		name?:               string
		translationmask?:    string
	}
}

netscaler_service :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_service: {
		cmp?:                bool
		maxreq?:             string
		port?:               string
		serverid?:           string
		tcpb?:               bool
		td?:                 string
		appflowlog?:         string
		cacheable?:          bool
		comment?:            string
		httpprofilename?:    string
		pathmonitor?:        string
		pathmonitorindv?:    string
		rtspsessionidremap?: bool
		cip?:                string
		cka?:                bool
		healthmonitor?:      bool
		svrtimeout?:         string
		cachetype?:          string
		cipheader?:          string
		processlocal?:       string
		ip?:                 string
		sp?:                 bool
		customserverid?:     string
		disabled?:           bool
		dnsprofilename?:     string
		graceful?:           bool
		hashid?:             string
		ipaddress?:          string
		accessdown?:         bool
		cleartextport?:      string
		servicetype?:        string
		useproxyport?:       bool
		usip?:               bool
		monitor_bindings?:   string
		name?:               string
		clttimeout?:         string
		netprofile?:         string
		maxclient?:          string
		monthreshold?:       string
		servername?:         string
		tcpprofilename?:     string
		downstateflush?:     string
		maxbandwidth?:       string
	}
}

netscaler_cs_action :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_cs_action: {
		comment?:           string
		name?:              string
		targetlbvserver?:   string
		targetvserver?:     string
		targetvserverexpr?: string
	}
}

netscaler_cs_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_cs_policy: {
		rule?:       string
		url?:        string
		action?:     string
		domain?:     string
		policyname?: string
	}
}

netscaler_gslb_vserver :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_gslb_vserver: {
		name?:                   string
		persistencetype?:        string
		v6persistmasklen?:       string
		sobackupaction?:         string
		tolerance?:              string
		disableprimaryondown?:   string
		domain_bindings?:        string
		mir?:                    string
		persistmask?:            string
		servicetype?:            string
		dnsrecordtype?:          string
		dynamicweight?:          string
		lbmethod?:               string
		service_bindings?:       string
		sopersistence?:          string
		backuplbmethod?:         string
		comment?:                string
		sopersistencetimeout?:   string
		somethod?:               string
		sothreshold?:            string
		timeout?:                string
		disabled?:               bool
		netmask?:                string
		persistenceid?:          string
		v6netmasklen?:           string
		appflowlog?:             string
		considereffectivestate?: string
	}
}

netscaler_save_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_save_config: {
		nitro_pass:      string
		nitro_protocol?: string
		nitro_timeout?:  string
		nitro_user:      string
		nsip:            string
		validate_certs?: bool
	}
}

netscaler_servicegroup :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_servicegroup: {
		pathmonitorindv?:    bool
		servicegroupname?:   string
		cka?:                bool
		clttimeout?:         string
		monitorbindings?:    string
		netprofile?:         string
		servicemembers?:     string
		sp?:                 bool
		useproxyport?:       bool
		usip?:               bool
		cacheable?:          bool
		cip?:                string
		appflowlog?:         string
		downstateflush?:     string
		monthreshold?:       string
		rtspsessionidremap?: bool
		svrtimeout?:         string
		httpprofilename?:    string
		memberport?:         string
		comment?:            string
		disabled?:           bool
		healthmonitor?:      bool
		pathmonitor?:        bool
		autoscale?:          string
		cipheader?:          string
		maxreq?:             string
		servicetype?:        string
		tcpprofilename?:     string
		cmp?:                bool
		maxbandwidth?:       string
		maxclient?:          string
		tcpb?:               bool
		cachetype?:          string
		graceful?:           bool
	}
}

netscaler_nitro_request :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_nitro_request: {
		instance_ip?:             string
		name?:                    string
		validate_certs?:          bool
		args?:                    string
		filter?:                  string
		instance_name?:           string
		nitro_auth_token?:        string
		nitro_user:               string
		nsip?:                    string
		action?:                  string
		instance_id?:             string
		nitro_pass:               string
		operation?:               string
		resource?:                string
		attributes?:              string
		expected_nitro_errorcode: string
		nitro_protocol?:          string
	}
}

netscaler_ssl_certkey :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	name?:     string
	register?: string
	with_items?: [...string]
	connection?: string
	netscaler_ssl_certkey: {
		key?:                string
		notificationperiod?: string
		passplain?:          string
		password?:           string
		cert?:               string
		certkey?:            string
		expirymonitor?:      string
		inform?:             string
	}
}
