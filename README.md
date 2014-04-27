## Dockerfile for Core-Distro

This Dockerfile is nothing more then the `ubuntu:trusty` image with the
`/etc/apt/sources.list` mirrors changed from "archive" to the Amazon EC2 data
center closest to my location. 

```
# East Coast US:                        us-east-1.ec2.archive
# West Coast US (California):           us-west-1.ec2.archive
# West Coast US (Oregon):               us-west-2.ec2.archive
# South America (São Paulo, Brazil):    sa-east-1.ec2.archive
# Western Europe (Dublin, Ireland):     eu-west-1.ec2.archive
# SouthEast Asia (Singapore):           ap-southeast-1.ec2.archive
# NorthEast Asia (Tokyo):               ap-northeast-1.ec2.archive
```

Downloads from the default "archive" location can be very slow at times and it's
hard to guess the speed or distance from other institutions and mirrors. So
using Amazon EC2 from the start is a pretty safe way to go.
