#!/bin/bash

#shell help_info
function hep_info(){
	cat <<EOF
	hep_info Info:
	    `basename $0` [options]
	options as follows:
	    -h,--help           Print help infomation.
	    -H,--host           Hostname.
	    -u,--user           mysql user name.
	    -p,--password       mysql user password.
	    -P,--port           Port number to use for mysql connection(default 3306).
	    -S,--socket         Socket file to use for mysql connection.
	EOF
}
