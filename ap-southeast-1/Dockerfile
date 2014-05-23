# Dockerfile for the Radial core-distro.
# Features:
#   - Ubuntu 14.04 LTS
#   - Closest apt mirror selection.
#   - Set timezone
#   - Set locale
#
FROM            ubuntu:trusty
MAINTAINER      Brian Clements <radial@brianclements.net>

# Select your closest mirror from...
# US West Coast (N. California):        us-west-1.ec2.archive
# US West Coast (Oregon):               us-west-2.ec2.archive
# US East Coast (N. Virginia):          us-east-1.ec2.archive
# South America (São Paulo, Brazil):    sa-east-1.ec2.archive
# Western Europe (Dublin, Ireland):     eu-west-1.ec2.archive
# NorthEast Asia (Tokyo):               ap-northeast-1.ec2.archive
# SouthEast Asia (Singapore):           ap-southeast-1.ec2.archive
# Australia (Sydney):                   ap-southeast-2.ec2.archive
# ... and assign UBUNTU_MIRROR below with your selection
ENV             UBUNTU_MIRROR  ap-southeast-1.ec2.archive
RUN             sed "s@archive@$UBUNTU_MIRROR@" -i /etc/apt/sources.list

# Set timezone
# The city selections might seem arbitrary, but they incorporate daylight savings
# time automatically based on time zone and are better then manually picking
# using the 'Etc/GMT+0' files.
ENV             DEBIAN_FRONTEND noninteractive
ENV             TIMEZONE Asia/Singapore
RUN             echo $TIMEZONE > /etc/timezone &&\
                cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime &&\
                dpkg-reconfigure tzdata
RUN             env --unset=DEBIAN_FRONTEND

# Set locale
# Note: preseeding debconf is 'better', but didn't want to install
# 'debconf-utils' just to do this in more steps.
RUN             locale-gen en_US.UTF-8
ENV             LANG en_US.UTF-8  
ENV             LANGUAGE en_US:en  
ENV             LC_ALL en_US.UTF-8  

CMD             ["/bin/bash"]
