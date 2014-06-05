## Dockerfiles for Core-Distro

These regional Dockerfiles are built off of the
'[radial/distro:base](/_base/README.md)' image that includes:

* The official Ubuntu LTS image
* Multiverse repository enabled
* Bash color support in terminal
* Locale settings

The regional builds go a step further and modify your `/etc/apt/sources.list`
mirrors to match up with the closest Amazon EC2 data centers.

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
using Amazon EC2 from the start is a pretty safe way to go. Not to mention that
downloads will be lighting fast if your docker-based cluster is hosted in the
very same data center.

Each Dockerfile also sets the appropriate timezone data for each data center
region selection. The 'en_US.UTF-8' locale and American English language
have already been set in the 'distro:base' for all images regardless of region.

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
