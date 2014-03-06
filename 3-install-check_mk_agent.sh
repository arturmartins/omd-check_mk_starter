#!/bin/bash
#3-install-check_mk_agent

# install xinetd
aptitude install xinetd 

# install check_mk_agent
wget http://mathias-kettner.de/download/check-mk-agent_1.2.4-2_all.deb
dpkg -i check-mk-agent_1.2.4-2_all.deb

# check if port is open
netstat -tulp | grep 6556
