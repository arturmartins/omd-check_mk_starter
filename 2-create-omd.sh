#!/bin/bash

#2-create-omd

# do not use spaces or dashes
site_name="env_prod"
omd create $site_name && omd start $site_name && su - $site_name
