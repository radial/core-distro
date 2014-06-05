## Dockerfile for Core-Distro Base Image

Base image for all the [regional builds](https://github.com/radial/core-distro).

This base image is the official Ubuntu LTS image plus:

* Multiverse repository enabled
* Bash color support in terminal
* Locale settings

Alternate locales will be made as branches in this repository if they are
requested.

All resulting images can be found on the [Docker
Index](https://index.docker.io/u/radial/distro/).

###Credits

Some inspiration from [The Dockerfile Project](http://dockerfile.github.io/).
