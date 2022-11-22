FROM docker.io/rockylinux:9

LABEL maintainer="Michael Trip <michael@alcatrash.org>"

# Create a basic rockylinux container with httpd.

RUN dnf -y update && dnf -y upgrade && dnf -y install httpd

COPY httpd-foreground /usr/local/bin
CMD ["httpd-foreground"]
