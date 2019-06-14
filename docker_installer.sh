#!/bin/bash
##############################################################################
#				DOCKER_INSTALLER			     #
#			Made by Manu Alén - @hippi3c0w                       #
##############################################################################


#install dependencies

apt-get install \
	    apt-transport-https \
	        ca-certificates \
		    curl \
		        gnupg2 \
			    software-properties-common


#Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -


#fingerprinting
apt-key fingerprint 0EBFCD88

#Add repository

add-apt-repository \
	   "deb [arch=amd64] https://download.docker.com/linux/debian \
	      $(lsb_release -cs) \
	         stable"


#Install docker

apt-get update

apt-get install docker-ce docker-ce-cli containerd.io docker-compose


