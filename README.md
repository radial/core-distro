## Dockerfiles for Core-Distro

These Dockerfiles are the `ubuntu:trusty` image with the `/etc/apt/sources.list`
mirrors changed from "archive" to each of the Amazon EC2 data centers.

    # US West Coast (N. California):        us-west-1.ec2.archive
    # US West Coast (Oregon):               us-west-2.ec2.archive
    # US East Coast (N. Virginia):          us-east-1.ec2.archive
    # South America (São Paulo, Brazil):    sa-east-1.ec2.archive
    # Western Europe (Dublin, Ireland):     eu-west-1.ec2.archive
    # NorthEast Asia (Tokyo):               ap-northeast-1.ec2.archive
    # SouthEast Asia (Singapore):           ap-southeast-1.ec2.archive
    # Australia (Sydney):                   ap-southeast-2.ec2.archive

Downloads from the default "archive" location can be very slow at times and it's
hard to guess the speed or distance from other institutions and mirrors. So
using Amazon EC2 from the start is a pretty safe way to go.

Each Dockerfile also sets the appropriate timezone data for each data center
region selection as well as the 'en_US.UTF-8' locale and American English
language for all images regardless of region.

The idea is to optimize the mirrors and timezones for all the regions, but unify
them all by language. This is because you speak just one language to your
computer, but you'll deploy your apps all over the world and will want the
timezones to work properly and the mirrors to be fast.

Alternate locales will be made as branches in this repository if they are
requested.

All resulting images can be found on the [Docker
Index](https://index.docker.io/u/radial/distro/). To select a specific build,
append the region name as a tag to the image name like `radial/distro:us-west-1`
for example.
