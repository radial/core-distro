# Dockerfile for core-distro.
# Features:
#   - Ubuntu 14.04 LTS
#   - Closest apt mirror selection.
#
FROM        ubuntu:trusty
MAINTAINER  Brian Clements <brian@brianclements.net>

# Select your closest mirror from...
# East Coast US:                        us-east-1.ec2.archive
# West Coast US (California):           us-west-1.ec2.archive
# West Coast US (Oregon):               us-west-2.ec2.archive
# South America (São Paulo, Brazil):    sa-east-1.ec2.archive
# Western Europe (Dublin, Ireland):     eu-west-1.ec2.archive
# SouthEast Asia (Singapore):           ap-southeast-1.ec2.archive
# NorthEast Asia (Tokyo):               ap-northeast-1.ec2.archive
# ... and assign MIRROR below with your selection
ENV MIRROR  us-west-1.ec2.archive
RUN         sed "s@archive@$MIRROR@" -i /etc/apt/sources.list

CMD         ["/bin/bash"]
